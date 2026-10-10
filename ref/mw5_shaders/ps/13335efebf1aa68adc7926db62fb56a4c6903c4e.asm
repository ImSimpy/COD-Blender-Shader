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
; shader hash: 37cd34b960bf67fe10fe9c1f00a0d2c2
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
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %84, %63
  %86 = fmul fast float %84, %64
  %87 = fmul fast float %84, %65
  %88 = fmul fast float %64, %61
  %89 = fmul fast float %65, %60
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %65, %59
  %92 = fmul fast float %63, %61
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %60
  %95 = fmul fast float %64, %59
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %62
  %98 = fmul fast float %93, %62
  %99 = fmul fast float %96, %62
  %100 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %52
  %106 = fmul fast float %104, %53
  %107 = fmul fast float %104, %54
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %78, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %79, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %110, float %135, float %139
  %143 = select i1 %110, float %136, float %140
  %144 = select i1 %110, float %137, float %141
  %145 = fmul fast float %142, %119
  %146 = fmul fast float %143, %119
  %147 = fmul fast float %144, %119
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = fadd fast float %147, %133
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %110, float %152, float %156
  %160 = select i1 %110, float %153, float %157
  %161 = select i1 %110, float %154, float %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fadd fast float %150, %161
  %165 = fmul fast float %162, %73
  %166 = fmul fast float %163, %73
  %167 = fmul fast float %164, %73
  %168 = shl i32 %34, 5
  %169 = add i32 %168, 4194304
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = add i32 %168, 4194320
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = bitcast i32 %177 to float
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %182 = fmul fast float %180, %78
  %183 = fmul fast float %181, %79
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 114688
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float %182, float 0.000000e+00
  %189 = select i1 %187, float %183, float 0.000000e+00
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, 2.550000e+02
  %193 = fptoui float %192 to i32
  %194 = select i1 %187, i32 %193, i32 0
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %211

; <label>:202                                     ; preds = %0
  %203 = fmul fast float %113, %79
  %204 = fmul fast float %112, %78
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %204, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %199, 0
  %213 = and i1 %198, %212
  br label %214

; <label>:214                                     ; preds = %211, %202
  %215 = phi i1 [ %210, %202 ], [ %213, %211 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %78, 2.560000e+02
  %220 = frem fast float %79, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fadd fast float %224, %218
  %226 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %227 = add i32 %33, 156
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = shl i32 %229, 4
  %231 = and i32 %230, 32752
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %229, 7
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %229, 22
  %237 = shl nuw nsw i32 %236, 5
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %33, 216
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = lshr i32 %241, 8
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %241, 16
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = add i32 %33, 36
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %33, 288
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %264, 0x3F50624DE0000000
  %268 = fmul fast float %266, 0x3F50624DE0000000
  %269 = add i32 %33, 172
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %33, 232
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %33, 52
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %33, 304
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = fmul fast float %306, 0x3F50624DE0000000
  %310 = fmul fast float %308, 0x3F50624DE0000000
  %311 = add i32 %33, 188
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %33, 248
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %33, 68
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %33, 320
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %33, 204
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %33, 264
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %33, 84
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %33, 336
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %33, 348
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 32
  %399 = icmp eq i32 %398, 0
  %400 = and i32 %397, 64
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %397, 128
  %403 = icmp eq i32 %402, 0
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 2
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %421, label %408

; <label>:408                                     ; preds = %214
  %409 = add i32 %33, 568
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %413, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = fmul fast float %415, %68
  %419 = fmul fast float %416, %69
  %420 = fmul fast float %417, %70
  br label %421

; <label>:421                                     ; preds = %408, %214
  %422 = phi float [ %70, %214 ], [ %420, %408 ]
  %423 = phi float [ %69, %214 ], [ %419, %408 ]
  %424 = phi float [ %68, %214 ], [ %418, %408 ]
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 2
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %448, label %429

; <label>:429                                     ; preds = %421
  %430 = add i32 %33, 44
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 1
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %424, float 1.000000e+00
  %436 = add i32 %33, 60
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %423, float 1.000000e+00
  %442 = add i32 %33, 76
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %422, float 1.000000e+00
  br label %448

; <label>:448                                     ; preds = %429, %421
  %449 = phi float [ %422, %421 ], [ %447, %429 ]
  %450 = phi float [ %423, %421 ], [ %441, %429 ]
  %451 = phi float [ %424, %421 ], [ %435, %429 ]
  %452 = lshr i32 %426, 20
  %453 = and i32 %452, 3
  %454 = add nuw nsw i32 %453, 1
  %455 = add i32 %33, 24
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %33, 28
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = or i32 %460, %457
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %921, label %463

; <label>:463                                     ; preds = %448
  %464 = and i32 %457, 262144
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %39, float 1.000000e+00
  %467 = select i1 %465, float %40, float 0.000000e+00
  %468 = select i1 %465, float %41, float 0.000000e+00
  %469 = select i1 %465, float %42, float 1.000000e+00
  %470 = select i1 %465, float %43, float %66
  %471 = select i1 %465, float %44, float %67
  %472 = add i32 %33, 284
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = fmul fast float %476, 0x3F50624DE0000000
  %478 = add i32 %33, 88
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = and i32 %481, 255
  %483 = lshr i32 %480, 24
  %484 = add i32 %33, 292
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %486, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = add i32 %33, 32
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 22
  %495 = shl nuw nsw i32 %494, 5
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = shl i32 %493, 4
  %498 = and i32 %497, 32752
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %493, 7
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %505 = fmul fast float %504, 1.000000e+03
  %506 = fmul fast float %267, %505
  %507 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %508 = fadd fast float %507, %257
  %509 = fmul fast float %268, %505
  %510 = call float @dx.op.unary.f32(i32 22, float %509)  ; Frc(value)
  %511 = fadd fast float %510, %259
  %512 = fmul fast float %477, %505
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fmul fast float %513, 0x401921FB60000000
  %515 = fadd fast float %514, %496
  %516 = call float @dx.op.unary.f32(i32 13, float %515)  ; Sin(value)
  %517 = call float @dx.op.unary.f32(i32 12, float %515)  ; Cos(value)
  %518 = fsub fast float -0.000000e+00, %516
  %519 = fadd fast float %470, -5.000000e-01
  %520 = fadd fast float %471, -5.000000e-01
  %521 = fmul fast float %488, %519
  %522 = fmul fast float %490, %520
  %523 = fadd fast float %521, 5.000000e-01
  %524 = fadd fast float %522, 5.000000e-01
  %525 = fmul fast float %499, %523
  %526 = fmul fast float %502, %524
  %527 = fmul fast float %517, %525
  %528 = call float @dx.op.tertiary.f32(i32 46, float %518, float %526, float %527)  ; FMad(a,b,c)
  %529 = fmul fast float %516, %525
  %530 = call float @dx.op.tertiary.f32(i32 46, float %517, float %526, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %508, %528
  %532 = fadd fast float %511, %530
  %533 = icmp ugt i32 %482, 1
  %534 = icmp ugt i32 %480, 33554431
  %535 = or i1 %534, %533
  br i1 %535, label %536, label %561

; <label>:536                                     ; preds = %463
  %537 = add i32 %33, 228
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = lshr i32 %539, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = fmul fast float %504, %541
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = mul nuw nsw i32 %482, %483
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %543, %545
  %547 = call float @dx.op.unary.f32(i32 27, float %546)  ; Round_ni(value)
  %548 = fptoui float %547 to i32
  %549 = urem i32 %548, %482
  %550 = udiv i32 %548, %483
  %551 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %552 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %553 = uitofp i32 %549 to float
  %554 = uitofp i32 %550 to float
  %555 = fadd fast float %551, %553
  %556 = fadd fast float %552, %554
  %557 = uitofp i32 %482 to float
  %558 = uitofp i32 %483 to float
  %559 = fdiv fast float %555, %557
  %560 = fdiv fast float %556, %558
  br label %561

; <label>:561                                     ; preds = %536, %463
  %562 = phi float [ %559, %536 ], [ %531, %463 ]
  %563 = phi float [ %560, %536 ], [ %532, %463 ]
  %564 = and i32 %457, 16
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %762, label %566

; <label>:566                                     ; preds = %561
  %567 = add i32 %33, 456
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = add i32 %569, 0
  %571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %571, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = and i32 %480, 255
  %578 = uitofp i32 %577 to float
  %579 = lshr i32 %480, 8
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %576, %578
  %583 = fadd fast float %582, %581
  %584 = fmul fast float %583, 0x3F70101000000000
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 512
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %597, label %589

; <label>:589                                     ; preds = %566
  %590 = add i32 %33, 536
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %75, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  br label %597

; <label>:597                                     ; preds = %589, %566
  %598 = phi float [ %596, %589 ], [ 1.000000e+00, %566 ]
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 33554432
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %709, label %603

; <label>:603                                     ; preds = %597
  %604 = add i32 %33, 224
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = lshr i32 %606, 16
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = add i32 %33, 228
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = lshr i32 %617, 24
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = and i32 %617, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %617, 8
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %617, 16
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = add i32 %33, 220
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = lshr i32 %634, 24
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = and i32 %634, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %634, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %634, 16
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = bitcast float %573 to i32
  %650 = ashr i32 %649, 1
  %651 = sub nsw i32 1597463174, %650
  %652 = bitcast i32 %651 to float
  %653 = fmul fast float %573, 5.000000e-01
  %654 = fmul fast float %652, %652
  %655 = fmul fast float %654, %653
  %656 = fsub fast float 1.500000e+00, %655
  %657 = fmul fast float %652, %573
  %658 = fmul fast float %657, %656
  %659 = bitcast float %574 to i32
  %660 = ashr i32 %659, 1
  %661 = sub nsw i32 1597463174, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %574, 5.000000e-01
  %664 = fmul fast float %662, %662
  %665 = fmul fast float %664, %663
  %666 = fsub fast float 1.500000e+00, %665
  %667 = fmul fast float %662, %574
  %668 = fmul fast float %667, %666
  %669 = bitcast float %575 to i32
  %670 = ashr i32 %669, 1
  %671 = sub nsw i32 1597463174, %670
  %672 = bitcast i32 %671 to float
  %673 = fmul fast float %575, 5.000000e-01
  %674 = fmul fast float %672, %672
  %675 = fmul fast float %674, %673
  %676 = fsub fast float 1.500000e+00, %675
  %677 = fmul fast float %672, %575
  %678 = fmul fast float %677, %676
  %679 = fsub fast float %658, %640
  %680 = fsub fast float %668, %644
  %681 = fsub fast float %678, %648
  %682 = fmul fast float %679, %608
  %683 = fmul fast float %680, %610
  %684 = fmul fast float %681, %615
  %685 = fadd fast float %682, %623
  %686 = fadd fast float %683, %627
  %687 = fadd fast float %684, %631
  %688 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = fmul fast float %688, %688
  %692 = fmul fast float %689, %689
  %693 = fmul fast float %690, %690
  %694 = fsub fast float %691, %573
  %695 = fsub fast float %692, %574
  %696 = fsub fast float %693, %575
  %697 = fmul fast float %694, %598
  %698 = fmul fast float %695, %598
  %699 = fmul fast float %696, %598
  %700 = fadd fast float %697, %573
  %701 = fadd fast float %698, %574
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %620, %584
  %704 = fsub fast float %703, %637
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fsub fast float %705, %584
  %707 = fmul fast float %706, %598
  %708 = fadd fast float %707, %584
  br label %762

; <label>:709                                     ; preds = %597
  %710 = and i32 %600, 134217728
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %746, label %712

; <label>:712                                     ; preds = %709
  %713 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %715 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %716 = fadd fast float %713, -5.000000e-01
  %717 = fadd fast float %714, -5.000000e-01
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fmul fast float %716, %598
  %720 = fmul fast float %717, %598
  %721 = fmul fast float %718, %598
  %722 = fadd fast float %719, 5.000000e-01
  %723 = fadd fast float %720, 5.000000e-01
  %724 = fadd fast float %721, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 24, float %573)  ; Sqrt(value)
  %726 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = fmul fast float %722, 2.000000e+00
  %729 = fsub fast float 1.000000e+00, %728
  %730 = fmul fast float %729, %725
  %731 = fadd fast float %730, %728
  %732 = fmul fast float %731, %725
  %733 = fmul fast float %723, 2.000000e+00
  %734 = fsub fast float 1.000000e+00, %733
  %735 = fmul fast float %734, %726
  %736 = fadd fast float %735, %733
  %737 = fmul fast float %736, %726
  %738 = fmul fast float %724, 2.000000e+00
  %739 = fsub fast float 1.000000e+00, %738
  %740 = fmul fast float %739, %727
  %741 = fadd fast float %740, %738
  %742 = fmul fast float %741, %727
  %743 = fmul fast float %732, %732
  %744 = fmul fast float %737, %737
  %745 = fmul fast float %742, %742
  br label %762

; <label>:746                                     ; preds = %709
  %747 = fmul fast float %244, %244
  %748 = fmul fast float %248, %248
  %749 = fmul fast float %252, %252
  %750 = fadd fast float %747, -1.000000e+00
  %751 = fadd fast float %748, -1.000000e+00
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fmul fast float %598, %750
  %754 = fmul fast float %598, %751
  %755 = fmul fast float %598, %752
  %756 = fadd fast float %753, 1.000000e+00
  %757 = fadd fast float %754, 1.000000e+00
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fmul fast float %756, %573
  %760 = fmul fast float %757, %574
  %761 = fmul fast float %758, %575
  br label %762

; <label>:762                                     ; preds = %746, %712, %603, %561
  %763 = phi float [ %708, %603 ], [ %584, %712 ], [ %584, %746 ], [ 0x3FA23C0BE0000000, %561 ]
  %764 = phi float [ %700, %603 ], [ %743, %712 ], [ %759, %746 ], [ 1.000000e+00, %561 ]
  %765 = phi float [ %701, %603 ], [ %744, %712 ], [ %760, %746 ], [ 1.000000e+00, %561 ]
  %766 = phi float [ %702, %603 ], [ %745, %712 ], [ %761, %746 ], [ 1.000000e+00, %561 ]
  %767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.i32 %767, 1
  %769 = and i32 %768, 1
  %770 = icmp ne i32 %769, 0
  %771 = add i32 %33, 356
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 32
  %775 = icmp ne i32 %774, 0
  %776 = and i1 %770, %775
  %777 = select i1 %776, float 1.000000e+00, float %764
  %778 = select i1 %776, float 0x3FD3333340000000, float %765
  %779 = select i1 %776, float 0x3FD3333340000000, float %766
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 32
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %856, label %784

; <label>:784                                     ; preds = %762
  %785 = add i32 %33, 92
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %33, 472
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %790, 0
  %792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %792, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = and i32 %787, 255
  %799 = uitofp i32 %798 to float
  %800 = lshr i32 %787, 8
  %801 = and i32 %800, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %787, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101000000000
  %807 = fmul fast float %794, %799
  %808 = fadd fast float %807, %802
  %809 = fmul fast float %808, 0x3F70101000000000
  %810 = fadd fast float %795, -5.000000e-01
  %811 = fadd fast float %797, -5.000000e-01
  %812 = fmul fast float %810, %806
  %813 = fmul fast float %811, %806
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fmul fast float %814, 2.000000e+00
  %817 = fadd fast float %816, -1.000000e+00
  %818 = fmul fast float %815, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fadd fast float %817, %819
  %821 = fmul fast float %820, 5.000000e-01
  %822 = fsub fast float %817, %819
  %823 = fmul fast float %822, 5.000000e-01
  %824 = call float @dx.op.unary.f32(i32 6, float %821)  ; FAbs(value)
  %825 = fsub fast float 1.000000e+00, %824
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float %825, %826
  %828 = call float @dx.op.dot3.f32(i32 55, float %821, float %823, float %827, float %821, float %823, float %827)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = call float @dx.op.unary.f32(i32 25, float %828)  ; Rsqrt(value)
  %830 = fmul fast float %821, %829
  %831 = fmul fast float %823, %829
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 67108864
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %852, label %836

; <label>:836                                     ; preds = %784
  %837 = add i32 %33, 280
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 65535
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 65535
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = lshr i32 %839, 16
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = fsub fast float %809, %847
  %849 = fmul fast float %848, %841
  %850 = fadd fast float %849, %845
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %836, %784
  %853 = phi float [ %851, %836 ], [ %809, %784 ]
  %854 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %466, float %467)  ; Dot2(ax,ay,bx,by)
  %855 = call float @dx.op.dot2.f32(i32 54, float %830, float %831, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  br label %856

; <label>:856                                     ; preds = %852, %762
  %857 = phi float [ %853, %852 ], [ 0x3FD6666660000000, %762 ]
  %858 = phi float [ %854, %852 ], [ 0.000000e+00, %762 ]
  %859 = phi float [ %855, %852 ], [ 0.000000e+00, %762 ]
  %860 = phi float [ %796, %852 ], [ 1.000000e+00, %762 ]
  %861 = add i32 %33, 160
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = lshr i32 %863, 22
  %865 = shl nuw nsw i32 %864, 5
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 64
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %904, label %871

; <label>:871                                     ; preds = %856
  %872 = add i32 %33, 488
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 131072
  %880 = icmp eq i32 %879, 0
  %881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %74, float %562, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = fmul fast float %882, %232
  %886 = fmul fast float %883, %235
  %887 = fmul fast float %884, %238
  br i1 %880, label %894, label %888

; <label>:888                                     ; preds = %871
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fmul fast float %890, %885
  %892 = fmul fast float %890, %886
  %893 = fmul fast float %890, %887
  br label %894

; <label>:894                                     ; preds = %888, %871
  %895 = phi float [ %891, %888 ], [ %885, %871 ]
  %896 = phi float [ %892, %888 ], [ %886, %871 ]
  %897 = phi float [ %893, %888 ], [ %887, %871 ]
  %898 = fmul fast float %895, %866
  %899 = select i1 %215, float %898, float %895
  %900 = call float @dx.op.dot3.f32(i32 55, float %899, float %896, float %897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = select i1 %215, float 0.000000e+00, float %895
  %902 = select i1 %215, float %900, float %896
  %903 = select i1 %215, float 0.000000e+00, float %897
  br label %904

; <label>:904                                     ; preds = %894, %856
  %905 = phi float [ %901, %894 ], [ 0.000000e+00, %856 ]
  %906 = phi float [ %902, %894 ], [ 0.000000e+00, %856 ]
  %907 = phi float [ %903, %894 ], [ 0.000000e+00, %856 ]
  %908 = add i32 %33, 96
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %910, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = call float @dx.op.dot3.f32(i32 55, float %777, float %778, float %779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = fmul fast float %915, %916
  %918 = fadd fast float %917, %912
  %919 = fmul fast float %918, 0x3F70101020000000
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  br label %921

; <label>:921                                     ; preds = %904, %448
  %922 = phi float [ 0.000000e+00, %448 ], [ %858, %904 ]
  %923 = phi float [ 0.000000e+00, %448 ], [ %859, %904 ]
  %924 = phi float [ 0.000000e+00, %448 ], [ %777, %904 ]
  %925 = phi float [ 0.000000e+00, %448 ], [ %778, %904 ]
  %926 = phi float [ 0.000000e+00, %448 ], [ %779, %904 ]
  %927 = phi float [ 0.000000e+00, %448 ], [ %905, %904 ]
  %928 = phi float [ 0.000000e+00, %448 ], [ %906, %904 ]
  %929 = phi float [ 0.000000e+00, %448 ], [ %907, %904 ]
  %930 = phi float [ 0.000000e+00, %448 ], [ %763, %904 ]
  %931 = phi float [ 0.000000e+00, %448 ], [ 1.000000e+00, %904 ]
  %932 = phi float [ 0.000000e+00, %448 ], [ %857, %904 ]
  %933 = phi float [ 0.000000e+00, %448 ], [ %860, %904 ]
  %934 = phi float [ 0.000000e+00, %448 ], [ %920, %904 ]
  br i1 %399, label %1661, label %935

; <label>:935                                     ; preds = %921
  %936 = icmp ult i32 %454, 2
  %937 = add i32 %33, 40
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = add i32 %33, 44
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = or i32 %942, %939
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1661, label %945

; <label>:945                                     ; preds = %935
  %946 = and i32 %939, 262144
  %947 = icmp ne i32 %946, 0
  %948 = select i1 %947, float %39, float 1.000000e+00
  %949 = select i1 %947, float %40, float 0.000000e+00
  %950 = select i1 %947, float %41, float 0.000000e+00
  %951 = select i1 %947, float %42, float 1.000000e+00
  %952 = select i1 %947, float %43, float %66
  %953 = select i1 %947, float %44, float %67
  %954 = add i32 %33, 300
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fmul fast float %958, 0x3F50624DE0000000
  %960 = add i32 %33, 104
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = and i32 %963, 255
  %965 = lshr i32 %962, 24
  %966 = add i32 %33, 308
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = lshr i32 %968, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = add i32 %33, 48
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 22
  %977 = shl nuw nsw i32 %976, 5
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = shl i32 %975, 4
  %980 = and i32 %979, 32752
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = lshr i32 %975, 7
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %987 = fmul fast float %986, 1.000000e+03
  %988 = fmul fast float %309, %987
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = fadd fast float %989, %299
  %991 = fmul fast float %310, %987
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %301
  %994 = fmul fast float %959, %987
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fmul fast float %995, 0x401921FB60000000
  %997 = fadd fast float %996, %978
  %998 = call float @dx.op.unary.f32(i32 13, float %997)  ; Sin(value)
  %999 = call float @dx.op.unary.f32(i32 12, float %997)  ; Cos(value)
  %1000 = fsub fast float -0.000000e+00, %998
  %1001 = fadd fast float %952, -5.000000e-01
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fmul fast float %970, %1001
  %1004 = fmul fast float %972, %1002
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fmul fast float %981, %1005
  %1008 = fmul fast float %984, %1006
  %1009 = fmul fast float %999, %1007
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1008, float %1009)  ; FMad(a,b,c)
  %1011 = fmul fast float %998, %1007
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %999, float %1008, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %990, %1010
  %1014 = fadd fast float %993, %1012
  %1015 = icmp ugt i32 %964, 1
  %1016 = icmp ugt i32 %962, 33554431
  %1017 = or i1 %1016, %1015
  br i1 %1017, label %1018, label %1043

; <label>:1018                                    ; preds = %945
  %1019 = add i32 %33, 244
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 16
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = fmul fast float %986, %1023
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = mul nuw nsw i32 %964, %965
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1025, %1027
  %1029 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1030 = fptoui float %1029 to i32
  %1031 = urem i32 %1030, %964
  %1032 = udiv i32 %1030, %965
  %1033 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = uitofp i32 %1031 to float
  %1036 = uitofp i32 %1032 to float
  %1037 = fadd fast float %1033, %1035
  %1038 = fadd fast float %1034, %1036
  %1039 = uitofp i32 %964 to float
  %1040 = uitofp i32 %965 to float
  %1041 = fdiv fast float %1037, %1039
  %1042 = fdiv fast float %1038, %1040
  br label %1043

; <label>:1043                                    ; preds = %1018, %945
  %1044 = phi float [ %1041, %1018 ], [ %1013, %945 ]
  %1045 = phi float [ %1042, %1018 ], [ %1014, %945 ]
  %1046 = and i32 %939, 256
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1094, label %1048

; <label>:1048                                    ; preds = %1043
  %1049 = add i32 %33, 524
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = add i32 %1051, 0
  %1053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1053, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = add i32 %33, 116
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = shl i32 %1058, 4
  %1060 = and i32 %1059, 32752
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = lshr i32 %1058, 7
  %1063 = and i32 %1062, 32752
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fsub fast float 1.000000e+00, %451
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1067 = bitcast float %451 to i32
  %1068 = sitofp i32 %1067 to float
  %1069 = fadd fast float %1068, 0xC1CFBF8940000000
  %1070 = fmul fast float %1064, %1069
  %1071 = fadd fast float %1070, 0x41CFBF8940000000
  %1072 = fptosi float %1071 to i32
  %1073 = bitcast i32 %1072 to float
  %1074 = bitcast float %1066 to i32
  %1075 = sitofp i32 %1074 to float
  %1076 = fadd fast float %1075, 0xC1CFBF8940000000
  %1077 = fmul fast float %1076, %1064
  %1078 = fadd fast float %1077, 0x41CFBF8940000000
  %1079 = fptosi float %1078 to i32
  %1080 = bitcast i32 %1079 to float
  %1081 = fmul fast float %1073, %1061
  %1082 = fmul fast float %1080, %1061
  %1083 = fsub fast float %1066, %1081
  %1084 = fadd fast float %1082, %1066
  %1085 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1086 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1087 = fsub fast float %1055, %1085
  %1088 = fsub fast float %1086, %1085
  %1089 = bitcast float %1088 to i32
  %1090 = sub nsw i32 2129859010, %1089
  %1091 = bitcast i32 %1090 to float
  %1092 = fmul fast float %1091, %1087
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  br label %1094

; <label>:1094                                    ; preds = %1048, %1043
  %1095 = phi float [ %1093, %1048 ], [ %451, %1043 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 128
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1116, label %1100

; <label>:1100                                    ; preds = %1094
  %1101 = add i32 %33, 508
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 524288
  %1111 = icmp ne i32 %1110, 0
  %1112 = fcmp fast ogt float %1107, 0x3FE0101020000000
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  %1114 = select i1 %1111, float %1113, float %1107
  %1115 = fmul fast float %1114, %1095
  br label %1116

; <label>:1116                                    ; preds = %1100, %1094
  %1117 = phi float [ %1115, %1100 ], [ %1095, %1094 ]
  %1118 = fcmp fast ult float %1117, 0x3F70101020000000
  br i1 %1118, label %1661, label %1119

; <label>:1119                                    ; preds = %1116
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 16
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1322, label %1124

; <label>:1124                                    ; preds = %1119
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %33, 460
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = extractvalue %dx.types.ResRet.f32 %1132, 3
  %1137 = and i32 %1126, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = lshr i32 %1126, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1136, %1138
  %1143 = fadd fast float %1142, %1141
  %1144 = fmul fast float %1143, 0x3F70101000000000
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 512
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1157, label %1149

; <label>:1149                                    ; preds = %1124
  %1150 = add i32 %33, 540
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %75, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  br label %1157

; <label>:1157                                    ; preds = %1149, %1124
  %1158 = phi float [ %1156, %1149 ], [ 1.000000e+00, %1124 ]
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 33554432
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1269, label %1163

; <label>:1163                                    ; preds = %1157
  %1164 = add i32 %33, 240
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = lshr i32 %1166, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = add i32 %33, 244
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 65535
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 24
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = and i32 %1177, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = lshr i32 %1177, 8
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = fmul fast float %1186, 0x3F70101020000000
  %1188 = lshr i32 %1177, 16
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = add i32 %33, 236
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1209 = bitcast float %1133 to i32
  %1210 = ashr i32 %1209, 1
  %1211 = sub nsw i32 1597463174, %1210
  %1212 = bitcast i32 %1211 to float
  %1213 = fmul fast float %1133, 5.000000e-01
  %1214 = fmul fast float %1212, %1212
  %1215 = fmul fast float %1214, %1213
  %1216 = fsub fast float 1.500000e+00, %1215
  %1217 = fmul fast float %1212, %1133
  %1218 = fmul fast float %1217, %1216
  %1219 = bitcast float %1134 to i32
  %1220 = ashr i32 %1219, 1
  %1221 = sub nsw i32 1597463174, %1220
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1134, 5.000000e-01
  %1224 = fmul fast float %1222, %1222
  %1225 = fmul fast float %1224, %1223
  %1226 = fsub fast float 1.500000e+00, %1225
  %1227 = fmul fast float %1222, %1134
  %1228 = fmul fast float %1227, %1226
  %1229 = bitcast float %1135 to i32
  %1230 = ashr i32 %1229, 1
  %1231 = sub nsw i32 1597463174, %1230
  %1232 = bitcast i32 %1231 to float
  %1233 = fmul fast float %1135, 5.000000e-01
  %1234 = fmul fast float %1232, %1232
  %1235 = fmul fast float %1234, %1233
  %1236 = fsub fast float 1.500000e+00, %1235
  %1237 = fmul fast float %1232, %1135
  %1238 = fmul fast float %1237, %1236
  %1239 = fsub fast float %1218, %1200
  %1240 = fsub fast float %1228, %1204
  %1241 = fsub fast float %1238, %1208
  %1242 = fmul fast float %1239, %1168
  %1243 = fmul fast float %1240, %1170
  %1244 = fmul fast float %1241, %1175
  %1245 = fadd fast float %1242, %1183
  %1246 = fadd fast float %1243, %1187
  %1247 = fadd fast float %1244, %1191
  %1248 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1249 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = fmul fast float %1248, %1248
  %1252 = fmul fast float %1249, %1249
  %1253 = fmul fast float %1250, %1250
  %1254 = fsub fast float %1251, %1133
  %1255 = fsub fast float %1252, %1134
  %1256 = fsub fast float %1253, %1135
  %1257 = fmul fast float %1254, %1158
  %1258 = fmul fast float %1255, %1158
  %1259 = fmul fast float %1256, %1158
  %1260 = fadd fast float %1257, %1133
  %1261 = fadd fast float %1258, %1134
  %1262 = fadd fast float %1259, %1135
  %1263 = fadd fast float %1180, %1144
  %1264 = fsub fast float %1263, %1197
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fsub fast float %1265, %1144
  %1267 = fmul fast float %1266, %1158
  %1268 = fadd fast float %1267, %1144
  br label %1322

; <label>:1269                                    ; preds = %1157
  %1270 = and i32 %1160, 134217728
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1306, label %1272

; <label>:1272                                    ; preds = %1269
  %1273 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %1274 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1275 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1276 = fadd fast float %1273, -5.000000e-01
  %1277 = fadd fast float %1274, -5.000000e-01
  %1278 = fadd fast float %1275, -5.000000e-01
  %1279 = fmul fast float %1276, %1158
  %1280 = fmul fast float %1277, %1158
  %1281 = fmul fast float %1278, %1158
  %1282 = fadd fast float %1279, 5.000000e-01
  %1283 = fadd fast float %1280, 5.000000e-01
  %1284 = fadd fast float %1281, 5.000000e-01
  %1285 = call float @dx.op.unary.f32(i32 24, float %1133)  ; Sqrt(value)
  %1286 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1287 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1288 = fmul fast float %1282, 2.000000e+00
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1289, %1285
  %1291 = fadd fast float %1290, %1288
  %1292 = fmul fast float %1291, %1285
  %1293 = fmul fast float %1283, 2.000000e+00
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = fmul fast float %1294, %1286
  %1296 = fadd fast float %1295, %1293
  %1297 = fmul fast float %1296, %1286
  %1298 = fmul fast float %1284, 2.000000e+00
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = fmul fast float %1299, %1287
  %1301 = fadd fast float %1300, %1298
  %1302 = fmul fast float %1301, %1287
  %1303 = fmul fast float %1292, %1292
  %1304 = fmul fast float %1297, %1297
  %1305 = fmul fast float %1302, %1302
  br label %1322

; <label>:1306                                    ; preds = %1269
  %1307 = fmul fast float %286, %286
  %1308 = fmul fast float %290, %290
  %1309 = fmul fast float %294, %294
  %1310 = fadd fast float %1307, -1.000000e+00
  %1311 = fadd fast float %1308, -1.000000e+00
  %1312 = fadd fast float %1309, -1.000000e+00
  %1313 = fmul fast float %1158, %1310
  %1314 = fmul fast float %1158, %1311
  %1315 = fmul fast float %1158, %1312
  %1316 = fadd fast float %1313, 1.000000e+00
  %1317 = fadd fast float %1314, 1.000000e+00
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fmul fast float %1316, %1133
  %1320 = fmul fast float %1317, %1134
  %1321 = fmul fast float %1318, %1135
  br label %1322

; <label>:1322                                    ; preds = %1306, %1272, %1163, %1119
  %1323 = phi float [ %1268, %1163 ], [ %1144, %1272 ], [ %1144, %1306 ], [ 0x3FA23C0BE0000000, %1119 ]
  %1324 = phi float [ %1260, %1163 ], [ %1303, %1272 ], [ %1319, %1306 ], [ 1.000000e+00, %1119 ]
  %1325 = phi float [ %1261, %1163 ], [ %1304, %1272 ], [ %1320, %1306 ], [ 1.000000e+00, %1119 ]
  %1326 = phi float [ %1262, %1163 ], [ %1305, %1272 ], [ %1321, %1306 ], [ 1.000000e+00, %1119 ]
  %1327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.i32 %1327, 1
  %1329 = and i32 %1328, 1
  %1330 = icmp ne i32 %1329, 0
  %1331 = add i32 %33, 356
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 32
  %1335 = icmp ne i32 %1334, 0
  %1336 = and i1 %1330, %1335
  %1337 = select i1 %1336, float 1.000000e+00, float %1324
  %1338 = select i1 %1336, float 0x3FD3333340000000, float %1325
  %1339 = select i1 %1336, float 0x3FD3333340000000, float %1326
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 32
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1416, label %1344

; <label>:1344                                    ; preds = %1322
  %1345 = add i32 %33, 108
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %33, 476
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %1350, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1352, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = extractvalue %dx.types.ResRet.f32 %1353, 3
  %1358 = and i32 %1347, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = lshr i32 %1347, 8
  %1361 = and i32 %1360, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = lshr i32 %1347, 16
  %1364 = and i32 %1363, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1365, 0x3F70101000000000
  %1367 = fmul fast float %1354, %1359
  %1368 = fadd fast float %1367, %1362
  %1369 = fmul fast float %1368, 0x3F70101000000000
  %1370 = fadd fast float %1355, -5.000000e-01
  %1371 = fadd fast float %1357, -5.000000e-01
  %1372 = fmul fast float %1370, %1366
  %1373 = fmul fast float %1371, %1366
  %1374 = fadd fast float %1372, 5.000000e-01
  %1375 = fadd fast float %1373, 5.000000e-01
  %1376 = fmul fast float %1374, 2.000000e+00
  %1377 = fadd fast float %1376, -1.000000e+00
  %1378 = fmul fast float %1375, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fadd fast float %1377, %1379
  %1381 = fmul fast float %1380, 5.000000e-01
  %1382 = fsub fast float %1377, %1379
  %1383 = fmul fast float %1382, 5.000000e-01
  %1384 = call float @dx.op.unary.f32(i32 6, float %1381)  ; FAbs(value)
  %1385 = fsub fast float 1.000000e+00, %1384
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float %1385, %1386
  %1388 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1383, float %1387, float %1381, float %1383, float %1387)  ; Dot3(ax,ay,az,bx,by,bz)
  %1389 = call float @dx.op.unary.f32(i32 25, float %1388)  ; Rsqrt(value)
  %1390 = fmul fast float %1381, %1389
  %1391 = fmul fast float %1383, %1389
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 67108864
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1412, label %1396

; <label>:1396                                    ; preds = %1344
  %1397 = add i32 %33, 296
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 65535
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 65535
  %1405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1404)  ; LegacyF16ToF32(value)
  %1406 = lshr i32 %1399, 16
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = fsub fast float %1369, %1407
  %1409 = fmul fast float %1408, %1401
  %1410 = fadd fast float %1409, %1405
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  br label %1412

; <label>:1412                                    ; preds = %1396, %1344
  %1413 = phi float [ %1411, %1396 ], [ %1369, %1344 ]
  %1414 = call float @dx.op.dot2.f32(i32 54, float %1390, float %1391, float %948, float %949)  ; Dot2(ax,ay,bx,by)
  %1415 = call float @dx.op.dot2.f32(i32 54, float %1390, float %1391, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  br label %1416

; <label>:1416                                    ; preds = %1412, %1322
  %1417 = phi float [ %1413, %1412 ], [ 0x3FD6666660000000, %1322 ]
  %1418 = phi float [ %1414, %1412 ], [ 0.000000e+00, %1322 ]
  %1419 = phi float [ %1415, %1412 ], [ 0.000000e+00, %1322 ]
  %1420 = phi float [ %1356, %1412 ], [ 1.000000e+00, %1322 ]
  %1421 = add i32 %33, 176
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = lshr i32 %1423, 22
  %1425 = shl nuw nsw i32 %1424, 5
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 64
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1464, label %1431

; <label>:1431                                    ; preds = %1416
  %1432 = add i32 %33, 492
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 131072
  %1440 = icmp eq i32 %1439, 0
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %74, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = fmul fast float %1442, %274
  %1446 = fmul fast float %1443, %277
  %1447 = fmul fast float %1444, %280
  br i1 %1440, label %1454, label %1448

; <label>:1448                                    ; preds = %1431
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = fmul fast float %1450, %1445
  %1452 = fmul fast float %1450, %1446
  %1453 = fmul fast float %1450, %1447
  br label %1454

; <label>:1454                                    ; preds = %1448, %1431
  %1455 = phi float [ %1451, %1448 ], [ %1445, %1431 ]
  %1456 = phi float [ %1452, %1448 ], [ %1446, %1431 ]
  %1457 = phi float [ %1453, %1448 ], [ %1447, %1431 ]
  %1458 = fmul fast float %1455, %1426
  %1459 = select i1 %215, float %1458, float %1455
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = select i1 %215, float 0.000000e+00, float %1455
  %1462 = select i1 %215, float %1460, float %1456
  %1463 = select i1 %215, float 0.000000e+00, float %1457
  br label %1464

; <label>:1464                                    ; preds = %1454, %1416
  %1465 = phi float [ %1461, %1454 ], [ 0.000000e+00, %1416 ]
  %1466 = phi float [ %1462, %1454 ], [ 0.000000e+00, %1416 ]
  %1467 = phi float [ %1463, %1454 ], [ 0.000000e+00, %1416 ]
  %1468 = add i32 %33, 112
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = lshr i32 %1470, 8
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1337, float %1338, float %1339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = fmul fast float %1475, %1476
  %1478 = fadd fast float %1477, %1472
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  br i1 %936, label %1481, label %1489

; <label>:1481                                    ; preds = %1464
  %1482 = fsub fast float 1.000000e+00, %1117
  %1483 = fmul fast float %1482, %924
  %1484 = fmul fast float %1482, %925
  %1485 = fmul fast float %1482, %926
  %1486 = fmul fast float %1482, %927
  %1487 = fmul fast float %1482, %928
  %1488 = fmul fast float %1482, %929
  br label %1489

; <label>:1489                                    ; preds = %1481, %1464
  %1490 = phi float [ %1483, %1481 ], [ %924, %1464 ]
  %1491 = phi float [ %1484, %1481 ], [ %925, %1464 ]
  %1492 = phi float [ %1485, %1481 ], [ %926, %1464 ]
  %1493 = phi float [ %1486, %1481 ], [ %927, %1464 ]
  %1494 = phi float [ %1487, %1481 ], [ %928, %1464 ]
  %1495 = phi float [ %1488, %1481 ], [ %929, %1464 ]
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 3
  %1499 = icmp eq i32 %1498, 3
  br i1 %1499, label %1578, label %1500

; <label>:1500                                    ; preds = %1489
  %1501 = and i32 %1497, 16
  %1502 = icmp ne i32 %1501, 0
  %1503 = select i1 %1502, float %1117, float 0.000000e+00
  %1504 = icmp eq i32 %1498, 0
  br i1 %1504, label %1505, label %1533

; <label>:1505                                    ; preds = %1500
  %1506 = and i32 %1497, 64
  %1507 = icmp ne i32 %1506, 0
  %1508 = select i1 %1507, float %1117, float 0.000000e+00
  %1509 = fsub fast float %1337, %1490
  %1510 = fsub fast float %1338, %1491
  %1511 = fsub fast float %1339, %1492
  %1512 = fmul fast float %1503, %1509
  %1513 = fmul fast float %1503, %1510
  %1514 = fmul fast float %1503, %1511
  %1515 = fadd fast float %1512, %1490
  %1516 = fadd fast float %1513, %1491
  %1517 = fadd fast float %1514, %1492
  %1518 = fsub fast float %1323, %930
  %1519 = fmul fast float %1503, %1518
  %1520 = fadd fast float %1519, %930
  %1521 = fsub fast float %1465, %1493
  %1522 = fsub fast float %1466, %1494
  %1523 = fsub fast float %1467, %1495
  %1524 = fmul fast float %1508, %1521
  %1525 = fmul fast float %1508, %1522
  %1526 = fmul fast float %1508, %1523
  %1527 = fadd fast float %1524, %1493
  %1528 = fadd fast float %1525, %1494
  %1529 = fadd fast float %1526, %1495
  %1530 = fsub fast float %1480, %934
  %1531 = fmul fast float %1503, %1530
  %1532 = fadd fast float %1531, %934
  br label %1578

; <label>:1533                                    ; preds = %1500
  %1534 = icmp eq i32 %1498, 1
  br i1 %1534, label %1535, label %1548

; <label>:1535                                    ; preds = %1533
  %1536 = fadd fast float %1337, -1.000000e+00
  %1537 = fadd fast float %1338, -1.000000e+00
  %1538 = fadd fast float %1339, -1.000000e+00
  %1539 = fmul fast float %1503, %1536
  %1540 = fmul fast float %1503, %1537
  %1541 = fmul fast float %1503, %1538
  %1542 = fadd fast float %1539, 1.000000e+00
  %1543 = fadd fast float %1540, 1.000000e+00
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fmul fast float %1542, %1490
  %1546 = fmul fast float %1543, %1491
  %1547 = fmul fast float %1544, %1492
  br label %1578

; <label>:1548                                    ; preds = %1533
  %1549 = icmp eq i32 %1498, 2
  br i1 %1549, label %1550, label %1578

; <label>:1550                                    ; preds = %1548
  %1551 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1552 = call float @dx.op.unary.f32(i32 24, float %1338)  ; Sqrt(value)
  %1553 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1554 = fadd fast float %1551, -5.000000e-01
  %1555 = fadd fast float %1552, -5.000000e-01
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fmul fast float %1554, %1503
  %1558 = fmul fast float %1555, %1503
  %1559 = fmul fast float %1556, %1503
  %1560 = fadd fast float %1557, 5.000000e-01
  %1561 = fadd fast float %1558, 5.000000e-01
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = fmul fast float %1560, 2.000000e+00
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1564, %1490
  %1566 = fadd fast float %1565, %1563
  %1567 = fmul fast float %1566, %1490
  %1568 = fmul fast float %1561, 2.000000e+00
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1569, %1491
  %1571 = fadd fast float %1570, %1568
  %1572 = fmul fast float %1571, %1491
  %1573 = fmul fast float %1562, 2.000000e+00
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = fmul fast float %1574, %1492
  %1576 = fadd fast float %1575, %1573
  %1577 = fmul fast float %1576, %1492
  br label %1578

; <label>:1578                                    ; preds = %1550, %1548, %1535, %1505, %1489
  %1579 = phi float [ %1490, %1489 ], [ %1567, %1550 ], [ %1490, %1548 ], [ %1545, %1535 ], [ %1515, %1505 ]
  %1580 = phi float [ %1491, %1489 ], [ %1572, %1550 ], [ %1491, %1548 ], [ %1546, %1535 ], [ %1516, %1505 ]
  %1581 = phi float [ %1492, %1489 ], [ %1577, %1550 ], [ %1492, %1548 ], [ %1547, %1535 ], [ %1517, %1505 ]
  %1582 = phi float [ %1493, %1489 ], [ %1493, %1550 ], [ %1493, %1548 ], [ %1493, %1535 ], [ %1527, %1505 ]
  %1583 = phi float [ %1494, %1489 ], [ %1494, %1550 ], [ %1494, %1548 ], [ %1494, %1535 ], [ %1528, %1505 ]
  %1584 = phi float [ %1495, %1489 ], [ %1495, %1550 ], [ %1495, %1548 ], [ %1495, %1535 ], [ %1529, %1505 ]
  %1585 = phi float [ %930, %1489 ], [ %930, %1550 ], [ %930, %1548 ], [ %930, %1535 ], [ %1520, %1505 ]
  %1586 = phi float [ %934, %1489 ], [ %934, %1550 ], [ %934, %1548 ], [ %934, %1535 ], [ %1532, %1505 ]
  %1587 = and i32 %1497, 12
  %1588 = icmp eq i32 %1587, 12
  br i1 %1588, label %1661, label %1589

; <label>:1589                                    ; preds = %1578
  %1590 = and i32 %1497, 2097184
  %1591 = icmp eq i32 %1590, 2097184
  %1592 = select i1 %1591, float %1117, float 0.000000e+00
  %1593 = and i32 %1497, 4194336
  %1594 = icmp eq i32 %1593, 4194336
  %1595 = select i1 %1594, float %1117, float 0.000000e+00
  %1596 = and i32 %1497, 8388640
  %1597 = icmp eq i32 %1596, 8388640
  %1598 = select i1 %1597, float %1117, float 0.000000e+00
  %1599 = icmp eq i32 %1587, 0
  br i1 %1599, label %1600, label %1613

; <label>:1600                                    ; preds = %1589
  %1601 = fsub fast float %1418, %922
  %1602 = fsub fast float %1419, %923
  %1603 = fmul fast float %1592, %1601
  %1604 = fmul fast float %1592, %1602
  %1605 = fadd fast float %1603, %922
  %1606 = fadd fast float %1604, %923
  %1607 = fsub fast float %1420, %933
  %1608 = fmul fast float %1595, %1607
  %1609 = fadd fast float %1608, %933
  %1610 = fsub fast float %1417, %932
  %1611 = fmul fast float %1598, %1610
  %1612 = fadd fast float %1611, %932
  br label %1661

; <label>:1613                                    ; preds = %1589
  %1614 = icmp eq i32 %1587, 4
  br i1 %1614, label %1615, label %1647

; <label>:1615                                    ; preds = %1613
  %1616 = fmul fast float %1592, %1418
  %1617 = fmul fast float %1592, %1419
  %1618 = fadd fast float %1616, %922
  %1619 = fadd fast float %1617, %923
  %1620 = call float @dx.op.binary.f32(i32 36, float %933, float %1420)  ; FMin(a,b)
  %1621 = fsub fast float %1620, %933
  %1622 = fmul fast float %1621, %1595
  %1623 = fadd fast float %1622, %933
  %1624 = fadd fast float %1417, %932
  %1625 = fmul fast float %1624, 0x3FF337FAE0000000
  %1626 = fmul fast float %932, %932
  %1627 = fmul fast float %1417, %1417
  %1628 = fadd fast float %1627, %1626
  %1629 = fmul fast float %1628, 0x3FE5152B00000000
  %1630 = fmul fast float %932, 0xBFCC1F85E0000000
  %1631 = fmul fast float %1630, %1417
  %1632 = fadd fast float %1631, 0xBFE1363700000000
  %1633 = fadd fast float %1632, %1625
  %1634 = fsub fast float %1633, %1629
  %1635 = fmul fast float %1624, 0x3FBA6F0D00000000
  %1636 = fmul fast float %1628, 0x3FD0432880000000
  %1637 = fmul fast float %932, 0xBFEF110800000000
  %1638 = fmul fast float %1637, %1417
  %1639 = fadd fast float %1638, 1.000000e+00
  %1640 = fsub fast float %1639, %1635
  %1641 = fadd fast float %1640, %1636
  %1642 = fdiv fast float %1634, %1641
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fsub fast float %1643, %932
  %1645 = fmul fast float %1644, %1598
  %1646 = fadd fast float %1645, %932
  br label %1661

; <label>:1647                                    ; preds = %1613
  %1648 = icmp eq i32 %1587, 8
  br i1 %1648, label %1649, label %1661

; <label>:1649                                    ; preds = %1647
  %1650 = fmul fast float %1592, %1418
  %1651 = fmul fast float %1592, %1419
  %1652 = fadd fast float %1650, %922
  %1653 = fadd fast float %1651, %923
  %1654 = call float @dx.op.binary.f32(i32 36, float %933, float %1420)  ; FMin(a,b)
  %1655 = fsub fast float %1654, %933
  %1656 = fmul fast float %1655, %1595
  %1657 = fadd fast float %1656, %933
  %1658 = fsub fast float %1417, %932
  %1659 = fmul fast float %1598, %1658
  %1660 = fadd fast float %1659, %932
  br label %1661

; <label>:1661                                    ; preds = %1649, %1647, %1615, %1600, %1578, %1116, %935, %921
  %1662 = phi float [ %922, %1578 ], [ %922, %1116 ], [ %922, %921 ], [ %1652, %1649 ], [ %922, %1647 ], [ %1618, %1615 ], [ %1605, %1600 ], [ %922, %935 ]
  %1663 = phi float [ %923, %1578 ], [ %923, %1116 ], [ %923, %921 ], [ %1653, %1649 ], [ %923, %1647 ], [ %1619, %1615 ], [ %1606, %1600 ], [ %923, %935 ]
  %1664 = phi float [ %1579, %1578 ], [ %924, %1116 ], [ %924, %921 ], [ %1579, %1649 ], [ %1579, %1647 ], [ %1579, %1615 ], [ %1579, %1600 ], [ %924, %935 ]
  %1665 = phi float [ %1580, %1578 ], [ %925, %1116 ], [ %925, %921 ], [ %1580, %1649 ], [ %1580, %1647 ], [ %1580, %1615 ], [ %1580, %1600 ], [ %925, %935 ]
  %1666 = phi float [ %1581, %1578 ], [ %926, %1116 ], [ %926, %921 ], [ %1581, %1649 ], [ %1581, %1647 ], [ %1581, %1615 ], [ %1581, %1600 ], [ %926, %935 ]
  %1667 = phi float [ %1582, %1578 ], [ %927, %1116 ], [ %927, %921 ], [ %1582, %1649 ], [ %1582, %1647 ], [ %1582, %1615 ], [ %1582, %1600 ], [ %927, %935 ]
  %1668 = phi float [ %1583, %1578 ], [ %928, %1116 ], [ %928, %921 ], [ %1583, %1649 ], [ %1583, %1647 ], [ %1583, %1615 ], [ %1583, %1600 ], [ %928, %935 ]
  %1669 = phi float [ %1584, %1578 ], [ %929, %1116 ], [ %929, %921 ], [ %1584, %1649 ], [ %1584, %1647 ], [ %1584, %1615 ], [ %1584, %1600 ], [ %929, %935 ]
  %1670 = phi float [ %1585, %1578 ], [ %930, %1116 ], [ %930, %921 ], [ %1585, %1649 ], [ %1585, %1647 ], [ %1585, %1615 ], [ %1585, %1600 ], [ %930, %935 ]
  %1671 = phi float [ %932, %1578 ], [ %932, %1116 ], [ %932, %921 ], [ %1660, %1649 ], [ %932, %1647 ], [ %1646, %1615 ], [ %1612, %1600 ], [ %932, %935 ]
  %1672 = phi float [ %933, %1578 ], [ %933, %1116 ], [ %933, %921 ], [ %1657, %1649 ], [ %933, %1647 ], [ %1623, %1615 ], [ %1609, %1600 ], [ %933, %935 ]
  %1673 = phi float [ %1586, %1578 ], [ %934, %1116 ], [ %934, %921 ], [ %1586, %1649 ], [ %1586, %1647 ], [ %1586, %1615 ], [ %1586, %1600 ], [ %934, %935 ]
  br i1 %401, label %2400, label %1674

; <label>:1674                                    ; preds = %1661
  %1675 = icmp ult i32 %454, 3
  %1676 = add i32 %33, 56
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %33, 60
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = or i32 %1681, %1678
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %2400, label %1684

; <label>:1684                                    ; preds = %1674
  %1685 = and i32 %1678, 262144
  %1686 = icmp ne i32 %1685, 0
  %1687 = select i1 %1686, float %39, float 1.000000e+00
  %1688 = select i1 %1686, float %40, float 0.000000e+00
  %1689 = select i1 %1686, float %41, float 0.000000e+00
  %1690 = select i1 %1686, float %42, float 1.000000e+00
  %1691 = select i1 %1686, float %43, float %66
  %1692 = select i1 %1686, float %44, float %67
  %1693 = add i32 %33, 316
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = lshr i32 %1695, 16
  %1697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1696)  ; LegacyF16ToF32(value)
  %1698 = fmul fast float %1697, 0x3F50624DE0000000
  %1699 = add i32 %33, 120
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = lshr i32 %1701, 16
  %1703 = and i32 %1702, 255
  %1704 = lshr i32 %1701, 24
  %1705 = add i32 %33, 324
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 65535
  %1709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1708)  ; LegacyF16ToF32(value)
  %1710 = lshr i32 %1707, 16
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = add i32 %33, 64
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = lshr i32 %1714, 22
  %1716 = shl nuw nsw i32 %1715, 5
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = shl i32 %1714, 4
  %1719 = and i32 %1718, 32752
  %1720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1719)  ; LegacyF16ToF32(value)
  %1721 = lshr i32 %1714, 7
  %1722 = and i32 %1721, 32752
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1726 = fmul fast float %1725, 1.000000e+03
  %1727 = fmul fast float %351, %1726
  %1728 = call float @dx.op.unary.f32(i32 22, float %1727)  ; Frc(value)
  %1729 = fadd fast float %1728, %341
  %1730 = fmul fast float %352, %1726
  %1731 = call float @dx.op.unary.f32(i32 22, float %1730)  ; Frc(value)
  %1732 = fadd fast float %1731, %343
  %1733 = fmul fast float %1698, %1726
  %1734 = call float @dx.op.unary.f32(i32 22, float %1733)  ; Frc(value)
  %1735 = fmul fast float %1734, 0x401921FB60000000
  %1736 = fadd fast float %1735, %1717
  %1737 = call float @dx.op.unary.f32(i32 13, float %1736)  ; Sin(value)
  %1738 = call float @dx.op.unary.f32(i32 12, float %1736)  ; Cos(value)
  %1739 = fsub fast float -0.000000e+00, %1737
  %1740 = fadd fast float %1691, -5.000000e-01
  %1741 = fadd fast float %1692, -5.000000e-01
  %1742 = fmul fast float %1709, %1740
  %1743 = fmul fast float %1711, %1741
  %1744 = fadd fast float %1742, 5.000000e-01
  %1745 = fadd fast float %1743, 5.000000e-01
  %1746 = fmul fast float %1720, %1744
  %1747 = fmul fast float %1723, %1745
  %1748 = fmul fast float %1738, %1746
  %1749 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1747, float %1748)  ; FMad(a,b,c)
  %1750 = fmul fast float %1737, %1746
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1738, float %1747, float %1750)  ; FMad(a,b,c)
  %1752 = fadd fast float %1729, %1749
  %1753 = fadd fast float %1732, %1751
  %1754 = icmp ugt i32 %1703, 1
  %1755 = icmp ugt i32 %1701, 33554431
  %1756 = or i1 %1755, %1754
  br i1 %1756, label %1757, label %1782

; <label>:1757                                    ; preds = %1684
  %1758 = add i32 %33, 260
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fmul fast float %1725, %1762
  %1764 = call float @dx.op.unary.f32(i32 22, float %1763)  ; Frc(value)
  %1765 = mul nuw nsw i32 %1703, %1704
  %1766 = uitofp i32 %1765 to float
  %1767 = fmul fast float %1764, %1766
  %1768 = call float @dx.op.unary.f32(i32 27, float %1767)  ; Round_ni(value)
  %1769 = fptoui float %1768 to i32
  %1770 = urem i32 %1769, %1703
  %1771 = udiv i32 %1769, %1704
  %1772 = call float @dx.op.unary.f32(i32 22, float %1752)  ; Frc(value)
  %1773 = call float @dx.op.unary.f32(i32 22, float %1753)  ; Frc(value)
  %1774 = uitofp i32 %1770 to float
  %1775 = uitofp i32 %1771 to float
  %1776 = fadd fast float %1772, %1774
  %1777 = fadd fast float %1773, %1775
  %1778 = uitofp i32 %1703 to float
  %1779 = uitofp i32 %1704 to float
  %1780 = fdiv fast float %1776, %1778
  %1781 = fdiv fast float %1777, %1779
  br label %1782

; <label>:1782                                    ; preds = %1757, %1684
  %1783 = phi float [ %1780, %1757 ], [ %1752, %1684 ]
  %1784 = phi float [ %1781, %1757 ], [ %1753, %1684 ]
  %1785 = and i32 %1678, 256
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1833, label %1787

; <label>:1787                                    ; preds = %1782
  %1788 = add i32 %33, 528
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = add i32 %1790, 0
  %1792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1793 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1792, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1794 = extractvalue %dx.types.ResRet.f32 %1793, 0
  %1795 = add i32 %33, 132
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = shl i32 %1797, 4
  %1799 = and i32 %1798, 32752
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = lshr i32 %1797, 7
  %1802 = and i32 %1801, 32752
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = fsub fast float 1.000000e+00, %450
  %1805 = call float @dx.op.binary.f32(i32 35, float %1804, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1806 = bitcast float %450 to i32
  %1807 = sitofp i32 %1806 to float
  %1808 = fadd fast float %1807, 0xC1CFBF8940000000
  %1809 = fmul fast float %1803, %1808
  %1810 = fadd fast float %1809, 0x41CFBF8940000000
  %1811 = fptosi float %1810 to i32
  %1812 = bitcast i32 %1811 to float
  %1813 = bitcast float %1805 to i32
  %1814 = sitofp i32 %1813 to float
  %1815 = fadd fast float %1814, 0xC1CFBF8940000000
  %1816 = fmul fast float %1815, %1803
  %1817 = fadd fast float %1816, 0x41CFBF8940000000
  %1818 = fptosi float %1817 to i32
  %1819 = bitcast i32 %1818 to float
  %1820 = fmul fast float %1812, %1800
  %1821 = fmul fast float %1819, %1800
  %1822 = fsub fast float %1805, %1820
  %1823 = fadd fast float %1821, %1805
  %1824 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1825 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1826 = fsub fast float %1794, %1824
  %1827 = fsub fast float %1825, %1824
  %1828 = bitcast float %1827 to i32
  %1829 = sub nsw i32 2129859010, %1828
  %1830 = bitcast i32 %1829 to float
  %1831 = fmul fast float %1830, %1826
  %1832 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  br label %1833

; <label>:1833                                    ; preds = %1787, %1782
  %1834 = phi float [ %1832, %1787 ], [ %450, %1782 ]
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 128
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1855, label %1839

; <label>:1839                                    ; preds = %1833
  %1840 = add i32 %33, 512
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %1842, 0
  %1844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1844, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 524288
  %1850 = icmp ne i32 %1849, 0
  %1851 = fcmp fast ogt float %1846, 0x3FE0101020000000
  %1852 = select i1 %1851, float 1.000000e+00, float 0.000000e+00
  %1853 = select i1 %1850, float %1852, float %1846
  %1854 = fmul fast float %1853, %1834
  br label %1855

; <label>:1855                                    ; preds = %1839, %1833
  %1856 = phi float [ %1854, %1839 ], [ %1834, %1833 ]
  %1857 = fcmp fast ult float %1856, 0x3F70101020000000
  br i1 %1857, label %2400, label %1858

; <label>:1858                                    ; preds = %1855
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 16
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %2061, label %1863

; <label>:1863                                    ; preds = %1858
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = add i32 %33, 464
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.ResRet.f32 %1871, 3
  %1876 = and i32 %1865, 255
  %1877 = uitofp i32 %1876 to float
  %1878 = lshr i32 %1865, 8
  %1879 = and i32 %1878, 255
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1875, %1877
  %1882 = fadd fast float %1881, %1880
  %1883 = fmul fast float %1882, 0x3F70101000000000
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 512
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1896, label %1888

; <label>:1888                                    ; preds = %1863
  %1889 = add i32 %33, 544
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %1891, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1893, %dx.types.Handle %75, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  br label %1896

; <label>:1896                                    ; preds = %1888, %1863
  %1897 = phi float [ %1895, %1888 ], [ 1.000000e+00, %1863 ]
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 33554432
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %2008, label %1902

; <label>:1902                                    ; preds = %1896
  %1903 = add i32 %33, 256
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = lshr i32 %1905, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = add i32 %33, 260
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 65535
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = lshr i32 %1916, 24
  %1918 = uitofp i32 %1917 to float
  %1919 = fmul fast float %1918, 0x3F70101020000000
  %1920 = and i32 %1916, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3F70101020000000
  %1923 = lshr i32 %1916, 8
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = lshr i32 %1916, 16
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = add i32 %33, 252
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 24
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = and i32 %1933, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1933, 8
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = lshr i32 %1933, 16
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101020000000
  %1948 = bitcast float %1872 to i32
  %1949 = ashr i32 %1948, 1
  %1950 = sub nsw i32 1597463174, %1949
  %1951 = bitcast i32 %1950 to float
  %1952 = fmul fast float %1872, 5.000000e-01
  %1953 = fmul fast float %1951, %1951
  %1954 = fmul fast float %1953, %1952
  %1955 = fsub fast float 1.500000e+00, %1954
  %1956 = fmul fast float %1951, %1872
  %1957 = fmul fast float %1956, %1955
  %1958 = bitcast float %1873 to i32
  %1959 = ashr i32 %1958, 1
  %1960 = sub nsw i32 1597463174, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1873, 5.000000e-01
  %1963 = fmul fast float %1961, %1961
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float 1.500000e+00, %1964
  %1966 = fmul fast float %1961, %1873
  %1967 = fmul fast float %1966, %1965
  %1968 = bitcast float %1874 to i32
  %1969 = ashr i32 %1968, 1
  %1970 = sub nsw i32 1597463174, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1874, 5.000000e-01
  %1973 = fmul fast float %1971, %1971
  %1974 = fmul fast float %1973, %1972
  %1975 = fsub fast float 1.500000e+00, %1974
  %1976 = fmul fast float %1971, %1874
  %1977 = fmul fast float %1976, %1975
  %1978 = fsub fast float %1957, %1939
  %1979 = fsub fast float %1967, %1943
  %1980 = fsub fast float %1977, %1947
  %1981 = fmul fast float %1978, %1907
  %1982 = fmul fast float %1979, %1909
  %1983 = fmul fast float %1980, %1914
  %1984 = fadd fast float %1981, %1922
  %1985 = fadd fast float %1982, %1926
  %1986 = fadd fast float %1983, %1930
  %1987 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1988 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1990 = fmul fast float %1987, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fmul fast float %1989, %1989
  %1993 = fsub fast float %1990, %1872
  %1994 = fsub fast float %1991, %1873
  %1995 = fsub fast float %1992, %1874
  %1996 = fmul fast float %1993, %1897
  %1997 = fmul fast float %1994, %1897
  %1998 = fmul fast float %1995, %1897
  %1999 = fadd fast float %1996, %1872
  %2000 = fadd fast float %1997, %1873
  %2001 = fadd fast float %1998, %1874
  %2002 = fadd fast float %1919, %1883
  %2003 = fsub fast float %2002, %1936
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = fsub fast float %2004, %1883
  %2006 = fmul fast float %2005, %1897
  %2007 = fadd fast float %2006, %1883
  br label %2061

; <label>:2008                                    ; preds = %1896
  %2009 = and i32 %1899, 134217728
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2045, label %2011

; <label>:2011                                    ; preds = %2008
  %2012 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2013 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2014 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2015 = fadd fast float %2012, -5.000000e-01
  %2016 = fadd fast float %2013, -5.000000e-01
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fmul fast float %2015, %1897
  %2019 = fmul fast float %2016, %1897
  %2020 = fmul fast float %2017, %1897
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = fadd fast float %2019, 5.000000e-01
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = call float @dx.op.unary.f32(i32 24, float %1872)  ; Sqrt(value)
  %2025 = call float @dx.op.unary.f32(i32 24, float %1873)  ; Sqrt(value)
  %2026 = call float @dx.op.unary.f32(i32 24, float %1874)  ; Sqrt(value)
  %2027 = fmul fast float %2021, 2.000000e+00
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = fmul fast float %2028, %2024
  %2030 = fadd fast float %2029, %2027
  %2031 = fmul fast float %2030, %2024
  %2032 = fmul fast float %2022, 2.000000e+00
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2033, %2025
  %2035 = fadd fast float %2034, %2032
  %2036 = fmul fast float %2035, %2025
  %2037 = fmul fast float %2023, 2.000000e+00
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = fmul fast float %2038, %2026
  %2040 = fadd fast float %2039, %2037
  %2041 = fmul fast float %2040, %2026
  %2042 = fmul fast float %2031, %2031
  %2043 = fmul fast float %2036, %2036
  %2044 = fmul fast float %2041, %2041
  br label %2061

; <label>:2045                                    ; preds = %2008
  %2046 = fmul fast float %328, %328
  %2047 = fmul fast float %332, %332
  %2048 = fmul fast float %336, %336
  %2049 = fadd fast float %2046, -1.000000e+00
  %2050 = fadd fast float %2047, -1.000000e+00
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = fmul fast float %1897, %2049
  %2053 = fmul fast float %1897, %2050
  %2054 = fmul fast float %1897, %2051
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %1872
  %2059 = fmul fast float %2056, %1873
  %2060 = fmul fast float %2057, %1874
  br label %2061

; <label>:2061                                    ; preds = %2045, %2011, %1902, %1858
  %2062 = phi float [ %2007, %1902 ], [ %1883, %2011 ], [ %1883, %2045 ], [ 0x3FA23C0BE0000000, %1858 ]
  %2063 = phi float [ %1999, %1902 ], [ %2042, %2011 ], [ %2058, %2045 ], [ 1.000000e+00, %1858 ]
  %2064 = phi float [ %2000, %1902 ], [ %2043, %2011 ], [ %2059, %2045 ], [ 1.000000e+00, %1858 ]
  %2065 = phi float [ %2001, %1902 ], [ %2044, %2011 ], [ %2060, %2045 ], [ 1.000000e+00, %1858 ]
  %2066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.i32 %2066, 1
  %2068 = and i32 %2067, 1
  %2069 = icmp ne i32 %2068, 0
  %2070 = add i32 %33, 356
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 32
  %2074 = icmp ne i32 %2073, 0
  %2075 = and i1 %2069, %2074
  %2076 = select i1 %2075, float 1.000000e+00, float %2063
  %2077 = select i1 %2075, float 0x3FD3333340000000, float %2064
  %2078 = select i1 %2075, float 0x3FD3333340000000, float %2065
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 32
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2155, label %2083

; <label>:2083                                    ; preds = %2061
  %2084 = add i32 %33, 124
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = add i32 %33, 480
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2091, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.ResRet.f32 %2092, 3
  %2097 = and i32 %2086, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = lshr i32 %2086, 8
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = lshr i32 %2086, 16
  %2103 = and i32 %2102, 255
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101000000000
  %2106 = fmul fast float %2093, %2098
  %2107 = fadd fast float %2106, %2101
  %2108 = fmul fast float %2107, 0x3F70101000000000
  %2109 = fadd fast float %2094, -5.000000e-01
  %2110 = fadd fast float %2096, -5.000000e-01
  %2111 = fmul fast float %2109, %2105
  %2112 = fmul fast float %2110, %2105
  %2113 = fadd fast float %2111, 5.000000e-01
  %2114 = fadd fast float %2112, 5.000000e-01
  %2115 = fmul fast float %2113, 2.000000e+00
  %2116 = fadd fast float %2115, -1.000000e+00
  %2117 = fmul fast float %2114, 2.000000e+00
  %2118 = fadd fast float %2117, -1.000000e+00
  %2119 = fadd fast float %2116, %2118
  %2120 = fmul fast float %2119, 5.000000e-01
  %2121 = fsub fast float %2116, %2118
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2124 = fsub fast float 1.000000e+00, %2123
  %2125 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2126 = fsub fast float %2124, %2125
  %2127 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2122, float %2126, float %2120, float %2122, float %2126)  ; Dot3(ax,ay,az,bx,by,bz)
  %2128 = call float @dx.op.unary.f32(i32 25, float %2127)  ; Rsqrt(value)
  %2129 = fmul fast float %2120, %2128
  %2130 = fmul fast float %2122, %2128
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 67108864
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2151, label %2135

; <label>:2135                                    ; preds = %2083
  %2136 = add i32 %33, 312
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 65535
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 65535
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = lshr i32 %2138, 16
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = fsub fast float %2108, %2146
  %2148 = fmul fast float %2147, %2140
  %2149 = fadd fast float %2148, %2144
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  br label %2151

; <label>:2151                                    ; preds = %2135, %2083
  %2152 = phi float [ %2150, %2135 ], [ %2108, %2083 ]
  %2153 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %1687, float %1688)  ; Dot2(ax,ay,bx,by)
  %2154 = call float @dx.op.dot2.f32(i32 54, float %2129, float %2130, float %1689, float %1690)  ; Dot2(ax,ay,bx,by)
  br label %2155

; <label>:2155                                    ; preds = %2151, %2061
  %2156 = phi float [ %2152, %2151 ], [ 0x3FD6666660000000, %2061 ]
  %2157 = phi float [ %2153, %2151 ], [ 0.000000e+00, %2061 ]
  %2158 = phi float [ %2154, %2151 ], [ 0.000000e+00, %2061 ]
  %2159 = phi float [ %2095, %2151 ], [ 1.000000e+00, %2061 ]
  %2160 = add i32 %33, 192
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = lshr i32 %2162, 22
  %2164 = shl nuw nsw i32 %2163, 5
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 64
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2203, label %2170

; <label>:2170                                    ; preds = %2155
  %2171 = add i32 %33, 496
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 131072
  %2179 = icmp eq i32 %2178, 0
  %2180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2175, %dx.types.Handle %74, float %1783, float %1784, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = fmul fast float %2181, %316
  %2185 = fmul fast float %2182, %319
  %2186 = fmul fast float %2183, %322
  br i1 %2179, label %2193, label %2187

; <label>:2187                                    ; preds = %2170
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = fmul fast float %2189, %2184
  %2191 = fmul fast float %2189, %2185
  %2192 = fmul fast float %2189, %2186
  br label %2193

; <label>:2193                                    ; preds = %2187, %2170
  %2194 = phi float [ %2190, %2187 ], [ %2184, %2170 ]
  %2195 = phi float [ %2191, %2187 ], [ %2185, %2170 ]
  %2196 = phi float [ %2192, %2187 ], [ %2186, %2170 ]
  %2197 = fmul fast float %2194, %2165
  %2198 = select i1 %215, float %2197, float %2194
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2195, float %2196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = select i1 %215, float 0.000000e+00, float %2194
  %2201 = select i1 %215, float %2199, float %2195
  %2202 = select i1 %215, float 0.000000e+00, float %2196
  br label %2203

; <label>:2203                                    ; preds = %2193, %2155
  %2204 = phi float [ %2200, %2193 ], [ 0.000000e+00, %2155 ]
  %2205 = phi float [ %2201, %2193 ], [ 0.000000e+00, %2155 ]
  %2206 = phi float [ %2202, %2193 ], [ 0.000000e+00, %2155 ]
  %2207 = add i32 %33, 128
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = lshr i32 %2209, 8
  %2213 = and i32 %2212, 255
  %2214 = uitofp i32 %2213 to float
  %2215 = call float @dx.op.dot3.f32(i32 55, float %2076, float %2077, float %2078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = fmul fast float %2214, %2215
  %2217 = fadd fast float %2216, %2211
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  br i1 %1675, label %2220, label %2228

; <label>:2220                                    ; preds = %2203
  %2221 = fsub fast float 1.000000e+00, %1856
  %2222 = fmul fast float %2221, %1664
  %2223 = fmul fast float %2221, %1665
  %2224 = fmul fast float %2221, %1666
  %2225 = fmul fast float %2221, %1667
  %2226 = fmul fast float %2221, %1668
  %2227 = fmul fast float %2221, %1669
  br label %2228

; <label>:2228                                    ; preds = %2220, %2203
  %2229 = phi float [ %2222, %2220 ], [ %1664, %2203 ]
  %2230 = phi float [ %2223, %2220 ], [ %1665, %2203 ]
  %2231 = phi float [ %2224, %2220 ], [ %1666, %2203 ]
  %2232 = phi float [ %2225, %2220 ], [ %1667, %2203 ]
  %2233 = phi float [ %2226, %2220 ], [ %1668, %2203 ]
  %2234 = phi float [ %2227, %2220 ], [ %1669, %2203 ]
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 3
  %2238 = icmp eq i32 %2237, 3
  br i1 %2238, label %2317, label %2239

; <label>:2239                                    ; preds = %2228
  %2240 = and i32 %2236, 16
  %2241 = icmp ne i32 %2240, 0
  %2242 = select i1 %2241, float %1856, float 0.000000e+00
  %2243 = icmp eq i32 %2237, 0
  br i1 %2243, label %2244, label %2272

; <label>:2244                                    ; preds = %2239
  %2245 = and i32 %2236, 64
  %2246 = icmp ne i32 %2245, 0
  %2247 = select i1 %2246, float %1856, float 0.000000e+00
  %2248 = fsub fast float %2076, %2229
  %2249 = fsub fast float %2077, %2230
  %2250 = fsub fast float %2078, %2231
  %2251 = fmul fast float %2242, %2248
  %2252 = fmul fast float %2242, %2249
  %2253 = fmul fast float %2242, %2250
  %2254 = fadd fast float %2251, %2229
  %2255 = fadd fast float %2252, %2230
  %2256 = fadd fast float %2253, %2231
  %2257 = fsub fast float %2062, %1670
  %2258 = fmul fast float %2242, %2257
  %2259 = fadd fast float %2258, %1670
  %2260 = fsub fast float %2204, %2232
  %2261 = fsub fast float %2205, %2233
  %2262 = fsub fast float %2206, %2234
  %2263 = fmul fast float %2247, %2260
  %2264 = fmul fast float %2247, %2261
  %2265 = fmul fast float %2247, %2262
  %2266 = fadd fast float %2263, %2232
  %2267 = fadd fast float %2264, %2233
  %2268 = fadd fast float %2265, %2234
  %2269 = fsub fast float %2219, %1673
  %2270 = fmul fast float %2242, %2269
  %2271 = fadd fast float %2270, %1673
  br label %2317

; <label>:2272                                    ; preds = %2239
  %2273 = icmp eq i32 %2237, 1
  br i1 %2273, label %2274, label %2287

; <label>:2274                                    ; preds = %2272
  %2275 = fadd fast float %2076, -1.000000e+00
  %2276 = fadd fast float %2077, -1.000000e+00
  %2277 = fadd fast float %2078, -1.000000e+00
  %2278 = fmul fast float %2242, %2275
  %2279 = fmul fast float %2242, %2276
  %2280 = fmul fast float %2242, %2277
  %2281 = fadd fast float %2278, 1.000000e+00
  %2282 = fadd fast float %2279, 1.000000e+00
  %2283 = fadd fast float %2280, 1.000000e+00
  %2284 = fmul fast float %2281, %2229
  %2285 = fmul fast float %2282, %2230
  %2286 = fmul fast float %2283, %2231
  br label %2317

; <label>:2287                                    ; preds = %2272
  %2288 = icmp eq i32 %2237, 2
  br i1 %2288, label %2289, label %2317

; <label>:2289                                    ; preds = %2287
  %2290 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2291 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2292 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2293 = fadd fast float %2290, -5.000000e-01
  %2294 = fadd fast float %2291, -5.000000e-01
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fmul fast float %2293, %2242
  %2297 = fmul fast float %2294, %2242
  %2298 = fmul fast float %2295, %2242
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = fadd fast float %2297, 5.000000e-01
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = fmul fast float %2299, 2.000000e+00
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2303, %2229
  %2305 = fadd fast float %2304, %2302
  %2306 = fmul fast float %2305, %2229
  %2307 = fmul fast float %2300, 2.000000e+00
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2308, %2230
  %2310 = fadd fast float %2309, %2307
  %2311 = fmul fast float %2310, %2230
  %2312 = fmul fast float %2301, 2.000000e+00
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2313, %2231
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, %2231
  br label %2317

; <label>:2317                                    ; preds = %2289, %2287, %2274, %2244, %2228
  %2318 = phi float [ %2229, %2228 ], [ %2306, %2289 ], [ %2229, %2287 ], [ %2284, %2274 ], [ %2254, %2244 ]
  %2319 = phi float [ %2230, %2228 ], [ %2311, %2289 ], [ %2230, %2287 ], [ %2285, %2274 ], [ %2255, %2244 ]
  %2320 = phi float [ %2231, %2228 ], [ %2316, %2289 ], [ %2231, %2287 ], [ %2286, %2274 ], [ %2256, %2244 ]
  %2321 = phi float [ %2232, %2228 ], [ %2232, %2289 ], [ %2232, %2287 ], [ %2232, %2274 ], [ %2266, %2244 ]
  %2322 = phi float [ %2233, %2228 ], [ %2233, %2289 ], [ %2233, %2287 ], [ %2233, %2274 ], [ %2267, %2244 ]
  %2323 = phi float [ %2234, %2228 ], [ %2234, %2289 ], [ %2234, %2287 ], [ %2234, %2274 ], [ %2268, %2244 ]
  %2324 = phi float [ %1670, %2228 ], [ %1670, %2289 ], [ %1670, %2287 ], [ %1670, %2274 ], [ %2259, %2244 ]
  %2325 = phi float [ %1673, %2228 ], [ %1673, %2289 ], [ %1673, %2287 ], [ %1673, %2274 ], [ %2271, %2244 ]
  %2326 = and i32 %2236, 12
  %2327 = icmp eq i32 %2326, 12
  br i1 %2327, label %2400, label %2328

; <label>:2328                                    ; preds = %2317
  %2329 = and i32 %2236, 2097184
  %2330 = icmp eq i32 %2329, 2097184
  %2331 = select i1 %2330, float %1856, float 0.000000e+00
  %2332 = and i32 %2236, 4194336
  %2333 = icmp eq i32 %2332, 4194336
  %2334 = select i1 %2333, float %1856, float 0.000000e+00
  %2335 = and i32 %2236, 8388640
  %2336 = icmp eq i32 %2335, 8388640
  %2337 = select i1 %2336, float %1856, float 0.000000e+00
  %2338 = icmp eq i32 %2326, 0
  br i1 %2338, label %2339, label %2352

; <label>:2339                                    ; preds = %2328
  %2340 = fsub fast float %2157, %1662
  %2341 = fsub fast float %2158, %1663
  %2342 = fmul fast float %2331, %2340
  %2343 = fmul fast float %2331, %2341
  %2344 = fadd fast float %2342, %1662
  %2345 = fadd fast float %2343, %1663
  %2346 = fsub fast float %2159, %1672
  %2347 = fmul fast float %2334, %2346
  %2348 = fadd fast float %2347, %1672
  %2349 = fsub fast float %2156, %1671
  %2350 = fmul fast float %2337, %2349
  %2351 = fadd fast float %2350, %1671
  br label %2400

; <label>:2352                                    ; preds = %2328
  %2353 = icmp eq i32 %2326, 4
  br i1 %2353, label %2354, label %2386

; <label>:2354                                    ; preds = %2352
  %2355 = fmul fast float %2331, %2157
  %2356 = fmul fast float %2331, %2158
  %2357 = fadd fast float %2355, %1662
  %2358 = fadd fast float %2356, %1663
  %2359 = call float @dx.op.binary.f32(i32 36, float %1672, float %2159)  ; FMin(a,b)
  %2360 = fsub fast float %2359, %1672
  %2361 = fmul fast float %2360, %2334
  %2362 = fadd fast float %2361, %1672
  %2363 = fadd fast float %2156, %1671
  %2364 = fmul fast float %2363, 0x3FF337FAE0000000
  %2365 = fmul fast float %1671, %1671
  %2366 = fmul fast float %2156, %2156
  %2367 = fadd fast float %2366, %2365
  %2368 = fmul fast float %2367, 0x3FE5152B00000000
  %2369 = fmul fast float %1671, 0xBFCC1F85E0000000
  %2370 = fmul fast float %2369, %2156
  %2371 = fadd fast float %2370, 0xBFE1363700000000
  %2372 = fadd fast float %2371, %2364
  %2373 = fsub fast float %2372, %2368
  %2374 = fmul fast float %2363, 0x3FBA6F0D00000000
  %2375 = fmul fast float %2367, 0x3FD0432880000000
  %2376 = fmul fast float %1671, 0xBFEF110800000000
  %2377 = fmul fast float %2376, %2156
  %2378 = fadd fast float %2377, 1.000000e+00
  %2379 = fsub fast float %2378, %2374
  %2380 = fadd fast float %2379, %2375
  %2381 = fdiv fast float %2373, %2380
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fsub fast float %2382, %1671
  %2384 = fmul fast float %2383, %2337
  %2385 = fadd fast float %2384, %1671
  br label %2400

; <label>:2386                                    ; preds = %2352
  %2387 = icmp eq i32 %2326, 8
  br i1 %2387, label %2388, label %2400

; <label>:2388                                    ; preds = %2386
  %2389 = fmul fast float %2331, %2157
  %2390 = fmul fast float %2331, %2158
  %2391 = fadd fast float %2389, %1662
  %2392 = fadd fast float %2390, %1663
  %2393 = call float @dx.op.binary.f32(i32 36, float %1672, float %2159)  ; FMin(a,b)
  %2394 = fsub fast float %2393, %1672
  %2395 = fmul fast float %2394, %2334
  %2396 = fadd fast float %2395, %1672
  %2397 = fsub fast float %2156, %1671
  %2398 = fmul fast float %2337, %2397
  %2399 = fadd fast float %2398, %1671
  br label %2400

; <label>:2400                                    ; preds = %2388, %2386, %2354, %2339, %2317, %1855, %1674, %1661
  %2401 = phi float [ %1662, %2317 ], [ %1662, %1855 ], [ %1662, %1661 ], [ %2391, %2388 ], [ %1662, %2386 ], [ %2357, %2354 ], [ %2344, %2339 ], [ %1662, %1674 ]
  %2402 = phi float [ %1663, %2317 ], [ %1663, %1855 ], [ %1663, %1661 ], [ %2392, %2388 ], [ %1663, %2386 ], [ %2358, %2354 ], [ %2345, %2339 ], [ %1663, %1674 ]
  %2403 = phi float [ %2318, %2317 ], [ %1664, %1855 ], [ %1664, %1661 ], [ %2318, %2388 ], [ %2318, %2386 ], [ %2318, %2354 ], [ %2318, %2339 ], [ %1664, %1674 ]
  %2404 = phi float [ %2319, %2317 ], [ %1665, %1855 ], [ %1665, %1661 ], [ %2319, %2388 ], [ %2319, %2386 ], [ %2319, %2354 ], [ %2319, %2339 ], [ %1665, %1674 ]
  %2405 = phi float [ %2320, %2317 ], [ %1666, %1855 ], [ %1666, %1661 ], [ %2320, %2388 ], [ %2320, %2386 ], [ %2320, %2354 ], [ %2320, %2339 ], [ %1666, %1674 ]
  %2406 = phi float [ %2321, %2317 ], [ %1667, %1855 ], [ %1667, %1661 ], [ %2321, %2388 ], [ %2321, %2386 ], [ %2321, %2354 ], [ %2321, %2339 ], [ %1667, %1674 ]
  %2407 = phi float [ %2322, %2317 ], [ %1668, %1855 ], [ %1668, %1661 ], [ %2322, %2388 ], [ %2322, %2386 ], [ %2322, %2354 ], [ %2322, %2339 ], [ %1668, %1674 ]
  %2408 = phi float [ %2323, %2317 ], [ %1669, %1855 ], [ %1669, %1661 ], [ %2323, %2388 ], [ %2323, %2386 ], [ %2323, %2354 ], [ %2323, %2339 ], [ %1669, %1674 ]
  %2409 = phi float [ %2324, %2317 ], [ %1670, %1855 ], [ %1670, %1661 ], [ %2324, %2388 ], [ %2324, %2386 ], [ %2324, %2354 ], [ %2324, %2339 ], [ %1670, %1674 ]
  %2410 = phi float [ %1671, %2317 ], [ %1671, %1855 ], [ %1671, %1661 ], [ %2399, %2388 ], [ %1671, %2386 ], [ %2385, %2354 ], [ %2351, %2339 ], [ %1671, %1674 ]
  %2411 = phi float [ %1672, %2317 ], [ %1672, %1855 ], [ %1672, %1661 ], [ %2396, %2388 ], [ %1672, %2386 ], [ %2362, %2354 ], [ %2348, %2339 ], [ %1672, %1674 ]
  %2412 = phi float [ %2325, %2317 ], [ %1673, %1855 ], [ %1673, %1661 ], [ %2325, %2388 ], [ %2325, %2386 ], [ %2325, %2354 ], [ %2325, %2339 ], [ %1673, %1674 ]
  br i1 %403, label %3139, label %2413

; <label>:2413                                    ; preds = %2400
  %2414 = icmp ult i32 %454, 4
  %2415 = add i32 %33, 72
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %33, 76
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = or i32 %2420, %2417
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %3139, label %2423

; <label>:2423                                    ; preds = %2413
  %2424 = and i32 %2417, 262144
  %2425 = icmp ne i32 %2424, 0
  %2426 = select i1 %2425, float %39, float 1.000000e+00
  %2427 = select i1 %2425, float %40, float 0.000000e+00
  %2428 = select i1 %2425, float %41, float 0.000000e+00
  %2429 = select i1 %2425, float %42, float 1.000000e+00
  %2430 = select i1 %2425, float %43, float %66
  %2431 = select i1 %2425, float %44, float %67
  %2432 = add i32 %33, 332
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 16
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = fmul fast float %2436, 0x3F50624DE0000000
  %2438 = add i32 %33, 136
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 16
  %2442 = and i32 %2441, 255
  %2443 = lshr i32 %2440, 24
  %2444 = add i32 %33, 340
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 65535
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = lshr i32 %2446, 16
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = add i32 %33, 80
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = lshr i32 %2453, 22
  %2455 = shl nuw nsw i32 %2454, 5
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = shl i32 %2453, 4
  %2458 = and i32 %2457, 32752
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = lshr i32 %2453, 7
  %2461 = and i32 %2460, 32752
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 3
  %2465 = fmul fast float %2464, 1.000000e+03
  %2466 = fmul fast float %393, %2465
  %2467 = call float @dx.op.unary.f32(i32 22, float %2466)  ; Frc(value)
  %2468 = fadd fast float %2467, %383
  %2469 = fmul fast float %394, %2465
  %2470 = call float @dx.op.unary.f32(i32 22, float %2469)  ; Frc(value)
  %2471 = fadd fast float %2470, %385
  %2472 = fmul fast float %2437, %2465
  %2473 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2474 = fmul fast float %2473, 0x401921FB60000000
  %2475 = fadd fast float %2474, %2456
  %2476 = call float @dx.op.unary.f32(i32 13, float %2475)  ; Sin(value)
  %2477 = call float @dx.op.unary.f32(i32 12, float %2475)  ; Cos(value)
  %2478 = fsub fast float -0.000000e+00, %2476
  %2479 = fadd fast float %2430, -5.000000e-01
  %2480 = fadd fast float %2431, -5.000000e-01
  %2481 = fmul fast float %2448, %2479
  %2482 = fmul fast float %2450, %2480
  %2483 = fadd fast float %2481, 5.000000e-01
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = fmul fast float %2459, %2483
  %2486 = fmul fast float %2462, %2484
  %2487 = fmul fast float %2477, %2485
  %2488 = call float @dx.op.tertiary.f32(i32 46, float %2478, float %2486, float %2487)  ; FMad(a,b,c)
  %2489 = fmul fast float %2476, %2485
  %2490 = call float @dx.op.tertiary.f32(i32 46, float %2477, float %2486, float %2489)  ; FMad(a,b,c)
  %2491 = fadd fast float %2468, %2488
  %2492 = fadd fast float %2471, %2490
  %2493 = icmp ugt i32 %2442, 1
  %2494 = icmp ugt i32 %2440, 33554431
  %2495 = or i1 %2494, %2493
  br i1 %2495, label %2496, label %2521

; <label>:2496                                    ; preds = %2423
  %2497 = add i32 %33, 276
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 16
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = fmul fast float %2464, %2501
  %2503 = call float @dx.op.unary.f32(i32 22, float %2502)  ; Frc(value)
  %2504 = mul nuw nsw i32 %2442, %2443
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2503, %2505
  %2507 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2508 = fptoui float %2507 to i32
  %2509 = urem i32 %2508, %2442
  %2510 = udiv i32 %2508, %2443
  %2511 = call float @dx.op.unary.f32(i32 22, float %2491)  ; Frc(value)
  %2512 = call float @dx.op.unary.f32(i32 22, float %2492)  ; Frc(value)
  %2513 = uitofp i32 %2509 to float
  %2514 = uitofp i32 %2510 to float
  %2515 = fadd fast float %2511, %2513
  %2516 = fadd fast float %2512, %2514
  %2517 = uitofp i32 %2442 to float
  %2518 = uitofp i32 %2443 to float
  %2519 = fdiv fast float %2515, %2517
  %2520 = fdiv fast float %2516, %2518
  br label %2521

; <label>:2521                                    ; preds = %2496, %2423
  %2522 = phi float [ %2519, %2496 ], [ %2491, %2423 ]
  %2523 = phi float [ %2520, %2496 ], [ %2492, %2423 ]
  %2524 = and i32 %2417, 256
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2572, label %2526

; <label>:2526                                    ; preds = %2521
  %2527 = add i32 %33, 532
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = add i32 %33, 148
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = shl i32 %2536, 4
  %2538 = and i32 %2537, 32752
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = lshr i32 %2536, 7
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = fsub fast float 1.000000e+00, %449
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2545 = bitcast float %449 to i32
  %2546 = sitofp i32 %2545 to float
  %2547 = fadd fast float %2546, 0xC1CFBF8940000000
  %2548 = fmul fast float %2542, %2547
  %2549 = fadd fast float %2548, 0x41CFBF8940000000
  %2550 = fptosi float %2549 to i32
  %2551 = bitcast i32 %2550 to float
  %2552 = bitcast float %2544 to i32
  %2553 = sitofp i32 %2552 to float
  %2554 = fadd fast float %2553, 0xC1CFBF8940000000
  %2555 = fmul fast float %2554, %2542
  %2556 = fadd fast float %2555, 0x41CFBF8940000000
  %2557 = fptosi float %2556 to i32
  %2558 = bitcast i32 %2557 to float
  %2559 = fmul fast float %2551, %2539
  %2560 = fmul fast float %2558, %2539
  %2561 = fsub fast float %2544, %2559
  %2562 = fadd fast float %2560, %2544
  %2563 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2564 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2565 = fsub fast float %2533, %2563
  %2566 = fsub fast float %2564, %2563
  %2567 = bitcast float %2566 to i32
  %2568 = sub nsw i32 2129859010, %2567
  %2569 = bitcast i32 %2568 to float
  %2570 = fmul fast float %2569, %2565
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  br label %2572

; <label>:2572                                    ; preds = %2526, %2521
  %2573 = phi float [ %2571, %2526 ], [ %449, %2521 ]
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 128
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2594, label %2578

; <label>:2578                                    ; preds = %2572
  %2579 = add i32 %33, 516
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %2581, 0
  %2583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2583, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 524288
  %2589 = icmp ne i32 %2588, 0
  %2590 = fcmp fast ogt float %2585, 0x3FE0101020000000
  %2591 = select i1 %2590, float 1.000000e+00, float 0.000000e+00
  %2592 = select i1 %2589, float %2591, float %2585
  %2593 = fmul fast float %2592, %2573
  br label %2594

; <label>:2594                                    ; preds = %2578, %2572
  %2595 = phi float [ %2593, %2578 ], [ %2573, %2572 ]
  %2596 = fcmp fast ult float %2595, 0x3F70101020000000
  br i1 %2596, label %3139, label %2597

; <label>:2597                                    ; preds = %2594
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 16
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2800, label %2602

; <label>:2602                                    ; preds = %2597
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %33, 468
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %2607, 0
  %2609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2609, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2613 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2614 = extractvalue %dx.types.ResRet.f32 %2610, 3
  %2615 = and i32 %2604, 255
  %2616 = uitofp i32 %2615 to float
  %2617 = lshr i32 %2604, 8
  %2618 = and i32 %2617, 255
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2614, %2616
  %2621 = fadd fast float %2620, %2619
  %2622 = fmul fast float %2621, 0x3F70101000000000
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 512
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2635, label %2627

; <label>:2627                                    ; preds = %2602
  %2628 = add i32 %33, 548
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %75, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  br label %2635

; <label>:2635                                    ; preds = %2627, %2602
  %2636 = phi float [ %2634, %2627 ], [ 1.000000e+00, %2602 ]
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 33554432
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2747, label %2641

; <label>:2641                                    ; preds = %2635
  %2642 = add i32 %33, 272
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 65535
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = lshr i32 %2644, 16
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = add i32 %33, 276
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 24
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = and i32 %2655, 255
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2660, 0x3F70101020000000
  %2662 = lshr i32 %2655, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2655, 16
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = add i32 %33, 268
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 24
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = and i32 %2672, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2672, 8
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = lshr i32 %2672, 16
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = bitcast float %2611 to i32
  %2688 = ashr i32 %2687, 1
  %2689 = sub nsw i32 1597463174, %2688
  %2690 = bitcast i32 %2689 to float
  %2691 = fmul fast float %2611, 5.000000e-01
  %2692 = fmul fast float %2690, %2690
  %2693 = fmul fast float %2692, %2691
  %2694 = fsub fast float 1.500000e+00, %2693
  %2695 = fmul fast float %2690, %2611
  %2696 = fmul fast float %2695, %2694
  %2697 = bitcast float %2612 to i32
  %2698 = ashr i32 %2697, 1
  %2699 = sub nsw i32 1597463174, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2612, 5.000000e-01
  %2702 = fmul fast float %2700, %2700
  %2703 = fmul fast float %2702, %2701
  %2704 = fsub fast float 1.500000e+00, %2703
  %2705 = fmul fast float %2700, %2612
  %2706 = fmul fast float %2705, %2704
  %2707 = bitcast float %2613 to i32
  %2708 = ashr i32 %2707, 1
  %2709 = sub nsw i32 1597463174, %2708
  %2710 = bitcast i32 %2709 to float
  %2711 = fmul fast float %2613, 5.000000e-01
  %2712 = fmul fast float %2710, %2710
  %2713 = fmul fast float %2712, %2711
  %2714 = fsub fast float 1.500000e+00, %2713
  %2715 = fmul fast float %2710, %2613
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float %2696, %2678
  %2718 = fsub fast float %2706, %2682
  %2719 = fsub fast float %2716, %2686
  %2720 = fmul fast float %2717, %2646
  %2721 = fmul fast float %2718, %2648
  %2722 = fmul fast float %2719, %2653
  %2723 = fadd fast float %2720, %2661
  %2724 = fadd fast float %2721, %2665
  %2725 = fadd fast float %2722, %2669
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2727 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = fmul fast float %2726, %2726
  %2730 = fmul fast float %2727, %2727
  %2731 = fmul fast float %2728, %2728
  %2732 = fsub fast float %2729, %2611
  %2733 = fsub fast float %2730, %2612
  %2734 = fsub fast float %2731, %2613
  %2735 = fmul fast float %2732, %2636
  %2736 = fmul fast float %2733, %2636
  %2737 = fmul fast float %2734, %2636
  %2738 = fadd fast float %2735, %2611
  %2739 = fadd fast float %2736, %2612
  %2740 = fadd fast float %2737, %2613
  %2741 = fadd fast float %2658, %2622
  %2742 = fsub fast float %2741, %2675
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fsub fast float %2743, %2622
  %2745 = fmul fast float %2744, %2636
  %2746 = fadd fast float %2745, %2622
  br label %2800

; <label>:2747                                    ; preds = %2635
  %2748 = and i32 %2638, 134217728
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2784, label %2750

; <label>:2750                                    ; preds = %2747
  %2751 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2636
  %2758 = fmul fast float %2755, %2636
  %2759 = fmul fast float %2756, %2636
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2612)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2766 = fmul fast float %2760, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2763
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2763
  %2771 = fmul fast float %2761, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2764
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2764
  %2776 = fmul fast float %2762, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2765
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2765
  %2781 = fmul fast float %2770, %2770
  %2782 = fmul fast float %2775, %2775
  %2783 = fmul fast float %2780, %2780
  br label %2800

; <label>:2784                                    ; preds = %2747
  %2785 = fmul fast float %370, %370
  %2786 = fmul fast float %374, %374
  %2787 = fmul fast float %378, %378
  %2788 = fadd fast float %2785, -1.000000e+00
  %2789 = fadd fast float %2786, -1.000000e+00
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fmul fast float %2636, %2788
  %2792 = fmul fast float %2636, %2789
  %2793 = fmul fast float %2636, %2790
  %2794 = fadd fast float %2791, 1.000000e+00
  %2795 = fadd fast float %2792, 1.000000e+00
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fmul fast float %2794, %2611
  %2798 = fmul fast float %2795, %2612
  %2799 = fmul fast float %2796, %2613
  br label %2800

; <label>:2800                                    ; preds = %2784, %2750, %2641, %2597
  %2801 = phi float [ %2746, %2641 ], [ %2622, %2750 ], [ %2622, %2784 ], [ 0x3FA23C0BE0000000, %2597 ]
  %2802 = phi float [ %2738, %2641 ], [ %2781, %2750 ], [ %2797, %2784 ], [ 1.000000e+00, %2597 ]
  %2803 = phi float [ %2739, %2641 ], [ %2782, %2750 ], [ %2798, %2784 ], [ 1.000000e+00, %2597 ]
  %2804 = phi float [ %2740, %2641 ], [ %2783, %2750 ], [ %2799, %2784 ], [ 1.000000e+00, %2597 ]
  %2805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.i32 %2805, 1
  %2807 = and i32 %2806, 1
  %2808 = icmp ne i32 %2807, 0
  %2809 = add i32 %33, 356
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 32
  %2813 = icmp ne i32 %2812, 0
  %2814 = and i1 %2808, %2813
  %2815 = select i1 %2814, float 1.000000e+00, float %2802
  %2816 = select i1 %2814, float 0x3FD3333340000000, float %2803
  %2817 = select i1 %2814, float 0x3FD3333340000000, float %2804
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2894, label %2822

; <label>:2822                                    ; preds = %2800
  %2823 = add i32 %33, 140
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = add i32 %33, 484
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %2828, 0
  %2830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2830, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = and i32 %2825, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = lshr i32 %2825, 8
  %2839 = and i32 %2838, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = lshr i32 %2825, 16
  %2842 = and i32 %2841, 255
  %2843 = uitofp i32 %2842 to float
  %2844 = fmul fast float %2843, 0x3F70101000000000
  %2845 = fmul fast float %2832, %2837
  %2846 = fadd fast float %2845, %2840
  %2847 = fmul fast float %2846, 0x3F70101000000000
  %2848 = fadd fast float %2833, -5.000000e-01
  %2849 = fadd fast float %2835, -5.000000e-01
  %2850 = fmul fast float %2848, %2844
  %2851 = fmul fast float %2849, %2844
  %2852 = fadd fast float %2850, 5.000000e-01
  %2853 = fadd fast float %2851, 5.000000e-01
  %2854 = fmul fast float %2852, 2.000000e+00
  %2855 = fadd fast float %2854, -1.000000e+00
  %2856 = fmul fast float %2853, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fadd fast float %2855, %2857
  %2859 = fmul fast float %2858, 5.000000e-01
  %2860 = fsub fast float %2855, %2857
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float %2863, %2864
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2861, float %2865, float %2859, float %2861, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2859, %2867
  %2869 = fmul fast float %2861, %2867
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 67108864
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2890, label %2874

; <label>:2874                                    ; preds = %2822
  %2875 = add i32 %33, 328
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = lshr i32 %2877, 16
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fsub fast float %2847, %2885
  %2887 = fmul fast float %2886, %2879
  %2888 = fadd fast float %2887, %2883
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2890

; <label>:2890                                    ; preds = %2874, %2822
  %2891 = phi float [ %2889, %2874 ], [ %2847, %2822 ]
  %2892 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2426, float %2427)  ; Dot2(ax,ay,bx,by)
  %2893 = call float @dx.op.dot2.f32(i32 54, float %2868, float %2869, float %2428, float %2429)  ; Dot2(ax,ay,bx,by)
  br label %2894

; <label>:2894                                    ; preds = %2890, %2800
  %2895 = phi float [ %2891, %2890 ], [ 0x3FD6666660000000, %2800 ]
  %2896 = phi float [ %2892, %2890 ], [ 0.000000e+00, %2800 ]
  %2897 = phi float [ %2893, %2890 ], [ 0.000000e+00, %2800 ]
  %2898 = phi float [ %2834, %2890 ], [ 1.000000e+00, %2800 ]
  %2899 = add i32 %33, 208
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 22
  %2903 = shl nuw nsw i32 %2902, 5
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 64
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2942, label %2909

; <label>:2909                                    ; preds = %2894
  %2910 = add i32 %33, 500
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 131072
  %2918 = icmp eq i32 %2917, 0
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %74, float %2522, float %2523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = fmul fast float %2920, %358
  %2924 = fmul fast float %2921, %361
  %2925 = fmul fast float %2922, %364
  br i1 %2918, label %2932, label %2926

; <label>:2926                                    ; preds = %2909
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = fmul fast float %2928, %2923
  %2930 = fmul fast float %2928, %2924
  %2931 = fmul fast float %2928, %2925
  br label %2932

; <label>:2932                                    ; preds = %2926, %2909
  %2933 = phi float [ %2929, %2926 ], [ %2923, %2909 ]
  %2934 = phi float [ %2930, %2926 ], [ %2924, %2909 ]
  %2935 = phi float [ %2931, %2926 ], [ %2925, %2909 ]
  %2936 = fmul fast float %2933, %2904
  %2937 = select i1 %215, float %2936, float %2933
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2937, float %2934, float %2935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = select i1 %215, float 0.000000e+00, float %2933
  %2940 = select i1 %215, float %2938, float %2934
  %2941 = select i1 %215, float 0.000000e+00, float %2935
  br label %2942

; <label>:2942                                    ; preds = %2932, %2894
  %2943 = phi float [ %2939, %2932 ], [ 0.000000e+00, %2894 ]
  %2944 = phi float [ %2940, %2932 ], [ 0.000000e+00, %2894 ]
  %2945 = phi float [ %2941, %2932 ], [ 0.000000e+00, %2894 ]
  %2946 = add i32 %33, 144
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = lshr i32 %2948, 8
  %2952 = and i32 %2951, 255
  %2953 = uitofp i32 %2952 to float
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = fmul fast float %2953, %2954
  %2956 = fadd fast float %2955, %2950
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  br i1 %2414, label %2959, label %2967

; <label>:2959                                    ; preds = %2942
  %2960 = fsub fast float 1.000000e+00, %2595
  %2961 = fmul fast float %2960, %2403
  %2962 = fmul fast float %2960, %2404
  %2963 = fmul fast float %2960, %2405
  %2964 = fmul fast float %2960, %2406
  %2965 = fmul fast float %2960, %2407
  %2966 = fmul fast float %2960, %2408
  br label %2967

; <label>:2967                                    ; preds = %2959, %2942
  %2968 = phi float [ %2961, %2959 ], [ %2403, %2942 ]
  %2969 = phi float [ %2962, %2959 ], [ %2404, %2942 ]
  %2970 = phi float [ %2963, %2959 ], [ %2405, %2942 ]
  %2971 = phi float [ %2964, %2959 ], [ %2406, %2942 ]
  %2972 = phi float [ %2965, %2959 ], [ %2407, %2942 ]
  %2973 = phi float [ %2966, %2959 ], [ %2408, %2942 ]
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 3
  %2977 = icmp eq i32 %2976, 3
  br i1 %2977, label %3056, label %2978

; <label>:2978                                    ; preds = %2967
  %2979 = and i32 %2975, 16
  %2980 = icmp ne i32 %2979, 0
  %2981 = select i1 %2980, float %2595, float 0.000000e+00
  %2982 = icmp eq i32 %2976, 0
  br i1 %2982, label %2983, label %3011

; <label>:2983                                    ; preds = %2978
  %2984 = and i32 %2975, 64
  %2985 = icmp ne i32 %2984, 0
  %2986 = select i1 %2985, float %2595, float 0.000000e+00
  %2987 = fsub fast float %2815, %2968
  %2988 = fsub fast float %2816, %2969
  %2989 = fsub fast float %2817, %2970
  %2990 = fmul fast float %2981, %2987
  %2991 = fmul fast float %2981, %2988
  %2992 = fmul fast float %2981, %2989
  %2993 = fadd fast float %2990, %2968
  %2994 = fadd fast float %2991, %2969
  %2995 = fadd fast float %2992, %2970
  %2996 = fsub fast float %2801, %2409
  %2997 = fmul fast float %2981, %2996
  %2998 = fadd fast float %2997, %2409
  %2999 = fsub fast float %2943, %2971
  %3000 = fsub fast float %2944, %2972
  %3001 = fsub fast float %2945, %2973
  %3002 = fmul fast float %2986, %2999
  %3003 = fmul fast float %2986, %3000
  %3004 = fmul fast float %2986, %3001
  %3005 = fadd fast float %3002, %2971
  %3006 = fadd fast float %3003, %2972
  %3007 = fadd fast float %3004, %2973
  %3008 = fsub fast float %2958, %2412
  %3009 = fmul fast float %2981, %3008
  %3010 = fadd fast float %3009, %2412
  br label %3056

; <label>:3011                                    ; preds = %2978
  %3012 = icmp eq i32 %2976, 1
  br i1 %3012, label %3013, label %3026

; <label>:3013                                    ; preds = %3011
  %3014 = fadd fast float %2815, -1.000000e+00
  %3015 = fadd fast float %2816, -1.000000e+00
  %3016 = fadd fast float %2817, -1.000000e+00
  %3017 = fmul fast float %2981, %3014
  %3018 = fmul fast float %2981, %3015
  %3019 = fmul fast float %2981, %3016
  %3020 = fadd fast float %3017, 1.000000e+00
  %3021 = fadd fast float %3018, 1.000000e+00
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fmul fast float %3020, %2968
  %3024 = fmul fast float %3021, %2969
  %3025 = fmul fast float %3022, %2970
  br label %3056

; <label>:3026                                    ; preds = %3011
  %3027 = icmp eq i32 %2976, 2
  br i1 %3027, label %3028, label %3056

; <label>:3028                                    ; preds = %3026
  %3029 = call float @dx.op.unary.f32(i32 24, float %2815)  ; Sqrt(value)
  %3030 = call float @dx.op.unary.f32(i32 24, float %2816)  ; Sqrt(value)
  %3031 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %3032 = fadd fast float %3029, -5.000000e-01
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fmul fast float %3032, %2981
  %3036 = fmul fast float %3033, %2981
  %3037 = fmul fast float %3034, %2981
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fmul fast float %3038, 2.000000e+00
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = fmul fast float %3042, %2968
  %3044 = fadd fast float %3043, %3041
  %3045 = fmul fast float %3044, %2968
  %3046 = fmul fast float %3039, 2.000000e+00
  %3047 = fsub fast float 1.000000e+00, %3046
  %3048 = fmul fast float %3047, %2969
  %3049 = fadd fast float %3048, %3046
  %3050 = fmul fast float %3049, %2969
  %3051 = fmul fast float %3040, 2.000000e+00
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fmul fast float %3052, %2970
  %3054 = fadd fast float %3053, %3051
  %3055 = fmul fast float %3054, %2970
  br label %3056

; <label>:3056                                    ; preds = %3028, %3026, %3013, %2983, %2967
  %3057 = phi float [ %2968, %2967 ], [ %3045, %3028 ], [ %2968, %3026 ], [ %3023, %3013 ], [ %2993, %2983 ]
  %3058 = phi float [ %2969, %2967 ], [ %3050, %3028 ], [ %2969, %3026 ], [ %3024, %3013 ], [ %2994, %2983 ]
  %3059 = phi float [ %2970, %2967 ], [ %3055, %3028 ], [ %2970, %3026 ], [ %3025, %3013 ], [ %2995, %2983 ]
  %3060 = phi float [ %2971, %2967 ], [ %2971, %3028 ], [ %2971, %3026 ], [ %2971, %3013 ], [ %3005, %2983 ]
  %3061 = phi float [ %2972, %2967 ], [ %2972, %3028 ], [ %2972, %3026 ], [ %2972, %3013 ], [ %3006, %2983 ]
  %3062 = phi float [ %2973, %2967 ], [ %2973, %3028 ], [ %2973, %3026 ], [ %2973, %3013 ], [ %3007, %2983 ]
  %3063 = phi float [ %2409, %2967 ], [ %2409, %3028 ], [ %2409, %3026 ], [ %2409, %3013 ], [ %2998, %2983 ]
  %3064 = phi float [ %2412, %2967 ], [ %2412, %3028 ], [ %2412, %3026 ], [ %2412, %3013 ], [ %3010, %2983 ]
  %3065 = and i32 %2975, 12
  %3066 = icmp eq i32 %3065, 12
  br i1 %3066, label %3139, label %3067

; <label>:3067                                    ; preds = %3056
  %3068 = and i32 %2975, 2097184
  %3069 = icmp eq i32 %3068, 2097184
  %3070 = select i1 %3069, float %2595, float 0.000000e+00
  %3071 = and i32 %2975, 4194336
  %3072 = icmp eq i32 %3071, 4194336
  %3073 = select i1 %3072, float %2595, float 0.000000e+00
  %3074 = and i32 %2975, 8388640
  %3075 = icmp eq i32 %3074, 8388640
  %3076 = select i1 %3075, float %2595, float 0.000000e+00
  %3077 = icmp eq i32 %3065, 0
  br i1 %3077, label %3078, label %3091

; <label>:3078                                    ; preds = %3067
  %3079 = fsub fast float %2896, %2401
  %3080 = fsub fast float %2897, %2402
  %3081 = fmul fast float %3070, %3079
  %3082 = fmul fast float %3070, %3080
  %3083 = fadd fast float %3081, %2401
  %3084 = fadd fast float %3082, %2402
  %3085 = fsub fast float %2898, %2411
  %3086 = fmul fast float %3073, %3085
  %3087 = fadd fast float %3086, %2411
  %3088 = fsub fast float %2895, %2410
  %3089 = fmul fast float %3076, %3088
  %3090 = fadd fast float %3089, %2410
  br label %3139

; <label>:3091                                    ; preds = %3067
  %3092 = icmp eq i32 %3065, 4
  br i1 %3092, label %3093, label %3125

; <label>:3093                                    ; preds = %3091
  %3094 = fmul fast float %3070, %2896
  %3095 = fmul fast float %3070, %2897
  %3096 = fadd fast float %3094, %2401
  %3097 = fadd fast float %3095, %2402
  %3098 = call float @dx.op.binary.f32(i32 36, float %2411, float %2898)  ; FMin(a,b)
  %3099 = fsub fast float %3098, %2411
  %3100 = fmul fast float %3099, %3073
  %3101 = fadd fast float %3100, %2411
  %3102 = fadd fast float %2895, %2410
  %3103 = fmul fast float %3102, 0x3FF337FAE0000000
  %3104 = fmul fast float %2410, %2410
  %3105 = fmul fast float %2895, %2895
  %3106 = fadd fast float %3105, %3104
  %3107 = fmul fast float %3106, 0x3FE5152B00000000
  %3108 = fmul fast float %2410, 0xBFCC1F85E0000000
  %3109 = fmul fast float %3108, %2895
  %3110 = fadd fast float %3109, 0xBFE1363700000000
  %3111 = fadd fast float %3110, %3103
  %3112 = fsub fast float %3111, %3107
  %3113 = fmul fast float %3102, 0x3FBA6F0D00000000
  %3114 = fmul fast float %3106, 0x3FD0432880000000
  %3115 = fmul fast float %2410, 0xBFEF110800000000
  %3116 = fmul fast float %3115, %2895
  %3117 = fadd fast float %3116, 1.000000e+00
  %3118 = fsub fast float %3117, %3113
  %3119 = fadd fast float %3118, %3114
  %3120 = fdiv fast float %3112, %3119
  %3121 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3122 = fsub fast float %3121, %2410
  %3123 = fmul fast float %3122, %3076
  %3124 = fadd fast float %3123, %2410
  br label %3139

; <label>:3125                                    ; preds = %3091
  %3126 = icmp eq i32 %3065, 8
  br i1 %3126, label %3127, label %3139

; <label>:3127                                    ; preds = %3125
  %3128 = fmul fast float %3070, %2896
  %3129 = fmul fast float %3070, %2897
  %3130 = fadd fast float %3128, %2401
  %3131 = fadd fast float %3129, %2402
  %3132 = call float @dx.op.binary.f32(i32 36, float %2411, float %2898)  ; FMin(a,b)
  %3133 = fsub fast float %3132, %2411
  %3134 = fmul fast float %3133, %3073
  %3135 = fadd fast float %3134, %2411
  %3136 = fsub fast float %2895, %2410
  %3137 = fmul fast float %3076, %3136
  %3138 = fadd fast float %3137, %2410
  br label %3139

; <label>:3139                                    ; preds = %3127, %3125, %3093, %3078, %3056, %2594, %2413, %2400
  %3140 = phi float [ %2401, %3056 ], [ %2401, %2594 ], [ %2401, %2400 ], [ %2401, %2413 ], [ %3083, %3078 ], [ %3096, %3093 ], [ %2401, %3125 ], [ %3130, %3127 ]
  %3141 = phi float [ %2402, %3056 ], [ %2402, %2594 ], [ %2402, %2400 ], [ %2402, %2413 ], [ %3084, %3078 ], [ %3097, %3093 ], [ %2402, %3125 ], [ %3131, %3127 ]
  %3142 = phi float [ %3057, %3056 ], [ %2403, %2594 ], [ %2403, %2400 ], [ %2403, %2413 ], [ %3057, %3078 ], [ %3057, %3093 ], [ %3057, %3125 ], [ %3057, %3127 ]
  %3143 = phi float [ %3058, %3056 ], [ %2404, %2594 ], [ %2404, %2400 ], [ %2404, %2413 ], [ %3058, %3078 ], [ %3058, %3093 ], [ %3058, %3125 ], [ %3058, %3127 ]
  %3144 = phi float [ %3059, %3056 ], [ %2405, %2594 ], [ %2405, %2400 ], [ %2405, %2413 ], [ %3059, %3078 ], [ %3059, %3093 ], [ %3059, %3125 ], [ %3059, %3127 ]
  %3145 = phi float [ %3060, %3056 ], [ %2406, %2594 ], [ %2406, %2400 ], [ %2406, %2413 ], [ %3060, %3078 ], [ %3060, %3093 ], [ %3060, %3125 ], [ %3060, %3127 ]
  %3146 = phi float [ %3061, %3056 ], [ %2407, %2594 ], [ %2407, %2400 ], [ %2407, %2413 ], [ %3061, %3078 ], [ %3061, %3093 ], [ %3061, %3125 ], [ %3061, %3127 ]
  %3147 = phi float [ %3062, %3056 ], [ %2408, %2594 ], [ %2408, %2400 ], [ %2408, %2413 ], [ %3062, %3078 ], [ %3062, %3093 ], [ %3062, %3125 ], [ %3062, %3127 ]
  %3148 = phi float [ %3063, %3056 ], [ %2409, %2594 ], [ %2409, %2400 ], [ %2409, %2413 ], [ %3063, %3078 ], [ %3063, %3093 ], [ %3063, %3125 ], [ %3063, %3127 ]
  %3149 = phi float [ %2410, %3056 ], [ %2410, %2594 ], [ %2410, %2400 ], [ %2410, %2413 ], [ %3090, %3078 ], [ %3124, %3093 ], [ %2410, %3125 ], [ %3138, %3127 ]
  %3150 = phi float [ %2411, %3056 ], [ %2411, %2594 ], [ %2411, %2400 ], [ %2411, %2413 ], [ %3087, %3078 ], [ %3101, %3093 ], [ %2411, %3125 ], [ %3135, %3127 ]
  %3151 = phi float [ %3064, %3056 ], [ %2412, %2594 ], [ %2412, %2400 ], [ %2412, %2413 ], [ %3064, %3078 ], [ %3064, %3093 ], [ %3064, %3125 ], [ %3064, %3127 ]
  %3152 = add i32 %33, 440
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = bitcast i32 %3154 to float
  %3156 = fcmp fast oge float %3155, 0.000000e+00
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = select i1 %3156, float %3155, float %3158
  %3160 = fadd fast float %3159, %178
  %3161 = and i32 %171, 65535
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = lshr i32 %171, 16
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = and i32 %172, 65535
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = fmul fast float %3162, %3142
  %3168 = fmul fast float %3164, %3143
  %3169 = fmul fast float %3166, %3144
  %3170 = shl i32 %173, 4
  %3171 = and i32 %3170, 32752
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = lshr i32 %173, 7
  %3174 = and i32 %3173, 32752
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %173, 22
  %3177 = shl nuw nsw i32 %3176, 5
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = and i32 %174, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = fmul fast float %3172, %3145
  %3182 = fmul fast float %3181, %3180
  %3183 = fmul fast float %3175, %3146
  %3184 = fmul fast float %3183, %3180
  %3185 = fmul fast float %3178, %3147
  %3186 = fmul fast float %3185, %3180
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3140, float %3141, float %3140, float %3141)  ; Dot2(ax,ay,bx,by)
  %3188 = fmul fast float %3187, 0x3FE3333340000000
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3140, float %3141, float %3189, float %3140, float %3141, float %3189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3191, %3140
  %3193 = fmul fast float %3191, %3141
  %3194 = fmul fast float %3189, %3191
  %3195 = fmul fast float %3194, %85
  %3196 = fmul fast float %3194, %86
  %3197 = fmul fast float %3194, %87
  %3198 = fmul fast float %3192, %59
  %3199 = fmul fast float %3192, %60
  %3200 = fmul fast float %3192, %61
  %3201 = fadd fast float %3195, %3198
  %3202 = fadd fast float %3196, %3199
  %3203 = fadd fast float %3197, %3200
  %3204 = fmul fast float %97, %3193
  %3205 = fmul fast float %98, %3193
  %3206 = fmul fast float %99, %3193
  %3207 = fadd fast float %3201, %3204
  %3208 = fadd fast float %3202, %3205
  %3209 = fadd fast float %3203, %3206
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3208, float %3209, float %3207, float %3208, float %3209)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = call float @dx.op.unary.f32(i32 25, float %3210)  ; Rsqrt(value)
  %3212 = fmul fast float %3207, %3211
  %3213 = fmul fast float %3208, %3211
  %3214 = fmul fast float %3209, %3211
  %3215 = icmp eq i32 %35, 65535
  br i1 %3215, label %3730, label %3216

; <label>:3216                                    ; preds = %3139
  %3217 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3218 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3219 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3220 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3221 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3222 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3223 = fadd fast float %3217, %36
  %3224 = fadd fast float %3218, %37
  %3225 = fadd fast float %3219, %38
  %3226 = fadd fast float %3220, %36
  %3227 = fadd fast float %3221, %37
  %3228 = fadd fast float %3222, %38
  %3229 = mul i32 %35, 48
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = add i32 %3229, 16
  %3235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = add i32 %3229, 32
  %3240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = extractvalue %dx.types.ResRet.f32 %3240, 3
  %3245 = bitcast float %3244 to i32
  %3246 = fmul fast float %3231, %36
  %3247 = fmul fast float %3232, %37
  %3248 = fmul fast float %3233, %38
  %3249 = fsub fast float %3246, %3236
  %3250 = fsub fast float %3247, %3237
  %3251 = fsub fast float %3248, %3238
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = fmul fast float %3252, %3241
  %3256 = fmul fast float %3253, %3242
  %3257 = fmul fast float %3254, %3243
  %3258 = fadd fast float %3241, -1.000000e+00
  %3259 = fadd fast float %3242, -1.000000e+00
  %3260 = fadd fast float %3243, -1.000000e+00
  %3261 = call float @dx.op.unary.f32(i32 27, float %3255)  ; Round_ni(value)
  %3262 = call float @dx.op.unary.f32(i32 27, float %3256)  ; Round_ni(value)
  %3263 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3264 = call float @dx.op.binary.f32(i32 36, float %3261, float %3258)  ; FMin(a,b)
  %3265 = call float @dx.op.binary.f32(i32 36, float %3262, float %3259)  ; FMin(a,b)
  %3266 = call float @dx.op.binary.f32(i32 36, float %3263, float %3260)  ; FMin(a,b)
  %3267 = fmul fast float %3266, %3242
  %3268 = fadd fast float %3267, %3265
  %3269 = fmul fast float %3268, %3241
  %3270 = fadd fast float %3269, %3264
  %3271 = fptosi float %3270 to i32
  %3272 = add nsw i32 %3271, %3245
  %3273 = shl nsw i32 %3272, 2
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = lshr i32 %3275, 16
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3699, label %3278

; <label>:3278                                    ; preds = %3216
  br label %3279

; <label>:3279                                    ; preds = %3400, %3278
  %3280 = phi i32 [ %3302, %3400 ], [ %3276, %3278 ]
  %3281 = phi float [ %3401, %3400 ], [ 0.000000e+00, %3278 ]
  %3282 = phi float [ %3402, %3400 ], [ %3160, %3278 ]
  %3283 = phi float [ %3403, %3400 ], [ %3151, %3278 ]
  %3284 = phi float [ %3404, %3400 ], [ 0.000000e+00, %3278 ]
  %3285 = phi float [ %3405, %3400 ], [ 0.000000e+00, %3278 ]
  %3286 = phi float [ %3406, %3400 ], [ %3182, %3278 ]
  %3287 = phi float [ %3407, %3400 ], [ %3184, %3278 ]
  %3288 = phi float [ %3408, %3400 ], [ %3186, %3278 ]
  %3289 = phi float [ %3409, %3400 ], [ %3212, %3278 ]
  %3290 = phi float [ %3410, %3400 ], [ %3213, %3278 ]
  %3291 = phi float [ %3411, %3400 ], [ %3214, %3278 ]
  %3292 = phi float [ %3412, %3400 ], [ %3150, %3278 ]
  %3293 = phi float [ %3413, %3400 ], [ %3149, %3278 ]
  %3294 = phi float [ %3414, %3400 ], [ 0.000000e+00, %3278 ]
  %3295 = phi float [ %3415, %3400 ], [ %3148, %3278 ]
  %3296 = phi float [ %3416, %3400 ], [ %3167, %3278 ]
  %3297 = phi float [ %3417, %3400 ], [ %3168, %3278 ]
  %3298 = phi float [ %3418, %3400 ], [ %3169, %3278 ]
  %3299 = shl nuw nsw i32 %3280, 2
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = lshr i32 %3301, 16
  %3303 = shl i32 %3301, 8
  %3304 = and i32 %3303, 16776960
  %3305 = or i32 %3304, 48
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = or i32 %3304, 64
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.i32 %3311, 1
  %3314 = or i32 %3304, 80
  %3315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 2
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 3
  %3318 = or i32 %3304, 96
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = extractvalue %dx.types.ResRet.f32 %3319, 3
  %3324 = or i32 %3304, 112
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3327 = or i32 %3304, 128
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = extractvalue %dx.types.ResRet.f32 %3328, 3
  %3333 = or i32 %3304, 144
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3334, 3
  %3339 = or i32 %3304, 160
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3343 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3344 = extractvalue %dx.types.ResRet.f32 %3340, 3
  %3345 = or i32 %3304, 192
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = or i32 %3304, 208
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = or i32 %3304, 248
  %3352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.f32 %3352, 0
  %3354 = extractvalue %dx.types.ResRet.f32 %3352, 1
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3360 = call float @dx.op.dot4.f32(i32 56, float %3356, float %3357, float %3358, float %3359, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3361 = or i32 %3304, 16
  %3362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.ResRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.ResRet.f32 %3362, 2
  %3366 = extractvalue %dx.types.ResRet.f32 %3362, 3
  %3367 = call float @dx.op.dot4.f32(i32 56, float %3363, float %3364, float %3365, float %3366, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3368 = or i32 %3304, 32
  %3369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = call float @dx.op.dot4.f32(i32 56, float %3370, float %3371, float %3372, float %3373, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3375 = call float @dx.op.unary.f32(i32 27, float %3360)  ; Round_ni(value)
  %3376 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3377 = call float @dx.op.unary.f32(i32 27, float %3367)  ; Round_ni(value)
  %3378 = call float @dx.op.unary.f32(i32 6, float %3377)  ; FAbs(value)
  %3379 = call float @dx.op.unary.f32(i32 6, float %3374)  ; FAbs(value)
  %3380 = call float @dx.op.unary.f32(i32 27, float %3379)  ; Round_ni(value)
  %3381 = fadd fast float %3378, %3376
  %3382 = fadd fast float %3381, %3380
  %3383 = fcmp fast oeq float %3382, 0.000000e+00
  %3384 = call float @dx.op.dot4.f32(i32 56, float %3356, float %3357, float %3358, float %3359, float %3223, float %3224, float %3225, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3385 = call float @dx.op.dot4.f32(i32 56, float %3363, float %3364, float %3365, float %3366, float %3223, float %3224, float %3225, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3386 = call float @dx.op.dot4.f32(i32 56, float %3356, float %3357, float %3358, float %3359, float %3226, float %3227, float %3228, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3387 = call float @dx.op.dot4.f32(i32 56, float %3363, float %3364, float %3365, float %3366, float %3226, float %3227, float %3228, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3388 = fsub fast float %3384, %3360
  %3389 = fsub fast float %3386, %3360
  %3390 = fsub fast float %3385, %3367
  %3391 = fsub fast float %3387, %3367
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.f32 %3393, 2
  %3395 = fadd fast float %3394, %3392
  %3396 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3393, 0
  %3398 = fcmp fast ogt float %3396, %3397
  %3399 = and i1 %3383, %3398
  br i1 %3399, label %3420, label %3400

; <label>:3400                                    ; preds = %3685, %3503, %3420, %3279
  %3401 = phi float [ %3281, %3420 ], [ %3506, %3503 ], [ %3506, %3685 ], [ %3281, %3279 ]
  %3402 = phi float [ %3282, %3420 ], [ %3282, %3503 ], [ %3660, %3685 ], [ %3282, %3279 ]
  %3403 = phi float [ %3283, %3420 ], [ %3283, %3503 ], [ %3658, %3685 ], [ %3283, %3279 ]
  %3404 = phi float [ %3284, %3420 ], [ %3284, %3503 ], [ %3630, %3685 ], [ %3284, %3279 ]
  %3405 = phi float [ %3285, %3420 ], [ %3285, %3503 ], [ %3628, %3685 ], [ %3285, %3279 ]
  %3406 = phi float [ %3286, %3420 ], [ %3286, %3503 ], [ %3695, %3685 ], [ %3286, %3279 ]
  %3407 = phi float [ %3287, %3420 ], [ %3287, %3503 ], [ %3696, %3685 ], [ %3287, %3279 ]
  %3408 = phi float [ %3288, %3420 ], [ %3288, %3503 ], [ %3697, %3685 ], [ %3288, %3279 ]
  %3409 = phi float [ %3289, %3420 ], [ %3289, %3503 ], [ %3609, %3685 ], [ %3289, %3279 ]
  %3410 = phi float [ %3290, %3420 ], [ %3290, %3503 ], [ %3610, %3685 ], [ %3290, %3279 ]
  %3411 = phi float [ %3291, %3420 ], [ %3291, %3503 ], [ %3611, %3685 ], [ %3291, %3279 ]
  %3412 = phi float [ %3292, %3420 ], [ %3292, %3503 ], [ %3638, %3685 ], [ %3292, %3279 ]
  %3413 = phi float [ %3293, %3420 ], [ %3293, %3503 ], [ %3635, %3685 ], [ %3293, %3279 ]
  %3414 = phi float [ %3294, %3420 ], [ %3294, %3503 ], [ %3632, %3685 ], [ %3294, %3279 ]
  %3415 = phi float [ %3295, %3420 ], [ %3295, %3503 ], [ %3626, %3685 ], [ %3295, %3279 ]
  %3416 = phi float [ %3296, %3420 ], [ %3296, %3503 ], [ %3621, %3685 ], [ %3296, %3279 ]
  %3417 = phi float [ %3297, %3420 ], [ %3297, %3503 ], [ %3622, %3685 ], [ %3297, %3279 ]
  %3418 = phi float [ %3298, %3420 ], [ %3298, %3503 ], [ %3623, %3685 ], [ %3298, %3279 ]
  %3419 = icmp eq i32 %3302, 0
  br i1 %3419, label %3698, label %3279

; <label>:3420                                    ; preds = %3279
  %3421 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3422 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3423 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3424 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3427 = extractvalue %dx.types.ResRet.i32 %3311, 3
  %3428 = extractvalue %dx.types.ResRet.i32 %3311, 2
  %3429 = bitcast float %3421 to i32
  %3430 = add i32 %3427, 0
  %3431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3433 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3431, %dx.types.Handle %3432, float %3360, float %3367, float undef, float undef, i32 0, i32 0, i32 undef, float %3388, float %3390, float undef, float %3389, float %3391, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = fmul fast float %3434, %3426
  %3436 = fadd fast float %3435, %3425
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fmul fast float %3360, %3320
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3367, float %3438)  ; FMad(a,b,c)
  %3440 = fadd fast float %3439, %3424
  %3441 = fmul fast float %3360, %3322
  %3442 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3367, float %3441)  ; FMad(a,b,c)
  %3443 = fadd fast float %3442, %3423
  %3444 = fmul fast float %3388, %3320
  %3445 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3390, float %3444)  ; FMad(a,b,c)
  %3446 = fmul fast float %3388, %3322
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3390, float %3446)  ; FMad(a,b,c)
  %3448 = fmul fast float %3389, %3320
  %3449 = call float @dx.op.tertiary.f32(i32 46, float %3321, float %3391, float %3448)  ; FMad(a,b,c)
  %3450 = fmul fast float %3389, %3322
  %3451 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3391, float %3450)  ; FMad(a,b,c)
  %3452 = add i32 %3428, 0
  %3453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3453, %dx.types.Handle %3432, float %3440, float %3443, float undef, float undef, i32 0, i32 0, i32 undef, float %3445, float %3447, float undef, float %3449, float %3451, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = and i32 %3429, 1024
  %3457 = icmp ne i32 %3456, 0
  %3458 = fcmp fast ogt float %3455, 0x3FE0101020000000
  %3459 = uitofp i1 %3458 to float
  %3460 = select i1 %3457, float %3459, float %3455
  %3461 = and i32 %3429, 8192
  %3462 = icmp ne i32 %3461, 0
  %3463 = select i1 %3462, float %3422, float 1.000000e+00
  %3464 = fmul fast float %3360, 2.000000e+00
  %3465 = fadd fast float %3464, -1.000000e+00
  %3466 = call float @dx.op.unary.f32(i32 6, float %3465)  ; FAbs(value)
  %3467 = fmul fast float %3466, %3353
  %3468 = fsub fast float %3467, %3353
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3367, 2.000000e+00
  %3471 = fadd fast float %3470, -1.000000e+00
  %3472 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3473 = fmul fast float %3472, %3354
  %3474 = fsub fast float %3473, %3354
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = fmul fast float %3379, %3316
  %3477 = fsub fast float %3476, %3316
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = fmul fast float %3437, %3463
  %3480 = fmul fast float %3479, %3434
  %3481 = fmul fast float %3480, %3469
  %3482 = fmul fast float %3481, %3460
  %3483 = fmul fast float %3482, %3475
  %3484 = fmul fast float %3483, %3478
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 1
  %3487 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3488 = fsub fast float %3396, %3487
  %3489 = fmul fast float %3488, %3486
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = fmul fast float %3484, %3317
  %3492 = fadd fast float %3484, %3317
  %3493 = fmul fast float %3492, %3326
  %3494 = fsub fast float %3493, %3326
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = and i32 %3429, 128
  %3497 = icmp ne i32 %3496, 0
  %3498 = select i1 %3497, float %3495, float %3491
  %3499 = fmul fast float %3498, %3490
  %3500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3500, 0
  %3502 = fcmp fast ugt float %3499, %3501
  br i1 %3502, label %3503, label %3400

; <label>:3503                                    ; preds = %3420
  %3504 = select i1 %3462, float %3499, float 0.000000e+00
  %3505 = fadd fast float %3504, %3281
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  br i1 %3462, label %3400, label %3507

; <label>:3507                                    ; preds = %3503
  %3508 = and i32 %3429, 4
  %3509 = and i32 %3429, 8
  %3510 = add i32 %3312, 0
  %3511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3510, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3511, %dx.types.Handle %3512, float %3440, float %3443, float undef, float undef, i32 0, i32 0, i32 undef, float %3445, float %3447, float undef, float %3449, float %3451, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = bitcast float %3338 to i32
  %3519 = and i32 %3518, 255
  %3520 = uitofp i32 %3519 to float
  %3521 = lshr i32 %3518, 8
  %3522 = and i32 %3521, 255
  %3523 = uitofp i32 %3522 to float
  %3524 = fmul fast float %3517, %3520
  %3525 = fadd fast float %3524, %3523
  %3526 = fmul fast float %3525, 0x3F70101000000000
  %3527 = add i32 %3313, 0
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3527, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3528, %dx.types.Handle %3512, float %3440, float %3443, float undef, float undef, i32 0, i32 0, i32 undef, float %3445, float %3447, float undef, float %3449, float %3451, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = bitcast float %3332 to i32
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = lshr i32 %3534, 8
  %3538 = and i32 %3537, 255
  %3539 = uitofp i32 %3538 to float
  %3540 = lshr i32 %3534, 16
  %3541 = and i32 %3540, 255
  %3542 = uitofp i32 %3541 to float
  %3543 = fmul fast float %3542, 0x3F70101000000000
  %3544 = fmul fast float %3530, %3536
  %3545 = fadd fast float %3544, %3539
  %3546 = fmul fast float %3545, 0x3F70101000000000
  %3547 = fadd fast float %3531, -5.000000e-01
  %3548 = fadd fast float %3533, -5.000000e-01
  %3549 = fmul fast float %3547, %3543
  %3550 = fmul fast float %3548, %3543
  %3551 = fadd fast float %3549, 5.000000e-01
  %3552 = fadd fast float %3550, 5.000000e-01
  %3553 = fmul fast float %3514, %3341
  %3554 = fmul fast float %3515, %3342
  %3555 = fmul fast float %3516, %3343
  %3556 = fmul fast float %3551, 2.000000e+00
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = fmul fast float %3552, 2.000000e+00
  %3559 = fadd fast float %3558, -1.000000e+00
  %3560 = fadd fast float %3557, %3559
  %3561 = fmul fast float %3560, 5.000000e-01
  %3562 = fsub fast float %3557, %3559
  %3563 = fmul fast float %3562, 5.000000e-01
  %3564 = call float @dx.op.unary.f32(i32 6, float %3561)  ; FAbs(value)
  %3565 = fsub fast float 1.000000e+00, %3564
  %3566 = call float @dx.op.unary.f32(i32 6, float %3563)  ; FAbs(value)
  %3567 = fsub fast float %3565, %3566
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3561, float %3563, float %3567, float %3561, float %3563, float %3567)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = call float @dx.op.unary.f32(i32 25, float %3568)  ; Rsqrt(value)
  %3570 = fmul fast float %3561, %3569
  %3571 = fmul fast float %3563, %3569
  %3572 = fmul fast float %3569, %3567
  %3573 = fmul fast float %3572, %3307
  %3574 = fmul fast float %3572, %3308
  %3575 = fmul fast float %3572, %3309
  %3576 = fmul fast float %3570, %3329
  %3577 = fmul fast float %3570, %3330
  %3578 = fmul fast float %3570, %3331
  %3579 = fadd fast float %3576, %3573
  %3580 = fadd fast float %3577, %3574
  %3581 = fadd fast float %3578, %3575
  %3582 = fmul fast float %3571, %3335
  %3583 = fmul fast float %3571, %3336
  %3584 = fmul fast float %3571, %3337
  %3585 = fadd fast float %3579, %3582
  %3586 = fadd fast float %3580, %3583
  %3587 = fadd fast float %3581, %3584
  %3588 = call float @dx.op.dot3.f32(i32 55, float %3585, float %3586, float %3587, float %3585, float %3586, float %3587)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = call float @dx.op.unary.f32(i32 25, float %3588)  ; Rsqrt(value)
  %3590 = fmul fast float %3585, %3589
  %3591 = fmul fast float %3586, %3589
  %3592 = fmul fast float %3587, %3589
  %3593 = icmp ne i32 %3509, 0
  %3594 = select i1 %3593, float 1.000000e+00, float 0.000000e+00
  %3595 = fmul fast float %3499, %3594
  %3596 = and i32 %3429, 1
  %3597 = icmp eq i32 %3596, 0
  br i1 %3597, label %3598, label %3602

; <label>:3598                                    ; preds = %3507
  %3599 = fsub fast float %3590, %3289
  %3600 = fsub fast float %3591, %3290
  %3601 = fsub fast float %3592, %3291
  br label %3602

; <label>:3602                                    ; preds = %3598, %3507
  %3603 = phi float [ %3599, %3598 ], [ %3590, %3507 ]
  %3604 = phi float [ %3600, %3598 ], [ %3591, %3507 ]
  %3605 = phi float [ %3601, %3598 ], [ %3592, %3507 ]
  %3606 = fmul float %3605, %3595
  %3607 = fmul float %3604, %3595
  %3608 = fmul float %3603, %3595
  %3609 = fadd fast float %3608, %3289
  %3610 = fadd fast float %3607, %3290
  %3611 = fadd fast float %3606, %3291
  %3612 = icmp ne i32 %3508, 0
  %3613 = select i1 %3612, float 1.000000e+00, float 0.000000e+00
  %3614 = fmul fast float %3499, %3613
  %3615 = fsub fast float %3553, %3296
  %3616 = fsub fast float %3554, %3297
  %3617 = fsub fast float %3555, %3298
  %3618 = fmul fast float %3615, %3614
  %3619 = fmul fast float %3616, %3614
  %3620 = fmul fast float %3617, %3614
  %3621 = fadd fast float %3618, %3296
  %3622 = fadd fast float %3619, %3297
  %3623 = fadd fast float %3620, %3298
  %3624 = fsub fast float %3526, %3295
  %3625 = fmul fast float %3624, %3614
  %3626 = fadd fast float %3625, %3295
  %3627 = fmul fast float %3614, %3285
  %3628 = fsub fast float %3285, %3627
  %3629 = fmul fast float %3614, %3284
  %3630 = fsub fast float %3284, %3629
  %3631 = fadd fast float %3499, %3294
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fsub fast float %3546, %3293
  %3634 = fmul fast float %3633, %3595
  %3635 = fadd fast float %3634, %3293
  %3636 = fsub fast float %3532, %3292
  %3637 = fmul fast float %3636, %3595
  %3638 = fadd fast float %3637, %3292
  %3639 = call float @dx.op.dot3.f32(i32 55, float %3553, float %3554, float %3555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.CBufRet.f32 %3640, 1
  %3643 = fmul fast float %3642, %3639
  %3644 = fadd fast float %3643, %3641
  %3645 = call float @dx.op.unary.f32(i32 7, float %3644)  ; Saturate(value)
  %3646 = bitcast float %3344 to i32
  %3647 = and i32 %3646, 65535
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = lshr i32 %3646, 16
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = fcmp fast oge float %3648, 0.000000e+00
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = select i1 %3651, float %3648, float %3653
  %3655 = fadd fast float %3654, %3650
  %3656 = fsub fast float %3645, %3283
  %3657 = fmul fast float %3656, %3499
  %3658 = fadd fast float %3657, %3283
  %3659 = fmul fast float %3655, %3499
  %3660 = call float @dx.op.binary.f32(i32 35, float %3282, float %3659)  ; FMax(a,b)
  %3661 = and i32 %3429, 16
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3685, label %3663

; <label>:3663                                    ; preds = %3602
  %3664 = bitcast float %3350 to i32
  %3665 = add i32 %3347, 0
  %3666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3667 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3666, %dx.types.Handle %3512, float %3440, float %3443, float undef, float undef, i32 0, i32 0, i32 undef, float %3445, float %3447, float undef, float %3449, float %3451, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = and i32 %3664, 65535
  %3672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3671)  ; LegacyF16ToF32(value)
  %3673 = fmul fast float %3668, %3341
  %3674 = fmul fast float %3669, %3342
  %3675 = fmul fast float %3670, %3343
  %3676 = and i32 %3429, 16384
  %3677 = icmp ne i32 %3676, 0
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = select i1 %3677, float %3679, float 1.000000e+00
  %3681 = fmul fast float %3680, %3672
  %3682 = fmul fast float %3673, %3681
  %3683 = fmul fast float %3674, %3681
  %3684 = fmul fast float %3675, %3681
  br label %3685

; <label>:3685                                    ; preds = %3663, %3602
  %3686 = phi float [ %3682, %3663 ], [ 0.000000e+00, %3602 ]
  %3687 = phi float [ %3683, %3663 ], [ 0.000000e+00, %3602 ]
  %3688 = phi float [ %3684, %3663 ], [ 0.000000e+00, %3602 ]
  %3689 = fsub fast float %3686, %3286
  %3690 = fsub fast float %3687, %3287
  %3691 = fsub fast float %3688, %3288
  %3692 = fmul fast float %3689, %3499
  %3693 = fmul fast float %3690, %3499
  %3694 = fmul fast float %3691, %3499
  %3695 = fadd fast float %3692, %3286
  %3696 = fadd fast float %3693, %3287
  %3697 = fadd fast float %3694, %3288
  br label %3400

; <label>:3698                                    ; preds = %3400
  br label %3699

; <label>:3699                                    ; preds = %3698, %3216
  %3700 = phi float [ 0.000000e+00, %3216 ], [ %3401, %3698 ]
  %3701 = phi float [ %3160, %3216 ], [ %3402, %3698 ]
  %3702 = phi float [ %3151, %3216 ], [ %3403, %3698 ]
  %3703 = phi float [ 0.000000e+00, %3216 ], [ %3404, %3698 ]
  %3704 = phi float [ 0.000000e+00, %3216 ], [ %3405, %3698 ]
  %3705 = phi float [ %3182, %3216 ], [ %3406, %3698 ]
  %3706 = phi float [ %3184, %3216 ], [ %3407, %3698 ]
  %3707 = phi float [ %3186, %3216 ], [ %3408, %3698 ]
  %3708 = phi float [ %3212, %3216 ], [ %3409, %3698 ]
  %3709 = phi float [ %3213, %3216 ], [ %3410, %3698 ]
  %3710 = phi float [ %3214, %3216 ], [ %3411, %3698 ]
  %3711 = phi float [ %3150, %3216 ], [ %3412, %3698 ]
  %3712 = phi float [ %3149, %3216 ], [ %3413, %3698 ]
  %3713 = phi float [ 0.000000e+00, %3216 ], [ %3414, %3698 ]
  %3714 = phi float [ %3148, %3216 ], [ %3415, %3698 ]
  %3715 = phi float [ %3167, %3216 ], [ %3416, %3698 ]
  %3716 = phi float [ %3168, %3216 ], [ %3417, %3698 ]
  %3717 = phi float [ %3169, %3216 ], [ %3418, %3698 ]
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = call float @dx.op.unary.f32(i32 25, float %3718)  ; Rsqrt(value)
  %3720 = fmul fast float %3719, %3708
  %3721 = fmul fast float %3719, %3709
  %3722 = fmul fast float %3719, %3710
  %3723 = fadd fast float %3713, %931
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3721, float %3722, float %3720, float %3721, float %3722)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = call float @dx.op.unary.f32(i32 25, float %3725)  ; Rsqrt(value)
  %3727 = fmul fast float %3726, %3720
  %3728 = fmul fast float %3726, %3721
  %3729 = fmul fast float %3726, %3722
  br label %3730

; <label>:3730                                    ; preds = %3699, %3139
  %3731 = phi float [ %3715, %3699 ], [ %3167, %3139 ]
  %3732 = phi float [ %3716, %3699 ], [ %3168, %3139 ]
  %3733 = phi float [ %3717, %3699 ], [ %3169, %3139 ]
  %3734 = phi float [ %3727, %3699 ], [ %3212, %3139 ]
  %3735 = phi float [ %3728, %3699 ], [ %3213, %3139 ]
  %3736 = phi float [ %3729, %3699 ], [ %3214, %3139 ]
  %3737 = phi float [ %3705, %3699 ], [ %3182, %3139 ]
  %3738 = phi float [ %3706, %3699 ], [ %3184, %3139 ]
  %3739 = phi float [ %3707, %3699 ], [ %3186, %3139 ]
  %3740 = phi float [ %3714, %3699 ], [ %3148, %3139 ]
  %3741 = phi float [ %3724, %3699 ], [ %931, %3139 ]
  %3742 = phi float [ %3712, %3699 ], [ %3149, %3139 ]
  %3743 = phi float [ %3711, %3699 ], [ %3150, %3139 ]
  %3744 = phi float [ %3704, %3699 ], [ 0.000000e+00, %3139 ]
  %3745 = phi float [ %3703, %3699 ], [ 0.000000e+00, %3139 ]
  %3746 = phi float [ %3700, %3699 ], [ 0.000000e+00, %3139 ]
  %3747 = phi float [ %3701, %3699 ], [ %3160, %3139 ]
  %3748 = phi float [ %3702, %3699 ], [ %3151, %3139 ]
  %3749 = fadd fast float %3740, 0xBFB99999A0000000
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3750, 0x3FF1C71C80000000
  %3752 = call float @dx.op.binary.f32(i32 36, float %3740, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3753 = fsub fast float 1.000000e+00, %3751
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = fmul fast float %3754, %3731
  %3756 = fmul fast float %3754, %3732
  %3757 = fmul fast float %3754, %3733
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3761 = fmul fast float %3751, %3731
  %3762 = fmul fast float %3751, %3732
  %3763 = fmul fast float %3751, %3733
  %3764 = fadd fast float %3761, %3752
  %3765 = fadd fast float %3762, %3752
  %3766 = fadd fast float %3763, %3752
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3770 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.i32 %3771, 3
  %3773 = and i32 %3772, 8
  %3774 = icmp ne i32 %3773, 0
  %3775 = call float @dx.op.binary.f32(i32 35, float %3758, float %3731)  ; FMax(a,b)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3759, float %3731)  ; FMax(a,b)
  %3777 = call float @dx.op.binary.f32(i32 35, float %3760, float %3731)  ; FMax(a,b)
  %3778 = call float @dx.op.dot3.f32(i32 55, float %3758, float %3759, float %3760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3779 = select i1 %215, float %3731, float %3758
  %3780 = select i1 %215, float %3778, float %3759
  %3781 = select i1 %215, float 1.000000e+00, float %3760
  %3782 = select i1 %3774, float %3775, float %3779
  %3783 = select i1 %3774, float %3776, float %3780
  %3784 = select i1 %3774, float %3777, float %3781
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3789 = fadd fast float %3786, %165
  %3790 = fadd fast float %3787, %166
  %3791 = fadd fast float %3788, %167
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.CBufRet.f32 %3792, 1
  %3795 = fsub fast float %3789, %3793
  %3796 = fsub fast float %3790, %3794
  %3797 = fmul fast float %3795, %3795
  %3798 = fmul fast float %3796, %3796
  %3799 = fadd fast float %3797, %3798
  %3800 = call float @dx.op.unary.f32(i32 24, float %3799)  ; Sqrt(value)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3802 = fcmp fast olt float %3800, %3801
  br i1 %3802, label %3803, label %3870

; <label>:3803                                    ; preds = %3730
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3811 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3812 = extractvalue %dx.types.CBufRet.f32 %3808, 1
  %3813 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %3814 = extractvalue %dx.types.CBufRet.f32 %3806, 3
  %3815 = extractvalue %dx.types.CBufRet.f32 %3808, 3
  %3816 = fadd fast float %3813, %3789
  %3817 = fadd fast float %3814, %3790
  %3818 = fadd fast float %3815, %3791
  %3819 = fmul fast float %3816, %3805
  %3820 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3807, float %3819)  ; FMad(a,b,c)
  %3821 = call float @dx.op.tertiary.f32(i32 46, float %3818, float %3809, float %3820)  ; FMad(a,b,c)
  %3822 = fmul fast float %3816, %3810
  %3823 = call float @dx.op.tertiary.f32(i32 46, float %3817, float %3811, float %3822)  ; FMad(a,b,c)
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %3818, float %3812, float %3823)  ; FMad(a,b,c)
  %3825 = fsub fast float %3821, %3813
  %3826 = fsub fast float %3824, %3814
  %3827 = fsub fast float %3825, %3793
  %3828 = fadd fast float %3827, %3801
  %3829 = fsub fast float %3826, %3794
  %3830 = fadd fast float %3829, %3801
  %3831 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3832 = fmul fast float %3828, %3831
  %3833 = fmul fast float %3830, %3831
  %3834 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3835 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3836 = fsub fast float 1.000000e+00, %3834
  %3837 = fsub fast float 1.000000e+00, %3835
  %3838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3836, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = fcmp fast ugt float %3839, 0.000000e+00
  br i1 %3840, label %3841, label %4144

; <label>:3841                                    ; preds = %3803
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3844 = fmul fast float %3843, %3839
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3846 = fadd fast float %3845, %3844
  %3847 = extractvalue %dx.types.CBufRet.f32 %3808, 2
  %3848 = fadd fast float %3846, %3815
  %3849 = fmul fast float %3821, %3809
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3812, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3848, float %3847, float %3850)  ; FMad(a,b,c)
  %3852 = fsub fast float %3851, %3815
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 2
  %3855 = fsub fast float %3852, %3854
  %3856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3836, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3836, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = fadd fast float %3861, %3857
  %3865 = fmul fast float %3864, 0x3F847AE140000000
  %3866 = fadd fast float %3862, %3858
  %3867 = fmul fast float %3866, 0x3F847AE140000000
  %3868 = fadd fast float %3863, %3859
  %3869 = fmul fast float %3868, 0x3F847AE140000000
  br label %4144

; <label>:3870                                    ; preds = %3730
  %3871 = and i32 %194, 1
  %3872 = icmp eq i32 %3871, 0
  br i1 %3872, label %4144, label %3873

; <label>:3873                                    ; preds = %3870
  %3874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3874, 0
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3874, 1
  %3881 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3882 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3883 = extractvalue %dx.types.CBufRet.f32 %3874, 3
  %3884 = extractvalue %dx.types.CBufRet.f32 %3876, 3
  %3885 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3886 = fadd fast float %3883, %3789
  %3887 = fadd fast float %3884, %3790
  %3888 = fadd fast float %3885, %3791
  %3889 = fmul fast float %3886, %3875
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3887, float %3877, float %3889)  ; FMad(a,b,c)
  %3891 = call float @dx.op.tertiary.f32(i32 46, float %3888, float %3879, float %3890)  ; FMad(a,b,c)
  %3892 = fmul fast float %3886, %3880
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3887, float %3881, float %3892)  ; FMad(a,b,c)
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3888, float %3882, float %3893)  ; FMad(a,b,c)
  %3895 = fsub fast float %3891, %3883
  %3896 = fsub fast float %3894, %3884
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 3
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.i32 %3904, 0
  %3906 = extractvalue %dx.types.CBufRet.i32 %3904, 1
  %3907 = udiv i32 %3906, %3905
  %3908 = fsub fast float %3895, %3898
  %3909 = fsub fast float %3896, %3899
  %3910 = call float @dx.op.binary.f32(i32 35, float %3908, float 0.000000e+00)  ; FMax(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3909, float 0.000000e+00)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 36, float %3910, float %3900)  ; FMin(a,b)
  %3913 = call float @dx.op.binary.f32(i32 36, float %3911, float %3901)  ; FMin(a,b)
  %3914 = add i32 %3905, -1
  %3915 = add i32 %3907, -1
  %3916 = fmul fast float %3912, %3903
  %3917 = fmul fast float %3913, %3903
  %3918 = fptoui float %3916 to i32
  %3919 = fptoui float %3917 to i32
  %3920 = call i32 @dx.op.binary.i32(i32 40, i32 %3918, i32 %3914)  ; UMin(a,b)
  %3921 = call i32 @dx.op.binary.i32(i32 40, i32 %3919, i32 %3915)  ; UMin(a,b)
  %3922 = mul i32 %3921, %3905
  %3923 = add i32 %3922, %3920
  %3924 = shl i32 %3923, 2
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = icmp eq i32 %3926, -1
  br i1 %3927, label %4144, label %3928

; <label>:3928                                    ; preds = %3873
  %3929 = mul i32 %3926, 148
  %3930 = add i32 %3929, 4
  %3931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = add i32 %3929, 8
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = add i32 %3929, 36
  %3937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = add i32 %3929, 60
  %3940 = add i32 %3929, 92
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = add i32 %3929, 116
  %3944 = fsub fast float %3895, %3932
  %3945 = fsub fast float %3896, %3935
  %3946 = fmul fast float %3903, %3944
  %3947 = fmul fast float %3903, %3945
  %3948 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3949 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3950 = fsub fast float 1.000000e+00, %3949
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3953 = call float @dx.op.unary.f32(i32 83, float %3948)  ; DerivCoarseX(value)
  %3954 = call float @dx.op.unary.f32(i32 83, float %3950)  ; DerivCoarseX(value)
  %3955 = call float @dx.op.unary.f32(i32 84, float %3948)  ; DerivCoarseY(value)
  %3956 = call float @dx.op.unary.f32(i32 84, float %3950)  ; DerivCoarseY(value)
  %3957 = fmul fast float %3953, %3952
  %3958 = fmul fast float %3954, %3952
  %3959 = fmul fast float %3955, %3952
  %3960 = fmul fast float %3956, %3952
  %3961 = call float @dx.op.dot2.f32(i32 54, float %3959, float %3960, float %3959, float %3960)  ; Dot2(ax,ay,bx,by)
  %3962 = call float @dx.op.dot2.f32(i32 54, float %3957, float %3958, float %3957, float %3958)  ; Dot2(ax,ay,bx,by)
  %3963 = call float @dx.op.binary.f32(i32 35, float %3962, float %3961)  ; FMax(a,b)
  %3964 = call float @dx.op.unary.f32(i32 23, float %3963)  ; Log(value)
  %3965 = fmul fast float %3964, 5.000000e-01
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 1
  %3968 = fadd fast float %3967, %3965
  %3969 = call float @dx.op.binary.f32(i32 35, float %3968, float 0.000000e+00)  ; FMax(a,b)
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3972 = fadd fast float %3971, %3969
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %3975 = fadd fast float %3972, %3974
  %3976 = add i32 %3942, 0
  %3977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3976, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3978 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3977, i32 0)  ; GetDimensions(handle,mipLevel)
  %3979 = extractvalue %dx.types.Dimensions %3978, 0
  %3980 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3979)  ; FirstbitLo(value)
  %3981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.i32 %3981, 1
  %3983 = sub nsw i32 %3982, %3980
  %3984 = sitofp i32 %3983 to float
  %3985 = fsub fast float %3975, %3984
  %3986 = call float @dx.op.binary.f32(i32 35, float %3985, float 0.000000e+00)  ; FMax(a,b)
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3977, %dx.types.Handle %28, float %3948, float %3950, float %3938, float undef, i32 0, i32 0, i32 undef, float %3986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = fcmp ule float %3988, 0x3FE0101020000000
  %3990 = extractvalue %dx.types.CBufRet.i32 %3981, 0
  %3991 = and i32 %3990, 128
  %3992 = icmp ne i32 %3991, 0
  %3993 = and i1 %3989, %3992
  br i1 %3993, label %4144, label %3994

; <label>:3994                                    ; preds = %3928
  %3995 = add i32 %3929, 20
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = add i32 %3929, 24
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = add i32 %3929, 40
  %4002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = add i32 %3929, 96
  %4005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.i32 %4005, 0
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4009 = fmul fast float %4008, %3948
  %4010 = fmul fast float %4008, %3950
  %4011 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4012 = fadd fast float %4009, %4011
  %4013 = fadd fast float %4010, %4011
  %4014 = add i32 %4006, 0
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4015, i32 0)  ; GetDimensions(handle,mipLevel)
  %4017 = extractvalue %dx.types.Dimensions %4016, 0
  %4018 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4017)  ; FirstbitLo(value)
  %4019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.i32 %4019, 1
  %4021 = sub nsw i32 %4020, %4018
  %4022 = sitofp i32 %4021 to float
  %4023 = fsub fast float %3972, %4022
  %4024 = call float @dx.op.binary.f32(i32 35, float %4023, float 0.000000e+00)  ; FMax(a,b)
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4015, %dx.types.Handle %28, float %4012, float %4013, float %4003, float undef, i32 0, i32 0, i32 undef, float %4024)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = fmul fast float %4026, %3997
  %4028 = fadd fast float %4027, %4000
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4037 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4038 = fadd fast float %4034, %3895
  %4039 = fadd fast float %4036, %3896
  %4040 = fadd fast float %4028, %4037
  %4041 = fmul fast float %4038, %4030
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4039, float %4031, float %4041)  ; FMad(a,b,c)
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4040, float %4032, float %4042)  ; FMad(a,b,c)
  %4044 = fsub fast float %4043, %4037
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 2
  %4047 = fsub fast float %4044, %4046
  %4048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.i32 %4048, 0
  %4050 = call i32 @dx.op.binary.i32(i32 40, i32 %3926, i32 %4049)  ; UMin(a,b)
  %4051 = mul i32 %4050, 36
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = add i32 %4051, 4
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = fmul fast float %4056, %3948
  %4058 = fmul fast float %4056, %3950
  %4059 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4060 = fadd fast float %4057, %4059
  %4061 = fadd fast float %4058, %4059
  %4062 = icmp eq i32 %4053, 0
  br i1 %4062, label %4131, label %4063

; <label>:4063                                    ; preds = %3994
  br label %4064

; <label>:4064                                    ; preds = %4121, %4063
  %4065 = phi float [ %4122, %4121 ], [ 0.000000e+00, %4063 ]
  %4066 = phi float [ %4123, %4121 ], [ 0.000000e+00, %4063 ]
  %4067 = phi float [ %4124, %4121 ], [ 0.000000e+00, %4063 ]
  %4068 = phi float [ %4125, %4121 ], [ 0.000000e+00, %4063 ]
  %4069 = phi float [ %4126, %4121 ], [ 0.000000e+00, %4063 ]
  %4070 = phi float [ %4127, %4121 ], [ 0.000000e+00, %4063 ]
  %4071 = phi i32 [ %4128, %4121 ], [ 0, %4063 ]
  %4072 = shl i32 %4071, 2
  %4073 = add i32 %3939, %4072
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = add i32 %3943, %4072
  %4077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.i32 %4077, 0
  %4079 = add i32 %4078, 0
  %4080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4080, i32 0)  ; GetDimensions(handle,mipLevel)
  %4082 = extractvalue %dx.types.Dimensions %4081, 0
  %4083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4082)  ; FirstbitLo(value)
  %4084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.i32 %4084, 1
  %4086 = sub nsw i32 %4085, %4083
  %4087 = sitofp i32 %4086 to float
  %4088 = fsub fast float %3972, %4087
  %4089 = call float @dx.op.binary.f32(i32 35, float %4088, float 0.000000e+00)  ; FMax(a,b)
  %4090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4080, %dx.types.Handle %28, float %4060, float %4061, float %4075, float undef, i32 0, i32 0, i32 undef, float %4089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = fcmp fast ogt float %4091, 0.000000e+00
  br i1 %4092, label %4093, label %4121

; <label>:4093                                    ; preds = %4064
  %4094 = add i32 %4054, %4072
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = and i32 %4096, 32767
  %4098 = mul nuw nsw i32 %4097, 928
  %4099 = add nuw nsw i32 %4098, 48
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = add nuw nsw i32 %4098, 60
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = fmul fast float %4101, %4091
  %4110 = fmul fast float %4102, %4091
  %4111 = fmul fast float %4103, %4091
  %4112 = fadd fast float %4109, %4065
  %4113 = fadd fast float %4110, %4066
  %4114 = fadd fast float %4111, %4067
  %4115 = fmul fast float %4106, %4091
  %4116 = fmul fast float %4107, %4091
  %4117 = fmul fast float %4108, %4091
  %4118 = fadd fast float %4115, %4068
  %4119 = fadd fast float %4116, %4069
  %4120 = fadd fast float %4117, %4070
  br label %4121

; <label>:4121                                    ; preds = %4093, %4064
  %4122 = phi float [ %4112, %4093 ], [ %4065, %4064 ]
  %4123 = phi float [ %4113, %4093 ], [ %4066, %4064 ]
  %4124 = phi float [ %4114, %4093 ], [ %4067, %4064 ]
  %4125 = phi float [ %4118, %4093 ], [ %4068, %4064 ]
  %4126 = phi float [ %4119, %4093 ], [ %4069, %4064 ]
  %4127 = phi float [ %4120, %4093 ], [ %4070, %4064 ]
  %4128 = add nuw i32 %4071, 1
  %4129 = icmp eq i32 %4128, %4053
  br i1 %4129, label %4130, label %4064

; <label>:4130                                    ; preds = %4121
  br label %4131

; <label>:4131                                    ; preds = %4130, %3994
  %4132 = phi float [ 0.000000e+00, %3994 ], [ %4122, %4130 ]
  %4133 = phi float [ 0.000000e+00, %3994 ], [ %4123, %4130 ]
  %4134 = phi float [ 0.000000e+00, %3994 ], [ %4124, %4130 ]
  %4135 = phi float [ 0.000000e+00, %3994 ], [ %4125, %4130 ]
  %4136 = phi float [ 0.000000e+00, %3994 ], [ %4126, %4130 ]
  %4137 = phi float [ 0.000000e+00, %3994 ], [ %4127, %4130 ]
  %4138 = fadd fast float %4135, %4132
  %4139 = fmul fast float %4138, 0x3F847AE140000000
  %4140 = fadd fast float %4136, %4133
  %4141 = fmul fast float %4140, 0x3F847AE140000000
  %4142 = fadd fast float %4137, %4134
  %4143 = fmul fast float %4142, 0x3F847AE140000000
  br label %4144

; <label>:4144                                    ; preds = %4131, %3928, %3873, %3870, %3841, %3803
  %4145 = phi float [ %3855, %3841 ], [ -1.310720e+05, %3803 ], [ %4047, %4131 ], [ -1.310720e+05, %3873 ], [ -1.310720e+05, %3928 ], [ -1.310720e+05, %3870 ]
  %4146 = phi float [ %3865, %3841 ], [ 0.000000e+00, %3803 ], [ %4139, %4131 ], [ 0.000000e+00, %3873 ], [ 0.000000e+00, %3928 ], [ 0.000000e+00, %3870 ]
  %4147 = phi float [ %3867, %3841 ], [ 0.000000e+00, %3803 ], [ %4141, %4131 ], [ 0.000000e+00, %3873 ], [ 0.000000e+00, %3928 ], [ 0.000000e+00, %3870 ]
  %4148 = phi float [ %3869, %3841 ], [ 0.000000e+00, %3803 ], [ %4143, %4131 ], [ 0.000000e+00, %3873 ], [ 0.000000e+00, %3928 ], [ 0.000000e+00, %3870 ]
  %4149 = phi i1 [ true, %3841 ], [ false, %3803 ], [ true, %4131 ], [ false, %3873 ], [ false, %3928 ], [ false, %3870 ]
  %4150 = and i32 %194, 3
  %4151 = icmp eq i32 %4150, 1
  %4152 = select i1 %4151, float 1.000000e+00, float 0.000000e+00
  %4153 = fsub fast float %4145, %167
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = select i1 %4149, float %4154, float 1.000000e+00
  %4156 = fmul fast float %4155, %4152
  %4157 = icmp eq i32 %4150, 3
  %4158 = select i1 %4157, float 1.000000e+00, float %4156
  %4159 = call float @dx.op.binary.f32(i32 35, float %3746, float %4158)  ; FMax(a,b)
  %4160 = fcmp fast olt float %4158, 1.000000e+00
  %4161 = fcmp uge float %49, 0.000000e+00
  %4162 = and i1 %4161, %4160
  br i1 %4162, label %4163, label %4173

; <label>:4163                                    ; preds = %4144
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4168 = fadd fast float %4165, %4159
  %4169 = fcmp ule float %48, 0.000000e+00
  %4170 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = select i1 %4169, float %4170, float 1.000000e+00
  %4172 = fmul fast float %4171, %4167
  br label %4173

; <label>:4173                                    ; preds = %4163, %4144
  %4174 = phi float [ %4168, %4163 ], [ %4159, %4144 ]
  %4175 = phi float [ %4166, %4163 ], [ 0.000000e+00, %4144 ]
  %4176 = phi float [ %4172, %4163 ], [ 0.000000e+00, %4144 ]
  %4177 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4180 = fcmp fast une float %4178, 0.000000e+00
  %4181 = fcmp fast une float %4179, 0.000000e+00
  %4182 = or i1 %4180, %4181
  br i1 %4182, label %4183, label %4742

; <label>:4183                                    ; preds = %4173
  br i1 %4180, label %4184, label %4457

; <label>:4184                                    ; preds = %4183
  %4185 = call float @dx.op.unary.f32(i32 23, float %3743)  ; Log(value)
  %4186 = fmul fast float %4185, 4.000000e+00
  %4187 = call float @dx.op.unary.f32(i32 21, float %4186)  ; Exp(value)
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = fmul fast float %4189, %36
  %4191 = fmul fast float %4189, %37
  %4192 = fmul fast float %4189, %38
  %4193 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4194 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4195 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4196 = call float @dx.op.unary.f32(i32 23, float %4193)  ; Log(value)
  %4197 = call float @dx.op.unary.f32(i32 23, float %4194)  ; Log(value)
  %4198 = call float @dx.op.unary.f32(i32 23, float %4195)  ; Log(value)
  %4199 = fmul fast float %4196, 4.000000e+00
  %4200 = fmul fast float %4197, 4.000000e+00
  %4201 = fmul fast float %4198, 4.000000e+00
  %4202 = call float @dx.op.unary.f32(i32 21, float %4199)  ; Exp(value)
  %4203 = call float @dx.op.unary.f32(i32 21, float %4200)  ; Exp(value)
  %4204 = call float @dx.op.unary.f32(i32 21, float %4201)  ; Exp(value)
  %4205 = fadd fast float %4203, %4202
  %4206 = fadd fast float %4205, %4204
  %4207 = fdiv fast float 1.000000e+00, %4206
  %4208 = fmul fast float %4207, %4202
  %4209 = fcmp fast ogt float %45, 0.000000e+00
  %4210 = fcmp fast ogt float %46, 0.000000e+00
  %4211 = fcmp fast ogt float %47, 0.000000e+00
  %4212 = fcmp fast olt float %45, 0.000000e+00
  %4213 = fcmp fast olt float %46, 0.000000e+00
  %4214 = fcmp fast olt float %47, 0.000000e+00
  %4215 = zext i1 %4209 to i32
  %4216 = zext i1 %4210 to i32
  %4217 = zext i1 %4211 to i32
  %4218 = zext i1 %4212 to i32
  %4219 = zext i1 %4213 to i32
  %4220 = zext i1 %4214 to i32
  %4221 = sub nsw i32 %4215, %4218
  %4222 = sub nsw i32 %4216, %4219
  %4223 = sub nsw i32 %4217, %4220
  %4224 = call float @dx.op.unary.f32(i32 83, float %4190)  ; DerivCoarseX(value)
  %4225 = call float @dx.op.unary.f32(i32 83, float %4191)  ; DerivCoarseX(value)
  %4226 = call float @dx.op.unary.f32(i32 83, float %4192)  ; DerivCoarseX(value)
  %4227 = call float @dx.op.unary.f32(i32 84, float %4190)  ; DerivCoarseY(value)
  %4228 = call float @dx.op.unary.f32(i32 84, float %4191)  ; DerivCoarseY(value)
  %4229 = call float @dx.op.unary.f32(i32 84, float %4192)  ; DerivCoarseY(value)
  %4230 = fcmp fast ole float %226, %4208
  %4231 = fmul fast float %4207, %4205
  %4232 = fcmp fast ole float %226, %4231
  %4233 = select i1 %4232, float %4192, float %4190
  %4234 = select i1 %4232, float %4190, float %4191
  %4235 = select i1 %4230, float %4191, float %4233
  %4236 = select i1 %4230, float %4192, float %4234
  %4237 = select i1 %4232, float %4226, float %4224
  %4238 = select i1 %4232, float %4224, float %4225
  %4239 = select i1 %4230, float %4225, float %4237
  %4240 = select i1 %4230, float %4226, float %4238
  %4241 = select i1 %4232, float %4229, float %4227
  %4242 = select i1 %4232, float %4227, float %4228
  %4243 = select i1 %4230, float %4228, float %4241
  %4244 = select i1 %4230, float %4229, float %4242
  %4245 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4246 = call float @dx.op.unary.f32(i32 27, float %4236)  ; Round_ni(value)
  %4247 = fptosi float %4245 to i32
  %4248 = fptosi float %4246 to i32
  %4249 = xor i32 %4248, %4247
  %4250 = sitofp i32 %4249 to float
  %4251 = fptosi float %4250 to i32
  %4252 = sitofp i32 %4251 to float
  %4253 = fmul fast float %4252, 0x3FE3C6EF40000000
  %4254 = frem fast float %4245, 2.560000e+02
  %4255 = frem fast float %4246, 2.560000e+02
  %4256 = fptoui float %4254 to i32
  %4257 = fptoui float %4255 to i32
  %4258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4256, i32 %4257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = fadd fast float %4259, %4253
  %4263 = fadd fast float %4260, %4253
  %4264 = fadd fast float %4261, %4253
  %4265 = call float @dx.op.unary.f32(i32 22, float %4262)  ; Frc(value)
  %4266 = call float @dx.op.unary.f32(i32 22, float %4263)  ; Frc(value)
  %4267 = call float @dx.op.unary.f32(i32 22, float %4264)  ; Frc(value)
  %4268 = fmul fast float %4267, 0x401921FB60000000
  %4269 = call float @dx.op.unary.f32(i32 13, float %4268)  ; Sin(value)
  %4270 = call float @dx.op.unary.f32(i32 12, float %4268)  ; Cos(value)
  %4271 = fsub fast float -0.000000e+00, %4270
  %4272 = fmul fast float %4270, %4235
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4269, float %4236, float %4272)  ; FMad(a,b,c)
  %4274 = fmul fast float %4269, %4235
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4271, float %4236, float %4274)  ; FMad(a,b,c)
  %4276 = fadd fast float %4273, %4265
  %4277 = fadd fast float %4275, %4266
  %4278 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4279 = bitcast float %4278 to i32
  %4280 = icmp eq i32 %4279, 0
  br i1 %4280, label %4319, label %4281

; <label>:4281                                    ; preds = %4184
  %4282 = add i32 %4279, 0
  %4283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4283, %dx.types.Handle %75, float %4276, float %4277, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4240, float undef, float %4243, float %4244, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4289 = fsub fast float 1.000000e+00, %4178
  %4290 = call float @dx.op.binary.f32(i32 35, float %4289, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4291 = bitcast float %4178 to i32
  %4292 = sitofp i32 %4291 to float
  %4293 = fadd fast float %4292, 0xC1CFBF8940000000
  %4294 = fmul fast float %4288, %4293
  %4295 = fadd fast float %4294, 0x41CFBF8940000000
  %4296 = fptosi float %4295 to i32
  %4297 = bitcast i32 %4296 to float
  %4298 = bitcast float %4290 to i32
  %4299 = sitofp i32 %4298 to float
  %4300 = fadd fast float %4299, 0xC1CFBF8940000000
  %4301 = fmul fast float %4300, %4288
  %4302 = fadd fast float %4301, 0x41CFBF8940000000
  %4303 = fptosi float %4302 to i32
  %4304 = bitcast i32 %4303 to float
  %4305 = fmul fast float %4297, %4287
  %4306 = fmul fast float %4304, %4287
  %4307 = fsub fast float %4290, %4305
  %4308 = fadd fast float %4306, %4290
  %4309 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4310 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4311 = fsub fast float %4285, %4309
  %4312 = fsub fast float %4310, %4309
  %4313 = bitcast float %4312 to i32
  %4314 = sub nsw i32 2129859010, %4313
  %4315 = bitcast i32 %4314 to float
  %4316 = fmul fast float %4315, %4311
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fcmp fast olt float %4317, 0x3F70101020000000
  br i1 %4318, label %4457, label %4319

; <label>:4319                                    ; preds = %4281, %4184
  %4320 = phi float [ %4317, %4281 ], [ %4178, %4184 ]
  %4321 = fmul fast float %4320, %4187
  %4322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.i32 %4322, 1
  %4324 = extractvalue %dx.types.CBufRet.i32 %4322, 0
  %4325 = add i32 %4324, 0
  %4326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4327 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4326, %dx.types.Handle %74, float %4276, float %4277, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4240, float undef, float %4243, float %4244, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = extractvalue %dx.types.ResRet.f32 %4327, 3
  %4332 = and i32 %4323, 255
  %4333 = uitofp i32 %4332 to float
  %4334 = lshr i32 %4323, 8
  %4335 = and i32 %4334, 255
  %4336 = uitofp i32 %4335 to float
  %4337 = fmul fast float %4331, %4333
  %4338 = fadd fast float %4337, %4336
  %4339 = fmul fast float %4338, 0x3F70101000000000
  %4340 = fadd fast float %4339, 0xBFB99999A0000000
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4341, 0x3FF1C71C80000000
  %4343 = call float @dx.op.binary.f32(i32 36, float %4339, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4344 = fsub fast float 1.000000e+00, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4345, %4328
  %4347 = fmul fast float %4345, %4329
  %4348 = fmul fast float %4345, %4330
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = fmul fast float %4342, %4328
  %4353 = fmul fast float %4342, %4329
  %4354 = fmul fast float %4342, %4330
  %4355 = fadd fast float %4352, %4343
  %4356 = fadd fast float %4353, %4343
  %4357 = fadd fast float %4354, %4343
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 3
  %4363 = extractvalue %dx.types.CBufRet.i32 %4361, 2
  %4364 = add i32 %4363, 0
  %4365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4365, %dx.types.Handle %74, float %4276, float %4277, float undef, float undef, i32 0, i32 0, i32 undef, float %4239, float %4240, float undef, float %4243, float %4244, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = extractvalue %dx.types.ResRet.f32 %4366, 3
  %4371 = and i32 %4362, 255
  %4372 = uitofp i32 %4371 to float
  %4373 = lshr i32 %4362, 8
  %4374 = and i32 %4373, 255
  %4375 = uitofp i32 %4374 to float
  %4376 = lshr i32 %4362, 16
  %4377 = and i32 %4376, 255
  %4378 = uitofp i32 %4377 to float
  %4379 = fmul fast float %4378, 0x3F70101000000000
  %4380 = fmul fast float %4367, %4372
  %4381 = fadd fast float %4380, %4375
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = fadd fast float %4368, -5.000000e-01
  %4384 = fadd fast float %4370, -5.000000e-01
  %4385 = fmul fast float %4383, %4379
  %4386 = fmul fast float %4384, %4379
  %4387 = fadd fast float %4385, 5.000000e-01
  %4388 = fadd fast float %4386, 5.000000e-01
  %4389 = fmul fast float %4387, 2.000000e+00
  %4390 = fadd fast float %4389, -1.000000e+00
  %4391 = fmul fast float %4388, 2.000000e+00
  %4392 = fadd fast float %4391, -1.000000e+00
  %4393 = fadd fast float %4390, %4392
  %4394 = fmul fast float %4393, 5.000000e-01
  %4395 = fsub fast float %4390, %4392
  %4396 = fmul fast float %4395, 5.000000e-01
  %4397 = call float @dx.op.unary.f32(i32 6, float %4394)  ; FAbs(value)
  %4398 = fsub fast float 1.000000e+00, %4397
  %4399 = call float @dx.op.unary.f32(i32 6, float %4396)  ; FAbs(value)
  %4400 = fsub fast float %4398, %4399
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4394, float %4396, float %4400, float %4394, float %4396, float %4400)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4394, %4402
  %4404 = fmul fast float %4396, %4402
  %4405 = select i1 %4232, i32 %4222, i32 %4223
  %4406 = select i1 %4230, i32 %4221, i32 %4405
  %4407 = sitofp i32 %4406 to float
  %4408 = fmul fast float %4400, %4407
  %4409 = fmul fast float %4408, %4402
  %4410 = select i1 %4232, float %4409, float %4404
  %4411 = select i1 %4232, float %4404, float %4409
  %4412 = select i1 %4230, float %4409, float %4403
  %4413 = select i1 %4230, float %4404, float %4410
  %4414 = select i1 %4230, float %4403, float %4411
  %4415 = fsub fast float %4349, %3782
  %4416 = fsub fast float %4350, %3783
  %4417 = fsub fast float %4351, %3784
  %4418 = fmul fast float %4415, %4321
  %4419 = fmul fast float %4416, %4321
  %4420 = fmul fast float %4417, %4321
  %4421 = fadd fast float %4418, %3782
  %4422 = fadd fast float %4419, %3783
  %4423 = fadd fast float %4420, %3784
  %4424 = fsub fast float %4358, %3767
  %4425 = fsub fast float %4359, %3768
  %4426 = fsub fast float %4360, %3769
  %4427 = fmul fast float %4424, %4321
  %4428 = fmul fast float %4425, %4321
  %4429 = fmul fast float %4426, %4321
  %4430 = fadd fast float %4427, %3767
  %4431 = fadd fast float %4428, %3768
  %4432 = fadd fast float %4429, %3769
  %4433 = fadd fast float %4412, %3734
  %4434 = fadd fast float %4413, %3735
  %4435 = fadd fast float %4414, %3736
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4435, float %4433, float %4434, float %4435)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 25, float %4436)  ; Rsqrt(value)
  %4438 = fmul fast float %4433, %4437
  %4439 = fmul fast float %4434, %4437
  %4440 = fmul fast float %4435, %4437
  %4441 = fsub fast float %4438, %3734
  %4442 = fsub fast float %4439, %3735
  %4443 = fsub fast float %4440, %3736
  %4444 = fmul fast float %4441, %4321
  %4445 = fmul fast float %4442, %4321
  %4446 = fmul fast float %4443, %4321
  %4447 = fadd fast float %4444, %3734
  %4448 = fadd fast float %4445, %3735
  %4449 = fadd fast float %4446, %3736
  %4450 = call float @dx.op.binary.f32(i32 36, float %3743, float %4369)  ; FMin(a,b)
  %4451 = fsub fast float %4450, %3743
  %4452 = fmul fast float %4451, %4321
  %4453 = fadd fast float %4452, %3743
  %4454 = fsub fast float %4382, %3770
  %4455 = fmul fast float %4454, %4321
  %4456 = fadd fast float %4455, %3770
  br label %4457

; <label>:4457                                    ; preds = %4319, %4281, %4183
  %4458 = phi float [ %4447, %4319 ], [ %3734, %4281 ], [ %3734, %4183 ]
  %4459 = phi float [ %4448, %4319 ], [ %3735, %4281 ], [ %3735, %4183 ]
  %4460 = phi float [ %4449, %4319 ], [ %3736, %4281 ], [ %3736, %4183 ]
  %4461 = phi float [ %4430, %4319 ], [ %3767, %4281 ], [ %3767, %4183 ]
  %4462 = phi float [ %4431, %4319 ], [ %3768, %4281 ], [ %3768, %4183 ]
  %4463 = phi float [ %4432, %4319 ], [ %3769, %4281 ], [ %3769, %4183 ]
  %4464 = phi float [ %4421, %4319 ], [ %3782, %4281 ], [ %3782, %4183 ]
  %4465 = phi float [ %4422, %4319 ], [ %3783, %4281 ], [ %3783, %4183 ]
  %4466 = phi float [ %4423, %4319 ], [ %3784, %4281 ], [ %3784, %4183 ]
  %4467 = phi float [ %4456, %4319 ], [ %3770, %4281 ], [ %3770, %4183 ]
  %4468 = phi float [ %4453, %4319 ], [ %3743, %4281 ], [ %3743, %4183 ]
  br i1 %4181, label %4469, label %4742

; <label>:4469                                    ; preds = %4457
  %4470 = call float @dx.op.unary.f32(i32 23, float %4468)  ; Log(value)
  %4471 = fmul fast float %4470, 4.000000e+00
  %4472 = call float @dx.op.unary.f32(i32 21, float %4471)  ; Exp(value)
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 0
  %4475 = fmul fast float %4474, %36
  %4476 = fmul fast float %4474, %37
  %4477 = fmul fast float %4474, %38
  %4478 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4479 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4480 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4481 = call float @dx.op.unary.f32(i32 23, float %4478)  ; Log(value)
  %4482 = call float @dx.op.unary.f32(i32 23, float %4479)  ; Log(value)
  %4483 = call float @dx.op.unary.f32(i32 23, float %4480)  ; Log(value)
  %4484 = fmul fast float %4481, 4.000000e+00
  %4485 = fmul fast float %4482, 4.000000e+00
  %4486 = fmul fast float %4483, 4.000000e+00
  %4487 = call float @dx.op.unary.f32(i32 21, float %4484)  ; Exp(value)
  %4488 = call float @dx.op.unary.f32(i32 21, float %4485)  ; Exp(value)
  %4489 = call float @dx.op.unary.f32(i32 21, float %4486)  ; Exp(value)
  %4490 = fadd fast float %4488, %4487
  %4491 = fadd fast float %4490, %4489
  %4492 = fdiv fast float 1.000000e+00, %4491
  %4493 = fmul fast float %4492, %4487
  %4494 = fcmp fast ogt float %45, 0.000000e+00
  %4495 = fcmp fast ogt float %46, 0.000000e+00
  %4496 = fcmp fast ogt float %47, 0.000000e+00
  %4497 = fcmp fast olt float %45, 0.000000e+00
  %4498 = fcmp fast olt float %46, 0.000000e+00
  %4499 = fcmp fast olt float %47, 0.000000e+00
  %4500 = zext i1 %4494 to i32
  %4501 = zext i1 %4495 to i32
  %4502 = zext i1 %4496 to i32
  %4503 = zext i1 %4497 to i32
  %4504 = zext i1 %4498 to i32
  %4505 = zext i1 %4499 to i32
  %4506 = sub nsw i32 %4500, %4503
  %4507 = sub nsw i32 %4501, %4504
  %4508 = sub nsw i32 %4502, %4505
  %4509 = call float @dx.op.unary.f32(i32 83, float %4475)  ; DerivCoarseX(value)
  %4510 = call float @dx.op.unary.f32(i32 83, float %4476)  ; DerivCoarseX(value)
  %4511 = call float @dx.op.unary.f32(i32 83, float %4477)  ; DerivCoarseX(value)
  %4512 = call float @dx.op.unary.f32(i32 84, float %4475)  ; DerivCoarseY(value)
  %4513 = call float @dx.op.unary.f32(i32 84, float %4476)  ; DerivCoarseY(value)
  %4514 = call float @dx.op.unary.f32(i32 84, float %4477)  ; DerivCoarseY(value)
  %4515 = fcmp fast ole float %226, %4493
  %4516 = fmul fast float %4492, %4490
  %4517 = fcmp fast ole float %226, %4516
  %4518 = select i1 %4517, float %4477, float %4475
  %4519 = select i1 %4517, float %4475, float %4476
  %4520 = select i1 %4515, float %4476, float %4518
  %4521 = select i1 %4515, float %4477, float %4519
  %4522 = select i1 %4517, float %4511, float %4509
  %4523 = select i1 %4517, float %4509, float %4510
  %4524 = select i1 %4515, float %4510, float %4522
  %4525 = select i1 %4515, float %4511, float %4523
  %4526 = select i1 %4517, float %4514, float %4512
  %4527 = select i1 %4517, float %4512, float %4513
  %4528 = select i1 %4515, float %4513, float %4526
  %4529 = select i1 %4515, float %4514, float %4527
  %4530 = call float @dx.op.unary.f32(i32 27, float %4520)  ; Round_ni(value)
  %4531 = call float @dx.op.unary.f32(i32 27, float %4521)  ; Round_ni(value)
  %4532 = fptosi float %4530 to i32
  %4533 = fptosi float %4531 to i32
  %4534 = xor i32 %4533, %4532
  %4535 = sitofp i32 %4534 to float
  %4536 = fptosi float %4535 to i32
  %4537 = sitofp i32 %4536 to float
  %4538 = fmul fast float %4537, 0x3FE3C6EF40000000
  %4539 = frem fast float %4530, 2.560000e+02
  %4540 = frem fast float %4531, 2.560000e+02
  %4541 = fptoui float %4539 to i32
  %4542 = fptoui float %4540 to i32
  %4543 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4541, i32 %4542, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = fadd fast float %4544, %4538
  %4548 = fadd fast float %4545, %4538
  %4549 = fadd fast float %4546, %4538
  %4550 = call float @dx.op.unary.f32(i32 22, float %4547)  ; Frc(value)
  %4551 = call float @dx.op.unary.f32(i32 22, float %4548)  ; Frc(value)
  %4552 = call float @dx.op.unary.f32(i32 22, float %4549)  ; Frc(value)
  %4553 = fmul fast float %4552, 0x401921FB60000000
  %4554 = call float @dx.op.unary.f32(i32 13, float %4553)  ; Sin(value)
  %4555 = call float @dx.op.unary.f32(i32 12, float %4553)  ; Cos(value)
  %4556 = fsub fast float -0.000000e+00, %4555
  %4557 = fmul fast float %4555, %4520
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4521, float %4557)  ; FMad(a,b,c)
  %4559 = fmul fast float %4554, %4520
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4521, float %4559)  ; FMad(a,b,c)
  %4561 = fadd fast float %4558, %4550
  %4562 = fadd fast float %4560, %4551
  %4563 = extractvalue %dx.types.CBufRet.f32 %4473, 3
  %4564 = bitcast float %4563 to i32
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4604, label %4566

; <label>:4566                                    ; preds = %4469
  %4567 = add i32 %4564, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4568, %dx.types.Handle %75, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4525, float undef, float %4528, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4574 = fsub fast float 1.000000e+00, %4179
  %4575 = call float @dx.op.binary.f32(i32 35, float %4574, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4576 = bitcast float %4179 to i32
  %4577 = sitofp i32 %4576 to float
  %4578 = fadd fast float %4577, 0xC1CFBF8940000000
  %4579 = fmul fast float %4573, %4578
  %4580 = fadd fast float %4579, 0x41CFBF8940000000
  %4581 = fptosi float %4580 to i32
  %4582 = bitcast i32 %4581 to float
  %4583 = bitcast float %4575 to i32
  %4584 = sitofp i32 %4583 to float
  %4585 = fadd fast float %4584, 0xC1CFBF8940000000
  %4586 = fmul fast float %4585, %4573
  %4587 = fadd fast float %4586, 0x41CFBF8940000000
  %4588 = fptosi float %4587 to i32
  %4589 = bitcast i32 %4588 to float
  %4590 = fmul fast float %4582, %4572
  %4591 = fmul fast float %4589, %4572
  %4592 = fsub fast float %4575, %4590
  %4593 = fadd fast float %4591, %4575
  %4594 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4596 = fsub fast float %4570, %4594
  %4597 = fsub fast float %4595, %4594
  %4598 = bitcast float %4597 to i32
  %4599 = sub nsw i32 2129859010, %4598
  %4600 = bitcast i32 %4599 to float
  %4601 = fmul fast float %4600, %4596
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fcmp fast olt float %4602, 0x3F70101020000000
  br i1 %4603, label %4742, label %4604

; <label>:4604                                    ; preds = %4566, %4469
  %4605 = phi float [ %4602, %4566 ], [ %4179, %4469 ]
  %4606 = fmul fast float %4605, %4472
  %4607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.i32 %4607, 1
  %4609 = extractvalue %dx.types.CBufRet.i32 %4607, 0
  %4610 = add i32 %4609, 0
  %4611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4612 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4611, %dx.types.Handle %74, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4525, float undef, float %4528, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = and i32 %4608, 255
  %4618 = uitofp i32 %4617 to float
  %4619 = lshr i32 %4608, 8
  %4620 = and i32 %4619, 255
  %4621 = uitofp i32 %4620 to float
  %4622 = fmul fast float %4616, %4618
  %4623 = fadd fast float %4622, %4621
  %4624 = fmul fast float %4623, 0x3F70101000000000
  %4625 = fadd fast float %4624, 0xBFB99999A0000000
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4626, 0x3FF1C71C80000000
  %4628 = call float @dx.op.binary.f32(i32 36, float %4624, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4629 = fsub fast float 1.000000e+00, %4627
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4630, %4613
  %4632 = fmul fast float %4630, %4614
  %4633 = fmul fast float %4630, %4615
  %4634 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = fmul fast float %4627, %4613
  %4638 = fmul fast float %4627, %4614
  %4639 = fmul fast float %4627, %4615
  %4640 = fadd fast float %4637, %4628
  %4641 = fadd fast float %4638, %4628
  %4642 = fadd fast float %4639, %4628
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.i32 %4646, 3
  %4648 = extractvalue %dx.types.CBufRet.i32 %4646, 2
  %4649 = add i32 %4648, 0
  %4650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4651 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4650, %dx.types.Handle %74, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float %4524, float %4525, float undef, float %4528, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = extractvalue %dx.types.ResRet.f32 %4651, 3
  %4656 = and i32 %4647, 255
  %4657 = uitofp i32 %4656 to float
  %4658 = lshr i32 %4647, 8
  %4659 = and i32 %4658, 255
  %4660 = uitofp i32 %4659 to float
  %4661 = lshr i32 %4647, 16
  %4662 = and i32 %4661, 255
  %4663 = uitofp i32 %4662 to float
  %4664 = fmul fast float %4663, 0x3F70101000000000
  %4665 = fmul fast float %4652, %4657
  %4666 = fadd fast float %4665, %4660
  %4667 = fmul fast float %4666, 0x3F70101000000000
  %4668 = fadd fast float %4653, -5.000000e-01
  %4669 = fadd fast float %4655, -5.000000e-01
  %4670 = fmul fast float %4668, %4664
  %4671 = fmul fast float %4669, %4664
  %4672 = fadd fast float %4670, 5.000000e-01
  %4673 = fadd fast float %4671, 5.000000e-01
  %4674 = fmul fast float %4672, 2.000000e+00
  %4675 = fadd fast float %4674, -1.000000e+00
  %4676 = fmul fast float %4673, 2.000000e+00
  %4677 = fadd fast float %4676, -1.000000e+00
  %4678 = fadd fast float %4675, %4677
  %4679 = fmul fast float %4678, 5.000000e-01
  %4680 = fsub fast float %4675, %4677
  %4681 = fmul fast float %4680, 5.000000e-01
  %4682 = call float @dx.op.unary.f32(i32 6, float %4679)  ; FAbs(value)
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %4685 = fsub fast float %4683, %4684
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4681, float %4685, float %4679, float %4681, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 25, float %4686)  ; Rsqrt(value)
  %4688 = fmul fast float %4679, %4687
  %4689 = fmul fast float %4681, %4687
  %4690 = select i1 %4517, i32 %4507, i32 %4508
  %4691 = select i1 %4515, i32 %4506, i32 %4690
  %4692 = sitofp i32 %4691 to float
  %4693 = fmul fast float %4685, %4692
  %4694 = fmul fast float %4693, %4687
  %4695 = select i1 %4517, float %4694, float %4689
  %4696 = select i1 %4517, float %4689, float %4694
  %4697 = select i1 %4515, float %4694, float %4688
  %4698 = select i1 %4515, float %4689, float %4695
  %4699 = select i1 %4515, float %4688, float %4696
  %4700 = fsub fast float %4634, %4464
  %4701 = fsub fast float %4635, %4465
  %4702 = fsub fast float %4636, %4466
  %4703 = fmul fast float %4700, %4606
  %4704 = fmul fast float %4701, %4606
  %4705 = fmul fast float %4702, %4606
  %4706 = fadd fast float %4703, %4464
  %4707 = fadd fast float %4704, %4465
  %4708 = fadd fast float %4705, %4466
  %4709 = fsub fast float %4643, %4461
  %4710 = fsub fast float %4644, %4462
  %4711 = fsub fast float %4645, %4463
  %4712 = fmul fast float %4709, %4606
  %4713 = fmul fast float %4710, %4606
  %4714 = fmul fast float %4711, %4606
  %4715 = fadd fast float %4712, %4461
  %4716 = fadd fast float %4713, %4462
  %4717 = fadd fast float %4714, %4463
  %4718 = fadd fast float %4697, %4458
  %4719 = fadd fast float %4698, %4459
  %4720 = fadd fast float %4699, %4460
  %4721 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %4720, float %4718, float %4719, float %4720)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = call float @dx.op.unary.f32(i32 25, float %4721)  ; Rsqrt(value)
  %4723 = fmul fast float %4718, %4722
  %4724 = fmul fast float %4719, %4722
  %4725 = fmul fast float %4720, %4722
  %4726 = fsub fast float %4723, %4458
  %4727 = fsub fast float %4724, %4459
  %4728 = fsub fast float %4725, %4460
  %4729 = fmul fast float %4726, %4606
  %4730 = fmul fast float %4727, %4606
  %4731 = fmul fast float %4728, %4606
  %4732 = fadd fast float %4729, %4458
  %4733 = fadd fast float %4730, %4459
  %4734 = fadd fast float %4731, %4460
  %4735 = call float @dx.op.binary.f32(i32 36, float %4468, float %4654)  ; FMin(a,b)
  %4736 = fsub fast float %4735, %4468
  %4737 = fmul fast float %4736, %4606
  %4738 = fadd fast float %4737, %4468
  %4739 = fsub fast float %4667, %4467
  %4740 = fmul fast float %4739, %4606
  %4741 = fadd fast float %4740, %4467
  br label %4742

; <label>:4742                                    ; preds = %4604, %4566, %4457, %4173
  %4743 = phi float [ %4732, %4604 ], [ %4458, %4566 ], [ %4458, %4457 ], [ %3734, %4173 ]
  %4744 = phi float [ %4733, %4604 ], [ %4459, %4566 ], [ %4459, %4457 ], [ %3735, %4173 ]
  %4745 = phi float [ %4734, %4604 ], [ %4460, %4566 ], [ %4460, %4457 ], [ %3736, %4173 ]
  %4746 = phi float [ %4715, %4604 ], [ %4461, %4566 ], [ %4461, %4457 ], [ %3767, %4173 ]
  %4747 = phi float [ %4716, %4604 ], [ %4462, %4566 ], [ %4462, %4457 ], [ %3768, %4173 ]
  %4748 = phi float [ %4717, %4604 ], [ %4463, %4566 ], [ %4463, %4457 ], [ %3769, %4173 ]
  %4749 = phi float [ %4706, %4604 ], [ %4464, %4566 ], [ %4464, %4457 ], [ %3782, %4173 ]
  %4750 = phi float [ %4707, %4604 ], [ %4465, %4566 ], [ %4465, %4457 ], [ %3783, %4173 ]
  %4751 = phi float [ %4708, %4604 ], [ %4466, %4566 ], [ %4466, %4457 ], [ %3784, %4173 ]
  %4752 = phi float [ %4741, %4604 ], [ %4467, %4566 ], [ %4467, %4457 ], [ %3770, %4173 ]
  %4753 = phi float [ %4738, %4604 ], [ %4468, %4566 ], [ %4468, %4457 ], [ %3743, %4173 ]
  %4754 = fcmp fast une float %4177, 0.000000e+00
  %4755 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.unary.f32(i32 25, float %4755)  ; Rsqrt(value)
  br i1 %4754, label %4764, label %4757

; <label>:4757                                    ; preds = %4742
  %4758 = fmul fast float %4756, %165
  %4759 = fmul fast float %4756, %166
  %4760 = fmul fast float %4756, %167
  %4761 = fsub fast float -0.000000e+00, %4758
  %4762 = fsub fast float -0.000000e+00, %4759
  %4763 = fsub fast float -0.000000e+00, %4760
  br label %4931

; <label>:4764                                    ; preds = %4742
  %4765 = fmul fast float %165, %4756
  %4766 = fsub fast float -0.000000e+00, %4765
  %4767 = fmul fast float %166, %4756
  %4768 = fsub fast float -0.000000e+00, %4767
  %4769 = fmul fast float %167, %4756
  %4770 = fsub fast float -0.000000e+00, %4769
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4768, float %4770, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = fmul fast float %4177, 2.500000e+00
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4177, 0x4013FFFFE0000000
  %4775 = fadd fast float %4774, 0xBFFFFFFFE0000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4177, 0x4004000020000000
  %4778 = fadd fast float %4777, 0xBFF8000040000000
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %3749, 1.000000e+01
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = fsub fast float 3.000000e+00, %4782
  %4784 = fmul fast float %4781, %4781
  %4785 = fmul fast float %4784, %4783
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = fsub fast float 0x3FE3333340000000, %4752
  %4788 = fmul fast float %4787, 0x400AAAAAA0000000
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fmul fast float %4786, %4789
  %4791 = fmul fast float %4749, 0x3FEA2B8620000000
  %4792 = fmul fast float %4750, 0x3FEA2B8620000000
  %4793 = fmul fast float %4751, 0x3FEA2B8620000000
  %4794 = fadd fast float %4791, 0x3FC81DFBA0000000
  %4795 = fmul fast float %4794, %4749
  %4796 = fadd fast float %4795, 0x3F910E6020000000
  %4797 = fadd fast float %4792, 0x3FC81DFBA0000000
  %4798 = fmul fast float %4797, %4750
  %4799 = fadd fast float %4798, 0x3F910E6020000000
  %4800 = fadd fast float %4793, 0x3FC81DFBA0000000
  %4801 = fmul fast float %4800, %4751
  %4802 = fadd fast float %4801, 0x3F910E6020000000
  %4803 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4805 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4806 = fsub fast float %4803, %4749
  %4807 = fsub fast float %4804, %4750
  %4808 = fsub fast float %4805, %4751
  %4809 = fmul fast float %4806, %4773
  %4810 = fmul fast float %4809, %4790
  %4811 = fmul fast float %4807, %4773
  %4812 = fmul fast float %4811, %4790
  %4813 = fmul fast float %4808, %4773
  %4814 = fmul fast float %4813, %4790
  %4815 = fadd fast float %4810, %4749
  %4816 = fadd fast float %4812, %4750
  %4817 = fadd fast float %4814, %4751
  %4818 = fmul fast float %4753, %4753
  %4819 = fmul fast float %4818, %4818
  %4820 = fadd fast float %4776, 1.000000e+00
  %4821 = fsub fast float %4820, %4790
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fsub fast float 1.000000e+00, %4819
  %4826 = call float @dx.op.binary.f32(i32 36, float %4822, float %4825)  ; FMin(a,b)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4828 = call float @dx.op.binary.f32(i32 35, float %4826, float %4827)  ; FMax(a,b)
  %4829 = fadd fast float %4824, 0xBFE4CCCCC0000000
  %4830 = fmul fast float %4829, 0x4006DB6DA0000000
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fmul fast float %4831, 2.000000e+00
  %4833 = fsub fast float 3.000000e+00, %4832
  %4834 = bitcast float %4746 to i32
  %4835 = ashr i32 %4834, 1
  %4836 = add nsw i32 %4835, 532487669
  %4837 = bitcast i32 %4836 to float
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4841, 2.000000e+00
  %4843 = bitcast float %4747 to i32
  %4844 = ashr i32 %4843, 1
  %4845 = add nsw i32 %4844, 532487669
  %4846 = bitcast i32 %4845 to float
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = bitcast float %4847 to i32
  %4849 = sub nsw i32 2129859010, %4848
  %4850 = bitcast i32 %4849 to float
  %4851 = fmul fast float %4850, 2.000000e+00
  %4852 = bitcast float %4748 to i32
  %4853 = ashr i32 %4852, 1
  %4854 = add nsw i32 %4853, 532487669
  %4855 = bitcast i32 %4854 to float
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = fmul fast float %4859, 2.000000e+00
  %4861 = fsub fast float 0x4002A9FBE0000000, %4842
  %4862 = fadd fast float %4842, 0x3FD54FDF00000000
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = fmul fast float %4865, %4861
  %4867 = fmul fast float %4866, %4866
  %4868 = fsub fast float 0x4002A9FBE0000000, %4851
  %4869 = fadd fast float %4851, 0x3FD54FDF00000000
  %4870 = bitcast float %4869 to i32
  %4871 = sub nsw i32 2129859010, %4870
  %4872 = bitcast i32 %4871 to float
  %4873 = fmul fast float %4872, %4868
  %4874 = fmul fast float %4873, %4873
  %4875 = fsub fast float 0x4002A9FBE0000000, %4860
  %4876 = fadd fast float %4860, 0x3FD54FDF00000000
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4879, %4875
  %4881 = fmul fast float %4880, %4880
  %4882 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4867)  ; FMax(a,b)
  %4883 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4874)  ; FMax(a,b)
  %4884 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4881)  ; FMax(a,b)
  %4885 = fsub fast float 1.000000e+00, %4771
  %4886 = fadd fast float %4885, %4786
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fsub fast float 1.000000e+00, %4158
  %4889 = fmul fast float %4828, %4888
  %4890 = fmul fast float %4831, %4831
  %4891 = fmul fast float %4890, %4889
  %4892 = fmul fast float %4891, %4833
  %4893 = fmul fast float %4888, 0xBFE99999A0000000
  %4894 = fmul fast float %4893, %4773
  %4895 = fmul fast float %4894, %4790
  %4896 = fadd fast float %4895, 1.000000e+00
  %4897 = fadd fast float %4752, -1.000000e+00
  %4898 = fmul fast float %4896, %4897
  %4899 = fadd fast float %4898, 1.000000e+00
  %4900 = fsub fast float %4882, %4746
  %4901 = fsub fast float %4883, %4747
  %4902 = fsub fast float %4884, %4748
  %4903 = fmul fast float %4892, %4900
  %4904 = fmul fast float %4892, %4901
  %4905 = fmul fast float %4892, %4902
  %4906 = fadd fast float %4903, %4746
  %4907 = fadd fast float %4904, %4747
  %4908 = fadd fast float %4905, %4748
  %4909 = fsub fast float %85, %4743
  %4910 = fsub fast float %86, %4744
  %4911 = fsub fast float %87, %4745
  %4912 = fmul fast float %4892, %4909
  %4913 = fmul fast float %4892, %4910
  %4914 = fmul fast float %4892, %4911
  %4915 = fadd fast float %4912, %4743
  %4916 = fadd fast float %4913, %4744
  %4917 = fadd fast float %4914, %4745
  %4918 = fmul fast float %4892, %4887
  %4919 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = fmul fast float %4918, %4920
  %4922 = fadd fast float %4921, %4919
  %4923 = fsub fast float 1.000000e+00, %4753
  %4924 = fmul fast float %4892, %4923
  %4925 = fadd fast float %4924, %4753
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4916, float %4917, float %4915, float %4916, float %4917)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4915, %4927
  %4929 = fmul fast float %4916, %4927
  %4930 = fmul fast float %4917, %4927
  br label %4931

; <label>:4931                                    ; preds = %4764, %4757
  %4932 = phi float [ %4763, %4757 ], [ %4770, %4764 ]
  %4933 = phi float [ %4762, %4757 ], [ %4768, %4764 ]
  %4934 = phi float [ %4761, %4757 ], [ %4766, %4764 ]
  %4935 = phi float [ %4760, %4757 ], [ %4769, %4764 ]
  %4936 = phi float [ %4759, %4757 ], [ %4767, %4764 ]
  %4937 = phi float [ %4758, %4757 ], [ %4765, %4764 ]
  %4938 = phi float [ %4743, %4757 ], [ %4928, %4764 ]
  %4939 = phi float [ %4744, %4757 ], [ %4929, %4764 ]
  %4940 = phi float [ %4745, %4757 ], [ %4930, %4764 ]
  %4941 = phi float [ %4746, %4757 ], [ %4906, %4764 ]
  %4942 = phi float [ %4747, %4757 ], [ %4907, %4764 ]
  %4943 = phi float [ %4748, %4757 ], [ %4908, %4764 ]
  %4944 = phi float [ %4749, %4757 ], [ %4815, %4764 ]
  %4945 = phi float [ %4750, %4757 ], [ %4816, %4764 ]
  %4946 = phi float [ %4751, %4757 ], [ %4817, %4764 ]
  %4947 = phi float [ %4752, %4757 ], [ %4922, %4764 ]
  %4948 = phi float [ %4753, %4757 ], [ %4925, %4764 ]
  %4949 = select i1 %215, float 0.000000e+00, float %4943
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %4934, float %4933, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4936, float %4935, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fmul fast float %4952, 2.000000e+00
  %4954 = fmul fast float %4953, %4938
  %4955 = fmul fast float %4953, %4939
  %4956 = fmul fast float %4953, %4940
  %4957 = fsub fast float %4937, %4954
  %4958 = fsub fast float %4936, %4955
  %4959 = fsub fast float %4935, %4956
  %4960 = call float @dx.op.binary.f32(i32 36, float %4948, float 1.000000e+00)  ; FMin(a,b)
  %4961 = fsub fast float 1.000000e+00, %4948
  %4962 = bitcast float %4961 to i32
  %4963 = sub nsw i32 2129859010, %4962
  %4964 = fsub fast float 1.000000e+00, %55
  %4965 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4965, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4967 = fdiv fast float %4964, %4966
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, 5.000000e-01
  %4971 = fadd fast float %4970, 5.000000e-01
  %4972 = fmul fast float %4971, %55
  %4973 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, %4967
  %4976 = fadd fast float %4972, %4975
  %4977 = fsub fast float 5.000000e-01, %4970
  %4978 = fmul fast float %4977, %4944
  %4979 = fmul fast float %4977, %4945
  %4980 = fmul fast float %4977, %4946
  %4981 = fadd fast float %4976, %4978
  %4982 = fadd fast float %4976, %4979
  %4983 = fadd fast float %4976, %4980
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fmul fast float %4985, 5.000000e-01
  %4987 = fadd fast float %4986, 5.000000e-01
  %4988 = fmul fast float %4987, %55
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fmul fast float %4990, %4967
  %4992 = fadd fast float %4988, %4991
  %4993 = fsub fast float 5.000000e-01, %4986
  %4994 = fmul fast float %4993, %4944
  %4995 = fmul fast float %4993, %4945
  %4996 = fmul fast float %4993, %4946
  %4997 = fadd fast float %4992, %4994
  %4998 = fadd fast float %4992, %4995
  %4999 = fadd fast float %4992, %4996
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = call float @dx.op.binary.f32(i32 36, float %4944, float %5001)  ; FMin(a,b)
  %5003 = fsub fast float 1.000000e+00, %4960
  %5004 = fmul fast float %5002, %5003
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = call float @dx.op.binary.f32(i32 36, float %4945, float %5001)  ; FMin(a,b)
  %5010 = fmul fast float %5009, %5003
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = call float @dx.op.binary.f32(i32 36, float %4946, float %5001)  ; FMin(a,b)
  %5016 = fmul fast float %5015, %5003
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = bitcast float %5017 to i32
  %5019 = sub nsw i32 2129859010, %5018
  %5020 = bitcast i32 %5019 to float
  %5021 = fmul fast float %4960, %56
  %5022 = fmul fast float %5021, %4981
  %5023 = fmul fast float %5022, %5008
  %5024 = fmul fast float %4960, %57
  %5025 = fmul fast float %5024, %4982
  %5026 = fmul fast float %5025, %5014
  %5027 = fmul fast float %4960, %58
  %5028 = fmul fast float %5027, %4983
  %5029 = fmul fast float %5028, %5020
  %5030 = call float @dx.op.binary.f32(i32 36, float %4941, float %5001)  ; FMin(a,b)
  %5031 = fmul fast float %5030, %5003
  %5032 = fsub fast float 1.000000e+00, %5031
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = call float @dx.op.binary.f32(i32 36, float %4942, float %5001)  ; FMin(a,b)
  %5037 = fmul fast float %5036, %5003
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = bitcast float %5038 to i32
  %5040 = sub nsw i32 2129859010, %5039
  %5041 = bitcast i32 %5040 to float
  %5042 = call float @dx.op.binary.f32(i32 36, float %4949, float %5001)  ; FMin(a,b)
  %5043 = fmul fast float %5042, %5003
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = bitcast float %5044 to i32
  %5046 = sub nsw i32 2129859010, %5045
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5021, %4997
  %5049 = fmul fast float %5048, %5035
  %5050 = fmul fast float %5024, %4998
  %5051 = fmul fast float %5050, %5041
  %5052 = fmul fast float %5027, %4999
  %5053 = fmul fast float %5052, %5047
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5026, float %5029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = select i1 %215, float 0.000000e+00, float %5023
  %5056 = select i1 %215, float %5054, float %5026
  %5057 = select i1 %215, float 0.000000e+00, float %5029
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5051, float %5053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = select i1 %215, float 0.000000e+00, float %5049
  %5060 = select i1 %215, float %5058, float %5051
  %5061 = select i1 %215, float 0.000000e+00, float %5053
  %5062 = fmul fast float %4951, 9.843750e-01
  %5063 = fmul fast float %4947, 9.843750e-01
  %5064 = fadd fast float %5062, 7.812500e-03
  %5065 = fadd fast float %5063, 7.812500e-03
  %5066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5064, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5066, 3
  %5069 = fmul fast float %5067, %4941
  %5070 = fmul fast float %5067, %4942
  %5071 = fmul fast float %5067, %4949
  %5072 = fadd fast float %5069, %5068
  %5073 = fadd fast float %5070, %5068
  %5074 = fadd fast float %5071, %5068
  %5075 = fcmp fast ogt float %3744, 0.000000e+00
  br i1 %5075, label %5076, label %5102

; <label>:5076                                    ; preds = %4931
  %5077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3744, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = extractvalue %dx.types.ResRet.f32 %5077, 1
  %5080 = extractvalue %dx.types.ResRet.f32 %5077, 2
  %5081 = fadd fast float %5078, -5.000000e-01
  %5082 = fadd fast float %5079, -5.000000e-01
  %5083 = fadd fast float %5080, -5.000000e-01
  %5084 = fsub fast float 1.000000e+00, %4941
  %5085 = fsub fast float 1.000000e+00, %4942
  %5086 = fsub fast float 1.000000e+00, %4949
  %5087 = fmul fast float %4941, 4.000000e+00
  %5088 = fmul fast float %5087, %5084
  %5089 = fmul fast float %5088, %5081
  %5090 = fmul fast float %4942, 4.000000e+00
  %5091 = fmul fast float %5090, %5085
  %5092 = fmul fast float %5091, %5082
  %5093 = fmul fast float %4949, 4.000000e+00
  %5094 = fmul fast float %5093, %5086
  %5095 = fmul fast float %5094, %5083
  %5096 = fadd fast float %5089, %5072
  %5097 = fadd fast float %5092, %5073
  %5098 = fadd fast float %5095, %5074
  %5099 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  br label %5102

; <label>:5102                                    ; preds = %5076, %4931
  %5103 = phi float [ %5099, %5076 ], [ %5072, %4931 ]
  %5104 = phi float [ %5100, %5076 ], [ %5073, %4931 ]
  %5105 = phi float [ %5101, %5076 ], [ %5074, %4931 ]
  %5106 = call float @dx.op.binary.f32(i32 35, float %5104, float %5105)  ; FMax(a,b)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5103, float %5106)  ; FMax(a,b)
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = fmul fast float %5108, %5055
  %5110 = fmul fast float %5108, %5056
  %5111 = fmul fast float %5108, %5057
  %5112 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fcmp fast ogt float %5112, 0x3E7FF19E20000000
  %5114 = fdiv fast float 1.000000e+00, %5112
  %5115 = select i1 %5113, float %5114, float 0.000000e+00
  %5116 = fmul fast float %5115, %4944
  %5117 = fmul fast float %5115, %4945
  %5118 = fmul fast float %5115, %4946
  %5119 = fadd fast float %5116, -1.000000e+00
  %5120 = fadd fast float %5117, -1.000000e+00
  %5121 = fadd fast float %5118, -1.000000e+00
  %5122 = fmul fast float %5119, 5.000000e-01
  %5123 = fmul fast float %5120, 5.000000e-01
  %5124 = fmul fast float %5121, 5.000000e-01
  %5125 = fadd fast float %5122, 1.000000e+00
  %5126 = fadd fast float %5123, 1.000000e+00
  %5127 = fadd fast float %5124, 1.000000e+00
  %5128 = fmul fast float %5103, %5059
  %5129 = fmul fast float %5104, %5060
  %5130 = fmul fast float %5105, %5061
  %5131 = fsub fast float 1.000000e+00, %4951
  %5132 = bitcast float %5131 to i32
  %5133 = sitofp i32 %5132 to float
  %5134 = fmul fast float %5133, 5.000000e+00
  %5135 = fadd fast float %5134, 0xC1EFBF8940000000
  %5136 = fptosi float %5135 to i32
  %5137 = bitcast i32 %5136 to float
  %5138 = fmul fast float %5137, %3745
  %5139 = fmul fast float %5055, %5138
  %5140 = fmul fast float %5139, %5108
  %5141 = fmul fast float %5140, %5125
  %5142 = fmul fast float %5056, %5138
  %5143 = fmul fast float %5142, %5108
  %5144 = fmul fast float %5143, %5126
  %5145 = fmul fast float %5057, %5138
  %5146 = fmul fast float %5145, %5108
  %5147 = fmul fast float %5146, %5127
  %5148 = fmul fast float %5109, %3741
  %5149 = fmul fast float %5110, %3741
  %5150 = fmul fast float %5111, %3741
  %5151 = fadd fast float %5128, %3737
  %5152 = fadd fast float %5151, %5141
  %5153 = fmul fast float %5152, %3741
  %5154 = fadd fast float %5129, %3738
  %5155 = fadd fast float %5154, %5144
  %5156 = fmul fast float %5155, %3741
  %5157 = fadd fast float %5130, %3739
  %5158 = fadd fast float %5157, %5147
  %5159 = fmul fast float %5158, %3741
  %5160 = bitcast i32 %4963 to float
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5163 = fcmp fast oeq float %5162, 0.000000e+00
  br i1 %5163, label %5391, label %5164

; <label>:5164                                    ; preds = %5102
  %5165 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = select i1 %215, float %5173, float %5169
  %5177 = select i1 %215, float %5175, float %5170
  %5178 = select i1 %215, float %5174, float %5171
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5181 = fcmp fast une float %5180, 0.000000e+00
  br i1 %5181, label %5182, label %5199

; <label>:5182                                    ; preds = %5164
  %5183 = fptoui float %78 to i32
  %5184 = fptoui float %79 to i32
  %5185 = lshr i32 %5183, 4
  %5186 = lshr i32 %5184, 4
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = fptoui float %5188 to i32
  %5190 = add i32 %5189, 15
  %5191 = lshr i32 %5190, 4
  %5192 = mul i32 %5191, %5186
  %5193 = add i32 %5192, %5185
  %5194 = shl i32 %5193, 3
  %5195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.i32 %5195, 0
  %5197 = and i32 %5196, -268435456
  %5198 = icmp eq i32 %5197, -1342177280
  br i1 %5198, label %5209, label %5199

; <label>:5199                                    ; preds = %5182, %5164
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = extractvalue %dx.types.CBufRet.f32 %5200, 3
  %5203 = fmul fast float %5201, %78
  %5204 = fmul fast float %5202, %79
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5203, float %5204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.ResRet.f32 %5205, 2
  br label %5209

; <label>:5209                                    ; preds = %5199, %5182
  %5210 = phi float [ %5206, %5199 ], [ 0.000000e+00, %5182 ]
  %5211 = phi float [ %5207, %5199 ], [ 0.000000e+00, %5182 ]
  %5212 = phi float [ %5208, %5199 ], [ 0.000000e+00, %5182 ]
  %5213 = call float @dx.op.binary.f32(i32 36, float %5211, float %5212)  ; FMin(a,b)
  %5214 = call float @dx.op.binary.f32(i32 36, float %5210, float %5213)  ; FMin(a,b)
  %5215 = fcmp fast ogt float %5214, 0.000000e+00
  br i1 %5215, label %5216, label %5391, !dx.controlflow.hints !76

; <label>:5216                                    ; preds = %5209
  %5217 = fmul fast float %5210, %5176
  %5218 = fmul fast float %5211, %5177
  %5219 = fmul fast float %5212, %5178
  %5220 = fsub fast float %5165, %4937
  %5221 = fsub fast float %5166, %4936
  %5222 = fsub fast float %5167, %4935
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.unary.f32(i32 25, float %5223)  ; Rsqrt(value)
  %5225 = fmul fast float %5224, %5220
  %5226 = fmul fast float %5224, %5221
  %5227 = fmul fast float %5224, %5222
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4933, float %4932, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5231 = fmul fast float %5230, %5230
  %5232 = fmul fast float %5231, %5160
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5233, %5230
  %5235 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5235, %5235
  %5237 = call float @dx.op.unary.f32(i32 6, float %5228)  ; FAbs(value)
  %5238 = fsub fast float 1.000000e+00, %4947
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0x3F847AE140000000)  ; FMax(a,b)
  %5240 = fmul fast float %5239, %5239
  %5241 = fmul fast float %5240, %5240
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fmul fast float %4951, %4951
  %5244 = fmul fast float %5243, %5242
  %5245 = fadd fast float %5244, %5241
  %5246 = bitcast float %5245 to i32
  %5247 = ashr i32 %5246, 1
  %5248 = add nsw i32 %5247, 532487669
  %5249 = bitcast i32 %5248 to float
  %5250 = fadd fast float %5249, %4951
  %5251 = fmul fast float %5241, %5236
  %5252 = fsub fast float 1.000000e+00, %5236
  %5253 = fadd fast float %5252, %5251
  %5254 = fmul fast float %5237, %5237
  %5255 = fmul fast float %5254, %5242
  %5256 = fadd fast float %5255, %5241
  %5257 = bitcast float %5256 to i32
  %5258 = ashr i32 %5257, 1
  %5259 = add nsw i32 %5258, 532487669
  %5260 = bitcast i32 %5259 to float
  %5261 = fadd fast float %5260, %5237
  %5262 = fmul fast float %5253, %5253
  %5263 = fmul fast float %5262, %5250
  %5264 = fmul fast float %5263, %5261
  %5265 = fdiv fast float 0x3FF0A00000000000, %5264
  %5266 = fmul fast float %5265, %5241
  %5267 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5268 = fsub fast float 1.000000e+00, %5267
  %5269 = bitcast float %5268 to i32
  %5270 = sitofp i32 %5269 to float
  %5271 = fmul fast float %5270, 5.000000e+00
  %5272 = fadd fast float %5271, 0xC1EFBF8940000000
  %5273 = fptosi float %5272 to i32
  %5274 = bitcast i32 %5273 to float
  %5275 = fsub fast float 1.000000e+00, %4941
  %5276 = fsub fast float 1.000000e+00, %4942
  %5277 = fsub fast float 1.000000e+00, %4949
  %5278 = fmul fast float %5274, %5275
  %5279 = fmul fast float %5274, %5276
  %5280 = fmul fast float %5274, %5277
  %5281 = fadd fast float %5278, %4941
  %5282 = fadd fast float %5279, %4942
  %5283 = fadd fast float %5280, %4949
  br i1 %5075, label %5284, label %5307

; <label>:5284                                    ; preds = %5216
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3744, float %5267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = fadd fast float %5286, -5.000000e-01
  %5290 = fadd fast float %5287, -5.000000e-01
  %5291 = fadd fast float %5288, -5.000000e-01
  %5292 = fmul fast float %4941, 4.000000e+00
  %5293 = fmul fast float %5292, %5275
  %5294 = fmul fast float %5293, %5289
  %5295 = fmul fast float %4942, 4.000000e+00
  %5296 = fmul fast float %5295, %5276
  %5297 = fmul fast float %5296, %5290
  %5298 = fmul fast float %4949, 4.000000e+00
  %5299 = fmul fast float %5298, %5277
  %5300 = fmul fast float %5299, %5291
  %5301 = fadd fast float %5294, %5281
  %5302 = fadd fast float %5297, %5282
  %5303 = fadd fast float %5300, %5283
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  br label %5307

; <label>:5307                                    ; preds = %5284, %5216
  %5308 = phi float [ %5304, %5284 ], [ %5281, %5216 ]
  %5309 = phi float [ %5305, %5284 ], [ %5282, %5216 ]
  %5310 = phi float [ %5306, %5284 ], [ %5283, %5216 ]
  %5311 = fmul fast float %5228, 9.843750e-01
  %5312 = fadd fast float %5311, 7.812500e-03
  %5313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5312, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 2
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 3
  %5316 = fmul fast float %5314, %4941
  %5317 = fmul fast float %5314, %4942
  %5318 = fmul fast float %5314, %4949
  %5319 = fadd fast float %5316, %5315
  %5320 = fadd fast float %5317, %5315
  %5321 = fadd fast float %5318, %5315
  br i1 %5075, label %5322, label %5345

; <label>:5322                                    ; preds = %5307
  %5323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3744, float %5228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.ResRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.ResRet.f32 %5323, 2
  %5327 = fadd fast float %5324, -5.000000e-01
  %5328 = fadd fast float %5325, -5.000000e-01
  %5329 = fadd fast float %5326, -5.000000e-01
  %5330 = fmul fast float %4941, 4.000000e+00
  %5331 = fmul fast float %5330, %5275
  %5332 = fmul fast float %5331, %5327
  %5333 = fmul fast float %4942, 4.000000e+00
  %5334 = fmul fast float %5333, %5276
  %5335 = fmul fast float %5334, %5328
  %5336 = fmul fast float %4949, 4.000000e+00
  %5337 = fmul fast float %5336, %5277
  %5338 = fmul fast float %5337, %5329
  %5339 = fadd fast float %5332, %5319
  %5340 = fadd fast float %5335, %5320
  %5341 = fadd fast float %5338, %5321
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  br label %5345

; <label>:5345                                    ; preds = %5322, %5307
  %5346 = phi float [ %5342, %5322 ], [ %5319, %5307 ]
  %5347 = phi float [ %5343, %5322 ], [ %5320, %5307 ]
  %5348 = phi float [ %5344, %5322 ], [ %5321, %5307 ]
  %5349 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float %5346, float %5349)  ; FMax(a,b)
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5308, %5266
  %5353 = fmul fast float %5309, %5266
  %5354 = fmul fast float %5310, %5266
  %5355 = fsub fast float 1.000000e+00, %5229
  %5356 = bitcast float %5355 to i32
  %5357 = sitofp i32 %5356 to float
  %5358 = fmul fast float %5357, 5.000000e+00
  %5359 = fadd fast float %5358, 0xC1EFBF8940000000
  %5360 = fptosi float %5359 to i32
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, %3745
  %5363 = fmul fast float %5351, %5362
  %5364 = fmul fast float %5363, %5125
  %5365 = fmul fast float %5363, %5126
  %5366 = fmul fast float %5363, %5127
  %5367 = fadd fast float %5364, %5352
  %5368 = fadd fast float %5365, %5353
  %5369 = fadd fast float %5366, %5354
  %5370 = fmul fast float %5234, %5217
  %5371 = fmul fast float %5370, %5351
  %5372 = fmul fast float %5234, %5218
  %5373 = fmul fast float %5372, %5351
  %5374 = fmul fast float %5234, %5219
  %5375 = fmul fast float %5374, %5351
  %5376 = fmul fast float %5370, %5367
  %5377 = fmul fast float %5372, %5368
  %5378 = fmul fast float %5374, %5369
  %5379 = fadd fast float %5371, %5109
  %5380 = fmul fast float %5379, %3741
  %5381 = fadd fast float %5373, %5110
  %5382 = fmul fast float %5381, %3741
  %5383 = fadd fast float %5375, %5111
  %5384 = fmul fast float %5383, %3741
  %5385 = fadd fast float %5376, %5152
  %5386 = fmul fast float %5385, %3741
  %5387 = fadd fast float %5377, %5155
  %5388 = fmul fast float %5387, %3741
  %5389 = fadd fast float %5378, %5158
  %5390 = fmul fast float %5389, %3741
  br label %5391

; <label>:5391                                    ; preds = %5345, %5209, %5102
  %5392 = phi float [ %5153, %5102 ], [ %5153, %5209 ], [ %5386, %5345 ]
  %5393 = phi float [ %5156, %5102 ], [ %5156, %5209 ], [ %5388, %5345 ]
  %5394 = phi float [ %5159, %5102 ], [ %5159, %5209 ], [ %5390, %5345 ]
  %5395 = phi float [ %5148, %5102 ], [ %5148, %5209 ], [ %5380, %5345 ]
  %5396 = phi float [ %5149, %5102 ], [ %5149, %5209 ], [ %5382, %5345 ]
  %5397 = phi float [ %5150, %5102 ], [ %5150, %5209 ], [ %5384, %5345 ]
  %5398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.i32 %5398, 0
  %5400 = icmp eq i32 %5399, 0
  br i1 %5400, label %5835, label %5401

; <label>:5401                                    ; preds = %5391
  %5402 = fptoui float %78 to i32
  %5403 = fptoui float %79 to i32
  %5404 = lshr i32 %5402, 4
  %5405 = lshr i32 %5403, 4
  %5406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.i32 %5406, 0
  %5408 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5405, i32 %5407, i32 %5404)  ; UMad(a,b,c)
  %5409 = add nsw i32 %5399, -1
  %5410 = call i32 @dx.op.binary.i32(i32 37, i32 %5409, i32 0)  ; IMax(a,b)
  %5411 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5412 = fptoui float %5411 to i32
  %5413 = lshr i32 %5412, 5
  %5414 = call i32 @dx.op.binary.i32(i32 40, i32 %5413, i32 8191)  ; UMin(a,b)
  %5415 = shl i32 %5414, 2
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = lshr i32 %5417, 16
  %5419 = and i32 %5417, 65535
  %5420 = lshr i32 %5417, 21
  %5421 = lshr i32 %5419, 5
  %5422 = call i32 @dx.op.binary.i32(i32 40, i32 %5421, i32 %5410)  ; UMin(a,b)
  %5423 = icmp ugt i32 %5420, %5422
  br i1 %5423, label %5835, label %5424

; <label>:5424                                    ; preds = %5401
  br label %5425

; <label>:5425                                    ; preds = %5825, %5424
  %5426 = phi i32 [ %5832, %5825 ], [ %5420, %5424 ]
  %5427 = phi float [ %5826, %5825 ], [ %5392, %5424 ]
  %5428 = phi float [ %5827, %5825 ], [ %5393, %5424 ]
  %5429 = phi float [ %5828, %5825 ], [ %5394, %5424 ]
  %5430 = phi float [ %5829, %5825 ], [ %5395, %5424 ]
  %5431 = phi float [ %5830, %5825 ], [ %5396, %5424 ]
  %5432 = phi float [ %5831, %5825 ], [ %5397, %5424 ]
  %5433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.i32 %5433, 0
  %5435 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5408, i32 %5434, i32 %5426)  ; UMad(a,b,c)
  %5436 = shl i32 %5435, 2
  %5437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.i32 %5437, 0
  %5439 = shl i32 %5426, 5
  %5440 = sub nsw i32 %5418, %5439
  %5441 = call i32 @dx.op.binary.i32(i32 37, i32 %5440, i32 0)  ; IMax(a,b)
  %5442 = call i32 @dx.op.binary.i32(i32 38, i32 %5441, i32 31)  ; IMin(a,b)
  %5443 = sub nsw i32 1, %5418
  %5444 = add nsw i32 %5443, %5419
  %5445 = call i32 @dx.op.binary.i32(i32 37, i32 %5444, i32 0)  ; IMax(a,b)
  %5446 = call i32 @dx.op.binary.i32(i32 38, i32 %5445, i32 32)  ; IMin(a,b)
  %5447 = and i32 %5446, 31
  %5448 = shl i32 -1, %5447
  %5449 = xor i32 %5448, -1
  %5450 = and i32 %5442, 31
  %5451 = shl i32 %5449, %5450
  %5452 = icmp eq i32 %5446, 32
  %5453 = select i1 %5452, i32 -1, i32 %5451
  %5454 = and i32 %5453, %5438
  %5455 = icmp eq i32 %5454, 0
  br i1 %5455, label %5825, label %5456

; <label>:5456                                    ; preds = %5425
  br label %5457

; <label>:5457                                    ; preds = %5537, %5456
  %5458 = phi i32 [ %5469, %5537 ], [ %5454, %5456 ]
  %5459 = phi float [ %5538, %5537 ], [ %5427, %5456 ]
  %5460 = phi float [ %5539, %5537 ], [ %5428, %5456 ]
  %5461 = phi float [ %5540, %5537 ], [ %5429, %5456 ]
  %5462 = phi float [ %5541, %5537 ], [ %5430, %5456 ]
  %5463 = phi float [ %5542, %5537 ], [ %5431, %5456 ]
  %5464 = phi float [ %5543, %5537 ], [ %5432, %5456 ]
  %5465 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5458)  ; FirstbitLo(value)
  %5466 = add i32 %5465, %5439
  %5467 = and i32 %5465, 31
  %5468 = shl i32 1, %5467
  %5469 = xor i32 %5468, %5458
  %5470 = mul i32 %5466, 112
  %5471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = or i32 %5470, 12
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = add i32 %5470, 44
  %5479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5478, i32 undef)  ; BufferLoad(srv,index,wot)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 0
  %5481 = add i32 %5470, 48
  %5482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.ResRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.ResRet.f32 %5482, 2
  %5486 = add i32 %5470, 80
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = select i1 %215, float %5488, float %5472
  %5492 = select i1 %215, float %5490, float %5473
  %5493 = select i1 %215, float %5489, float %5474
  %5494 = fsub fast float %5483, %165
  %5495 = fsub fast float %5484, %166
  %5496 = fsub fast float %5485, %167
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 24, float %5497)  ; Sqrt(value)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5499, %5494
  %5501 = fmul fast float %5499, %5495
  %5502 = fmul fast float %5499, %5496
  %5503 = fadd fast float %5498, %5477
  %5504 = fdiv fast float 1.000000e+00, %5503
  %5505 = fmul float %5480, %5504
  %5506 = fmul float %5505, %5505
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = and i32 %5468, %5454
  %5509 = icmp eq i32 %5508, 0
  br i1 %5509, label %5532, label %5510, !dx.controlflow.hints !77

; <label>:5510                                    ; preds = %5457
  %5511 = lshr i32 %5402, 5
  %5512 = lshr i32 %5403, 5
  %5513 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5511, i32 %5512, i32 %5466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5514 = extractvalue %dx.types.ResRet.i32 %5513, 0
  %5515 = and i32 %5514, 3
  %5516 = icmp eq i32 %5515, 0
  %5517 = select i1 %5516, float 1.000000e+00, float 0.000000e+00
  %5518 = icmp eq i32 %5515, 3
  br i1 %5518, label %5519, label %5532

; <label>:5519                                    ; preds = %5510
  %5520 = lshr i32 %5514, 10
  %5521 = and i32 %5520, 8160
  %5522 = and i32 %5403, 31
  %5523 = or i32 %5521, %5522
  %5524 = lshr i32 %5514, 1
  %5525 = and i32 %5524, 16352
  %5526 = and i32 %5402, 31
  %5527 = or i32 %5525, %5526
  %5528 = lshr i32 %5514, 23
  %5529 = and i32 %5528, 255
  %5530 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5527, i32 %5523, i32 %5529, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  br label %5532

; <label>:5532                                    ; preds = %5519, %5510, %5457
  %5533 = phi float [ %5531, %5519 ], [ %5517, %5510 ], [ 0.000000e+00, %5457 ]
  %5534 = call float @dx.op.binary.f32(i32 36, float %5533, float %5533)  ; FMin(a,b)
  %5535 = call float @dx.op.binary.f32(i32 36, float %5533, float %5534)  ; FMin(a,b)
  %5536 = fcmp fast ogt float %5535, 0.000000e+00
  br i1 %5536, label %5545, label %5537, !dx.controlflow.hints !78

; <label>:5537                                    ; preds = %5781, %5532
  %5538 = phi float [ %5459, %5532 ], [ %5821, %5781 ]
  %5539 = phi float [ %5460, %5532 ], [ %5822, %5781 ]
  %5540 = phi float [ %5461, %5532 ], [ %5823, %5781 ]
  %5541 = phi float [ %5462, %5532 ], [ %5815, %5781 ]
  %5542 = phi float [ %5463, %5532 ], [ %5816, %5781 ]
  %5543 = phi float [ %5464, %5532 ], [ %5817, %5781 ]
  %5544 = icmp eq i32 %5458, %5468
  br i1 %5544, label %5824, label %5457

; <label>:5545                                    ; preds = %5532
  %5546 = fmul fast float %5533, %5491
  %5547 = fmul fast float %5533, %5492
  %5548 = fmul fast float %5533, %5493
  %5549 = fsub fast float %5485, %4145
  %5550 = fcmp fast ogt float %5549, 0.000000e+00
  %5551 = fsub fast float %167, %4145
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  %5553 = xor i1 %5552, %5550
  %5554 = fsub fast float %4145, %5485
  %5555 = fmul fast float %5554, 2.000000e+00
  %5556 = fadd fast float %5555, %5485
  %5557 = select i1 %5553, float %5485, float %5556
  %5558 = fsub fast float %5557, %167
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5558, float %5494, float %5495, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = call float @dx.op.unary.f32(i32 25, float %5559)  ; Rsqrt(value)
  %5561 = fmul fast float %5560, %5494
  %5562 = fmul fast float %5560, %5495
  %5563 = fmul fast float %5560, %5558
  %5564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5561, float %5562, float %5563)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = fdiv fast float 1.000000e+00, %5565
  %5567 = fmul fast float %5566, %5564
  %5568 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5551, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = fcmp fast ogt float %5568, 0.000000e+00
  %5570 = fcmp fast olt float %5568, 0.000000e+00
  %5571 = zext i1 %5569 to i32
  %5572 = zext i1 %5570 to i32
  %5573 = sub nsw i32 %5571, %5572
  %5574 = sitofp i32 %5573 to float
  %5575 = fsub fast float %5557, %4145
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5575, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = fcmp fast ogt float %5576, 0.000000e+00
  %5578 = fcmp fast olt float %5576, 0.000000e+00
  %5579 = zext i1 %5577 to i32
  %5580 = zext i1 %5578 to i32
  %5581 = sub nsw i32 %5579, %5580
  %5582 = sitofp i32 %5581 to float
  %5583 = fcmp fast une float %5574, %5582
  br i1 %5583, label %5584, label %5594

; <label>:5584                                    ; preds = %5545
  %5585 = fmul fast float %5567, %5563
  %5586 = fmul fast float %5567, %5562
  %5587 = fmul fast float %5567, %5561
  %5588 = fmul fast float %5587, %5587
  %5589 = fmul fast float %5586, %5586
  %5590 = fadd fast float %5588, %5589
  %5591 = fmul fast float %5585, %5585
  %5592 = fadd fast float %5590, %5591
  %5593 = call float @dx.op.unary.f32(i32 24, float %5592)  ; Sqrt(value)
  br label %5606

; <label>:5594                                    ; preds = %5545
  %5595 = icmp slt i32 %5573, 0
  br i1 %5595, label %5596, label %5606

; <label>:5596                                    ; preds = %5594
  %5597 = fsub fast float %165, %5483
  %5598 = fsub fast float %166, %5484
  %5599 = fsub fast float %167, %5557
  %5600 = fmul fast float %5597, %5597
  %5601 = fmul fast float %5598, %5598
  %5602 = fadd fast float %5600, %5601
  %5603 = fmul fast float %5599, %5599
  %5604 = fadd fast float %5602, %5603
  %5605 = call float @dx.op.unary.f32(i32 24, float %5604)  ; Sqrt(value)
  br label %5606

; <label>:5606                                    ; preds = %5596, %5594, %5584
  %5607 = phi float [ %5593, %5584 ], [ %5605, %5596 ], [ 0.000000e+00, %5594 ]
  %5608 = and i1 %5552, %5550
  %5609 = fsub fast float -0.000000e+00, %5607
  %5610 = select i1 %5608, float -0.000000e+00, float %5609
  %5611 = fmul fast float %4146, 0x3FF7154760000000
  %5612 = fmul fast float %5611, %5610
  %5613 = fmul fast float %4147, 0x3FF7154760000000
  %5614 = fmul fast float %5613, %5610
  %5615 = fmul fast float %4148, 0x3FF7154760000000
  %5616 = fmul fast float %5615, %5610
  %5617 = call float @dx.op.unary.f32(i32 21, float %5612)  ; Exp(value)
  %5618 = call float @dx.op.unary.f32(i32 21, float %5614)  ; Exp(value)
  %5619 = call float @dx.op.unary.f32(i32 21, float %5616)  ; Exp(value)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5621 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = fmul fast float %5546, %5620
  %5624 = fmul fast float %5547, %5621
  %5625 = fmul fast float %5548, %5622
  %5626 = fsub fast float %5500, %4937
  %5627 = fsub fast float %5501, %4936
  %5628 = fsub fast float %5502, %4935
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 25, float %5629)  ; Rsqrt(value)
  %5631 = fmul fast float %5630, %5626
  %5632 = fmul fast float %5630, %5627
  %5633 = fmul fast float %5630, %5628
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5500, float %5501, float %5502, float %4938, float %4939, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4933, float %4932, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5637 = fmul fast float %5636, %5507
  %5638 = fmul fast float %5636, %5636
  %5639 = fmul fast float %5638, %5160
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fmul fast float %5637, %5640
  %5642 = bitcast float %5497 to i32
  %5643 = ashr i32 %5642, 1
  %5644 = sub nsw i32 1597463007, %5643
  %5645 = bitcast i32 %5644 to float
  %5646 = fmul fast float %5645, %5494
  %5647 = fmul fast float %5645, %5495
  %5648 = fmul fast float %5645, %5496
  %5649 = fsub fast float %5646, %4937
  %5650 = fsub fast float %5647, %4936
  %5651 = fsub fast float %5648, %4935
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5650, float %5651, float %5649, float %5650, float %5651)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.unary.f32(i32 25, float %5652)  ; Rsqrt(value)
  %5654 = fmul fast float %5649, %5653
  %5655 = fmul fast float %5650, %5653
  %5656 = fmul fast float %5651, %5653
  %5657 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fmul fast float %5657, %5657
  %5659 = call float @dx.op.unary.f32(i32 6, float %5634)  ; FAbs(value)
  %5660 = fsub fast float 1.000000e+00, %4947
  %5661 = call float @dx.op.binary.f32(i32 35, float %5660, float 0x3F847AE140000000)  ; FMax(a,b)
  %5662 = fmul fast float %5661, %5661
  %5663 = fmul fast float %5662, %5662
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fmul fast float %4951, %4951
  %5666 = fmul fast float %5665, %5664
  %5667 = fadd fast float %5666, %5663
  %5668 = bitcast float %5667 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = add nsw i32 %5669, 532487669
  %5671 = bitcast i32 %5670 to float
  %5672 = fadd fast float %5671, %4951
  %5673 = fmul fast float %5663, %5658
  %5674 = fsub fast float 1.000000e+00, %5658
  %5675 = fadd fast float %5674, %5673
  %5676 = fmul fast float %5659, %5659
  %5677 = fmul fast float %5676, %5664
  %5678 = fadd fast float %5677, %5663
  %5679 = bitcast float %5678 to i32
  %5680 = ashr i32 %5679, 1
  %5681 = add nsw i32 %5680, 532487669
  %5682 = bitcast i32 %5681 to float
  %5683 = fadd fast float %5682, %5659
  %5684 = fmul fast float %5675, %5675
  %5685 = fmul fast float %5684, %5672
  %5686 = fmul fast float %5685, %5683
  %5687 = fdiv fast float 1.000000e+00, %5686
  %5688 = bitcast float %5663 to i32
  %5689 = sitofp i32 %5688 to float
  %5690 = fmul fast float %5689, 0x3FE7F73180000000
  %5691 = fadd fast float %5690, 0x41AFE27C40000000
  %5692 = fptosi float %5691 to i32
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5480, 0x3FD80E9D60000000
  %5695 = fmul fast float %5694, %5645
  %5696 = fadd fast float %5693, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = fmul fast float %5663, %5687
  %5701 = fmul fast float %5700, %5693
  %5702 = fmul fast float %5701, %5699
  %5703 = call float @dx.op.unary.f32(i32 6, float %5635)  ; FAbs(value)
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = bitcast float %5704 to i32
  %5706 = sitofp i32 %5705 to float
  %5707 = fmul fast float %5706, 5.000000e+00
  %5708 = fadd fast float %5707, 0xC1EFBF8940000000
  %5709 = fptosi float %5708 to i32
  %5710 = bitcast i32 %5709 to float
  %5711 = fsub fast float 1.000000e+00, %4941
  %5712 = fsub fast float 1.000000e+00, %4942
  %5713 = fsub fast float 1.000000e+00, %4949
  %5714 = fmul fast float %5710, %5711
  %5715 = fmul fast float %5710, %5712
  %5716 = fmul fast float %5710, %5713
  %5717 = fadd fast float %5714, %4941
  %5718 = fadd fast float %5715, %4942
  %5719 = fadd fast float %5716, %4949
  br i1 %5075, label %5720, label %5743

; <label>:5720                                    ; preds = %5606
  %5721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3744, float %5703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5722 = extractvalue %dx.types.ResRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.ResRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.ResRet.f32 %5721, 2
  %5725 = fadd fast float %5722, -5.000000e-01
  %5726 = fadd fast float %5723, -5.000000e-01
  %5727 = fadd fast float %5724, -5.000000e-01
  %5728 = fmul fast float %4941, 4.000000e+00
  %5729 = fmul fast float %5728, %5711
  %5730 = fmul fast float %5729, %5725
  %5731 = fmul fast float %4942, 4.000000e+00
  %5732 = fmul fast float %5731, %5712
  %5733 = fmul fast float %5732, %5726
  %5734 = fmul fast float %4949, 4.000000e+00
  %5735 = fmul fast float %5734, %5713
  %5736 = fmul fast float %5735, %5727
  %5737 = fadd fast float %5730, %5717
  %5738 = fadd fast float %5733, %5718
  %5739 = fadd fast float %5736, %5719
  %5740 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5741 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5742 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  br label %5743

; <label>:5743                                    ; preds = %5720, %5606
  %5744 = phi float [ %5740, %5720 ], [ %5717, %5606 ]
  %5745 = phi float [ %5741, %5720 ], [ %5718, %5606 ]
  %5746 = phi float [ %5742, %5720 ], [ %5719, %5606 ]
  %5747 = fmul fast float %5634, 9.843750e-01
  %5748 = fadd fast float %5747, 7.812500e-03
  %5749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5748, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 2
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 3
  %5752 = fmul fast float %5750, %4941
  %5753 = fmul fast float %5750, %4942
  %5754 = fmul fast float %5750, %4949
  %5755 = fadd fast float %5752, %5751
  %5756 = fadd fast float %5753, %5751
  %5757 = fadd fast float %5754, %5751
  br i1 %5075, label %5758, label %5781

; <label>:5758                                    ; preds = %5743
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3744, float %5634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = fadd fast float %5760, -5.000000e-01
  %5764 = fadd fast float %5761, -5.000000e-01
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fmul fast float %4941, 4.000000e+00
  %5767 = fmul fast float %5766, %5711
  %5768 = fmul fast float %5767, %5763
  %5769 = fmul fast float %4942, 4.000000e+00
  %5770 = fmul fast float %5769, %5712
  %5771 = fmul fast float %5770, %5764
  %5772 = fmul fast float %4949, 4.000000e+00
  %5773 = fmul fast float %5772, %5713
  %5774 = fmul fast float %5773, %5765
  %5775 = fadd fast float %5768, %5755
  %5776 = fadd fast float %5771, %5756
  %5777 = fadd fast float %5774, %5757
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  br label %5781

; <label>:5781                                    ; preds = %5758, %5743
  %5782 = phi float [ %5778, %5758 ], [ %5755, %5743 ]
  %5783 = phi float [ %5779, %5758 ], [ %5756, %5743 ]
  %5784 = phi float [ %5780, %5758 ], [ %5757, %5743 ]
  %5785 = call float @dx.op.binary.f32(i32 35, float %5783, float %5784)  ; FMax(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float %5782, float %5785)  ; FMax(a,b)
  %5787 = fsub fast float 1.000000e+00, %5786
  %5788 = fmul fast float %5744, %5702
  %5789 = fmul fast float %5745, %5702
  %5790 = fmul fast float %5746, %5702
  %5791 = fsub fast float 1.000000e+00, %5635
  %5792 = bitcast float %5791 to i32
  %5793 = sitofp i32 %5792 to float
  %5794 = fmul fast float %5793, 5.000000e+00
  %5795 = fadd fast float %5794, 0xC1EFBF8940000000
  %5796 = fptosi float %5795 to i32
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5797, %3745
  %5799 = fmul fast float %5787, %5798
  %5800 = fmul fast float %5799, %5125
  %5801 = fmul fast float %5799, %5126
  %5802 = fmul fast float %5799, %5127
  %5803 = fadd fast float %5800, %5788
  %5804 = fadd fast float %5801, %5789
  %5805 = fadd fast float %5802, %5790
  %5806 = fmul fast float %5623, %3741
  %5807 = fmul fast float %5806, %5641
  %5808 = fmul fast float %5807, %5787
  %5809 = fmul fast float %5624, %3741
  %5810 = fmul fast float %5809, %5641
  %5811 = fmul fast float %5810, %5787
  %5812 = fmul fast float %5625, %3741
  %5813 = fmul fast float %5812, %5641
  %5814 = fmul fast float %5813, %5787
  %5815 = fadd fast float %5808, %5462
  %5816 = fadd fast float %5811, %5463
  %5817 = fadd fast float %5814, %5464
  %5818 = fmul fast float %5807, %5803
  %5819 = fmul fast float %5810, %5804
  %5820 = fmul fast float %5813, %5805
  %5821 = fadd fast float %5818, %5459
  %5822 = fadd fast float %5819, %5460
  %5823 = fadd fast float %5820, %5461
  br label %5537

; <label>:5824                                    ; preds = %5537
  br label %5825

; <label>:5825                                    ; preds = %5824, %5425
  %5826 = phi float [ %5427, %5425 ], [ %5538, %5824 ]
  %5827 = phi float [ %5428, %5425 ], [ %5539, %5824 ]
  %5828 = phi float [ %5429, %5425 ], [ %5540, %5824 ]
  %5829 = phi float [ %5430, %5425 ], [ %5541, %5824 ]
  %5830 = phi float [ %5431, %5425 ], [ %5542, %5824 ]
  %5831 = phi float [ %5432, %5425 ], [ %5543, %5824 ]
  %5832 = add i32 %5426, 1
  %5833 = icmp ugt i32 %5832, %5422
  br i1 %5833, label %5834, label %5425

; <label>:5834                                    ; preds = %5825
  br label %5835

; <label>:5835                                    ; preds = %5834, %5401, %5391
  %5836 = phi float [ %5392, %5391 ], [ %5392, %5401 ], [ %5826, %5834 ]
  %5837 = phi float [ %5393, %5391 ], [ %5393, %5401 ], [ %5827, %5834 ]
  %5838 = phi float [ %5394, %5391 ], [ %5394, %5401 ], [ %5828, %5834 ]
  %5839 = phi float [ %5395, %5391 ], [ %5395, %5401 ], [ %5829, %5834 ]
  %5840 = phi float [ %5396, %5391 ], [ %5396, %5401 ], [ %5830, %5834 ]
  %5841 = phi float [ %5397, %5391 ], [ %5397, %5401 ], [ %5831, %5834 ]
  %5842 = call float @dx.op.unary.f32(i32 24, float %4944)  ; Sqrt(value)
  %5843 = call float @dx.op.unary.f32(i32 24, float %4945)  ; Sqrt(value)
  %5844 = call float @dx.op.unary.f32(i32 24, float %4946)  ; Sqrt(value)
  %5845 = fmul fast float %5842, %5839
  %5846 = fmul fast float %5843, %5840
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  br i1 %215, label %5849, label %5869

; <label>:5849                                    ; preds = %5835
  %5850 = fadd fast float %5841, %3747
  %5851 = fmul fast float %5850, %3748
  %5852 = fsub fast float 1.000000e+00, %3748
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5856 = fmul fast float %5855, %5853
  %5857 = fadd fast float %5856, %5851
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = fmul fast float %5859, %5131
  %5861 = fsub fast float %5857, %5860
  %5862 = fadd fast float %5846, %5845
  %5863 = fmul fast float %5848, %5862
  %5864 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5865 = fsub fast float %5861, %5864
  %5866 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5867 = fmul fast float %5865, %5866
  %5868 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  br label %5885

; <label>:5869                                    ; preds = %5835
  %5870 = fmul fast float %5844, %5841
  %5871 = fmul fast float %5848, %5845
  %5872 = fmul fast float %5848, %5846
  %5873 = fmul fast float %5870, %5848
  %5874 = add i32 %33, 356
  %5875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5874, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.i32 %5875, 0
  %5877 = and i32 %5876, 32
  %5878 = icmp eq i32 %5877, 0
  br i1 %5878, label %5885, label %5879

; <label>:5879                                    ; preds = %5869
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = fmul fast float %5881, 0x3FE99999A0000000
  %5883 = fadd fast float %5881, %5871
  %5884 = fadd fast float %5882, %5873
  br label %5885

; <label>:5885                                    ; preds = %5879, %5869, %5849
  %5886 = phi float [ %5863, %5849 ], [ %5883, %5879 ], [ %5871, %5869 ]
  %5887 = phi float [ %5868, %5849 ], [ %5872, %5879 ], [ %5872, %5869 ]
  %5888 = phi float [ 1.000000e+00, %5849 ], [ %5884, %5879 ], [ %5873, %5869 ]
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = fmul fast float %5890, %5837
  %5892 = fmul fast float %5890, %5838
  %5893 = fadd fast float %5837, %5836
  %5894 = select i1 %215, float %5893, float %5836
  %5895 = fmul float %5894, %5890
  %5896 = select i1 %215, float 0.000000e+00, float %5891
  %5897 = select i1 %215, float 0.000000e+00, float %5892
  %5898 = fmul fast float %5886, %5842
  %5899 = fmul fast float %5887, %5843
  %5900 = fmul fast float %5888, %5844
  %5901 = fadd fast float %5895, %5898
  %5902 = fadd fast float %5896, %5899
  %5903 = fadd fast float %5897, %5900
  %5904 = select i1 %215, float %5887, float %5902
  %5905 = select i1 %215, float %5888, float %5903
  %5906 = call float @dx.op.binary.f32(i32 36, float %5901, float 3.225500e+04)  ; FMin(a,b)
  %5907 = call float @dx.op.binary.f32(i32 36, float %5904, float 3.225500e+04)  ; FMin(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5905, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5906)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5908)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!46}
!dx.entryPoints = !{!47}

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
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !75}
!48 = !{!49, !73, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72}
!50 = !{i32 0, !"SV_Position", i8 9, i8 3, !51, i8 4, i32 1, i8 4, i32 0, i8 0, !52}
!51 = !{i32 0}
!52 = !{i32 3, i32 11}
!53 = !{i32 1, !"COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 1, i8 0, !54}
!54 = !{i32 3, i32 14}
!55 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 2, i8 0, !56}
!56 = !{i32 3, i32 3}
!57 = !{i32 3, !"NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 3, i8 0, !58}
!58 = !{i32 3, i32 7}
!59 = !{i32 4, !"TANGENT", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 4, i8 0, !60}
!60 = !{i32 3, i32 15}
!61 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 5, i8 0, !58}
!62 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !60}
!63 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 3, i32 7, i8 0, !58}
!64 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 8, i8 0, !60}
!65 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !51, i8 2, i32 1, i8 2, i32 9, i8 0, !56}
!66 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 10, i8 0, !60}
!67 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 11, i8 0, !58}
!68 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !51, i8 1, i32 1, i8 1, i32 12, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !51, i8 1, i32 1, i8 2, i32 12, i8 1, !69}
!71 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!72 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

