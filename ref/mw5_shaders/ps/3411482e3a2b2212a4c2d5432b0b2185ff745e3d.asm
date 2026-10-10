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
; shader hash: 5c9663f4024bc8ddc529fdeb2b9809c6
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
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %78
  %185 = fmul fast float %183, %79
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %0
  %205 = fmul fast float %113, %79
  %206 = fmul fast float %112, %78
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %206, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %201, 0
  %215 = and i1 %200, %214
  br label %216

; <label>:216                                     ; preds = %213, %204
  %217 = phi i1 [ %212, %204 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %78, 2.560000e+02
  %222 = frem fast float %79, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %33, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %33, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %33, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %33, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %33, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %33, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %33, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %33, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %33, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %33, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %33, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %33, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %33, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %33, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %33, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %33, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %33, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %33, 492
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fmul fast float %417, %68
  %421 = fmul fast float %418, %69
  %422 = fmul fast float %419, %70
  br label %423

; <label>:423                                     ; preds = %410, %216
  %424 = phi float [ %70, %216 ], [ %422, %410 ]
  %425 = phi float [ %69, %216 ], [ %421, %410 ]
  %426 = phi float [ %68, %216 ], [ %420, %410 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %423
  %432 = add i32 %33, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %426, float 1.000000e+00
  %438 = add i32 %33, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %425, float 1.000000e+00
  %444 = add i32 %33, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %424, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %423
  %451 = phi float [ %424, %423 ], [ %449, %431 ]
  %452 = phi float [ %425, %423 ], [ %443, %431 ]
  %453 = phi float [ %426, %423 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %33, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %33, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %967, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %39, float 1.000000e+00
  %469 = select i1 %467, float %40, float 0.000000e+00
  %470 = select i1 %467, float %41, float 0.000000e+00
  %471 = select i1 %467, float %42, float 1.000000e+00
  %472 = select i1 %467, float %43, float %66
  %473 = select i1 %467, float %44, float %67
  %474 = add i32 %33, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %33, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %33, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %33, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %269, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %259
  %511 = fmul fast float %270, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %261
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %33, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %764, label %568

; <label>:568                                     ; preds = %563
  %569 = add i32 %33, 376
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = and i32 %482, 255
  %580 = uitofp i32 %579 to float
  %581 = lshr i32 %482, 8
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %578, %580
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %585, 0x3F70101000000000
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 512
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %591

; <label>:591                                     ; preds = %568
  %592 = add i32 %33, 460
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %599

; <label>:599                                     ; preds = %591, %568
  %600 = phi float [ %598, %591 ], [ 1.000000e+00, %568 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 33554432
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %711, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %33, 224
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = add i32 %33, 228
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = add i32 %33, 220
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = and i32 %636, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %636, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %636, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = bitcast float %575 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %575, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %575
  %660 = fmul fast float %659, %658
  %661 = bitcast float %576 to i32
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 1597463174, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %576, 5.000000e-01
  %666 = fmul fast float %664, %664
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.500000e+00, %667
  %669 = fmul fast float %664, %576
  %670 = fmul fast float %669, %668
  %671 = bitcast float %577 to i32
  %672 = ashr i32 %671, 1
  %673 = sub nsw i32 1597463174, %672
  %674 = bitcast i32 %673 to float
  %675 = fmul fast float %577, 5.000000e-01
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.500000e+00, %677
  %679 = fmul fast float %674, %577
  %680 = fmul fast float %679, %678
  %681 = fsub fast float %660, %642
  %682 = fsub fast float %670, %646
  %683 = fsub fast float %680, %650
  %684 = fmul fast float %681, %610
  %685 = fmul fast float %682, %612
  %686 = fmul fast float %683, %617
  %687 = fadd fast float %684, %625
  %688 = fadd fast float %685, %629
  %689 = fadd fast float %686, %633
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = fmul fast float %690, %690
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fsub fast float %693, %575
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fmul fast float %696, %600
  %700 = fmul fast float %697, %600
  %701 = fmul fast float %698, %600
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %622, %586
  %706 = fsub fast float %705, %639
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fsub fast float %707, %586
  %709 = fmul fast float %708, %600
  %710 = fadd fast float %709, %586
  br label %764

; <label>:711                                     ; preds = %599
  %712 = and i32 %602, 134217728
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %748, label %714

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fmul fast float %718, %600
  %722 = fmul fast float %719, %600
  %723 = fmul fast float %720, %600
  %724 = fadd fast float %721, 5.000000e-01
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = fmul fast float %724, 2.000000e+00
  %731 = fsub fast float 1.000000e+00, %730
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %725, 2.000000e+00
  %736 = fsub fast float 1.000000e+00, %735
  %737 = fmul fast float %736, %728
  %738 = fadd fast float %737, %735
  %739 = fmul fast float %738, %728
  %740 = fmul fast float %726, 2.000000e+00
  %741 = fsub fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %729
  %743 = fadd fast float %742, %740
  %744 = fmul fast float %743, %729
  %745 = fmul fast float %734, %734
  %746 = fmul fast float %739, %739
  %747 = fmul fast float %744, %744
  br label %764

; <label>:748                                     ; preds = %711
  %749 = fmul fast float %246, %246
  %750 = fmul fast float %250, %250
  %751 = fmul fast float %254, %254
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fmul fast float %600, %752
  %756 = fmul fast float %600, %753
  %757 = fmul fast float %600, %754
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fmul fast float %758, %575
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  br label %764

; <label>:764                                     ; preds = %748, %714, %605, %563
  %765 = phi float [ %710, %605 ], [ %586, %714 ], [ %586, %748 ], [ 0x3FA23C0BE0000000, %563 ]
  %766 = phi float [ %702, %605 ], [ %745, %714 ], [ %761, %748 ], [ 1.000000e+00, %563 ]
  %767 = phi float [ %703, %605 ], [ %746, %714 ], [ %762, %748 ], [ 1.000000e+00, %563 ]
  %768 = phi float [ %704, %605 ], [ %747, %714 ], [ %763, %748 ], [ 1.000000e+00, %563 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 1
  %771 = and i32 %770, 1
  %772 = icmp ne i32 %771, 0
  %773 = add i32 %33, 356
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 32
  %777 = icmp ne i32 %776, 0
  %778 = and i1 %772, %777
  %779 = select i1 %778, float 1.000000e+00, float %766
  %780 = select i1 %778, float 0x3FD3333340000000, float %767
  %781 = select i1 %778, float 0x3FD3333340000000, float %768
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 32
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %858, label %786

; <label>:786                                     ; preds = %764
  %787 = add i32 %33, 92
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %33, 392
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = and i32 %789, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %789, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %789, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fmul fast float %796, %801
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fadd fast float %797, -5.000000e-01
  %813 = fadd fast float %799, -5.000000e-01
  %814 = fmul fast float %812, %808
  %815 = fmul fast float %813, %808
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fadd fast float %819, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fsub fast float %819, %821
  %825 = fmul fast float %824, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float %827, %828
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %825, float %829, float %823, float %825, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 25, float %830)  ; Rsqrt(value)
  %832 = fmul fast float %823, %831
  %833 = fmul fast float %825, %831
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %854, label %838

; <label>:838                                     ; preds = %786
  %839 = add i32 %33, 280
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %841, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float %811, %849
  %851 = fmul fast float %850, %843
  %852 = fadd fast float %851, %847
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %838, %786
  %855 = phi float [ %853, %838 ], [ %811, %786 ]
  %856 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %858

; <label>:858                                     ; preds = %854, %764
  %859 = phi float [ %855, %854 ], [ 0x3FD6666660000000, %764 ]
  %860 = phi float [ %856, %854 ], [ 0.000000e+00, %764 ]
  %861 = phi float [ %857, %854 ], [ 0.000000e+00, %764 ]
  %862 = phi float [ %798, %854 ], [ 1.000000e+00, %764 ]
  %863 = add i32 %33, 160
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 22
  %867 = shl nuw nsw i32 %866, 5
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 64
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %906, label %873

; <label>:873                                     ; preds = %858
  %874 = add i32 %33, 408
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 131072
  %882 = icmp eq i32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %884, %234
  %888 = fmul fast float %885, %237
  %889 = fmul fast float %886, %240
  br i1 %882, label %896, label %890

; <label>:890                                     ; preds = %873
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %889
  br label %896

; <label>:896                                     ; preds = %890, %873
  %897 = phi float [ %893, %890 ], [ %887, %873 ]
  %898 = phi float [ %894, %890 ], [ %888, %873 ]
  %899 = phi float [ %895, %890 ], [ %889, %873 ]
  %900 = fmul fast float %897, %868
  %901 = select i1 %217, float %900, float %897
  %902 = call float @dx.op.dot3.f32(i32 55, float %901, float %898, float %899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = select i1 %217, float 0.000000e+00, float %897
  %904 = select i1 %217, float %902, float %898
  %905 = select i1 %217, float 0.000000e+00, float %899
  br label %906

; <label>:906                                     ; preds = %896, %858
  %907 = phi float [ %903, %896 ], [ 0.000000e+00, %858 ]
  %908 = phi float [ %904, %896 ], [ 0.000000e+00, %858 ]
  %909 = phi float [ %905, %896 ], [ 0.000000e+00, %858 ]
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 59392
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %951, label %914

; <label>:914                                     ; preds = %906
  %915 = add i32 %33, 476
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %75, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 2
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 1048576
  %925 = icmp ne i32 %924, 0
  %926 = select i1 %925, float 1.000000e+00, float %921
  %927 = and i32 %923, 16384
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %939, label %929

; <label>:929                                     ; preds = %914
  %930 = extractvalue %dx.types.ResRet.f32 %920, 0
  %931 = add i32 %33, 96
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 24
  %935 = uitofp i32 %934 to float
  %936 = fmul fast float %930, 0x3F70101020000000
  %937 = select i1 %925, float 0x3F70101020000000, float %936
  %938 = fmul fast float %937, %935
  br label %939

; <label>:939                                     ; preds = %929, %914
  %940 = phi float [ %938, %929 ], [ 0.000000e+00, %914 ]
  %941 = and i32 %923, 32768
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %951, label %943

; <label>:943                                     ; preds = %939
  %944 = add i32 %33, 100
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 22
  %948 = shl nuw nsw i32 %947, 5
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = fmul fast float %949, %926
  br label %951

; <label>:951                                     ; preds = %943, %939, %906
  %952 = phi float [ %940, %943 ], [ %940, %939 ], [ 0.000000e+00, %906 ]
  %953 = phi float [ %950, %943 ], [ 0.000000e+00, %939 ], [ 0.000000e+00, %906 ]
  %954 = add i32 %33, 96
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %956, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %963 = fmul fast float %961, %962
  %964 = fadd fast float %963, %958
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  br label %967

; <label>:967                                     ; preds = %951, %450
  %968 = phi float [ 0.000000e+00, %450 ], [ %860, %951 ]
  %969 = phi float [ 0.000000e+00, %450 ], [ %861, %951 ]
  %970 = phi float [ 0.000000e+00, %450 ], [ %907, %951 ]
  %971 = phi float [ 0.000000e+00, %450 ], [ %908, %951 ]
  %972 = phi float [ 0.000000e+00, %450 ], [ %909, %951 ]
  %973 = phi float [ 0.000000e+00, %450 ], [ %779, %951 ]
  %974 = phi float [ 0.000000e+00, %450 ], [ %780, %951 ]
  %975 = phi float [ 0.000000e+00, %450 ], [ %781, %951 ]
  %976 = phi float [ 0.000000e+00, %450 ], [ %765, %951 ]
  %977 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %951 ]
  %978 = phi float [ 0.000000e+00, %450 ], [ %859, %951 ]
  %979 = phi float [ 0.000000e+00, %450 ], [ %862, %951 ]
  %980 = phi float [ 0.000000e+00, %450 ], [ %952, %951 ]
  %981 = phi float [ 0.000000e+00, %450 ], [ %953, %951 ]
  %982 = phi float [ 0.000000e+00, %450 ], [ %966, %951 ]
  br i1 %401, label %1773, label %983

; <label>:983                                     ; preds = %967
  %984 = icmp ult i32 %456, 2
  %985 = add i32 %33, 40
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %33, 44
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = or i32 %990, %987
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %1773, label %993

; <label>:993                                     ; preds = %983
  %994 = and i32 %987, 262144
  %995 = icmp ne i32 %994, 0
  %996 = select i1 %995, float %39, float 1.000000e+00
  %997 = select i1 %995, float %40, float 0.000000e+00
  %998 = select i1 %995, float %41, float 0.000000e+00
  %999 = select i1 %995, float %42, float 1.000000e+00
  %1000 = select i1 %995, float %43, float %66
  %1001 = select i1 %995, float %44, float %67
  %1002 = add i32 %33, 300
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = lshr i32 %1004, 16
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = fmul fast float %1006, 0x3F50624DE0000000
  %1008 = add i32 %33, 104
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = lshr i32 %1010, 16
  %1012 = and i32 %1011, 255
  %1013 = lshr i32 %1010, 24
  %1014 = add i32 %33, 308
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 65535
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = lshr i32 %1016, 16
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = add i32 %33, 48
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 22
  %1025 = shl nuw nsw i32 %1024, 5
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = shl i32 %1023, 4
  %1028 = and i32 %1027, 32752
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = lshr i32 %1023, 7
  %1031 = and i32 %1030, 32752
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 3
  %1035 = fmul fast float %1034, 1.000000e+03
  %1036 = fmul fast float %311, %1035
  %1037 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1038 = fadd fast float %1037, %301
  %1039 = fmul fast float %312, %1035
  %1040 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1041 = fadd fast float %1040, %303
  %1042 = fmul fast float %1007, %1035
  %1043 = call float @dx.op.unary.f32(i32 22, float %1042)  ; Frc(value)
  %1044 = fmul fast float %1043, 0x401921FB60000000
  %1045 = fadd fast float %1044, %1026
  %1046 = call float @dx.op.unary.f32(i32 13, float %1045)  ; Sin(value)
  %1047 = call float @dx.op.unary.f32(i32 12, float %1045)  ; Cos(value)
  %1048 = fsub fast float -0.000000e+00, %1046
  %1049 = fadd fast float %1000, -5.000000e-01
  %1050 = fadd fast float %1001, -5.000000e-01
  %1051 = fmul fast float %1018, %1049
  %1052 = fmul fast float %1020, %1050
  %1053 = fadd fast float %1051, 5.000000e-01
  %1054 = fadd fast float %1052, 5.000000e-01
  %1055 = fmul fast float %1029, %1053
  %1056 = fmul fast float %1032, %1054
  %1057 = fmul fast float %1047, %1055
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1056, float %1057)  ; FMad(a,b,c)
  %1059 = fmul fast float %1046, %1055
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1056, float %1059)  ; FMad(a,b,c)
  %1061 = fadd fast float %1038, %1058
  %1062 = fadd fast float %1041, %1060
  %1063 = icmp ugt i32 %1012, 1
  %1064 = icmp ugt i32 %1010, 33554431
  %1065 = or i1 %1064, %1063
  br i1 %1065, label %1066, label %1091

; <label>:1066                                    ; preds = %993
  %1067 = add i32 %33, 244
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = lshr i32 %1069, 16
  %1071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1070)  ; LegacyF16ToF32(value)
  %1072 = fmul fast float %1034, %1071
  %1073 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1074 = mul nuw nsw i32 %1012, %1013
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1073, %1075
  %1077 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1078 = fptoui float %1077 to i32
  %1079 = urem i32 %1078, %1012
  %1080 = udiv i32 %1078, %1013
  %1081 = call float @dx.op.unary.f32(i32 22, float %1061)  ; Frc(value)
  %1082 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1083 = uitofp i32 %1079 to float
  %1084 = uitofp i32 %1080 to float
  %1085 = fadd fast float %1081, %1083
  %1086 = fadd fast float %1082, %1084
  %1087 = uitofp i32 %1012 to float
  %1088 = uitofp i32 %1013 to float
  %1089 = fdiv fast float %1085, %1087
  %1090 = fdiv fast float %1086, %1088
  br label %1091

; <label>:1091                                    ; preds = %1066, %993
  %1092 = phi float [ %1089, %1066 ], [ %1061, %993 ]
  %1093 = phi float [ %1090, %1066 ], [ %1062, %993 ]
  %1094 = and i32 %987, 256
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1142, label %1096

; <label>:1096                                    ; preds = %1091
  %1097 = add i32 %33, 444
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %75, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = add i32 %33, 116
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = shl i32 %1106, 4
  %1108 = and i32 %1107, 32752
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = lshr i32 %1106, 7
  %1111 = and i32 %1110, 32752
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = fsub fast float 1.000000e+00, %453
  %1114 = call float @dx.op.binary.f32(i32 35, float %1113, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1115 = bitcast float %453 to i32
  %1116 = sitofp i32 %1115 to float
  %1117 = fadd fast float %1116, 0xC1CFBF8940000000
  %1118 = fmul fast float %1112, %1117
  %1119 = fadd fast float %1118, 0x41CFBF8940000000
  %1120 = fptosi float %1119 to i32
  %1121 = bitcast i32 %1120 to float
  %1122 = bitcast float %1114 to i32
  %1123 = sitofp i32 %1122 to float
  %1124 = fadd fast float %1123, 0xC1CFBF8940000000
  %1125 = fmul fast float %1124, %1112
  %1126 = fadd fast float %1125, 0x41CFBF8940000000
  %1127 = fptosi float %1126 to i32
  %1128 = bitcast i32 %1127 to float
  %1129 = fmul fast float %1121, %1109
  %1130 = fmul fast float %1128, %1109
  %1131 = fsub fast float %1114, %1129
  %1132 = fadd fast float %1130, %1114
  %1133 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1134 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1135 = fsub fast float %1103, %1133
  %1136 = fsub fast float %1134, %1133
  %1137 = bitcast float %1136 to i32
  %1138 = sub nsw i32 2129859010, %1137
  %1139 = bitcast i32 %1138 to float
  %1140 = fmul fast float %1139, %1135
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  br label %1142

; <label>:1142                                    ; preds = %1096, %1091
  %1143 = phi float [ %1141, %1096 ], [ %453, %1091 ]
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 128
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1164, label %1148

; <label>:1148                                    ; preds = %1142
  %1149 = add i32 %33, 428
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %1151, 0
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1153, %dx.types.Handle %75, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 524288
  %1159 = icmp ne i32 %1158, 0
  %1160 = fcmp fast ogt float %1155, 0x3FE0101020000000
  %1161 = select i1 %1160, float 1.000000e+00, float 0.000000e+00
  %1162 = select i1 %1159, float %1161, float %1155
  %1163 = fmul fast float %1162, %1143
  br label %1164

; <label>:1164                                    ; preds = %1148, %1142
  %1165 = phi float [ %1163, %1148 ], [ %1143, %1142 ]
  %1166 = fcmp fast ult float %1165, 0x3F70101020000000
  br i1 %1166, label %1773, label %1167

; <label>:1167                                    ; preds = %1164
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 16
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1370, label %1172

; <label>:1172                                    ; preds = %1167
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %33, 380
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %1177, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1179, %dx.types.Handle %74, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1184 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1185 = and i32 %1174, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = lshr i32 %1174, 8
  %1188 = and i32 %1187, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1184, %1186
  %1191 = fadd fast float %1190, %1189
  %1192 = fmul fast float %1191, 0x3F70101000000000
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 512
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1205, label %1197

; <label>:1197                                    ; preds = %1172
  %1198 = add i32 %33, 464
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %1200, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1202, %dx.types.Handle %75, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  br label %1205

; <label>:1205                                    ; preds = %1197, %1172
  %1206 = phi float [ %1204, %1197 ], [ 1.000000e+00, %1172 ]
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 33554432
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1317, label %1211

; <label>:1211                                    ; preds = %1205
  %1212 = add i32 %33, 240
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1214, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = add i32 %33, 244
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 65535
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = lshr i32 %1225, 24
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F70101020000000
  %1229 = and i32 %1225, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = lshr i32 %1225, 8
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1234, 0x3F70101020000000
  %1236 = lshr i32 %1225, 16
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = add i32 %33, 236
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = lshr i32 %1242, 24
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = and i32 %1242, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = lshr i32 %1242, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = lshr i32 %1242, 16
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = bitcast float %1181 to i32
  %1258 = ashr i32 %1257, 1
  %1259 = sub nsw i32 1597463174, %1258
  %1260 = bitcast i32 %1259 to float
  %1261 = fmul fast float %1181, 5.000000e-01
  %1262 = fmul fast float %1260, %1260
  %1263 = fmul fast float %1262, %1261
  %1264 = fsub fast float 1.500000e+00, %1263
  %1265 = fmul fast float %1260, %1181
  %1266 = fmul fast float %1265, %1264
  %1267 = bitcast float %1182 to i32
  %1268 = ashr i32 %1267, 1
  %1269 = sub nsw i32 1597463174, %1268
  %1270 = bitcast i32 %1269 to float
  %1271 = fmul fast float %1182, 5.000000e-01
  %1272 = fmul fast float %1270, %1270
  %1273 = fmul fast float %1272, %1271
  %1274 = fsub fast float 1.500000e+00, %1273
  %1275 = fmul fast float %1270, %1182
  %1276 = fmul fast float %1275, %1274
  %1277 = bitcast float %1183 to i32
  %1278 = ashr i32 %1277, 1
  %1279 = sub nsw i32 1597463174, %1278
  %1280 = bitcast i32 %1279 to float
  %1281 = fmul fast float %1183, 5.000000e-01
  %1282 = fmul fast float %1280, %1280
  %1283 = fmul fast float %1282, %1281
  %1284 = fsub fast float 1.500000e+00, %1283
  %1285 = fmul fast float %1280, %1183
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float %1266, %1248
  %1288 = fsub fast float %1276, %1252
  %1289 = fsub fast float %1286, %1256
  %1290 = fmul fast float %1287, %1216
  %1291 = fmul fast float %1288, %1218
  %1292 = fmul fast float %1289, %1223
  %1293 = fadd fast float %1290, %1231
  %1294 = fadd fast float %1291, %1235
  %1295 = fadd fast float %1292, %1239
  %1296 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1297 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1299 = fmul fast float %1296, %1296
  %1300 = fmul fast float %1297, %1297
  %1301 = fmul fast float %1298, %1298
  %1302 = fsub fast float %1299, %1181
  %1303 = fsub fast float %1300, %1182
  %1304 = fsub fast float %1301, %1183
  %1305 = fmul fast float %1302, %1206
  %1306 = fmul fast float %1303, %1206
  %1307 = fmul fast float %1304, %1206
  %1308 = fadd fast float %1305, %1181
  %1309 = fadd fast float %1306, %1182
  %1310 = fadd fast float %1307, %1183
  %1311 = fadd fast float %1228, %1192
  %1312 = fsub fast float %1311, %1245
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fsub fast float %1313, %1192
  %1315 = fmul fast float %1314, %1206
  %1316 = fadd fast float %1315, %1192
  br label %1370

; <label>:1317                                    ; preds = %1205
  %1318 = and i32 %1208, 134217728
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1354, label %1320

; <label>:1320                                    ; preds = %1317
  %1321 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1323 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1324 = fadd fast float %1321, -5.000000e-01
  %1325 = fadd fast float %1322, -5.000000e-01
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fmul fast float %1324, %1206
  %1328 = fmul fast float %1325, %1206
  %1329 = fmul fast float %1326, %1206
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 24, float %1181)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1335 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1336 = fmul fast float %1330, 2.000000e+00
  %1337 = fsub fast float 1.000000e+00, %1336
  %1338 = fmul fast float %1337, %1333
  %1339 = fadd fast float %1338, %1336
  %1340 = fmul fast float %1339, %1333
  %1341 = fmul fast float %1331, 2.000000e+00
  %1342 = fsub fast float 1.000000e+00, %1341
  %1343 = fmul fast float %1342, %1334
  %1344 = fadd fast float %1343, %1341
  %1345 = fmul fast float %1344, %1334
  %1346 = fmul fast float %1332, 2.000000e+00
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1347, %1335
  %1349 = fadd fast float %1348, %1346
  %1350 = fmul fast float %1349, %1335
  %1351 = fmul fast float %1340, %1340
  %1352 = fmul fast float %1345, %1345
  %1353 = fmul fast float %1350, %1350
  br label %1370

; <label>:1354                                    ; preds = %1317
  %1355 = fmul fast float %288, %288
  %1356 = fmul fast float %292, %292
  %1357 = fmul fast float %296, %296
  %1358 = fadd fast float %1355, -1.000000e+00
  %1359 = fadd fast float %1356, -1.000000e+00
  %1360 = fadd fast float %1357, -1.000000e+00
  %1361 = fmul fast float %1206, %1358
  %1362 = fmul fast float %1206, %1359
  %1363 = fmul fast float %1206, %1360
  %1364 = fadd fast float %1361, 1.000000e+00
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fmul fast float %1364, %1181
  %1368 = fmul fast float %1365, %1182
  %1369 = fmul fast float %1366, %1183
  br label %1370

; <label>:1370                                    ; preds = %1354, %1320, %1211, %1167
  %1371 = phi float [ %1316, %1211 ], [ %1192, %1320 ], [ %1192, %1354 ], [ 0x3FA23C0BE0000000, %1167 ]
  %1372 = phi float [ %1308, %1211 ], [ %1351, %1320 ], [ %1367, %1354 ], [ 1.000000e+00, %1167 ]
  %1373 = phi float [ %1309, %1211 ], [ %1352, %1320 ], [ %1368, %1354 ], [ 1.000000e+00, %1167 ]
  %1374 = phi float [ %1310, %1211 ], [ %1353, %1320 ], [ %1369, %1354 ], [ 1.000000e+00, %1167 ]
  %1375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.i32 %1375, 1
  %1377 = and i32 %1376, 1
  %1378 = icmp ne i32 %1377, 0
  %1379 = add i32 %33, 356
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 32
  %1383 = icmp ne i32 %1382, 0
  %1384 = and i1 %1378, %1383
  %1385 = select i1 %1384, float 1.000000e+00, float %1372
  %1386 = select i1 %1384, float 0x3FD3333340000000, float %1373
  %1387 = select i1 %1384, float 0x3FD3333340000000, float %1374
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 32
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1464, label %1392

; <label>:1392                                    ; preds = %1370
  %1393 = add i32 %33, 108
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = add i32 %33, 396
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = add i32 %1398, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1400, %dx.types.Handle %74, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = extractvalue %dx.types.ResRet.f32 %1401, 3
  %1406 = and i32 %1395, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = lshr i32 %1395, 8
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = lshr i32 %1395, 16
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101000000000
  %1415 = fmul fast float %1402, %1407
  %1416 = fadd fast float %1415, %1410
  %1417 = fmul fast float %1416, 0x3F70101000000000
  %1418 = fadd fast float %1403, -5.000000e-01
  %1419 = fadd fast float %1405, -5.000000e-01
  %1420 = fmul fast float %1418, %1414
  %1421 = fmul fast float %1419, %1414
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fmul fast float %1422, 2.000000e+00
  %1425 = fadd fast float %1424, -1.000000e+00
  %1426 = fmul fast float %1423, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = fadd fast float %1425, %1427
  %1429 = fmul fast float %1428, 5.000000e-01
  %1430 = fsub fast float %1425, %1427
  %1431 = fmul fast float %1430, 5.000000e-01
  %1432 = call float @dx.op.unary.f32(i32 6, float %1429)  ; FAbs(value)
  %1433 = fsub fast float 1.000000e+00, %1432
  %1434 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1435 = fsub fast float %1433, %1434
  %1436 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1431, float %1435, float %1429, float %1431, float %1435)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = call float @dx.op.unary.f32(i32 25, float %1436)  ; Rsqrt(value)
  %1438 = fmul fast float %1429, %1437
  %1439 = fmul fast float %1431, %1437
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 67108864
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1460, label %1444

; <label>:1444                                    ; preds = %1392
  %1445 = add i32 %33, 296
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = lshr i32 %1447, 16
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = fsub fast float %1417, %1455
  %1457 = fmul fast float %1456, %1449
  %1458 = fadd fast float %1457, %1453
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  br label %1460

; <label>:1460                                    ; preds = %1444, %1392
  %1461 = phi float [ %1459, %1444 ], [ %1417, %1392 ]
  %1462 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %996, float %997)  ; Dot2(ax,ay,bx,by)
  %1463 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %998, float %999)  ; Dot2(ax,ay,bx,by)
  br label %1464

; <label>:1464                                    ; preds = %1460, %1370
  %1465 = phi float [ %1461, %1460 ], [ 0x3FD6666660000000, %1370 ]
  %1466 = phi float [ %1462, %1460 ], [ 0.000000e+00, %1370 ]
  %1467 = phi float [ %1463, %1460 ], [ 0.000000e+00, %1370 ]
  %1468 = phi float [ %1404, %1460 ], [ 1.000000e+00, %1370 ]
  %1469 = add i32 %33, 176
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = lshr i32 %1471, 22
  %1473 = shl nuw nsw i32 %1472, 5
  %1474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1473)  ; LegacyF16ToF32(value)
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 64
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1512, label %1479

; <label>:1479                                    ; preds = %1464
  %1480 = add i32 %33, 412
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 131072
  %1488 = icmp eq i32 %1487, 0
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1484, %dx.types.Handle %74, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1492 = extractvalue %dx.types.ResRet.f32 %1489, 2
  %1493 = fmul fast float %1490, %276
  %1494 = fmul fast float %1491, %279
  %1495 = fmul fast float %1492, %282
  br i1 %1488, label %1502, label %1496

; <label>:1496                                    ; preds = %1479
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = fmul fast float %1498, %1493
  %1500 = fmul fast float %1498, %1494
  %1501 = fmul fast float %1498, %1495
  br label %1502

; <label>:1502                                    ; preds = %1496, %1479
  %1503 = phi float [ %1499, %1496 ], [ %1493, %1479 ]
  %1504 = phi float [ %1500, %1496 ], [ %1494, %1479 ]
  %1505 = phi float [ %1501, %1496 ], [ %1495, %1479 ]
  %1506 = fmul fast float %1503, %1474
  %1507 = select i1 %217, float %1506, float %1503
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1507, float %1504, float %1505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = select i1 %217, float 0.000000e+00, float %1503
  %1510 = select i1 %217, float %1508, float %1504
  %1511 = select i1 %217, float 0.000000e+00, float %1505
  br label %1512

; <label>:1512                                    ; preds = %1502, %1464
  %1513 = phi float [ %1509, %1502 ], [ 0.000000e+00, %1464 ]
  %1514 = phi float [ %1510, %1502 ], [ 0.000000e+00, %1464 ]
  %1515 = phi float [ %1511, %1502 ], [ 0.000000e+00, %1464 ]
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 59392
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1557, label %1520

; <label>:1520                                    ; preds = %1512
  %1521 = add i32 %33, 480
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %75, float %1092, float %1093, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 1048576
  %1531 = icmp ne i32 %1530, 0
  %1532 = select i1 %1531, float 1.000000e+00, float %1527
  %1533 = and i32 %1529, 16384
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1545, label %1535

; <label>:1535                                    ; preds = %1520
  %1536 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1537 = add i32 %33, 112
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 24
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1536, 0x3F70101020000000
  %1543 = select i1 %1531, float 0x3F70101020000000, float %1542
  %1544 = fmul fast float %1543, %1541
  br label %1545

; <label>:1545                                    ; preds = %1535, %1520
  %1546 = phi float [ %1544, %1535 ], [ 0.000000e+00, %1520 ]
  %1547 = and i32 %1529, 32768
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1557, label %1549

; <label>:1549                                    ; preds = %1545
  %1550 = add i32 %33, 116
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = lshr i32 %1552, 22
  %1554 = shl nuw nsw i32 %1553, 5
  %1555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1554)  ; LegacyF16ToF32(value)
  %1556 = fmul fast float %1555, %1532
  br label %1557

; <label>:1557                                    ; preds = %1549, %1545, %1512
  %1558 = phi float [ %1546, %1549 ], [ %1546, %1545 ], [ 0.000000e+00, %1512 ]
  %1559 = phi float [ %1556, %1549 ], [ 0.000000e+00, %1545 ], [ 0.000000e+00, %1512 ]
  %1560 = add i32 %33, 112
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1562, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = call float @dx.op.dot3.f32(i32 55, float %1385, float %1386, float %1387, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1569 = fmul fast float %1567, %1568
  %1570 = fadd fast float %1569, %1564
  %1571 = fmul fast float %1570, 0x3F70101020000000
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  br i1 %984, label %1573, label %1581

; <label>:1573                                    ; preds = %1557
  %1574 = fsub fast float 1.000000e+00, %1165
  %1575 = fmul fast float %1574, %973
  %1576 = fmul fast float %1574, %974
  %1577 = fmul fast float %1574, %975
  %1578 = fmul fast float %1574, %970
  %1579 = fmul fast float %1574, %971
  %1580 = fmul fast float %1574, %972
  br label %1581

; <label>:1581                                    ; preds = %1573, %1557
  %1582 = phi float [ %1578, %1573 ], [ %970, %1557 ]
  %1583 = phi float [ %1579, %1573 ], [ %971, %1557 ]
  %1584 = phi float [ %1580, %1573 ], [ %972, %1557 ]
  %1585 = phi float [ %1575, %1573 ], [ %973, %1557 ]
  %1586 = phi float [ %1576, %1573 ], [ %974, %1557 ]
  %1587 = phi float [ %1577, %1573 ], [ %975, %1557 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 3
  %1591 = icmp eq i32 %1590, 3
  br i1 %1591, label %1670, label %1592

; <label>:1592                                    ; preds = %1581
  %1593 = and i32 %1589, 16
  %1594 = icmp ne i32 %1593, 0
  %1595 = select i1 %1594, float %1165, float 0.000000e+00
  %1596 = icmp eq i32 %1590, 0
  br i1 %1596, label %1597, label %1625

; <label>:1597                                    ; preds = %1592
  %1598 = and i32 %1589, 64
  %1599 = icmp ne i32 %1598, 0
  %1600 = select i1 %1599, float %1165, float 0.000000e+00
  %1601 = fsub fast float %1385, %1585
  %1602 = fsub fast float %1386, %1586
  %1603 = fsub fast float %1387, %1587
  %1604 = fmul fast float %1595, %1601
  %1605 = fmul fast float %1595, %1602
  %1606 = fmul fast float %1595, %1603
  %1607 = fadd fast float %1604, %1585
  %1608 = fadd fast float %1605, %1586
  %1609 = fadd fast float %1606, %1587
  %1610 = fsub fast float %1371, %976
  %1611 = fmul fast float %1595, %1610
  %1612 = fadd fast float %1611, %976
  %1613 = fsub fast float %1513, %1582
  %1614 = fsub fast float %1514, %1583
  %1615 = fsub fast float %1515, %1584
  %1616 = fmul fast float %1600, %1613
  %1617 = fmul fast float %1600, %1614
  %1618 = fmul fast float %1600, %1615
  %1619 = fadd fast float %1616, %1582
  %1620 = fadd fast float %1617, %1583
  %1621 = fadd fast float %1618, %1584
  %1622 = fsub fast float %1572, %982
  %1623 = fmul fast float %1595, %1622
  %1624 = fadd fast float %1623, %982
  br label %1670

; <label>:1625                                    ; preds = %1592
  %1626 = icmp eq i32 %1590, 1
  br i1 %1626, label %1627, label %1640

; <label>:1627                                    ; preds = %1625
  %1628 = fadd fast float %1385, -1.000000e+00
  %1629 = fadd fast float %1386, -1.000000e+00
  %1630 = fadd fast float %1387, -1.000000e+00
  %1631 = fmul fast float %1595, %1628
  %1632 = fmul fast float %1595, %1629
  %1633 = fmul fast float %1595, %1630
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fadd fast float %1632, 1.000000e+00
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fmul fast float %1634, %1585
  %1638 = fmul fast float %1635, %1586
  %1639 = fmul fast float %1636, %1587
  br label %1670

; <label>:1640                                    ; preds = %1625
  %1641 = icmp eq i32 %1590, 2
  br i1 %1641, label %1642, label %1670

; <label>:1642                                    ; preds = %1640
  %1643 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1644 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1645 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1646 = fadd fast float %1643, -5.000000e-01
  %1647 = fadd fast float %1644, -5.000000e-01
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fmul fast float %1646, %1595
  %1650 = fmul fast float %1647, %1595
  %1651 = fmul fast float %1648, %1595
  %1652 = fadd fast float %1649, 5.000000e-01
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = fadd fast float %1651, 5.000000e-01
  %1655 = fmul fast float %1652, 2.000000e+00
  %1656 = fsub fast float 1.000000e+00, %1655
  %1657 = fmul fast float %1656, %1585
  %1658 = fadd fast float %1657, %1655
  %1659 = fmul fast float %1658, %1585
  %1660 = fmul fast float %1653, 2.000000e+00
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = fmul fast float %1661, %1586
  %1663 = fadd fast float %1662, %1660
  %1664 = fmul fast float %1663, %1586
  %1665 = fmul fast float %1654, 2.000000e+00
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = fmul fast float %1666, %1587
  %1668 = fadd fast float %1667, %1665
  %1669 = fmul fast float %1668, %1587
  br label %1670

; <label>:1670                                    ; preds = %1642, %1640, %1627, %1597, %1581
  %1671 = phi float [ %1582, %1581 ], [ %1582, %1642 ], [ %1582, %1640 ], [ %1582, %1627 ], [ %1619, %1597 ]
  %1672 = phi float [ %1583, %1581 ], [ %1583, %1642 ], [ %1583, %1640 ], [ %1583, %1627 ], [ %1620, %1597 ]
  %1673 = phi float [ %1584, %1581 ], [ %1584, %1642 ], [ %1584, %1640 ], [ %1584, %1627 ], [ %1621, %1597 ]
  %1674 = phi float [ %1585, %1581 ], [ %1659, %1642 ], [ %1585, %1640 ], [ %1637, %1627 ], [ %1607, %1597 ]
  %1675 = phi float [ %1586, %1581 ], [ %1664, %1642 ], [ %1586, %1640 ], [ %1638, %1627 ], [ %1608, %1597 ]
  %1676 = phi float [ %1587, %1581 ], [ %1669, %1642 ], [ %1587, %1640 ], [ %1639, %1627 ], [ %1609, %1597 ]
  %1677 = phi float [ %976, %1581 ], [ %976, %1642 ], [ %976, %1640 ], [ %976, %1627 ], [ %1612, %1597 ]
  %1678 = phi float [ %982, %1581 ], [ %982, %1642 ], [ %982, %1640 ], [ %982, %1627 ], [ %1624, %1597 ]
  %1679 = and i32 %1589, 12
  %1680 = icmp eq i32 %1679, 12
  br i1 %1680, label %1773, label %1681

; <label>:1681                                    ; preds = %1670
  %1682 = and i32 %1589, 2097184
  %1683 = icmp eq i32 %1682, 2097184
  %1684 = select i1 %1683, float %1165, float 0.000000e+00
  %1685 = and i32 %1589, 4194336
  %1686 = icmp eq i32 %1685, 4194336
  %1687 = select i1 %1686, float %1165, float 0.000000e+00
  %1688 = and i32 %1589, 8388640
  %1689 = icmp eq i32 %1688, 8388640
  %1690 = select i1 %1689, float %1165, float 0.000000e+00
  %1691 = and i32 %1589, 16384
  %1692 = icmp ne i32 %1691, 0
  %1693 = select i1 %1692, float %1165, float 0.000000e+00
  %1694 = and i32 %1589, 32768
  %1695 = icmp ne i32 %1694, 0
  %1696 = select i1 %1695, float %1165, float 0.000000e+00
  %1697 = icmp eq i32 %1679, 0
  br i1 %1697, label %1698, label %1717

; <label>:1698                                    ; preds = %1681
  %1699 = fsub fast float %1466, %968
  %1700 = fsub fast float %1467, %969
  %1701 = fmul fast float %1684, %1699
  %1702 = fmul fast float %1684, %1700
  %1703 = fadd fast float %1701, %968
  %1704 = fadd fast float %1702, %969
  %1705 = fsub fast float %1468, %979
  %1706 = fmul fast float %1687, %1705
  %1707 = fadd fast float %1706, %979
  %1708 = fsub fast float %1465, %978
  %1709 = fmul fast float %1690, %1708
  %1710 = fadd fast float %1709, %978
  %1711 = fsub fast float %1558, %980
  %1712 = fmul fast float %1693, %1711
  %1713 = fadd fast float %1712, %980
  %1714 = fsub fast float %1559, %981
  %1715 = fmul fast float %1696, %1714
  %1716 = fadd fast float %1715, %981
  br label %1773

; <label>:1717                                    ; preds = %1681
  %1718 = icmp eq i32 %1679, 4
  br i1 %1718, label %1719, label %1755

; <label>:1719                                    ; preds = %1717
  %1720 = fmul fast float %1684, %1466
  %1721 = fmul fast float %1684, %1467
  %1722 = fadd fast float %1720, %968
  %1723 = fadd fast float %1721, %969
  %1724 = call float @dx.op.binary.f32(i32 36, float %979, float %1468)  ; FMin(a,b)
  %1725 = fsub fast float %1724, %979
  %1726 = fmul fast float %1725, %1687
  %1727 = fadd fast float %1726, %979
  %1728 = fadd fast float %1465, %978
  %1729 = fmul fast float %1728, 0x3FF337FAE0000000
  %1730 = fmul fast float %978, %978
  %1731 = fmul fast float %1465, %1465
  %1732 = fadd fast float %1731, %1730
  %1733 = fmul fast float %1732, 0x3FE5152B00000000
  %1734 = fmul fast float %978, 0xBFCC1F85E0000000
  %1735 = fmul fast float %1734, %1465
  %1736 = fadd fast float %1735, 0xBFE1363700000000
  %1737 = fadd fast float %1736, %1729
  %1738 = fsub fast float %1737, %1733
  %1739 = fmul fast float %1728, 0x3FBA6F0D00000000
  %1740 = fmul fast float %1732, 0x3FD0432880000000
  %1741 = fmul fast float %978, 0xBFEF110800000000
  %1742 = fmul fast float %1741, %1465
  %1743 = fadd fast float %1742, 1.000000e+00
  %1744 = fsub fast float %1743, %1739
  %1745 = fadd fast float %1744, %1740
  %1746 = fdiv fast float %1738, %1745
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fsub fast float %1747, %978
  %1749 = fmul fast float %1748, %1690
  %1750 = fadd fast float %1749, %978
  %1751 = fmul fast float %1693, %1558
  %1752 = fadd fast float %1751, %980
  %1753 = fmul fast float %1696, %1559
  %1754 = fadd fast float %1753, %981
  br label %1773

; <label>:1755                                    ; preds = %1717
  %1756 = icmp eq i32 %1679, 8
  br i1 %1756, label %1757, label %1773

; <label>:1757                                    ; preds = %1755
  %1758 = fmul fast float %1684, %1466
  %1759 = fmul fast float %1684, %1467
  %1760 = fadd fast float %1758, %968
  %1761 = fadd fast float %1759, %969
  %1762 = call float @dx.op.binary.f32(i32 36, float %979, float %1468)  ; FMin(a,b)
  %1763 = fsub fast float %1762, %979
  %1764 = fmul fast float %1763, %1687
  %1765 = fadd fast float %1764, %979
  %1766 = fsub fast float %1465, %978
  %1767 = fmul fast float %1690, %1766
  %1768 = fadd fast float %1767, %978
  %1769 = fmul fast float %1693, %1558
  %1770 = fadd fast float %1769, %980
  %1771 = fmul fast float %1696, %1559
  %1772 = fadd fast float %1771, %981
  br label %1773

; <label>:1773                                    ; preds = %1757, %1755, %1719, %1698, %1670, %1164, %983, %967
  %1774 = phi float [ %968, %1670 ], [ %968, %1164 ], [ %968, %967 ], [ %1760, %1757 ], [ %968, %1755 ], [ %1722, %1719 ], [ %1703, %1698 ], [ %968, %983 ]
  %1775 = phi float [ %969, %1670 ], [ %969, %1164 ], [ %969, %967 ], [ %1761, %1757 ], [ %969, %1755 ], [ %1723, %1719 ], [ %1704, %1698 ], [ %969, %983 ]
  %1776 = phi float [ %1671, %1670 ], [ %970, %1164 ], [ %970, %967 ], [ %1671, %1757 ], [ %1671, %1755 ], [ %1671, %1719 ], [ %1671, %1698 ], [ %970, %983 ]
  %1777 = phi float [ %1672, %1670 ], [ %971, %1164 ], [ %971, %967 ], [ %1672, %1757 ], [ %1672, %1755 ], [ %1672, %1719 ], [ %1672, %1698 ], [ %971, %983 ]
  %1778 = phi float [ %1673, %1670 ], [ %972, %1164 ], [ %972, %967 ], [ %1673, %1757 ], [ %1673, %1755 ], [ %1673, %1719 ], [ %1673, %1698 ], [ %972, %983 ]
  %1779 = phi float [ %1674, %1670 ], [ %973, %1164 ], [ %973, %967 ], [ %1674, %1757 ], [ %1674, %1755 ], [ %1674, %1719 ], [ %1674, %1698 ], [ %973, %983 ]
  %1780 = phi float [ %1675, %1670 ], [ %974, %1164 ], [ %974, %967 ], [ %1675, %1757 ], [ %1675, %1755 ], [ %1675, %1719 ], [ %1675, %1698 ], [ %974, %983 ]
  %1781 = phi float [ %1676, %1670 ], [ %975, %1164 ], [ %975, %967 ], [ %1676, %1757 ], [ %1676, %1755 ], [ %1676, %1719 ], [ %1676, %1698 ], [ %975, %983 ]
  %1782 = phi float [ %1677, %1670 ], [ %976, %1164 ], [ %976, %967 ], [ %1677, %1757 ], [ %1677, %1755 ], [ %1677, %1719 ], [ %1677, %1698 ], [ %976, %983 ]
  %1783 = phi float [ %978, %1670 ], [ %978, %1164 ], [ %978, %967 ], [ %1768, %1757 ], [ %978, %1755 ], [ %1750, %1719 ], [ %1710, %1698 ], [ %978, %983 ]
  %1784 = phi float [ %979, %1670 ], [ %979, %1164 ], [ %979, %967 ], [ %1765, %1757 ], [ %979, %1755 ], [ %1727, %1719 ], [ %1707, %1698 ], [ %979, %983 ]
  %1785 = phi float [ %980, %1670 ], [ %980, %1164 ], [ %980, %967 ], [ %1770, %1757 ], [ %980, %1755 ], [ %1752, %1719 ], [ %1713, %1698 ], [ %980, %983 ]
  %1786 = phi float [ %981, %1670 ], [ %981, %1164 ], [ %981, %967 ], [ %1772, %1757 ], [ %981, %1755 ], [ %1754, %1719 ], [ %1716, %1698 ], [ %981, %983 ]
  %1787 = phi float [ %1678, %1670 ], [ %982, %1164 ], [ %982, %967 ], [ %1678, %1757 ], [ %1678, %1755 ], [ %1678, %1719 ], [ %1678, %1698 ], [ %982, %983 ]
  br i1 %403, label %2578, label %1788

; <label>:1788                                    ; preds = %1773
  %1789 = icmp ult i32 %456, 3
  %1790 = add i32 %33, 56
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %33, 60
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = or i32 %1795, %1792
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %2578, label %1798

; <label>:1798                                    ; preds = %1788
  %1799 = and i32 %1792, 262144
  %1800 = icmp ne i32 %1799, 0
  %1801 = select i1 %1800, float %39, float 1.000000e+00
  %1802 = select i1 %1800, float %40, float 0.000000e+00
  %1803 = select i1 %1800, float %41, float 0.000000e+00
  %1804 = select i1 %1800, float %42, float 1.000000e+00
  %1805 = select i1 %1800, float %43, float %66
  %1806 = select i1 %1800, float %44, float %67
  %1807 = add i32 %33, 316
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fmul fast float %1811, 0x3F50624DE0000000
  %1813 = add i32 %33, 120
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = lshr i32 %1815, 16
  %1817 = and i32 %1816, 255
  %1818 = lshr i32 %1815, 24
  %1819 = add i32 %33, 324
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 65535
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = lshr i32 %1821, 16
  %1825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1824)  ; LegacyF16ToF32(value)
  %1826 = add i32 %33, 64
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 22
  %1830 = shl nuw nsw i32 %1829, 5
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = shl i32 %1828, 4
  %1833 = and i32 %1832, 32752
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 7
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = fmul fast float %1839, 1.000000e+03
  %1841 = fmul fast float %353, %1840
  %1842 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1843 = fadd fast float %1842, %343
  %1844 = fmul fast float %354, %1840
  %1845 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1846 = fadd fast float %1845, %345
  %1847 = fmul fast float %1812, %1840
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = fmul fast float %1848, 0x401921FB60000000
  %1850 = fadd fast float %1849, %1831
  %1851 = call float @dx.op.unary.f32(i32 13, float %1850)  ; Sin(value)
  %1852 = call float @dx.op.unary.f32(i32 12, float %1850)  ; Cos(value)
  %1853 = fsub fast float -0.000000e+00, %1851
  %1854 = fadd fast float %1805, -5.000000e-01
  %1855 = fadd fast float %1806, -5.000000e-01
  %1856 = fmul fast float %1823, %1854
  %1857 = fmul fast float %1825, %1855
  %1858 = fadd fast float %1856, 5.000000e-01
  %1859 = fadd fast float %1857, 5.000000e-01
  %1860 = fmul fast float %1834, %1858
  %1861 = fmul fast float %1837, %1859
  %1862 = fmul fast float %1852, %1860
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1853, float %1861, float %1862)  ; FMad(a,b,c)
  %1864 = fmul fast float %1851, %1860
  %1865 = call float @dx.op.tertiary.f32(i32 46, float %1852, float %1861, float %1864)  ; FMad(a,b,c)
  %1866 = fadd fast float %1843, %1863
  %1867 = fadd fast float %1846, %1865
  %1868 = icmp ugt i32 %1817, 1
  %1869 = icmp ugt i32 %1815, 33554431
  %1870 = or i1 %1869, %1868
  br i1 %1870, label %1871, label %1896

; <label>:1871                                    ; preds = %1798
  %1872 = add i32 %33, 260
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 16
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = fmul fast float %1839, %1876
  %1878 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1879 = mul nuw nsw i32 %1817, %1818
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1878, %1880
  %1882 = call float @dx.op.unary.f32(i32 27, float %1881)  ; Round_ni(value)
  %1883 = fptoui float %1882 to i32
  %1884 = urem i32 %1883, %1817
  %1885 = udiv i32 %1883, %1818
  %1886 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1887 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1888 = uitofp i32 %1884 to float
  %1889 = uitofp i32 %1885 to float
  %1890 = fadd fast float %1886, %1888
  %1891 = fadd fast float %1887, %1889
  %1892 = uitofp i32 %1817 to float
  %1893 = uitofp i32 %1818 to float
  %1894 = fdiv fast float %1890, %1892
  %1895 = fdiv fast float %1891, %1893
  br label %1896

; <label>:1896                                    ; preds = %1871, %1798
  %1897 = phi float [ %1894, %1871 ], [ %1866, %1798 ]
  %1898 = phi float [ %1895, %1871 ], [ %1867, %1798 ]
  %1899 = and i32 %1792, 256
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1947, label %1901

; <label>:1901                                    ; preds = %1896
  %1902 = add i32 %33, 448
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = add i32 %1904, 0
  %1906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1906, %dx.types.Handle %75, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = add i32 %33, 132
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = shl i32 %1911, 4
  %1913 = and i32 %1912, 32752
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1911, 7
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = fsub fast float 1.000000e+00, %452
  %1919 = call float @dx.op.binary.f32(i32 35, float %1918, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1920 = bitcast float %452 to i32
  %1921 = sitofp i32 %1920 to float
  %1922 = fadd fast float %1921, 0xC1CFBF8940000000
  %1923 = fmul fast float %1917, %1922
  %1924 = fadd fast float %1923, 0x41CFBF8940000000
  %1925 = fptosi float %1924 to i32
  %1926 = bitcast i32 %1925 to float
  %1927 = bitcast float %1919 to i32
  %1928 = sitofp i32 %1927 to float
  %1929 = fadd fast float %1928, 0xC1CFBF8940000000
  %1930 = fmul fast float %1929, %1917
  %1931 = fadd fast float %1930, 0x41CFBF8940000000
  %1932 = fptosi float %1931 to i32
  %1933 = bitcast i32 %1932 to float
  %1934 = fmul fast float %1926, %1914
  %1935 = fmul fast float %1933, %1914
  %1936 = fsub fast float %1919, %1934
  %1937 = fadd fast float %1935, %1919
  %1938 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1940 = fsub fast float %1908, %1938
  %1941 = fsub fast float %1939, %1938
  %1942 = bitcast float %1941 to i32
  %1943 = sub nsw i32 2129859010, %1942
  %1944 = bitcast i32 %1943 to float
  %1945 = fmul fast float %1944, %1940
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  br label %1947

; <label>:1947                                    ; preds = %1901, %1896
  %1948 = phi float [ %1946, %1901 ], [ %452, %1896 ]
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 128
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1969, label %1953

; <label>:1953                                    ; preds = %1947
  %1954 = add i32 %33, 432
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = add i32 %1956, 0
  %1958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1958, %dx.types.Handle %75, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 524288
  %1964 = icmp ne i32 %1963, 0
  %1965 = fcmp fast ogt float %1960, 0x3FE0101020000000
  %1966 = select i1 %1965, float 1.000000e+00, float 0.000000e+00
  %1967 = select i1 %1964, float %1966, float %1960
  %1968 = fmul fast float %1967, %1948
  br label %1969

; <label>:1969                                    ; preds = %1953, %1947
  %1970 = phi float [ %1968, %1953 ], [ %1948, %1947 ]
  %1971 = fcmp fast ult float %1970, 0x3F70101020000000
  br i1 %1971, label %2578, label %1972

; <label>:1972                                    ; preds = %1969
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 16
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %2175, label %1977

; <label>:1977                                    ; preds = %1972
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %33, 384
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %74, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = extractvalue %dx.types.ResRet.f32 %1985, 3
  %1990 = and i32 %1979, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = lshr i32 %1979, 8
  %1993 = and i32 %1992, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1989, %1991
  %1996 = fadd fast float %1995, %1994
  %1997 = fmul fast float %1996, 0x3F70101000000000
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = and i32 %1999, 512
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2010, label %2002

; <label>:2002                                    ; preds = %1977
  %2003 = add i32 %33, 468
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2007, %dx.types.Handle %75, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  br label %2010

; <label>:2010                                    ; preds = %2002, %1977
  %2011 = phi float [ %2009, %2002 ], [ 1.000000e+00, %1977 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 33554432
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2122, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %33, 256
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2019, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = add i32 %33, 260
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 65535
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2045 = add i32 %33, 252
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 24
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = and i32 %2047, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2047, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2047, 16
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = bitcast float %1986 to i32
  %2063 = ashr i32 %2062, 1
  %2064 = sub nsw i32 1597463174, %2063
  %2065 = bitcast i32 %2064 to float
  %2066 = fmul fast float %1986, 5.000000e-01
  %2067 = fmul fast float %2065, %2065
  %2068 = fmul fast float %2067, %2066
  %2069 = fsub fast float 1.500000e+00, %2068
  %2070 = fmul fast float %2065, %1986
  %2071 = fmul fast float %2070, %2069
  %2072 = bitcast float %1987 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1987, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1987
  %2081 = fmul fast float %2080, %2079
  %2082 = bitcast float %1988 to i32
  %2083 = ashr i32 %2082, 1
  %2084 = sub nsw i32 1597463174, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %1988, 5.000000e-01
  %2087 = fmul fast float %2085, %2085
  %2088 = fmul fast float %2087, %2086
  %2089 = fsub fast float 1.500000e+00, %2088
  %2090 = fmul fast float %2085, %1988
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float %2071, %2053
  %2093 = fsub fast float %2081, %2057
  %2094 = fsub fast float %2091, %2061
  %2095 = fmul fast float %2092, %2021
  %2096 = fmul fast float %2093, %2023
  %2097 = fmul fast float %2094, %2028
  %2098 = fadd fast float %2095, %2036
  %2099 = fadd fast float %2096, %2040
  %2100 = fadd fast float %2097, %2044
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = fmul fast float %2101, %2101
  %2105 = fmul fast float %2102, %2102
  %2106 = fmul fast float %2103, %2103
  %2107 = fsub fast float %2104, %1986
  %2108 = fsub fast float %2105, %1987
  %2109 = fsub fast float %2106, %1988
  %2110 = fmul fast float %2107, %2011
  %2111 = fmul fast float %2108, %2011
  %2112 = fmul fast float %2109, %2011
  %2113 = fadd fast float %2110, %1986
  %2114 = fadd fast float %2111, %1987
  %2115 = fadd fast float %2112, %1988
  %2116 = fadd fast float %2033, %1997
  %2117 = fsub fast float %2116, %2050
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2118, %1997
  %2120 = fmul fast float %2119, %2011
  %2121 = fadd fast float %2120, %1997
  br label %2175

; <label>:2122                                    ; preds = %2010
  %2123 = and i32 %2013, 134217728
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2159, label %2125

; <label>:2125                                    ; preds = %2122
  %2126 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2128 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fmul fast float %2129, %2011
  %2133 = fmul fast float %2130, %2011
  %2134 = fmul fast float %2131, %2011
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %2139 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %2140 = call float @dx.op.unary.f32(i32 24, float %1988)  ; Sqrt(value)
  %2141 = fmul fast float %2135, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2138
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2138
  %2146 = fmul fast float %2136, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2139
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2139
  %2151 = fmul fast float %2137, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2140
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2140
  %2156 = fmul fast float %2145, %2145
  %2157 = fmul fast float %2150, %2150
  %2158 = fmul fast float %2155, %2155
  br label %2175

; <label>:2159                                    ; preds = %2122
  %2160 = fmul fast float %330, %330
  %2161 = fmul fast float %334, %334
  %2162 = fmul fast float %338, %338
  %2163 = fadd fast float %2160, -1.000000e+00
  %2164 = fadd fast float %2161, -1.000000e+00
  %2165 = fadd fast float %2162, -1.000000e+00
  %2166 = fmul fast float %2011, %2163
  %2167 = fmul fast float %2011, %2164
  %2168 = fmul fast float %2011, %2165
  %2169 = fadd fast float %2166, 1.000000e+00
  %2170 = fadd fast float %2167, 1.000000e+00
  %2171 = fadd fast float %2168, 1.000000e+00
  %2172 = fmul fast float %2169, %1986
  %2173 = fmul fast float %2170, %1987
  %2174 = fmul fast float %2171, %1988
  br label %2175

; <label>:2175                                    ; preds = %2159, %2125, %2016, %1972
  %2176 = phi float [ %2121, %2016 ], [ %1997, %2125 ], [ %1997, %2159 ], [ 0x3FA23C0BE0000000, %1972 ]
  %2177 = phi float [ %2113, %2016 ], [ %2156, %2125 ], [ %2172, %2159 ], [ 1.000000e+00, %1972 ]
  %2178 = phi float [ %2114, %2016 ], [ %2157, %2125 ], [ %2173, %2159 ], [ 1.000000e+00, %1972 ]
  %2179 = phi float [ %2115, %2016 ], [ %2158, %2125 ], [ %2174, %2159 ], [ 1.000000e+00, %1972 ]
  %2180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.i32 %2180, 1
  %2182 = and i32 %2181, 1
  %2183 = icmp ne i32 %2182, 0
  %2184 = add i32 %33, 356
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 32
  %2188 = icmp ne i32 %2187, 0
  %2189 = and i1 %2183, %2188
  %2190 = select i1 %2189, float 1.000000e+00, float %2177
  %2191 = select i1 %2189, float 0x3FD3333340000000, float %2178
  %2192 = select i1 %2189, float 0x3FD3333340000000, float %2179
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 32
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2269, label %2197

; <label>:2197                                    ; preds = %2175
  %2198 = add i32 %33, 124
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %33, 400
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %74, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = and i32 %2200, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2200, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = lshr i32 %2200, 16
  %2217 = and i32 %2216, 255
  %2218 = uitofp i32 %2217 to float
  %2219 = fmul fast float %2218, 0x3F70101000000000
  %2220 = fmul fast float %2207, %2212
  %2221 = fadd fast float %2220, %2215
  %2222 = fmul fast float %2221, 0x3F70101000000000
  %2223 = fadd fast float %2208, -5.000000e-01
  %2224 = fadd fast float %2210, -5.000000e-01
  %2225 = fmul fast float %2223, %2219
  %2226 = fmul fast float %2224, %2219
  %2227 = fadd fast float %2225, 5.000000e-01
  %2228 = fadd fast float %2226, 5.000000e-01
  %2229 = fmul fast float %2227, 2.000000e+00
  %2230 = fadd fast float %2229, -1.000000e+00
  %2231 = fmul fast float %2228, 2.000000e+00
  %2232 = fadd fast float %2231, -1.000000e+00
  %2233 = fadd fast float %2230, %2232
  %2234 = fmul fast float %2233, 5.000000e-01
  %2235 = fsub fast float %2230, %2232
  %2236 = fmul fast float %2235, 5.000000e-01
  %2237 = call float @dx.op.unary.f32(i32 6, float %2234)  ; FAbs(value)
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = call float @dx.op.unary.f32(i32 6, float %2236)  ; FAbs(value)
  %2240 = fsub fast float %2238, %2239
  %2241 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2236, float %2240, float %2234, float %2236, float %2240)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = call float @dx.op.unary.f32(i32 25, float %2241)  ; Rsqrt(value)
  %2243 = fmul fast float %2234, %2242
  %2244 = fmul fast float %2236, %2242
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 67108864
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2265, label %2249

; <label>:2249                                    ; preds = %2197
  %2250 = add i32 %33, 312
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 65535
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2252, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = fsub fast float %2222, %2260
  %2262 = fmul fast float %2261, %2254
  %2263 = fadd fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2249, %2197
  %2266 = phi float [ %2264, %2249 ], [ %2222, %2197 ]
  %2267 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1801, float %1802)  ; Dot2(ax,ay,bx,by)
  %2268 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1803, float %1804)  ; Dot2(ax,ay,bx,by)
  br label %2269

; <label>:2269                                    ; preds = %2265, %2175
  %2270 = phi float [ %2266, %2265 ], [ 0x3FD6666660000000, %2175 ]
  %2271 = phi float [ %2267, %2265 ], [ 0.000000e+00, %2175 ]
  %2272 = phi float [ %2268, %2265 ], [ 0.000000e+00, %2175 ]
  %2273 = phi float [ %2209, %2265 ], [ 1.000000e+00, %2175 ]
  %2274 = add i32 %33, 192
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = lshr i32 %2276, 22
  %2278 = shl nuw nsw i32 %2277, 5
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 64
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2317, label %2284

; <label>:2284                                    ; preds = %2269
  %2285 = add i32 %33, 416
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %2287, 0
  %2289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 131072
  %2293 = icmp eq i32 %2292, 0
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2289, %dx.types.Handle %74, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = fmul fast float %2295, %318
  %2299 = fmul fast float %2296, %321
  %2300 = fmul fast float %2297, %324
  br i1 %2293, label %2307, label %2301

; <label>:2301                                    ; preds = %2284
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = fmul fast float %2303, %2298
  %2305 = fmul fast float %2303, %2299
  %2306 = fmul fast float %2303, %2300
  br label %2307

; <label>:2307                                    ; preds = %2301, %2284
  %2308 = phi float [ %2304, %2301 ], [ %2298, %2284 ]
  %2309 = phi float [ %2305, %2301 ], [ %2299, %2284 ]
  %2310 = phi float [ %2306, %2301 ], [ %2300, %2284 ]
  %2311 = fmul fast float %2308, %2279
  %2312 = select i1 %217, float %2311, float %2308
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2309, float %2310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = select i1 %217, float 0.000000e+00, float %2308
  %2315 = select i1 %217, float %2313, float %2309
  %2316 = select i1 %217, float 0.000000e+00, float %2310
  br label %2317

; <label>:2317                                    ; preds = %2307, %2269
  %2318 = phi float [ %2314, %2307 ], [ 0.000000e+00, %2269 ]
  %2319 = phi float [ %2315, %2307 ], [ 0.000000e+00, %2269 ]
  %2320 = phi float [ %2316, %2307 ], [ 0.000000e+00, %2269 ]
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 59392
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2362, label %2325

; <label>:2325                                    ; preds = %2317
  %2326 = add i32 %33, 484
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = add i32 %2328, 0
  %2330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2330, %dx.types.Handle %75, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 2
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 1048576
  %2336 = icmp ne i32 %2335, 0
  %2337 = select i1 %2336, float 1.000000e+00, float %2332
  %2338 = and i32 %2334, 16384
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2350, label %2340

; <label>:2340                                    ; preds = %2325
  %2341 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2342 = add i32 %33, 128
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = lshr i32 %2344, 24
  %2346 = uitofp i32 %2345 to float
  %2347 = fmul fast float %2341, 0x3F70101020000000
  %2348 = select i1 %2336, float 0x3F70101020000000, float %2347
  %2349 = fmul fast float %2348, %2346
  br label %2350

; <label>:2350                                    ; preds = %2340, %2325
  %2351 = phi float [ %2349, %2340 ], [ 0.000000e+00, %2325 ]
  %2352 = and i32 %2334, 32768
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2362, label %2354

; <label>:2354                                    ; preds = %2350
  %2355 = add i32 %33, 132
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = lshr i32 %2357, 22
  %2359 = shl nuw nsw i32 %2358, 5
  %2360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2359)  ; LegacyF16ToF32(value)
  %2361 = fmul fast float %2360, %2337
  br label %2362

; <label>:2362                                    ; preds = %2354, %2350, %2317
  %2363 = phi float [ %2351, %2354 ], [ %2351, %2350 ], [ 0.000000e+00, %2317 ]
  %2364 = phi float [ %2361, %2354 ], [ 0.000000e+00, %2350 ], [ 0.000000e+00, %2317 ]
  %2365 = add i32 %33, 128
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = lshr i32 %2367, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = fmul fast float %2372, %2373
  %2375 = fadd fast float %2374, %2369
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  br i1 %1789, label %2378, label %2386

; <label>:2378                                    ; preds = %2362
  %2379 = fsub fast float 1.000000e+00, %1970
  %2380 = fmul fast float %2379, %1779
  %2381 = fmul fast float %2379, %1780
  %2382 = fmul fast float %2379, %1781
  %2383 = fmul fast float %2379, %1776
  %2384 = fmul fast float %2379, %1777
  %2385 = fmul fast float %2379, %1778
  br label %2386

; <label>:2386                                    ; preds = %2378, %2362
  %2387 = phi float [ %2383, %2378 ], [ %1776, %2362 ]
  %2388 = phi float [ %2384, %2378 ], [ %1777, %2362 ]
  %2389 = phi float [ %2385, %2378 ], [ %1778, %2362 ]
  %2390 = phi float [ %2380, %2378 ], [ %1779, %2362 ]
  %2391 = phi float [ %2381, %2378 ], [ %1780, %2362 ]
  %2392 = phi float [ %2382, %2378 ], [ %1781, %2362 ]
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 3
  %2396 = icmp eq i32 %2395, 3
  br i1 %2396, label %2475, label %2397

; <label>:2397                                    ; preds = %2386
  %2398 = and i32 %2394, 16
  %2399 = icmp ne i32 %2398, 0
  %2400 = select i1 %2399, float %1970, float 0.000000e+00
  %2401 = icmp eq i32 %2395, 0
  br i1 %2401, label %2402, label %2430

; <label>:2402                                    ; preds = %2397
  %2403 = and i32 %2394, 64
  %2404 = icmp ne i32 %2403, 0
  %2405 = select i1 %2404, float %1970, float 0.000000e+00
  %2406 = fsub fast float %2190, %2390
  %2407 = fsub fast float %2191, %2391
  %2408 = fsub fast float %2192, %2392
  %2409 = fmul fast float %2400, %2406
  %2410 = fmul fast float %2400, %2407
  %2411 = fmul fast float %2400, %2408
  %2412 = fadd fast float %2409, %2390
  %2413 = fadd fast float %2410, %2391
  %2414 = fadd fast float %2411, %2392
  %2415 = fsub fast float %2176, %1782
  %2416 = fmul fast float %2400, %2415
  %2417 = fadd fast float %2416, %1782
  %2418 = fsub fast float %2318, %2387
  %2419 = fsub fast float %2319, %2388
  %2420 = fsub fast float %2320, %2389
  %2421 = fmul fast float %2405, %2418
  %2422 = fmul fast float %2405, %2419
  %2423 = fmul fast float %2405, %2420
  %2424 = fadd fast float %2421, %2387
  %2425 = fadd fast float %2422, %2388
  %2426 = fadd fast float %2423, %2389
  %2427 = fsub fast float %2377, %1787
  %2428 = fmul fast float %2400, %2427
  %2429 = fadd fast float %2428, %1787
  br label %2475

; <label>:2430                                    ; preds = %2397
  %2431 = icmp eq i32 %2395, 1
  br i1 %2431, label %2432, label %2445

; <label>:2432                                    ; preds = %2430
  %2433 = fadd fast float %2190, -1.000000e+00
  %2434 = fadd fast float %2191, -1.000000e+00
  %2435 = fadd fast float %2192, -1.000000e+00
  %2436 = fmul fast float %2400, %2433
  %2437 = fmul fast float %2400, %2434
  %2438 = fmul fast float %2400, %2435
  %2439 = fadd fast float %2436, 1.000000e+00
  %2440 = fadd fast float %2437, 1.000000e+00
  %2441 = fadd fast float %2438, 1.000000e+00
  %2442 = fmul fast float %2439, %2390
  %2443 = fmul fast float %2440, %2391
  %2444 = fmul fast float %2441, %2392
  br label %2475

; <label>:2445                                    ; preds = %2430
  %2446 = icmp eq i32 %2395, 2
  br i1 %2446, label %2447, label %2475

; <label>:2447                                    ; preds = %2445
  %2448 = call float @dx.op.unary.f32(i32 24, float %2190)  ; Sqrt(value)
  %2449 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2451 = fadd fast float %2448, -5.000000e-01
  %2452 = fadd fast float %2449, -5.000000e-01
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fmul fast float %2451, %2400
  %2455 = fmul fast float %2452, %2400
  %2456 = fmul fast float %2453, %2400
  %2457 = fadd fast float %2454, 5.000000e-01
  %2458 = fadd fast float %2455, 5.000000e-01
  %2459 = fadd fast float %2456, 5.000000e-01
  %2460 = fmul fast float %2457, 2.000000e+00
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = fmul fast float %2461, %2390
  %2463 = fadd fast float %2462, %2460
  %2464 = fmul fast float %2463, %2390
  %2465 = fmul fast float %2458, 2.000000e+00
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2466, %2391
  %2468 = fadd fast float %2467, %2465
  %2469 = fmul fast float %2468, %2391
  %2470 = fmul fast float %2459, 2.000000e+00
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2471, %2392
  %2473 = fadd fast float %2472, %2470
  %2474 = fmul fast float %2473, %2392
  br label %2475

; <label>:2475                                    ; preds = %2447, %2445, %2432, %2402, %2386
  %2476 = phi float [ %2387, %2386 ], [ %2387, %2447 ], [ %2387, %2445 ], [ %2387, %2432 ], [ %2424, %2402 ]
  %2477 = phi float [ %2388, %2386 ], [ %2388, %2447 ], [ %2388, %2445 ], [ %2388, %2432 ], [ %2425, %2402 ]
  %2478 = phi float [ %2389, %2386 ], [ %2389, %2447 ], [ %2389, %2445 ], [ %2389, %2432 ], [ %2426, %2402 ]
  %2479 = phi float [ %2390, %2386 ], [ %2464, %2447 ], [ %2390, %2445 ], [ %2442, %2432 ], [ %2412, %2402 ]
  %2480 = phi float [ %2391, %2386 ], [ %2469, %2447 ], [ %2391, %2445 ], [ %2443, %2432 ], [ %2413, %2402 ]
  %2481 = phi float [ %2392, %2386 ], [ %2474, %2447 ], [ %2392, %2445 ], [ %2444, %2432 ], [ %2414, %2402 ]
  %2482 = phi float [ %1782, %2386 ], [ %1782, %2447 ], [ %1782, %2445 ], [ %1782, %2432 ], [ %2417, %2402 ]
  %2483 = phi float [ %1787, %2386 ], [ %1787, %2447 ], [ %1787, %2445 ], [ %1787, %2432 ], [ %2429, %2402 ]
  %2484 = and i32 %2394, 12
  %2485 = icmp eq i32 %2484, 12
  br i1 %2485, label %2578, label %2486

; <label>:2486                                    ; preds = %2475
  %2487 = and i32 %2394, 2097184
  %2488 = icmp eq i32 %2487, 2097184
  %2489 = select i1 %2488, float %1970, float 0.000000e+00
  %2490 = and i32 %2394, 4194336
  %2491 = icmp eq i32 %2490, 4194336
  %2492 = select i1 %2491, float %1970, float 0.000000e+00
  %2493 = and i32 %2394, 8388640
  %2494 = icmp eq i32 %2493, 8388640
  %2495 = select i1 %2494, float %1970, float 0.000000e+00
  %2496 = and i32 %2394, 16384
  %2497 = icmp ne i32 %2496, 0
  %2498 = select i1 %2497, float %1970, float 0.000000e+00
  %2499 = and i32 %2394, 32768
  %2500 = icmp ne i32 %2499, 0
  %2501 = select i1 %2500, float %1970, float 0.000000e+00
  %2502 = icmp eq i32 %2484, 0
  br i1 %2502, label %2503, label %2522

; <label>:2503                                    ; preds = %2486
  %2504 = fsub fast float %2271, %1774
  %2505 = fsub fast float %2272, %1775
  %2506 = fmul fast float %2489, %2504
  %2507 = fmul fast float %2489, %2505
  %2508 = fadd fast float %2506, %1774
  %2509 = fadd fast float %2507, %1775
  %2510 = fsub fast float %2273, %1784
  %2511 = fmul fast float %2492, %2510
  %2512 = fadd fast float %2511, %1784
  %2513 = fsub fast float %2270, %1783
  %2514 = fmul fast float %2495, %2513
  %2515 = fadd fast float %2514, %1783
  %2516 = fsub fast float %2363, %1785
  %2517 = fmul fast float %2498, %2516
  %2518 = fadd fast float %2517, %1785
  %2519 = fsub fast float %2364, %1786
  %2520 = fmul fast float %2501, %2519
  %2521 = fadd fast float %2520, %1786
  br label %2578

; <label>:2522                                    ; preds = %2486
  %2523 = icmp eq i32 %2484, 4
  br i1 %2523, label %2524, label %2560

; <label>:2524                                    ; preds = %2522
  %2525 = fmul fast float %2489, %2271
  %2526 = fmul fast float %2489, %2272
  %2527 = fadd fast float %2525, %1774
  %2528 = fadd fast float %2526, %1775
  %2529 = call float @dx.op.binary.f32(i32 36, float %1784, float %2273)  ; FMin(a,b)
  %2530 = fsub fast float %2529, %1784
  %2531 = fmul fast float %2530, %2492
  %2532 = fadd fast float %2531, %1784
  %2533 = fadd fast float %2270, %1783
  %2534 = fmul fast float %2533, 0x3FF337FAE0000000
  %2535 = fmul fast float %1783, %1783
  %2536 = fmul fast float %2270, %2270
  %2537 = fadd fast float %2536, %2535
  %2538 = fmul fast float %2537, 0x3FE5152B00000000
  %2539 = fmul fast float %1783, 0xBFCC1F85E0000000
  %2540 = fmul fast float %2539, %2270
  %2541 = fadd fast float %2540, 0xBFE1363700000000
  %2542 = fadd fast float %2541, %2534
  %2543 = fsub fast float %2542, %2538
  %2544 = fmul fast float %2533, 0x3FBA6F0D00000000
  %2545 = fmul fast float %2537, 0x3FD0432880000000
  %2546 = fmul fast float %1783, 0xBFEF110800000000
  %2547 = fmul fast float %2546, %2270
  %2548 = fadd fast float %2547, 1.000000e+00
  %2549 = fsub fast float %2548, %2544
  %2550 = fadd fast float %2549, %2545
  %2551 = fdiv fast float %2543, %2550
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = fsub fast float %2552, %1783
  %2554 = fmul fast float %2553, %2495
  %2555 = fadd fast float %2554, %1783
  %2556 = fmul fast float %2498, %2363
  %2557 = fadd fast float %2556, %1785
  %2558 = fmul fast float %2501, %2364
  %2559 = fadd fast float %2558, %1786
  br label %2578

; <label>:2560                                    ; preds = %2522
  %2561 = icmp eq i32 %2484, 8
  br i1 %2561, label %2562, label %2578

; <label>:2562                                    ; preds = %2560
  %2563 = fmul fast float %2489, %2271
  %2564 = fmul fast float %2489, %2272
  %2565 = fadd fast float %2563, %1774
  %2566 = fadd fast float %2564, %1775
  %2567 = call float @dx.op.binary.f32(i32 36, float %1784, float %2273)  ; FMin(a,b)
  %2568 = fsub fast float %2567, %1784
  %2569 = fmul fast float %2568, %2492
  %2570 = fadd fast float %2569, %1784
  %2571 = fsub fast float %2270, %1783
  %2572 = fmul fast float %2495, %2571
  %2573 = fadd fast float %2572, %1783
  %2574 = fmul fast float %2498, %2363
  %2575 = fadd fast float %2574, %1785
  %2576 = fmul fast float %2501, %2364
  %2577 = fadd fast float %2576, %1786
  br label %2578

; <label>:2578                                    ; preds = %2562, %2560, %2524, %2503, %2475, %1969, %1788, %1773
  %2579 = phi float [ %1774, %2475 ], [ %1774, %1969 ], [ %1774, %1773 ], [ %2565, %2562 ], [ %1774, %2560 ], [ %2527, %2524 ], [ %2508, %2503 ], [ %1774, %1788 ]
  %2580 = phi float [ %1775, %2475 ], [ %1775, %1969 ], [ %1775, %1773 ], [ %2566, %2562 ], [ %1775, %2560 ], [ %2528, %2524 ], [ %2509, %2503 ], [ %1775, %1788 ]
  %2581 = phi float [ %2476, %2475 ], [ %1776, %1969 ], [ %1776, %1773 ], [ %2476, %2562 ], [ %2476, %2560 ], [ %2476, %2524 ], [ %2476, %2503 ], [ %1776, %1788 ]
  %2582 = phi float [ %2477, %2475 ], [ %1777, %1969 ], [ %1777, %1773 ], [ %2477, %2562 ], [ %2477, %2560 ], [ %2477, %2524 ], [ %2477, %2503 ], [ %1777, %1788 ]
  %2583 = phi float [ %2478, %2475 ], [ %1778, %1969 ], [ %1778, %1773 ], [ %2478, %2562 ], [ %2478, %2560 ], [ %2478, %2524 ], [ %2478, %2503 ], [ %1778, %1788 ]
  %2584 = phi float [ %2479, %2475 ], [ %1779, %1969 ], [ %1779, %1773 ], [ %2479, %2562 ], [ %2479, %2560 ], [ %2479, %2524 ], [ %2479, %2503 ], [ %1779, %1788 ]
  %2585 = phi float [ %2480, %2475 ], [ %1780, %1969 ], [ %1780, %1773 ], [ %2480, %2562 ], [ %2480, %2560 ], [ %2480, %2524 ], [ %2480, %2503 ], [ %1780, %1788 ]
  %2586 = phi float [ %2481, %2475 ], [ %1781, %1969 ], [ %1781, %1773 ], [ %2481, %2562 ], [ %2481, %2560 ], [ %2481, %2524 ], [ %2481, %2503 ], [ %1781, %1788 ]
  %2587 = phi float [ %2482, %2475 ], [ %1782, %1969 ], [ %1782, %1773 ], [ %2482, %2562 ], [ %2482, %2560 ], [ %2482, %2524 ], [ %2482, %2503 ], [ %1782, %1788 ]
  %2588 = phi float [ %1783, %2475 ], [ %1783, %1969 ], [ %1783, %1773 ], [ %2573, %2562 ], [ %1783, %2560 ], [ %2555, %2524 ], [ %2515, %2503 ], [ %1783, %1788 ]
  %2589 = phi float [ %1784, %2475 ], [ %1784, %1969 ], [ %1784, %1773 ], [ %2570, %2562 ], [ %1784, %2560 ], [ %2532, %2524 ], [ %2512, %2503 ], [ %1784, %1788 ]
  %2590 = phi float [ %1785, %2475 ], [ %1785, %1969 ], [ %1785, %1773 ], [ %2575, %2562 ], [ %1785, %2560 ], [ %2557, %2524 ], [ %2518, %2503 ], [ %1785, %1788 ]
  %2591 = phi float [ %1786, %2475 ], [ %1786, %1969 ], [ %1786, %1773 ], [ %2577, %2562 ], [ %1786, %2560 ], [ %2559, %2524 ], [ %2521, %2503 ], [ %1786, %1788 ]
  %2592 = phi float [ %2483, %2475 ], [ %1787, %1969 ], [ %1787, %1773 ], [ %2483, %2562 ], [ %2483, %2560 ], [ %2483, %2524 ], [ %2483, %2503 ], [ %1787, %1788 ]
  br i1 %405, label %3383, label %2593

; <label>:2593                                    ; preds = %2578
  %2594 = icmp ult i32 %456, 4
  %2595 = add i32 %33, 72
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %33, 76
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = or i32 %2600, %2597
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %3383, label %2603

; <label>:2603                                    ; preds = %2593
  %2604 = and i32 %2597, 262144
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %39, float 1.000000e+00
  %2607 = select i1 %2605, float %40, float 0.000000e+00
  %2608 = select i1 %2605, float %41, float 0.000000e+00
  %2609 = select i1 %2605, float %42, float 1.000000e+00
  %2610 = select i1 %2605, float %43, float %66
  %2611 = select i1 %2605, float %44, float %67
  %2612 = add i32 %33, 332
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2616, 0x3F50624DE0000000
  %2618 = add i32 %33, 136
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 16
  %2622 = and i32 %2621, 255
  %2623 = lshr i32 %2620, 24
  %2624 = add i32 %33, 340
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 65535
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = lshr i32 %2626, 16
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = add i32 %33, 80
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 22
  %2635 = shl nuw nsw i32 %2634, 5
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = shl i32 %2633, 4
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2633, 7
  %2641 = and i32 %2640, 32752
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2645 = fmul fast float %2644, 1.000000e+03
  %2646 = fmul fast float %395, %2645
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %385
  %2649 = fmul fast float %396, %2645
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fadd fast float %2650, %387
  %2652 = fmul fast float %2617, %2645
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fmul fast float %2653, 0x401921FB60000000
  %2655 = fadd fast float %2654, %2636
  %2656 = call float @dx.op.unary.f32(i32 13, float %2655)  ; Sin(value)
  %2657 = call float @dx.op.unary.f32(i32 12, float %2655)  ; Cos(value)
  %2658 = fsub fast float -0.000000e+00, %2656
  %2659 = fadd fast float %2610, -5.000000e-01
  %2660 = fadd fast float %2611, -5.000000e-01
  %2661 = fmul fast float %2628, %2659
  %2662 = fmul fast float %2630, %2660
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fmul fast float %2639, %2663
  %2666 = fmul fast float %2642, %2664
  %2667 = fmul fast float %2657, %2665
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2666, float %2667)  ; FMad(a,b,c)
  %2669 = fmul fast float %2656, %2665
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2666, float %2669)  ; FMad(a,b,c)
  %2671 = fadd fast float %2648, %2668
  %2672 = fadd fast float %2651, %2670
  %2673 = icmp ugt i32 %2622, 1
  %2674 = icmp ugt i32 %2620, 33554431
  %2675 = or i1 %2674, %2673
  br i1 %2675, label %2676, label %2701

; <label>:2676                                    ; preds = %2603
  %2677 = add i32 %33, 276
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fmul fast float %2644, %2681
  %2683 = call float @dx.op.unary.f32(i32 22, float %2682)  ; Frc(value)
  %2684 = mul nuw nsw i32 %2622, %2623
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2683, %2685
  %2687 = call float @dx.op.unary.f32(i32 27, float %2686)  ; Round_ni(value)
  %2688 = fptoui float %2687 to i32
  %2689 = urem i32 %2688, %2622
  %2690 = udiv i32 %2688, %2623
  %2691 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2692 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2693 = uitofp i32 %2689 to float
  %2694 = uitofp i32 %2690 to float
  %2695 = fadd fast float %2691, %2693
  %2696 = fadd fast float %2692, %2694
  %2697 = uitofp i32 %2622 to float
  %2698 = uitofp i32 %2623 to float
  %2699 = fdiv fast float %2695, %2697
  %2700 = fdiv fast float %2696, %2698
  br label %2701

; <label>:2701                                    ; preds = %2676, %2603
  %2702 = phi float [ %2699, %2676 ], [ %2671, %2603 ]
  %2703 = phi float [ %2700, %2676 ], [ %2672, %2603 ]
  %2704 = and i32 %2597, 256
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2752, label %2706

; <label>:2706                                    ; preds = %2701
  %2707 = add i32 %33, 452
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = add i32 %2709, 0
  %2711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2711, %dx.types.Handle %75, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = add i32 %33, 148
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = shl i32 %2716, 4
  %2718 = and i32 %2717, 32752
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = lshr i32 %2716, 7
  %2721 = and i32 %2720, 32752
  %2722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2721)  ; LegacyF16ToF32(value)
  %2723 = fsub fast float 1.000000e+00, %451
  %2724 = call float @dx.op.binary.f32(i32 35, float %2723, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2725 = bitcast float %451 to i32
  %2726 = sitofp i32 %2725 to float
  %2727 = fadd fast float %2726, 0xC1CFBF8940000000
  %2728 = fmul fast float %2722, %2727
  %2729 = fadd fast float %2728, 0x41CFBF8940000000
  %2730 = fptosi float %2729 to i32
  %2731 = bitcast i32 %2730 to float
  %2732 = bitcast float %2724 to i32
  %2733 = sitofp i32 %2732 to float
  %2734 = fadd fast float %2733, 0xC1CFBF8940000000
  %2735 = fmul fast float %2734, %2722
  %2736 = fadd fast float %2735, 0x41CFBF8940000000
  %2737 = fptosi float %2736 to i32
  %2738 = bitcast i32 %2737 to float
  %2739 = fmul fast float %2731, %2719
  %2740 = fmul fast float %2738, %2719
  %2741 = fsub fast float %2724, %2739
  %2742 = fadd fast float %2740, %2724
  %2743 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2745 = fsub fast float %2713, %2743
  %2746 = fsub fast float %2744, %2743
  %2747 = bitcast float %2746 to i32
  %2748 = sub nsw i32 2129859010, %2747
  %2749 = bitcast i32 %2748 to float
  %2750 = fmul fast float %2749, %2745
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  br label %2752

; <label>:2752                                    ; preds = %2706, %2701
  %2753 = phi float [ %2751, %2706 ], [ %451, %2701 ]
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 128
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2774, label %2758

; <label>:2758                                    ; preds = %2752
  %2759 = add i32 %33, 436
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = add i32 %2761, 0
  %2763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2763, %dx.types.Handle %75, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 524288
  %2769 = icmp ne i32 %2768, 0
  %2770 = fcmp fast ogt float %2765, 0x3FE0101020000000
  %2771 = select i1 %2770, float 1.000000e+00, float 0.000000e+00
  %2772 = select i1 %2769, float %2771, float %2765
  %2773 = fmul fast float %2772, %2753
  br label %2774

; <label>:2774                                    ; preds = %2758, %2752
  %2775 = phi float [ %2773, %2758 ], [ %2753, %2752 ]
  %2776 = fcmp fast ult float %2775, 0x3F70101020000000
  br i1 %2776, label %3383, label %2777

; <label>:2777                                    ; preds = %2774
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 16
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2980, label %2782

; <label>:2782                                    ; preds = %2777
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %33, 388
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = add i32 %2787, 0
  %2789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2789, %dx.types.Handle %74, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = extractvalue %dx.types.ResRet.f32 %2790, 3
  %2795 = and i32 %2784, 255
  %2796 = uitofp i32 %2795 to float
  %2797 = lshr i32 %2784, 8
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2794, %2796
  %2801 = fadd fast float %2800, %2799
  %2802 = fmul fast float %2801, 0x3F70101000000000
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 512
  %2806 = icmp eq i32 %2805, 0
  br i1 %2806, label %2815, label %2807

; <label>:2807                                    ; preds = %2782
  %2808 = add i32 %33, 472
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = add i32 %2810, 0
  %2812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2812, %dx.types.Handle %75, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  br label %2815

; <label>:2815                                    ; preds = %2807, %2782
  %2816 = phi float [ %2814, %2807 ], [ 1.000000e+00, %2782 ]
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 33554432
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2927, label %2821

; <label>:2821                                    ; preds = %2815
  %2822 = add i32 %33, 272
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 65535
  %2826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2825)  ; LegacyF16ToF32(value)
  %2827 = lshr i32 %2824, 16
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = add i32 %33, 276
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = and i32 %2831, 65535
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = lshr i32 %2835, 24
  %2837 = uitofp i32 %2836 to float
  %2838 = fmul fast float %2837, 0x3F70101020000000
  %2839 = and i32 %2835, 255
  %2840 = uitofp i32 %2839 to float
  %2841 = fmul fast float %2840, 0x3F70101020000000
  %2842 = lshr i32 %2835, 8
  %2843 = and i32 %2842, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = fmul fast float %2844, 0x3F70101020000000
  %2846 = lshr i32 %2835, 16
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = fmul fast float %2848, 0x3F70101020000000
  %2850 = add i32 %33, 268
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 24
  %2854 = uitofp i32 %2853 to float
  %2855 = fmul fast float %2854, 0x3F70101020000000
  %2856 = and i32 %2852, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101020000000
  %2859 = lshr i32 %2852, 8
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fmul fast float %2861, 0x3F70101020000000
  %2863 = lshr i32 %2852, 16
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F70101020000000
  %2867 = bitcast float %2791 to i32
  %2868 = ashr i32 %2867, 1
  %2869 = sub nsw i32 1597463174, %2868
  %2870 = bitcast i32 %2869 to float
  %2871 = fmul fast float %2791, 5.000000e-01
  %2872 = fmul fast float %2870, %2870
  %2873 = fmul fast float %2872, %2871
  %2874 = fsub fast float 1.500000e+00, %2873
  %2875 = fmul fast float %2870, %2791
  %2876 = fmul fast float %2875, %2874
  %2877 = bitcast float %2792 to i32
  %2878 = ashr i32 %2877, 1
  %2879 = sub nsw i32 1597463174, %2878
  %2880 = bitcast i32 %2879 to float
  %2881 = fmul fast float %2792, 5.000000e-01
  %2882 = fmul fast float %2880, %2880
  %2883 = fmul fast float %2882, %2881
  %2884 = fsub fast float 1.500000e+00, %2883
  %2885 = fmul fast float %2880, %2792
  %2886 = fmul fast float %2885, %2884
  %2887 = bitcast float %2793 to i32
  %2888 = ashr i32 %2887, 1
  %2889 = sub nsw i32 1597463174, %2888
  %2890 = bitcast i32 %2889 to float
  %2891 = fmul fast float %2793, 5.000000e-01
  %2892 = fmul fast float %2890, %2890
  %2893 = fmul fast float %2892, %2891
  %2894 = fsub fast float 1.500000e+00, %2893
  %2895 = fmul fast float %2890, %2793
  %2896 = fmul fast float %2895, %2894
  %2897 = fsub fast float %2876, %2858
  %2898 = fsub fast float %2886, %2862
  %2899 = fsub fast float %2896, %2866
  %2900 = fmul fast float %2897, %2826
  %2901 = fmul fast float %2898, %2828
  %2902 = fmul fast float %2899, %2833
  %2903 = fadd fast float %2900, %2841
  %2904 = fadd fast float %2901, %2845
  %2905 = fadd fast float %2902, %2849
  %2906 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2907 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2908 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2909 = fmul fast float %2906, %2906
  %2910 = fmul fast float %2907, %2907
  %2911 = fmul fast float %2908, %2908
  %2912 = fsub fast float %2909, %2791
  %2913 = fsub fast float %2910, %2792
  %2914 = fsub fast float %2911, %2793
  %2915 = fmul fast float %2912, %2816
  %2916 = fmul fast float %2913, %2816
  %2917 = fmul fast float %2914, %2816
  %2918 = fadd fast float %2915, %2791
  %2919 = fadd fast float %2916, %2792
  %2920 = fadd fast float %2917, %2793
  %2921 = fadd fast float %2838, %2802
  %2922 = fsub fast float %2921, %2855
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = fsub fast float %2923, %2802
  %2925 = fmul fast float %2924, %2816
  %2926 = fadd fast float %2925, %2802
  br label %2980

; <label>:2927                                    ; preds = %2815
  %2928 = and i32 %2818, 134217728
  %2929 = icmp eq i32 %2928, 0
  br i1 %2929, label %2964, label %2930

; <label>:2930                                    ; preds = %2927
  %2931 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2932 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2933 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2934 = fadd fast float %2931, -5.000000e-01
  %2935 = fadd fast float %2932, -5.000000e-01
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fmul fast float %2934, %2816
  %2938 = fmul fast float %2935, %2816
  %2939 = fmul fast float %2936, %2816
  %2940 = fadd fast float %2937, 5.000000e-01
  %2941 = fadd fast float %2938, 5.000000e-01
  %2942 = fadd fast float %2939, 5.000000e-01
  %2943 = call float @dx.op.unary.f32(i32 24, float %2791)  ; Sqrt(value)
  %2944 = call float @dx.op.unary.f32(i32 24, float %2792)  ; Sqrt(value)
  %2945 = call float @dx.op.unary.f32(i32 24, float %2793)  ; Sqrt(value)
  %2946 = fmul fast float %2940, 2.000000e+00
  %2947 = fsub fast float 1.000000e+00, %2946
  %2948 = fmul fast float %2947, %2943
  %2949 = fadd fast float %2948, %2946
  %2950 = fmul fast float %2949, %2943
  %2951 = fmul fast float %2941, 2.000000e+00
  %2952 = fsub fast float 1.000000e+00, %2951
  %2953 = fmul fast float %2952, %2944
  %2954 = fadd fast float %2953, %2951
  %2955 = fmul fast float %2954, %2944
  %2956 = fmul fast float %2942, 2.000000e+00
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = fmul fast float %2957, %2945
  %2959 = fadd fast float %2958, %2956
  %2960 = fmul fast float %2959, %2945
  %2961 = fmul fast float %2950, %2950
  %2962 = fmul fast float %2955, %2955
  %2963 = fmul fast float %2960, %2960
  br label %2980

; <label>:2964                                    ; preds = %2927
  %2965 = fmul fast float %372, %372
  %2966 = fmul fast float %376, %376
  %2967 = fmul fast float %380, %380
  %2968 = fadd fast float %2965, -1.000000e+00
  %2969 = fadd fast float %2966, -1.000000e+00
  %2970 = fadd fast float %2967, -1.000000e+00
  %2971 = fmul fast float %2816, %2968
  %2972 = fmul fast float %2816, %2969
  %2973 = fmul fast float %2816, %2970
  %2974 = fadd fast float %2971, 1.000000e+00
  %2975 = fadd fast float %2972, 1.000000e+00
  %2976 = fadd fast float %2973, 1.000000e+00
  %2977 = fmul fast float %2974, %2791
  %2978 = fmul fast float %2975, %2792
  %2979 = fmul fast float %2976, %2793
  br label %2980

; <label>:2980                                    ; preds = %2964, %2930, %2821, %2777
  %2981 = phi float [ %2926, %2821 ], [ %2802, %2930 ], [ %2802, %2964 ], [ 0x3FA23C0BE0000000, %2777 ]
  %2982 = phi float [ %2918, %2821 ], [ %2961, %2930 ], [ %2977, %2964 ], [ 1.000000e+00, %2777 ]
  %2983 = phi float [ %2919, %2821 ], [ %2962, %2930 ], [ %2978, %2964 ], [ 1.000000e+00, %2777 ]
  %2984 = phi float [ %2920, %2821 ], [ %2963, %2930 ], [ %2979, %2964 ], [ 1.000000e+00, %2777 ]
  %2985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2986 = extractvalue %dx.types.CBufRet.i32 %2985, 1
  %2987 = and i32 %2986, 1
  %2988 = icmp ne i32 %2987, 0
  %2989 = add i32 %33, 356
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 32
  %2993 = icmp ne i32 %2992, 0
  %2994 = and i1 %2988, %2993
  %2995 = select i1 %2994, float 1.000000e+00, float %2982
  %2996 = select i1 %2994, float 0x3FD3333340000000, float %2983
  %2997 = select i1 %2994, float 0x3FD3333340000000, float %2984
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 32
  %3001 = icmp eq i32 %3000, 0
  br i1 %3001, label %3074, label %3002

; <label>:3002                                    ; preds = %2980
  %3003 = add i32 %33, 140
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = add i32 %33, 404
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = add i32 %3008, 0
  %3010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3010, %dx.types.Handle %74, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3012 = extractvalue %dx.types.ResRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.ResRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.ResRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.ResRet.f32 %3011, 3
  %3016 = and i32 %3005, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = lshr i32 %3005, 8
  %3019 = and i32 %3018, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = lshr i32 %3005, 16
  %3022 = and i32 %3021, 255
  %3023 = uitofp i32 %3022 to float
  %3024 = fmul fast float %3023, 0x3F70101000000000
  %3025 = fmul fast float %3012, %3017
  %3026 = fadd fast float %3025, %3020
  %3027 = fmul fast float %3026, 0x3F70101000000000
  %3028 = fadd fast float %3013, -5.000000e-01
  %3029 = fadd fast float %3015, -5.000000e-01
  %3030 = fmul fast float %3028, %3024
  %3031 = fmul fast float %3029, %3024
  %3032 = fadd fast float %3030, 5.000000e-01
  %3033 = fadd fast float %3031, 5.000000e-01
  %3034 = fmul fast float %3032, 2.000000e+00
  %3035 = fadd fast float %3034, -1.000000e+00
  %3036 = fmul fast float %3033, 2.000000e+00
  %3037 = fadd fast float %3036, -1.000000e+00
  %3038 = fadd fast float %3035, %3037
  %3039 = fmul fast float %3038, 5.000000e-01
  %3040 = fsub fast float %3035, %3037
  %3041 = fmul fast float %3040, 5.000000e-01
  %3042 = call float @dx.op.unary.f32(i32 6, float %3039)  ; FAbs(value)
  %3043 = fsub fast float 1.000000e+00, %3042
  %3044 = call float @dx.op.unary.f32(i32 6, float %3041)  ; FAbs(value)
  %3045 = fsub fast float %3043, %3044
  %3046 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3041, float %3045, float %3039, float %3041, float %3045)  ; Dot3(ax,ay,az,bx,by,bz)
  %3047 = call float @dx.op.unary.f32(i32 25, float %3046)  ; Rsqrt(value)
  %3048 = fmul fast float %3039, %3047
  %3049 = fmul fast float %3041, %3047
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 67108864
  %3053 = icmp eq i32 %3052, 0
  br i1 %3053, label %3070, label %3054

; <label>:3054                                    ; preds = %3002
  %3055 = add i32 %33, 328
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 65535
  %3059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3058)  ; LegacyF16ToF32(value)
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = and i32 %3061, 65535
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = lshr i32 %3057, 16
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = fsub fast float %3027, %3065
  %3067 = fmul fast float %3066, %3059
  %3068 = fadd fast float %3067, %3063
  %3069 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  br label %3070

; <label>:3070                                    ; preds = %3054, %3002
  %3071 = phi float [ %3069, %3054 ], [ %3027, %3002 ]
  %3072 = call float @dx.op.dot2.f32(i32 54, float %3048, float %3049, float %2606, float %2607)  ; Dot2(ax,ay,bx,by)
  %3073 = call float @dx.op.dot2.f32(i32 54, float %3048, float %3049, float %2608, float %2609)  ; Dot2(ax,ay,bx,by)
  br label %3074

; <label>:3074                                    ; preds = %3070, %2980
  %3075 = phi float [ %3071, %3070 ], [ 0x3FD6666660000000, %2980 ]
  %3076 = phi float [ %3072, %3070 ], [ 0.000000e+00, %2980 ]
  %3077 = phi float [ %3073, %3070 ], [ 0.000000e+00, %2980 ]
  %3078 = phi float [ %3014, %3070 ], [ 1.000000e+00, %2980 ]
  %3079 = add i32 %33, 208
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = lshr i32 %3081, 22
  %3083 = shl nuw nsw i32 %3082, 5
  %3084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3083)  ; LegacyF16ToF32(value)
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = and i32 %3086, 64
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %3122, label %3089

; <label>:3089                                    ; preds = %3074
  %3090 = add i32 %33, 420
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = add i32 %3092, 0
  %3094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 131072
  %3098 = icmp eq i32 %3097, 0
  %3099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3094, %dx.types.Handle %74, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = extractvalue %dx.types.ResRet.f32 %3099, 1
  %3102 = extractvalue %dx.types.ResRet.f32 %3099, 2
  %3103 = fmul fast float %3100, %360
  %3104 = fmul fast float %3101, %363
  %3105 = fmul fast float %3102, %366
  br i1 %3098, label %3112, label %3106

; <label>:3106                                    ; preds = %3089
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 0
  %3109 = fmul fast float %3108, %3103
  %3110 = fmul fast float %3108, %3104
  %3111 = fmul fast float %3108, %3105
  br label %3112

; <label>:3112                                    ; preds = %3106, %3089
  %3113 = phi float [ %3109, %3106 ], [ %3103, %3089 ]
  %3114 = phi float [ %3110, %3106 ], [ %3104, %3089 ]
  %3115 = phi float [ %3111, %3106 ], [ %3105, %3089 ]
  %3116 = fmul fast float %3113, %3084
  %3117 = select i1 %217, float %3116, float %3113
  %3118 = call float @dx.op.dot3.f32(i32 55, float %3117, float %3114, float %3115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3119 = select i1 %217, float 0.000000e+00, float %3113
  %3120 = select i1 %217, float %3118, float %3114
  %3121 = select i1 %217, float 0.000000e+00, float %3115
  br label %3122

; <label>:3122                                    ; preds = %3112, %3074
  %3123 = phi float [ %3119, %3112 ], [ 0.000000e+00, %3074 ]
  %3124 = phi float [ %3120, %3112 ], [ 0.000000e+00, %3074 ]
  %3125 = phi float [ %3121, %3112 ], [ 0.000000e+00, %3074 ]
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 59392
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3167, label %3130

; <label>:3130                                    ; preds = %3122
  %3131 = add i32 %33, 488
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %3133, 0
  %3135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3135, %dx.types.Handle %75, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 2
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 1048576
  %3141 = icmp ne i32 %3140, 0
  %3142 = select i1 %3141, float 1.000000e+00, float %3137
  %3143 = and i32 %3139, 16384
  %3144 = icmp eq i32 %3143, 0
  br i1 %3144, label %3155, label %3145

; <label>:3145                                    ; preds = %3130
  %3146 = extractvalue %dx.types.ResRet.f32 %3136, 0
  %3147 = add i32 %33, 144
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = lshr i32 %3149, 24
  %3151 = uitofp i32 %3150 to float
  %3152 = fmul fast float %3146, 0x3F70101020000000
  %3153 = select i1 %3141, float 0x3F70101020000000, float %3152
  %3154 = fmul fast float %3153, %3151
  br label %3155

; <label>:3155                                    ; preds = %3145, %3130
  %3156 = phi float [ %3154, %3145 ], [ 0.000000e+00, %3130 ]
  %3157 = and i32 %3139, 32768
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3167, label %3159

; <label>:3159                                    ; preds = %3155
  %3160 = add i32 %33, 148
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = lshr i32 %3162, 22
  %3164 = shl nuw nsw i32 %3163, 5
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = fmul fast float %3165, %3142
  br label %3167

; <label>:3167                                    ; preds = %3159, %3155, %3122
  %3168 = phi float [ %3156, %3159 ], [ %3156, %3155 ], [ 0.000000e+00, %3122 ]
  %3169 = phi float [ %3166, %3159 ], [ 0.000000e+00, %3155 ], [ 0.000000e+00, %3122 ]
  %3170 = add i32 %33, 144
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = lshr i32 %3172, 8
  %3176 = and i32 %3175, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = call float @dx.op.dot3.f32(i32 55, float %2995, float %2996, float %2997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = fmul fast float %3177, %3178
  %3180 = fadd fast float %3179, %3174
  %3181 = fmul fast float %3180, 0x3F70101020000000
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  br i1 %2594, label %3183, label %3191

; <label>:3183                                    ; preds = %3167
  %3184 = fsub fast float 1.000000e+00, %2775
  %3185 = fmul fast float %3184, %2584
  %3186 = fmul fast float %3184, %2585
  %3187 = fmul fast float %3184, %2586
  %3188 = fmul fast float %3184, %2581
  %3189 = fmul fast float %3184, %2582
  %3190 = fmul fast float %3184, %2583
  br label %3191

; <label>:3191                                    ; preds = %3183, %3167
  %3192 = phi float [ %3188, %3183 ], [ %2581, %3167 ]
  %3193 = phi float [ %3189, %3183 ], [ %2582, %3167 ]
  %3194 = phi float [ %3190, %3183 ], [ %2583, %3167 ]
  %3195 = phi float [ %3185, %3183 ], [ %2584, %3167 ]
  %3196 = phi float [ %3186, %3183 ], [ %2585, %3167 ]
  %3197 = phi float [ %3187, %3183 ], [ %2586, %3167 ]
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 3
  %3201 = icmp eq i32 %3200, 3
  br i1 %3201, label %3280, label %3202

; <label>:3202                                    ; preds = %3191
  %3203 = and i32 %3199, 16
  %3204 = icmp ne i32 %3203, 0
  %3205 = select i1 %3204, float %2775, float 0.000000e+00
  %3206 = icmp eq i32 %3200, 0
  br i1 %3206, label %3207, label %3235

; <label>:3207                                    ; preds = %3202
  %3208 = and i32 %3199, 64
  %3209 = icmp ne i32 %3208, 0
  %3210 = select i1 %3209, float %2775, float 0.000000e+00
  %3211 = fsub fast float %2995, %3195
  %3212 = fsub fast float %2996, %3196
  %3213 = fsub fast float %2997, %3197
  %3214 = fmul fast float %3205, %3211
  %3215 = fmul fast float %3205, %3212
  %3216 = fmul fast float %3205, %3213
  %3217 = fadd fast float %3214, %3195
  %3218 = fadd fast float %3215, %3196
  %3219 = fadd fast float %3216, %3197
  %3220 = fsub fast float %2981, %2587
  %3221 = fmul fast float %3205, %3220
  %3222 = fadd fast float %3221, %2587
  %3223 = fsub fast float %3123, %3192
  %3224 = fsub fast float %3124, %3193
  %3225 = fsub fast float %3125, %3194
  %3226 = fmul fast float %3210, %3223
  %3227 = fmul fast float %3210, %3224
  %3228 = fmul fast float %3210, %3225
  %3229 = fadd fast float %3226, %3192
  %3230 = fadd fast float %3227, %3193
  %3231 = fadd fast float %3228, %3194
  %3232 = fsub fast float %3182, %2592
  %3233 = fmul fast float %3205, %3232
  %3234 = fadd fast float %3233, %2592
  br label %3280

; <label>:3235                                    ; preds = %3202
  %3236 = icmp eq i32 %3200, 1
  br i1 %3236, label %3237, label %3250

; <label>:3237                                    ; preds = %3235
  %3238 = fadd fast float %2995, -1.000000e+00
  %3239 = fadd fast float %2996, -1.000000e+00
  %3240 = fadd fast float %2997, -1.000000e+00
  %3241 = fmul fast float %3205, %3238
  %3242 = fmul fast float %3205, %3239
  %3243 = fmul fast float %3205, %3240
  %3244 = fadd fast float %3241, 1.000000e+00
  %3245 = fadd fast float %3242, 1.000000e+00
  %3246 = fadd fast float %3243, 1.000000e+00
  %3247 = fmul fast float %3244, %3195
  %3248 = fmul fast float %3245, %3196
  %3249 = fmul fast float %3246, %3197
  br label %3280

; <label>:3250                                    ; preds = %3235
  %3251 = icmp eq i32 %3200, 2
  br i1 %3251, label %3252, label %3280

; <label>:3252                                    ; preds = %3250
  %3253 = call float @dx.op.unary.f32(i32 24, float %2995)  ; Sqrt(value)
  %3254 = call float @dx.op.unary.f32(i32 24, float %2996)  ; Sqrt(value)
  %3255 = call float @dx.op.unary.f32(i32 24, float %2997)  ; Sqrt(value)
  %3256 = fadd fast float %3253, -5.000000e-01
  %3257 = fadd fast float %3254, -5.000000e-01
  %3258 = fadd fast float %3255, -5.000000e-01
  %3259 = fmul fast float %3256, %3205
  %3260 = fmul fast float %3257, %3205
  %3261 = fmul fast float %3258, %3205
  %3262 = fadd fast float %3259, 5.000000e-01
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fmul fast float %3262, 2.000000e+00
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3266, %3195
  %3268 = fadd fast float %3267, %3265
  %3269 = fmul fast float %3268, %3195
  %3270 = fmul fast float %3263, 2.000000e+00
  %3271 = fsub fast float 1.000000e+00, %3270
  %3272 = fmul fast float %3271, %3196
  %3273 = fadd fast float %3272, %3270
  %3274 = fmul fast float %3273, %3196
  %3275 = fmul fast float %3264, 2.000000e+00
  %3276 = fsub fast float 1.000000e+00, %3275
  %3277 = fmul fast float %3276, %3197
  %3278 = fadd fast float %3277, %3275
  %3279 = fmul fast float %3278, %3197
  br label %3280

; <label>:3280                                    ; preds = %3252, %3250, %3237, %3207, %3191
  %3281 = phi float [ %3192, %3191 ], [ %3192, %3252 ], [ %3192, %3250 ], [ %3192, %3237 ], [ %3229, %3207 ]
  %3282 = phi float [ %3193, %3191 ], [ %3193, %3252 ], [ %3193, %3250 ], [ %3193, %3237 ], [ %3230, %3207 ]
  %3283 = phi float [ %3194, %3191 ], [ %3194, %3252 ], [ %3194, %3250 ], [ %3194, %3237 ], [ %3231, %3207 ]
  %3284 = phi float [ %3195, %3191 ], [ %3269, %3252 ], [ %3195, %3250 ], [ %3247, %3237 ], [ %3217, %3207 ]
  %3285 = phi float [ %3196, %3191 ], [ %3274, %3252 ], [ %3196, %3250 ], [ %3248, %3237 ], [ %3218, %3207 ]
  %3286 = phi float [ %3197, %3191 ], [ %3279, %3252 ], [ %3197, %3250 ], [ %3249, %3237 ], [ %3219, %3207 ]
  %3287 = phi float [ %2587, %3191 ], [ %2587, %3252 ], [ %2587, %3250 ], [ %2587, %3237 ], [ %3222, %3207 ]
  %3288 = phi float [ %2592, %3191 ], [ %2592, %3252 ], [ %2592, %3250 ], [ %2592, %3237 ], [ %3234, %3207 ]
  %3289 = and i32 %3199, 12
  %3290 = icmp eq i32 %3289, 12
  br i1 %3290, label %3383, label %3291

; <label>:3291                                    ; preds = %3280
  %3292 = and i32 %3199, 2097184
  %3293 = icmp eq i32 %3292, 2097184
  %3294 = select i1 %3293, float %2775, float 0.000000e+00
  %3295 = and i32 %3199, 4194336
  %3296 = icmp eq i32 %3295, 4194336
  %3297 = select i1 %3296, float %2775, float 0.000000e+00
  %3298 = and i32 %3199, 8388640
  %3299 = icmp eq i32 %3298, 8388640
  %3300 = select i1 %3299, float %2775, float 0.000000e+00
  %3301 = and i32 %3199, 16384
  %3302 = icmp ne i32 %3301, 0
  %3303 = select i1 %3302, float %2775, float 0.000000e+00
  %3304 = and i32 %3199, 32768
  %3305 = icmp ne i32 %3304, 0
  %3306 = select i1 %3305, float %2775, float 0.000000e+00
  %3307 = icmp eq i32 %3289, 0
  br i1 %3307, label %3308, label %3327

; <label>:3308                                    ; preds = %3291
  %3309 = fsub fast float %3076, %2579
  %3310 = fsub fast float %3077, %2580
  %3311 = fmul fast float %3294, %3309
  %3312 = fmul fast float %3294, %3310
  %3313 = fadd fast float %3311, %2579
  %3314 = fadd fast float %3312, %2580
  %3315 = fsub fast float %3078, %2589
  %3316 = fmul fast float %3297, %3315
  %3317 = fadd fast float %3316, %2589
  %3318 = fsub fast float %3075, %2588
  %3319 = fmul fast float %3300, %3318
  %3320 = fadd fast float %3319, %2588
  %3321 = fsub fast float %3168, %2590
  %3322 = fmul fast float %3303, %3321
  %3323 = fadd fast float %3322, %2590
  %3324 = fsub fast float %3169, %2591
  %3325 = fmul fast float %3306, %3324
  %3326 = fadd fast float %3325, %2591
  br label %3383

; <label>:3327                                    ; preds = %3291
  %3328 = icmp eq i32 %3289, 4
  br i1 %3328, label %3329, label %3365

; <label>:3329                                    ; preds = %3327
  %3330 = fmul fast float %3294, %3076
  %3331 = fmul fast float %3294, %3077
  %3332 = fadd fast float %3330, %2579
  %3333 = fadd fast float %3331, %2580
  %3334 = call float @dx.op.binary.f32(i32 36, float %2589, float %3078)  ; FMin(a,b)
  %3335 = fsub fast float %3334, %2589
  %3336 = fmul fast float %3335, %3297
  %3337 = fadd fast float %3336, %2589
  %3338 = fadd fast float %3075, %2588
  %3339 = fmul fast float %3338, 0x3FF337FAE0000000
  %3340 = fmul fast float %2588, %2588
  %3341 = fmul fast float %3075, %3075
  %3342 = fadd fast float %3341, %3340
  %3343 = fmul fast float %3342, 0x3FE5152B00000000
  %3344 = fmul fast float %2588, 0xBFCC1F85E0000000
  %3345 = fmul fast float %3344, %3075
  %3346 = fadd fast float %3345, 0xBFE1363700000000
  %3347 = fadd fast float %3346, %3339
  %3348 = fsub fast float %3347, %3343
  %3349 = fmul fast float %3338, 0x3FBA6F0D00000000
  %3350 = fmul fast float %3342, 0x3FD0432880000000
  %3351 = fmul fast float %2588, 0xBFEF110800000000
  %3352 = fmul fast float %3351, %3075
  %3353 = fadd fast float %3352, 1.000000e+00
  %3354 = fsub fast float %3353, %3349
  %3355 = fadd fast float %3354, %3350
  %3356 = fdiv fast float %3348, %3355
  %3357 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3358 = fsub fast float %3357, %2588
  %3359 = fmul fast float %3358, %3300
  %3360 = fadd fast float %3359, %2588
  %3361 = fmul fast float %3303, %3168
  %3362 = fadd fast float %3361, %2590
  %3363 = fmul fast float %3306, %3169
  %3364 = fadd fast float %3363, %2591
  br label %3383

; <label>:3365                                    ; preds = %3327
  %3366 = icmp eq i32 %3289, 8
  br i1 %3366, label %3367, label %3383

; <label>:3367                                    ; preds = %3365
  %3368 = fmul fast float %3294, %3076
  %3369 = fmul fast float %3294, %3077
  %3370 = fadd fast float %3368, %2579
  %3371 = fadd fast float %3369, %2580
  %3372 = call float @dx.op.binary.f32(i32 36, float %2589, float %3078)  ; FMin(a,b)
  %3373 = fsub fast float %3372, %2589
  %3374 = fmul fast float %3373, %3297
  %3375 = fadd fast float %3374, %2589
  %3376 = fsub fast float %3075, %2588
  %3377 = fmul fast float %3300, %3376
  %3378 = fadd fast float %3377, %2588
  %3379 = fmul fast float %3303, %3168
  %3380 = fadd fast float %3379, %2590
  %3381 = fmul fast float %3306, %3169
  %3382 = fadd fast float %3381, %2591
  br label %3383

; <label>:3383                                    ; preds = %3367, %3365, %3329, %3308, %3280, %2774, %2593, %2578
  %3384 = phi float [ %2579, %3280 ], [ %2579, %2774 ], [ %2579, %2578 ], [ %2579, %2593 ], [ %3313, %3308 ], [ %3332, %3329 ], [ %2579, %3365 ], [ %3370, %3367 ]
  %3385 = phi float [ %2580, %3280 ], [ %2580, %2774 ], [ %2580, %2578 ], [ %2580, %2593 ], [ %3314, %3308 ], [ %3333, %3329 ], [ %2580, %3365 ], [ %3371, %3367 ]
  %3386 = phi float [ %3281, %3280 ], [ %2581, %2774 ], [ %2581, %2578 ], [ %2581, %2593 ], [ %3281, %3308 ], [ %3281, %3329 ], [ %3281, %3365 ], [ %3281, %3367 ]
  %3387 = phi float [ %3282, %3280 ], [ %2582, %2774 ], [ %2582, %2578 ], [ %2582, %2593 ], [ %3282, %3308 ], [ %3282, %3329 ], [ %3282, %3365 ], [ %3282, %3367 ]
  %3388 = phi float [ %3283, %3280 ], [ %2583, %2774 ], [ %2583, %2578 ], [ %2583, %2593 ], [ %3283, %3308 ], [ %3283, %3329 ], [ %3283, %3365 ], [ %3283, %3367 ]
  %3389 = phi float [ %3284, %3280 ], [ %2584, %2774 ], [ %2584, %2578 ], [ %2584, %2593 ], [ %3284, %3308 ], [ %3284, %3329 ], [ %3284, %3365 ], [ %3284, %3367 ]
  %3390 = phi float [ %3285, %3280 ], [ %2585, %2774 ], [ %2585, %2578 ], [ %2585, %2593 ], [ %3285, %3308 ], [ %3285, %3329 ], [ %3285, %3365 ], [ %3285, %3367 ]
  %3391 = phi float [ %3286, %3280 ], [ %2586, %2774 ], [ %2586, %2578 ], [ %2586, %2593 ], [ %3286, %3308 ], [ %3286, %3329 ], [ %3286, %3365 ], [ %3286, %3367 ]
  %3392 = phi float [ %3287, %3280 ], [ %2587, %2774 ], [ %2587, %2578 ], [ %2587, %2593 ], [ %3287, %3308 ], [ %3287, %3329 ], [ %3287, %3365 ], [ %3287, %3367 ]
  %3393 = phi float [ %2588, %3280 ], [ %2588, %2774 ], [ %2588, %2578 ], [ %2588, %2593 ], [ %3320, %3308 ], [ %3360, %3329 ], [ %2588, %3365 ], [ %3378, %3367 ]
  %3394 = phi float [ %2589, %3280 ], [ %2589, %2774 ], [ %2589, %2578 ], [ %2589, %2593 ], [ %3317, %3308 ], [ %3337, %3329 ], [ %2589, %3365 ], [ %3375, %3367 ]
  %3395 = phi float [ %2590, %3280 ], [ %2590, %2774 ], [ %2590, %2578 ], [ %2590, %2593 ], [ %3323, %3308 ], [ %3362, %3329 ], [ %2590, %3365 ], [ %3380, %3367 ]
  %3396 = phi float [ %2591, %3280 ], [ %2591, %2774 ], [ %2591, %2578 ], [ %2591, %2593 ], [ %3326, %3308 ], [ %3364, %3329 ], [ %2591, %3365 ], [ %3382, %3367 ]
  %3397 = phi float [ %3288, %3280 ], [ %2592, %2774 ], [ %2592, %2578 ], [ %2592, %2593 ], [ %3288, %3308 ], [ %3288, %3329 ], [ %3288, %3365 ], [ %3288, %3367 ]
  %3398 = add i32 %33, 360
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.i32 %3399, 1
  %3402 = bitcast i32 %3400 to float
  %3403 = bitcast i32 %3401 to float
  %3404 = fcmp fast oge float %3402, 0.000000e+00
  %3405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3405, 0
  %3407 = select i1 %3404, float %3402, float %3406
  %3408 = fadd fast float %3407, %179
  %3409 = fmul fast float %3403, %180
  %3410 = add i32 %33, 456
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = add i32 %3412, 0
  %3414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3414, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = fmul fast float %3409, %3416
  %3418 = fadd fast float %3408, %3417
  %3419 = and i32 %171, 65535
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = lshr i32 %171, 16
  %3422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3421)  ; LegacyF16ToF32(value)
  %3423 = and i32 %172, 65535
  %3424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3423)  ; LegacyF16ToF32(value)
  %3425 = fmul fast float %3420, %3389
  %3426 = fmul fast float %3422, %3390
  %3427 = fmul fast float %3424, %3391
  %3428 = shl i32 %173, 4
  %3429 = and i32 %3428, 32752
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = lshr i32 %173, 7
  %3432 = and i32 %3431, 32752
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = lshr i32 %173, 22
  %3435 = shl nuw nsw i32 %3434, 5
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = and i32 %174, 65535
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = fmul fast float %3430, %3386
  %3440 = fmul fast float %3439, %3438
  %3441 = fmul fast float %3433, %3387
  %3442 = fmul fast float %3441, %3438
  %3443 = fmul fast float %3436, %3388
  %3444 = fmul fast float %3443, %3438
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3384, float %3385, float %3384, float %3385)  ; Dot2(ax,ay,bx,by)
  %3446 = fmul fast float %3445, 0x3FE3333340000000
  %3447 = fsub fast float 1.000000e+00, %3446
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3447, float %3384, float %3385, float %3447)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = call float @dx.op.unary.f32(i32 25, float %3448)  ; Rsqrt(value)
  %3450 = fmul fast float %3449, %3384
  %3451 = fmul fast float %3449, %3385
  %3452 = fmul fast float %3447, %3449
  %3453 = fmul fast float %3452, %85
  %3454 = fmul fast float %3452, %86
  %3455 = fmul fast float %3452, %87
  %3456 = fmul fast float %3450, %59
  %3457 = fmul fast float %3450, %60
  %3458 = fmul fast float %3450, %61
  %3459 = fadd fast float %3453, %3456
  %3460 = fadd fast float %3454, %3457
  %3461 = fadd fast float %3455, %3458
  %3462 = fmul fast float %97, %3451
  %3463 = fmul fast float %98, %3451
  %3464 = fmul fast float %99, %3451
  %3465 = fadd fast float %3459, %3462
  %3466 = fadd fast float %3460, %3463
  %3467 = fadd fast float %3461, %3464
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float %3465, float %3466, float %3467)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = call float @dx.op.unary.f32(i32 25, float %3468)  ; Rsqrt(value)
  %3470 = fmul fast float %3465, %3469
  %3471 = fmul fast float %3466, %3469
  %3472 = fmul fast float %3467, %3469
  %3473 = icmp eq i32 %35, 65535
  br i1 %3473, label %3993, label %3474

; <label>:3474                                    ; preds = %3383
  %3475 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3476 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3477 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3478 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3479 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3480 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3481 = fadd fast float %3475, %36
  %3482 = fadd fast float %3476, %37
  %3483 = fadd fast float %3477, %38
  %3484 = fadd fast float %3478, %36
  %3485 = fadd fast float %3479, %37
  %3486 = fadd fast float %3480, %38
  %3487 = mul i32 %35, 48
  %3488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = add i32 %3487, 16
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = add i32 %3487, 32
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = bitcast float %3502 to i32
  %3504 = fmul fast float %3489, %36
  %3505 = fmul fast float %3490, %37
  %3506 = fmul fast float %3491, %38
  %3507 = fsub fast float %3504, %3494
  %3508 = fsub fast float %3505, %3495
  %3509 = fsub fast float %3506, %3496
  %3510 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3511 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3512 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3513 = fmul fast float %3510, %3499
  %3514 = fmul fast float %3511, %3500
  %3515 = fmul fast float %3512, %3501
  %3516 = fadd fast float %3499, -1.000000e+00
  %3517 = fadd fast float %3500, -1.000000e+00
  %3518 = fadd fast float %3501, -1.000000e+00
  %3519 = call float @dx.op.unary.f32(i32 27, float %3513)  ; Round_ni(value)
  %3520 = call float @dx.op.unary.f32(i32 27, float %3514)  ; Round_ni(value)
  %3521 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3522 = call float @dx.op.binary.f32(i32 36, float %3519, float %3516)  ; FMin(a,b)
  %3523 = call float @dx.op.binary.f32(i32 36, float %3520, float %3517)  ; FMin(a,b)
  %3524 = call float @dx.op.binary.f32(i32 36, float %3521, float %3518)  ; FMin(a,b)
  %3525 = fmul fast float %3524, %3500
  %3526 = fadd fast float %3525, %3523
  %3527 = fmul fast float %3526, %3499
  %3528 = fadd fast float %3527, %3522
  %3529 = fptosi float %3528 to i32
  %3530 = add nsw i32 %3529, %3503
  %3531 = shl nsw i32 %3530, 2
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = lshr i32 %3533, 16
  %3535 = icmp eq i32 %3534, 0
  br i1 %3535, label %3961, label %3536

; <label>:3536                                    ; preds = %3474
  br label %3537

; <label>:3537                                    ; preds = %3659, %3536
  %3538 = phi i32 [ %3561, %3659 ], [ %3534, %3536 ]
  %3539 = phi float [ %3660, %3659 ], [ 0.000000e+00, %3536 ]
  %3540 = phi float [ %3661, %3659 ], [ %3418, %3536 ]
  %3541 = phi float [ %3662, %3659 ], [ %3397, %3536 ]
  %3542 = phi float [ %3663, %3659 ], [ %3396, %3536 ]
  %3543 = phi float [ %3664, %3659 ], [ %3395, %3536 ]
  %3544 = phi float [ %3665, %3659 ], [ 0.000000e+00, %3536 ]
  %3545 = phi float [ %3666, %3659 ], [ %3440, %3536 ]
  %3546 = phi float [ %3667, %3659 ], [ %3442, %3536 ]
  %3547 = phi float [ %3668, %3659 ], [ %3444, %3536 ]
  %3548 = phi float [ %3669, %3659 ], [ %3470, %3536 ]
  %3549 = phi float [ %3670, %3659 ], [ %3471, %3536 ]
  %3550 = phi float [ %3671, %3659 ], [ %3472, %3536 ]
  %3551 = phi float [ %3672, %3659 ], [ %3394, %3536 ]
  %3552 = phi float [ %3673, %3659 ], [ %3393, %3536 ]
  %3553 = phi float [ %3674, %3659 ], [ 0.000000e+00, %3536 ]
  %3554 = phi float [ %3675, %3659 ], [ %3392, %3536 ]
  %3555 = phi float [ %3676, %3659 ], [ %3425, %3536 ]
  %3556 = phi float [ %3677, %3659 ], [ %3426, %3536 ]
  %3557 = phi float [ %3678, %3659 ], [ %3427, %3536 ]
  %3558 = shl nuw nsw i32 %3538, 2
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = lshr i32 %3560, 16
  %3562 = shl i32 %3560, 8
  %3563 = and i32 %3562, 16776960
  %3564 = or i32 %3563, 48
  %3565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3568 = extractvalue %dx.types.ResRet.f32 %3565, 2
  %3569 = or i32 %3563, 64
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.i32 %3570, 1
  %3573 = or i32 %3563, 80
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 3
  %3577 = or i32 %3563, 96
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = or i32 %3563, 112
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3586 = or i32 %3563, 128
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3563, 144
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = or i32 %3563, 160
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3563, 192
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = or i32 %3563, 208
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = or i32 %3563, 248
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3620 = or i32 %3563, 16
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3627 = or i32 %3563, 32
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3629, float %3630, float %3631, float %3632, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3635 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3636 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3637 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3639 = call float @dx.op.unary.f32(i32 27, float %3638)  ; Round_ni(value)
  %3640 = fadd fast float %3637, %3635
  %3641 = fadd fast float %3640, %3639
  %3642 = fcmp fast oeq float %3641, 0.000000e+00
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %3481, float %3482, float %3483, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3481, float %3482, float %3483, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %3484, float %3485, float %3486, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3484, float %3485, float %3486, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = fsub fast float %3643, %3619
  %3648 = fsub fast float %3645, %3619
  %3649 = fsub fast float %3644, %3626
  %3650 = fsub fast float %3646, %3626
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3566, float %3567, float %3568, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3654 = fadd fast float %3653, %3651
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3657 = fcmp fast ogt float %3655, %3656
  %3658 = and i1 %3642, %3657
  br i1 %3658, label %3680, label %3659

; <label>:3659                                    ; preds = %3947, %3763, %3680, %3537
  %3660 = phi float [ %3539, %3680 ], [ %3766, %3763 ], [ %3766, %3947 ], [ %3539, %3537 ]
  %3661 = phi float [ %3540, %3680 ], [ %3540, %3763 ], [ %3922, %3947 ], [ %3540, %3537 ]
  %3662 = phi float [ %3541, %3680 ], [ %3541, %3763 ], [ %3920, %3947 ], [ %3541, %3537 ]
  %3663 = phi float [ %3542, %3680 ], [ %3542, %3763 ], [ %3892, %3947 ], [ %3542, %3537 ]
  %3664 = phi float [ %3543, %3680 ], [ %3543, %3763 ], [ %3890, %3947 ], [ %3543, %3537 ]
  %3665 = phi float [ %3544, %3680 ], [ %3544, %3763 ], [ %3888, %3947 ], [ %3544, %3537 ]
  %3666 = phi float [ %3545, %3680 ], [ %3545, %3763 ], [ %3957, %3947 ], [ %3545, %3537 ]
  %3667 = phi float [ %3546, %3680 ], [ %3546, %3763 ], [ %3958, %3947 ], [ %3546, %3537 ]
  %3668 = phi float [ %3547, %3680 ], [ %3547, %3763 ], [ %3959, %3947 ], [ %3547, %3537 ]
  %3669 = phi float [ %3548, %3680 ], [ %3548, %3763 ], [ %3869, %3947 ], [ %3548, %3537 ]
  %3670 = phi float [ %3549, %3680 ], [ %3549, %3763 ], [ %3870, %3947 ], [ %3549, %3537 ]
  %3671 = phi float [ %3550, %3680 ], [ %3550, %3763 ], [ %3871, %3947 ], [ %3550, %3537 ]
  %3672 = phi float [ %3551, %3680 ], [ %3551, %3763 ], [ %3900, %3947 ], [ %3551, %3537 ]
  %3673 = phi float [ %3552, %3680 ], [ %3552, %3763 ], [ %3897, %3947 ], [ %3552, %3537 ]
  %3674 = phi float [ %3553, %3680 ], [ %3553, %3763 ], [ %3894, %3947 ], [ %3553, %3537 ]
  %3675 = phi float [ %3554, %3680 ], [ %3554, %3763 ], [ %3886, %3947 ], [ %3554, %3537 ]
  %3676 = phi float [ %3555, %3680 ], [ %3555, %3763 ], [ %3881, %3947 ], [ %3555, %3537 ]
  %3677 = phi float [ %3556, %3680 ], [ %3556, %3763 ], [ %3882, %3947 ], [ %3556, %3537 ]
  %3678 = phi float [ %3557, %3680 ], [ %3557, %3763 ], [ %3883, %3947 ], [ %3557, %3537 ]
  %3679 = icmp eq i32 %3561, 0
  br i1 %3679, label %3960, label %3537

; <label>:3680                                    ; preds = %3537
  %3681 = extractvalue %dx.types.ResRet.f32 %3565, 3
  %3682 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3683 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3687 = extractvalue %dx.types.ResRet.i32 %3570, 3
  %3688 = extractvalue %dx.types.ResRet.i32 %3570, 2
  %3689 = bitcast float %3681 to i32
  %3690 = add i32 %3687, 0
  %3691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3690, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3693 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3691, %dx.types.Handle %3692, float %3619, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3647, float %3649, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = fmul fast float %3694, %3686
  %3696 = fadd fast float %3695, %3685
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fmul fast float %3619, %3579
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3626, float %3698)  ; FMad(a,b,c)
  %3700 = fadd fast float %3699, %3684
  %3701 = fmul fast float %3619, %3581
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3626, float %3701)  ; FMad(a,b,c)
  %3703 = fadd fast float %3702, %3683
  %3704 = fmul fast float %3647, %3579
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3649, float %3704)  ; FMad(a,b,c)
  %3706 = fmul fast float %3647, %3581
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3649, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3648, %3579
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3650, float %3708)  ; FMad(a,b,c)
  %3710 = fmul fast float %3648, %3581
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3582, float %3650, float %3710)  ; FMad(a,b,c)
  %3712 = add i32 %3688, 0
  %3713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3712, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3713, %dx.types.Handle %3692, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = and i32 %3689, 1024
  %3717 = icmp ne i32 %3716, 0
  %3718 = fcmp fast ogt float %3715, 0x3FE0101020000000
  %3719 = uitofp i1 %3718 to float
  %3720 = select i1 %3717, float %3719, float %3715
  %3721 = and i32 %3689, 8192
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float %3682, float 1.000000e+00
  %3724 = fmul fast float %3619, 2.000000e+00
  %3725 = fadd fast float %3724, -1.000000e+00
  %3726 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3727 = fmul fast float %3726, %3612
  %3728 = fsub fast float %3727, %3612
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3626, 2.000000e+00
  %3731 = fadd fast float %3730, -1.000000e+00
  %3732 = call float @dx.op.unary.f32(i32 6, float %3731)  ; FAbs(value)
  %3733 = fmul fast float %3732, %3613
  %3734 = fsub fast float %3733, %3613
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3638, %3575
  %3737 = fsub fast float %3736, %3575
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3697, %3723
  %3740 = fmul fast float %3739, %3694
  %3741 = fmul fast float %3740, %3729
  %3742 = fmul fast float %3741, %3720
  %3743 = fmul fast float %3742, %3735
  %3744 = fmul fast float %3743, %3738
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3748 = fsub fast float %3655, %3747
  %3749 = fmul fast float %3748, %3746
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3744, %3576
  %3752 = fadd fast float %3744, %3576
  %3753 = fmul fast float %3752, %3585
  %3754 = fsub fast float %3753, %3585
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = and i32 %3689, 128
  %3757 = icmp ne i32 %3756, 0
  %3758 = select i1 %3757, float %3755, float %3751
  %3759 = fmul fast float %3758, %3750
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = fcmp fast ugt float %3759, %3761
  br i1 %3762, label %3763, label %3659

; <label>:3763                                    ; preds = %3680
  %3764 = select i1 %3722, float %3759, float 0.000000e+00
  %3765 = fadd fast float %3764, %3539
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  br i1 %3722, label %3659, label %3767

; <label>:3767                                    ; preds = %3763
  %3768 = and i32 %3689, 4
  %3769 = and i32 %3689, 8
  %3770 = add i32 %3571, 0
  %3771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3771, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = bitcast float %3597 to i32
  %3779 = and i32 %3778, 255
  %3780 = uitofp i32 %3779 to float
  %3781 = lshr i32 %3778, 8
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = fmul fast float %3777, %3780
  %3785 = fadd fast float %3784, %3783
  %3786 = fmul fast float %3785, 0x3F70101000000000
  %3787 = add i32 %3572, 0
  %3788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3789 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3788, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = bitcast float %3591 to i32
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = lshr i32 %3794, 8
  %3798 = and i32 %3797, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = lshr i32 %3794, 16
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = fmul fast float %3802, 0x3F70101000000000
  %3804 = fmul fast float %3790, %3796
  %3805 = fadd fast float %3804, %3799
  %3806 = fmul fast float %3805, 0x3F70101000000000
  %3807 = fadd fast float %3791, -5.000000e-01
  %3808 = fadd fast float %3793, -5.000000e-01
  %3809 = fmul fast float %3807, %3803
  %3810 = fmul fast float %3808, %3803
  %3811 = fadd fast float %3809, 5.000000e-01
  %3812 = fadd fast float %3810, 5.000000e-01
  %3813 = fmul fast float %3774, %3600
  %3814 = fmul fast float %3775, %3601
  %3815 = fmul fast float %3776, %3602
  %3816 = fmul fast float %3811, 2.000000e+00
  %3817 = fadd fast float %3816, -1.000000e+00
  %3818 = fmul fast float %3812, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fadd fast float %3817, %3819
  %3821 = fmul fast float %3820, 5.000000e-01
  %3822 = fsub fast float %3817, %3819
  %3823 = fmul fast float %3822, 5.000000e-01
  %3824 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3827 = fsub fast float %3825, %3826
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3823, float %3827, float %3821, float %3823, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3821, %3829
  %3831 = fmul fast float %3823, %3829
  %3832 = fmul fast float %3829, %3827
  %3833 = fmul fast float %3832, %3566
  %3834 = fmul fast float %3832, %3567
  %3835 = fmul fast float %3832, %3568
  %3836 = fmul fast float %3830, %3588
  %3837 = fmul fast float %3830, %3589
  %3838 = fmul fast float %3830, %3590
  %3839 = fadd fast float %3836, %3833
  %3840 = fadd fast float %3837, %3834
  %3841 = fadd fast float %3838, %3835
  %3842 = fmul fast float %3831, %3594
  %3843 = fmul fast float %3831, %3595
  %3844 = fmul fast float %3831, %3596
  %3845 = fadd fast float %3839, %3842
  %3846 = fadd fast float %3840, %3843
  %3847 = fadd fast float %3841, %3844
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3846, float %3847, float %3845, float %3846, float %3847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3845, %3849
  %3851 = fmul fast float %3846, %3849
  %3852 = fmul fast float %3847, %3849
  %3853 = icmp ne i32 %3769, 0
  %3854 = select i1 %3853, float 1.000000e+00, float 0.000000e+00
  %3855 = fmul fast float %3759, %3854
  %3856 = and i32 %3689, 1
  %3857 = icmp eq i32 %3856, 0
  br i1 %3857, label %3858, label %3862

; <label>:3858                                    ; preds = %3767
  %3859 = fsub fast float %3850, %3548
  %3860 = fsub fast float %3851, %3549
  %3861 = fsub fast float %3852, %3550
  br label %3862

; <label>:3862                                    ; preds = %3858, %3767
  %3863 = phi float [ %3859, %3858 ], [ %3850, %3767 ]
  %3864 = phi float [ %3860, %3858 ], [ %3851, %3767 ]
  %3865 = phi float [ %3861, %3858 ], [ %3852, %3767 ]
  %3866 = fmul float %3865, %3855
  %3867 = fmul float %3864, %3855
  %3868 = fmul float %3863, %3855
  %3869 = fadd fast float %3868, %3548
  %3870 = fadd fast float %3867, %3549
  %3871 = fadd fast float %3866, %3550
  %3872 = icmp ne i32 %3768, 0
  %3873 = select i1 %3872, float 1.000000e+00, float 0.000000e+00
  %3874 = fmul fast float %3759, %3873
  %3875 = fsub fast float %3813, %3555
  %3876 = fsub fast float %3814, %3556
  %3877 = fsub fast float %3815, %3557
  %3878 = fmul fast float %3875, %3874
  %3879 = fmul fast float %3876, %3874
  %3880 = fmul fast float %3877, %3874
  %3881 = fadd fast float %3878, %3555
  %3882 = fadd fast float %3879, %3556
  %3883 = fadd fast float %3880, %3557
  %3884 = fsub fast float %3786, %3554
  %3885 = fmul fast float %3884, %3874
  %3886 = fadd fast float %3885, %3554
  %3887 = fmul fast float %3874, %3544
  %3888 = fsub fast float %3544, %3887
  %3889 = fmul fast float %3874, %3543
  %3890 = fsub fast float %3543, %3889
  %3891 = fmul fast float %3874, %3542
  %3892 = fsub fast float %3542, %3891
  %3893 = fadd fast float %3759, %3553
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fsub fast float %3806, %3552
  %3896 = fmul fast float %3895, %3855
  %3897 = fadd fast float %3896, %3552
  %3898 = fsub fast float %3792, %3551
  %3899 = fmul fast float %3898, %3855
  %3900 = fadd fast float %3899, %3551
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = fmul fast float %3904, %3901
  %3906 = fadd fast float %3905, %3903
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = bitcast float %3603 to i32
  %3909 = and i32 %3908, 65535
  %3910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3909)  ; LegacyF16ToF32(value)
  %3911 = lshr i32 %3908, 16
  %3912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3911)  ; LegacyF16ToF32(value)
  %3913 = fcmp fast oge float %3910, 0.000000e+00
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = select i1 %3913, float %3910, float %3915
  %3917 = fadd fast float %3916, %3912
  %3918 = fsub fast float %3907, %3541
  %3919 = fmul fast float %3918, %3759
  %3920 = fadd fast float %3919, %3541
  %3921 = fmul fast float %3917, %3759
  %3922 = call float @dx.op.binary.f32(i32 35, float %3540, float %3921)  ; FMax(a,b)
  %3923 = and i32 %3689, 16
  %3924 = icmp eq i32 %3923, 0
  br i1 %3924, label %3947, label %3925

; <label>:3925                                    ; preds = %3862
  %3926 = bitcast float %3609 to i32
  %3927 = add i32 %3606, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = and i32 %3926, 65535
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = fmul fast float %3930, %3600
  %3936 = fmul fast float %3931, %3601
  %3937 = fmul fast float %3932, %3602
  %3938 = and i32 %3689, 16384
  %3939 = icmp ne i32 %3938, 0
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = select i1 %3939, float %3941, float 1.000000e+00
  %3943 = fmul fast float %3942, %3934
  %3944 = fmul fast float %3935, %3943
  %3945 = fmul fast float %3936, %3943
  %3946 = fmul fast float %3937, %3943
  br label %3947

; <label>:3947                                    ; preds = %3925, %3862
  %3948 = phi float [ %3944, %3925 ], [ 0.000000e+00, %3862 ]
  %3949 = phi float [ %3945, %3925 ], [ 0.000000e+00, %3862 ]
  %3950 = phi float [ %3946, %3925 ], [ 0.000000e+00, %3862 ]
  %3951 = fsub fast float %3948, %3545
  %3952 = fsub fast float %3949, %3546
  %3953 = fsub fast float %3950, %3547
  %3954 = fmul fast float %3951, %3759
  %3955 = fmul fast float %3952, %3759
  %3956 = fmul fast float %3953, %3759
  %3957 = fadd fast float %3954, %3545
  %3958 = fadd fast float %3955, %3546
  %3959 = fadd fast float %3956, %3547
  br label %3659

; <label>:3960                                    ; preds = %3659
  br label %3961

; <label>:3961                                    ; preds = %3960, %3474
  %3962 = phi float [ 0.000000e+00, %3474 ], [ %3660, %3960 ]
  %3963 = phi float [ %3418, %3474 ], [ %3661, %3960 ]
  %3964 = phi float [ %3397, %3474 ], [ %3662, %3960 ]
  %3965 = phi float [ %3396, %3474 ], [ %3663, %3960 ]
  %3966 = phi float [ %3395, %3474 ], [ %3664, %3960 ]
  %3967 = phi float [ 0.000000e+00, %3474 ], [ %3665, %3960 ]
  %3968 = phi float [ %3440, %3474 ], [ %3666, %3960 ]
  %3969 = phi float [ %3442, %3474 ], [ %3667, %3960 ]
  %3970 = phi float [ %3444, %3474 ], [ %3668, %3960 ]
  %3971 = phi float [ %3470, %3474 ], [ %3669, %3960 ]
  %3972 = phi float [ %3471, %3474 ], [ %3670, %3960 ]
  %3973 = phi float [ %3472, %3474 ], [ %3671, %3960 ]
  %3974 = phi float [ %3394, %3474 ], [ %3672, %3960 ]
  %3975 = phi float [ %3393, %3474 ], [ %3673, %3960 ]
  %3976 = phi float [ 0.000000e+00, %3474 ], [ %3674, %3960 ]
  %3977 = phi float [ %3392, %3474 ], [ %3675, %3960 ]
  %3978 = phi float [ %3425, %3474 ], [ %3676, %3960 ]
  %3979 = phi float [ %3426, %3474 ], [ %3677, %3960 ]
  %3980 = phi float [ %3427, %3474 ], [ %3678, %3960 ]
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3973, float %3971, float %3972, float %3973)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = call float @dx.op.unary.f32(i32 25, float %3981)  ; Rsqrt(value)
  %3983 = fmul fast float %3982, %3971
  %3984 = fmul fast float %3982, %3972
  %3985 = fmul fast float %3982, %3973
  %3986 = fadd fast float %3976, %977
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3985, float %3983, float %3984, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = call float @dx.op.unary.f32(i32 25, float %3988)  ; Rsqrt(value)
  %3990 = fmul fast float %3989, %3983
  %3991 = fmul fast float %3989, %3984
  %3992 = fmul fast float %3989, %3985
  br label %3993

; <label>:3993                                    ; preds = %3961, %3383
  %3994 = phi float [ %3990, %3961 ], [ %3470, %3383 ]
  %3995 = phi float [ %3991, %3961 ], [ %3471, %3383 ]
  %3996 = phi float [ %3992, %3961 ], [ %3472, %3383 ]
  %3997 = phi float [ %3978, %3961 ], [ %3425, %3383 ]
  %3998 = phi float [ %3979, %3961 ], [ %3426, %3383 ]
  %3999 = phi float [ %3980, %3961 ], [ %3427, %3383 ]
  %4000 = phi float [ %3968, %3961 ], [ %3440, %3383 ]
  %4001 = phi float [ %3969, %3961 ], [ %3442, %3383 ]
  %4002 = phi float [ %3970, %3961 ], [ %3444, %3383 ]
  %4003 = phi float [ %3977, %3961 ], [ %3392, %3383 ]
  %4004 = phi float [ %3987, %3961 ], [ %977, %3383 ]
  %4005 = phi float [ %3975, %3961 ], [ %3393, %3383 ]
  %4006 = phi float [ %3974, %3961 ], [ %3394, %3383 ]
  %4007 = phi float [ %3967, %3961 ], [ 0.000000e+00, %3383 ]
  %4008 = phi float [ %3966, %3961 ], [ %3395, %3383 ]
  %4009 = phi float [ %3965, %3961 ], [ %3396, %3383 ]
  %4010 = phi float [ %3962, %3961 ], [ 0.000000e+00, %3383 ]
  %4011 = phi float [ %3963, %3961 ], [ %3418, %3383 ]
  %4012 = phi float [ %3964, %3961 ], [ %3397, %3383 ]
  %4013 = fadd fast float %4003, 0xBFB99999A0000000
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = fmul fast float %4014, 0x3FF1C71C80000000
  %4016 = call float @dx.op.binary.f32(i32 36, float %4003, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4017 = fsub fast float 1.000000e+00, %4015
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %4018, %3997
  %4020 = fmul fast float %4018, %3998
  %4021 = fmul fast float %4018, %3999
  %4022 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4024 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4025 = fmul fast float %4015, %3997
  %4026 = fmul fast float %4015, %3998
  %4027 = fmul fast float %4015, %3999
  %4028 = fadd fast float %4025, %4016
  %4029 = fadd fast float %4026, %4016
  %4030 = fadd fast float %4027, %4016
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4033 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4034 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.i32 %4035, 3
  %4037 = and i32 %4036, 8
  %4038 = icmp ne i32 %4037, 0
  %4039 = call float @dx.op.binary.f32(i32 35, float %4022, float %3997)  ; FMax(a,b)
  %4040 = call float @dx.op.binary.f32(i32 35, float %4023, float %3997)  ; FMax(a,b)
  %4041 = call float @dx.op.binary.f32(i32 35, float %4024, float %3997)  ; FMax(a,b)
  %4042 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4043 = select i1 %217, float %3997, float %4022
  %4044 = select i1 %217, float %4042, float %4023
  %4045 = select i1 %217, float 1.000000e+00, float %4024
  %4046 = select i1 %4038, float %4039, float %4043
  %4047 = select i1 %4038, float %4040, float %4044
  %4048 = select i1 %4038, float %4041, float %4045
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4049, 2
  %4053 = fadd fast float %4050, %165
  %4054 = fadd fast float %4051, %166
  %4055 = fadd fast float %4052, %167
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = fsub fast float %4053, %4057
  %4060 = fsub fast float %4054, %4058
  %4061 = fmul fast float %4059, %4059
  %4062 = fmul fast float %4060, %4060
  %4063 = fadd fast float %4061, %4062
  %4064 = call float @dx.op.unary.f32(i32 24, float %4063)  ; Sqrt(value)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4066 = fcmp fast olt float %4064, %4065
  br i1 %4066, label %4067, label %4134

; <label>:4067                                    ; preds = %3993
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4076 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4078 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4079 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4080 = fadd fast float %4077, %4053
  %4081 = fadd fast float %4078, %4054
  %4082 = fadd fast float %4079, %4055
  %4083 = fmul fast float %4080, %4069
  %4084 = call float @dx.op.tertiary.f32(i32 46, float %4081, float %4071, float %4083)  ; FMad(a,b,c)
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4073, float %4084)  ; FMad(a,b,c)
  %4086 = fmul fast float %4080, %4074
  %4087 = call float @dx.op.tertiary.f32(i32 46, float %4081, float %4075, float %4086)  ; FMad(a,b,c)
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4076, float %4087)  ; FMad(a,b,c)
  %4089 = fsub fast float %4085, %4077
  %4090 = fsub fast float %4088, %4078
  %4091 = fsub fast float %4089, %4057
  %4092 = fadd fast float %4091, %4065
  %4093 = fsub fast float %4090, %4058
  %4094 = fadd fast float %4093, %4065
  %4095 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4096 = fmul fast float %4092, %4095
  %4097 = fmul fast float %4094, %4095
  %4098 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4099 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4100 = fsub fast float 1.000000e+00, %4098
  %4101 = fsub fast float 1.000000e+00, %4099
  %4102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4100, float %4101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = fcmp fast ugt float %4103, 0.000000e+00
  br i1 %4104, label %4105, label %4408

; <label>:4105                                    ; preds = %4067
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = fmul fast float %4107, %4103
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4110 = fadd fast float %4109, %4108
  %4111 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4112 = fadd fast float %4110, %4079
  %4113 = fmul fast float %4085, %4073
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4076, float %4113)  ; FMad(a,b,c)
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4111, float %4114)  ; FMad(a,b,c)
  %4116 = fsub fast float %4115, %4079
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 2
  %4119 = fsub fast float %4116, %4118
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4100, float %4101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4100, float %4101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = fadd fast float %4125, %4121
  %4129 = fmul fast float %4128, 0x3F847AE140000000
  %4130 = fadd fast float %4126, %4122
  %4131 = fmul fast float %4130, 0x3F847AE140000000
  %4132 = fadd fast float %4127, %4123
  %4133 = fmul fast float %4132, 0x3F847AE140000000
  br label %4408

; <label>:4134                                    ; preds = %3993
  %4135 = and i32 %196, 1
  %4136 = icmp eq i32 %4135, 0
  br i1 %4136, label %4408, label %4137

; <label>:4137                                    ; preds = %4134
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4147 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4148 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4149 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4150 = fadd fast float %4147, %4053
  %4151 = fadd fast float %4148, %4054
  %4152 = fadd fast float %4149, %4055
  %4153 = fmul fast float %4150, %4139
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4141, float %4153)  ; FMad(a,b,c)
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4143, float %4154)  ; FMad(a,b,c)
  %4156 = fmul fast float %4150, %4144
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4145, float %4156)  ; FMad(a,b,c)
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4146, float %4157)  ; FMad(a,b,c)
  %4159 = fsub fast float %4155, %4147
  %4160 = fsub fast float %4158, %4148
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 0
  %4170 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4171 = udiv i32 %4170, %4169
  %4172 = fsub fast float %4159, %4162
  %4173 = fsub fast float %4160, %4163
  %4174 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4175 = call float @dx.op.binary.f32(i32 35, float %4173, float 0.000000e+00)  ; FMax(a,b)
  %4176 = call float @dx.op.binary.f32(i32 36, float %4174, float %4164)  ; FMin(a,b)
  %4177 = call float @dx.op.binary.f32(i32 36, float %4175, float %4165)  ; FMin(a,b)
  %4178 = add i32 %4169, -1
  %4179 = add i32 %4171, -1
  %4180 = fmul fast float %4176, %4167
  %4181 = fmul fast float %4177, %4167
  %4182 = fptoui float %4180 to i32
  %4183 = fptoui float %4181 to i32
  %4184 = call i32 @dx.op.binary.i32(i32 40, i32 %4182, i32 %4178)  ; UMin(a,b)
  %4185 = call i32 @dx.op.binary.i32(i32 40, i32 %4183, i32 %4179)  ; UMin(a,b)
  %4186 = mul i32 %4185, %4169
  %4187 = add i32 %4186, %4184
  %4188 = shl i32 %4187, 2
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = icmp eq i32 %4190, -1
  br i1 %4191, label %4408, label %4192

; <label>:4192                                    ; preds = %4137
  %4193 = mul i32 %4190, 148
  %4194 = add i32 %4193, 4
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = add i32 %4193, 8
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = add i32 %4193, 36
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = add i32 %4193, 60
  %4204 = add i32 %4193, 92
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = add i32 %4193, 116
  %4208 = fsub fast float %4159, %4196
  %4209 = fsub fast float %4160, %4199
  %4210 = fmul fast float %4167, %4208
  %4211 = fmul fast float %4167, %4209
  %4212 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4217 = call float @dx.op.unary.f32(i32 83, float %4212)  ; DerivCoarseX(value)
  %4218 = call float @dx.op.unary.f32(i32 83, float %4214)  ; DerivCoarseX(value)
  %4219 = call float @dx.op.unary.f32(i32 84, float %4212)  ; DerivCoarseY(value)
  %4220 = call float @dx.op.unary.f32(i32 84, float %4214)  ; DerivCoarseY(value)
  %4221 = fmul fast float %4217, %4216
  %4222 = fmul fast float %4218, %4216
  %4223 = fmul fast float %4219, %4216
  %4224 = fmul fast float %4220, %4216
  %4225 = call float @dx.op.dot2.f32(i32 54, float %4223, float %4224, float %4223, float %4224)  ; Dot2(ax,ay,bx,by)
  %4226 = call float @dx.op.dot2.f32(i32 54, float %4221, float %4222, float %4221, float %4222)  ; Dot2(ax,ay,bx,by)
  %4227 = call float @dx.op.binary.f32(i32 35, float %4226, float %4225)  ; FMax(a,b)
  %4228 = call float @dx.op.unary.f32(i32 23, float %4227)  ; Log(value)
  %4229 = fmul fast float %4228, 5.000000e-01
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 1
  %4232 = fadd fast float %4231, %4229
  %4233 = call float @dx.op.binary.f32(i32 35, float %4232, float 0.000000e+00)  ; FMax(a,b)
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 3
  %4236 = fadd fast float %4235, %4233
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 3
  %4239 = fadd fast float %4236, %4238
  %4240 = add i32 %4206, 0
  %4241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4240, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4242 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4241, i32 0)  ; GetDimensions(handle,mipLevel)
  %4243 = extractvalue %dx.types.Dimensions %4242, 0
  %4244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4243)  ; FirstbitLo(value)
  %4245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.i32 %4245, 1
  %4247 = sub nsw i32 %4246, %4244
  %4248 = sitofp i32 %4247 to float
  %4249 = fsub fast float %4239, %4248
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float 0.000000e+00)  ; FMax(a,b)
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4241, %dx.types.Handle %28, float %4212, float %4214, float %4202, float undef, i32 0, i32 0, i32 undef, float %4250)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = fcmp ule float %4252, 0x3FE0101020000000
  %4254 = extractvalue %dx.types.CBufRet.i32 %4245, 0
  %4255 = and i32 %4254, 128
  %4256 = icmp ne i32 %4255, 0
  %4257 = and i1 %4253, %4256
  br i1 %4257, label %4408, label %4258

; <label>:4258                                    ; preds = %4192
  %4259 = add i32 %4193, 20
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = add i32 %4193, 24
  %4263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = add i32 %4193, 40
  %4266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4265, i32 undef)  ; BufferLoad(srv,index,wot)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = add i32 %4193, 96
  %4269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.i32 %4269, 0
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4273 = fmul fast float %4272, %4212
  %4274 = fmul fast float %4272, %4214
  %4275 = extractvalue %dx.types.CBufRet.f32 %4271, 3
  %4276 = fadd fast float %4273, %4275
  %4277 = fadd fast float %4274, %4275
  %4278 = add i32 %4270, 0
  %4279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4278, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4280 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4279, i32 0)  ; GetDimensions(handle,mipLevel)
  %4281 = extractvalue %dx.types.Dimensions %4280, 0
  %4282 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4281)  ; FirstbitLo(value)
  %4283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.i32 %4283, 1
  %4285 = sub nsw i32 %4284, %4282
  %4286 = sitofp i32 %4285 to float
  %4287 = fsub fast float %4236, %4286
  %4288 = call float @dx.op.binary.f32(i32 35, float %4287, float 0.000000e+00)  ; FMax(a,b)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4279, %dx.types.Handle %28, float %4276, float %4277, float %4267, float undef, i32 0, i32 0, i32 undef, float %4288)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = fmul fast float %4290, %4261
  %4292 = fadd fast float %4291, %4264
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.CBufRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4301 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4302 = fadd fast float %4298, %4159
  %4303 = fadd fast float %4300, %4160
  %4304 = fadd fast float %4292, %4301
  %4305 = fmul fast float %4302, %4294
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4303, float %4295, float %4305)  ; FMad(a,b,c)
  %4307 = call float @dx.op.tertiary.f32(i32 46, float %4304, float %4296, float %4306)  ; FMad(a,b,c)
  %4308 = fsub fast float %4307, %4301
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4311 = fsub fast float %4308, %4310
  %4312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.i32 %4312, 0
  %4314 = call i32 @dx.op.binary.i32(i32 40, i32 %4190, i32 %4313)  ; UMin(a,b)
  %4315 = mul i32 %4314, 36
  %4316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4315, i32 undef)  ; BufferLoad(srv,index,wot)
  %4317 = extractvalue %dx.types.ResRet.i32 %4316, 0
  %4318 = add i32 %4315, 4
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = fmul fast float %4320, %4212
  %4322 = fmul fast float %4320, %4214
  %4323 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4324 = fadd fast float %4321, %4323
  %4325 = fadd fast float %4322, %4323
  %4326 = icmp eq i32 %4317, 0
  br i1 %4326, label %4395, label %4327

; <label>:4327                                    ; preds = %4258
  br label %4328

; <label>:4328                                    ; preds = %4385, %4327
  %4329 = phi float [ %4386, %4385 ], [ 0.000000e+00, %4327 ]
  %4330 = phi float [ %4387, %4385 ], [ 0.000000e+00, %4327 ]
  %4331 = phi float [ %4388, %4385 ], [ 0.000000e+00, %4327 ]
  %4332 = phi float [ %4389, %4385 ], [ 0.000000e+00, %4327 ]
  %4333 = phi float [ %4390, %4385 ], [ 0.000000e+00, %4327 ]
  %4334 = phi float [ %4391, %4385 ], [ 0.000000e+00, %4327 ]
  %4335 = phi i32 [ %4392, %4385 ], [ 0, %4327 ]
  %4336 = shl i32 %4335, 2
  %4337 = add i32 %4203, %4336
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4207, %4336
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = add i32 %4342, 0
  %4344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4343, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4345 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4344, i32 0)  ; GetDimensions(handle,mipLevel)
  %4346 = extractvalue %dx.types.Dimensions %4345, 0
  %4347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4346)  ; FirstbitLo(value)
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 1
  %4350 = sub nsw i32 %4349, %4347
  %4351 = sitofp i32 %4350 to float
  %4352 = fsub fast float %4236, %4351
  %4353 = call float @dx.op.binary.f32(i32 35, float %4352, float 0.000000e+00)  ; FMax(a,b)
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4344, %dx.types.Handle %28, float %4324, float %4325, float %4339, float undef, i32 0, i32 0, i32 undef, float %4353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = fcmp fast ogt float %4355, 0.000000e+00
  br i1 %4356, label %4357, label %4385

; <label>:4357                                    ; preds = %4328
  %4358 = add i32 %4318, %4336
  %4359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.i32 %4359, 0
  %4361 = and i32 %4360, 32767
  %4362 = mul nuw nsw i32 %4361, 928
  %4363 = add nuw nsw i32 %4362, 48
  %4364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  %4368 = add nuw nsw i32 %4362, 60
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = fmul fast float %4365, %4355
  %4374 = fmul fast float %4366, %4355
  %4375 = fmul fast float %4367, %4355
  %4376 = fadd fast float %4373, %4329
  %4377 = fadd fast float %4374, %4330
  %4378 = fadd fast float %4375, %4331
  %4379 = fmul fast float %4370, %4355
  %4380 = fmul fast float %4371, %4355
  %4381 = fmul fast float %4372, %4355
  %4382 = fadd fast float %4379, %4332
  %4383 = fadd fast float %4380, %4333
  %4384 = fadd fast float %4381, %4334
  br label %4385

; <label>:4385                                    ; preds = %4357, %4328
  %4386 = phi float [ %4376, %4357 ], [ %4329, %4328 ]
  %4387 = phi float [ %4377, %4357 ], [ %4330, %4328 ]
  %4388 = phi float [ %4378, %4357 ], [ %4331, %4328 ]
  %4389 = phi float [ %4382, %4357 ], [ %4332, %4328 ]
  %4390 = phi float [ %4383, %4357 ], [ %4333, %4328 ]
  %4391 = phi float [ %4384, %4357 ], [ %4334, %4328 ]
  %4392 = add nuw i32 %4335, 1
  %4393 = icmp eq i32 %4392, %4317
  br i1 %4393, label %4394, label %4328

; <label>:4394                                    ; preds = %4385
  br label %4395

; <label>:4395                                    ; preds = %4394, %4258
  %4396 = phi float [ 0.000000e+00, %4258 ], [ %4386, %4394 ]
  %4397 = phi float [ 0.000000e+00, %4258 ], [ %4387, %4394 ]
  %4398 = phi float [ 0.000000e+00, %4258 ], [ %4388, %4394 ]
  %4399 = phi float [ 0.000000e+00, %4258 ], [ %4389, %4394 ]
  %4400 = phi float [ 0.000000e+00, %4258 ], [ %4390, %4394 ]
  %4401 = phi float [ 0.000000e+00, %4258 ], [ %4391, %4394 ]
  %4402 = fadd fast float %4399, %4396
  %4403 = fmul fast float %4402, 0x3F847AE140000000
  %4404 = fadd fast float %4400, %4397
  %4405 = fmul fast float %4404, 0x3F847AE140000000
  %4406 = fadd fast float %4401, %4398
  %4407 = fmul fast float %4406, 0x3F847AE140000000
  br label %4408

; <label>:4408                                    ; preds = %4395, %4192, %4137, %4134, %4105, %4067
  %4409 = phi float [ %4119, %4105 ], [ -1.310720e+05, %4067 ], [ %4311, %4395 ], [ -1.310720e+05, %4137 ], [ -1.310720e+05, %4192 ], [ -1.310720e+05, %4134 ]
  %4410 = phi float [ %4129, %4105 ], [ 0.000000e+00, %4067 ], [ %4403, %4395 ], [ 0.000000e+00, %4137 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4134 ]
  %4411 = phi float [ %4131, %4105 ], [ 0.000000e+00, %4067 ], [ %4405, %4395 ], [ 0.000000e+00, %4137 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4134 ]
  %4412 = phi float [ %4133, %4105 ], [ 0.000000e+00, %4067 ], [ %4407, %4395 ], [ 0.000000e+00, %4137 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4134 ]
  %4413 = phi i1 [ true, %4105 ], [ false, %4067 ], [ true, %4395 ], [ false, %4137 ], [ false, %4192 ], [ false, %4134 ]
  %4414 = and i32 %196, 3
  %4415 = icmp eq i32 %4414, 1
  %4416 = select i1 %4415, float 1.000000e+00, float 0.000000e+00
  %4417 = fsub fast float %4409, %167
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = select i1 %4413, float %4418, float 1.000000e+00
  %4420 = fmul fast float %4419, %4416
  %4421 = icmp eq i32 %4414, 3
  %4422 = select i1 %4421, float 1.000000e+00, float %4420
  %4423 = call float @dx.op.binary.f32(i32 35, float %4010, float %4422)  ; FMax(a,b)
  %4424 = fcmp fast olt float %4422, 1.000000e+00
  %4425 = fcmp uge float %49, 0.000000e+00
  %4426 = and i1 %4425, %4424
  br i1 %4426, label %4427, label %4437

; <label>:4427                                    ; preds = %4408
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = fadd fast float %4429, %4423
  %4433 = fcmp ule float %48, 0.000000e+00
  %4434 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = select i1 %4433, float %4434, float 1.000000e+00
  %4436 = fmul fast float %4435, %4431
  br label %4437

; <label>:4437                                    ; preds = %4427, %4408
  %4438 = phi float [ %4432, %4427 ], [ %4423, %4408 ]
  %4439 = phi float [ %4430, %4427 ], [ 0.000000e+00, %4408 ]
  %4440 = phi float [ %4436, %4427 ], [ 0.000000e+00, %4408 ]
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4444 = fcmp fast une float %4442, 0.000000e+00
  %4445 = fcmp fast une float %4443, 0.000000e+00
  %4446 = or i1 %4444, %4445
  br i1 %4446, label %4447, label %5006

; <label>:4447                                    ; preds = %4437
  br i1 %4444, label %4448, label %4721

; <label>:4448                                    ; preds = %4447
  %4449 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4450 = fmul fast float %4449, 4.000000e+00
  %4451 = call float @dx.op.unary.f32(i32 21, float %4450)  ; Exp(value)
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = fmul fast float %4453, %36
  %4455 = fmul fast float %4453, %37
  %4456 = fmul fast float %4453, %38
  %4457 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4458 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4459 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
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
  %4473 = fcmp fast ogt float %45, 0.000000e+00
  %4474 = fcmp fast ogt float %46, 0.000000e+00
  %4475 = fcmp fast ogt float %47, 0.000000e+00
  %4476 = fcmp fast olt float %45, 0.000000e+00
  %4477 = fcmp fast olt float %46, 0.000000e+00
  %4478 = fcmp fast olt float %47, 0.000000e+00
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
  %4494 = fcmp fast ole float %228, %4472
  %4495 = fmul fast float %4471, %4469
  %4496 = fcmp fast ole float %228, %4495
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
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4547, %dx.types.Handle %75, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 1
  %4552 = extractvalue %dx.types.CBufRet.f32 %4550, 2
  %4553 = fsub fast float 1.000000e+00, %4442
  %4554 = call float @dx.op.binary.f32(i32 35, float %4553, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4555 = bitcast float %4442 to i32
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
  %4584 = phi float [ %4581, %4545 ], [ %4442, %4448 ]
  %4585 = fmul fast float %4584, %4451
  %4586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.i32 %4586, 1
  %4588 = extractvalue %dx.types.CBufRet.i32 %4586, 0
  %4589 = add i32 %4588, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %74, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %4625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.i32 %4625, 3
  %4627 = extractvalue %dx.types.CBufRet.i32 %4625, 2
  %4628 = add i32 %4627, 0
  %4629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4629, %dx.types.Handle %74, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4503, float %4504, float undef, float %4507, float %4508, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
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
  %4679 = fsub fast float %4613, %4046
  %4680 = fsub fast float %4614, %4047
  %4681 = fsub fast float %4615, %4048
  %4682 = fmul fast float %4679, %4585
  %4683 = fmul fast float %4680, %4585
  %4684 = fmul fast float %4681, %4585
  %4685 = fadd fast float %4682, %4046
  %4686 = fadd fast float %4683, %4047
  %4687 = fadd fast float %4684, %4048
  %4688 = fsub fast float %4622, %4031
  %4689 = fsub fast float %4623, %4032
  %4690 = fsub fast float %4624, %4033
  %4691 = fmul fast float %4688, %4585
  %4692 = fmul fast float %4689, %4585
  %4693 = fmul fast float %4690, %4585
  %4694 = fadd fast float %4691, %4031
  %4695 = fadd fast float %4692, %4032
  %4696 = fadd fast float %4693, %4033
  %4697 = fadd fast float %4676, %3994
  %4698 = fadd fast float %4677, %3995
  %4699 = fadd fast float %4678, %3996
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 25, float %4700)  ; Rsqrt(value)
  %4702 = fmul fast float %4697, %4701
  %4703 = fmul fast float %4698, %4701
  %4704 = fmul fast float %4699, %4701
  %4705 = fsub fast float %4702, %3994
  %4706 = fsub fast float %4703, %3995
  %4707 = fsub fast float %4704, %3996
  %4708 = fmul fast float %4705, %4585
  %4709 = fmul fast float %4706, %4585
  %4710 = fmul fast float %4707, %4585
  %4711 = fadd fast float %4708, %3994
  %4712 = fadd fast float %4709, %3995
  %4713 = fadd fast float %4710, %3996
  %4714 = call float @dx.op.binary.f32(i32 36, float %4006, float %4633)  ; FMin(a,b)
  %4715 = fsub fast float %4714, %4006
  %4716 = fmul fast float %4715, %4585
  %4717 = fadd fast float %4716, %4006
  %4718 = fsub fast float %4646, %4034
  %4719 = fmul fast float %4718, %4585
  %4720 = fadd fast float %4719, %4034
  br label %4721

; <label>:4721                                    ; preds = %4583, %4545, %4447
  %4722 = phi float [ %4694, %4583 ], [ %4031, %4545 ], [ %4031, %4447 ]
  %4723 = phi float [ %4695, %4583 ], [ %4032, %4545 ], [ %4032, %4447 ]
  %4724 = phi float [ %4696, %4583 ], [ %4033, %4545 ], [ %4033, %4447 ]
  %4725 = phi float [ %4685, %4583 ], [ %4046, %4545 ], [ %4046, %4447 ]
  %4726 = phi float [ %4686, %4583 ], [ %4047, %4545 ], [ %4047, %4447 ]
  %4727 = phi float [ %4687, %4583 ], [ %4048, %4545 ], [ %4048, %4447 ]
  %4728 = phi float [ %4711, %4583 ], [ %3994, %4545 ], [ %3994, %4447 ]
  %4729 = phi float [ %4712, %4583 ], [ %3995, %4545 ], [ %3995, %4447 ]
  %4730 = phi float [ %4713, %4583 ], [ %3996, %4545 ], [ %3996, %4447 ]
  %4731 = phi float [ %4720, %4583 ], [ %4034, %4545 ], [ %4034, %4447 ]
  %4732 = phi float [ %4717, %4583 ], [ %4006, %4545 ], [ %4006, %4447 ]
  br i1 %4445, label %4733, label %5006

; <label>:4733                                    ; preds = %4721
  %4734 = call float @dx.op.unary.f32(i32 23, float %4732)  ; Log(value)
  %4735 = fmul fast float %4734, 4.000000e+00
  %4736 = call float @dx.op.unary.f32(i32 21, float %4735)  ; Exp(value)
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 0
  %4739 = fmul fast float %4738, %36
  %4740 = fmul fast float %4738, %37
  %4741 = fmul fast float %4738, %38
  %4742 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4743 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4744 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4745 = call float @dx.op.unary.f32(i32 23, float %4742)  ; Log(value)
  %4746 = call float @dx.op.unary.f32(i32 23, float %4743)  ; Log(value)
  %4747 = call float @dx.op.unary.f32(i32 23, float %4744)  ; Log(value)
  %4748 = fmul fast float %4745, 4.000000e+00
  %4749 = fmul fast float %4746, 4.000000e+00
  %4750 = fmul fast float %4747, 4.000000e+00
  %4751 = call float @dx.op.unary.f32(i32 21, float %4748)  ; Exp(value)
  %4752 = call float @dx.op.unary.f32(i32 21, float %4749)  ; Exp(value)
  %4753 = call float @dx.op.unary.f32(i32 21, float %4750)  ; Exp(value)
  %4754 = fadd fast float %4752, %4751
  %4755 = fadd fast float %4754, %4753
  %4756 = fdiv fast float 1.000000e+00, %4755
  %4757 = fmul fast float %4756, %4751
  %4758 = fcmp fast ogt float %45, 0.000000e+00
  %4759 = fcmp fast ogt float %46, 0.000000e+00
  %4760 = fcmp fast ogt float %47, 0.000000e+00
  %4761 = fcmp fast olt float %45, 0.000000e+00
  %4762 = fcmp fast olt float %46, 0.000000e+00
  %4763 = fcmp fast olt float %47, 0.000000e+00
  %4764 = zext i1 %4758 to i32
  %4765 = zext i1 %4759 to i32
  %4766 = zext i1 %4760 to i32
  %4767 = zext i1 %4761 to i32
  %4768 = zext i1 %4762 to i32
  %4769 = zext i1 %4763 to i32
  %4770 = sub nsw i32 %4764, %4767
  %4771 = sub nsw i32 %4765, %4768
  %4772 = sub nsw i32 %4766, %4769
  %4773 = call float @dx.op.unary.f32(i32 83, float %4739)  ; DerivCoarseX(value)
  %4774 = call float @dx.op.unary.f32(i32 83, float %4740)  ; DerivCoarseX(value)
  %4775 = call float @dx.op.unary.f32(i32 83, float %4741)  ; DerivCoarseX(value)
  %4776 = call float @dx.op.unary.f32(i32 84, float %4739)  ; DerivCoarseY(value)
  %4777 = call float @dx.op.unary.f32(i32 84, float %4740)  ; DerivCoarseY(value)
  %4778 = call float @dx.op.unary.f32(i32 84, float %4741)  ; DerivCoarseY(value)
  %4779 = fcmp fast ole float %228, %4757
  %4780 = fmul fast float %4756, %4754
  %4781 = fcmp fast ole float %228, %4780
  %4782 = select i1 %4781, float %4741, float %4739
  %4783 = select i1 %4781, float %4739, float %4740
  %4784 = select i1 %4779, float %4740, float %4782
  %4785 = select i1 %4779, float %4741, float %4783
  %4786 = select i1 %4781, float %4775, float %4773
  %4787 = select i1 %4781, float %4773, float %4774
  %4788 = select i1 %4779, float %4774, float %4786
  %4789 = select i1 %4779, float %4775, float %4787
  %4790 = select i1 %4781, float %4778, float %4776
  %4791 = select i1 %4781, float %4776, float %4777
  %4792 = select i1 %4779, float %4777, float %4790
  %4793 = select i1 %4779, float %4778, float %4791
  %4794 = call float @dx.op.unary.f32(i32 27, float %4784)  ; Round_ni(value)
  %4795 = call float @dx.op.unary.f32(i32 27, float %4785)  ; Round_ni(value)
  %4796 = fptosi float %4794 to i32
  %4797 = fptosi float %4795 to i32
  %4798 = xor i32 %4797, %4796
  %4799 = sitofp i32 %4798 to float
  %4800 = fptosi float %4799 to i32
  %4801 = sitofp i32 %4800 to float
  %4802 = fmul fast float %4801, 0x3FE3C6EF40000000
  %4803 = frem fast float %4794, 2.560000e+02
  %4804 = frem fast float %4795, 2.560000e+02
  %4805 = fptoui float %4803 to i32
  %4806 = fptoui float %4804 to i32
  %4807 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4805, i32 %4806, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = fadd fast float %4808, %4802
  %4812 = fadd fast float %4809, %4802
  %4813 = fadd fast float %4810, %4802
  %4814 = call float @dx.op.unary.f32(i32 22, float %4811)  ; Frc(value)
  %4815 = call float @dx.op.unary.f32(i32 22, float %4812)  ; Frc(value)
  %4816 = call float @dx.op.unary.f32(i32 22, float %4813)  ; Frc(value)
  %4817 = fmul fast float %4816, 0x401921FB60000000
  %4818 = call float @dx.op.unary.f32(i32 13, float %4817)  ; Sin(value)
  %4819 = call float @dx.op.unary.f32(i32 12, float %4817)  ; Cos(value)
  %4820 = fsub fast float -0.000000e+00, %4819
  %4821 = fmul fast float %4819, %4784
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4785, float %4821)  ; FMad(a,b,c)
  %4823 = fmul fast float %4818, %4784
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4785, float %4823)  ; FMad(a,b,c)
  %4825 = fadd fast float %4822, %4814
  %4826 = fadd fast float %4824, %4815
  %4827 = extractvalue %dx.types.CBufRet.f32 %4737, 3
  %4828 = bitcast float %4827 to i32
  %4829 = icmp eq i32 %4828, 0
  br i1 %4829, label %4868, label %4830

; <label>:4830                                    ; preds = %4733
  %4831 = add i32 %4828, 0
  %4832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4833 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4832, %dx.types.Handle %75, float %4825, float %4826, float undef, float undef, i32 0, i32 0, i32 undef, float %4788, float %4789, float undef, float %4792, float %4793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4838 = fsub fast float 1.000000e+00, %4443
  %4839 = call float @dx.op.binary.f32(i32 35, float %4838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4840 = bitcast float %4443 to i32
  %4841 = sitofp i32 %4840 to float
  %4842 = fadd fast float %4841, 0xC1CFBF8940000000
  %4843 = fmul fast float %4837, %4842
  %4844 = fadd fast float %4843, 0x41CFBF8940000000
  %4845 = fptosi float %4844 to i32
  %4846 = bitcast i32 %4845 to float
  %4847 = bitcast float %4839 to i32
  %4848 = sitofp i32 %4847 to float
  %4849 = fadd fast float %4848, 0xC1CFBF8940000000
  %4850 = fmul fast float %4849, %4837
  %4851 = fadd fast float %4850, 0x41CFBF8940000000
  %4852 = fptosi float %4851 to i32
  %4853 = bitcast i32 %4852 to float
  %4854 = fmul fast float %4846, %4836
  %4855 = fmul fast float %4853, %4836
  %4856 = fsub fast float %4839, %4854
  %4857 = fadd fast float %4855, %4839
  %4858 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4860 = fsub fast float %4834, %4858
  %4861 = fsub fast float %4859, %4858
  %4862 = bitcast float %4861 to i32
  %4863 = sub nsw i32 2129859010, %4862
  %4864 = bitcast i32 %4863 to float
  %4865 = fmul fast float %4864, %4860
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fcmp fast olt float %4866, 0x3F70101020000000
  br i1 %4867, label %5006, label %4868

; <label>:4868                                    ; preds = %4830, %4733
  %4869 = phi float [ %4866, %4830 ], [ %4443, %4733 ]
  %4870 = fmul fast float %4869, %4736
  %4871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.i32 %4871, 1
  %4873 = extractvalue %dx.types.CBufRet.i32 %4871, 0
  %4874 = add i32 %4873, 0
  %4875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4875, %dx.types.Handle %74, float %4825, float %4826, float undef, float undef, i32 0, i32 0, i32 undef, float %4788, float %4789, float undef, float %4792, float %4793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.ResRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.ResRet.f32 %4876, 2
  %4880 = extractvalue %dx.types.ResRet.f32 %4876, 3
  %4881 = and i32 %4872, 255
  %4882 = uitofp i32 %4881 to float
  %4883 = lshr i32 %4872, 8
  %4884 = and i32 %4883, 255
  %4885 = uitofp i32 %4884 to float
  %4886 = fmul fast float %4880, %4882
  %4887 = fadd fast float %4886, %4885
  %4888 = fmul fast float %4887, 0x3F70101000000000
  %4889 = fadd fast float %4888, 0xBFB99999A0000000
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, 0x3FF1C71C80000000
  %4892 = call float @dx.op.binary.f32(i32 36, float %4888, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4893 = fsub fast float 1.000000e+00, %4891
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, %4877
  %4896 = fmul fast float %4894, %4878
  %4897 = fmul fast float %4894, %4879
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = fmul fast float %4891, %4877
  %4902 = fmul fast float %4891, %4878
  %4903 = fmul fast float %4891, %4879
  %4904 = fadd fast float %4901, %4892
  %4905 = fadd fast float %4902, %4892
  %4906 = fadd fast float %4903, %4892
  %4907 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.i32 %4910, 3
  %4912 = extractvalue %dx.types.CBufRet.i32 %4910, 2
  %4913 = add i32 %4912, 0
  %4914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4915 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4914, %dx.types.Handle %74, float %4825, float %4826, float undef, float undef, i32 0, i32 0, i32 undef, float %4788, float %4789, float undef, float %4792, float %4793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.ResRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.ResRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.ResRet.f32 %4915, 3
  %4920 = and i32 %4911, 255
  %4921 = uitofp i32 %4920 to float
  %4922 = lshr i32 %4911, 8
  %4923 = and i32 %4922, 255
  %4924 = uitofp i32 %4923 to float
  %4925 = lshr i32 %4911, 16
  %4926 = and i32 %4925, 255
  %4927 = uitofp i32 %4926 to float
  %4928 = fmul fast float %4927, 0x3F70101000000000
  %4929 = fmul fast float %4916, %4921
  %4930 = fadd fast float %4929, %4924
  %4931 = fmul fast float %4930, 0x3F70101000000000
  %4932 = fadd fast float %4917, -5.000000e-01
  %4933 = fadd fast float %4919, -5.000000e-01
  %4934 = fmul fast float %4932, %4928
  %4935 = fmul fast float %4933, %4928
  %4936 = fadd fast float %4934, 5.000000e-01
  %4937 = fadd fast float %4935, 5.000000e-01
  %4938 = fmul fast float %4936, 2.000000e+00
  %4939 = fadd fast float %4938, -1.000000e+00
  %4940 = fmul fast float %4937, 2.000000e+00
  %4941 = fadd fast float %4940, -1.000000e+00
  %4942 = fadd fast float %4939, %4941
  %4943 = fmul fast float %4942, 5.000000e-01
  %4944 = fsub fast float %4939, %4941
  %4945 = fmul fast float %4944, 5.000000e-01
  %4946 = call float @dx.op.unary.f32(i32 6, float %4943)  ; FAbs(value)
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = call float @dx.op.unary.f32(i32 6, float %4945)  ; FAbs(value)
  %4949 = fsub fast float %4947, %4948
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4945, float %4949, float %4943, float %4945, float %4949)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.unary.f32(i32 25, float %4950)  ; Rsqrt(value)
  %4952 = fmul fast float %4943, %4951
  %4953 = fmul fast float %4945, %4951
  %4954 = select i1 %4781, i32 %4771, i32 %4772
  %4955 = select i1 %4779, i32 %4770, i32 %4954
  %4956 = sitofp i32 %4955 to float
  %4957 = fmul fast float %4949, %4956
  %4958 = fmul fast float %4957, %4951
  %4959 = select i1 %4781, float %4958, float %4953
  %4960 = select i1 %4781, float %4953, float %4958
  %4961 = select i1 %4779, float %4958, float %4952
  %4962 = select i1 %4779, float %4953, float %4959
  %4963 = select i1 %4779, float %4952, float %4960
  %4964 = fsub fast float %4898, %4725
  %4965 = fsub fast float %4899, %4726
  %4966 = fsub fast float %4900, %4727
  %4967 = fmul fast float %4964, %4870
  %4968 = fmul fast float %4965, %4870
  %4969 = fmul fast float %4966, %4870
  %4970 = fadd fast float %4967, %4725
  %4971 = fadd fast float %4968, %4726
  %4972 = fadd fast float %4969, %4727
  %4973 = fsub fast float %4907, %4722
  %4974 = fsub fast float %4908, %4723
  %4975 = fsub fast float %4909, %4724
  %4976 = fmul fast float %4973, %4870
  %4977 = fmul fast float %4974, %4870
  %4978 = fmul fast float %4975, %4870
  %4979 = fadd fast float %4976, %4722
  %4980 = fadd fast float %4977, %4723
  %4981 = fadd fast float %4978, %4724
  %4982 = fadd fast float %4961, %4728
  %4983 = fadd fast float %4962, %4729
  %4984 = fadd fast float %4963, %4730
  %4985 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4983, float %4984, float %4982, float %4983, float %4984)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = call float @dx.op.unary.f32(i32 25, float %4985)  ; Rsqrt(value)
  %4987 = fmul fast float %4982, %4986
  %4988 = fmul fast float %4983, %4986
  %4989 = fmul fast float %4984, %4986
  %4990 = fsub fast float %4987, %4728
  %4991 = fsub fast float %4988, %4729
  %4992 = fsub fast float %4989, %4730
  %4993 = fmul fast float %4990, %4870
  %4994 = fmul fast float %4991, %4870
  %4995 = fmul fast float %4992, %4870
  %4996 = fadd fast float %4993, %4728
  %4997 = fadd fast float %4994, %4729
  %4998 = fadd fast float %4995, %4730
  %4999 = call float @dx.op.binary.f32(i32 36, float %4732, float %4918)  ; FMin(a,b)
  %5000 = fsub fast float %4999, %4732
  %5001 = fmul fast float %5000, %4870
  %5002 = fadd fast float %5001, %4732
  %5003 = fsub fast float %4931, %4731
  %5004 = fmul fast float %5003, %4870
  %5005 = fadd fast float %5004, %4731
  br label %5006

; <label>:5006                                    ; preds = %4868, %4830, %4721, %4437
  %5007 = phi float [ %4979, %4868 ], [ %4722, %4830 ], [ %4722, %4721 ], [ %4031, %4437 ]
  %5008 = phi float [ %4980, %4868 ], [ %4723, %4830 ], [ %4723, %4721 ], [ %4032, %4437 ]
  %5009 = phi float [ %4981, %4868 ], [ %4724, %4830 ], [ %4724, %4721 ], [ %4033, %4437 ]
  %5010 = phi float [ %4970, %4868 ], [ %4725, %4830 ], [ %4725, %4721 ], [ %4046, %4437 ]
  %5011 = phi float [ %4971, %4868 ], [ %4726, %4830 ], [ %4726, %4721 ], [ %4047, %4437 ]
  %5012 = phi float [ %4972, %4868 ], [ %4727, %4830 ], [ %4727, %4721 ], [ %4048, %4437 ]
  %5013 = phi float [ %4996, %4868 ], [ %4728, %4830 ], [ %4728, %4721 ], [ %3994, %4437 ]
  %5014 = phi float [ %4997, %4868 ], [ %4729, %4830 ], [ %4729, %4721 ], [ %3995, %4437 ]
  %5015 = phi float [ %4998, %4868 ], [ %4730, %4830 ], [ %4730, %4721 ], [ %3996, %4437 ]
  %5016 = phi float [ %5005, %4868 ], [ %4731, %4830 ], [ %4731, %4721 ], [ %4034, %4437 ]
  %5017 = phi float [ %5002, %4868 ], [ %4732, %4830 ], [ %4732, %4721 ], [ %4006, %4437 ]
  %5018 = fcmp fast une float %4441, 0.000000e+00
  %5019 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = call float @dx.op.unary.f32(i32 25, float %5019)  ; Rsqrt(value)
  br i1 %5018, label %5028, label %5021

; <label>:5021                                    ; preds = %5006
  %5022 = fmul fast float %5020, %165
  %5023 = fmul fast float %5020, %166
  %5024 = fmul fast float %5020, %167
  %5025 = fsub fast float -0.000000e+00, %5022
  %5026 = fsub fast float -0.000000e+00, %5023
  %5027 = fsub fast float -0.000000e+00, %5024
  br label %5195

; <label>:5028                                    ; preds = %5006
  %5029 = fmul fast float %165, %5020
  %5030 = fsub fast float -0.000000e+00, %5029
  %5031 = fmul fast float %166, %5020
  %5032 = fsub fast float -0.000000e+00, %5031
  %5033 = fmul fast float %167, %5020
  %5034 = fsub fast float -0.000000e+00, %5033
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5032, float %5034, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fmul fast float %4441, 2.500000e+00
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = fmul fast float %4441, 0x4013FFFFE0000000
  %5039 = fadd fast float %5038, 0xBFFFFFFFE0000000
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %4441, 0x4004000020000000
  %5042 = fadd fast float %5041, 0xBFF8000040000000
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %4013, 1.000000e+01
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, 2.000000e+00
  %5047 = fsub fast float 3.000000e+00, %5046
  %5048 = fmul fast float %5045, %5045
  %5049 = fmul fast float %5048, %5047
  %5050 = fsub fast float 1.000000e+00, %5049
  %5051 = fsub fast float 0x3FE3333340000000, %5016
  %5052 = fmul fast float %5051, 0x400AAAAAA0000000
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5050, %5053
  %5055 = fmul fast float %5010, 0x3FEA2B8620000000
  %5056 = fmul fast float %5011, 0x3FEA2B8620000000
  %5057 = fmul fast float %5012, 0x3FEA2B8620000000
  %5058 = fadd fast float %5055, 0x3FC81DFBA0000000
  %5059 = fmul fast float %5058, %5010
  %5060 = fadd fast float %5059, 0x3F910E6020000000
  %5061 = fadd fast float %5056, 0x3FC81DFBA0000000
  %5062 = fmul fast float %5061, %5011
  %5063 = fadd fast float %5062, 0x3F910E6020000000
  %5064 = fadd fast float %5057, 0x3FC81DFBA0000000
  %5065 = fmul fast float %5064, %5012
  %5066 = fadd fast float %5065, 0x3F910E6020000000
  %5067 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = fsub fast float %5067, %5010
  %5071 = fsub fast float %5068, %5011
  %5072 = fsub fast float %5069, %5012
  %5073 = fmul fast float %5070, %5037
  %5074 = fmul fast float %5073, %5054
  %5075 = fmul fast float %5071, %5037
  %5076 = fmul fast float %5075, %5054
  %5077 = fmul fast float %5072, %5037
  %5078 = fmul fast float %5077, %5054
  %5079 = fadd fast float %5074, %5010
  %5080 = fadd fast float %5076, %5011
  %5081 = fadd fast float %5078, %5012
  %5082 = fmul fast float %5017, %5017
  %5083 = fmul fast float %5082, %5082
  %5084 = fadd fast float %5040, 1.000000e+00
  %5085 = fsub fast float %5084, %5054
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fsub fast float 1.000000e+00, %5083
  %5090 = call float @dx.op.binary.f32(i32 36, float %5086, float %5089)  ; FMin(a,b)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5090, float %5091)  ; FMax(a,b)
  %5093 = fadd fast float %5088, 0xBFE4CCCCC0000000
  %5094 = fmul fast float %5093, 0x4006DB6DA0000000
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, 2.000000e+00
  %5097 = fsub fast float 3.000000e+00, %5096
  %5098 = bitcast float %5007 to i32
  %5099 = ashr i32 %5098, 1
  %5100 = add nsw i32 %5099, 532487669
  %5101 = bitcast i32 %5100 to float
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = bitcast float %5102 to i32
  %5104 = sub nsw i32 2129859010, %5103
  %5105 = bitcast i32 %5104 to float
  %5106 = fmul fast float %5105, 2.000000e+00
  %5107 = bitcast float %5008 to i32
  %5108 = ashr i32 %5107, 1
  %5109 = add nsw i32 %5108, 532487669
  %5110 = bitcast i32 %5109 to float
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = bitcast float %5111 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = fmul fast float %5114, 2.000000e+00
  %5116 = bitcast float %5009 to i32
  %5117 = ashr i32 %5116, 1
  %5118 = add nsw i32 %5117, 532487669
  %5119 = bitcast i32 %5118 to float
  %5120 = fsub fast float 1.000000e+00, %5119
  %5121 = bitcast float %5120 to i32
  %5122 = sub nsw i32 2129859010, %5121
  %5123 = bitcast i32 %5122 to float
  %5124 = fmul fast float %5123, 2.000000e+00
  %5125 = fsub fast float 0x4002A9FBE0000000, %5106
  %5126 = fadd fast float %5106, 0x3FD54FDF00000000
  %5127 = bitcast float %5126 to i32
  %5128 = sub nsw i32 2129859010, %5127
  %5129 = bitcast i32 %5128 to float
  %5130 = fmul fast float %5129, %5125
  %5131 = fmul fast float %5130, %5130
  %5132 = fsub fast float 0x4002A9FBE0000000, %5115
  %5133 = fadd fast float %5115, 0x3FD54FDF00000000
  %5134 = bitcast float %5133 to i32
  %5135 = sub nsw i32 2129859010, %5134
  %5136 = bitcast i32 %5135 to float
  %5137 = fmul fast float %5136, %5132
  %5138 = fmul fast float %5137, %5137
  %5139 = fsub fast float 0x4002A9FBE0000000, %5124
  %5140 = fadd fast float %5124, 0x3FD54FDF00000000
  %5141 = bitcast float %5140 to i32
  %5142 = sub nsw i32 2129859010, %5141
  %5143 = bitcast i32 %5142 to float
  %5144 = fmul fast float %5143, %5139
  %5145 = fmul fast float %5144, %5144
  %5146 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5131)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5138)  ; FMax(a,b)
  %5148 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5145)  ; FMax(a,b)
  %5149 = fsub fast float 1.000000e+00, %5035
  %5150 = fadd fast float %5149, %5050
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fsub fast float 1.000000e+00, %4422
  %5153 = fmul fast float %5092, %5152
  %5154 = fmul fast float %5095, %5095
  %5155 = fmul fast float %5154, %5153
  %5156 = fmul fast float %5155, %5097
  %5157 = fmul fast float %5152, 0xBFE99999A0000000
  %5158 = fmul fast float %5157, %5037
  %5159 = fmul fast float %5158, %5054
  %5160 = fadd fast float %5159, 1.000000e+00
  %5161 = fadd fast float %5016, -1.000000e+00
  %5162 = fmul fast float %5160, %5161
  %5163 = fadd fast float %5162, 1.000000e+00
  %5164 = fsub fast float %5146, %5007
  %5165 = fsub fast float %5147, %5008
  %5166 = fsub fast float %5148, %5009
  %5167 = fmul fast float %5156, %5164
  %5168 = fmul fast float %5156, %5165
  %5169 = fmul fast float %5156, %5166
  %5170 = fadd fast float %5167, %5007
  %5171 = fadd fast float %5168, %5008
  %5172 = fadd fast float %5169, %5009
  %5173 = fsub fast float %85, %5013
  %5174 = fsub fast float %86, %5014
  %5175 = fsub fast float %87, %5015
  %5176 = fmul fast float %5156, %5173
  %5177 = fmul fast float %5156, %5174
  %5178 = fmul fast float %5156, %5175
  %5179 = fadd fast float %5176, %5013
  %5180 = fadd fast float %5177, %5014
  %5181 = fadd fast float %5178, %5015
  %5182 = fmul fast float %5156, %5151
  %5183 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = fmul fast float %5182, %5184
  %5186 = fadd fast float %5185, %5183
  %5187 = fsub fast float 1.000000e+00, %5017
  %5188 = fmul fast float %5156, %5187
  %5189 = fadd fast float %5188, %5017
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 25, float %5190)  ; Rsqrt(value)
  %5192 = fmul fast float %5179, %5191
  %5193 = fmul fast float %5180, %5191
  %5194 = fmul fast float %5181, %5191
  br label %5195

; <label>:5195                                    ; preds = %5028, %5021
  %5196 = phi float [ %5027, %5021 ], [ %5034, %5028 ]
  %5197 = phi float [ %5026, %5021 ], [ %5032, %5028 ]
  %5198 = phi float [ %5025, %5021 ], [ %5030, %5028 ]
  %5199 = phi float [ %5024, %5021 ], [ %5033, %5028 ]
  %5200 = phi float [ %5023, %5021 ], [ %5031, %5028 ]
  %5201 = phi float [ %5022, %5021 ], [ %5029, %5028 ]
  %5202 = phi float [ %5007, %5021 ], [ %5170, %5028 ]
  %5203 = phi float [ %5008, %5021 ], [ %5171, %5028 ]
  %5204 = phi float [ %5009, %5021 ], [ %5172, %5028 ]
  %5205 = phi float [ %5010, %5021 ], [ %5079, %5028 ]
  %5206 = phi float [ %5011, %5021 ], [ %5080, %5028 ]
  %5207 = phi float [ %5012, %5021 ], [ %5081, %5028 ]
  %5208 = phi float [ %5013, %5021 ], [ %5192, %5028 ]
  %5209 = phi float [ %5014, %5021 ], [ %5193, %5028 ]
  %5210 = phi float [ %5015, %5021 ], [ %5194, %5028 ]
  %5211 = phi float [ %5016, %5021 ], [ %5186, %5028 ]
  %5212 = phi float [ %5017, %5021 ], [ %5189, %5028 ]
  %5213 = select i1 %217, float 0.000000e+00, float %5204
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5198, float %5197, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5200, float %5199, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = fmul fast float %5216, 2.000000e+00
  %5218 = fmul fast float %5217, %5208
  %5219 = fmul fast float %5217, %5209
  %5220 = fmul fast float %5217, %5210
  %5221 = fsub fast float %5201, %5218
  %5222 = fsub fast float %5200, %5219
  %5223 = fsub fast float %5199, %5220
  %5224 = call float @dx.op.binary.f32(i32 36, float %5212, float 1.000000e+00)  ; FMin(a,b)
  %5225 = fsub fast float 1.000000e+00, %5212
  %5226 = bitcast float %5225 to i32
  %5227 = sub nsw i32 2129859010, %5226
  %5228 = fsub fast float 1.000000e+00, %55
  %5229 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5230 = call float @dx.op.binary.f32(i32 35, float %5229, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5231 = fdiv fast float %5228, %5230
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5233, 5.000000e-01
  %5235 = fadd fast float %5234, 5.000000e-01
  %5236 = fmul fast float %5235, %55
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5238, %5231
  %5240 = fadd fast float %5236, %5239
  %5241 = fsub fast float 5.000000e-01, %5234
  %5242 = fmul fast float %5241, %5205
  %5243 = fmul fast float %5241, %5206
  %5244 = fmul fast float %5241, %5207
  %5245 = fadd fast float %5240, %5242
  %5246 = fadd fast float %5240, %5243
  %5247 = fadd fast float %5240, %5244
  %5248 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5249, 5.000000e-01
  %5251 = fadd fast float %5250, 5.000000e-01
  %5252 = fmul fast float %5251, %55
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fmul fast float %5254, %5231
  %5256 = fadd fast float %5252, %5255
  %5257 = fsub fast float 5.000000e-01, %5250
  %5258 = fmul fast float %5257, %5205
  %5259 = fmul fast float %5257, %5206
  %5260 = fmul fast float %5257, %5207
  %5261 = fadd fast float %5256, %5258
  %5262 = fadd fast float %5256, %5259
  %5263 = fadd fast float %5256, %5260
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5266 = call float @dx.op.binary.f32(i32 36, float %5205, float %5265)  ; FMin(a,b)
  %5267 = fsub fast float 1.000000e+00, %5224
  %5268 = fmul fast float %5266, %5267
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = bitcast float %5269 to i32
  %5271 = sub nsw i32 2129859010, %5270
  %5272 = bitcast i32 %5271 to float
  %5273 = call float @dx.op.binary.f32(i32 36, float %5206, float %5265)  ; FMin(a,b)
  %5274 = fmul fast float %5273, %5267
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = bitcast float %5275 to i32
  %5277 = sub nsw i32 2129859010, %5276
  %5278 = bitcast i32 %5277 to float
  %5279 = call float @dx.op.binary.f32(i32 36, float %5207, float %5265)  ; FMin(a,b)
  %5280 = fmul fast float %5279, %5267
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = bitcast float %5281 to i32
  %5283 = sub nsw i32 2129859010, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = fmul fast float %5224, %56
  %5286 = fmul fast float %5285, %5245
  %5287 = fmul fast float %5286, %5272
  %5288 = fmul fast float %5224, %57
  %5289 = fmul fast float %5288, %5246
  %5290 = fmul fast float %5289, %5278
  %5291 = fmul fast float %5224, %58
  %5292 = fmul fast float %5291, %5247
  %5293 = fmul fast float %5292, %5284
  %5294 = call float @dx.op.binary.f32(i32 36, float %5202, float %5265)  ; FMin(a,b)
  %5295 = fmul fast float %5294, %5267
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = bitcast float %5296 to i32
  %5298 = sub nsw i32 2129859010, %5297
  %5299 = bitcast i32 %5298 to float
  %5300 = call float @dx.op.binary.f32(i32 36, float %5203, float %5265)  ; FMin(a,b)
  %5301 = fmul fast float %5300, %5267
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sub nsw i32 2129859010, %5303
  %5305 = bitcast i32 %5304 to float
  %5306 = call float @dx.op.binary.f32(i32 36, float %5213, float %5265)  ; FMin(a,b)
  %5307 = fmul fast float %5306, %5267
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5285, %5261
  %5313 = fmul fast float %5312, %5299
  %5314 = fmul fast float %5288, %5262
  %5315 = fmul fast float %5314, %5305
  %5316 = fmul fast float %5291, %5263
  %5317 = fmul fast float %5316, %5311
  %5318 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5290, float %5293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = select i1 %217, float 0.000000e+00, float %5287
  %5320 = select i1 %217, float %5318, float %5290
  %5321 = select i1 %217, float 0.000000e+00, float %5293
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5315, float %5317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = select i1 %217, float 0.000000e+00, float %5313
  %5324 = select i1 %217, float %5322, float %5315
  %5325 = select i1 %217, float 0.000000e+00, float %5317
  %5326 = fmul fast float %5215, 9.843750e-01
  %5327 = fmul fast float %5211, 9.843750e-01
  %5328 = fadd fast float %5326, 7.812500e-03
  %5329 = fadd fast float %5327, 7.812500e-03
  %5330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5328, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 3
  %5333 = fmul fast float %5331, %5202
  %5334 = fmul fast float %5331, %5203
  %5335 = fmul fast float %5331, %5213
  %5336 = fadd fast float %5333, %5332
  %5337 = fadd fast float %5334, %5332
  %5338 = fadd fast float %5335, %5332
  %5339 = fcmp fast ogt float %4007, 0.000000e+00
  br i1 %5339, label %5340, label %5366

; <label>:5340                                    ; preds = %5195
  %5341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4007, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = fadd fast float %5342, -5.000000e-01
  %5346 = fadd fast float %5343, -5.000000e-01
  %5347 = fadd fast float %5344, -5.000000e-01
  %5348 = fsub fast float 1.000000e+00, %5202
  %5349 = fsub fast float 1.000000e+00, %5203
  %5350 = fsub fast float 1.000000e+00, %5213
  %5351 = fmul fast float %5202, 4.000000e+00
  %5352 = fmul fast float %5351, %5348
  %5353 = fmul fast float %5352, %5345
  %5354 = fmul fast float %5203, 4.000000e+00
  %5355 = fmul fast float %5354, %5349
  %5356 = fmul fast float %5355, %5346
  %5357 = fmul fast float %5213, 4.000000e+00
  %5358 = fmul fast float %5357, %5350
  %5359 = fmul fast float %5358, %5347
  %5360 = fadd fast float %5353, %5336
  %5361 = fadd fast float %5356, %5337
  %5362 = fadd fast float %5359, %5338
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  br label %5366

; <label>:5366                                    ; preds = %5340, %5195
  %5367 = phi float [ %5363, %5340 ], [ %5336, %5195 ]
  %5368 = phi float [ %5364, %5340 ], [ %5337, %5195 ]
  %5369 = phi float [ %5365, %5340 ], [ %5338, %5195 ]
  %5370 = call float @dx.op.binary.f32(i32 35, float %5368, float %5369)  ; FMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 35, float %5367, float %5370)  ; FMax(a,b)
  %5372 = fsub fast float 1.000000e+00, %5371
  %5373 = fmul fast float %5215, 0x3FEC61D440000000
  %5374 = fadd fast float %5373, 0x3FA1204B00000000
  %5375 = fmul fast float %5374, %5215
  %5376 = fadd fast float %5375, 0x3F931451C0000000
  %5377 = fmul fast float %5376, %4009
  %5378 = fadd fast float %5377, 1.000000e+00
  %5379 = fmul fast float %5319, %5378
  %5380 = fmul fast float %5320, %5378
  %5381 = fmul fast float %5321, %5378
  %5382 = fmul fast float %5379, %5372
  %5383 = fmul fast float %5380, %5372
  %5384 = fmul fast float %5381, %5372
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fcmp fast ogt float %5385, 0x3E7FF19E20000000
  %5387 = fdiv fast float 1.000000e+00, %5385
  %5388 = select i1 %5386, float %5387, float 0.000000e+00
  %5389 = fmul fast float %5388, %5205
  %5390 = fmul fast float %5388, %5206
  %5391 = fmul fast float %5388, %5207
  %5392 = fadd fast float %5389, -1.000000e+00
  %5393 = fadd fast float %5390, -1.000000e+00
  %5394 = fadd fast float %5391, -1.000000e+00
  %5395 = fmul fast float %5392, 5.000000e-01
  %5396 = fmul fast float %5393, 5.000000e-01
  %5397 = fmul fast float %5394, 5.000000e-01
  %5398 = fadd fast float %5395, 1.000000e+00
  %5399 = fadd fast float %5396, 1.000000e+00
  %5400 = fadd fast float %5397, 1.000000e+00
  %5401 = fmul fast float %5367, %5323
  %5402 = fmul fast float %5368, %5324
  %5403 = fmul fast float %5369, %5325
  %5404 = fsub fast float 1.000000e+00, %5215
  %5405 = bitcast float %5404 to i32
  %5406 = sitofp i32 %5405 to float
  %5407 = fmul fast float %5406, 5.000000e+00
  %5408 = fadd fast float %5407, 0xC1EFBF8940000000
  %5409 = fptosi float %5408 to i32
  %5410 = bitcast i32 %5409 to float
  %5411 = fmul fast float %5410, %4008
  %5412 = fmul fast float %5319, %5411
  %5413 = fmul fast float %5412, %5372
  %5414 = fmul fast float %5413, %5398
  %5415 = fmul fast float %5320, %5411
  %5416 = fmul fast float %5415, %5372
  %5417 = fmul fast float %5416, %5399
  %5418 = fmul fast float %5321, %5411
  %5419 = fmul fast float %5418, %5372
  %5420 = fmul fast float %5419, %5400
  %5421 = fmul fast float %5382, %4004
  %5422 = fmul fast float %5383, %4004
  %5423 = fmul fast float %5384, %4004
  %5424 = fadd fast float %5401, %4000
  %5425 = fadd fast float %5424, %5414
  %5426 = fmul fast float %5425, %4004
  %5427 = fadd fast float %5402, %4001
  %5428 = fadd fast float %5427, %5417
  %5429 = fmul fast float %5428, %4004
  %5430 = fadd fast float %5403, %4002
  %5431 = fadd fast float %5430, %5420
  %5432 = fmul fast float %5431, %4004
  %5433 = bitcast i32 %5227 to float
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 3
  %5436 = fcmp fast oeq float %5435, 0.000000e+00
  br i1 %5436, label %5683, label %5437

; <label>:5437                                    ; preds = %5366
  %5438 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5434, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5434, 2
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = select i1 %217, float %5446, float %5442
  %5450 = select i1 %217, float %5448, float %5443
  %5451 = select i1 %217, float %5447, float %5444
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5454 = fcmp fast une float %5453, 0.000000e+00
  br i1 %5454, label %5455, label %5472

; <label>:5455                                    ; preds = %5437
  %5456 = fptoui float %78 to i32
  %5457 = fptoui float %79 to i32
  %5458 = lshr i32 %5456, 4
  %5459 = lshr i32 %5457, 4
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = fptoui float %5461 to i32
  %5463 = add i32 %5462, 15
  %5464 = lshr i32 %5463, 4
  %5465 = mul i32 %5464, %5459
  %5466 = add i32 %5465, %5458
  %5467 = shl i32 %5466, 3
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = and i32 %5469, -268435456
  %5471 = icmp eq i32 %5470, -1342177280
  br i1 %5471, label %5482, label %5472

; <label>:5472                                    ; preds = %5455, %5437
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5476 = fmul fast float %5474, %78
  %5477 = fmul fast float %5475, %79
  %5478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5476, float %5477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.ResRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.ResRet.f32 %5478, 2
  br label %5482

; <label>:5482                                    ; preds = %5472, %5455
  %5483 = phi float [ %5479, %5472 ], [ 0.000000e+00, %5455 ]
  %5484 = phi float [ %5480, %5472 ], [ 0.000000e+00, %5455 ]
  %5485 = phi float [ %5481, %5472 ], [ 0.000000e+00, %5455 ]
  %5486 = call float @dx.op.binary.f32(i32 36, float %5484, float %5485)  ; FMin(a,b)
  %5487 = call float @dx.op.binary.f32(i32 36, float %5483, float %5486)  ; FMin(a,b)
  %5488 = fcmp fast ogt float %5487, 0.000000e+00
  br i1 %5488, label %5489, label %5683, !dx.controlflow.hints !76

; <label>:5489                                    ; preds = %5482
  %5490 = fmul fast float %5483, %5449
  %5491 = fmul fast float %5484, %5450
  %5492 = fmul fast float %5485, %5451
  %5493 = fsub fast float %5438, %5201
  %5494 = fsub fast float %5439, %5200
  %5495 = fsub fast float %5440, %5199
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 25, float %5496)  ; Rsqrt(value)
  %5498 = fmul fast float %5497, %5493
  %5499 = fmul fast float %5497, %5494
  %5500 = fmul fast float %5497, %5495
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5197, float %5196, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5504 = fmul fast float %5503, %5503
  %5505 = fmul fast float %5504, %5433
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = fmul fast float %5506, %5503
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fmul fast float %5508, %5508
  %5510 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5511 = fsub fast float 1.000000e+00, %5211
  %5512 = call float @dx.op.binary.f32(i32 35, float %5511, float 0x3F847AE140000000)  ; FMax(a,b)
  %5513 = fmul fast float %5512, %5512
  %5514 = fmul fast float %5513, %5513
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = fmul fast float %5215, %5215
  %5517 = fmul fast float %5516, %5515
  %5518 = fadd fast float %5517, %5514
  %5519 = bitcast float %5518 to i32
  %5520 = ashr i32 %5519, 1
  %5521 = add nsw i32 %5520, 532487669
  %5522 = bitcast i32 %5521 to float
  %5523 = fadd fast float %5522, %5215
  %5524 = fmul fast float %5514, %5509
  %5525 = fsub fast float 1.000000e+00, %5509
  %5526 = fadd fast float %5525, %5524
  %5527 = fmul fast float %5510, %5510
  %5528 = fmul fast float %5527, %5515
  %5529 = fadd fast float %5528, %5514
  %5530 = bitcast float %5529 to i32
  %5531 = ashr i32 %5530, 1
  %5532 = add nsw i32 %5531, 532487669
  %5533 = bitcast i32 %5532 to float
  %5534 = fadd fast float %5533, %5510
  %5535 = fmul fast float %5526, %5526
  %5536 = fmul fast float %5535, %5523
  %5537 = fmul fast float %5536, %5534
  %5538 = fdiv fast float 0x3FF0A00000000000, %5537
  %5539 = fmul fast float %5538, %5514
  %5540 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = bitcast float %5541 to i32
  %5543 = sitofp i32 %5542 to float
  %5544 = fmul fast float %5543, 5.000000e+00
  %5545 = fadd fast float %5544, 0xC1EFBF8940000000
  %5546 = fptosi float %5545 to i32
  %5547 = bitcast i32 %5546 to float
  %5548 = fsub fast float 1.000000e+00, %5202
  %5549 = fsub fast float 1.000000e+00, %5203
  %5550 = fsub fast float 1.000000e+00, %5213
  %5551 = fmul fast float %5547, %5548
  %5552 = fmul fast float %5547, %5549
  %5553 = fmul fast float %5547, %5550
  %5554 = fadd fast float %5551, %5202
  %5555 = fadd fast float %5552, %5203
  %5556 = fadd fast float %5553, %5213
  br i1 %5339, label %5557, label %5580

; <label>:5557                                    ; preds = %5489
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4007, float %5540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = fadd fast float %5559, -5.000000e-01
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fmul fast float %5202, 4.000000e+00
  %5566 = fmul fast float %5565, %5548
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %5203, 4.000000e+00
  %5569 = fmul fast float %5568, %5549
  %5570 = fmul fast float %5569, %5563
  %5571 = fmul fast float %5213, 4.000000e+00
  %5572 = fmul fast float %5571, %5550
  %5573 = fmul fast float %5572, %5564
  %5574 = fadd fast float %5567, %5554
  %5575 = fadd fast float %5570, %5555
  %5576 = fadd fast float %5573, %5556
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  br label %5580

; <label>:5580                                    ; preds = %5557, %5489
  %5581 = phi float [ %5577, %5557 ], [ %5554, %5489 ]
  %5582 = phi float [ %5578, %5557 ], [ %5555, %5489 ]
  %5583 = phi float [ %5579, %5557 ], [ %5556, %5489 ]
  %5584 = fmul fast float %5501, 9.843750e-01
  %5585 = fadd fast float %5584, 7.812500e-03
  %5586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5585, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 2
  %5588 = extractvalue %dx.types.ResRet.f32 %5586, 3
  %5589 = fmul fast float %5587, %5202
  %5590 = fmul fast float %5587, %5203
  %5591 = fmul fast float %5587, %5213
  %5592 = fadd fast float %5589, %5588
  %5593 = fadd fast float %5590, %5588
  %5594 = fadd fast float %5591, %5588
  br i1 %5339, label %5595, label %5618

; <label>:5595                                    ; preds = %5580
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4007, float %5501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5600 = fadd fast float %5597, -5.000000e-01
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fmul fast float %5202, 4.000000e+00
  %5604 = fmul fast float %5603, %5548
  %5605 = fmul fast float %5604, %5600
  %5606 = fmul fast float %5203, 4.000000e+00
  %5607 = fmul fast float %5606, %5549
  %5608 = fmul fast float %5607, %5601
  %5609 = fmul fast float %5213, 4.000000e+00
  %5610 = fmul fast float %5609, %5550
  %5611 = fmul fast float %5610, %5602
  %5612 = fadd fast float %5605, %5592
  %5613 = fadd fast float %5608, %5593
  %5614 = fadd fast float %5611, %5594
  %5615 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5616 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5617 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  br label %5618

; <label>:5618                                    ; preds = %5595, %5580
  %5619 = phi float [ %5615, %5595 ], [ %5592, %5580 ]
  %5620 = phi float [ %5616, %5595 ], [ %5593, %5580 ]
  %5621 = phi float [ %5617, %5595 ], [ %5594, %5580 ]
  %5622 = call float @dx.op.binary.f32(i32 35, float %5620, float %5621)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5619, float %5622)  ; FMax(a,b)
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fadd fast float %5221, %5438
  %5626 = fadd fast float %5222, %5439
  %5627 = fadd fast float %5223, %5440
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5625, float %5626, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.unary.f32(i32 25, float %5628)  ; Rsqrt(value)
  %5630 = fmul fast float %5625, %5629
  %5631 = fmul fast float %5626, %5629
  %5632 = fmul fast float %5627, %5629
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5630, float %5631, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = fmul fast float %5633, %5633
  %5635 = fmul fast float %5634, 0x3FEFBDA520000000
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = fmul fast float %5636, %5636
  %5638 = fdiv fast float 0x3F6096BBA0000000, %5637
  %5639 = fmul fast float %5638, %4009
  %5640 = fadd fast float %5639, 1.000000e+00
  %5641 = fmul fast float %5581, %5539
  %5642 = fmul fast float %5582, %5539
  %5643 = fmul fast float %5583, %5539
  %5644 = fsub fast float 1.000000e+00, %5502
  %5645 = bitcast float %5644 to i32
  %5646 = sitofp i32 %5645 to float
  %5647 = fmul fast float %5646, 5.000000e+00
  %5648 = fadd fast float %5647, 0xC1EFBF8940000000
  %5649 = fptosi float %5648 to i32
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5650, %4008
  %5652 = fmul fast float %5624, %5651
  %5653 = fmul fast float %5652, %5398
  %5654 = fmul fast float %5652, %5399
  %5655 = fmul fast float %5652, %5400
  %5656 = fadd fast float %5653, %5641
  %5657 = fadd fast float %5654, %5642
  %5658 = fadd fast float %5655, %5643
  %5659 = fmul fast float %5507, %5490
  %5660 = fmul fast float %5659, %5624
  %5661 = fmul fast float %5660, %5640
  %5662 = fmul fast float %5507, %5491
  %5663 = fmul fast float %5662, %5624
  %5664 = fmul fast float %5663, %5640
  %5665 = fmul fast float %5507, %5492
  %5666 = fmul fast float %5665, %5624
  %5667 = fmul fast float %5666, %5640
  %5668 = fmul fast float %5659, %5656
  %5669 = fmul fast float %5662, %5657
  %5670 = fmul fast float %5665, %5658
  %5671 = fadd fast float %5661, %5382
  %5672 = fmul fast float %5671, %4004
  %5673 = fadd fast float %5664, %5383
  %5674 = fmul fast float %5673, %4004
  %5675 = fadd fast float %5667, %5384
  %5676 = fmul fast float %5675, %4004
  %5677 = fadd fast float %5668, %5425
  %5678 = fmul fast float %5677, %4004
  %5679 = fadd fast float %5669, %5428
  %5680 = fmul fast float %5679, %4004
  %5681 = fadd fast float %5670, %5431
  %5682 = fmul fast float %5681, %4004
  br label %5683

; <label>:5683                                    ; preds = %5618, %5482, %5366
  %5684 = phi float [ %5426, %5366 ], [ %5426, %5482 ], [ %5678, %5618 ]
  %5685 = phi float [ %5429, %5366 ], [ %5429, %5482 ], [ %5680, %5618 ]
  %5686 = phi float [ %5432, %5366 ], [ %5432, %5482 ], [ %5682, %5618 ]
  %5687 = phi float [ %5421, %5366 ], [ %5421, %5482 ], [ %5672, %5618 ]
  %5688 = phi float [ %5422, %5366 ], [ %5422, %5482 ], [ %5674, %5618 ]
  %5689 = phi float [ %5423, %5366 ], [ %5423, %5482 ], [ %5676, %5618 ]
  %5690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.i32 %5690, 0
  %5692 = icmp eq i32 %5691, 0
  br i1 %5692, label %6146, label %5693

; <label>:5693                                    ; preds = %5683
  %5694 = fptoui float %78 to i32
  %5695 = fptoui float %79 to i32
  %5696 = lshr i32 %5694, 4
  %5697 = lshr i32 %5695, 4
  %5698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.i32 %5698, 0
  %5700 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5697, i32 %5699, i32 %5696)  ; UMad(a,b,c)
  %5701 = add nsw i32 %5691, -1
  %5702 = call i32 @dx.op.binary.i32(i32 37, i32 %5701, i32 0)  ; IMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5704 = fptoui float %5703 to i32
  %5705 = lshr i32 %5704, 5
  %5706 = call i32 @dx.op.binary.i32(i32 40, i32 %5705, i32 8191)  ; UMin(a,b)
  %5707 = shl i32 %5706, 2
  %5708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5707, i32 undef)  ; BufferLoad(srv,index,wot)
  %5709 = extractvalue %dx.types.ResRet.i32 %5708, 0
  %5710 = lshr i32 %5709, 16
  %5711 = and i32 %5709, 65535
  %5712 = lshr i32 %5709, 21
  %5713 = lshr i32 %5711, 5
  %5714 = call i32 @dx.op.binary.i32(i32 40, i32 %5713, i32 %5702)  ; UMin(a,b)
  %5715 = icmp ugt i32 %5712, %5714
  br i1 %5715, label %6146, label %5716

; <label>:5716                                    ; preds = %5693
  br label %5717

; <label>:5717                                    ; preds = %6136, %5716
  %5718 = phi i32 [ %6143, %6136 ], [ %5712, %5716 ]
  %5719 = phi float [ %6137, %6136 ], [ %5684, %5716 ]
  %5720 = phi float [ %6138, %6136 ], [ %5685, %5716 ]
  %5721 = phi float [ %6139, %6136 ], [ %5686, %5716 ]
  %5722 = phi float [ %6140, %6136 ], [ %5687, %5716 ]
  %5723 = phi float [ %6141, %6136 ], [ %5688, %5716 ]
  %5724 = phi float [ %6142, %6136 ], [ %5689, %5716 ]
  %5725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.i32 %5725, 0
  %5727 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5700, i32 %5726, i32 %5718)  ; UMad(a,b,c)
  %5728 = shl i32 %5727, 2
  %5729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5728, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.i32 %5729, 0
  %5731 = shl i32 %5718, 5
  %5732 = sub nsw i32 %5710, %5731
  %5733 = call i32 @dx.op.binary.i32(i32 37, i32 %5732, i32 0)  ; IMax(a,b)
  %5734 = call i32 @dx.op.binary.i32(i32 38, i32 %5733, i32 31)  ; IMin(a,b)
  %5735 = sub nsw i32 1, %5710
  %5736 = add nsw i32 %5735, %5711
  %5737 = call i32 @dx.op.binary.i32(i32 37, i32 %5736, i32 0)  ; IMax(a,b)
  %5738 = call i32 @dx.op.binary.i32(i32 38, i32 %5737, i32 32)  ; IMin(a,b)
  %5739 = and i32 %5738, 31
  %5740 = shl i32 -1, %5739
  %5741 = xor i32 %5740, -1
  %5742 = and i32 %5734, 31
  %5743 = shl i32 %5741, %5742
  %5744 = icmp eq i32 %5738, 32
  %5745 = select i1 %5744, i32 -1, i32 %5743
  %5746 = and i32 %5745, %5730
  %5747 = icmp eq i32 %5746, 0
  br i1 %5747, label %6136, label %5748

; <label>:5748                                    ; preds = %5717
  br label %5749

; <label>:5749                                    ; preds = %5829, %5748
  %5750 = phi i32 [ %5761, %5829 ], [ %5746, %5748 ]
  %5751 = phi float [ %5830, %5829 ], [ %5719, %5748 ]
  %5752 = phi float [ %5831, %5829 ], [ %5720, %5748 ]
  %5753 = phi float [ %5832, %5829 ], [ %5721, %5748 ]
  %5754 = phi float [ %5833, %5829 ], [ %5722, %5748 ]
  %5755 = phi float [ %5834, %5829 ], [ %5723, %5748 ]
  %5756 = phi float [ %5835, %5829 ], [ %5724, %5748 ]
  %5757 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5750)  ; FirstbitLo(value)
  %5758 = add i32 %5757, %5731
  %5759 = and i32 %5757, 31
  %5760 = shl i32 1, %5759
  %5761 = xor i32 %5760, %5750
  %5762 = mul i32 %5758, 112
  %5763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.ResRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.ResRet.f32 %5763, 2
  %5767 = or i32 %5762, 12
  %5768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5767, i32 undef)  ; BufferLoad(srv,index,wot)
  %5769 = extractvalue %dx.types.ResRet.f32 %5768, 0
  %5770 = add i32 %5762, 44
  %5771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 0
  %5773 = add i32 %5762, 48
  %5774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5773, i32 undef)  ; BufferLoad(srv,index,wot)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.ResRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.ResRet.f32 %5774, 2
  %5778 = add i32 %5762, 80
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = select i1 %217, float %5780, float %5764
  %5784 = select i1 %217, float %5782, float %5765
  %5785 = select i1 %217, float %5781, float %5766
  %5786 = fsub fast float %5775, %165
  %5787 = fsub fast float %5776, %166
  %5788 = fsub fast float %5777, %167
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 24, float %5789)  ; Sqrt(value)
  %5791 = fdiv fast float 1.000000e+00, %5790
  %5792 = fmul fast float %5791, %5786
  %5793 = fmul fast float %5791, %5787
  %5794 = fmul fast float %5791, %5788
  %5795 = fadd fast float %5790, %5769
  %5796 = fdiv fast float 1.000000e+00, %5795
  %5797 = fmul float %5772, %5796
  %5798 = fmul float %5797, %5797
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = and i32 %5760, %5746
  %5801 = icmp eq i32 %5800, 0
  br i1 %5801, label %5824, label %5802, !dx.controlflow.hints !77

; <label>:5802                                    ; preds = %5749
  %5803 = lshr i32 %5694, 5
  %5804 = lshr i32 %5695, 5
  %5805 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5803, i32 %5804, i32 %5758, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5806 = extractvalue %dx.types.ResRet.i32 %5805, 0
  %5807 = and i32 %5806, 3
  %5808 = icmp eq i32 %5807, 0
  %5809 = select i1 %5808, float 1.000000e+00, float 0.000000e+00
  %5810 = icmp eq i32 %5807, 3
  br i1 %5810, label %5811, label %5824

; <label>:5811                                    ; preds = %5802
  %5812 = lshr i32 %5806, 10
  %5813 = and i32 %5812, 8160
  %5814 = and i32 %5695, 31
  %5815 = or i32 %5813, %5814
  %5816 = lshr i32 %5806, 1
  %5817 = and i32 %5816, 16352
  %5818 = and i32 %5694, 31
  %5819 = or i32 %5817, %5818
  %5820 = lshr i32 %5806, 23
  %5821 = and i32 %5820, 255
  %5822 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5819, i32 %5815, i32 %5821, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  br label %5824

; <label>:5824                                    ; preds = %5811, %5802, %5749
  %5825 = phi float [ %5823, %5811 ], [ %5809, %5802 ], [ 0.000000e+00, %5749 ]
  %5826 = call float @dx.op.binary.f32(i32 36, float %5825, float %5825)  ; FMin(a,b)
  %5827 = call float @dx.op.binary.f32(i32 36, float %5825, float %5826)  ; FMin(a,b)
  %5828 = fcmp fast ogt float %5827, 0.000000e+00
  br i1 %5828, label %5837, label %5829, !dx.controlflow.hints !78

; <label>:5829                                    ; preds = %6073, %5824
  %5830 = phi float [ %5751, %5824 ], [ %6132, %6073 ]
  %5831 = phi float [ %5752, %5824 ], [ %6133, %6073 ]
  %5832 = phi float [ %5753, %5824 ], [ %6134, %6073 ]
  %5833 = phi float [ %5754, %5824 ], [ %6126, %6073 ]
  %5834 = phi float [ %5755, %5824 ], [ %6127, %6073 ]
  %5835 = phi float [ %5756, %5824 ], [ %6128, %6073 ]
  %5836 = icmp eq i32 %5750, %5760
  br i1 %5836, label %6135, label %5749

; <label>:5837                                    ; preds = %5824
  %5838 = fmul fast float %5825, %5783
  %5839 = fmul fast float %5825, %5784
  %5840 = fmul fast float %5825, %5785
  %5841 = fsub fast float %5777, %4409
  %5842 = fcmp fast ogt float %5841, 0.000000e+00
  %5843 = fsub fast float %167, %4409
  %5844 = fcmp fast ogt float %5843, 0.000000e+00
  %5845 = xor i1 %5844, %5842
  %5846 = fsub fast float %4409, %5777
  %5847 = fmul fast float %5846, 2.000000e+00
  %5848 = fadd fast float %5847, %5777
  %5849 = select i1 %5845, float %5777, float %5848
  %5850 = fsub fast float %5849, %167
  %5851 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5850, float %5786, float %5787, float %5850)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.unary.f32(i32 25, float %5851)  ; Rsqrt(value)
  %5853 = fmul fast float %5852, %5786
  %5854 = fmul fast float %5852, %5787
  %5855 = fmul fast float %5852, %5850
  %5856 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5853, float %5854, float %5855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = fdiv fast float 1.000000e+00, %5857
  %5859 = fmul fast float %5858, %5856
  %5860 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5843, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fcmp fast ogt float %5860, 0.000000e+00
  %5862 = fcmp fast olt float %5860, 0.000000e+00
  %5863 = zext i1 %5861 to i32
  %5864 = zext i1 %5862 to i32
  %5865 = sub nsw i32 %5863, %5864
  %5866 = sitofp i32 %5865 to float
  %5867 = fsub fast float %5849, %4409
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5867, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fcmp fast ogt float %5868, 0.000000e+00
  %5870 = fcmp fast olt float %5868, 0.000000e+00
  %5871 = zext i1 %5869 to i32
  %5872 = zext i1 %5870 to i32
  %5873 = sub nsw i32 %5871, %5872
  %5874 = sitofp i32 %5873 to float
  %5875 = fcmp fast une float %5866, %5874
  br i1 %5875, label %5876, label %5886

; <label>:5876                                    ; preds = %5837
  %5877 = fmul fast float %5859, %5855
  %5878 = fmul fast float %5859, %5854
  %5879 = fmul fast float %5859, %5853
  %5880 = fmul fast float %5879, %5879
  %5881 = fmul fast float %5878, %5878
  %5882 = fadd fast float %5880, %5881
  %5883 = fmul fast float %5877, %5877
  %5884 = fadd fast float %5882, %5883
  %5885 = call float @dx.op.unary.f32(i32 24, float %5884)  ; Sqrt(value)
  br label %5898

; <label>:5886                                    ; preds = %5837
  %5887 = icmp slt i32 %5865, 0
  br i1 %5887, label %5888, label %5898

; <label>:5888                                    ; preds = %5886
  %5889 = fsub fast float %165, %5775
  %5890 = fsub fast float %166, %5776
  %5891 = fsub fast float %167, %5849
  %5892 = fmul fast float %5889, %5889
  %5893 = fmul fast float %5890, %5890
  %5894 = fadd fast float %5892, %5893
  %5895 = fmul fast float %5891, %5891
  %5896 = fadd fast float %5894, %5895
  %5897 = call float @dx.op.unary.f32(i32 24, float %5896)  ; Sqrt(value)
  br label %5898

; <label>:5898                                    ; preds = %5888, %5886, %5876
  %5899 = phi float [ %5885, %5876 ], [ %5897, %5888 ], [ 0.000000e+00, %5886 ]
  %5900 = and i1 %5844, %5842
  %5901 = fsub fast float -0.000000e+00, %5899
  %5902 = select i1 %5900, float -0.000000e+00, float %5901
  %5903 = fmul fast float %4410, 0x3FF7154760000000
  %5904 = fmul fast float %5903, %5902
  %5905 = fmul fast float %4411, 0x3FF7154760000000
  %5906 = fmul fast float %5905, %5902
  %5907 = fmul fast float %4412, 0x3FF7154760000000
  %5908 = fmul fast float %5907, %5902
  %5909 = call float @dx.op.unary.f32(i32 21, float %5904)  ; Exp(value)
  %5910 = call float @dx.op.unary.f32(i32 21, float %5906)  ; Exp(value)
  %5911 = call float @dx.op.unary.f32(i32 21, float %5908)  ; Exp(value)
  %5912 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5913 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5914 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  %5915 = fmul fast float %5838, %5912
  %5916 = fmul fast float %5839, %5913
  %5917 = fmul fast float %5840, %5914
  %5918 = fsub fast float %5792, %5201
  %5919 = fsub fast float %5793, %5200
  %5920 = fsub fast float %5794, %5199
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5920, float %5918, float %5919, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.unary.f32(i32 25, float %5921)  ; Rsqrt(value)
  %5923 = fmul fast float %5922, %5918
  %5924 = fmul fast float %5922, %5919
  %5925 = fmul fast float %5922, %5920
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %5794, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5197, float %5196, float %5923, float %5924, float %5925)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5929 = fmul fast float %5928, %5799
  %5930 = fmul fast float %5928, %5928
  %5931 = fmul fast float %5930, %5433
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5929, %5932
  %5934 = bitcast float %5789 to i32
  %5935 = ashr i32 %5934, 1
  %5936 = sub nsw i32 1597463007, %5935
  %5937 = bitcast i32 %5936 to float
  %5938 = fmul fast float %5937, %5786
  %5939 = fmul fast float %5937, %5787
  %5940 = fmul fast float %5937, %5788
  %5941 = fsub fast float %5938, %5201
  %5942 = fsub fast float %5939, %5200
  %5943 = fsub fast float %5940, %5199
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5942, float %5943, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = call float @dx.op.unary.f32(i32 25, float %5944)  ; Rsqrt(value)
  %5946 = fmul fast float %5941, %5945
  %5947 = fmul fast float %5942, %5945
  %5948 = fmul fast float %5943, %5945
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = fmul fast float %5949, %5949
  %5951 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5952 = fsub fast float 1.000000e+00, %5211
  %5953 = call float @dx.op.binary.f32(i32 35, float %5952, float 0x3F847AE140000000)  ; FMax(a,b)
  %5954 = fmul fast float %5953, %5953
  %5955 = fmul fast float %5954, %5954
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = fmul fast float %5215, %5215
  %5958 = fmul fast float %5957, %5956
  %5959 = fadd fast float %5958, %5955
  %5960 = bitcast float %5959 to i32
  %5961 = ashr i32 %5960, 1
  %5962 = add nsw i32 %5961, 532487669
  %5963 = bitcast i32 %5962 to float
  %5964 = fadd fast float %5963, %5215
  %5965 = fmul fast float %5955, %5950
  %5966 = fsub fast float 1.000000e+00, %5950
  %5967 = fadd fast float %5966, %5965
  %5968 = fmul fast float %5951, %5951
  %5969 = fmul fast float %5968, %5956
  %5970 = fadd fast float %5969, %5955
  %5971 = bitcast float %5970 to i32
  %5972 = ashr i32 %5971, 1
  %5973 = add nsw i32 %5972, 532487669
  %5974 = bitcast i32 %5973 to float
  %5975 = fadd fast float %5974, %5951
  %5976 = fmul fast float %5967, %5967
  %5977 = fmul fast float %5976, %5964
  %5978 = fmul fast float %5977, %5975
  %5979 = fdiv fast float 1.000000e+00, %5978
  %5980 = bitcast float %5955 to i32
  %5981 = sitofp i32 %5980 to float
  %5982 = fmul fast float %5981, 0x3FE7F73180000000
  %5983 = fadd fast float %5982, 0x41AFE27C40000000
  %5984 = fptosi float %5983 to i32
  %5985 = bitcast i32 %5984 to float
  %5986 = fmul fast float %5772, 0x3FD80E9D60000000
  %5987 = fmul fast float %5986, %5937
  %5988 = fadd fast float %5985, %5987
  %5989 = bitcast float %5988 to i32
  %5990 = sub nsw i32 2129859010, %5989
  %5991 = bitcast i32 %5990 to float
  %5992 = fmul fast float %5955, %5979
  %5993 = fmul fast float %5992, %5985
  %5994 = fmul fast float %5993, %5991
  %5995 = call float @dx.op.unary.f32(i32 6, float %5927)  ; FAbs(value)
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sitofp i32 %5997 to float
  %5999 = fmul fast float %5998, 5.000000e+00
  %6000 = fadd fast float %5999, 0xC1EFBF8940000000
  %6001 = fptosi float %6000 to i32
  %6002 = bitcast i32 %6001 to float
  %6003 = fsub fast float 1.000000e+00, %5202
  %6004 = fsub fast float 1.000000e+00, %5203
  %6005 = fsub fast float 1.000000e+00, %5213
  %6006 = fmul fast float %6002, %6003
  %6007 = fmul fast float %6002, %6004
  %6008 = fmul fast float %6002, %6005
  %6009 = fadd fast float %6006, %5202
  %6010 = fadd fast float %6007, %5203
  %6011 = fadd fast float %6008, %5213
  br i1 %5339, label %6012, label %6035

; <label>:6012                                    ; preds = %5898
  %6013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4007, float %5995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.ResRet.f32 %6013, 1
  %6016 = extractvalue %dx.types.ResRet.f32 %6013, 2
  %6017 = fadd fast float %6014, -5.000000e-01
  %6018 = fadd fast float %6015, -5.000000e-01
  %6019 = fadd fast float %6016, -5.000000e-01
  %6020 = fmul fast float %5202, 4.000000e+00
  %6021 = fmul fast float %6020, %6003
  %6022 = fmul fast float %6021, %6017
  %6023 = fmul fast float %5203, 4.000000e+00
  %6024 = fmul fast float %6023, %6004
  %6025 = fmul fast float %6024, %6018
  %6026 = fmul fast float %5213, 4.000000e+00
  %6027 = fmul fast float %6026, %6005
  %6028 = fmul fast float %6027, %6019
  %6029 = fadd fast float %6022, %6009
  %6030 = fadd fast float %6025, %6010
  %6031 = fadd fast float %6028, %6011
  %6032 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  br label %6035

; <label>:6035                                    ; preds = %6012, %5898
  %6036 = phi float [ %6032, %6012 ], [ %6009, %5898 ]
  %6037 = phi float [ %6033, %6012 ], [ %6010, %5898 ]
  %6038 = phi float [ %6034, %6012 ], [ %6011, %5898 ]
  %6039 = fmul fast float %5926, 9.843750e-01
  %6040 = fadd fast float %6039, 7.812500e-03
  %6041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %6040, float %5329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 2
  %6043 = extractvalue %dx.types.ResRet.f32 %6041, 3
  %6044 = fmul fast float %6042, %5202
  %6045 = fmul fast float %6042, %5203
  %6046 = fmul fast float %6042, %5213
  %6047 = fadd fast float %6044, %6043
  %6048 = fadd fast float %6045, %6043
  %6049 = fadd fast float %6046, %6043
  br i1 %5339, label %6050, label %6073

; <label>:6050                                    ; preds = %6035
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4007, float %5926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fmul fast float %5202, 4.000000e+00
  %6059 = fmul fast float %6058, %6003
  %6060 = fmul fast float %6059, %6055
  %6061 = fmul fast float %5203, 4.000000e+00
  %6062 = fmul fast float %6061, %6004
  %6063 = fmul fast float %6062, %6056
  %6064 = fmul fast float %5213, 4.000000e+00
  %6065 = fmul fast float %6064, %6005
  %6066 = fmul fast float %6065, %6057
  %6067 = fadd fast float %6060, %6047
  %6068 = fadd fast float %6063, %6048
  %6069 = fadd fast float %6066, %6049
  %6070 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6071 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  br label %6073

; <label>:6073                                    ; preds = %6050, %6035
  %6074 = phi float [ %6070, %6050 ], [ %6047, %6035 ]
  %6075 = phi float [ %6071, %6050 ], [ %6048, %6035 ]
  %6076 = phi float [ %6072, %6050 ], [ %6049, %6035 ]
  %6077 = call float @dx.op.binary.f32(i32 35, float %6075, float %6076)  ; FMax(a,b)
  %6078 = call float @dx.op.binary.f32(i32 35, float %6074, float %6077)  ; FMax(a,b)
  %6079 = fsub fast float 1.000000e+00, %6078
  %6080 = fadd fast float %5221, %5792
  %6081 = fadd fast float %5222, %5793
  %6082 = fadd fast float %5223, %5794
  %6083 = call float @dx.op.dot3.f32(i32 55, float %6080, float %6081, float %6082, float %6080, float %6081, float %6082)  ; Dot3(ax,ay,az,bx,by,bz)
  %6084 = call float @dx.op.unary.f32(i32 25, float %6083)  ; Rsqrt(value)
  %6085 = fmul fast float %6080, %6084
  %6086 = fmul fast float %6081, %6084
  %6087 = fmul fast float %6082, %6084
  %6088 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %6085, float %6086, float %6087)  ; Dot3(ax,ay,az,bx,by,bz)
  %6089 = fmul fast float %6088, %6088
  %6090 = fmul fast float %6089, 0x3FEFBDA520000000
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = fmul fast float %6091, %6091
  %6093 = fdiv fast float 0x3F6096BBA0000000, %6092
  %6094 = fmul fast float %6093, %4009
  %6095 = fadd fast float %6094, 1.000000e+00
  %6096 = fmul fast float %6036, %5994
  %6097 = fmul fast float %6037, %5994
  %6098 = fmul fast float %6038, %5994
  %6099 = fsub fast float 1.000000e+00, %5927
  %6100 = bitcast float %6099 to i32
  %6101 = sitofp i32 %6100 to float
  %6102 = fmul fast float %6101, 5.000000e+00
  %6103 = fadd fast float %6102, 0xC1EFBF8940000000
  %6104 = fptosi float %6103 to i32
  %6105 = bitcast i32 %6104 to float
  %6106 = fmul fast float %6105, %4008
  %6107 = fmul fast float %6079, %6106
  %6108 = fmul fast float %6107, %5398
  %6109 = fmul fast float %6107, %5399
  %6110 = fmul fast float %6107, %5400
  %6111 = fadd fast float %6108, %6096
  %6112 = fadd fast float %6109, %6097
  %6113 = fadd fast float %6110, %6098
  %6114 = fmul fast float %5915, %4004
  %6115 = fmul fast float %6114, %5933
  %6116 = fmul fast float %6115, %6079
  %6117 = fmul fast float %6116, %6095
  %6118 = fmul fast float %5916, %4004
  %6119 = fmul fast float %6118, %5933
  %6120 = fmul fast float %6119, %6079
  %6121 = fmul fast float %6120, %6095
  %6122 = fmul fast float %5917, %4004
  %6123 = fmul fast float %6122, %5933
  %6124 = fmul fast float %6123, %6079
  %6125 = fmul fast float %6124, %6095
  %6126 = fadd fast float %6117, %5754
  %6127 = fadd fast float %6121, %5755
  %6128 = fadd fast float %6125, %5756
  %6129 = fmul fast float %6115, %6111
  %6130 = fmul fast float %6119, %6112
  %6131 = fmul fast float %6123, %6113
  %6132 = fadd fast float %6129, %5751
  %6133 = fadd fast float %6130, %5752
  %6134 = fadd fast float %6131, %5753
  br label %5829

; <label>:6135                                    ; preds = %5829
  br label %6136

; <label>:6136                                    ; preds = %6135, %5717
  %6137 = phi float [ %5719, %5717 ], [ %5830, %6135 ]
  %6138 = phi float [ %5720, %5717 ], [ %5831, %6135 ]
  %6139 = phi float [ %5721, %5717 ], [ %5832, %6135 ]
  %6140 = phi float [ %5722, %5717 ], [ %5833, %6135 ]
  %6141 = phi float [ %5723, %5717 ], [ %5834, %6135 ]
  %6142 = phi float [ %5724, %5717 ], [ %5835, %6135 ]
  %6143 = add i32 %5718, 1
  %6144 = icmp ugt i32 %6143, %5714
  br i1 %6144, label %6145, label %5717

; <label>:6145                                    ; preds = %6136
  br label %6146

; <label>:6146                                    ; preds = %6145, %5693, %5683
  %6147 = phi float [ %5684, %5683 ], [ %5684, %5693 ], [ %6137, %6145 ]
  %6148 = phi float [ %5685, %5683 ], [ %5685, %5693 ], [ %6138, %6145 ]
  %6149 = phi float [ %5686, %5683 ], [ %5686, %5693 ], [ %6139, %6145 ]
  %6150 = phi float [ %5687, %5683 ], [ %5687, %5693 ], [ %6140, %6145 ]
  %6151 = phi float [ %5688, %5683 ], [ %5688, %5693 ], [ %6141, %6145 ]
  %6152 = phi float [ %5689, %5683 ], [ %5689, %5693 ], [ %6142, %6145 ]
  %6153 = call float @dx.op.unary.f32(i32 24, float %5205)  ; Sqrt(value)
  %6154 = call float @dx.op.unary.f32(i32 24, float %5206)  ; Sqrt(value)
  %6155 = call float @dx.op.unary.f32(i32 24, float %5207)  ; Sqrt(value)
  %6156 = fmul fast float %6153, %6150
  %6157 = fmul fast float %6154, %6151
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  br i1 %217, label %6160, label %6180

; <label>:6160                                    ; preds = %6146
  %6161 = fadd fast float %6152, %4011
  %6162 = fmul fast float %6161, %4012
  %6163 = fsub fast float 1.000000e+00, %4012
  %6164 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6167 = fmul fast float %6166, %6164
  %6168 = fadd fast float %6167, %6162
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = fmul fast float %6170, %5404
  %6172 = fsub fast float %6168, %6171
  %6173 = fadd fast float %6157, %6156
  %6174 = fmul fast float %6159, %6173
  %6175 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6176 = fsub fast float %6172, %6175
  %6177 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6178 = fmul fast float %6176, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  br label %6196

; <label>:6180                                    ; preds = %6146
  %6181 = fmul fast float %6155, %6152
  %6182 = fmul fast float %6159, %6156
  %6183 = fmul fast float %6159, %6157
  %6184 = fmul fast float %6181, %6159
  %6185 = add i32 %33, 356
  %6186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6185, i32 undef)  ; BufferLoad(srv,index,wot)
  %6187 = extractvalue %dx.types.ResRet.i32 %6186, 0
  %6188 = and i32 %6187, 32
  %6189 = icmp eq i32 %6188, 0
  br i1 %6189, label %6196, label %6190

; <label>:6190                                    ; preds = %6180
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = fmul fast float %6192, 0x3FE99999A0000000
  %6194 = fadd fast float %6192, %6182
  %6195 = fadd fast float %6193, %6184
  br label %6196

; <label>:6196                                    ; preds = %6190, %6180, %6160
  %6197 = phi float [ %6174, %6160 ], [ %6194, %6190 ], [ %6182, %6180 ]
  %6198 = phi float [ %6179, %6160 ], [ %6183, %6190 ], [ %6183, %6180 ]
  %6199 = phi float [ 1.000000e+00, %6160 ], [ %6195, %6190 ], [ %6184, %6180 ]
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 0
  %6202 = fmul fast float %6201, %6148
  %6203 = fmul fast float %6201, %6149
  %6204 = fadd fast float %6148, %6147
  %6205 = select i1 %217, float %6204, float %6147
  %6206 = fmul float %6205, %6201
  %6207 = select i1 %217, float 0.000000e+00, float %6202
  %6208 = select i1 %217, float 0.000000e+00, float %6203
  %6209 = fmul fast float %6197, %6153
  %6210 = fmul fast float %6198, %6154
  %6211 = fmul fast float %6199, %6155
  %6212 = fadd fast float %6206, %6209
  %6213 = fadd fast float %6207, %6210
  %6214 = fadd fast float %6208, %6211
  %6215 = select i1 %217, float %6198, float %6213
  %6216 = select i1 %217, float %6199, float %6214
  %6217 = call float @dx.op.binary.f32(i32 36, float %6212, float 3.225500e+04)  ; FMin(a,b)
  %6218 = call float @dx.op.binary.f32(i32 36, float %6215, float 3.225500e+04)  ; FMin(a,b)
  %6219 = call float @dx.op.binary.f32(i32 36, float %6216, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6217)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6218)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6219)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

