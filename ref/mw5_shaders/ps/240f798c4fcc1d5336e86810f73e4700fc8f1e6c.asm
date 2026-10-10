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
; shader hash: 1cace72682d67681136557ada6b40dfc
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
  br i1 %464, label %923, label %465

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
  %910 = add i32 %33, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %906, %450
  %924 = phi float [ 0.000000e+00, %450 ], [ %860, %906 ]
  %925 = phi float [ 0.000000e+00, %450 ], [ %861, %906 ]
  %926 = phi float [ 0.000000e+00, %450 ], [ %779, %906 ]
  %927 = phi float [ 0.000000e+00, %450 ], [ %780, %906 ]
  %928 = phi float [ 0.000000e+00, %450 ], [ %781, %906 ]
  %929 = phi float [ 0.000000e+00, %450 ], [ %907, %906 ]
  %930 = phi float [ 0.000000e+00, %450 ], [ %908, %906 ]
  %931 = phi float [ 0.000000e+00, %450 ], [ %909, %906 ]
  %932 = phi float [ 0.000000e+00, %450 ], [ %765, %906 ]
  %933 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %906 ]
  %934 = phi float [ 0.000000e+00, %450 ], [ %859, %906 ]
  %935 = phi float [ 0.000000e+00, %450 ], [ %862, %906 ]
  %936 = phi float [ 0.000000e+00, %450 ], [ %922, %906 ]
  br i1 %401, label %1663, label %937

; <label>:937                                     ; preds = %923
  %938 = icmp ult i32 %456, 2
  %939 = add i32 %33, 40
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = add i32 %33, 44
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = or i32 %944, %941
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1663, label %947

; <label>:947                                     ; preds = %937
  %948 = and i32 %941, 262144
  %949 = icmp ne i32 %948, 0
  %950 = select i1 %949, float %39, float 1.000000e+00
  %951 = select i1 %949, float %40, float 0.000000e+00
  %952 = select i1 %949, float %41, float 0.000000e+00
  %953 = select i1 %949, float %42, float 1.000000e+00
  %954 = select i1 %949, float %43, float %66
  %955 = select i1 %949, float %44, float %67
  %956 = add i32 %33, 300
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %960, 0x3F50624DE0000000
  %962 = add i32 %33, 104
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = lshr i32 %964, 24
  %968 = add i32 %33, 308
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %970, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = add i32 %33, 48
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = shl i32 %977, 4
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %977, 7
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %989 = fmul fast float %988, 1.000000e+03
  %990 = fmul fast float %311, %989
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fadd fast float %991, %301
  %993 = fmul fast float %312, %989
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %303
  %996 = fmul fast float %961, %989
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fmul fast float %997, 0x401921FB60000000
  %999 = fadd fast float %998, %980
  %1000 = call float @dx.op.unary.f32(i32 13, float %999)  ; Sin(value)
  %1001 = call float @dx.op.unary.f32(i32 12, float %999)  ; Cos(value)
  %1002 = fsub fast float -0.000000e+00, %1000
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fmul fast float %972, %1003
  %1006 = fmul fast float %974, %1004
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %983, %1007
  %1010 = fmul fast float %986, %1008
  %1011 = fmul fast float %1001, %1009
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1010, float %1011)  ; FMad(a,b,c)
  %1013 = fmul fast float %1000, %1009
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1010, float %1013)  ; FMad(a,b,c)
  %1015 = fadd fast float %992, %1012
  %1016 = fadd fast float %995, %1014
  %1017 = icmp ugt i32 %966, 1
  %1018 = icmp ugt i32 %964, 33554431
  %1019 = or i1 %1018, %1017
  br i1 %1019, label %1020, label %1045

; <label>:1020                                    ; preds = %947
  %1021 = add i32 %33, 244
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = fmul fast float %988, %1025
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = mul nuw nsw i32 %966, %967
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1032 = fptoui float %1031 to i32
  %1033 = urem i32 %1032, %966
  %1034 = udiv i32 %1032, %967
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = uitofp i32 %1033 to float
  %1038 = uitofp i32 %1034 to float
  %1039 = fadd fast float %1035, %1037
  %1040 = fadd fast float %1036, %1038
  %1041 = uitofp i32 %966 to float
  %1042 = uitofp i32 %967 to float
  %1043 = fdiv fast float %1039, %1041
  %1044 = fdiv fast float %1040, %1042
  br label %1045

; <label>:1045                                    ; preds = %1020, %947
  %1046 = phi float [ %1043, %1020 ], [ %1015, %947 ]
  %1047 = phi float [ %1044, %1020 ], [ %1016, %947 ]
  %1048 = and i32 %941, 256
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1096, label %1050

; <label>:1050                                    ; preds = %1045
  %1051 = add i32 %33, 444
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %1053, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1055, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = add i32 %33, 116
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = shl i32 %1060, 4
  %1062 = and i32 %1061, 32752
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = lshr i32 %1060, 7
  %1065 = and i32 %1064, 32752
  %1066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1065)  ; LegacyF16ToF32(value)
  %1067 = fsub fast float 1.000000e+00, %453
  %1068 = call float @dx.op.binary.f32(i32 35, float %1067, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1069 = bitcast float %453 to i32
  %1070 = sitofp i32 %1069 to float
  %1071 = fadd fast float %1070, 0xC1CFBF8940000000
  %1072 = fmul fast float %1066, %1071
  %1073 = fadd fast float %1072, 0x41CFBF8940000000
  %1074 = fptosi float %1073 to i32
  %1075 = bitcast i32 %1074 to float
  %1076 = bitcast float %1068 to i32
  %1077 = sitofp i32 %1076 to float
  %1078 = fadd fast float %1077, 0xC1CFBF8940000000
  %1079 = fmul fast float %1078, %1066
  %1080 = fadd fast float %1079, 0x41CFBF8940000000
  %1081 = fptosi float %1080 to i32
  %1082 = bitcast i32 %1081 to float
  %1083 = fmul fast float %1075, %1063
  %1084 = fmul fast float %1082, %1063
  %1085 = fsub fast float %1068, %1083
  %1086 = fadd fast float %1084, %1068
  %1087 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1088 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1089 = fsub fast float %1057, %1087
  %1090 = fsub fast float %1088, %1087
  %1091 = bitcast float %1090 to i32
  %1092 = sub nsw i32 2129859010, %1091
  %1093 = bitcast i32 %1092 to float
  %1094 = fmul fast float %1093, %1089
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  br label %1096

; <label>:1096                                    ; preds = %1050, %1045
  %1097 = phi float [ %1095, %1050 ], [ %453, %1045 ]
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 128
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1118, label %1102

; <label>:1102                                    ; preds = %1096
  %1103 = add i32 %33, 428
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 524288
  %1113 = icmp ne i32 %1112, 0
  %1114 = fcmp fast ogt float %1109, 0x3FE0101020000000
  %1115 = select i1 %1114, float 1.000000e+00, float 0.000000e+00
  %1116 = select i1 %1113, float %1115, float %1109
  %1117 = fmul fast float %1116, %1097
  br label %1118

; <label>:1118                                    ; preds = %1102, %1096
  %1119 = phi float [ %1117, %1102 ], [ %1097, %1096 ]
  %1120 = fcmp fast ult float %1119, 0x3F70101020000000
  br i1 %1120, label %1663, label %1121

; <label>:1121                                    ; preds = %1118
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 16
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1324, label %1126

; <label>:1126                                    ; preds = %1121
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %33, 380
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1139 = and i32 %1128, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1128, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1138, %1140
  %1145 = fadd fast float %1144, %1143
  %1146 = fmul fast float %1145, 0x3F70101000000000
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 512
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1159, label %1151

; <label>:1151                                    ; preds = %1126
  %1152 = add i32 %33, 464
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %1154, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1156, %dx.types.Handle %75, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  br label %1159

; <label>:1159                                    ; preds = %1151, %1126
  %1160 = phi float [ %1158, %1151 ], [ 1.000000e+00, %1126 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 33554432
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1271, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %33, 240
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1168, 16
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = add i32 %33, 244
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 24
  %1181 = uitofp i32 %1180 to float
  %1182 = fmul fast float %1181, 0x3F70101020000000
  %1183 = and i32 %1179, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = lshr i32 %1179, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F70101020000000
  %1190 = lshr i32 %1179, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = add i32 %33, 236
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 24
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1198, 0x3F70101020000000
  %1200 = and i32 %1196, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = lshr i32 %1196, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, 0x3F70101020000000
  %1207 = lshr i32 %1196, 16
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1209, 0x3F70101020000000
  %1211 = bitcast float %1135 to i32
  %1212 = ashr i32 %1211, 1
  %1213 = sub nsw i32 1597463174, %1212
  %1214 = bitcast i32 %1213 to float
  %1215 = fmul fast float %1135, 5.000000e-01
  %1216 = fmul fast float %1214, %1214
  %1217 = fmul fast float %1216, %1215
  %1218 = fsub fast float 1.500000e+00, %1217
  %1219 = fmul fast float %1214, %1135
  %1220 = fmul fast float %1219, %1218
  %1221 = bitcast float %1136 to i32
  %1222 = ashr i32 %1221, 1
  %1223 = sub nsw i32 1597463174, %1222
  %1224 = bitcast i32 %1223 to float
  %1225 = fmul fast float %1136, 5.000000e-01
  %1226 = fmul fast float %1224, %1224
  %1227 = fmul fast float %1226, %1225
  %1228 = fsub fast float 1.500000e+00, %1227
  %1229 = fmul fast float %1224, %1136
  %1230 = fmul fast float %1229, %1228
  %1231 = bitcast float %1137 to i32
  %1232 = ashr i32 %1231, 1
  %1233 = sub nsw i32 1597463174, %1232
  %1234 = bitcast i32 %1233 to float
  %1235 = fmul fast float %1137, 5.000000e-01
  %1236 = fmul fast float %1234, %1234
  %1237 = fmul fast float %1236, %1235
  %1238 = fsub fast float 1.500000e+00, %1237
  %1239 = fmul fast float %1234, %1137
  %1240 = fmul fast float %1239, %1238
  %1241 = fsub fast float %1220, %1202
  %1242 = fsub fast float %1230, %1206
  %1243 = fsub fast float %1240, %1210
  %1244 = fmul fast float %1241, %1170
  %1245 = fmul fast float %1242, %1172
  %1246 = fmul fast float %1243, %1177
  %1247 = fadd fast float %1244, %1185
  %1248 = fadd fast float %1245, %1189
  %1249 = fadd fast float %1246, %1193
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = fmul fast float %1250, %1250
  %1254 = fmul fast float %1251, %1251
  %1255 = fmul fast float %1252, %1252
  %1256 = fsub fast float %1253, %1135
  %1257 = fsub fast float %1254, %1136
  %1258 = fsub fast float %1255, %1137
  %1259 = fmul fast float %1256, %1160
  %1260 = fmul fast float %1257, %1160
  %1261 = fmul fast float %1258, %1160
  %1262 = fadd fast float %1259, %1135
  %1263 = fadd fast float %1260, %1136
  %1264 = fadd fast float %1261, %1137
  %1265 = fadd fast float %1182, %1146
  %1266 = fsub fast float %1265, %1199
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fsub fast float %1267, %1146
  %1269 = fmul fast float %1268, %1160
  %1270 = fadd fast float %1269, %1146
  br label %1324

; <label>:1271                                    ; preds = %1159
  %1272 = and i32 %1162, 134217728
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1308, label %1274

; <label>:1274                                    ; preds = %1271
  %1275 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1276 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1277 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1278 = fadd fast float %1275, -5.000000e-01
  %1279 = fadd fast float %1276, -5.000000e-01
  %1280 = fadd fast float %1277, -5.000000e-01
  %1281 = fmul fast float %1278, %1160
  %1282 = fmul fast float %1279, %1160
  %1283 = fmul fast float %1280, %1160
  %1284 = fadd fast float %1281, 5.000000e-01
  %1285 = fadd fast float %1282, 5.000000e-01
  %1286 = fadd fast float %1283, 5.000000e-01
  %1287 = call float @dx.op.unary.f32(i32 24, float %1135)  ; Sqrt(value)
  %1288 = call float @dx.op.unary.f32(i32 24, float %1136)  ; Sqrt(value)
  %1289 = call float @dx.op.unary.f32(i32 24, float %1137)  ; Sqrt(value)
  %1290 = fmul fast float %1284, 2.000000e+00
  %1291 = fsub fast float 1.000000e+00, %1290
  %1292 = fmul fast float %1291, %1287
  %1293 = fadd fast float %1292, %1290
  %1294 = fmul fast float %1293, %1287
  %1295 = fmul fast float %1285, 2.000000e+00
  %1296 = fsub fast float 1.000000e+00, %1295
  %1297 = fmul fast float %1296, %1288
  %1298 = fadd fast float %1297, %1295
  %1299 = fmul fast float %1298, %1288
  %1300 = fmul fast float %1286, 2.000000e+00
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = fmul fast float %1301, %1289
  %1303 = fadd fast float %1302, %1300
  %1304 = fmul fast float %1303, %1289
  %1305 = fmul fast float %1294, %1294
  %1306 = fmul fast float %1299, %1299
  %1307 = fmul fast float %1304, %1304
  br label %1324

; <label>:1308                                    ; preds = %1271
  %1309 = fmul fast float %288, %288
  %1310 = fmul fast float %292, %292
  %1311 = fmul fast float %296, %296
  %1312 = fadd fast float %1309, -1.000000e+00
  %1313 = fadd fast float %1310, -1.000000e+00
  %1314 = fadd fast float %1311, -1.000000e+00
  %1315 = fmul fast float %1160, %1312
  %1316 = fmul fast float %1160, %1313
  %1317 = fmul fast float %1160, %1314
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fadd fast float %1316, 1.000000e+00
  %1320 = fadd fast float %1317, 1.000000e+00
  %1321 = fmul fast float %1318, %1135
  %1322 = fmul fast float %1319, %1136
  %1323 = fmul fast float %1320, %1137
  br label %1324

; <label>:1324                                    ; preds = %1308, %1274, %1165, %1121
  %1325 = phi float [ %1270, %1165 ], [ %1146, %1274 ], [ %1146, %1308 ], [ 0x3FA23C0BE0000000, %1121 ]
  %1326 = phi float [ %1262, %1165 ], [ %1305, %1274 ], [ %1321, %1308 ], [ 1.000000e+00, %1121 ]
  %1327 = phi float [ %1263, %1165 ], [ %1306, %1274 ], [ %1322, %1308 ], [ 1.000000e+00, %1121 ]
  %1328 = phi float [ %1264, %1165 ], [ %1307, %1274 ], [ %1323, %1308 ], [ 1.000000e+00, %1121 ]
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 1
  %1331 = and i32 %1330, 1
  %1332 = icmp ne i32 %1331, 0
  %1333 = add i32 %33, 356
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 32
  %1337 = icmp ne i32 %1336, 0
  %1338 = and i1 %1332, %1337
  %1339 = select i1 %1338, float 1.000000e+00, float %1326
  %1340 = select i1 %1338, float 0x3FD3333340000000, float %1327
  %1341 = select i1 %1338, float 0x3FD3333340000000, float %1328
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 32
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1418, label %1346

; <label>:1346                                    ; preds = %1324
  %1347 = add i32 %33, 108
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %33, 396
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1354, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = extractvalue %dx.types.ResRet.f32 %1355, 3
  %1360 = and i32 %1349, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = lshr i32 %1349, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = lshr i32 %1349, 16
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101000000000
  %1369 = fmul fast float %1356, %1361
  %1370 = fadd fast float %1369, %1364
  %1371 = fmul fast float %1370, 0x3F70101000000000
  %1372 = fadd fast float %1357, -5.000000e-01
  %1373 = fadd fast float %1359, -5.000000e-01
  %1374 = fmul fast float %1372, %1368
  %1375 = fmul fast float %1373, %1368
  %1376 = fadd fast float %1374, 5.000000e-01
  %1377 = fadd fast float %1375, 5.000000e-01
  %1378 = fmul fast float %1376, 2.000000e+00
  %1379 = fadd fast float %1378, -1.000000e+00
  %1380 = fmul fast float %1377, 2.000000e+00
  %1381 = fadd fast float %1380, -1.000000e+00
  %1382 = fadd fast float %1379, %1381
  %1383 = fmul fast float %1382, 5.000000e-01
  %1384 = fsub fast float %1379, %1381
  %1385 = fmul fast float %1384, 5.000000e-01
  %1386 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = call float @dx.op.unary.f32(i32 6, float %1385)  ; FAbs(value)
  %1389 = fsub fast float %1387, %1388
  %1390 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1385, float %1389, float %1383, float %1385, float %1389)  ; Dot3(ax,ay,az,bx,by,bz)
  %1391 = call float @dx.op.unary.f32(i32 25, float %1390)  ; Rsqrt(value)
  %1392 = fmul fast float %1383, %1391
  %1393 = fmul fast float %1385, %1391
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 67108864
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1414, label %1398

; <label>:1398                                    ; preds = %1346
  %1399 = add i32 %33, 296
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 65535
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 65535
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1401, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = fsub fast float %1371, %1409
  %1411 = fmul fast float %1410, %1403
  %1412 = fadd fast float %1411, %1407
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  br label %1414

; <label>:1414                                    ; preds = %1398, %1346
  %1415 = phi float [ %1413, %1398 ], [ %1371, %1346 ]
  %1416 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %1417 = call float @dx.op.dot2.f32(i32 54, float %1392, float %1393, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  br label %1418

; <label>:1418                                    ; preds = %1414, %1324
  %1419 = phi float [ %1415, %1414 ], [ 0x3FD6666660000000, %1324 ]
  %1420 = phi float [ %1416, %1414 ], [ 0.000000e+00, %1324 ]
  %1421 = phi float [ %1417, %1414 ], [ 0.000000e+00, %1324 ]
  %1422 = phi float [ %1358, %1414 ], [ 1.000000e+00, %1324 ]
  %1423 = add i32 %33, 176
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 22
  %1427 = shl nuw nsw i32 %1426, 5
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 64
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1466, label %1433

; <label>:1433                                    ; preds = %1418
  %1434 = add i32 %33, 412
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 131072
  %1442 = icmp eq i32 %1441, 0
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = fmul fast float %1444, %276
  %1448 = fmul fast float %1445, %279
  %1449 = fmul fast float %1446, %282
  br i1 %1442, label %1456, label %1450

; <label>:1450                                    ; preds = %1433
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fmul fast float %1452, %1447
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1452, %1449
  br label %1456

; <label>:1456                                    ; preds = %1450, %1433
  %1457 = phi float [ %1453, %1450 ], [ %1447, %1433 ]
  %1458 = phi float [ %1454, %1450 ], [ %1448, %1433 ]
  %1459 = phi float [ %1455, %1450 ], [ %1449, %1433 ]
  %1460 = fmul fast float %1457, %1428
  %1461 = select i1 %217, float %1460, float %1457
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = select i1 %217, float 0.000000e+00, float %1457
  %1464 = select i1 %217, float %1462, float %1458
  %1465 = select i1 %217, float 0.000000e+00, float %1459
  br label %1466

; <label>:1466                                    ; preds = %1456, %1418
  %1467 = phi float [ %1463, %1456 ], [ 0.000000e+00, %1418 ]
  %1468 = phi float [ %1464, %1456 ], [ 0.000000e+00, %1418 ]
  %1469 = phi float [ %1465, %1456 ], [ 0.000000e+00, %1418 ]
  %1470 = add i32 %33, 112
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1472, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1340, float %1341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = fmul fast float %1477, %1478
  %1480 = fadd fast float %1479, %1474
  %1481 = fmul fast float %1480, 0x3F70101020000000
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br i1 %938, label %1483, label %1491

; <label>:1483                                    ; preds = %1466
  %1484 = fsub fast float 1.000000e+00, %1119
  %1485 = fmul fast float %1484, %926
  %1486 = fmul fast float %1484, %927
  %1487 = fmul fast float %1484, %928
  %1488 = fmul fast float %1484, %929
  %1489 = fmul fast float %1484, %930
  %1490 = fmul fast float %1484, %931
  br label %1491

; <label>:1491                                    ; preds = %1483, %1466
  %1492 = phi float [ %1485, %1483 ], [ %926, %1466 ]
  %1493 = phi float [ %1486, %1483 ], [ %927, %1466 ]
  %1494 = phi float [ %1487, %1483 ], [ %928, %1466 ]
  %1495 = phi float [ %1488, %1483 ], [ %929, %1466 ]
  %1496 = phi float [ %1489, %1483 ], [ %930, %1466 ]
  %1497 = phi float [ %1490, %1483 ], [ %931, %1466 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 3
  %1501 = icmp eq i32 %1500, 3
  br i1 %1501, label %1580, label %1502

; <label>:1502                                    ; preds = %1491
  %1503 = and i32 %1499, 16
  %1504 = icmp ne i32 %1503, 0
  %1505 = select i1 %1504, float %1119, float 0.000000e+00
  %1506 = icmp eq i32 %1500, 0
  br i1 %1506, label %1507, label %1535

; <label>:1507                                    ; preds = %1502
  %1508 = and i32 %1499, 64
  %1509 = icmp ne i32 %1508, 0
  %1510 = select i1 %1509, float %1119, float 0.000000e+00
  %1511 = fsub fast float %1339, %1492
  %1512 = fsub fast float %1340, %1493
  %1513 = fsub fast float %1341, %1494
  %1514 = fmul fast float %1505, %1511
  %1515 = fmul fast float %1505, %1512
  %1516 = fmul fast float %1505, %1513
  %1517 = fadd fast float %1514, %1492
  %1518 = fadd fast float %1515, %1493
  %1519 = fadd fast float %1516, %1494
  %1520 = fsub fast float %1325, %932
  %1521 = fmul fast float %1505, %1520
  %1522 = fadd fast float %1521, %932
  %1523 = fsub fast float %1467, %1495
  %1524 = fsub fast float %1468, %1496
  %1525 = fsub fast float %1469, %1497
  %1526 = fmul fast float %1510, %1523
  %1527 = fmul fast float %1510, %1524
  %1528 = fmul fast float %1510, %1525
  %1529 = fadd fast float %1526, %1495
  %1530 = fadd fast float %1527, %1496
  %1531 = fadd fast float %1528, %1497
  %1532 = fsub fast float %1482, %936
  %1533 = fmul fast float %1505, %1532
  %1534 = fadd fast float %1533, %936
  br label %1580

; <label>:1535                                    ; preds = %1502
  %1536 = icmp eq i32 %1500, 1
  br i1 %1536, label %1537, label %1550

; <label>:1537                                    ; preds = %1535
  %1538 = fadd fast float %1339, -1.000000e+00
  %1539 = fadd fast float %1340, -1.000000e+00
  %1540 = fadd fast float %1341, -1.000000e+00
  %1541 = fmul fast float %1505, %1538
  %1542 = fmul fast float %1505, %1539
  %1543 = fmul fast float %1505, %1540
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fadd fast float %1542, 1.000000e+00
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fmul fast float %1544, %1492
  %1548 = fmul fast float %1545, %1493
  %1549 = fmul fast float %1546, %1494
  br label %1580

; <label>:1550                                    ; preds = %1535
  %1551 = icmp eq i32 %1500, 2
  br i1 %1551, label %1552, label %1580

; <label>:1552                                    ; preds = %1550
  %1553 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1554 = call float @dx.op.unary.f32(i32 24, float %1340)  ; Sqrt(value)
  %1555 = call float @dx.op.unary.f32(i32 24, float %1341)  ; Sqrt(value)
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fadd fast float %1554, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fmul fast float %1556, %1505
  %1560 = fmul fast float %1557, %1505
  %1561 = fmul fast float %1558, %1505
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fmul fast float %1562, 2.000000e+00
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = fmul fast float %1566, %1492
  %1568 = fadd fast float %1567, %1565
  %1569 = fmul fast float %1568, %1492
  %1570 = fmul fast float %1563, 2.000000e+00
  %1571 = fsub fast float 1.000000e+00, %1570
  %1572 = fmul fast float %1571, %1493
  %1573 = fadd fast float %1572, %1570
  %1574 = fmul fast float %1573, %1493
  %1575 = fmul fast float %1564, 2.000000e+00
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1576, %1494
  %1578 = fadd fast float %1577, %1575
  %1579 = fmul fast float %1578, %1494
  br label %1580

; <label>:1580                                    ; preds = %1552, %1550, %1537, %1507, %1491
  %1581 = phi float [ %1492, %1491 ], [ %1569, %1552 ], [ %1492, %1550 ], [ %1547, %1537 ], [ %1517, %1507 ]
  %1582 = phi float [ %1493, %1491 ], [ %1574, %1552 ], [ %1493, %1550 ], [ %1548, %1537 ], [ %1518, %1507 ]
  %1583 = phi float [ %1494, %1491 ], [ %1579, %1552 ], [ %1494, %1550 ], [ %1549, %1537 ], [ %1519, %1507 ]
  %1584 = phi float [ %1495, %1491 ], [ %1495, %1552 ], [ %1495, %1550 ], [ %1495, %1537 ], [ %1529, %1507 ]
  %1585 = phi float [ %1496, %1491 ], [ %1496, %1552 ], [ %1496, %1550 ], [ %1496, %1537 ], [ %1530, %1507 ]
  %1586 = phi float [ %1497, %1491 ], [ %1497, %1552 ], [ %1497, %1550 ], [ %1497, %1537 ], [ %1531, %1507 ]
  %1587 = phi float [ %932, %1491 ], [ %932, %1552 ], [ %932, %1550 ], [ %932, %1537 ], [ %1522, %1507 ]
  %1588 = phi float [ %936, %1491 ], [ %936, %1552 ], [ %936, %1550 ], [ %936, %1537 ], [ %1534, %1507 ]
  %1589 = and i32 %1499, 12
  %1590 = icmp eq i32 %1589, 12
  br i1 %1590, label %1663, label %1591

; <label>:1591                                    ; preds = %1580
  %1592 = and i32 %1499, 2097184
  %1593 = icmp eq i32 %1592, 2097184
  %1594 = select i1 %1593, float %1119, float 0.000000e+00
  %1595 = and i32 %1499, 4194336
  %1596 = icmp eq i32 %1595, 4194336
  %1597 = select i1 %1596, float %1119, float 0.000000e+00
  %1598 = and i32 %1499, 8388640
  %1599 = icmp eq i32 %1598, 8388640
  %1600 = select i1 %1599, float %1119, float 0.000000e+00
  %1601 = icmp eq i32 %1589, 0
  br i1 %1601, label %1602, label %1615

; <label>:1602                                    ; preds = %1591
  %1603 = fsub fast float %1420, %924
  %1604 = fsub fast float %1421, %925
  %1605 = fmul fast float %1594, %1603
  %1606 = fmul fast float %1594, %1604
  %1607 = fadd fast float %1605, %924
  %1608 = fadd fast float %1606, %925
  %1609 = fsub fast float %1422, %935
  %1610 = fmul fast float %1597, %1609
  %1611 = fadd fast float %1610, %935
  %1612 = fsub fast float %1419, %934
  %1613 = fmul fast float %1600, %1612
  %1614 = fadd fast float %1613, %934
  br label %1663

; <label>:1615                                    ; preds = %1591
  %1616 = icmp eq i32 %1589, 4
  br i1 %1616, label %1617, label %1649

; <label>:1617                                    ; preds = %1615
  %1618 = fmul fast float %1594, %1420
  %1619 = fmul fast float %1594, %1421
  %1620 = fadd fast float %1618, %924
  %1621 = fadd fast float %1619, %925
  %1622 = call float @dx.op.binary.f32(i32 36, float %935, float %1422)  ; FMin(a,b)
  %1623 = fsub fast float %1622, %935
  %1624 = fmul fast float %1623, %1597
  %1625 = fadd fast float %1624, %935
  %1626 = fadd fast float %1419, %934
  %1627 = fmul fast float %1626, 0x3FF337FAE0000000
  %1628 = fmul fast float %934, %934
  %1629 = fmul fast float %1419, %1419
  %1630 = fadd fast float %1629, %1628
  %1631 = fmul fast float %1630, 0x3FE5152B00000000
  %1632 = fmul fast float %934, 0xBFCC1F85E0000000
  %1633 = fmul fast float %1632, %1419
  %1634 = fadd fast float %1633, 0xBFE1363700000000
  %1635 = fadd fast float %1634, %1627
  %1636 = fsub fast float %1635, %1631
  %1637 = fmul fast float %1626, 0x3FBA6F0D00000000
  %1638 = fmul fast float %1630, 0x3FD0432880000000
  %1639 = fmul fast float %934, 0xBFEF110800000000
  %1640 = fmul fast float %1639, %1419
  %1641 = fadd fast float %1640, 1.000000e+00
  %1642 = fsub fast float %1641, %1637
  %1643 = fadd fast float %1642, %1638
  %1644 = fdiv fast float %1636, %1643
  %1645 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1646 = fsub fast float %1645, %934
  %1647 = fmul fast float %1646, %1600
  %1648 = fadd fast float %1647, %934
  br label %1663

; <label>:1649                                    ; preds = %1615
  %1650 = icmp eq i32 %1589, 8
  br i1 %1650, label %1651, label %1663

; <label>:1651                                    ; preds = %1649
  %1652 = fmul fast float %1594, %1420
  %1653 = fmul fast float %1594, %1421
  %1654 = fadd fast float %1652, %924
  %1655 = fadd fast float %1653, %925
  %1656 = call float @dx.op.binary.f32(i32 36, float %935, float %1422)  ; FMin(a,b)
  %1657 = fsub fast float %1656, %935
  %1658 = fmul fast float %1657, %1597
  %1659 = fadd fast float %1658, %935
  %1660 = fsub fast float %1419, %934
  %1661 = fmul fast float %1600, %1660
  %1662 = fadd fast float %1661, %934
  br label %1663

; <label>:1663                                    ; preds = %1651, %1649, %1617, %1602, %1580, %1118, %937, %923
  %1664 = phi float [ %924, %1580 ], [ %924, %1118 ], [ %924, %923 ], [ %1654, %1651 ], [ %924, %1649 ], [ %1620, %1617 ], [ %1607, %1602 ], [ %924, %937 ]
  %1665 = phi float [ %925, %1580 ], [ %925, %1118 ], [ %925, %923 ], [ %1655, %1651 ], [ %925, %1649 ], [ %1621, %1617 ], [ %1608, %1602 ], [ %925, %937 ]
  %1666 = phi float [ %1581, %1580 ], [ %926, %1118 ], [ %926, %923 ], [ %1581, %1651 ], [ %1581, %1649 ], [ %1581, %1617 ], [ %1581, %1602 ], [ %926, %937 ]
  %1667 = phi float [ %1582, %1580 ], [ %927, %1118 ], [ %927, %923 ], [ %1582, %1651 ], [ %1582, %1649 ], [ %1582, %1617 ], [ %1582, %1602 ], [ %927, %937 ]
  %1668 = phi float [ %1583, %1580 ], [ %928, %1118 ], [ %928, %923 ], [ %1583, %1651 ], [ %1583, %1649 ], [ %1583, %1617 ], [ %1583, %1602 ], [ %928, %937 ]
  %1669 = phi float [ %1584, %1580 ], [ %929, %1118 ], [ %929, %923 ], [ %1584, %1651 ], [ %1584, %1649 ], [ %1584, %1617 ], [ %1584, %1602 ], [ %929, %937 ]
  %1670 = phi float [ %1585, %1580 ], [ %930, %1118 ], [ %930, %923 ], [ %1585, %1651 ], [ %1585, %1649 ], [ %1585, %1617 ], [ %1585, %1602 ], [ %930, %937 ]
  %1671 = phi float [ %1586, %1580 ], [ %931, %1118 ], [ %931, %923 ], [ %1586, %1651 ], [ %1586, %1649 ], [ %1586, %1617 ], [ %1586, %1602 ], [ %931, %937 ]
  %1672 = phi float [ %1587, %1580 ], [ %932, %1118 ], [ %932, %923 ], [ %1587, %1651 ], [ %1587, %1649 ], [ %1587, %1617 ], [ %1587, %1602 ], [ %932, %937 ]
  %1673 = phi float [ %934, %1580 ], [ %934, %1118 ], [ %934, %923 ], [ %1662, %1651 ], [ %934, %1649 ], [ %1648, %1617 ], [ %1614, %1602 ], [ %934, %937 ]
  %1674 = phi float [ %935, %1580 ], [ %935, %1118 ], [ %935, %923 ], [ %1659, %1651 ], [ %935, %1649 ], [ %1625, %1617 ], [ %1611, %1602 ], [ %935, %937 ]
  %1675 = phi float [ %1588, %1580 ], [ %936, %1118 ], [ %936, %923 ], [ %1588, %1651 ], [ %1588, %1649 ], [ %1588, %1617 ], [ %1588, %1602 ], [ %936, %937 ]
  br i1 %403, label %2402, label %1676

; <label>:1676                                    ; preds = %1663
  %1677 = icmp ult i32 %456, 3
  %1678 = add i32 %33, 56
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %33, 60
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = or i32 %1683, %1680
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %2402, label %1686

; <label>:1686                                    ; preds = %1676
  %1687 = and i32 %1680, 262144
  %1688 = icmp ne i32 %1687, 0
  %1689 = select i1 %1688, float %39, float 1.000000e+00
  %1690 = select i1 %1688, float %40, float 0.000000e+00
  %1691 = select i1 %1688, float %41, float 0.000000e+00
  %1692 = select i1 %1688, float %42, float 1.000000e+00
  %1693 = select i1 %1688, float %43, float %66
  %1694 = select i1 %1688, float %44, float %67
  %1695 = add i32 %33, 316
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 16
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = fmul fast float %1699, 0x3F50624DE0000000
  %1701 = add i32 %33, 120
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = lshr i32 %1703, 16
  %1705 = and i32 %1704, 255
  %1706 = lshr i32 %1703, 24
  %1707 = add i32 %33, 324
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = lshr i32 %1709, 16
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = add i32 %33, 64
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = lshr i32 %1716, 22
  %1718 = shl nuw nsw i32 %1717, 5
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = shl i32 %1716, 4
  %1721 = and i32 %1720, 32752
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = lshr i32 %1716, 7
  %1724 = and i32 %1723, 32752
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1728 = fmul fast float %1727, 1.000000e+03
  %1729 = fmul fast float %353, %1728
  %1730 = call float @dx.op.unary.f32(i32 22, float %1729)  ; Frc(value)
  %1731 = fadd fast float %1730, %343
  %1732 = fmul fast float %354, %1728
  %1733 = call float @dx.op.unary.f32(i32 22, float %1732)  ; Frc(value)
  %1734 = fadd fast float %1733, %345
  %1735 = fmul fast float %1700, %1728
  %1736 = call float @dx.op.unary.f32(i32 22, float %1735)  ; Frc(value)
  %1737 = fmul fast float %1736, 0x401921FB60000000
  %1738 = fadd fast float %1737, %1719
  %1739 = call float @dx.op.unary.f32(i32 13, float %1738)  ; Sin(value)
  %1740 = call float @dx.op.unary.f32(i32 12, float %1738)  ; Cos(value)
  %1741 = fsub fast float -0.000000e+00, %1739
  %1742 = fadd fast float %1693, -5.000000e-01
  %1743 = fadd fast float %1694, -5.000000e-01
  %1744 = fmul fast float %1711, %1742
  %1745 = fmul fast float %1713, %1743
  %1746 = fadd fast float %1744, 5.000000e-01
  %1747 = fadd fast float %1745, 5.000000e-01
  %1748 = fmul fast float %1722, %1746
  %1749 = fmul fast float %1725, %1747
  %1750 = fmul fast float %1740, %1748
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1741, float %1749, float %1750)  ; FMad(a,b,c)
  %1752 = fmul fast float %1739, %1748
  %1753 = call float @dx.op.tertiary.f32(i32 46, float %1740, float %1749, float %1752)  ; FMad(a,b,c)
  %1754 = fadd fast float %1731, %1751
  %1755 = fadd fast float %1734, %1753
  %1756 = icmp ugt i32 %1705, 1
  %1757 = icmp ugt i32 %1703, 33554431
  %1758 = or i1 %1757, %1756
  br i1 %1758, label %1759, label %1784

; <label>:1759                                    ; preds = %1686
  %1760 = add i32 %33, 260
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 16
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = fmul fast float %1727, %1764
  %1766 = call float @dx.op.unary.f32(i32 22, float %1765)  ; Frc(value)
  %1767 = mul nuw nsw i32 %1705, %1706
  %1768 = uitofp i32 %1767 to float
  %1769 = fmul fast float %1766, %1768
  %1770 = call float @dx.op.unary.f32(i32 27, float %1769)  ; Round_ni(value)
  %1771 = fptoui float %1770 to i32
  %1772 = urem i32 %1771, %1705
  %1773 = udiv i32 %1771, %1706
  %1774 = call float @dx.op.unary.f32(i32 22, float %1754)  ; Frc(value)
  %1775 = call float @dx.op.unary.f32(i32 22, float %1755)  ; Frc(value)
  %1776 = uitofp i32 %1772 to float
  %1777 = uitofp i32 %1773 to float
  %1778 = fadd fast float %1774, %1776
  %1779 = fadd fast float %1775, %1777
  %1780 = uitofp i32 %1705 to float
  %1781 = uitofp i32 %1706 to float
  %1782 = fdiv fast float %1778, %1780
  %1783 = fdiv fast float %1779, %1781
  br label %1784

; <label>:1784                                    ; preds = %1759, %1686
  %1785 = phi float [ %1782, %1759 ], [ %1754, %1686 ]
  %1786 = phi float [ %1783, %1759 ], [ %1755, %1686 ]
  %1787 = and i32 %1680, 256
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1835, label %1789

; <label>:1789                                    ; preds = %1784
  %1790 = add i32 %33, 448
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1794, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = add i32 %33, 132
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = shl i32 %1799, 4
  %1801 = and i32 %1800, 32752
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = lshr i32 %1799, 7
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = fsub fast float 1.000000e+00, %452
  %1807 = call float @dx.op.binary.f32(i32 35, float %1806, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1808 = bitcast float %452 to i32
  %1809 = sitofp i32 %1808 to float
  %1810 = fadd fast float %1809, 0xC1CFBF8940000000
  %1811 = fmul fast float %1805, %1810
  %1812 = fadd fast float %1811, 0x41CFBF8940000000
  %1813 = fptosi float %1812 to i32
  %1814 = bitcast i32 %1813 to float
  %1815 = bitcast float %1807 to i32
  %1816 = sitofp i32 %1815 to float
  %1817 = fadd fast float %1816, 0xC1CFBF8940000000
  %1818 = fmul fast float %1817, %1805
  %1819 = fadd fast float %1818, 0x41CFBF8940000000
  %1820 = fptosi float %1819 to i32
  %1821 = bitcast i32 %1820 to float
  %1822 = fmul fast float %1814, %1802
  %1823 = fmul fast float %1821, %1802
  %1824 = fsub fast float %1807, %1822
  %1825 = fadd fast float %1823, %1807
  %1826 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1827 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1828 = fsub fast float %1796, %1826
  %1829 = fsub fast float %1827, %1826
  %1830 = bitcast float %1829 to i32
  %1831 = sub nsw i32 2129859010, %1830
  %1832 = bitcast i32 %1831 to float
  %1833 = fmul fast float %1832, %1828
  %1834 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  br label %1835

; <label>:1835                                    ; preds = %1789, %1784
  %1836 = phi float [ %1834, %1789 ], [ %452, %1784 ]
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 128
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1857, label %1841

; <label>:1841                                    ; preds = %1835
  %1842 = add i32 %33, 432
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = add i32 %1844, 0
  %1846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1846, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 524288
  %1852 = icmp ne i32 %1851, 0
  %1853 = fcmp fast ogt float %1848, 0x3FE0101020000000
  %1854 = select i1 %1853, float 1.000000e+00, float 0.000000e+00
  %1855 = select i1 %1852, float %1854, float %1848
  %1856 = fmul fast float %1855, %1836
  br label %1857

; <label>:1857                                    ; preds = %1841, %1835
  %1858 = phi float [ %1856, %1841 ], [ %1836, %1835 ]
  %1859 = fcmp fast ult float %1858, 0x3F70101020000000
  br i1 %1859, label %2402, label %1860

; <label>:1860                                    ; preds = %1857
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 16
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %2063, label %1865

; <label>:1865                                    ; preds = %1860
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = add i32 %33, 384
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = add i32 %1870, 0
  %1872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1873 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1872, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = extractvalue %dx.types.ResRet.f32 %1873, 3
  %1878 = and i32 %1867, 255
  %1879 = uitofp i32 %1878 to float
  %1880 = lshr i32 %1867, 8
  %1881 = and i32 %1880, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = fmul fast float %1877, %1879
  %1884 = fadd fast float %1883, %1882
  %1885 = fmul fast float %1884, 0x3F70101000000000
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 512
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1898, label %1890

; <label>:1890                                    ; preds = %1865
  %1891 = add i32 %33, 468
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = add i32 %1893, 0
  %1895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1895, %dx.types.Handle %75, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  br label %1898

; <label>:1898                                    ; preds = %1890, %1865
  %1899 = phi float [ %1897, %1890 ], [ 1.000000e+00, %1865 ]
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 33554432
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %2010, label %1904

; <label>:1904                                    ; preds = %1898
  %1905 = add i32 %33, 256
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 65535
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = lshr i32 %1907, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = add i32 %33, 260
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 65535
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 24
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = and i32 %1918, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = lshr i32 %1918, 8
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = lshr i32 %1918, 16
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = add i32 %33, 252
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = lshr i32 %1935, 24
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1937, 0x3F70101020000000
  %1939 = and i32 %1935, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1940, 0x3F70101020000000
  %1942 = lshr i32 %1935, 8
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = fmul fast float %1944, 0x3F70101020000000
  %1946 = lshr i32 %1935, 16
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3F70101020000000
  %1950 = bitcast float %1874 to i32
  %1951 = ashr i32 %1950, 1
  %1952 = sub nsw i32 1597463174, %1951
  %1953 = bitcast i32 %1952 to float
  %1954 = fmul fast float %1874, 5.000000e-01
  %1955 = fmul fast float %1953, %1953
  %1956 = fmul fast float %1955, %1954
  %1957 = fsub fast float 1.500000e+00, %1956
  %1958 = fmul fast float %1953, %1874
  %1959 = fmul fast float %1958, %1957
  %1960 = bitcast float %1875 to i32
  %1961 = ashr i32 %1960, 1
  %1962 = sub nsw i32 1597463174, %1961
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1875, 5.000000e-01
  %1965 = fmul fast float %1963, %1963
  %1966 = fmul fast float %1965, %1964
  %1967 = fsub fast float 1.500000e+00, %1966
  %1968 = fmul fast float %1963, %1875
  %1969 = fmul fast float %1968, %1967
  %1970 = bitcast float %1876 to i32
  %1971 = ashr i32 %1970, 1
  %1972 = sub nsw i32 1597463174, %1971
  %1973 = bitcast i32 %1972 to float
  %1974 = fmul fast float %1876, 5.000000e-01
  %1975 = fmul fast float %1973, %1973
  %1976 = fmul fast float %1975, %1974
  %1977 = fsub fast float 1.500000e+00, %1976
  %1978 = fmul fast float %1973, %1876
  %1979 = fmul fast float %1978, %1977
  %1980 = fsub fast float %1959, %1941
  %1981 = fsub fast float %1969, %1945
  %1982 = fsub fast float %1979, %1949
  %1983 = fmul fast float %1980, %1909
  %1984 = fmul fast float %1981, %1911
  %1985 = fmul fast float %1982, %1916
  %1986 = fadd fast float %1983, %1924
  %1987 = fadd fast float %1984, %1928
  %1988 = fadd fast float %1985, %1932
  %1989 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1990 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1991 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1992 = fmul fast float %1989, %1989
  %1993 = fmul fast float %1990, %1990
  %1994 = fmul fast float %1991, %1991
  %1995 = fsub fast float %1992, %1874
  %1996 = fsub fast float %1993, %1875
  %1997 = fsub fast float %1994, %1876
  %1998 = fmul fast float %1995, %1899
  %1999 = fmul fast float %1996, %1899
  %2000 = fmul fast float %1997, %1899
  %2001 = fadd fast float %1998, %1874
  %2002 = fadd fast float %1999, %1875
  %2003 = fadd fast float %2000, %1876
  %2004 = fadd fast float %1921, %1885
  %2005 = fsub fast float %2004, %1938
  %2006 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2007 = fsub fast float %2006, %1885
  %2008 = fmul fast float %2007, %1899
  %2009 = fadd fast float %2008, %1885
  br label %2063

; <label>:2010                                    ; preds = %1898
  %2011 = and i32 %1901, 134217728
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2047, label %2013

; <label>:2013                                    ; preds = %2010
  %2014 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2015 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2016 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fadd fast float %2015, -5.000000e-01
  %2019 = fadd fast float %2016, -5.000000e-01
  %2020 = fmul fast float %2017, %1899
  %2021 = fmul fast float %2018, %1899
  %2022 = fmul fast float %2019, %1899
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = fadd fast float %2021, 5.000000e-01
  %2025 = fadd fast float %2022, 5.000000e-01
  %2026 = call float @dx.op.unary.f32(i32 24, float %1874)  ; Sqrt(value)
  %2027 = call float @dx.op.unary.f32(i32 24, float %1875)  ; Sqrt(value)
  %2028 = call float @dx.op.unary.f32(i32 24, float %1876)  ; Sqrt(value)
  %2029 = fmul fast float %2023, 2.000000e+00
  %2030 = fsub fast float 1.000000e+00, %2029
  %2031 = fmul fast float %2030, %2026
  %2032 = fadd fast float %2031, %2029
  %2033 = fmul fast float %2032, %2026
  %2034 = fmul fast float %2024, 2.000000e+00
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = fmul fast float %2035, %2027
  %2037 = fadd fast float %2036, %2034
  %2038 = fmul fast float %2037, %2027
  %2039 = fmul fast float %2025, 2.000000e+00
  %2040 = fsub fast float 1.000000e+00, %2039
  %2041 = fmul fast float %2040, %2028
  %2042 = fadd fast float %2041, %2039
  %2043 = fmul fast float %2042, %2028
  %2044 = fmul fast float %2033, %2033
  %2045 = fmul fast float %2038, %2038
  %2046 = fmul fast float %2043, %2043
  br label %2063

; <label>:2047                                    ; preds = %2010
  %2048 = fmul fast float %330, %330
  %2049 = fmul fast float %334, %334
  %2050 = fmul fast float %338, %338
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = fadd fast float %2049, -1.000000e+00
  %2053 = fadd fast float %2050, -1.000000e+00
  %2054 = fmul fast float %1899, %2051
  %2055 = fmul fast float %1899, %2052
  %2056 = fmul fast float %1899, %2053
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fadd fast float %2055, 1.000000e+00
  %2059 = fadd fast float %2056, 1.000000e+00
  %2060 = fmul fast float %2057, %1874
  %2061 = fmul fast float %2058, %1875
  %2062 = fmul fast float %2059, %1876
  br label %2063

; <label>:2063                                    ; preds = %2047, %2013, %1904, %1860
  %2064 = phi float [ %2009, %1904 ], [ %1885, %2013 ], [ %1885, %2047 ], [ 0x3FA23C0BE0000000, %1860 ]
  %2065 = phi float [ %2001, %1904 ], [ %2044, %2013 ], [ %2060, %2047 ], [ 1.000000e+00, %1860 ]
  %2066 = phi float [ %2002, %1904 ], [ %2045, %2013 ], [ %2061, %2047 ], [ 1.000000e+00, %1860 ]
  %2067 = phi float [ %2003, %1904 ], [ %2046, %2013 ], [ %2062, %2047 ], [ 1.000000e+00, %1860 ]
  %2068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.i32 %2068, 1
  %2070 = and i32 %2069, 1
  %2071 = icmp ne i32 %2070, 0
  %2072 = add i32 %33, 356
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 32
  %2076 = icmp ne i32 %2075, 0
  %2077 = and i1 %2071, %2076
  %2078 = select i1 %2077, float 1.000000e+00, float %2065
  %2079 = select i1 %2077, float 0x3FD3333340000000, float %2066
  %2080 = select i1 %2077, float 0x3FD3333340000000, float %2067
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 32
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2157, label %2085

; <label>:2085                                    ; preds = %2063
  %2086 = add i32 %33, 124
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %33, 400
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2093, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = extractvalue %dx.types.ResRet.f32 %2094, 3
  %2099 = and i32 %2088, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = lshr i32 %2088, 8
  %2102 = and i32 %2101, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = lshr i32 %2088, 16
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101000000000
  %2108 = fmul fast float %2095, %2100
  %2109 = fadd fast float %2108, %2103
  %2110 = fmul fast float %2109, 0x3F70101000000000
  %2111 = fadd fast float %2096, -5.000000e-01
  %2112 = fadd fast float %2098, -5.000000e-01
  %2113 = fmul fast float %2111, %2107
  %2114 = fmul fast float %2112, %2107
  %2115 = fadd fast float %2113, 5.000000e-01
  %2116 = fadd fast float %2114, 5.000000e-01
  %2117 = fmul fast float %2115, 2.000000e+00
  %2118 = fadd fast float %2117, -1.000000e+00
  %2119 = fmul fast float %2116, 2.000000e+00
  %2120 = fadd fast float %2119, -1.000000e+00
  %2121 = fadd fast float %2118, %2120
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = fsub fast float %2118, %2120
  %2124 = fmul fast float %2123, 5.000000e-01
  %2125 = call float @dx.op.unary.f32(i32 6, float %2122)  ; FAbs(value)
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = call float @dx.op.unary.f32(i32 6, float %2124)  ; FAbs(value)
  %2128 = fsub fast float %2126, %2127
  %2129 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2124, float %2128, float %2122, float %2124, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %2130 = call float @dx.op.unary.f32(i32 25, float %2129)  ; Rsqrt(value)
  %2131 = fmul fast float %2122, %2130
  %2132 = fmul fast float %2124, %2130
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 67108864
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2153, label %2137

; <label>:2137                                    ; preds = %2085
  %2138 = add i32 %33, 312
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 65535
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 65535
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = lshr i32 %2140, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = fsub fast float %2110, %2148
  %2150 = fmul fast float %2149, %2142
  %2151 = fadd fast float %2150, %2146
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2137, %2085
  %2154 = phi float [ %2152, %2137 ], [ %2110, %2085 ]
  %2155 = call float @dx.op.dot2.f32(i32 54, float %2131, float %2132, float %1689, float %1690)  ; Dot2(ax,ay,bx,by)
  %2156 = call float @dx.op.dot2.f32(i32 54, float %2131, float %2132, float %1691, float %1692)  ; Dot2(ax,ay,bx,by)
  br label %2157

; <label>:2157                                    ; preds = %2153, %2063
  %2158 = phi float [ %2154, %2153 ], [ 0x3FD6666660000000, %2063 ]
  %2159 = phi float [ %2155, %2153 ], [ 0.000000e+00, %2063 ]
  %2160 = phi float [ %2156, %2153 ], [ 0.000000e+00, %2063 ]
  %2161 = phi float [ %2097, %2153 ], [ 1.000000e+00, %2063 ]
  %2162 = add i32 %33, 192
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = lshr i32 %2164, 22
  %2166 = shl nuw nsw i32 %2165, 5
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 64
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2205, label %2172

; <label>:2172                                    ; preds = %2157
  %2173 = add i32 %33, 416
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = add i32 %2175, 0
  %2177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 131072
  %2181 = icmp eq i32 %2180, 0
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2177, %dx.types.Handle %74, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.ResRet.f32 %2182, 1
  %2185 = extractvalue %dx.types.ResRet.f32 %2182, 2
  %2186 = fmul fast float %2183, %318
  %2187 = fmul fast float %2184, %321
  %2188 = fmul fast float %2185, %324
  br i1 %2181, label %2195, label %2189

; <label>:2189                                    ; preds = %2172
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = fmul fast float %2191, %2186
  %2193 = fmul fast float %2191, %2187
  %2194 = fmul fast float %2191, %2188
  br label %2195

; <label>:2195                                    ; preds = %2189, %2172
  %2196 = phi float [ %2192, %2189 ], [ %2186, %2172 ]
  %2197 = phi float [ %2193, %2189 ], [ %2187, %2172 ]
  %2198 = phi float [ %2194, %2189 ], [ %2188, %2172 ]
  %2199 = fmul fast float %2196, %2167
  %2200 = select i1 %217, float %2199, float %2196
  %2201 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2197, float %2198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = select i1 %217, float 0.000000e+00, float %2196
  %2203 = select i1 %217, float %2201, float %2197
  %2204 = select i1 %217, float 0.000000e+00, float %2198
  br label %2205

; <label>:2205                                    ; preds = %2195, %2157
  %2206 = phi float [ %2202, %2195 ], [ 0.000000e+00, %2157 ]
  %2207 = phi float [ %2203, %2195 ], [ 0.000000e+00, %2157 ]
  %2208 = phi float [ %2204, %2195 ], [ 0.000000e+00, %2157 ]
  %2209 = add i32 %33, 128
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = lshr i32 %2211, 8
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = call float @dx.op.dot3.f32(i32 55, float %2078, float %2079, float %2080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2218 = fmul fast float %2216, %2217
  %2219 = fadd fast float %2218, %2213
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  br i1 %1677, label %2222, label %2230

; <label>:2222                                    ; preds = %2205
  %2223 = fsub fast float 1.000000e+00, %1858
  %2224 = fmul fast float %2223, %1666
  %2225 = fmul fast float %2223, %1667
  %2226 = fmul fast float %2223, %1668
  %2227 = fmul fast float %2223, %1669
  %2228 = fmul fast float %2223, %1670
  %2229 = fmul fast float %2223, %1671
  br label %2230

; <label>:2230                                    ; preds = %2222, %2205
  %2231 = phi float [ %2224, %2222 ], [ %1666, %2205 ]
  %2232 = phi float [ %2225, %2222 ], [ %1667, %2205 ]
  %2233 = phi float [ %2226, %2222 ], [ %1668, %2205 ]
  %2234 = phi float [ %2227, %2222 ], [ %1669, %2205 ]
  %2235 = phi float [ %2228, %2222 ], [ %1670, %2205 ]
  %2236 = phi float [ %2229, %2222 ], [ %1671, %2205 ]
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 3
  %2240 = icmp eq i32 %2239, 3
  br i1 %2240, label %2319, label %2241

; <label>:2241                                    ; preds = %2230
  %2242 = and i32 %2238, 16
  %2243 = icmp ne i32 %2242, 0
  %2244 = select i1 %2243, float %1858, float 0.000000e+00
  %2245 = icmp eq i32 %2239, 0
  br i1 %2245, label %2246, label %2274

; <label>:2246                                    ; preds = %2241
  %2247 = and i32 %2238, 64
  %2248 = icmp ne i32 %2247, 0
  %2249 = select i1 %2248, float %1858, float 0.000000e+00
  %2250 = fsub fast float %2078, %2231
  %2251 = fsub fast float %2079, %2232
  %2252 = fsub fast float %2080, %2233
  %2253 = fmul fast float %2244, %2250
  %2254 = fmul fast float %2244, %2251
  %2255 = fmul fast float %2244, %2252
  %2256 = fadd fast float %2253, %2231
  %2257 = fadd fast float %2254, %2232
  %2258 = fadd fast float %2255, %2233
  %2259 = fsub fast float %2064, %1672
  %2260 = fmul fast float %2244, %2259
  %2261 = fadd fast float %2260, %1672
  %2262 = fsub fast float %2206, %2234
  %2263 = fsub fast float %2207, %2235
  %2264 = fsub fast float %2208, %2236
  %2265 = fmul fast float %2249, %2262
  %2266 = fmul fast float %2249, %2263
  %2267 = fmul fast float %2249, %2264
  %2268 = fadd fast float %2265, %2234
  %2269 = fadd fast float %2266, %2235
  %2270 = fadd fast float %2267, %2236
  %2271 = fsub fast float %2221, %1675
  %2272 = fmul fast float %2244, %2271
  %2273 = fadd fast float %2272, %1675
  br label %2319

; <label>:2274                                    ; preds = %2241
  %2275 = icmp eq i32 %2239, 1
  br i1 %2275, label %2276, label %2289

; <label>:2276                                    ; preds = %2274
  %2277 = fadd fast float %2078, -1.000000e+00
  %2278 = fadd fast float %2079, -1.000000e+00
  %2279 = fadd fast float %2080, -1.000000e+00
  %2280 = fmul fast float %2244, %2277
  %2281 = fmul fast float %2244, %2278
  %2282 = fmul fast float %2244, %2279
  %2283 = fadd fast float %2280, 1.000000e+00
  %2284 = fadd fast float %2281, 1.000000e+00
  %2285 = fadd fast float %2282, 1.000000e+00
  %2286 = fmul fast float %2283, %2231
  %2287 = fmul fast float %2284, %2232
  %2288 = fmul fast float %2285, %2233
  br label %2319

; <label>:2289                                    ; preds = %2274
  %2290 = icmp eq i32 %2239, 2
  br i1 %2290, label %2291, label %2319

; <label>:2291                                    ; preds = %2289
  %2292 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2293 = call float @dx.op.unary.f32(i32 24, float %2079)  ; Sqrt(value)
  %2294 = call float @dx.op.unary.f32(i32 24, float %2080)  ; Sqrt(value)
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fadd fast float %2293, -5.000000e-01
  %2297 = fadd fast float %2294, -5.000000e-01
  %2298 = fmul fast float %2295, %2244
  %2299 = fmul fast float %2296, %2244
  %2300 = fmul fast float %2297, %2244
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = fadd fast float %2299, 5.000000e-01
  %2303 = fadd fast float %2300, 5.000000e-01
  %2304 = fmul fast float %2301, 2.000000e+00
  %2305 = fsub fast float 1.000000e+00, %2304
  %2306 = fmul fast float %2305, %2231
  %2307 = fadd fast float %2306, %2304
  %2308 = fmul fast float %2307, %2231
  %2309 = fmul fast float %2302, 2.000000e+00
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = fmul fast float %2310, %2232
  %2312 = fadd fast float %2311, %2309
  %2313 = fmul fast float %2312, %2232
  %2314 = fmul fast float %2303, 2.000000e+00
  %2315 = fsub fast float 1.000000e+00, %2314
  %2316 = fmul fast float %2315, %2233
  %2317 = fadd fast float %2316, %2314
  %2318 = fmul fast float %2317, %2233
  br label %2319

; <label>:2319                                    ; preds = %2291, %2289, %2276, %2246, %2230
  %2320 = phi float [ %2231, %2230 ], [ %2308, %2291 ], [ %2231, %2289 ], [ %2286, %2276 ], [ %2256, %2246 ]
  %2321 = phi float [ %2232, %2230 ], [ %2313, %2291 ], [ %2232, %2289 ], [ %2287, %2276 ], [ %2257, %2246 ]
  %2322 = phi float [ %2233, %2230 ], [ %2318, %2291 ], [ %2233, %2289 ], [ %2288, %2276 ], [ %2258, %2246 ]
  %2323 = phi float [ %2234, %2230 ], [ %2234, %2291 ], [ %2234, %2289 ], [ %2234, %2276 ], [ %2268, %2246 ]
  %2324 = phi float [ %2235, %2230 ], [ %2235, %2291 ], [ %2235, %2289 ], [ %2235, %2276 ], [ %2269, %2246 ]
  %2325 = phi float [ %2236, %2230 ], [ %2236, %2291 ], [ %2236, %2289 ], [ %2236, %2276 ], [ %2270, %2246 ]
  %2326 = phi float [ %1672, %2230 ], [ %1672, %2291 ], [ %1672, %2289 ], [ %1672, %2276 ], [ %2261, %2246 ]
  %2327 = phi float [ %1675, %2230 ], [ %1675, %2291 ], [ %1675, %2289 ], [ %1675, %2276 ], [ %2273, %2246 ]
  %2328 = and i32 %2238, 12
  %2329 = icmp eq i32 %2328, 12
  br i1 %2329, label %2402, label %2330

; <label>:2330                                    ; preds = %2319
  %2331 = and i32 %2238, 2097184
  %2332 = icmp eq i32 %2331, 2097184
  %2333 = select i1 %2332, float %1858, float 0.000000e+00
  %2334 = and i32 %2238, 4194336
  %2335 = icmp eq i32 %2334, 4194336
  %2336 = select i1 %2335, float %1858, float 0.000000e+00
  %2337 = and i32 %2238, 8388640
  %2338 = icmp eq i32 %2337, 8388640
  %2339 = select i1 %2338, float %1858, float 0.000000e+00
  %2340 = icmp eq i32 %2328, 0
  br i1 %2340, label %2341, label %2354

; <label>:2341                                    ; preds = %2330
  %2342 = fsub fast float %2159, %1664
  %2343 = fsub fast float %2160, %1665
  %2344 = fmul fast float %2333, %2342
  %2345 = fmul fast float %2333, %2343
  %2346 = fadd fast float %2344, %1664
  %2347 = fadd fast float %2345, %1665
  %2348 = fsub fast float %2161, %1674
  %2349 = fmul fast float %2336, %2348
  %2350 = fadd fast float %2349, %1674
  %2351 = fsub fast float %2158, %1673
  %2352 = fmul fast float %2339, %2351
  %2353 = fadd fast float %2352, %1673
  br label %2402

; <label>:2354                                    ; preds = %2330
  %2355 = icmp eq i32 %2328, 4
  br i1 %2355, label %2356, label %2388

; <label>:2356                                    ; preds = %2354
  %2357 = fmul fast float %2333, %2159
  %2358 = fmul fast float %2333, %2160
  %2359 = fadd fast float %2357, %1664
  %2360 = fadd fast float %2358, %1665
  %2361 = call float @dx.op.binary.f32(i32 36, float %1674, float %2161)  ; FMin(a,b)
  %2362 = fsub fast float %2361, %1674
  %2363 = fmul fast float %2362, %2336
  %2364 = fadd fast float %2363, %1674
  %2365 = fadd fast float %2158, %1673
  %2366 = fmul fast float %2365, 0x3FF337FAE0000000
  %2367 = fmul fast float %1673, %1673
  %2368 = fmul fast float %2158, %2158
  %2369 = fadd fast float %2368, %2367
  %2370 = fmul fast float %2369, 0x3FE5152B00000000
  %2371 = fmul fast float %1673, 0xBFCC1F85E0000000
  %2372 = fmul fast float %2371, %2158
  %2373 = fadd fast float %2372, 0xBFE1363700000000
  %2374 = fadd fast float %2373, %2366
  %2375 = fsub fast float %2374, %2370
  %2376 = fmul fast float %2365, 0x3FBA6F0D00000000
  %2377 = fmul fast float %2369, 0x3FD0432880000000
  %2378 = fmul fast float %1673, 0xBFEF110800000000
  %2379 = fmul fast float %2378, %2158
  %2380 = fadd fast float %2379, 1.000000e+00
  %2381 = fsub fast float %2380, %2376
  %2382 = fadd fast float %2381, %2377
  %2383 = fdiv fast float %2375, %2382
  %2384 = call float @dx.op.unary.f32(i32 7, float %2383)  ; Saturate(value)
  %2385 = fsub fast float %2384, %1673
  %2386 = fmul fast float %2385, %2339
  %2387 = fadd fast float %2386, %1673
  br label %2402

; <label>:2388                                    ; preds = %2354
  %2389 = icmp eq i32 %2328, 8
  br i1 %2389, label %2390, label %2402

; <label>:2390                                    ; preds = %2388
  %2391 = fmul fast float %2333, %2159
  %2392 = fmul fast float %2333, %2160
  %2393 = fadd fast float %2391, %1664
  %2394 = fadd fast float %2392, %1665
  %2395 = call float @dx.op.binary.f32(i32 36, float %1674, float %2161)  ; FMin(a,b)
  %2396 = fsub fast float %2395, %1674
  %2397 = fmul fast float %2396, %2336
  %2398 = fadd fast float %2397, %1674
  %2399 = fsub fast float %2158, %1673
  %2400 = fmul fast float %2339, %2399
  %2401 = fadd fast float %2400, %1673
  br label %2402

; <label>:2402                                    ; preds = %2390, %2388, %2356, %2341, %2319, %1857, %1676, %1663
  %2403 = phi float [ %1664, %2319 ], [ %1664, %1857 ], [ %1664, %1663 ], [ %2393, %2390 ], [ %1664, %2388 ], [ %2359, %2356 ], [ %2346, %2341 ], [ %1664, %1676 ]
  %2404 = phi float [ %1665, %2319 ], [ %1665, %1857 ], [ %1665, %1663 ], [ %2394, %2390 ], [ %1665, %2388 ], [ %2360, %2356 ], [ %2347, %2341 ], [ %1665, %1676 ]
  %2405 = phi float [ %2320, %2319 ], [ %1666, %1857 ], [ %1666, %1663 ], [ %2320, %2390 ], [ %2320, %2388 ], [ %2320, %2356 ], [ %2320, %2341 ], [ %1666, %1676 ]
  %2406 = phi float [ %2321, %2319 ], [ %1667, %1857 ], [ %1667, %1663 ], [ %2321, %2390 ], [ %2321, %2388 ], [ %2321, %2356 ], [ %2321, %2341 ], [ %1667, %1676 ]
  %2407 = phi float [ %2322, %2319 ], [ %1668, %1857 ], [ %1668, %1663 ], [ %2322, %2390 ], [ %2322, %2388 ], [ %2322, %2356 ], [ %2322, %2341 ], [ %1668, %1676 ]
  %2408 = phi float [ %2323, %2319 ], [ %1669, %1857 ], [ %1669, %1663 ], [ %2323, %2390 ], [ %2323, %2388 ], [ %2323, %2356 ], [ %2323, %2341 ], [ %1669, %1676 ]
  %2409 = phi float [ %2324, %2319 ], [ %1670, %1857 ], [ %1670, %1663 ], [ %2324, %2390 ], [ %2324, %2388 ], [ %2324, %2356 ], [ %2324, %2341 ], [ %1670, %1676 ]
  %2410 = phi float [ %2325, %2319 ], [ %1671, %1857 ], [ %1671, %1663 ], [ %2325, %2390 ], [ %2325, %2388 ], [ %2325, %2356 ], [ %2325, %2341 ], [ %1671, %1676 ]
  %2411 = phi float [ %2326, %2319 ], [ %1672, %1857 ], [ %1672, %1663 ], [ %2326, %2390 ], [ %2326, %2388 ], [ %2326, %2356 ], [ %2326, %2341 ], [ %1672, %1676 ]
  %2412 = phi float [ %1673, %2319 ], [ %1673, %1857 ], [ %1673, %1663 ], [ %2401, %2390 ], [ %1673, %2388 ], [ %2387, %2356 ], [ %2353, %2341 ], [ %1673, %1676 ]
  %2413 = phi float [ %1674, %2319 ], [ %1674, %1857 ], [ %1674, %1663 ], [ %2398, %2390 ], [ %1674, %2388 ], [ %2364, %2356 ], [ %2350, %2341 ], [ %1674, %1676 ]
  %2414 = phi float [ %2327, %2319 ], [ %1675, %1857 ], [ %1675, %1663 ], [ %2327, %2390 ], [ %2327, %2388 ], [ %2327, %2356 ], [ %2327, %2341 ], [ %1675, %1676 ]
  br i1 %405, label %3141, label %2415

; <label>:2415                                    ; preds = %2402
  %2416 = icmp ult i32 %456, 4
  %2417 = add i32 %33, 72
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %33, 76
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2420, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = or i32 %2422, %2419
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %3141, label %2425

; <label>:2425                                    ; preds = %2415
  %2426 = and i32 %2419, 262144
  %2427 = icmp ne i32 %2426, 0
  %2428 = select i1 %2427, float %39, float 1.000000e+00
  %2429 = select i1 %2427, float %40, float 0.000000e+00
  %2430 = select i1 %2427, float %41, float 0.000000e+00
  %2431 = select i1 %2427, float %42, float 1.000000e+00
  %2432 = select i1 %2427, float %43, float %66
  %2433 = select i1 %2427, float %44, float %67
  %2434 = add i32 %33, 332
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = lshr i32 %2436, 16
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = fmul fast float %2438, 0x3F50624DE0000000
  %2440 = add i32 %33, 136
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = lshr i32 %2442, 16
  %2444 = and i32 %2443, 255
  %2445 = lshr i32 %2442, 24
  %2446 = add i32 %33, 340
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 65535
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = lshr i32 %2448, 16
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = add i32 %33, 80
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = lshr i32 %2455, 22
  %2457 = shl nuw nsw i32 %2456, 5
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = shl i32 %2455, 4
  %2460 = and i32 %2459, 32752
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = lshr i32 %2455, 7
  %2463 = and i32 %2462, 32752
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2465, 3
  %2467 = fmul fast float %2466, 1.000000e+03
  %2468 = fmul fast float %395, %2467
  %2469 = call float @dx.op.unary.f32(i32 22, float %2468)  ; Frc(value)
  %2470 = fadd fast float %2469, %385
  %2471 = fmul fast float %396, %2467
  %2472 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2473 = fadd fast float %2472, %387
  %2474 = fmul fast float %2439, %2467
  %2475 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2476 = fmul fast float %2475, 0x401921FB60000000
  %2477 = fadd fast float %2476, %2458
  %2478 = call float @dx.op.unary.f32(i32 13, float %2477)  ; Sin(value)
  %2479 = call float @dx.op.unary.f32(i32 12, float %2477)  ; Cos(value)
  %2480 = fsub fast float -0.000000e+00, %2478
  %2481 = fadd fast float %2432, -5.000000e-01
  %2482 = fadd fast float %2433, -5.000000e-01
  %2483 = fmul fast float %2450, %2481
  %2484 = fmul fast float %2452, %2482
  %2485 = fadd fast float %2483, 5.000000e-01
  %2486 = fadd fast float %2484, 5.000000e-01
  %2487 = fmul fast float %2461, %2485
  %2488 = fmul fast float %2464, %2486
  %2489 = fmul fast float %2479, %2487
  %2490 = call float @dx.op.tertiary.f32(i32 46, float %2480, float %2488, float %2489)  ; FMad(a,b,c)
  %2491 = fmul fast float %2478, %2487
  %2492 = call float @dx.op.tertiary.f32(i32 46, float %2479, float %2488, float %2491)  ; FMad(a,b,c)
  %2493 = fadd fast float %2470, %2490
  %2494 = fadd fast float %2473, %2492
  %2495 = icmp ugt i32 %2444, 1
  %2496 = icmp ugt i32 %2442, 33554431
  %2497 = or i1 %2496, %2495
  br i1 %2497, label %2498, label %2523

; <label>:2498                                    ; preds = %2425
  %2499 = add i32 %33, 276
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 16
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = fmul fast float %2466, %2503
  %2505 = call float @dx.op.unary.f32(i32 22, float %2504)  ; Frc(value)
  %2506 = mul nuw nsw i32 %2444, %2445
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2505, %2507
  %2509 = call float @dx.op.unary.f32(i32 27, float %2508)  ; Round_ni(value)
  %2510 = fptoui float %2509 to i32
  %2511 = urem i32 %2510, %2444
  %2512 = udiv i32 %2510, %2445
  %2513 = call float @dx.op.unary.f32(i32 22, float %2493)  ; Frc(value)
  %2514 = call float @dx.op.unary.f32(i32 22, float %2494)  ; Frc(value)
  %2515 = uitofp i32 %2511 to float
  %2516 = uitofp i32 %2512 to float
  %2517 = fadd fast float %2513, %2515
  %2518 = fadd fast float %2514, %2516
  %2519 = uitofp i32 %2444 to float
  %2520 = uitofp i32 %2445 to float
  %2521 = fdiv fast float %2517, %2519
  %2522 = fdiv fast float %2518, %2520
  br label %2523

; <label>:2523                                    ; preds = %2498, %2425
  %2524 = phi float [ %2521, %2498 ], [ %2493, %2425 ]
  %2525 = phi float [ %2522, %2498 ], [ %2494, %2425 ]
  %2526 = and i32 %2419, 256
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2574, label %2528

; <label>:2528                                    ; preds = %2523
  %2529 = add i32 %33, 452
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2533, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = add i32 %33, 148
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = shl i32 %2538, 4
  %2540 = and i32 %2539, 32752
  %2541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2540)  ; LegacyF16ToF32(value)
  %2542 = lshr i32 %2538, 7
  %2543 = and i32 %2542, 32752
  %2544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2543)  ; LegacyF16ToF32(value)
  %2545 = fsub fast float 1.000000e+00, %451
  %2546 = call float @dx.op.binary.f32(i32 35, float %2545, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2547 = bitcast float %451 to i32
  %2548 = sitofp i32 %2547 to float
  %2549 = fadd fast float %2548, 0xC1CFBF8940000000
  %2550 = fmul fast float %2544, %2549
  %2551 = fadd fast float %2550, 0x41CFBF8940000000
  %2552 = fptosi float %2551 to i32
  %2553 = bitcast i32 %2552 to float
  %2554 = bitcast float %2546 to i32
  %2555 = sitofp i32 %2554 to float
  %2556 = fadd fast float %2555, 0xC1CFBF8940000000
  %2557 = fmul fast float %2556, %2544
  %2558 = fadd fast float %2557, 0x41CFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2553, %2541
  %2562 = fmul fast float %2560, %2541
  %2563 = fsub fast float %2546, %2561
  %2564 = fadd fast float %2562, %2546
  %2565 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2566 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2567 = fsub fast float %2535, %2565
  %2568 = fsub fast float %2566, %2565
  %2569 = bitcast float %2568 to i32
  %2570 = sub nsw i32 2129859010, %2569
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2571, %2567
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  br label %2574

; <label>:2574                                    ; preds = %2528, %2523
  %2575 = phi float [ %2573, %2528 ], [ %451, %2523 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 128
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2596, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %33, 436
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = add i32 %2583, 0
  %2585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2585, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 524288
  %2591 = icmp ne i32 %2590, 0
  %2592 = fcmp fast ogt float %2587, 0x3FE0101020000000
  %2593 = select i1 %2592, float 1.000000e+00, float 0.000000e+00
  %2594 = select i1 %2591, float %2593, float %2587
  %2595 = fmul fast float %2594, %2575
  br label %2596

; <label>:2596                                    ; preds = %2580, %2574
  %2597 = phi float [ %2595, %2580 ], [ %2575, %2574 ]
  %2598 = fcmp fast ult float %2597, 0x3F70101020000000
  br i1 %2598, label %3141, label %2599

; <label>:2599                                    ; preds = %2596
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 16
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2802, label %2604

; <label>:2604                                    ; preds = %2599
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %33, 388
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %2609, 0
  %2611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2611, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.ResRet.f32 %2612, 3
  %2617 = and i32 %2606, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = lshr i32 %2606, 8
  %2620 = and i32 %2619, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = fmul fast float %2616, %2618
  %2623 = fadd fast float %2622, %2621
  %2624 = fmul fast float %2623, 0x3F70101000000000
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 512
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2637, label %2629

; <label>:2629                                    ; preds = %2604
  %2630 = add i32 %33, 472
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = add i32 %2632, 0
  %2634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2634, %dx.types.Handle %75, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  br label %2637

; <label>:2637                                    ; preds = %2629, %2604
  %2638 = phi float [ %2636, %2629 ], [ 1.000000e+00, %2604 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 33554432
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2749, label %2643

; <label>:2643                                    ; preds = %2637
  %2644 = add i32 %33, 272
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 65535
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = lshr i32 %2646, 16
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = add i32 %33, 276
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 65535
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 24
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2659, 0x3F70101020000000
  %2661 = and i32 %2657, 255
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = lshr i32 %2657, 8
  %2665 = and i32 %2664, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = lshr i32 %2657, 16
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = add i32 %33, 268
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 24
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = and i32 %2674, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = lshr i32 %2674, 8
  %2682 = and i32 %2681, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = lshr i32 %2674, 16
  %2686 = and i32 %2685, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = bitcast float %2613 to i32
  %2690 = ashr i32 %2689, 1
  %2691 = sub nsw i32 1597463174, %2690
  %2692 = bitcast i32 %2691 to float
  %2693 = fmul fast float %2613, 5.000000e-01
  %2694 = fmul fast float %2692, %2692
  %2695 = fmul fast float %2694, %2693
  %2696 = fsub fast float 1.500000e+00, %2695
  %2697 = fmul fast float %2692, %2613
  %2698 = fmul fast float %2697, %2696
  %2699 = bitcast float %2614 to i32
  %2700 = ashr i32 %2699, 1
  %2701 = sub nsw i32 1597463174, %2700
  %2702 = bitcast i32 %2701 to float
  %2703 = fmul fast float %2614, 5.000000e-01
  %2704 = fmul fast float %2702, %2702
  %2705 = fmul fast float %2704, %2703
  %2706 = fsub fast float 1.500000e+00, %2705
  %2707 = fmul fast float %2702, %2614
  %2708 = fmul fast float %2707, %2706
  %2709 = bitcast float %2615 to i32
  %2710 = ashr i32 %2709, 1
  %2711 = sub nsw i32 1597463174, %2710
  %2712 = bitcast i32 %2711 to float
  %2713 = fmul fast float %2615, 5.000000e-01
  %2714 = fmul fast float %2712, %2712
  %2715 = fmul fast float %2714, %2713
  %2716 = fsub fast float 1.500000e+00, %2715
  %2717 = fmul fast float %2712, %2615
  %2718 = fmul fast float %2717, %2716
  %2719 = fsub fast float %2698, %2680
  %2720 = fsub fast float %2708, %2684
  %2721 = fsub fast float %2718, %2688
  %2722 = fmul fast float %2719, %2648
  %2723 = fmul fast float %2720, %2650
  %2724 = fmul fast float %2721, %2655
  %2725 = fadd fast float %2722, %2663
  %2726 = fadd fast float %2723, %2667
  %2727 = fadd fast float %2724, %2671
  %2728 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2729 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2731 = fmul fast float %2728, %2728
  %2732 = fmul fast float %2729, %2729
  %2733 = fmul fast float %2730, %2730
  %2734 = fsub fast float %2731, %2613
  %2735 = fsub fast float %2732, %2614
  %2736 = fsub fast float %2733, %2615
  %2737 = fmul fast float %2734, %2638
  %2738 = fmul fast float %2735, %2638
  %2739 = fmul fast float %2736, %2638
  %2740 = fadd fast float %2737, %2613
  %2741 = fadd fast float %2738, %2614
  %2742 = fadd fast float %2739, %2615
  %2743 = fadd fast float %2660, %2624
  %2744 = fsub fast float %2743, %2677
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = fsub fast float %2745, %2624
  %2747 = fmul fast float %2746, %2638
  %2748 = fadd fast float %2747, %2624
  br label %2802

; <label>:2749                                    ; preds = %2637
  %2750 = and i32 %2640, 134217728
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2786, label %2752

; <label>:2752                                    ; preds = %2749
  %2753 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2754 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fmul fast float %2756, %2638
  %2760 = fmul fast float %2757, %2638
  %2761 = fmul fast float %2758, %2638
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %2614)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2768 = fmul fast float %2762, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2765
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2765
  %2773 = fmul fast float %2763, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2766
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2766
  %2778 = fmul fast float %2764, 2.000000e+00
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = fmul fast float %2779, %2767
  %2781 = fadd fast float %2780, %2778
  %2782 = fmul fast float %2781, %2767
  %2783 = fmul fast float %2772, %2772
  %2784 = fmul fast float %2777, %2777
  %2785 = fmul fast float %2782, %2782
  br label %2802

; <label>:2786                                    ; preds = %2749
  %2787 = fmul fast float %372, %372
  %2788 = fmul fast float %376, %376
  %2789 = fmul fast float %380, %380
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fadd fast float %2788, -1.000000e+00
  %2792 = fadd fast float %2789, -1.000000e+00
  %2793 = fmul fast float %2638, %2790
  %2794 = fmul fast float %2638, %2791
  %2795 = fmul fast float %2638, %2792
  %2796 = fadd fast float %2793, 1.000000e+00
  %2797 = fadd fast float %2794, 1.000000e+00
  %2798 = fadd fast float %2795, 1.000000e+00
  %2799 = fmul fast float %2796, %2613
  %2800 = fmul fast float %2797, %2614
  %2801 = fmul fast float %2798, %2615
  br label %2802

; <label>:2802                                    ; preds = %2786, %2752, %2643, %2599
  %2803 = phi float [ %2748, %2643 ], [ %2624, %2752 ], [ %2624, %2786 ], [ 0x3FA23C0BE0000000, %2599 ]
  %2804 = phi float [ %2740, %2643 ], [ %2783, %2752 ], [ %2799, %2786 ], [ 1.000000e+00, %2599 ]
  %2805 = phi float [ %2741, %2643 ], [ %2784, %2752 ], [ %2800, %2786 ], [ 1.000000e+00, %2599 ]
  %2806 = phi float [ %2742, %2643 ], [ %2785, %2752 ], [ %2801, %2786 ], [ 1.000000e+00, %2599 ]
  %2807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.i32 %2807, 1
  %2809 = and i32 %2808, 1
  %2810 = icmp ne i32 %2809, 0
  %2811 = add i32 %33, 356
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = and i32 %2813, 32
  %2815 = icmp ne i32 %2814, 0
  %2816 = and i1 %2810, %2815
  %2817 = select i1 %2816, float 1.000000e+00, float %2804
  %2818 = select i1 %2816, float 0x3FD3333340000000, float %2805
  %2819 = select i1 %2816, float 0x3FD3333340000000, float %2806
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 32
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2896, label %2824

; <label>:2824                                    ; preds = %2802
  %2825 = add i32 %33, 140
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %33, 404
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2832, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = extractvalue %dx.types.ResRet.f32 %2833, 3
  %2838 = and i32 %2827, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = lshr i32 %2827, 8
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = lshr i32 %2827, 16
  %2844 = and i32 %2843, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = fmul fast float %2845, 0x3F70101000000000
  %2847 = fmul fast float %2834, %2839
  %2848 = fadd fast float %2847, %2842
  %2849 = fmul fast float %2848, 0x3F70101000000000
  %2850 = fadd fast float %2835, -5.000000e-01
  %2851 = fadd fast float %2837, -5.000000e-01
  %2852 = fmul fast float %2850, %2846
  %2853 = fmul fast float %2851, %2846
  %2854 = fadd fast float %2852, 5.000000e-01
  %2855 = fadd fast float %2853, 5.000000e-01
  %2856 = fmul fast float %2854, 2.000000e+00
  %2857 = fadd fast float %2856, -1.000000e+00
  %2858 = fmul fast float %2855, 2.000000e+00
  %2859 = fadd fast float %2858, -1.000000e+00
  %2860 = fadd fast float %2857, %2859
  %2861 = fmul fast float %2860, 5.000000e-01
  %2862 = fsub fast float %2857, %2859
  %2863 = fmul fast float %2862, 5.000000e-01
  %2864 = call float @dx.op.unary.f32(i32 6, float %2861)  ; FAbs(value)
  %2865 = fsub fast float 1.000000e+00, %2864
  %2866 = call float @dx.op.unary.f32(i32 6, float %2863)  ; FAbs(value)
  %2867 = fsub fast float %2865, %2866
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2863, float %2867, float %2861, float %2863, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 25, float %2868)  ; Rsqrt(value)
  %2870 = fmul fast float %2861, %2869
  %2871 = fmul fast float %2863, %2869
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 67108864
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2892, label %2876

; <label>:2876                                    ; preds = %2824
  %2877 = add i32 %33, 328
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 65535
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = lshr i32 %2879, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = fsub fast float %2849, %2887
  %2889 = fmul fast float %2888, %2881
  %2890 = fadd fast float %2889, %2885
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  br label %2892

; <label>:2892                                    ; preds = %2876, %2824
  %2893 = phi float [ %2891, %2876 ], [ %2849, %2824 ]
  %2894 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2428, float %2429)  ; Dot2(ax,ay,bx,by)
  %2895 = call float @dx.op.dot2.f32(i32 54, float %2870, float %2871, float %2430, float %2431)  ; Dot2(ax,ay,bx,by)
  br label %2896

; <label>:2896                                    ; preds = %2892, %2802
  %2897 = phi float [ %2893, %2892 ], [ 0x3FD6666660000000, %2802 ]
  %2898 = phi float [ %2894, %2892 ], [ 0.000000e+00, %2802 ]
  %2899 = phi float [ %2895, %2892 ], [ 0.000000e+00, %2802 ]
  %2900 = phi float [ %2836, %2892 ], [ 1.000000e+00, %2802 ]
  %2901 = add i32 %33, 208
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = lshr i32 %2903, 22
  %2905 = shl nuw nsw i32 %2904, 5
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = and i32 %2908, 64
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %2944, label %2911

; <label>:2911                                    ; preds = %2896
  %2912 = add i32 %33, 420
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 131072
  %2920 = icmp eq i32 %2919, 0
  %2921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %74, float %2524, float %2525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = fmul fast float %2922, %360
  %2926 = fmul fast float %2923, %363
  %2927 = fmul fast float %2924, %366
  br i1 %2920, label %2934, label %2928

; <label>:2928                                    ; preds = %2911
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = fmul fast float %2930, %2925
  %2932 = fmul fast float %2930, %2926
  %2933 = fmul fast float %2930, %2927
  br label %2934

; <label>:2934                                    ; preds = %2928, %2911
  %2935 = phi float [ %2931, %2928 ], [ %2925, %2911 ]
  %2936 = phi float [ %2932, %2928 ], [ %2926, %2911 ]
  %2937 = phi float [ %2933, %2928 ], [ %2927, %2911 ]
  %2938 = fmul fast float %2935, %2906
  %2939 = select i1 %217, float %2938, float %2935
  %2940 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2936, float %2937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2941 = select i1 %217, float 0.000000e+00, float %2935
  %2942 = select i1 %217, float %2940, float %2936
  %2943 = select i1 %217, float 0.000000e+00, float %2937
  br label %2944

; <label>:2944                                    ; preds = %2934, %2896
  %2945 = phi float [ %2941, %2934 ], [ 0.000000e+00, %2896 ]
  %2946 = phi float [ %2942, %2934 ], [ 0.000000e+00, %2896 ]
  %2947 = phi float [ %2943, %2934 ], [ 0.000000e+00, %2896 ]
  %2948 = add i32 %33, 144
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = lshr i32 %2950, 8
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2817, float %2818, float %2819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = fmul fast float %2955, %2956
  %2958 = fadd fast float %2957, %2952
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  br i1 %2416, label %2961, label %2969

; <label>:2961                                    ; preds = %2944
  %2962 = fsub fast float 1.000000e+00, %2597
  %2963 = fmul fast float %2962, %2405
  %2964 = fmul fast float %2962, %2406
  %2965 = fmul fast float %2962, %2407
  %2966 = fmul fast float %2962, %2408
  %2967 = fmul fast float %2962, %2409
  %2968 = fmul fast float %2962, %2410
  br label %2969

; <label>:2969                                    ; preds = %2961, %2944
  %2970 = phi float [ %2963, %2961 ], [ %2405, %2944 ]
  %2971 = phi float [ %2964, %2961 ], [ %2406, %2944 ]
  %2972 = phi float [ %2965, %2961 ], [ %2407, %2944 ]
  %2973 = phi float [ %2966, %2961 ], [ %2408, %2944 ]
  %2974 = phi float [ %2967, %2961 ], [ %2409, %2944 ]
  %2975 = phi float [ %2968, %2961 ], [ %2410, %2944 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 3
  %2979 = icmp eq i32 %2978, 3
  br i1 %2979, label %3058, label %2980

; <label>:2980                                    ; preds = %2969
  %2981 = and i32 %2977, 16
  %2982 = icmp ne i32 %2981, 0
  %2983 = select i1 %2982, float %2597, float 0.000000e+00
  %2984 = icmp eq i32 %2978, 0
  br i1 %2984, label %2985, label %3013

; <label>:2985                                    ; preds = %2980
  %2986 = and i32 %2977, 64
  %2987 = icmp ne i32 %2986, 0
  %2988 = select i1 %2987, float %2597, float 0.000000e+00
  %2989 = fsub fast float %2817, %2970
  %2990 = fsub fast float %2818, %2971
  %2991 = fsub fast float %2819, %2972
  %2992 = fmul fast float %2983, %2989
  %2993 = fmul fast float %2983, %2990
  %2994 = fmul fast float %2983, %2991
  %2995 = fadd fast float %2992, %2970
  %2996 = fadd fast float %2993, %2971
  %2997 = fadd fast float %2994, %2972
  %2998 = fsub fast float %2803, %2411
  %2999 = fmul fast float %2983, %2998
  %3000 = fadd fast float %2999, %2411
  %3001 = fsub fast float %2945, %2973
  %3002 = fsub fast float %2946, %2974
  %3003 = fsub fast float %2947, %2975
  %3004 = fmul fast float %2988, %3001
  %3005 = fmul fast float %2988, %3002
  %3006 = fmul fast float %2988, %3003
  %3007 = fadd fast float %3004, %2973
  %3008 = fadd fast float %3005, %2974
  %3009 = fadd fast float %3006, %2975
  %3010 = fsub fast float %2960, %2414
  %3011 = fmul fast float %2983, %3010
  %3012 = fadd fast float %3011, %2414
  br label %3058

; <label>:3013                                    ; preds = %2980
  %3014 = icmp eq i32 %2978, 1
  br i1 %3014, label %3015, label %3028

; <label>:3015                                    ; preds = %3013
  %3016 = fadd fast float %2817, -1.000000e+00
  %3017 = fadd fast float %2818, -1.000000e+00
  %3018 = fadd fast float %2819, -1.000000e+00
  %3019 = fmul fast float %2983, %3016
  %3020 = fmul fast float %2983, %3017
  %3021 = fmul fast float %2983, %3018
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fadd fast float %3020, 1.000000e+00
  %3024 = fadd fast float %3021, 1.000000e+00
  %3025 = fmul fast float %3022, %2970
  %3026 = fmul fast float %3023, %2971
  %3027 = fmul fast float %3024, %2972
  br label %3058

; <label>:3028                                    ; preds = %3013
  %3029 = icmp eq i32 %2978, 2
  br i1 %3029, label %3030, label %3058

; <label>:3030                                    ; preds = %3028
  %3031 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %3032 = call float @dx.op.unary.f32(i32 24, float %2818)  ; Sqrt(value)
  %3033 = call float @dx.op.unary.f32(i32 24, float %2819)  ; Sqrt(value)
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fadd fast float %3033, -5.000000e-01
  %3037 = fmul fast float %3034, %2983
  %3038 = fmul fast float %3035, %2983
  %3039 = fmul fast float %3036, %2983
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = fmul fast float %3040, 2.000000e+00
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = fmul fast float %3044, %2970
  %3046 = fadd fast float %3045, %3043
  %3047 = fmul fast float %3046, %2970
  %3048 = fmul fast float %3041, 2.000000e+00
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = fmul fast float %3049, %2971
  %3051 = fadd fast float %3050, %3048
  %3052 = fmul fast float %3051, %2971
  %3053 = fmul fast float %3042, 2.000000e+00
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = fmul fast float %3054, %2972
  %3056 = fadd fast float %3055, %3053
  %3057 = fmul fast float %3056, %2972
  br label %3058

; <label>:3058                                    ; preds = %3030, %3028, %3015, %2985, %2969
  %3059 = phi float [ %2970, %2969 ], [ %3047, %3030 ], [ %2970, %3028 ], [ %3025, %3015 ], [ %2995, %2985 ]
  %3060 = phi float [ %2971, %2969 ], [ %3052, %3030 ], [ %2971, %3028 ], [ %3026, %3015 ], [ %2996, %2985 ]
  %3061 = phi float [ %2972, %2969 ], [ %3057, %3030 ], [ %2972, %3028 ], [ %3027, %3015 ], [ %2997, %2985 ]
  %3062 = phi float [ %2973, %2969 ], [ %2973, %3030 ], [ %2973, %3028 ], [ %2973, %3015 ], [ %3007, %2985 ]
  %3063 = phi float [ %2974, %2969 ], [ %2974, %3030 ], [ %2974, %3028 ], [ %2974, %3015 ], [ %3008, %2985 ]
  %3064 = phi float [ %2975, %2969 ], [ %2975, %3030 ], [ %2975, %3028 ], [ %2975, %3015 ], [ %3009, %2985 ]
  %3065 = phi float [ %2411, %2969 ], [ %2411, %3030 ], [ %2411, %3028 ], [ %2411, %3015 ], [ %3000, %2985 ]
  %3066 = phi float [ %2414, %2969 ], [ %2414, %3030 ], [ %2414, %3028 ], [ %2414, %3015 ], [ %3012, %2985 ]
  %3067 = and i32 %2977, 12
  %3068 = icmp eq i32 %3067, 12
  br i1 %3068, label %3141, label %3069

; <label>:3069                                    ; preds = %3058
  %3070 = and i32 %2977, 2097184
  %3071 = icmp eq i32 %3070, 2097184
  %3072 = select i1 %3071, float %2597, float 0.000000e+00
  %3073 = and i32 %2977, 4194336
  %3074 = icmp eq i32 %3073, 4194336
  %3075 = select i1 %3074, float %2597, float 0.000000e+00
  %3076 = and i32 %2977, 8388640
  %3077 = icmp eq i32 %3076, 8388640
  %3078 = select i1 %3077, float %2597, float 0.000000e+00
  %3079 = icmp eq i32 %3067, 0
  br i1 %3079, label %3080, label %3093

; <label>:3080                                    ; preds = %3069
  %3081 = fsub fast float %2898, %2403
  %3082 = fsub fast float %2899, %2404
  %3083 = fmul fast float %3072, %3081
  %3084 = fmul fast float %3072, %3082
  %3085 = fadd fast float %3083, %2403
  %3086 = fadd fast float %3084, %2404
  %3087 = fsub fast float %2900, %2413
  %3088 = fmul fast float %3075, %3087
  %3089 = fadd fast float %3088, %2413
  %3090 = fsub fast float %2897, %2412
  %3091 = fmul fast float %3078, %3090
  %3092 = fadd fast float %3091, %2412
  br label %3141

; <label>:3093                                    ; preds = %3069
  %3094 = icmp eq i32 %3067, 4
  br i1 %3094, label %3095, label %3127

; <label>:3095                                    ; preds = %3093
  %3096 = fmul fast float %3072, %2898
  %3097 = fmul fast float %3072, %2899
  %3098 = fadd fast float %3096, %2403
  %3099 = fadd fast float %3097, %2404
  %3100 = call float @dx.op.binary.f32(i32 36, float %2413, float %2900)  ; FMin(a,b)
  %3101 = fsub fast float %3100, %2413
  %3102 = fmul fast float %3101, %3075
  %3103 = fadd fast float %3102, %2413
  %3104 = fadd fast float %2897, %2412
  %3105 = fmul fast float %3104, 0x3FF337FAE0000000
  %3106 = fmul fast float %2412, %2412
  %3107 = fmul fast float %2897, %2897
  %3108 = fadd fast float %3107, %3106
  %3109 = fmul fast float %3108, 0x3FE5152B00000000
  %3110 = fmul fast float %2412, 0xBFCC1F85E0000000
  %3111 = fmul fast float %3110, %2897
  %3112 = fadd fast float %3111, 0xBFE1363700000000
  %3113 = fadd fast float %3112, %3105
  %3114 = fsub fast float %3113, %3109
  %3115 = fmul fast float %3104, 0x3FBA6F0D00000000
  %3116 = fmul fast float %3108, 0x3FD0432880000000
  %3117 = fmul fast float %2412, 0xBFEF110800000000
  %3118 = fmul fast float %3117, %2897
  %3119 = fadd fast float %3118, 1.000000e+00
  %3120 = fsub fast float %3119, %3115
  %3121 = fadd fast float %3120, %3116
  %3122 = fdiv fast float %3114, %3121
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3124 = fsub fast float %3123, %2412
  %3125 = fmul fast float %3124, %3078
  %3126 = fadd fast float %3125, %2412
  br label %3141

; <label>:3127                                    ; preds = %3093
  %3128 = icmp eq i32 %3067, 8
  br i1 %3128, label %3129, label %3141

; <label>:3129                                    ; preds = %3127
  %3130 = fmul fast float %3072, %2898
  %3131 = fmul fast float %3072, %2899
  %3132 = fadd fast float %3130, %2403
  %3133 = fadd fast float %3131, %2404
  %3134 = call float @dx.op.binary.f32(i32 36, float %2413, float %2900)  ; FMin(a,b)
  %3135 = fsub fast float %3134, %2413
  %3136 = fmul fast float %3135, %3075
  %3137 = fadd fast float %3136, %2413
  %3138 = fsub fast float %2897, %2412
  %3139 = fmul fast float %3078, %3138
  %3140 = fadd fast float %3139, %2412
  br label %3141

; <label>:3141                                    ; preds = %3129, %3127, %3095, %3080, %3058, %2596, %2415, %2402
  %3142 = phi float [ %2403, %3058 ], [ %2403, %2596 ], [ %2403, %2402 ], [ %2403, %2415 ], [ %3085, %3080 ], [ %3098, %3095 ], [ %2403, %3127 ], [ %3132, %3129 ]
  %3143 = phi float [ %2404, %3058 ], [ %2404, %2596 ], [ %2404, %2402 ], [ %2404, %2415 ], [ %3086, %3080 ], [ %3099, %3095 ], [ %2404, %3127 ], [ %3133, %3129 ]
  %3144 = phi float [ %3059, %3058 ], [ %2405, %2596 ], [ %2405, %2402 ], [ %2405, %2415 ], [ %3059, %3080 ], [ %3059, %3095 ], [ %3059, %3127 ], [ %3059, %3129 ]
  %3145 = phi float [ %3060, %3058 ], [ %2406, %2596 ], [ %2406, %2402 ], [ %2406, %2415 ], [ %3060, %3080 ], [ %3060, %3095 ], [ %3060, %3127 ], [ %3060, %3129 ]
  %3146 = phi float [ %3061, %3058 ], [ %2407, %2596 ], [ %2407, %2402 ], [ %2407, %2415 ], [ %3061, %3080 ], [ %3061, %3095 ], [ %3061, %3127 ], [ %3061, %3129 ]
  %3147 = phi float [ %3062, %3058 ], [ %2408, %2596 ], [ %2408, %2402 ], [ %2408, %2415 ], [ %3062, %3080 ], [ %3062, %3095 ], [ %3062, %3127 ], [ %3062, %3129 ]
  %3148 = phi float [ %3063, %3058 ], [ %2409, %2596 ], [ %2409, %2402 ], [ %2409, %2415 ], [ %3063, %3080 ], [ %3063, %3095 ], [ %3063, %3127 ], [ %3063, %3129 ]
  %3149 = phi float [ %3064, %3058 ], [ %2410, %2596 ], [ %2410, %2402 ], [ %2410, %2415 ], [ %3064, %3080 ], [ %3064, %3095 ], [ %3064, %3127 ], [ %3064, %3129 ]
  %3150 = phi float [ %3065, %3058 ], [ %2411, %2596 ], [ %2411, %2402 ], [ %2411, %2415 ], [ %3065, %3080 ], [ %3065, %3095 ], [ %3065, %3127 ], [ %3065, %3129 ]
  %3151 = phi float [ %2412, %3058 ], [ %2412, %2596 ], [ %2412, %2402 ], [ %2412, %2415 ], [ %3092, %3080 ], [ %3126, %3095 ], [ %2412, %3127 ], [ %3140, %3129 ]
  %3152 = phi float [ %2413, %3058 ], [ %2413, %2596 ], [ %2413, %2402 ], [ %2413, %2415 ], [ %3089, %3080 ], [ %3103, %3095 ], [ %2413, %3127 ], [ %3137, %3129 ]
  %3153 = phi float [ %3066, %3058 ], [ %2414, %2596 ], [ %2414, %2402 ], [ %2414, %2415 ], [ %3066, %3080 ], [ %3066, %3095 ], [ %3066, %3127 ], [ %3066, %3129 ]
  %3154 = add i32 %33, 360
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.i32 %3155, 1
  %3158 = bitcast i32 %3156 to float
  %3159 = bitcast i32 %3157 to float
  %3160 = fcmp fast oge float %3158, 0.000000e+00
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = select i1 %3160, float %3158, float %3162
  %3164 = fadd fast float %3163, %179
  %3165 = fmul fast float %3159, %180
  %3166 = add i32 %33, 456
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = add i32 %3168, 0
  %3170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3170, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  %3173 = fmul fast float %3165, %3172
  %3174 = fadd fast float %3164, %3173
  %3175 = and i32 %171, 65535
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = lshr i32 %171, 16
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = and i32 %172, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = fmul fast float %3176, %3144
  %3182 = fmul fast float %3178, %3145
  %3183 = fmul fast float %3180, %3146
  %3184 = shl i32 %173, 4
  %3185 = and i32 %3184, 32752
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = lshr i32 %173, 7
  %3188 = and i32 %3187, 32752
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = lshr i32 %173, 22
  %3191 = shl nuw nsw i32 %3190, 5
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = and i32 %174, 65535
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = fmul fast float %3186, %3147
  %3196 = fmul fast float %3195, %3194
  %3197 = fmul fast float %3189, %3148
  %3198 = fmul fast float %3197, %3194
  %3199 = fmul fast float %3192, %3149
  %3200 = fmul fast float %3199, %3194
  %3201 = call float @dx.op.dot2.f32(i32 54, float %3142, float %3143, float %3142, float %3143)  ; Dot2(ax,ay,bx,by)
  %3202 = fmul fast float %3201, 0x3FE3333340000000
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3203, float %3142, float %3143, float %3203)  ; Dot3(ax,ay,az,bx,by,bz)
  %3205 = call float @dx.op.unary.f32(i32 25, float %3204)  ; Rsqrt(value)
  %3206 = fmul fast float %3205, %3142
  %3207 = fmul fast float %3205, %3143
  %3208 = fmul fast float %3203, %3205
  %3209 = fmul fast float %3208, %85
  %3210 = fmul fast float %3208, %86
  %3211 = fmul fast float %3208, %87
  %3212 = fmul fast float %3206, %59
  %3213 = fmul fast float %3206, %60
  %3214 = fmul fast float %3206, %61
  %3215 = fadd fast float %3209, %3212
  %3216 = fadd fast float %3210, %3213
  %3217 = fadd fast float %3211, %3214
  %3218 = fmul fast float %97, %3207
  %3219 = fmul fast float %98, %3207
  %3220 = fmul fast float %99, %3207
  %3221 = fadd fast float %3215, %3218
  %3222 = fadd fast float %3216, %3219
  %3223 = fadd fast float %3217, %3220
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3221, float %3222, float %3223, float %3221, float %3222, float %3223)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = call float @dx.op.unary.f32(i32 25, float %3224)  ; Rsqrt(value)
  %3226 = fmul fast float %3221, %3225
  %3227 = fmul fast float %3222, %3225
  %3228 = fmul fast float %3223, %3225
  %3229 = icmp eq i32 %35, 65535
  br i1 %3229, label %3748, label %3230

; <label>:3230                                    ; preds = %3141
  %3231 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3232 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3233 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3234 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3235 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3236 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3237 = fadd fast float %3231, %36
  %3238 = fadd fast float %3232, %37
  %3239 = fadd fast float %3233, %38
  %3240 = fadd fast float %3234, %36
  %3241 = fadd fast float %3235, %37
  %3242 = fadd fast float %3236, %38
  %3243 = mul i32 %35, 48
  %3244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 2
  %3248 = add i32 %3243, 16
  %3249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.ResRet.f32 %3249, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3249, 2
  %3253 = add i32 %3243, 32
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = extractvalue %dx.types.ResRet.f32 %3254, 3
  %3259 = bitcast float %3258 to i32
  %3260 = fmul fast float %3245, %36
  %3261 = fmul fast float %3246, %37
  %3262 = fmul fast float %3247, %38
  %3263 = fsub fast float %3260, %3250
  %3264 = fsub fast float %3261, %3251
  %3265 = fsub fast float %3262, %3252
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = fmul fast float %3266, %3255
  %3270 = fmul fast float %3267, %3256
  %3271 = fmul fast float %3268, %3257
  %3272 = fadd fast float %3255, -1.000000e+00
  %3273 = fadd fast float %3256, -1.000000e+00
  %3274 = fadd fast float %3257, -1.000000e+00
  %3275 = call float @dx.op.unary.f32(i32 27, float %3269)  ; Round_ni(value)
  %3276 = call float @dx.op.unary.f32(i32 27, float %3270)  ; Round_ni(value)
  %3277 = call float @dx.op.unary.f32(i32 27, float %3271)  ; Round_ni(value)
  %3278 = call float @dx.op.binary.f32(i32 36, float %3275, float %3272)  ; FMin(a,b)
  %3279 = call float @dx.op.binary.f32(i32 36, float %3276, float %3273)  ; FMin(a,b)
  %3280 = call float @dx.op.binary.f32(i32 36, float %3277, float %3274)  ; FMin(a,b)
  %3281 = fmul fast float %3280, %3256
  %3282 = fadd fast float %3281, %3279
  %3283 = fmul fast float %3282, %3255
  %3284 = fadd fast float %3283, %3278
  %3285 = fptosi float %3284 to i32
  %3286 = add nsw i32 %3285, %3259
  %3287 = shl nsw i32 %3286, 2
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = lshr i32 %3289, 16
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %3716, label %3292

; <label>:3292                                    ; preds = %3230
  br label %3293

; <label>:3293                                    ; preds = %3415, %3292
  %3294 = phi i32 [ %3317, %3415 ], [ %3290, %3292 ]
  %3295 = phi float [ %3416, %3415 ], [ 0.000000e+00, %3292 ]
  %3296 = phi float [ %3417, %3415 ], [ %933, %3292 ]
  %3297 = phi float [ %3418, %3415 ], [ %3174, %3292 ]
  %3298 = phi float [ %3419, %3415 ], [ %3153, %3292 ]
  %3299 = phi float [ %3420, %3415 ], [ 0.000000e+00, %3292 ]
  %3300 = phi float [ %3421, %3415 ], [ 0.000000e+00, %3292 ]
  %3301 = phi float [ %3422, %3415 ], [ %3196, %3292 ]
  %3302 = phi float [ %3423, %3415 ], [ %3198, %3292 ]
  %3303 = phi float [ %3424, %3415 ], [ %3200, %3292 ]
  %3304 = phi float [ %3425, %3415 ], [ %3226, %3292 ]
  %3305 = phi float [ %3426, %3415 ], [ %3227, %3292 ]
  %3306 = phi float [ %3427, %3415 ], [ %3228, %3292 ]
  %3307 = phi float [ %3428, %3415 ], [ %3152, %3292 ]
  %3308 = phi float [ %3429, %3415 ], [ %3151, %3292 ]
  %3309 = phi float [ %3430, %3415 ], [ 0.000000e+00, %3292 ]
  %3310 = phi float [ %3431, %3415 ], [ %3150, %3292 ]
  %3311 = phi float [ %3432, %3415 ], [ %3181, %3292 ]
  %3312 = phi float [ %3433, %3415 ], [ %3182, %3292 ]
  %3313 = phi float [ %3434, %3415 ], [ %3183, %3292 ]
  %3314 = shl nuw nsw i32 %3294, 2
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = lshr i32 %3316, 16
  %3318 = shl i32 %3316, 8
  %3319 = and i32 %3318, 16776960
  %3320 = or i32 %3319, 48
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = or i32 %3319, 64
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.i32 %3326, 1
  %3329 = or i32 %3319, 80
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 3
  %3333 = or i32 %3319, 96
  %3334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.ResRet.f32 %3334, 1
  %3337 = extractvalue %dx.types.ResRet.f32 %3334, 2
  %3338 = extractvalue %dx.types.ResRet.f32 %3334, 3
  %3339 = or i32 %3319, 112
  %3340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 2
  %3342 = or i32 %3319, 128
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = extractvalue %dx.types.ResRet.f32 %3343, 3
  %3348 = or i32 %3319, 144
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = extractvalue %dx.types.ResRet.f32 %3349, 3
  %3354 = or i32 %3319, 160
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3360 = or i32 %3319, 192
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = or i32 %3319, 208
  %3364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = or i32 %3319, 248
  %3367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 1
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3374 = extractvalue %dx.types.ResRet.f32 %3370, 3
  %3375 = call float @dx.op.dot4.f32(i32 56, float %3371, float %3372, float %3373, float %3374, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3376 = or i32 %3319, 16
  %3377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3383 = or i32 %3319, 32
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3389 = call float @dx.op.dot4.f32(i32 56, float %3385, float %3386, float %3387, float %3388, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3390 = call float @dx.op.unary.f32(i32 27, float %3375)  ; Round_ni(value)
  %3391 = call float @dx.op.unary.f32(i32 6, float %3390)  ; FAbs(value)
  %3392 = call float @dx.op.unary.f32(i32 27, float %3382)  ; Round_ni(value)
  %3393 = call float @dx.op.unary.f32(i32 6, float %3392)  ; FAbs(value)
  %3394 = call float @dx.op.unary.f32(i32 6, float %3389)  ; FAbs(value)
  %3395 = call float @dx.op.unary.f32(i32 27, float %3394)  ; Round_ni(value)
  %3396 = fadd fast float %3393, %3391
  %3397 = fadd fast float %3396, %3395
  %3398 = fcmp fast oeq float %3397, 0.000000e+00
  %3399 = call float @dx.op.dot4.f32(i32 56, float %3371, float %3372, float %3373, float %3374, float %3237, float %3238, float %3239, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3400 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %3237, float %3238, float %3239, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3401 = call float @dx.op.dot4.f32(i32 56, float %3371, float %3372, float %3373, float %3374, float %3240, float %3241, float %3242, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3402 = call float @dx.op.dot4.f32(i32 56, float %3378, float %3379, float %3380, float %3381, float %3240, float %3241, float %3242, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3403 = fsub fast float %3399, %3375
  %3404 = fsub fast float %3401, %3375
  %3405 = fsub fast float %3400, %3382
  %3406 = fsub fast float %3402, %3382
  %3407 = call float @dx.op.dot3.f32(i32 55, float %3322, float %3323, float %3324, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 2
  %3410 = fadd fast float %3409, %3407
  %3411 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3413 = fcmp fast ogt float %3411, %3412
  %3414 = and i1 %3398, %3413
  br i1 %3414, label %3436, label %3415

; <label>:3415                                    ; preds = %3702, %3519, %3436, %3293
  %3416 = phi float [ %3295, %3436 ], [ %3522, %3519 ], [ %3522, %3702 ], [ %3295, %3293 ]
  %3417 = phi float [ %3296, %3436 ], [ %3296, %3519 ], [ %3677, %3702 ], [ %3296, %3293 ]
  %3418 = phi float [ %3297, %3436 ], [ %3297, %3519 ], [ %3676, %3702 ], [ %3297, %3293 ]
  %3419 = phi float [ %3298, %3436 ], [ %3298, %3519 ], [ %3674, %3702 ], [ %3298, %3293 ]
  %3420 = phi float [ %3299, %3436 ], [ %3299, %3519 ], [ %3646, %3702 ], [ %3299, %3293 ]
  %3421 = phi float [ %3300, %3436 ], [ %3300, %3519 ], [ %3644, %3702 ], [ %3300, %3293 ]
  %3422 = phi float [ %3301, %3436 ], [ %3301, %3519 ], [ %3712, %3702 ], [ %3301, %3293 ]
  %3423 = phi float [ %3302, %3436 ], [ %3302, %3519 ], [ %3713, %3702 ], [ %3302, %3293 ]
  %3424 = phi float [ %3303, %3436 ], [ %3303, %3519 ], [ %3714, %3702 ], [ %3303, %3293 ]
  %3425 = phi float [ %3304, %3436 ], [ %3304, %3519 ], [ %3625, %3702 ], [ %3304, %3293 ]
  %3426 = phi float [ %3305, %3436 ], [ %3305, %3519 ], [ %3626, %3702 ], [ %3305, %3293 ]
  %3427 = phi float [ %3306, %3436 ], [ %3306, %3519 ], [ %3627, %3702 ], [ %3306, %3293 ]
  %3428 = phi float [ %3307, %3436 ], [ %3307, %3519 ], [ %3654, %3702 ], [ %3307, %3293 ]
  %3429 = phi float [ %3308, %3436 ], [ %3308, %3519 ], [ %3651, %3702 ], [ %3308, %3293 ]
  %3430 = phi float [ %3309, %3436 ], [ %3309, %3519 ], [ %3648, %3702 ], [ %3309, %3293 ]
  %3431 = phi float [ %3310, %3436 ], [ %3310, %3519 ], [ %3642, %3702 ], [ %3310, %3293 ]
  %3432 = phi float [ %3311, %3436 ], [ %3311, %3519 ], [ %3637, %3702 ], [ %3311, %3293 ]
  %3433 = phi float [ %3312, %3436 ], [ %3312, %3519 ], [ %3638, %3702 ], [ %3312, %3293 ]
  %3434 = phi float [ %3313, %3436 ], [ %3313, %3519 ], [ %3639, %3702 ], [ %3313, %3293 ]
  %3435 = icmp eq i32 %3317, 0
  br i1 %3435, label %3715, label %3293

; <label>:3436                                    ; preds = %3293
  %3437 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3438 = extractvalue %dx.types.ResRet.f32 %3340, 3
  %3439 = extractvalue %dx.types.ResRet.f32 %3340, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3441 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3442 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3443 = extractvalue %dx.types.ResRet.i32 %3326, 3
  %3444 = extractvalue %dx.types.ResRet.i32 %3326, 2
  %3445 = bitcast float %3437 to i32
  %3446 = add i32 %3443, 0
  %3447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3446, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3449 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3447, %dx.types.Handle %3448, float %3375, float %3382, float undef, float undef, i32 0, i32 0, i32 undef, float %3403, float %3405, float undef, float %3404, float %3406, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = fmul fast float %3450, %3442
  %3452 = fadd fast float %3451, %3441
  %3453 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3454 = fmul fast float %3375, %3335
  %3455 = call float @dx.op.tertiary.f32(i32 46, float %3336, float %3382, float %3454)  ; FMad(a,b,c)
  %3456 = fadd fast float %3455, %3440
  %3457 = fmul fast float %3375, %3337
  %3458 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3382, float %3457)  ; FMad(a,b,c)
  %3459 = fadd fast float %3458, %3439
  %3460 = fmul fast float %3403, %3335
  %3461 = call float @dx.op.tertiary.f32(i32 46, float %3336, float %3405, float %3460)  ; FMad(a,b,c)
  %3462 = fmul fast float %3403, %3337
  %3463 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3405, float %3462)  ; FMad(a,b,c)
  %3464 = fmul fast float %3404, %3335
  %3465 = call float @dx.op.tertiary.f32(i32 46, float %3336, float %3406, float %3464)  ; FMad(a,b,c)
  %3466 = fmul fast float %3404, %3337
  %3467 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3406, float %3466)  ; FMad(a,b,c)
  %3468 = add i32 %3444, 0
  %3469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3468, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3469, %dx.types.Handle %3448, float %3456, float %3459, float undef, float undef, i32 0, i32 0, i32 undef, float %3461, float %3463, float undef, float %3465, float %3467, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = and i32 %3445, 1024
  %3473 = icmp ne i32 %3472, 0
  %3474 = fcmp fast ogt float %3471, 0x3FE0101020000000
  %3475 = uitofp i1 %3474 to float
  %3476 = select i1 %3473, float %3475, float %3471
  %3477 = and i32 %3445, 8192
  %3478 = icmp ne i32 %3477, 0
  %3479 = select i1 %3478, float %3438, float 1.000000e+00
  %3480 = fmul fast float %3375, 2.000000e+00
  %3481 = fadd fast float %3480, -1.000000e+00
  %3482 = call float @dx.op.unary.f32(i32 6, float %3481)  ; FAbs(value)
  %3483 = fmul fast float %3482, %3368
  %3484 = fsub fast float %3483, %3368
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = fmul fast float %3382, 2.000000e+00
  %3487 = fadd fast float %3486, -1.000000e+00
  %3488 = call float @dx.op.unary.f32(i32 6, float %3487)  ; FAbs(value)
  %3489 = fmul fast float %3488, %3369
  %3490 = fsub fast float %3489, %3369
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = fmul fast float %3394, %3331
  %3493 = fsub fast float %3492, %3331
  %3494 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3495 = fmul fast float %3453, %3479
  %3496 = fmul fast float %3495, %3450
  %3497 = fmul fast float %3496, %3485
  %3498 = fmul fast float %3497, %3476
  %3499 = fmul fast float %3498, %3491
  %3500 = fmul fast float %3499, %3494
  %3501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.f32 %3501, 1
  %3503 = extractvalue %dx.types.CBufRet.f32 %3501, 0
  %3504 = fsub fast float %3411, %3503
  %3505 = fmul fast float %3504, %3502
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = fmul fast float %3500, %3332
  %3508 = fadd fast float %3500, %3332
  %3509 = fmul fast float %3508, %3341
  %3510 = fsub fast float %3509, %3341
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3512 = and i32 %3445, 128
  %3513 = icmp ne i32 %3512, 0
  %3514 = select i1 %3513, float %3511, float %3507
  %3515 = fmul fast float %3514, %3506
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = fcmp fast ugt float %3515, %3517
  br i1 %3518, label %3519, label %3415

; <label>:3519                                    ; preds = %3436
  %3520 = select i1 %3478, float %3515, float 0.000000e+00
  %3521 = fadd fast float %3520, %3295
  %3522 = call float @dx.op.unary.f32(i32 7, float %3521)  ; Saturate(value)
  br i1 %3478, label %3415, label %3523

; <label>:3523                                    ; preds = %3519
  %3524 = and i32 %3445, 4
  %3525 = and i32 %3445, 8
  %3526 = add i32 %3327, 0
  %3527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3526, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3527, %dx.types.Handle %3528, float %3456, float %3459, float undef, float undef, i32 0, i32 0, i32 undef, float %3461, float %3463, float undef, float %3465, float %3467, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = bitcast float %3353 to i32
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = lshr i32 %3534, 8
  %3538 = and i32 %3537, 255
  %3539 = uitofp i32 %3538 to float
  %3540 = fmul fast float %3533, %3536
  %3541 = fadd fast float %3540, %3539
  %3542 = fmul fast float %3541, 0x3F70101000000000
  %3543 = add i32 %3328, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3543, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3544, %dx.types.Handle %3528, float %3456, float %3459, float undef, float undef, i32 0, i32 0, i32 undef, float %3461, float %3463, float undef, float %3465, float %3467, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3549 = extractvalue %dx.types.ResRet.f32 %3545, 3
  %3550 = bitcast float %3347 to i32
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = lshr i32 %3550, 8
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = lshr i32 %3550, 16
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3558, 0x3F70101000000000
  %3560 = fmul fast float %3546, %3552
  %3561 = fadd fast float %3560, %3555
  %3562 = fmul fast float %3561, 0x3F70101000000000
  %3563 = fadd fast float %3547, -5.000000e-01
  %3564 = fadd fast float %3549, -5.000000e-01
  %3565 = fmul fast float %3563, %3559
  %3566 = fmul fast float %3564, %3559
  %3567 = fadd fast float %3565, 5.000000e-01
  %3568 = fadd fast float %3566, 5.000000e-01
  %3569 = fmul fast float %3530, %3356
  %3570 = fmul fast float %3531, %3357
  %3571 = fmul fast float %3532, %3358
  %3572 = fmul fast float %3567, 2.000000e+00
  %3573 = fadd fast float %3572, -1.000000e+00
  %3574 = fmul fast float %3568, 2.000000e+00
  %3575 = fadd fast float %3574, -1.000000e+00
  %3576 = fadd fast float %3573, %3575
  %3577 = fmul fast float %3576, 5.000000e-01
  %3578 = fsub fast float %3573, %3575
  %3579 = fmul fast float %3578, 5.000000e-01
  %3580 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3581 = fsub fast float 1.000000e+00, %3580
  %3582 = call float @dx.op.unary.f32(i32 6, float %3579)  ; FAbs(value)
  %3583 = fsub fast float %3581, %3582
  %3584 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3579, float %3583, float %3577, float %3579, float %3583)  ; Dot3(ax,ay,az,bx,by,bz)
  %3585 = call float @dx.op.unary.f32(i32 25, float %3584)  ; Rsqrt(value)
  %3586 = fmul fast float %3577, %3585
  %3587 = fmul fast float %3579, %3585
  %3588 = fmul fast float %3585, %3583
  %3589 = fmul fast float %3588, %3322
  %3590 = fmul fast float %3588, %3323
  %3591 = fmul fast float %3588, %3324
  %3592 = fmul fast float %3586, %3344
  %3593 = fmul fast float %3586, %3345
  %3594 = fmul fast float %3586, %3346
  %3595 = fadd fast float %3592, %3589
  %3596 = fadd fast float %3593, %3590
  %3597 = fadd fast float %3594, %3591
  %3598 = fmul fast float %3587, %3350
  %3599 = fmul fast float %3587, %3351
  %3600 = fmul fast float %3587, %3352
  %3601 = fadd fast float %3595, %3598
  %3602 = fadd fast float %3596, %3599
  %3603 = fadd fast float %3597, %3600
  %3604 = call float @dx.op.dot3.f32(i32 55, float %3601, float %3602, float %3603, float %3601, float %3602, float %3603)  ; Dot3(ax,ay,az,bx,by,bz)
  %3605 = call float @dx.op.unary.f32(i32 25, float %3604)  ; Rsqrt(value)
  %3606 = fmul fast float %3601, %3605
  %3607 = fmul fast float %3602, %3605
  %3608 = fmul fast float %3603, %3605
  %3609 = icmp ne i32 %3525, 0
  %3610 = select i1 %3609, float 1.000000e+00, float 0.000000e+00
  %3611 = fmul fast float %3515, %3610
  %3612 = and i32 %3445, 1
  %3613 = icmp eq i32 %3612, 0
  br i1 %3613, label %3614, label %3618

; <label>:3614                                    ; preds = %3523
  %3615 = fsub fast float %3606, %3304
  %3616 = fsub fast float %3607, %3305
  %3617 = fsub fast float %3608, %3306
  br label %3618

; <label>:3618                                    ; preds = %3614, %3523
  %3619 = phi float [ %3615, %3614 ], [ %3606, %3523 ]
  %3620 = phi float [ %3616, %3614 ], [ %3607, %3523 ]
  %3621 = phi float [ %3617, %3614 ], [ %3608, %3523 ]
  %3622 = fmul float %3621, %3611
  %3623 = fmul float %3620, %3611
  %3624 = fmul float %3619, %3611
  %3625 = fadd fast float %3624, %3304
  %3626 = fadd fast float %3623, %3305
  %3627 = fadd fast float %3622, %3306
  %3628 = icmp ne i32 %3524, 0
  %3629 = select i1 %3628, float 1.000000e+00, float 0.000000e+00
  %3630 = fmul fast float %3515, %3629
  %3631 = fsub fast float %3569, %3311
  %3632 = fsub fast float %3570, %3312
  %3633 = fsub fast float %3571, %3313
  %3634 = fmul fast float %3631, %3630
  %3635 = fmul fast float %3632, %3630
  %3636 = fmul fast float %3633, %3630
  %3637 = fadd fast float %3634, %3311
  %3638 = fadd fast float %3635, %3312
  %3639 = fadd fast float %3636, %3313
  %3640 = fsub fast float %3542, %3310
  %3641 = fmul fast float %3640, %3630
  %3642 = fadd fast float %3641, %3310
  %3643 = fmul fast float %3630, %3300
  %3644 = fsub fast float %3300, %3643
  %3645 = fmul fast float %3630, %3299
  %3646 = fsub fast float %3299, %3645
  %3647 = fadd fast float %3515, %3309
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = fsub fast float %3562, %3308
  %3650 = fmul fast float %3649, %3611
  %3651 = fadd fast float %3650, %3308
  %3652 = fsub fast float %3548, %3307
  %3653 = fmul fast float %3652, %3611
  %3654 = fadd fast float %3653, %3307
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3569, float %3570, float %3571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3659 = fmul fast float %3658, %3655
  %3660 = fadd fast float %3659, %3657
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = bitcast float %3359 to i32
  %3663 = and i32 %3662, 65535
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = lshr i32 %3662, 16
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fcmp fast oge float %3664, 0.000000e+00
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = select i1 %3667, float %3664, float %3669
  %3671 = fadd fast float %3670, %3666
  %3672 = fsub fast float %3661, %3298
  %3673 = fmul fast float %3672, %3515
  %3674 = fadd fast float %3673, %3298
  %3675 = fmul fast float %3671, %3515
  %3676 = call float @dx.op.binary.f32(i32 35, float %3297, float %3675)  ; FMax(a,b)
  %3677 = call float @dx.op.binary.f32(i32 35, float %3296, float %3515)  ; FMax(a,b)
  %3678 = and i32 %3445, 16
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3702, label %3680

; <label>:3680                                    ; preds = %3618
  %3681 = bitcast float %3365 to i32
  %3682 = add i32 %3362, 0
  %3683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3682, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3684 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3683, %dx.types.Handle %3528, float %3456, float %3459, float undef, float undef, i32 0, i32 0, i32 undef, float %3461, float %3463, float undef, float %3465, float %3467, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = and i32 %3681, 65535
  %3689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3688)  ; LegacyF16ToF32(value)
  %3690 = fmul fast float %3685, %3356
  %3691 = fmul fast float %3686, %3357
  %3692 = fmul fast float %3687, %3358
  %3693 = and i32 %3445, 16384
  %3694 = icmp ne i32 %3693, 0
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 0
  %3697 = select i1 %3694, float %3696, float 1.000000e+00
  %3698 = fmul fast float %3697, %3689
  %3699 = fmul fast float %3690, %3698
  %3700 = fmul fast float %3691, %3698
  %3701 = fmul fast float %3692, %3698
  br label %3702

; <label>:3702                                    ; preds = %3680, %3618
  %3703 = phi float [ %3699, %3680 ], [ 0.000000e+00, %3618 ]
  %3704 = phi float [ %3700, %3680 ], [ 0.000000e+00, %3618 ]
  %3705 = phi float [ %3701, %3680 ], [ 0.000000e+00, %3618 ]
  %3706 = fsub fast float %3703, %3301
  %3707 = fsub fast float %3704, %3302
  %3708 = fsub fast float %3705, %3303
  %3709 = fmul fast float %3706, %3515
  %3710 = fmul fast float %3707, %3515
  %3711 = fmul fast float %3708, %3515
  %3712 = fadd fast float %3709, %3301
  %3713 = fadd fast float %3710, %3302
  %3714 = fadd fast float %3711, %3303
  br label %3415

; <label>:3715                                    ; preds = %3415
  br label %3716

; <label>:3716                                    ; preds = %3715, %3230
  %3717 = phi float [ 0.000000e+00, %3230 ], [ %3416, %3715 ]
  %3718 = phi float [ %933, %3230 ], [ %3417, %3715 ]
  %3719 = phi float [ %3174, %3230 ], [ %3418, %3715 ]
  %3720 = phi float [ %3153, %3230 ], [ %3419, %3715 ]
  %3721 = phi float [ 0.000000e+00, %3230 ], [ %3420, %3715 ]
  %3722 = phi float [ 0.000000e+00, %3230 ], [ %3421, %3715 ]
  %3723 = phi float [ %3196, %3230 ], [ %3422, %3715 ]
  %3724 = phi float [ %3198, %3230 ], [ %3423, %3715 ]
  %3725 = phi float [ %3200, %3230 ], [ %3424, %3715 ]
  %3726 = phi float [ %3226, %3230 ], [ %3425, %3715 ]
  %3727 = phi float [ %3227, %3230 ], [ %3426, %3715 ]
  %3728 = phi float [ %3228, %3230 ], [ %3427, %3715 ]
  %3729 = phi float [ %3152, %3230 ], [ %3428, %3715 ]
  %3730 = phi float [ %3151, %3230 ], [ %3429, %3715 ]
  %3731 = phi float [ 0.000000e+00, %3230 ], [ %3430, %3715 ]
  %3732 = phi float [ %3150, %3230 ], [ %3431, %3715 ]
  %3733 = phi float [ %3181, %3230 ], [ %3432, %3715 ]
  %3734 = phi float [ %3182, %3230 ], [ %3433, %3715 ]
  %3735 = phi float [ %3183, %3230 ], [ %3434, %3715 ]
  %3736 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3727, float %3728, float %3726, float %3727, float %3728)  ; Dot3(ax,ay,az,bx,by,bz)
  %3737 = call float @dx.op.unary.f32(i32 25, float %3736)  ; Rsqrt(value)
  %3738 = fmul fast float %3737, %3726
  %3739 = fmul fast float %3737, %3727
  %3740 = fmul fast float %3737, %3728
  %3741 = fadd fast float %3731, %933
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3738, float %3739, float %3740, float %3738, float %3739, float %3740)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = call float @dx.op.unary.f32(i32 25, float %3743)  ; Rsqrt(value)
  %3745 = fmul fast float %3744, %3738
  %3746 = fmul fast float %3744, %3739
  %3747 = fmul fast float %3744, %3740
  br label %3748

; <label>:3748                                    ; preds = %3716, %3141
  %3749 = phi float [ %3745, %3716 ], [ %3226, %3141 ]
  %3750 = phi float [ %3746, %3716 ], [ %3227, %3141 ]
  %3751 = phi float [ %3747, %3716 ], [ %3228, %3141 ]
  %3752 = phi float [ %3733, %3716 ], [ %3181, %3141 ]
  %3753 = phi float [ %3734, %3716 ], [ %3182, %3141 ]
  %3754 = phi float [ %3735, %3716 ], [ %3183, %3141 ]
  %3755 = phi float [ %3723, %3716 ], [ %3196, %3141 ]
  %3756 = phi float [ %3724, %3716 ], [ %3198, %3141 ]
  %3757 = phi float [ %3725, %3716 ], [ %3200, %3141 ]
  %3758 = phi float [ %3732, %3716 ], [ %3150, %3141 ]
  %3759 = phi float [ %3742, %3716 ], [ %933, %3141 ]
  %3760 = phi float [ %3730, %3716 ], [ %3151, %3141 ]
  %3761 = phi float [ %3729, %3716 ], [ %3152, %3141 ]
  %3762 = phi float [ %3722, %3716 ], [ 0.000000e+00, %3141 ]
  %3763 = phi float [ %3721, %3716 ], [ 0.000000e+00, %3141 ]
  %3764 = phi float [ %3717, %3716 ], [ 0.000000e+00, %3141 ]
  %3765 = phi float [ %3719, %3716 ], [ %3174, %3141 ]
  %3766 = phi float [ %3718, %3716 ], [ %933, %3141 ]
  %3767 = phi float [ %3720, %3716 ], [ %3153, %3141 ]
  %3768 = fadd fast float %3758, 0xBFB99999A0000000
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fmul fast float %3769, 0x3FF1C71C80000000
  %3771 = call float @dx.op.binary.f32(i32 36, float %3758, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3772 = fsub fast float 1.000000e+00, %3770
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = fmul fast float %3773, %3752
  %3775 = fmul fast float %3773, %3753
  %3776 = fmul fast float %3773, %3754
  %3777 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3778 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3779 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3780 = fmul fast float %3770, %3752
  %3781 = fmul fast float %3770, %3753
  %3782 = fmul fast float %3770, %3754
  %3783 = fadd fast float %3780, %3771
  %3784 = fadd fast float %3781, %3771
  %3785 = fadd fast float %3782, %3771
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.i32 %3790, 3
  %3792 = and i32 %3791, 8
  %3793 = icmp ne i32 %3792, 0
  %3794 = call float @dx.op.binary.f32(i32 35, float %3777, float %3752)  ; FMax(a,b)
  %3795 = call float @dx.op.binary.f32(i32 35, float %3778, float %3752)  ; FMax(a,b)
  %3796 = call float @dx.op.binary.f32(i32 35, float %3779, float %3752)  ; FMax(a,b)
  %3797 = call float @dx.op.dot3.f32(i32 55, float %3777, float %3778, float %3779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3798 = select i1 %217, float %3752, float %3777
  %3799 = select i1 %217, float %3797, float %3778
  %3800 = select i1 %217, float 1.000000e+00, float %3779
  %3801 = select i1 %3793, float %3794, float %3798
  %3802 = select i1 %3793, float %3795, float %3799
  %3803 = select i1 %3793, float %3796, float %3800
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3808 = fadd fast float %3805, %165
  %3809 = fadd fast float %3806, %166
  %3810 = fadd fast float %3807, %167
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.CBufRet.f32 %3811, 1
  %3814 = fsub fast float %3808, %3812
  %3815 = fsub fast float %3809, %3813
  %3816 = fmul fast float %3814, %3814
  %3817 = fmul fast float %3815, %3815
  %3818 = fadd fast float %3816, %3817
  %3819 = call float @dx.op.unary.f32(i32 24, float %3818)  ; Sqrt(value)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3811, 2
  %3821 = fcmp fast olt float %3819, %3820
  br i1 %3821, label %3822, label %3889

; <label>:3822                                    ; preds = %3748
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 0
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.CBufRet.f32 %3823, 1
  %3830 = extractvalue %dx.types.CBufRet.f32 %3825, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3823, 3
  %3833 = extractvalue %dx.types.CBufRet.f32 %3825, 3
  %3834 = extractvalue %dx.types.CBufRet.f32 %3827, 3
  %3835 = fadd fast float %3832, %3808
  %3836 = fadd fast float %3833, %3809
  %3837 = fadd fast float %3834, %3810
  %3838 = fmul fast float %3835, %3824
  %3839 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3826, float %3838)  ; FMad(a,b,c)
  %3840 = call float @dx.op.tertiary.f32(i32 46, float %3837, float %3828, float %3839)  ; FMad(a,b,c)
  %3841 = fmul fast float %3835, %3829
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %3836, float %3830, float %3841)  ; FMad(a,b,c)
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3837, float %3831, float %3842)  ; FMad(a,b,c)
  %3844 = fsub fast float %3840, %3832
  %3845 = fsub fast float %3843, %3833
  %3846 = fsub fast float %3844, %3812
  %3847 = fadd fast float %3846, %3820
  %3848 = fsub fast float %3845, %3813
  %3849 = fadd fast float %3848, %3820
  %3850 = extractvalue %dx.types.CBufRet.f32 %3811, 3
  %3851 = fmul fast float %3847, %3850
  %3852 = fmul fast float %3849, %3850
  %3853 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3855 = fsub fast float 1.000000e+00, %3853
  %3856 = fsub fast float 1.000000e+00, %3854
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3855, float %3856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = fcmp fast ugt float %3858, 0.000000e+00
  br i1 %3859, label %3860, label %4163

; <label>:3860                                    ; preds = %3822
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 2
  %3863 = fmul fast float %3862, %3858
  %3864 = extractvalue %dx.types.CBufRet.f32 %3861, 3
  %3865 = fadd fast float %3864, %3863
  %3866 = extractvalue %dx.types.CBufRet.f32 %3827, 2
  %3867 = fadd fast float %3865, %3834
  %3868 = fmul fast float %3840, %3828
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3843, float %3831, float %3868)  ; FMad(a,b,c)
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3866, float %3869)  ; FMad(a,b,c)
  %3871 = fsub fast float %3870, %3834
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 2
  %3874 = fsub fast float %3871, %3873
  %3875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3855, float %3856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3855, float %3856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = fadd fast float %3880, %3876
  %3884 = fmul fast float %3883, 0x3F847AE140000000
  %3885 = fadd fast float %3881, %3877
  %3886 = fmul fast float %3885, 0x3F847AE140000000
  %3887 = fadd fast float %3882, %3878
  %3888 = fmul fast float %3887, 0x3F847AE140000000
  br label %4163

; <label>:3889                                    ; preds = %3748
  %3890 = and i32 %196, 1
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %4163, label %3892

; <label>:3892                                    ; preds = %3889
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3900 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3903 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3904 = extractvalue %dx.types.CBufRet.f32 %3897, 3
  %3905 = fadd fast float %3902, %3808
  %3906 = fadd fast float %3903, %3809
  %3907 = fadd fast float %3904, %3810
  %3908 = fmul fast float %3905, %3894
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3896, float %3908)  ; FMad(a,b,c)
  %3910 = call float @dx.op.tertiary.f32(i32 46, float %3907, float %3898, float %3909)  ; FMad(a,b,c)
  %3911 = fmul fast float %3905, %3899
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3900, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3907, float %3901, float %3912)  ; FMad(a,b,c)
  %3914 = fsub fast float %3910, %3902
  %3915 = fsub fast float %3913, %3903
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.CBufRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.CBufRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.CBufRet.f32 %3916, 3
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 3
  %3923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.i32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.i32 %3923, 1
  %3926 = udiv i32 %3925, %3924
  %3927 = fsub fast float %3914, %3917
  %3928 = fsub fast float %3915, %3918
  %3929 = call float @dx.op.binary.f32(i32 35, float %3927, float 0.000000e+00)  ; FMax(a,b)
  %3930 = call float @dx.op.binary.f32(i32 35, float %3928, float 0.000000e+00)  ; FMax(a,b)
  %3931 = call float @dx.op.binary.f32(i32 36, float %3929, float %3919)  ; FMin(a,b)
  %3932 = call float @dx.op.binary.f32(i32 36, float %3930, float %3920)  ; FMin(a,b)
  %3933 = add i32 %3924, -1
  %3934 = add i32 %3926, -1
  %3935 = fmul fast float %3931, %3922
  %3936 = fmul fast float %3932, %3922
  %3937 = fptoui float %3935 to i32
  %3938 = fptoui float %3936 to i32
  %3939 = call i32 @dx.op.binary.i32(i32 40, i32 %3937, i32 %3933)  ; UMin(a,b)
  %3940 = call i32 @dx.op.binary.i32(i32 40, i32 %3938, i32 %3934)  ; UMin(a,b)
  %3941 = mul i32 %3940, %3924
  %3942 = add i32 %3941, %3939
  %3943 = shl i32 %3942, 2
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = icmp eq i32 %3945, -1
  br i1 %3946, label %4163, label %3947

; <label>:3947                                    ; preds = %3892
  %3948 = mul i32 %3945, 148
  %3949 = add i32 %3948, 4
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = add i32 %3948, 8
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = add i32 %3948, 36
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3948, 60
  %3959 = add i32 %3948, 92
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = add i32 %3948, 116
  %3963 = fsub fast float %3914, %3951
  %3964 = fsub fast float %3915, %3954
  %3965 = fmul fast float %3922, %3963
  %3966 = fmul fast float %3922, %3964
  %3967 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3968 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 2
  %3972 = call float @dx.op.unary.f32(i32 83, float %3967)  ; DerivCoarseX(value)
  %3973 = call float @dx.op.unary.f32(i32 83, float %3969)  ; DerivCoarseX(value)
  %3974 = call float @dx.op.unary.f32(i32 84, float %3967)  ; DerivCoarseY(value)
  %3975 = call float @dx.op.unary.f32(i32 84, float %3969)  ; DerivCoarseY(value)
  %3976 = fmul fast float %3972, %3971
  %3977 = fmul fast float %3973, %3971
  %3978 = fmul fast float %3974, %3971
  %3979 = fmul fast float %3975, %3971
  %3980 = call float @dx.op.dot2.f32(i32 54, float %3978, float %3979, float %3978, float %3979)  ; Dot2(ax,ay,bx,by)
  %3981 = call float @dx.op.dot2.f32(i32 54, float %3976, float %3977, float %3976, float %3977)  ; Dot2(ax,ay,bx,by)
  %3982 = call float @dx.op.binary.f32(i32 35, float %3981, float %3980)  ; FMax(a,b)
  %3983 = call float @dx.op.unary.f32(i32 23, float %3982)  ; Log(value)
  %3984 = fmul fast float %3983, 5.000000e-01
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3987 = fadd fast float %3986, %3984
  %3988 = call float @dx.op.binary.f32(i32 35, float %3987, float 0.000000e+00)  ; FMax(a,b)
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3991 = fadd fast float %3990, %3988
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %3994 = fadd fast float %3991, %3993
  %3995 = add i32 %3961, 0
  %3996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3995, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3997 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3996, i32 0)  ; GetDimensions(handle,mipLevel)
  %3998 = extractvalue %dx.types.Dimensions %3997, 0
  %3999 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3998)  ; FirstbitLo(value)
  %4000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.i32 %4000, 1
  %4002 = sub nsw i32 %4001, %3999
  %4003 = sitofp i32 %4002 to float
  %4004 = fsub fast float %3994, %4003
  %4005 = call float @dx.op.binary.f32(i32 35, float %4004, float 0.000000e+00)  ; FMax(a,b)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3996, %dx.types.Handle %28, float %3967, float %3969, float %3957, float undef, i32 0, i32 0, i32 undef, float %4005)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = fcmp ule float %4007, 0x3FE0101020000000
  %4009 = extractvalue %dx.types.CBufRet.i32 %4000, 0
  %4010 = and i32 %4009, 128
  %4011 = icmp ne i32 %4010, 0
  %4012 = and i1 %4008, %4011
  br i1 %4012, label %4163, label %4013

; <label>:4013                                    ; preds = %3947
  %4014 = add i32 %3948, 20
  %4015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = add i32 %3948, 24
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = add i32 %3948, 40
  %4021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = add i32 %3948, 96
  %4024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.i32 %4024, 0
  %4026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4027 = extractvalue %dx.types.CBufRet.f32 %4026, 2
  %4028 = fmul fast float %4027, %3967
  %4029 = fmul fast float %4027, %3969
  %4030 = extractvalue %dx.types.CBufRet.f32 %4026, 3
  %4031 = fadd fast float %4028, %4030
  %4032 = fadd fast float %4029, %4030
  %4033 = add i32 %4025, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4033, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4034, i32 0)  ; GetDimensions(handle,mipLevel)
  %4036 = extractvalue %dx.types.Dimensions %4035, 0
  %4037 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4036)  ; FirstbitLo(value)
  %4038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.i32 %4038, 1
  %4040 = sub nsw i32 %4039, %4037
  %4041 = sitofp i32 %4040 to float
  %4042 = fsub fast float %3991, %4041
  %4043 = call float @dx.op.binary.f32(i32 35, float %4042, float 0.000000e+00)  ; FMax(a,b)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4034, %dx.types.Handle %28, float %4031, float %4032, float %4022, float undef, i32 0, i32 0, i32 undef, float %4043)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = fmul fast float %4045, %4016
  %4047 = fadd fast float %4046, %4019
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4048, 2
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4056 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4057 = fadd fast float %4053, %3914
  %4058 = fadd fast float %4055, %3915
  %4059 = fadd fast float %4047, %4056
  %4060 = fmul fast float %4057, %4049
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %4058, float %4050, float %4060)  ; FMad(a,b,c)
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %4059, float %4051, float %4061)  ; FMad(a,b,c)
  %4063 = fsub fast float %4062, %4056
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4066 = fsub fast float %4063, %4065
  %4067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.i32 %4067, 0
  %4069 = call i32 @dx.op.binary.i32(i32 40, i32 %3945, i32 %4068)  ; UMin(a,b)
  %4070 = mul i32 %4069, 36
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = add i32 %4070, 4
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = fmul fast float %4075, %3967
  %4077 = fmul fast float %4075, %3969
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4079 = fadd fast float %4076, %4078
  %4080 = fadd fast float %4077, %4078
  %4081 = icmp eq i32 %4072, 0
  br i1 %4081, label %4150, label %4082

; <label>:4082                                    ; preds = %4013
  br label %4083

; <label>:4083                                    ; preds = %4140, %4082
  %4084 = phi float [ %4141, %4140 ], [ 0.000000e+00, %4082 ]
  %4085 = phi float [ %4142, %4140 ], [ 0.000000e+00, %4082 ]
  %4086 = phi float [ %4143, %4140 ], [ 0.000000e+00, %4082 ]
  %4087 = phi float [ %4144, %4140 ], [ 0.000000e+00, %4082 ]
  %4088 = phi float [ %4145, %4140 ], [ 0.000000e+00, %4082 ]
  %4089 = phi float [ %4146, %4140 ], [ 0.000000e+00, %4082 ]
  %4090 = phi i32 [ %4147, %4140 ], [ 0, %4082 ]
  %4091 = shl i32 %4090, 2
  %4092 = add i32 %3958, %4091
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %3962, %4091
  %4096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.i32 %4096, 0
  %4098 = add i32 %4097, 0
  %4099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4098, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4100 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4099, i32 0)  ; GetDimensions(handle,mipLevel)
  %4101 = extractvalue %dx.types.Dimensions %4100, 0
  %4102 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4101)  ; FirstbitLo(value)
  %4103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.i32 %4103, 1
  %4105 = sub nsw i32 %4104, %4102
  %4106 = sitofp i32 %4105 to float
  %4107 = fsub fast float %3991, %4106
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float 0.000000e+00)  ; FMax(a,b)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4099, %dx.types.Handle %28, float %4079, float %4080, float %4094, float undef, i32 0, i32 0, i32 undef, float %4108)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = fcmp fast ogt float %4110, 0.000000e+00
  br i1 %4111, label %4112, label %4140

; <label>:4112                                    ; preds = %4083
  %4113 = add i32 %4073, %4091
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = and i32 %4115, 32767
  %4117 = mul nuw nsw i32 %4116, 928
  %4118 = add nuw nsw i32 %4117, 48
  %4119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4123 = add nuw nsw i32 %4117, 60
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = fmul fast float %4120, %4110
  %4129 = fmul fast float %4121, %4110
  %4130 = fmul fast float %4122, %4110
  %4131 = fadd fast float %4128, %4084
  %4132 = fadd fast float %4129, %4085
  %4133 = fadd fast float %4130, %4086
  %4134 = fmul fast float %4125, %4110
  %4135 = fmul fast float %4126, %4110
  %4136 = fmul fast float %4127, %4110
  %4137 = fadd fast float %4134, %4087
  %4138 = fadd fast float %4135, %4088
  %4139 = fadd fast float %4136, %4089
  br label %4140

; <label>:4140                                    ; preds = %4112, %4083
  %4141 = phi float [ %4131, %4112 ], [ %4084, %4083 ]
  %4142 = phi float [ %4132, %4112 ], [ %4085, %4083 ]
  %4143 = phi float [ %4133, %4112 ], [ %4086, %4083 ]
  %4144 = phi float [ %4137, %4112 ], [ %4087, %4083 ]
  %4145 = phi float [ %4138, %4112 ], [ %4088, %4083 ]
  %4146 = phi float [ %4139, %4112 ], [ %4089, %4083 ]
  %4147 = add nuw i32 %4090, 1
  %4148 = icmp eq i32 %4147, %4072
  br i1 %4148, label %4149, label %4083

; <label>:4149                                    ; preds = %4140
  br label %4150

; <label>:4150                                    ; preds = %4149, %4013
  %4151 = phi float [ 0.000000e+00, %4013 ], [ %4141, %4149 ]
  %4152 = phi float [ 0.000000e+00, %4013 ], [ %4142, %4149 ]
  %4153 = phi float [ 0.000000e+00, %4013 ], [ %4143, %4149 ]
  %4154 = phi float [ 0.000000e+00, %4013 ], [ %4144, %4149 ]
  %4155 = phi float [ 0.000000e+00, %4013 ], [ %4145, %4149 ]
  %4156 = phi float [ 0.000000e+00, %4013 ], [ %4146, %4149 ]
  %4157 = fadd fast float %4154, %4151
  %4158 = fmul fast float %4157, 0x3F847AE140000000
  %4159 = fadd fast float %4155, %4152
  %4160 = fmul fast float %4159, 0x3F847AE140000000
  %4161 = fadd fast float %4156, %4153
  %4162 = fmul fast float %4161, 0x3F847AE140000000
  br label %4163

; <label>:4163                                    ; preds = %4150, %3947, %3892, %3889, %3860, %3822
  %4164 = phi float [ %3874, %3860 ], [ -1.310720e+05, %3822 ], [ %4066, %4150 ], [ -1.310720e+05, %3892 ], [ -1.310720e+05, %3947 ], [ -1.310720e+05, %3889 ]
  %4165 = phi float [ %3884, %3860 ], [ 0.000000e+00, %3822 ], [ %4158, %4150 ], [ 0.000000e+00, %3892 ], [ 0.000000e+00, %3947 ], [ 0.000000e+00, %3889 ]
  %4166 = phi float [ %3886, %3860 ], [ 0.000000e+00, %3822 ], [ %4160, %4150 ], [ 0.000000e+00, %3892 ], [ 0.000000e+00, %3947 ], [ 0.000000e+00, %3889 ]
  %4167 = phi float [ %3888, %3860 ], [ 0.000000e+00, %3822 ], [ %4162, %4150 ], [ 0.000000e+00, %3892 ], [ 0.000000e+00, %3947 ], [ 0.000000e+00, %3889 ]
  %4168 = phi i1 [ true, %3860 ], [ false, %3822 ], [ true, %4150 ], [ false, %3892 ], [ false, %3947 ], [ false, %3889 ]
  %4169 = and i32 %196, 3
  %4170 = icmp eq i32 %4169, 1
  %4171 = select i1 %4170, float 1.000000e+00, float 0.000000e+00
  %4172 = fsub fast float %4164, %167
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = select i1 %4168, float %4173, float 1.000000e+00
  %4175 = fmul fast float %4174, %4171
  %4176 = icmp eq i32 %4169, 3
  %4177 = select i1 %4176, float 1.000000e+00, float %4175
  %4178 = call float @dx.op.binary.f32(i32 35, float %3764, float %4177)  ; FMax(a,b)
  %4179 = fcmp fast olt float %4177, 1.000000e+00
  %4180 = fcmp uge float %49, 0.000000e+00
  %4181 = and i1 %4180, %4179
  br i1 %4181, label %4182, label %4192

; <label>:4182                                    ; preds = %4163
  %4183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.ResRet.f32 %4183, 2
  %4187 = fadd fast float %4184, %4178
  %4188 = fcmp ule float %48, 0.000000e+00
  %4189 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = select i1 %4188, float %4189, float 1.000000e+00
  %4191 = fmul fast float %4190, %4186
  br label %4192

; <label>:4192                                    ; preds = %4182, %4163
  %4193 = phi float [ %4187, %4182 ], [ %4178, %4163 ]
  %4194 = phi float [ %4185, %4182 ], [ 0.000000e+00, %4163 ]
  %4195 = phi float [ %4191, %4182 ], [ 0.000000e+00, %4163 ]
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4199 = fcmp fast une float %4197, 0.000000e+00
  %4200 = fcmp fast une float %4198, 0.000000e+00
  %4201 = or i1 %4199, %4200
  br i1 %4201, label %4202, label %4761

; <label>:4202                                    ; preds = %4192
  br i1 %4199, label %4203, label %4476

; <label>:4203                                    ; preds = %4202
  %4204 = call float @dx.op.unary.f32(i32 23, float %3761)  ; Log(value)
  %4205 = fmul fast float %4204, 4.000000e+00
  %4206 = call float @dx.op.unary.f32(i32 21, float %4205)  ; Exp(value)
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = fmul fast float %4208, %36
  %4210 = fmul fast float %4208, %37
  %4211 = fmul fast float %4208, %38
  %4212 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4213 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4214 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4215 = call float @dx.op.unary.f32(i32 23, float %4212)  ; Log(value)
  %4216 = call float @dx.op.unary.f32(i32 23, float %4213)  ; Log(value)
  %4217 = call float @dx.op.unary.f32(i32 23, float %4214)  ; Log(value)
  %4218 = fmul fast float %4215, 4.000000e+00
  %4219 = fmul fast float %4216, 4.000000e+00
  %4220 = fmul fast float %4217, 4.000000e+00
  %4221 = call float @dx.op.unary.f32(i32 21, float %4218)  ; Exp(value)
  %4222 = call float @dx.op.unary.f32(i32 21, float %4219)  ; Exp(value)
  %4223 = call float @dx.op.unary.f32(i32 21, float %4220)  ; Exp(value)
  %4224 = fadd fast float %4222, %4221
  %4225 = fadd fast float %4224, %4223
  %4226 = fdiv fast float 1.000000e+00, %4225
  %4227 = fmul fast float %4226, %4221
  %4228 = fcmp fast ogt float %45, 0.000000e+00
  %4229 = fcmp fast ogt float %46, 0.000000e+00
  %4230 = fcmp fast ogt float %47, 0.000000e+00
  %4231 = fcmp fast olt float %45, 0.000000e+00
  %4232 = fcmp fast olt float %46, 0.000000e+00
  %4233 = fcmp fast olt float %47, 0.000000e+00
  %4234 = zext i1 %4228 to i32
  %4235 = zext i1 %4229 to i32
  %4236 = zext i1 %4230 to i32
  %4237 = zext i1 %4231 to i32
  %4238 = zext i1 %4232 to i32
  %4239 = zext i1 %4233 to i32
  %4240 = sub nsw i32 %4234, %4237
  %4241 = sub nsw i32 %4235, %4238
  %4242 = sub nsw i32 %4236, %4239
  %4243 = call float @dx.op.unary.f32(i32 83, float %4209)  ; DerivCoarseX(value)
  %4244 = call float @dx.op.unary.f32(i32 83, float %4210)  ; DerivCoarseX(value)
  %4245 = call float @dx.op.unary.f32(i32 83, float %4211)  ; DerivCoarseX(value)
  %4246 = call float @dx.op.unary.f32(i32 84, float %4209)  ; DerivCoarseY(value)
  %4247 = call float @dx.op.unary.f32(i32 84, float %4210)  ; DerivCoarseY(value)
  %4248 = call float @dx.op.unary.f32(i32 84, float %4211)  ; DerivCoarseY(value)
  %4249 = fcmp fast ole float %228, %4227
  %4250 = fmul fast float %4226, %4224
  %4251 = fcmp fast ole float %228, %4250
  %4252 = select i1 %4251, float %4211, float %4209
  %4253 = select i1 %4251, float %4209, float %4210
  %4254 = select i1 %4249, float %4210, float %4252
  %4255 = select i1 %4249, float %4211, float %4253
  %4256 = select i1 %4251, float %4245, float %4243
  %4257 = select i1 %4251, float %4243, float %4244
  %4258 = select i1 %4249, float %4244, float %4256
  %4259 = select i1 %4249, float %4245, float %4257
  %4260 = select i1 %4251, float %4248, float %4246
  %4261 = select i1 %4251, float %4246, float %4247
  %4262 = select i1 %4249, float %4247, float %4260
  %4263 = select i1 %4249, float %4248, float %4261
  %4264 = call float @dx.op.unary.f32(i32 27, float %4254)  ; Round_ni(value)
  %4265 = call float @dx.op.unary.f32(i32 27, float %4255)  ; Round_ni(value)
  %4266 = fptosi float %4264 to i32
  %4267 = fptosi float %4265 to i32
  %4268 = xor i32 %4267, %4266
  %4269 = sitofp i32 %4268 to float
  %4270 = fptosi float %4269 to i32
  %4271 = sitofp i32 %4270 to float
  %4272 = fmul fast float %4271, 0x3FE3C6EF40000000
  %4273 = frem fast float %4264, 2.560000e+02
  %4274 = frem fast float %4265, 2.560000e+02
  %4275 = fptoui float %4273 to i32
  %4276 = fptoui float %4274 to i32
  %4277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4275, i32 %4276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = fadd fast float %4278, %4272
  %4282 = fadd fast float %4279, %4272
  %4283 = fadd fast float %4280, %4272
  %4284 = call float @dx.op.unary.f32(i32 22, float %4281)  ; Frc(value)
  %4285 = call float @dx.op.unary.f32(i32 22, float %4282)  ; Frc(value)
  %4286 = call float @dx.op.unary.f32(i32 22, float %4283)  ; Frc(value)
  %4287 = fmul fast float %4286, 0x401921FB60000000
  %4288 = call float @dx.op.unary.f32(i32 13, float %4287)  ; Sin(value)
  %4289 = call float @dx.op.unary.f32(i32 12, float %4287)  ; Cos(value)
  %4290 = fsub fast float -0.000000e+00, %4289
  %4291 = fmul fast float %4289, %4254
  %4292 = call float @dx.op.tertiary.f32(i32 46, float %4288, float %4255, float %4291)  ; FMad(a,b,c)
  %4293 = fmul fast float %4288, %4254
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4290, float %4255, float %4293)  ; FMad(a,b,c)
  %4295 = fadd fast float %4292, %4284
  %4296 = fadd fast float %4294, %4285
  %4297 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4298 = bitcast float %4297 to i32
  %4299 = icmp eq i32 %4298, 0
  br i1 %4299, label %4338, label %4300

; <label>:4300                                    ; preds = %4203
  %4301 = add i32 %4298, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4302, %dx.types.Handle %75, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float %4258, float %4259, float undef, float %4262, float %4263, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4308 = fsub fast float 1.000000e+00, %4197
  %4309 = call float @dx.op.binary.f32(i32 35, float %4308, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4310 = bitcast float %4197 to i32
  %4311 = sitofp i32 %4310 to float
  %4312 = fadd fast float %4311, 0xC1CFBF8940000000
  %4313 = fmul fast float %4307, %4312
  %4314 = fadd fast float %4313, 0x41CFBF8940000000
  %4315 = fptosi float %4314 to i32
  %4316 = bitcast i32 %4315 to float
  %4317 = bitcast float %4309 to i32
  %4318 = sitofp i32 %4317 to float
  %4319 = fadd fast float %4318, 0xC1CFBF8940000000
  %4320 = fmul fast float %4319, %4307
  %4321 = fadd fast float %4320, 0x41CFBF8940000000
  %4322 = fptosi float %4321 to i32
  %4323 = bitcast i32 %4322 to float
  %4324 = fmul fast float %4316, %4306
  %4325 = fmul fast float %4323, %4306
  %4326 = fsub fast float %4309, %4324
  %4327 = fadd fast float %4325, %4309
  %4328 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4330 = fsub fast float %4304, %4328
  %4331 = fsub fast float %4329, %4328
  %4332 = bitcast float %4331 to i32
  %4333 = sub nsw i32 2129859010, %4332
  %4334 = bitcast i32 %4333 to float
  %4335 = fmul fast float %4334, %4330
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fcmp fast olt float %4336, 0x3F70101020000000
  br i1 %4337, label %4476, label %4338

; <label>:4338                                    ; preds = %4300, %4203
  %4339 = phi float [ %4336, %4300 ], [ %4197, %4203 ]
  %4340 = fmul fast float %4339, %4206
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4343 = extractvalue %dx.types.CBufRet.i32 %4341, 0
  %4344 = add i32 %4343, 0
  %4345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4345, %dx.types.Handle %74, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float %4258, float %4259, float undef, float %4262, float %4263, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = and i32 %4342, 255
  %4352 = uitofp i32 %4351 to float
  %4353 = lshr i32 %4342, 8
  %4354 = and i32 %4353, 255
  %4355 = uitofp i32 %4354 to float
  %4356 = fmul fast float %4350, %4352
  %4357 = fadd fast float %4356, %4355
  %4358 = fmul fast float %4357, 0x3F70101000000000
  %4359 = fadd fast float %4358, 0xBFB99999A0000000
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4360, 0x3FF1C71C80000000
  %4362 = call float @dx.op.binary.f32(i32 36, float %4358, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4363 = fsub fast float 1.000000e+00, %4361
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fmul fast float %4364, %4347
  %4366 = fmul fast float %4364, %4348
  %4367 = fmul fast float %4364, %4349
  %4368 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4369 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4371 = fmul fast float %4361, %4347
  %4372 = fmul fast float %4361, %4348
  %4373 = fmul fast float %4361, %4349
  %4374 = fadd fast float %4371, %4362
  %4375 = fadd fast float %4372, %4362
  %4376 = fadd fast float %4373, %4362
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4379 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.i32 %4380, 3
  %4382 = extractvalue %dx.types.CBufRet.i32 %4380, 2
  %4383 = add i32 %4382, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4384, %dx.types.Handle %74, float %4295, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float %4258, float %4259, float undef, float %4262, float %4263, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.ResRet.f32 %4385, 3
  %4390 = and i32 %4381, 255
  %4391 = uitofp i32 %4390 to float
  %4392 = lshr i32 %4381, 8
  %4393 = and i32 %4392, 255
  %4394 = uitofp i32 %4393 to float
  %4395 = lshr i32 %4381, 16
  %4396 = and i32 %4395, 255
  %4397 = uitofp i32 %4396 to float
  %4398 = fmul fast float %4397, 0x3F70101000000000
  %4399 = fmul fast float %4386, %4391
  %4400 = fadd fast float %4399, %4394
  %4401 = fmul fast float %4400, 0x3F70101000000000
  %4402 = fadd fast float %4387, -5.000000e-01
  %4403 = fadd fast float %4389, -5.000000e-01
  %4404 = fmul fast float %4402, %4398
  %4405 = fmul fast float %4403, %4398
  %4406 = fadd fast float %4404, 5.000000e-01
  %4407 = fadd fast float %4405, 5.000000e-01
  %4408 = fmul fast float %4406, 2.000000e+00
  %4409 = fadd fast float %4408, -1.000000e+00
  %4410 = fmul fast float %4407, 2.000000e+00
  %4411 = fadd fast float %4410, -1.000000e+00
  %4412 = fadd fast float %4409, %4411
  %4413 = fmul fast float %4412, 5.000000e-01
  %4414 = fsub fast float %4409, %4411
  %4415 = fmul fast float %4414, 5.000000e-01
  %4416 = call float @dx.op.unary.f32(i32 6, float %4413)  ; FAbs(value)
  %4417 = fsub fast float 1.000000e+00, %4416
  %4418 = call float @dx.op.unary.f32(i32 6, float %4415)  ; FAbs(value)
  %4419 = fsub fast float %4417, %4418
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4413, float %4415, float %4419, float %4413, float %4415, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 25, float %4420)  ; Rsqrt(value)
  %4422 = fmul fast float %4413, %4421
  %4423 = fmul fast float %4415, %4421
  %4424 = select i1 %4251, i32 %4241, i32 %4242
  %4425 = select i1 %4249, i32 %4240, i32 %4424
  %4426 = sitofp i32 %4425 to float
  %4427 = fmul fast float %4419, %4426
  %4428 = fmul fast float %4427, %4421
  %4429 = select i1 %4251, float %4428, float %4423
  %4430 = select i1 %4251, float %4423, float %4428
  %4431 = select i1 %4249, float %4428, float %4422
  %4432 = select i1 %4249, float %4423, float %4429
  %4433 = select i1 %4249, float %4422, float %4430
  %4434 = fsub fast float %4368, %3801
  %4435 = fsub fast float %4369, %3802
  %4436 = fsub fast float %4370, %3803
  %4437 = fmul fast float %4434, %4340
  %4438 = fmul fast float %4435, %4340
  %4439 = fmul fast float %4436, %4340
  %4440 = fadd fast float %4437, %3801
  %4441 = fadd fast float %4438, %3802
  %4442 = fadd fast float %4439, %3803
  %4443 = fsub fast float %4377, %3786
  %4444 = fsub fast float %4378, %3787
  %4445 = fsub fast float %4379, %3788
  %4446 = fmul fast float %4443, %4340
  %4447 = fmul fast float %4444, %4340
  %4448 = fmul fast float %4445, %4340
  %4449 = fadd fast float %4446, %3786
  %4450 = fadd fast float %4447, %3787
  %4451 = fadd fast float %4448, %3788
  %4452 = fadd fast float %4431, %3749
  %4453 = fadd fast float %4432, %3750
  %4454 = fadd fast float %4433, %3751
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4452, float %4453, float %4454, float %4452, float %4453, float %4454)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  %4457 = fmul fast float %4452, %4456
  %4458 = fmul fast float %4453, %4456
  %4459 = fmul fast float %4454, %4456
  %4460 = fsub fast float %4457, %3749
  %4461 = fsub fast float %4458, %3750
  %4462 = fsub fast float %4459, %3751
  %4463 = fmul fast float %4460, %4340
  %4464 = fmul fast float %4461, %4340
  %4465 = fmul fast float %4462, %4340
  %4466 = fadd fast float %4463, %3749
  %4467 = fadd fast float %4464, %3750
  %4468 = fadd fast float %4465, %3751
  %4469 = call float @dx.op.binary.f32(i32 36, float %3761, float %4388)  ; FMin(a,b)
  %4470 = fsub fast float %4469, %3761
  %4471 = fmul fast float %4470, %4340
  %4472 = fadd fast float %4471, %3761
  %4473 = fsub fast float %4401, %3789
  %4474 = fmul fast float %4473, %4340
  %4475 = fadd fast float %4474, %3789
  br label %4476

; <label>:4476                                    ; preds = %4338, %4300, %4202
  %4477 = phi float [ %4449, %4338 ], [ %3786, %4300 ], [ %3786, %4202 ]
  %4478 = phi float [ %4450, %4338 ], [ %3787, %4300 ], [ %3787, %4202 ]
  %4479 = phi float [ %4451, %4338 ], [ %3788, %4300 ], [ %3788, %4202 ]
  %4480 = phi float [ %4440, %4338 ], [ %3801, %4300 ], [ %3801, %4202 ]
  %4481 = phi float [ %4441, %4338 ], [ %3802, %4300 ], [ %3802, %4202 ]
  %4482 = phi float [ %4442, %4338 ], [ %3803, %4300 ], [ %3803, %4202 ]
  %4483 = phi float [ %4466, %4338 ], [ %3749, %4300 ], [ %3749, %4202 ]
  %4484 = phi float [ %4467, %4338 ], [ %3750, %4300 ], [ %3750, %4202 ]
  %4485 = phi float [ %4468, %4338 ], [ %3751, %4300 ], [ %3751, %4202 ]
  %4486 = phi float [ %4475, %4338 ], [ %3789, %4300 ], [ %3789, %4202 ]
  %4487 = phi float [ %4472, %4338 ], [ %3761, %4300 ], [ %3761, %4202 ]
  br i1 %4200, label %4488, label %4761

; <label>:4488                                    ; preds = %4476
  %4489 = call float @dx.op.unary.f32(i32 23, float %4487)  ; Log(value)
  %4490 = fmul fast float %4489, 4.000000e+00
  %4491 = call float @dx.op.unary.f32(i32 21, float %4490)  ; Exp(value)
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = fmul fast float %4493, %36
  %4495 = fmul fast float %4493, %37
  %4496 = fmul fast float %4493, %38
  %4497 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4498 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4499 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4500 = call float @dx.op.unary.f32(i32 23, float %4497)  ; Log(value)
  %4501 = call float @dx.op.unary.f32(i32 23, float %4498)  ; Log(value)
  %4502 = call float @dx.op.unary.f32(i32 23, float %4499)  ; Log(value)
  %4503 = fmul fast float %4500, 4.000000e+00
  %4504 = fmul fast float %4501, 4.000000e+00
  %4505 = fmul fast float %4502, 4.000000e+00
  %4506 = call float @dx.op.unary.f32(i32 21, float %4503)  ; Exp(value)
  %4507 = call float @dx.op.unary.f32(i32 21, float %4504)  ; Exp(value)
  %4508 = call float @dx.op.unary.f32(i32 21, float %4505)  ; Exp(value)
  %4509 = fadd fast float %4507, %4506
  %4510 = fadd fast float %4509, %4508
  %4511 = fdiv fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4511, %4506
  %4513 = fcmp fast ogt float %45, 0.000000e+00
  %4514 = fcmp fast ogt float %46, 0.000000e+00
  %4515 = fcmp fast ogt float %47, 0.000000e+00
  %4516 = fcmp fast olt float %45, 0.000000e+00
  %4517 = fcmp fast olt float %46, 0.000000e+00
  %4518 = fcmp fast olt float %47, 0.000000e+00
  %4519 = zext i1 %4513 to i32
  %4520 = zext i1 %4514 to i32
  %4521 = zext i1 %4515 to i32
  %4522 = zext i1 %4516 to i32
  %4523 = zext i1 %4517 to i32
  %4524 = zext i1 %4518 to i32
  %4525 = sub nsw i32 %4519, %4522
  %4526 = sub nsw i32 %4520, %4523
  %4527 = sub nsw i32 %4521, %4524
  %4528 = call float @dx.op.unary.f32(i32 83, float %4494)  ; DerivCoarseX(value)
  %4529 = call float @dx.op.unary.f32(i32 83, float %4495)  ; DerivCoarseX(value)
  %4530 = call float @dx.op.unary.f32(i32 83, float %4496)  ; DerivCoarseX(value)
  %4531 = call float @dx.op.unary.f32(i32 84, float %4494)  ; DerivCoarseY(value)
  %4532 = call float @dx.op.unary.f32(i32 84, float %4495)  ; DerivCoarseY(value)
  %4533 = call float @dx.op.unary.f32(i32 84, float %4496)  ; DerivCoarseY(value)
  %4534 = fcmp fast ole float %228, %4512
  %4535 = fmul fast float %4511, %4509
  %4536 = fcmp fast ole float %228, %4535
  %4537 = select i1 %4536, float %4496, float %4494
  %4538 = select i1 %4536, float %4494, float %4495
  %4539 = select i1 %4534, float %4495, float %4537
  %4540 = select i1 %4534, float %4496, float %4538
  %4541 = select i1 %4536, float %4530, float %4528
  %4542 = select i1 %4536, float %4528, float %4529
  %4543 = select i1 %4534, float %4529, float %4541
  %4544 = select i1 %4534, float %4530, float %4542
  %4545 = select i1 %4536, float %4533, float %4531
  %4546 = select i1 %4536, float %4531, float %4532
  %4547 = select i1 %4534, float %4532, float %4545
  %4548 = select i1 %4534, float %4533, float %4546
  %4549 = call float @dx.op.unary.f32(i32 27, float %4539)  ; Round_ni(value)
  %4550 = call float @dx.op.unary.f32(i32 27, float %4540)  ; Round_ni(value)
  %4551 = fptosi float %4549 to i32
  %4552 = fptosi float %4550 to i32
  %4553 = xor i32 %4552, %4551
  %4554 = sitofp i32 %4553 to float
  %4555 = fptosi float %4554 to i32
  %4556 = sitofp i32 %4555 to float
  %4557 = fmul fast float %4556, 0x3FE3C6EF40000000
  %4558 = frem fast float %4549, 2.560000e+02
  %4559 = frem fast float %4550, 2.560000e+02
  %4560 = fptoui float %4558 to i32
  %4561 = fptoui float %4559 to i32
  %4562 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4560, i32 %4561, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = fadd fast float %4563, %4557
  %4567 = fadd fast float %4564, %4557
  %4568 = fadd fast float %4565, %4557
  %4569 = call float @dx.op.unary.f32(i32 22, float %4566)  ; Frc(value)
  %4570 = call float @dx.op.unary.f32(i32 22, float %4567)  ; Frc(value)
  %4571 = call float @dx.op.unary.f32(i32 22, float %4568)  ; Frc(value)
  %4572 = fmul fast float %4571, 0x401921FB60000000
  %4573 = call float @dx.op.unary.f32(i32 13, float %4572)  ; Sin(value)
  %4574 = call float @dx.op.unary.f32(i32 12, float %4572)  ; Cos(value)
  %4575 = fsub fast float -0.000000e+00, %4574
  %4576 = fmul fast float %4574, %4539
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4540, float %4576)  ; FMad(a,b,c)
  %4578 = fmul fast float %4573, %4539
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4540, float %4578)  ; FMad(a,b,c)
  %4580 = fadd fast float %4577, %4569
  %4581 = fadd fast float %4579, %4570
  %4582 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4583 = bitcast float %4582 to i32
  %4584 = icmp eq i32 %4583, 0
  br i1 %4584, label %4623, label %4585

; <label>:4585                                    ; preds = %4488
  %4586 = add i32 %4583, 0
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4587, %dx.types.Handle %75, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.f32 %4590, 1
  %4592 = extractvalue %dx.types.CBufRet.f32 %4590, 2
  %4593 = fsub fast float 1.000000e+00, %4198
  %4594 = call float @dx.op.binary.f32(i32 35, float %4593, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4595 = bitcast float %4198 to i32
  %4596 = sitofp i32 %4595 to float
  %4597 = fadd fast float %4596, 0xC1CFBF8940000000
  %4598 = fmul fast float %4592, %4597
  %4599 = fadd fast float %4598, 0x41CFBF8940000000
  %4600 = fptosi float %4599 to i32
  %4601 = bitcast i32 %4600 to float
  %4602 = bitcast float %4594 to i32
  %4603 = sitofp i32 %4602 to float
  %4604 = fadd fast float %4603, 0xC1CFBF8940000000
  %4605 = fmul fast float %4604, %4592
  %4606 = fadd fast float %4605, 0x41CFBF8940000000
  %4607 = fptosi float %4606 to i32
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %4601, %4591
  %4610 = fmul fast float %4608, %4591
  %4611 = fsub fast float %4594, %4609
  %4612 = fadd fast float %4610, %4594
  %4613 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4615 = fsub fast float %4589, %4613
  %4616 = fsub fast float %4614, %4613
  %4617 = bitcast float %4616 to i32
  %4618 = sub nsw i32 2129859010, %4617
  %4619 = bitcast i32 %4618 to float
  %4620 = fmul fast float %4619, %4615
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fcmp fast olt float %4621, 0x3F70101020000000
  br i1 %4622, label %4761, label %4623

; <label>:4623                                    ; preds = %4585, %4488
  %4624 = phi float [ %4621, %4585 ], [ %4198, %4488 ]
  %4625 = fmul fast float %4624, %4491
  %4626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.i32 %4626, 1
  %4628 = extractvalue %dx.types.CBufRet.i32 %4626, 0
  %4629 = add i32 %4628, 0
  %4630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4630, %dx.types.Handle %74, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.f32 %4631, 3
  %4636 = and i32 %4627, 255
  %4637 = uitofp i32 %4636 to float
  %4638 = lshr i32 %4627, 8
  %4639 = and i32 %4638, 255
  %4640 = uitofp i32 %4639 to float
  %4641 = fmul fast float %4635, %4637
  %4642 = fadd fast float %4641, %4640
  %4643 = fmul fast float %4642, 0x3F70101000000000
  %4644 = fadd fast float %4643, 0xBFB99999A0000000
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fmul fast float %4645, 0x3FF1C71C80000000
  %4647 = call float @dx.op.binary.f32(i32 36, float %4643, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4648 = fsub fast float 1.000000e+00, %4646
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4649, %4632
  %4651 = fmul fast float %4649, %4633
  %4652 = fmul fast float %4649, %4634
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = fmul fast float %4646, %4632
  %4657 = fmul fast float %4646, %4633
  %4658 = fmul fast float %4646, %4634
  %4659 = fadd fast float %4656, %4647
  %4660 = fadd fast float %4657, %4647
  %4661 = fadd fast float %4658, %4647
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.i32 %4665, 3
  %4667 = extractvalue %dx.types.CBufRet.i32 %4665, 2
  %4668 = add i32 %4667, 0
  %4669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4669, %dx.types.Handle %74, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4543, float %4544, float undef, float %4547, float %4548, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = and i32 %4666, 255
  %4676 = uitofp i32 %4675 to float
  %4677 = lshr i32 %4666, 8
  %4678 = and i32 %4677, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = lshr i32 %4666, 16
  %4681 = and i32 %4680, 255
  %4682 = uitofp i32 %4681 to float
  %4683 = fmul fast float %4682, 0x3F70101000000000
  %4684 = fmul fast float %4671, %4676
  %4685 = fadd fast float %4684, %4679
  %4686 = fmul fast float %4685, 0x3F70101000000000
  %4687 = fadd fast float %4672, -5.000000e-01
  %4688 = fadd fast float %4674, -5.000000e-01
  %4689 = fmul fast float %4687, %4683
  %4690 = fmul fast float %4688, %4683
  %4691 = fadd fast float %4689, 5.000000e-01
  %4692 = fadd fast float %4690, 5.000000e-01
  %4693 = fmul fast float %4691, 2.000000e+00
  %4694 = fadd fast float %4693, -1.000000e+00
  %4695 = fmul fast float %4692, 2.000000e+00
  %4696 = fadd fast float %4695, -1.000000e+00
  %4697 = fadd fast float %4694, %4696
  %4698 = fmul fast float %4697, 5.000000e-01
  %4699 = fsub fast float %4694, %4696
  %4700 = fmul fast float %4699, 5.000000e-01
  %4701 = call float @dx.op.unary.f32(i32 6, float %4698)  ; FAbs(value)
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = call float @dx.op.unary.f32(i32 6, float %4700)  ; FAbs(value)
  %4704 = fsub fast float %4702, %4703
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4700, float %4704, float %4698, float %4700, float %4704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call float @dx.op.unary.f32(i32 25, float %4705)  ; Rsqrt(value)
  %4707 = fmul fast float %4698, %4706
  %4708 = fmul fast float %4700, %4706
  %4709 = select i1 %4536, i32 %4526, i32 %4527
  %4710 = select i1 %4534, i32 %4525, i32 %4709
  %4711 = sitofp i32 %4710 to float
  %4712 = fmul fast float %4704, %4711
  %4713 = fmul fast float %4712, %4706
  %4714 = select i1 %4536, float %4713, float %4708
  %4715 = select i1 %4536, float %4708, float %4713
  %4716 = select i1 %4534, float %4713, float %4707
  %4717 = select i1 %4534, float %4708, float %4714
  %4718 = select i1 %4534, float %4707, float %4715
  %4719 = fsub fast float %4653, %4480
  %4720 = fsub fast float %4654, %4481
  %4721 = fsub fast float %4655, %4482
  %4722 = fmul fast float %4719, %4625
  %4723 = fmul fast float %4720, %4625
  %4724 = fmul fast float %4721, %4625
  %4725 = fadd fast float %4722, %4480
  %4726 = fadd fast float %4723, %4481
  %4727 = fadd fast float %4724, %4482
  %4728 = fsub fast float %4662, %4477
  %4729 = fsub fast float %4663, %4478
  %4730 = fsub fast float %4664, %4479
  %4731 = fmul fast float %4728, %4625
  %4732 = fmul fast float %4729, %4625
  %4733 = fmul fast float %4730, %4625
  %4734 = fadd fast float %4731, %4477
  %4735 = fadd fast float %4732, %4478
  %4736 = fadd fast float %4733, %4479
  %4737 = fadd fast float %4716, %4483
  %4738 = fadd fast float %4717, %4484
  %4739 = fadd fast float %4718, %4485
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4738, float %4739, float %4737, float %4738, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4737, %4741
  %4743 = fmul fast float %4738, %4741
  %4744 = fmul fast float %4739, %4741
  %4745 = fsub fast float %4742, %4483
  %4746 = fsub fast float %4743, %4484
  %4747 = fsub fast float %4744, %4485
  %4748 = fmul fast float %4745, %4625
  %4749 = fmul fast float %4746, %4625
  %4750 = fmul fast float %4747, %4625
  %4751 = fadd fast float %4748, %4483
  %4752 = fadd fast float %4749, %4484
  %4753 = fadd fast float %4750, %4485
  %4754 = call float @dx.op.binary.f32(i32 36, float %4487, float %4673)  ; FMin(a,b)
  %4755 = fsub fast float %4754, %4487
  %4756 = fmul fast float %4755, %4625
  %4757 = fadd fast float %4756, %4487
  %4758 = fsub fast float %4686, %4486
  %4759 = fmul fast float %4758, %4625
  %4760 = fadd fast float %4759, %4486
  br label %4761

; <label>:4761                                    ; preds = %4623, %4585, %4476, %4192
  %4762 = phi float [ %4734, %4623 ], [ %4477, %4585 ], [ %4477, %4476 ], [ %3786, %4192 ]
  %4763 = phi float [ %4735, %4623 ], [ %4478, %4585 ], [ %4478, %4476 ], [ %3787, %4192 ]
  %4764 = phi float [ %4736, %4623 ], [ %4479, %4585 ], [ %4479, %4476 ], [ %3788, %4192 ]
  %4765 = phi float [ %4725, %4623 ], [ %4480, %4585 ], [ %4480, %4476 ], [ %3801, %4192 ]
  %4766 = phi float [ %4726, %4623 ], [ %4481, %4585 ], [ %4481, %4476 ], [ %3802, %4192 ]
  %4767 = phi float [ %4727, %4623 ], [ %4482, %4585 ], [ %4482, %4476 ], [ %3803, %4192 ]
  %4768 = phi float [ %4751, %4623 ], [ %4483, %4585 ], [ %4483, %4476 ], [ %3749, %4192 ]
  %4769 = phi float [ %4752, %4623 ], [ %4484, %4585 ], [ %4484, %4476 ], [ %3750, %4192 ]
  %4770 = phi float [ %4753, %4623 ], [ %4485, %4585 ], [ %4485, %4476 ], [ %3751, %4192 ]
  %4771 = phi float [ %4760, %4623 ], [ %4486, %4585 ], [ %4486, %4476 ], [ %3789, %4192 ]
  %4772 = phi float [ %4757, %4623 ], [ %4487, %4585 ], [ %4487, %4476 ], [ %3761, %4192 ]
  %4773 = fcmp fast une float %4196, 0.000000e+00
  %4774 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.unary.f32(i32 25, float %4774)  ; Rsqrt(value)
  br i1 %4773, label %4783, label %4776

; <label>:4776                                    ; preds = %4761
  %4777 = fmul fast float %4775, %165
  %4778 = fmul fast float %4775, %166
  %4779 = fmul fast float %4775, %167
  %4780 = fsub fast float -0.000000e+00, %4777
  %4781 = fsub fast float -0.000000e+00, %4778
  %4782 = fsub fast float -0.000000e+00, %4779
  br label %4950

; <label>:4783                                    ; preds = %4761
  %4784 = fmul fast float %165, %4775
  %4785 = fsub fast float -0.000000e+00, %4784
  %4786 = fmul fast float %166, %4775
  %4787 = fsub fast float -0.000000e+00, %4786
  %4788 = fmul fast float %167, %4775
  %4789 = fsub fast float -0.000000e+00, %4788
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4787, float %4789, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fmul fast float %4196, 2.500000e+00
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = fmul fast float %4196, 0x4013FFFFE0000000
  %4794 = fadd fast float %4793, 0xBFFFFFFFE0000000
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4196, 0x4004000020000000
  %4797 = fadd fast float %4796, 0xBFF8000040000000
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fmul fast float %3768, 1.000000e+01
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, 2.000000e+00
  %4802 = fsub fast float 3.000000e+00, %4801
  %4803 = fmul fast float %4800, %4800
  %4804 = fmul fast float %4803, %4802
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fsub fast float 0x3FE3333340000000, %4771
  %4807 = fmul fast float %4806, 0x400AAAAAA0000000
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = fmul fast float %4805, %4808
  %4810 = fmul fast float %4765, 0x3FEA2B8620000000
  %4811 = fmul fast float %4766, 0x3FEA2B8620000000
  %4812 = fmul fast float %4767, 0x3FEA2B8620000000
  %4813 = fadd fast float %4810, 0x3FC81DFBA0000000
  %4814 = fmul fast float %4813, %4765
  %4815 = fadd fast float %4814, 0x3F910E6020000000
  %4816 = fadd fast float %4811, 0x3FC81DFBA0000000
  %4817 = fmul fast float %4816, %4766
  %4818 = fadd fast float %4817, 0x3F910E6020000000
  %4819 = fadd fast float %4812, 0x3FC81DFBA0000000
  %4820 = fmul fast float %4819, %4767
  %4821 = fadd fast float %4820, 0x3F910E6020000000
  %4822 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4825 = fsub fast float %4822, %4765
  %4826 = fsub fast float %4823, %4766
  %4827 = fsub fast float %4824, %4767
  %4828 = fmul fast float %4825, %4792
  %4829 = fmul fast float %4828, %4809
  %4830 = fmul fast float %4826, %4792
  %4831 = fmul fast float %4830, %4809
  %4832 = fmul fast float %4827, %4792
  %4833 = fmul fast float %4832, %4809
  %4834 = fadd fast float %4829, %4765
  %4835 = fadd fast float %4831, %4766
  %4836 = fadd fast float %4833, %4767
  %4837 = fmul fast float %4772, %4772
  %4838 = fmul fast float %4837, %4837
  %4839 = fadd fast float %4795, 1.000000e+00
  %4840 = fsub fast float %4839, %4809
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fsub fast float 1.000000e+00, %4838
  %4845 = call float @dx.op.binary.f32(i32 36, float %4841, float %4844)  ; FMin(a,b)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4845, float %4846)  ; FMax(a,b)
  %4848 = fadd fast float %4843, 0xBFE4CCCCC0000000
  %4849 = fmul fast float %4848, 0x4006DB6DA0000000
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fmul fast float %4850, 2.000000e+00
  %4852 = fsub fast float 3.000000e+00, %4851
  %4853 = bitcast float %4762 to i32
  %4854 = ashr i32 %4853, 1
  %4855 = add nsw i32 %4854, 532487669
  %4856 = bitcast i32 %4855 to float
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4860, 2.000000e+00
  %4862 = bitcast float %4763 to i32
  %4863 = ashr i32 %4862, 1
  %4864 = add nsw i32 %4863, 532487669
  %4865 = bitcast i32 %4864 to float
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = bitcast float %4866 to i32
  %4868 = sub nsw i32 2129859010, %4867
  %4869 = bitcast i32 %4868 to float
  %4870 = fmul fast float %4869, 2.000000e+00
  %4871 = bitcast float %4764 to i32
  %4872 = ashr i32 %4871, 1
  %4873 = add nsw i32 %4872, 532487669
  %4874 = bitcast i32 %4873 to float
  %4875 = fsub fast float 1.000000e+00, %4874
  %4876 = bitcast float %4875 to i32
  %4877 = sub nsw i32 2129859010, %4876
  %4878 = bitcast i32 %4877 to float
  %4879 = fmul fast float %4878, 2.000000e+00
  %4880 = fsub fast float 0x4002A9FBE0000000, %4861
  %4881 = fadd fast float %4861, 0x3FD54FDF00000000
  %4882 = bitcast float %4881 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = bitcast i32 %4883 to float
  %4885 = fmul fast float %4884, %4880
  %4886 = fmul fast float %4885, %4885
  %4887 = fsub fast float 0x4002A9FBE0000000, %4870
  %4888 = fadd fast float %4870, 0x3FD54FDF00000000
  %4889 = bitcast float %4888 to i32
  %4890 = sub nsw i32 2129859010, %4889
  %4891 = bitcast i32 %4890 to float
  %4892 = fmul fast float %4891, %4887
  %4893 = fmul fast float %4892, %4892
  %4894 = fsub fast float 0x4002A9FBE0000000, %4879
  %4895 = fadd fast float %4879, 0x3FD54FDF00000000
  %4896 = bitcast float %4895 to i32
  %4897 = sub nsw i32 2129859010, %4896
  %4898 = bitcast i32 %4897 to float
  %4899 = fmul fast float %4898, %4894
  %4900 = fmul fast float %4899, %4899
  %4901 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4886)  ; FMax(a,b)
  %4902 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4893)  ; FMax(a,b)
  %4903 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4900)  ; FMax(a,b)
  %4904 = fsub fast float 1.000000e+00, %4790
  %4905 = fadd fast float %4904, %4805
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fsub fast float 1.000000e+00, %4177
  %4908 = fmul fast float %4847, %4907
  %4909 = fmul fast float %4850, %4850
  %4910 = fmul fast float %4909, %4908
  %4911 = fmul fast float %4910, %4852
  %4912 = fmul fast float %4907, 0xBFE99999A0000000
  %4913 = fmul fast float %4912, %4792
  %4914 = fmul fast float %4913, %4809
  %4915 = fadd fast float %4914, 1.000000e+00
  %4916 = fadd fast float %4771, -1.000000e+00
  %4917 = fmul fast float %4915, %4916
  %4918 = fadd fast float %4917, 1.000000e+00
  %4919 = fsub fast float %4901, %4762
  %4920 = fsub fast float %4902, %4763
  %4921 = fsub fast float %4903, %4764
  %4922 = fmul fast float %4911, %4919
  %4923 = fmul fast float %4911, %4920
  %4924 = fmul fast float %4911, %4921
  %4925 = fadd fast float %4922, %4762
  %4926 = fadd fast float %4923, %4763
  %4927 = fadd fast float %4924, %4764
  %4928 = fsub fast float %85, %4768
  %4929 = fsub fast float %86, %4769
  %4930 = fsub fast float %87, %4770
  %4931 = fmul fast float %4911, %4928
  %4932 = fmul fast float %4911, %4929
  %4933 = fmul fast float %4911, %4930
  %4934 = fadd fast float %4931, %4768
  %4935 = fadd fast float %4932, %4769
  %4936 = fadd fast float %4933, %4770
  %4937 = fmul fast float %4911, %4906
  %4938 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = fmul fast float %4937, %4939
  %4941 = fadd fast float %4940, %4938
  %4942 = fsub fast float 1.000000e+00, %4772
  %4943 = fmul fast float %4911, %4942
  %4944 = fadd fast float %4943, %4772
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float %4934, float %4935, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.unary.f32(i32 25, float %4945)  ; Rsqrt(value)
  %4947 = fmul fast float %4934, %4946
  %4948 = fmul fast float %4935, %4946
  %4949 = fmul fast float %4936, %4946
  br label %4950

; <label>:4950                                    ; preds = %4783, %4776
  %4951 = phi float [ %4782, %4776 ], [ %4789, %4783 ]
  %4952 = phi float [ %4781, %4776 ], [ %4787, %4783 ]
  %4953 = phi float [ %4780, %4776 ], [ %4785, %4783 ]
  %4954 = phi float [ %4779, %4776 ], [ %4788, %4783 ]
  %4955 = phi float [ %4778, %4776 ], [ %4786, %4783 ]
  %4956 = phi float [ %4777, %4776 ], [ %4784, %4783 ]
  %4957 = phi float [ %4762, %4776 ], [ %4925, %4783 ]
  %4958 = phi float [ %4763, %4776 ], [ %4926, %4783 ]
  %4959 = phi float [ %4764, %4776 ], [ %4927, %4783 ]
  %4960 = phi float [ %4765, %4776 ], [ %4834, %4783 ]
  %4961 = phi float [ %4766, %4776 ], [ %4835, %4783 ]
  %4962 = phi float [ %4767, %4776 ], [ %4836, %4783 ]
  %4963 = phi float [ %4768, %4776 ], [ %4947, %4783 ]
  %4964 = phi float [ %4769, %4776 ], [ %4948, %4783 ]
  %4965 = phi float [ %4770, %4776 ], [ %4949, %4783 ]
  %4966 = phi float [ %4771, %4776 ], [ %4941, %4783 ]
  %4967 = phi float [ %4772, %4776 ], [ %4944, %4783 ]
  %4968 = select i1 %217, float 0.000000e+00, float %4959
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4953, float %4952, float %4951)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4955, float %4954, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = fmul fast float %4971, 2.000000e+00
  %4973 = fmul fast float %4972, %4963
  %4974 = fmul fast float %4972, %4964
  %4975 = fmul fast float %4972, %4965
  %4976 = fsub fast float %4956, %4973
  %4977 = fsub fast float %4955, %4974
  %4978 = fsub fast float %4954, %4975
  %4979 = call float @dx.op.binary.f32(i32 36, float %4967, float 1.000000e+00)  ; FMin(a,b)
  %4980 = fsub fast float 1.000000e+00, %4967
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = fsub fast float 1.000000e+00, %55
  %4984 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.binary.f32(i32 35, float %4984, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4986 = fdiv fast float %4983, %4985
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, 5.000000e-01
  %4990 = fadd fast float %4989, 5.000000e-01
  %4991 = fmul fast float %4990, %55
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fmul fast float %4993, %4986
  %4995 = fadd fast float %4991, %4994
  %4996 = fsub fast float 5.000000e-01, %4989
  %4997 = fmul fast float %4996, %4960
  %4998 = fmul fast float %4996, %4961
  %4999 = fmul fast float %4996, %4962
  %5000 = fadd fast float %4995, %4997
  %5001 = fadd fast float %4995, %4998
  %5002 = fadd fast float %4995, %4999
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4976, float %4977, float %4978, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fmul fast float %5004, 5.000000e-01
  %5006 = fadd fast float %5005, 5.000000e-01
  %5007 = fmul fast float %5006, %55
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4976, float %4977, float %4978, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = fmul fast float %5009, %4986
  %5011 = fadd fast float %5007, %5010
  %5012 = fsub fast float 5.000000e-01, %5005
  %5013 = fmul fast float %5012, %4960
  %5014 = fmul fast float %5012, %4961
  %5015 = fmul fast float %5012, %4962
  %5016 = fadd fast float %5011, %5013
  %5017 = fadd fast float %5011, %5014
  %5018 = fadd fast float %5011, %5015
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = call float @dx.op.binary.f32(i32 36, float %4960, float %5020)  ; FMin(a,b)
  %5022 = fsub fast float 1.000000e+00, %4979
  %5023 = fmul fast float %5021, %5022
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = bitcast float %5024 to i32
  %5026 = sub nsw i32 2129859010, %5025
  %5027 = bitcast i32 %5026 to float
  %5028 = call float @dx.op.binary.f32(i32 36, float %4961, float %5020)  ; FMin(a,b)
  %5029 = fmul fast float %5028, %5022
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = bitcast float %5030 to i32
  %5032 = sub nsw i32 2129859010, %5031
  %5033 = bitcast i32 %5032 to float
  %5034 = call float @dx.op.binary.f32(i32 36, float %4962, float %5020)  ; FMin(a,b)
  %5035 = fmul fast float %5034, %5022
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = bitcast float %5036 to i32
  %5038 = sub nsw i32 2129859010, %5037
  %5039 = bitcast i32 %5038 to float
  %5040 = fmul fast float %4979, %56
  %5041 = fmul fast float %5040, %5000
  %5042 = fmul fast float %5041, %5027
  %5043 = fmul fast float %4979, %57
  %5044 = fmul fast float %5043, %5001
  %5045 = fmul fast float %5044, %5033
  %5046 = fmul fast float %4979, %58
  %5047 = fmul fast float %5046, %5002
  %5048 = fmul fast float %5047, %5039
  %5049 = call float @dx.op.binary.f32(i32 36, float %4957, float %5020)  ; FMin(a,b)
  %5050 = fmul fast float %5049, %5022
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = bitcast float %5051 to i32
  %5053 = sub nsw i32 2129859010, %5052
  %5054 = bitcast i32 %5053 to float
  %5055 = call float @dx.op.binary.f32(i32 36, float %4958, float %5020)  ; FMin(a,b)
  %5056 = fmul fast float %5055, %5022
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = bitcast float %5057 to i32
  %5059 = sub nsw i32 2129859010, %5058
  %5060 = bitcast i32 %5059 to float
  %5061 = call float @dx.op.binary.f32(i32 36, float %4968, float %5020)  ; FMin(a,b)
  %5062 = fmul fast float %5061, %5022
  %5063 = fsub fast float 1.000000e+00, %5062
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = fmul fast float %5040, %5016
  %5068 = fmul fast float %5067, %5054
  %5069 = fmul fast float %5043, %5017
  %5070 = fmul fast float %5069, %5060
  %5071 = fmul fast float %5046, %5018
  %5072 = fmul fast float %5071, %5066
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5045, float %5048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = select i1 %217, float 0.000000e+00, float %5042
  %5075 = select i1 %217, float %5073, float %5045
  %5076 = select i1 %217, float 0.000000e+00, float %5048
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5070, float %5072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = select i1 %217, float 0.000000e+00, float %5068
  %5079 = select i1 %217, float %5077, float %5070
  %5080 = select i1 %217, float 0.000000e+00, float %5072
  %5081 = fmul fast float %4970, 9.843750e-01
  %5082 = fmul fast float %4966, 9.843750e-01
  %5083 = fadd fast float %5081, 7.812500e-03
  %5084 = fadd fast float %5082, 7.812500e-03
  %5085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5083, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 3
  %5088 = fmul fast float %5086, %4957
  %5089 = fmul fast float %5086, %4958
  %5090 = fmul fast float %5086, %4968
  %5091 = fadd fast float %5088, %5087
  %5092 = fadd fast float %5089, %5087
  %5093 = fadd fast float %5090, %5087
  %5094 = fcmp fast ogt float %3762, 0.000000e+00
  br i1 %5094, label %5095, label %5121

; <label>:5095                                    ; preds = %4950
  %5096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3762, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.ResRet.f32 %5096, 1
  %5099 = extractvalue %dx.types.ResRet.f32 %5096, 2
  %5100 = fadd fast float %5097, -5.000000e-01
  %5101 = fadd fast float %5098, -5.000000e-01
  %5102 = fadd fast float %5099, -5.000000e-01
  %5103 = fsub fast float 1.000000e+00, %4957
  %5104 = fsub fast float 1.000000e+00, %4958
  %5105 = fsub fast float 1.000000e+00, %4968
  %5106 = fmul fast float %4957, 4.000000e+00
  %5107 = fmul fast float %5106, %5103
  %5108 = fmul fast float %5107, %5100
  %5109 = fmul fast float %4958, 4.000000e+00
  %5110 = fmul fast float %5109, %5104
  %5111 = fmul fast float %5110, %5101
  %5112 = fmul fast float %4968, 4.000000e+00
  %5113 = fmul fast float %5112, %5105
  %5114 = fmul fast float %5113, %5102
  %5115 = fadd fast float %5108, %5091
  %5116 = fadd fast float %5111, %5092
  %5117 = fadd fast float %5114, %5093
  %5118 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5119 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5120 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  br label %5121

; <label>:5121                                    ; preds = %5095, %4950
  %5122 = phi float [ %5118, %5095 ], [ %5091, %4950 ]
  %5123 = phi float [ %5119, %5095 ], [ %5092, %4950 ]
  %5124 = phi float [ %5120, %5095 ], [ %5093, %4950 ]
  %5125 = call float @dx.op.binary.f32(i32 35, float %5123, float %5124)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %5122, float %5125)  ; FMax(a,b)
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fmul fast float %5127, %5074
  %5129 = fmul fast float %5127, %5075
  %5130 = fmul fast float %5127, %5076
  %5131 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = fcmp fast ogt float %5131, 0x3E7FF19E20000000
  %5133 = fdiv fast float 1.000000e+00, %5131
  %5134 = select i1 %5132, float %5133, float 0.000000e+00
  %5135 = fmul fast float %5134, %4960
  %5136 = fmul fast float %5134, %4961
  %5137 = fmul fast float %5134, %4962
  %5138 = fadd fast float %5135, -1.000000e+00
  %5139 = fadd fast float %5136, -1.000000e+00
  %5140 = fadd fast float %5137, -1.000000e+00
  %5141 = fmul fast float %5138, 5.000000e-01
  %5142 = fmul fast float %5139, 5.000000e-01
  %5143 = fmul fast float %5140, 5.000000e-01
  %5144 = fadd fast float %5141, 1.000000e+00
  %5145 = fadd fast float %5142, 1.000000e+00
  %5146 = fadd fast float %5143, 1.000000e+00
  %5147 = fmul fast float %5122, %5078
  %5148 = fmul fast float %5123, %5079
  %5149 = fmul fast float %5124, %5080
  %5150 = fsub fast float 1.000000e+00, %4970
  %5151 = bitcast float %5150 to i32
  %5152 = sitofp i32 %5151 to float
  %5153 = fmul fast float %5152, 5.000000e+00
  %5154 = fadd fast float %5153, 0xC1EFBF8940000000
  %5155 = fptosi float %5154 to i32
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5156, %3763
  %5158 = fmul fast float %5074, %5157
  %5159 = fmul fast float %5158, %5127
  %5160 = fmul fast float %5159, %5144
  %5161 = fmul fast float %5075, %5157
  %5162 = fmul fast float %5161, %5127
  %5163 = fmul fast float %5162, %5145
  %5164 = fmul fast float %5076, %5157
  %5165 = fmul fast float %5164, %5127
  %5166 = fmul fast float %5165, %5146
  %5167 = fmul fast float %5128, %3759
  %5168 = fmul fast float %5129, %3759
  %5169 = fmul fast float %5130, %3759
  %5170 = fadd fast float %5147, %3755
  %5171 = fadd fast float %5170, %5160
  %5172 = fmul fast float %5171, %3759
  %5173 = fadd fast float %5148, %3756
  %5174 = fadd fast float %5173, %5163
  %5175 = fmul fast float %5174, %3759
  %5176 = fadd fast float %5149, %3757
  %5177 = fadd fast float %5176, %5166
  %5178 = fmul fast float %5177, %3759
  %5179 = bitcast i32 %4982 to float
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5182 = fcmp fast oeq float %5181, 0.000000e+00
  br i1 %5182, label %5410, label %5183

; <label>:5183                                    ; preds = %5121
  %5184 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5185 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5186 = extractvalue %dx.types.CBufRet.f32 %5180, 2
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.CBufRet.f32 %5191, 1
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5189, float %5190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = select i1 %217, float %5192, float %5188
  %5196 = select i1 %217, float %5194, float %5189
  %5197 = select i1 %217, float %5193, float %5190
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5200 = fcmp fast une float %5199, 0.000000e+00
  br i1 %5200, label %5201, label %5218

; <label>:5201                                    ; preds = %5183
  %5202 = fptoui float %78 to i32
  %5203 = fptoui float %79 to i32
  %5204 = lshr i32 %5202, 4
  %5205 = lshr i32 %5203, 4
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = fptoui float %5207 to i32
  %5209 = add i32 %5208, 15
  %5210 = lshr i32 %5209, 4
  %5211 = mul i32 %5210, %5205
  %5212 = add i32 %5211, %5204
  %5213 = shl i32 %5212, 3
  %5214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.i32 %5214, 0
  %5216 = and i32 %5215, -268435456
  %5217 = icmp eq i32 %5216, -1342177280
  br i1 %5217, label %5228, label %5218

; <label>:5218                                    ; preds = %5201, %5183
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5222 = fmul fast float %5220, %78
  %5223 = fmul fast float %5221, %79
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5222, float %5223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  br label %5228

; <label>:5228                                    ; preds = %5218, %5201
  %5229 = phi float [ %5225, %5218 ], [ 0.000000e+00, %5201 ]
  %5230 = phi float [ %5226, %5218 ], [ 0.000000e+00, %5201 ]
  %5231 = phi float [ %5227, %5218 ], [ 0.000000e+00, %5201 ]
  %5232 = call float @dx.op.binary.f32(i32 36, float %5230, float %5231)  ; FMin(a,b)
  %5233 = call float @dx.op.binary.f32(i32 36, float %5229, float %5232)  ; FMin(a,b)
  %5234 = fcmp fast ogt float %5233, 0.000000e+00
  br i1 %5234, label %5235, label %5410, !dx.controlflow.hints !76

; <label>:5235                                    ; preds = %5228
  %5236 = fmul fast float %5229, %5195
  %5237 = fmul fast float %5230, %5196
  %5238 = fmul fast float %5231, %5197
  %5239 = fsub fast float %5184, %4956
  %5240 = fsub fast float %5185, %4955
  %5241 = fsub fast float %5186, %4954
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5239, float %5240, float %5241, float %5239, float %5240, float %5241)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = call float @dx.op.unary.f32(i32 25, float %5242)  ; Rsqrt(value)
  %5244 = fmul fast float %5243, %5239
  %5245 = fmul fast float %5243, %5240
  %5246 = fmul fast float %5243, %5241
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5185, float %5186, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4952, float %4951, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5250 = fmul fast float %5249, %5249
  %5251 = fmul fast float %5250, %5179
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5252, %5249
  %5254 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = fmul fast float %5254, %5254
  %5256 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5257 = fsub fast float 1.000000e+00, %4966
  %5258 = call float @dx.op.binary.f32(i32 35, float %5257, float 0x3F847AE140000000)  ; FMax(a,b)
  %5259 = fmul fast float %5258, %5258
  %5260 = fmul fast float %5259, %5259
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %4970, %4970
  %5263 = fmul fast float %5262, %5261
  %5264 = fadd fast float %5263, %5260
  %5265 = bitcast float %5264 to i32
  %5266 = ashr i32 %5265, 1
  %5267 = add nsw i32 %5266, 532487669
  %5268 = bitcast i32 %5267 to float
  %5269 = fadd fast float %5268, %4970
  %5270 = fmul fast float %5260, %5255
  %5271 = fsub fast float 1.000000e+00, %5255
  %5272 = fadd fast float %5271, %5270
  %5273 = fmul fast float %5256, %5256
  %5274 = fmul fast float %5273, %5261
  %5275 = fadd fast float %5274, %5260
  %5276 = bitcast float %5275 to i32
  %5277 = ashr i32 %5276, 1
  %5278 = add nsw i32 %5277, 532487669
  %5279 = bitcast i32 %5278 to float
  %5280 = fadd fast float %5279, %5256
  %5281 = fmul fast float %5272, %5272
  %5282 = fmul fast float %5281, %5269
  %5283 = fmul fast float %5282, %5280
  %5284 = fdiv fast float 0x3FF0A00000000000, %5283
  %5285 = fmul fast float %5284, %5260
  %5286 = call float @dx.op.unary.f32(i32 6, float %5248)  ; FAbs(value)
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = bitcast float %5287 to i32
  %5289 = sitofp i32 %5288 to float
  %5290 = fmul fast float %5289, 5.000000e+00
  %5291 = fadd fast float %5290, 0xC1EFBF8940000000
  %5292 = fptosi float %5291 to i32
  %5293 = bitcast i32 %5292 to float
  %5294 = fsub fast float 1.000000e+00, %4957
  %5295 = fsub fast float 1.000000e+00, %4958
  %5296 = fsub fast float 1.000000e+00, %4968
  %5297 = fmul fast float %5293, %5294
  %5298 = fmul fast float %5293, %5295
  %5299 = fmul fast float %5293, %5296
  %5300 = fadd fast float %5297, %4957
  %5301 = fadd fast float %5298, %4958
  %5302 = fadd fast float %5299, %4968
  br i1 %5094, label %5303, label %5326

; <label>:5303                                    ; preds = %5235
  %5304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3762, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5308 = fadd fast float %5305, -5.000000e-01
  %5309 = fadd fast float %5306, -5.000000e-01
  %5310 = fadd fast float %5307, -5.000000e-01
  %5311 = fmul fast float %4957, 4.000000e+00
  %5312 = fmul fast float %5311, %5294
  %5313 = fmul fast float %5312, %5308
  %5314 = fmul fast float %4958, 4.000000e+00
  %5315 = fmul fast float %5314, %5295
  %5316 = fmul fast float %5315, %5309
  %5317 = fmul fast float %4968, 4.000000e+00
  %5318 = fmul fast float %5317, %5296
  %5319 = fmul fast float %5318, %5310
  %5320 = fadd fast float %5313, %5300
  %5321 = fadd fast float %5316, %5301
  %5322 = fadd fast float %5319, %5302
  %5323 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  br label %5326

; <label>:5326                                    ; preds = %5303, %5235
  %5327 = phi float [ %5323, %5303 ], [ %5300, %5235 ]
  %5328 = phi float [ %5324, %5303 ], [ %5301, %5235 ]
  %5329 = phi float [ %5325, %5303 ], [ %5302, %5235 ]
  %5330 = fmul fast float %5247, 9.843750e-01
  %5331 = fadd fast float %5330, 7.812500e-03
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5331, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 2
  %5334 = extractvalue %dx.types.ResRet.f32 %5332, 3
  %5335 = fmul fast float %5333, %4957
  %5336 = fmul fast float %5333, %4958
  %5337 = fmul fast float %5333, %4968
  %5338 = fadd fast float %5335, %5334
  %5339 = fadd fast float %5336, %5334
  %5340 = fadd fast float %5337, %5334
  br i1 %5094, label %5341, label %5364

; <label>:5341                                    ; preds = %5326
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3762, float %5247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.ResRet.f32 %5342, 2
  %5346 = fadd fast float %5343, -5.000000e-01
  %5347 = fadd fast float %5344, -5.000000e-01
  %5348 = fadd fast float %5345, -5.000000e-01
  %5349 = fmul fast float %4957, 4.000000e+00
  %5350 = fmul fast float %5349, %5294
  %5351 = fmul fast float %5350, %5346
  %5352 = fmul fast float %4958, 4.000000e+00
  %5353 = fmul fast float %5352, %5295
  %5354 = fmul fast float %5353, %5347
  %5355 = fmul fast float %4968, 4.000000e+00
  %5356 = fmul fast float %5355, %5296
  %5357 = fmul fast float %5356, %5348
  %5358 = fadd fast float %5351, %5338
  %5359 = fadd fast float %5354, %5339
  %5360 = fadd fast float %5357, %5340
  %5361 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  br label %5364

; <label>:5364                                    ; preds = %5341, %5326
  %5365 = phi float [ %5361, %5341 ], [ %5338, %5326 ]
  %5366 = phi float [ %5362, %5341 ], [ %5339, %5326 ]
  %5367 = phi float [ %5363, %5341 ], [ %5340, %5326 ]
  %5368 = call float @dx.op.binary.f32(i32 35, float %5366, float %5367)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 35, float %5365, float %5368)  ; FMax(a,b)
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = fmul fast float %5327, %5285
  %5372 = fmul fast float %5328, %5285
  %5373 = fmul fast float %5329, %5285
  %5374 = fsub fast float 1.000000e+00, %5248
  %5375 = bitcast float %5374 to i32
  %5376 = sitofp i32 %5375 to float
  %5377 = fmul fast float %5376, 5.000000e+00
  %5378 = fadd fast float %5377, 0xC1EFBF8940000000
  %5379 = fptosi float %5378 to i32
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, %3763
  %5382 = fmul fast float %5370, %5381
  %5383 = fmul fast float %5382, %5144
  %5384 = fmul fast float %5382, %5145
  %5385 = fmul fast float %5382, %5146
  %5386 = fadd fast float %5383, %5371
  %5387 = fadd fast float %5384, %5372
  %5388 = fadd fast float %5385, %5373
  %5389 = fmul fast float %5253, %5236
  %5390 = fmul fast float %5389, %5370
  %5391 = fmul fast float %5253, %5237
  %5392 = fmul fast float %5391, %5370
  %5393 = fmul fast float %5253, %5238
  %5394 = fmul fast float %5393, %5370
  %5395 = fmul fast float %5389, %5386
  %5396 = fmul fast float %5391, %5387
  %5397 = fmul fast float %5393, %5388
  %5398 = fadd fast float %5390, %5128
  %5399 = fmul fast float %5398, %3759
  %5400 = fadd fast float %5392, %5129
  %5401 = fmul fast float %5400, %3759
  %5402 = fadd fast float %5394, %5130
  %5403 = fmul fast float %5402, %3759
  %5404 = fadd fast float %5395, %5171
  %5405 = fmul fast float %5404, %3759
  %5406 = fadd fast float %5396, %5174
  %5407 = fmul fast float %5406, %3759
  %5408 = fadd fast float %5397, %5177
  %5409 = fmul fast float %5408, %3759
  br label %5410

; <label>:5410                                    ; preds = %5364, %5228, %5121
  %5411 = phi float [ %5172, %5121 ], [ %5172, %5228 ], [ %5405, %5364 ]
  %5412 = phi float [ %5175, %5121 ], [ %5175, %5228 ], [ %5407, %5364 ]
  %5413 = phi float [ %5178, %5121 ], [ %5178, %5228 ], [ %5409, %5364 ]
  %5414 = phi float [ %5167, %5121 ], [ %5167, %5228 ], [ %5399, %5364 ]
  %5415 = phi float [ %5168, %5121 ], [ %5168, %5228 ], [ %5401, %5364 ]
  %5416 = phi float [ %5169, %5121 ], [ %5169, %5228 ], [ %5403, %5364 ]
  %5417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.i32 %5417, 0
  %5419 = icmp eq i32 %5418, 0
  br i1 %5419, label %5854, label %5420

; <label>:5420                                    ; preds = %5410
  %5421 = fptoui float %78 to i32
  %5422 = fptoui float %79 to i32
  %5423 = lshr i32 %5421, 4
  %5424 = lshr i32 %5422, 4
  %5425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.i32 %5425, 0
  %5427 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5424, i32 %5426, i32 %5423)  ; UMad(a,b,c)
  %5428 = add nsw i32 %5418, -1
  %5429 = call i32 @dx.op.binary.i32(i32 37, i32 %5428, i32 0)  ; IMax(a,b)
  %5430 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5431 = fptoui float %5430 to i32
  %5432 = lshr i32 %5431, 5
  %5433 = call i32 @dx.op.binary.i32(i32 40, i32 %5432, i32 8191)  ; UMin(a,b)
  %5434 = shl i32 %5433, 2
  %5435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.i32 %5435, 0
  %5437 = lshr i32 %5436, 16
  %5438 = and i32 %5436, 65535
  %5439 = lshr i32 %5436, 21
  %5440 = lshr i32 %5438, 5
  %5441 = call i32 @dx.op.binary.i32(i32 40, i32 %5440, i32 %5429)  ; UMin(a,b)
  %5442 = icmp ugt i32 %5439, %5441
  br i1 %5442, label %5854, label %5443

; <label>:5443                                    ; preds = %5420
  br label %5444

; <label>:5444                                    ; preds = %5844, %5443
  %5445 = phi i32 [ %5851, %5844 ], [ %5439, %5443 ]
  %5446 = phi float [ %5845, %5844 ], [ %5411, %5443 ]
  %5447 = phi float [ %5846, %5844 ], [ %5412, %5443 ]
  %5448 = phi float [ %5847, %5844 ], [ %5413, %5443 ]
  %5449 = phi float [ %5848, %5844 ], [ %5414, %5443 ]
  %5450 = phi float [ %5849, %5844 ], [ %5415, %5443 ]
  %5451 = phi float [ %5850, %5844 ], [ %5416, %5443 ]
  %5452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.i32 %5452, 0
  %5454 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5427, i32 %5453, i32 %5445)  ; UMad(a,b,c)
  %5455 = shl i32 %5454, 2
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = shl i32 %5445, 5
  %5459 = sub nsw i32 %5437, %5458
  %5460 = call i32 @dx.op.binary.i32(i32 37, i32 %5459, i32 0)  ; IMax(a,b)
  %5461 = call i32 @dx.op.binary.i32(i32 38, i32 %5460, i32 31)  ; IMin(a,b)
  %5462 = sub nsw i32 1, %5437
  %5463 = add nsw i32 %5462, %5438
  %5464 = call i32 @dx.op.binary.i32(i32 37, i32 %5463, i32 0)  ; IMax(a,b)
  %5465 = call i32 @dx.op.binary.i32(i32 38, i32 %5464, i32 32)  ; IMin(a,b)
  %5466 = and i32 %5465, 31
  %5467 = shl i32 -1, %5466
  %5468 = xor i32 %5467, -1
  %5469 = and i32 %5461, 31
  %5470 = shl i32 %5468, %5469
  %5471 = icmp eq i32 %5465, 32
  %5472 = select i1 %5471, i32 -1, i32 %5470
  %5473 = and i32 %5472, %5457
  %5474 = icmp eq i32 %5473, 0
  br i1 %5474, label %5844, label %5475

; <label>:5475                                    ; preds = %5444
  br label %5476

; <label>:5476                                    ; preds = %5556, %5475
  %5477 = phi i32 [ %5488, %5556 ], [ %5473, %5475 ]
  %5478 = phi float [ %5557, %5556 ], [ %5446, %5475 ]
  %5479 = phi float [ %5558, %5556 ], [ %5447, %5475 ]
  %5480 = phi float [ %5559, %5556 ], [ %5448, %5475 ]
  %5481 = phi float [ %5560, %5556 ], [ %5449, %5475 ]
  %5482 = phi float [ %5561, %5556 ], [ %5450, %5475 ]
  %5483 = phi float [ %5562, %5556 ], [ %5451, %5475 ]
  %5484 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5477)  ; FirstbitLo(value)
  %5485 = add i32 %5484, %5458
  %5486 = and i32 %5484, 31
  %5487 = shl i32 1, %5486
  %5488 = xor i32 %5487, %5477
  %5489 = mul i32 %5485, 112
  %5490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5489, i32 undef)  ; BufferLoad(srv,index,wot)
  %5491 = extractvalue %dx.types.ResRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.ResRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.ResRet.f32 %5490, 2
  %5494 = or i32 %5489, 12
  %5495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5494, i32 undef)  ; BufferLoad(srv,index,wot)
  %5496 = extractvalue %dx.types.ResRet.f32 %5495, 0
  %5497 = add i32 %5489, 44
  %5498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5497, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = add i32 %5489, 48
  %5501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = add i32 %5489, 80
  %5506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 1
  %5508 = extractvalue %dx.types.ResRet.f32 %5506, 2
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5491, float %5492, float %5493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = select i1 %217, float %5507, float %5491
  %5511 = select i1 %217, float %5509, float %5492
  %5512 = select i1 %217, float %5508, float %5493
  %5513 = fsub fast float %5502, %165
  %5514 = fsub fast float %5503, %166
  %5515 = fsub fast float %5504, %167
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5513, float %5514, float %5515, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 24, float %5516)  ; Sqrt(value)
  %5518 = fdiv fast float 1.000000e+00, %5517
  %5519 = fmul fast float %5518, %5513
  %5520 = fmul fast float %5518, %5514
  %5521 = fmul fast float %5518, %5515
  %5522 = fadd fast float %5517, %5496
  %5523 = fdiv fast float 1.000000e+00, %5522
  %5524 = fmul float %5499, %5523
  %5525 = fmul float %5524, %5524
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = and i32 %5487, %5473
  %5528 = icmp eq i32 %5527, 0
  br i1 %5528, label %5551, label %5529, !dx.controlflow.hints !77

; <label>:5529                                    ; preds = %5476
  %5530 = lshr i32 %5421, 5
  %5531 = lshr i32 %5422, 5
  %5532 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5530, i32 %5531, i32 %5485, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5533 = extractvalue %dx.types.ResRet.i32 %5532, 0
  %5534 = and i32 %5533, 3
  %5535 = icmp eq i32 %5534, 0
  %5536 = select i1 %5535, float 1.000000e+00, float 0.000000e+00
  %5537 = icmp eq i32 %5534, 3
  br i1 %5537, label %5538, label %5551

; <label>:5538                                    ; preds = %5529
  %5539 = lshr i32 %5533, 10
  %5540 = and i32 %5539, 8160
  %5541 = and i32 %5422, 31
  %5542 = or i32 %5540, %5541
  %5543 = lshr i32 %5533, 1
  %5544 = and i32 %5543, 16352
  %5545 = and i32 %5421, 31
  %5546 = or i32 %5544, %5545
  %5547 = lshr i32 %5533, 23
  %5548 = and i32 %5547, 255
  %5549 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5546, i32 %5542, i32 %5548, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  br label %5551

; <label>:5551                                    ; preds = %5538, %5529, %5476
  %5552 = phi float [ %5550, %5538 ], [ %5536, %5529 ], [ 0.000000e+00, %5476 ]
  %5553 = call float @dx.op.binary.f32(i32 36, float %5552, float %5552)  ; FMin(a,b)
  %5554 = call float @dx.op.binary.f32(i32 36, float %5552, float %5553)  ; FMin(a,b)
  %5555 = fcmp fast ogt float %5554, 0.000000e+00
  br i1 %5555, label %5564, label %5556, !dx.controlflow.hints !78

; <label>:5556                                    ; preds = %5800, %5551
  %5557 = phi float [ %5478, %5551 ], [ %5840, %5800 ]
  %5558 = phi float [ %5479, %5551 ], [ %5841, %5800 ]
  %5559 = phi float [ %5480, %5551 ], [ %5842, %5800 ]
  %5560 = phi float [ %5481, %5551 ], [ %5834, %5800 ]
  %5561 = phi float [ %5482, %5551 ], [ %5835, %5800 ]
  %5562 = phi float [ %5483, %5551 ], [ %5836, %5800 ]
  %5563 = icmp eq i32 %5477, %5487
  br i1 %5563, label %5843, label %5476

; <label>:5564                                    ; preds = %5551
  %5565 = fmul fast float %5552, %5510
  %5566 = fmul fast float %5552, %5511
  %5567 = fmul fast float %5552, %5512
  %5568 = fsub fast float %5504, %4164
  %5569 = fcmp fast ogt float %5568, 0.000000e+00
  %5570 = fsub fast float %167, %4164
  %5571 = fcmp fast ogt float %5570, 0.000000e+00
  %5572 = xor i1 %5571, %5569
  %5573 = fsub fast float %4164, %5504
  %5574 = fmul fast float %5573, 2.000000e+00
  %5575 = fadd fast float %5574, %5504
  %5576 = select i1 %5572, float %5504, float %5575
  %5577 = fsub fast float %5576, %167
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5513, float %5514, float %5577, float %5513, float %5514, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = call float @dx.op.unary.f32(i32 25, float %5578)  ; Rsqrt(value)
  %5580 = fmul fast float %5579, %5513
  %5581 = fmul fast float %5579, %5514
  %5582 = fmul fast float %5579, %5577
  %5583 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fdiv fast float 1.000000e+00, %5584
  %5586 = fmul fast float %5585, %5583
  %5587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5570, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = fcmp fast ogt float %5587, 0.000000e+00
  %5589 = fcmp fast olt float %5587, 0.000000e+00
  %5590 = zext i1 %5588 to i32
  %5591 = zext i1 %5589 to i32
  %5592 = sub nsw i32 %5590, %5591
  %5593 = sitofp i32 %5592 to float
  %5594 = fsub fast float %5576, %4164
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5513, float %5514, float %5594, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = fcmp fast ogt float %5595, 0.000000e+00
  %5597 = fcmp fast olt float %5595, 0.000000e+00
  %5598 = zext i1 %5596 to i32
  %5599 = zext i1 %5597 to i32
  %5600 = sub nsw i32 %5598, %5599
  %5601 = sitofp i32 %5600 to float
  %5602 = fcmp fast une float %5593, %5601
  br i1 %5602, label %5603, label %5613

; <label>:5603                                    ; preds = %5564
  %5604 = fmul fast float %5586, %5582
  %5605 = fmul fast float %5586, %5581
  %5606 = fmul fast float %5586, %5580
  %5607 = fmul fast float %5606, %5606
  %5608 = fmul fast float %5605, %5605
  %5609 = fadd fast float %5607, %5608
  %5610 = fmul fast float %5604, %5604
  %5611 = fadd fast float %5609, %5610
  %5612 = call float @dx.op.unary.f32(i32 24, float %5611)  ; Sqrt(value)
  br label %5625

; <label>:5613                                    ; preds = %5564
  %5614 = icmp slt i32 %5592, 0
  br i1 %5614, label %5615, label %5625

; <label>:5615                                    ; preds = %5613
  %5616 = fsub fast float %165, %5502
  %5617 = fsub fast float %166, %5503
  %5618 = fsub fast float %167, %5576
  %5619 = fmul fast float %5616, %5616
  %5620 = fmul fast float %5617, %5617
  %5621 = fadd fast float %5619, %5620
  %5622 = fmul fast float %5618, %5618
  %5623 = fadd fast float %5621, %5622
  %5624 = call float @dx.op.unary.f32(i32 24, float %5623)  ; Sqrt(value)
  br label %5625

; <label>:5625                                    ; preds = %5615, %5613, %5603
  %5626 = phi float [ %5612, %5603 ], [ %5624, %5615 ], [ 0.000000e+00, %5613 ]
  %5627 = and i1 %5571, %5569
  %5628 = fsub fast float -0.000000e+00, %5626
  %5629 = select i1 %5627, float -0.000000e+00, float %5628
  %5630 = fmul fast float %4165, 0x3FF7154760000000
  %5631 = fmul fast float %5630, %5629
  %5632 = fmul fast float %4166, 0x3FF7154760000000
  %5633 = fmul fast float %5632, %5629
  %5634 = fmul fast float %4167, 0x3FF7154760000000
  %5635 = fmul fast float %5634, %5629
  %5636 = call float @dx.op.unary.f32(i32 21, float %5631)  ; Exp(value)
  %5637 = call float @dx.op.unary.f32(i32 21, float %5633)  ; Exp(value)
  %5638 = call float @dx.op.unary.f32(i32 21, float %5635)  ; Exp(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5642 = fmul fast float %5565, %5639
  %5643 = fmul fast float %5566, %5640
  %5644 = fmul fast float %5567, %5641
  %5645 = fsub fast float %5519, %4956
  %5646 = fsub fast float %5520, %4955
  %5647 = fsub fast float %5521, %4954
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call float @dx.op.unary.f32(i32 25, float %5648)  ; Rsqrt(value)
  %5650 = fmul fast float %5649, %5645
  %5651 = fmul fast float %5649, %5646
  %5652 = fmul fast float %5649, %5647
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4952, float %4951, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5656 = fmul fast float %5655, %5526
  %5657 = fmul fast float %5655, %5655
  %5658 = fmul fast float %5657, %5179
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5656, %5659
  %5661 = bitcast float %5516 to i32
  %5662 = ashr i32 %5661, 1
  %5663 = sub nsw i32 1597463007, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, %5513
  %5666 = fmul fast float %5664, %5514
  %5667 = fmul fast float %5664, %5515
  %5668 = fsub fast float %5665, %4956
  %5669 = fsub fast float %5666, %4955
  %5670 = fsub fast float %5667, %4954
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5668, float %5669, float %5670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.unary.f32(i32 25, float %5671)  ; Rsqrt(value)
  %5673 = fmul fast float %5668, %5672
  %5674 = fmul fast float %5669, %5672
  %5675 = fmul fast float %5670, %5672
  %5676 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %5673, float %5674, float %5675)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fmul fast float %5676, %5676
  %5678 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5679 = fsub fast float 1.000000e+00, %4966
  %5680 = call float @dx.op.binary.f32(i32 35, float %5679, float 0x3F847AE140000000)  ; FMax(a,b)
  %5681 = fmul fast float %5680, %5680
  %5682 = fmul fast float %5681, %5681
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = fmul fast float %4970, %4970
  %5685 = fmul fast float %5684, %5683
  %5686 = fadd fast float %5685, %5682
  %5687 = bitcast float %5686 to i32
  %5688 = ashr i32 %5687, 1
  %5689 = add nsw i32 %5688, 532487669
  %5690 = bitcast i32 %5689 to float
  %5691 = fadd fast float %5690, %4970
  %5692 = fmul fast float %5682, %5677
  %5693 = fsub fast float 1.000000e+00, %5677
  %5694 = fadd fast float %5693, %5692
  %5695 = fmul fast float %5678, %5678
  %5696 = fmul fast float %5695, %5683
  %5697 = fadd fast float %5696, %5682
  %5698 = bitcast float %5697 to i32
  %5699 = ashr i32 %5698, 1
  %5700 = add nsw i32 %5699, 532487669
  %5701 = bitcast i32 %5700 to float
  %5702 = fadd fast float %5701, %5678
  %5703 = fmul fast float %5694, %5694
  %5704 = fmul fast float %5703, %5691
  %5705 = fmul fast float %5704, %5702
  %5706 = fdiv fast float 1.000000e+00, %5705
  %5707 = bitcast float %5682 to i32
  %5708 = sitofp i32 %5707 to float
  %5709 = fmul fast float %5708, 0x3FE7F73180000000
  %5710 = fadd fast float %5709, 0x41AFE27C40000000
  %5711 = fptosi float %5710 to i32
  %5712 = bitcast i32 %5711 to float
  %5713 = fmul fast float %5499, 0x3FD80E9D60000000
  %5714 = fmul fast float %5713, %5664
  %5715 = fadd fast float %5712, %5714
  %5716 = bitcast float %5715 to i32
  %5717 = sub nsw i32 2129859010, %5716
  %5718 = bitcast i32 %5717 to float
  %5719 = fmul fast float %5682, %5706
  %5720 = fmul fast float %5719, %5712
  %5721 = fmul fast float %5720, %5718
  %5722 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = bitcast float %5723 to i32
  %5725 = sitofp i32 %5724 to float
  %5726 = fmul fast float %5725, 5.000000e+00
  %5727 = fadd fast float %5726, 0xC1EFBF8940000000
  %5728 = fptosi float %5727 to i32
  %5729 = bitcast i32 %5728 to float
  %5730 = fsub fast float 1.000000e+00, %4957
  %5731 = fsub fast float 1.000000e+00, %4958
  %5732 = fsub fast float 1.000000e+00, %4968
  %5733 = fmul fast float %5729, %5730
  %5734 = fmul fast float %5729, %5731
  %5735 = fmul fast float %5729, %5732
  %5736 = fadd fast float %5733, %4957
  %5737 = fadd fast float %5734, %4958
  %5738 = fadd fast float %5735, %4968
  br i1 %5094, label %5739, label %5762

; <label>:5739                                    ; preds = %5625
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3762, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  %5744 = fadd fast float %5741, -5.000000e-01
  %5745 = fadd fast float %5742, -5.000000e-01
  %5746 = fadd fast float %5743, -5.000000e-01
  %5747 = fmul fast float %4957, 4.000000e+00
  %5748 = fmul fast float %5747, %5730
  %5749 = fmul fast float %5748, %5744
  %5750 = fmul fast float %4958, 4.000000e+00
  %5751 = fmul fast float %5750, %5731
  %5752 = fmul fast float %5751, %5745
  %5753 = fmul fast float %4968, 4.000000e+00
  %5754 = fmul fast float %5753, %5732
  %5755 = fmul fast float %5754, %5746
  %5756 = fadd fast float %5749, %5736
  %5757 = fadd fast float %5752, %5737
  %5758 = fadd fast float %5755, %5738
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5761 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  br label %5762

; <label>:5762                                    ; preds = %5739, %5625
  %5763 = phi float [ %5759, %5739 ], [ %5736, %5625 ]
  %5764 = phi float [ %5760, %5739 ], [ %5737, %5625 ]
  %5765 = phi float [ %5761, %5739 ], [ %5738, %5625 ]
  %5766 = fmul fast float %5653, 9.843750e-01
  %5767 = fadd fast float %5766, 7.812500e-03
  %5768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5767, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5769 = extractvalue %dx.types.ResRet.f32 %5768, 2
  %5770 = extractvalue %dx.types.ResRet.f32 %5768, 3
  %5771 = fmul fast float %5769, %4957
  %5772 = fmul fast float %5769, %4958
  %5773 = fmul fast float %5769, %4968
  %5774 = fadd fast float %5771, %5770
  %5775 = fadd fast float %5772, %5770
  %5776 = fadd fast float %5773, %5770
  br i1 %5094, label %5777, label %5800

; <label>:5777                                    ; preds = %5762
  %5778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3762, float %5653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5779 = extractvalue %dx.types.ResRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.ResRet.f32 %5778, 1
  %5781 = extractvalue %dx.types.ResRet.f32 %5778, 2
  %5782 = fadd fast float %5779, -5.000000e-01
  %5783 = fadd fast float %5780, -5.000000e-01
  %5784 = fadd fast float %5781, -5.000000e-01
  %5785 = fmul fast float %4957, 4.000000e+00
  %5786 = fmul fast float %5785, %5730
  %5787 = fmul fast float %5786, %5782
  %5788 = fmul fast float %4958, 4.000000e+00
  %5789 = fmul fast float %5788, %5731
  %5790 = fmul fast float %5789, %5783
  %5791 = fmul fast float %4968, 4.000000e+00
  %5792 = fmul fast float %5791, %5732
  %5793 = fmul fast float %5792, %5784
  %5794 = fadd fast float %5787, %5774
  %5795 = fadd fast float %5790, %5775
  %5796 = fadd fast float %5793, %5776
  %5797 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5799 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  br label %5800

; <label>:5800                                    ; preds = %5777, %5762
  %5801 = phi float [ %5797, %5777 ], [ %5774, %5762 ]
  %5802 = phi float [ %5798, %5777 ], [ %5775, %5762 ]
  %5803 = phi float [ %5799, %5777 ], [ %5776, %5762 ]
  %5804 = call float @dx.op.binary.f32(i32 35, float %5802, float %5803)  ; FMax(a,b)
  %5805 = call float @dx.op.binary.f32(i32 35, float %5801, float %5804)  ; FMax(a,b)
  %5806 = fsub fast float 1.000000e+00, %5805
  %5807 = fmul fast float %5763, %5721
  %5808 = fmul fast float %5764, %5721
  %5809 = fmul fast float %5765, %5721
  %5810 = fsub fast float 1.000000e+00, %5654
  %5811 = bitcast float %5810 to i32
  %5812 = sitofp i32 %5811 to float
  %5813 = fmul fast float %5812, 5.000000e+00
  %5814 = fadd fast float %5813, 0xC1EFBF8940000000
  %5815 = fptosi float %5814 to i32
  %5816 = bitcast i32 %5815 to float
  %5817 = fmul fast float %5816, %3763
  %5818 = fmul fast float %5806, %5817
  %5819 = fmul fast float %5818, %5144
  %5820 = fmul fast float %5818, %5145
  %5821 = fmul fast float %5818, %5146
  %5822 = fadd fast float %5819, %5807
  %5823 = fadd fast float %5820, %5808
  %5824 = fadd fast float %5821, %5809
  %5825 = fmul fast float %5642, %3759
  %5826 = fmul fast float %5825, %5660
  %5827 = fmul fast float %5826, %5806
  %5828 = fmul fast float %5643, %3759
  %5829 = fmul fast float %5828, %5660
  %5830 = fmul fast float %5829, %5806
  %5831 = fmul fast float %5644, %3759
  %5832 = fmul fast float %5831, %5660
  %5833 = fmul fast float %5832, %5806
  %5834 = fadd fast float %5827, %5481
  %5835 = fadd fast float %5830, %5482
  %5836 = fadd fast float %5833, %5483
  %5837 = fmul fast float %5826, %5822
  %5838 = fmul fast float %5829, %5823
  %5839 = fmul fast float %5832, %5824
  %5840 = fadd fast float %5837, %5478
  %5841 = fadd fast float %5838, %5479
  %5842 = fadd fast float %5839, %5480
  br label %5556

; <label>:5843                                    ; preds = %5556
  br label %5844

; <label>:5844                                    ; preds = %5843, %5444
  %5845 = phi float [ %5446, %5444 ], [ %5557, %5843 ]
  %5846 = phi float [ %5447, %5444 ], [ %5558, %5843 ]
  %5847 = phi float [ %5448, %5444 ], [ %5559, %5843 ]
  %5848 = phi float [ %5449, %5444 ], [ %5560, %5843 ]
  %5849 = phi float [ %5450, %5444 ], [ %5561, %5843 ]
  %5850 = phi float [ %5451, %5444 ], [ %5562, %5843 ]
  %5851 = add i32 %5445, 1
  %5852 = icmp ugt i32 %5851, %5441
  br i1 %5852, label %5853, label %5444

; <label>:5853                                    ; preds = %5844
  br label %5854

; <label>:5854                                    ; preds = %5853, %5420, %5410
  %5855 = phi float [ %5411, %5410 ], [ %5411, %5420 ], [ %5845, %5853 ]
  %5856 = phi float [ %5412, %5410 ], [ %5412, %5420 ], [ %5846, %5853 ]
  %5857 = phi float [ %5413, %5410 ], [ %5413, %5420 ], [ %5847, %5853 ]
  %5858 = phi float [ %5414, %5410 ], [ %5414, %5420 ], [ %5848, %5853 ]
  %5859 = phi float [ %5415, %5410 ], [ %5415, %5420 ], [ %5849, %5853 ]
  %5860 = phi float [ %5416, %5410 ], [ %5416, %5420 ], [ %5850, %5853 ]
  %5861 = call float @dx.op.unary.f32(i32 24, float %4960)  ; Sqrt(value)
  %5862 = call float @dx.op.unary.f32(i32 24, float %4961)  ; Sqrt(value)
  %5863 = call float @dx.op.unary.f32(i32 24, float %4962)  ; Sqrt(value)
  %5864 = fmul fast float %5861, %5858
  %5865 = fmul fast float %5862, %5859
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  br i1 %217, label %5868, label %5897

; <label>:5868                                    ; preds = %5854
  %5869 = fadd fast float %5860, %3765
  %5870 = fmul fast float %5869, %3767
  %5871 = fsub fast float 1.000000e+00, %3767
  %5872 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5875 = fmul fast float %5874, %5872
  %5876 = fadd fast float %5875, %5870
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = fmul fast float %5878, %5150
  %5880 = fsub fast float %5876, %5879
  %5881 = fadd fast float %5865, %5864
  %5882 = fmul fast float %5867, %5881
  %5883 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5884 = fsub fast float %5880, %5883
  %5885 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5886 = fmul fast float %5884, %5885
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = fsub fast float %5887, %5889
  %5891 = fmul fast float %5890, 1.000000e+01
  %5892 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  %5893 = fadd fast float %3766, -1.000000e+00
  %5894 = fmul fast float %5892, %5893
  %5895 = fadd fast float %5894, 1.000000e+00
  %5896 = fmul fast float %5895, %5887
  br label %5913

; <label>:5897                                    ; preds = %5854
  %5898 = fmul fast float %5863, %5860
  %5899 = fmul fast float %5867, %5864
  %5900 = fmul fast float %5867, %5865
  %5901 = fmul fast float %5898, %5867
  %5902 = add i32 %33, 356
  %5903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.i32 %5903, 0
  %5905 = and i32 %5904, 32
  %5906 = icmp eq i32 %5905, 0
  br i1 %5906, label %5913, label %5907

; <label>:5907                                    ; preds = %5897
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = fmul fast float %5909, 0x3FE99999A0000000
  %5911 = fadd fast float %5909, %5899
  %5912 = fadd fast float %5910, %5901
  br label %5913

; <label>:5913                                    ; preds = %5907, %5897, %5868
  %5914 = phi float [ %5882, %5868 ], [ %5911, %5907 ], [ %5899, %5897 ]
  %5915 = phi float [ %5896, %5868 ], [ %5900, %5907 ], [ %5900, %5897 ]
  %5916 = phi float [ %5895, %5868 ], [ %5912, %5907 ], [ %5901, %5897 ]
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = fmul fast float %5918, %5856
  %5920 = fmul fast float %5918, %5857
  %5921 = fadd fast float %5856, %5855
  %5922 = select i1 %217, float %5921, float %5855
  %5923 = fmul float %5922, %5918
  %5924 = select i1 %217, float 0.000000e+00, float %5919
  %5925 = select i1 %217, float 0.000000e+00, float %5920
  %5926 = fmul fast float %5914, %5861
  %5927 = fmul fast float %5915, %5862
  %5928 = fmul fast float %5916, %5863
  %5929 = fadd fast float %5923, %5926
  %5930 = fadd fast float %5924, %5927
  %5931 = fadd fast float %5925, %5928
  %5932 = select i1 %217, float %5915, float %5930
  %5933 = select i1 %217, float %5916, float %5931
  %5934 = call float @dx.op.binary.f32(i32 36, float %5929, float 3.225500e+04)  ; FMin(a,b)
  %5935 = call float @dx.op.binary.f32(i32 36, float %5932, float 3.225500e+04)  ; FMin(a,b)
  %5936 = call float @dx.op.binary.f32(i32 36, float %5933, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

