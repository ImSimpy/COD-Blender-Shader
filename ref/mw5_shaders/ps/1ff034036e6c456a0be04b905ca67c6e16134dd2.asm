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
; ENTITY_IDS               0   xy         12     NONE    uint   x   
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
; shader hash: d0ff40a6a863563eef0b22189a30886e
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
; cbuffer 
; {
;
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb5     1
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
;                                   texture     f32          2d      T9             t0     1
;                                   texture     f32          2d     T10             t1     1
;                                   texture     f32          2d     T11             t2     1
;                                   texture     f32          2d     T12             t3     1
;                                   texture     f32          2d     T13             t4     1
;                                   texture     f32          2d     T14     t69,space2     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
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
%CinematicConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %78, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %79, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %168 = shl i32 %35, 5
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
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %78
  %185 = fmul fast float %183, %79
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %30, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %206, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %201, 0
  %215 = and i1 %200, %214
  br label %216

; <label>:216                                     ; preds = %213, %204
  %217 = phi i1 [ %212, %204 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %78, 2.560000e+02
  %222 = frem fast float %79, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %34, 216
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %231, 8
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %231, 16
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = add i32 %34, 36
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %34, 288
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %252, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = fmul fast float %254, 0x3F50624DE0000000
  %258 = fmul fast float %256, 0x3F50624DE0000000
  %259 = add i32 %34, 232
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %261, 8
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %261, 16
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = add i32 %34, 52
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %34, 304
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = fmul fast float %284, 0x3F50624DE0000000
  %288 = fmul fast float %286, 0x3F50624DE0000000
  %289 = add i32 %34, 248
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %34, 68
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %34, 320
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %34, 264
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %321, 8
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %321, 16
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = add i32 %34, 84
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %34, 336
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fmul fast float %344, 0x3F50624DE0000000
  %348 = fmul fast float %346, 0x3F50624DE0000000
  %349 = add i32 %34, 348
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 32
  %353 = icmp eq i32 %352, 0
  %354 = and i32 %351, 64
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %351, 128
  %357 = icmp eq i32 %356, 0
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 2
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %375, label %362

; <label>:362                                     ; preds = %216
  %363 = add i32 %34, 508
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = add i32 %365, 0
  %367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %367, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = extractvalue %dx.types.ResRet.f32 %368, 1
  %371 = extractvalue %dx.types.ResRet.f32 %368, 2
  %372 = fmul fast float %369, %68
  %373 = fmul fast float %370, %69
  %374 = fmul fast float %371, %70
  br label %375

; <label>:375                                     ; preds = %362, %216
  %376 = phi float [ %70, %216 ], [ %374, %362 ]
  %377 = phi float [ %69, %216 ], [ %373, %362 ]
  %378 = phi float [ %68, %216 ], [ %372, %362 ]
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 2
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %402, label %383

; <label>:383                                     ; preds = %375
  %384 = add i32 %34, 44
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 1
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %378, float 1.000000e+00
  %390 = add i32 %34, 60
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 1
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %394, float %377, float 1.000000e+00
  %396 = add i32 %34, 76
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 1
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %376, float 1.000000e+00
  br label %402

; <label>:402                                     ; preds = %383, %375
  %403 = phi float [ %376, %375 ], [ %401, %383 ]
  %404 = phi float [ %377, %375 ], [ %395, %383 ]
  %405 = phi float [ %378, %375 ], [ %389, %383 ]
  %406 = lshr i32 %380, 20
  %407 = and i32 %406, 3
  %408 = add nuw nsw i32 %407, 1
  %409 = add i32 %34, 24
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %34, 28
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = or i32 %414, %411
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %828, label %417

; <label>:417                                     ; preds = %402
  %418 = and i32 %411, 262144
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %39, float 1.000000e+00
  %421 = select i1 %419, float %40, float 0.000000e+00
  %422 = select i1 %419, float %41, float 0.000000e+00
  %423 = select i1 %419, float %42, float 1.000000e+00
  %424 = select i1 %419, float %43, float %66
  %425 = select i1 %419, float %44, float %67
  %426 = add i32 %34, 284
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = lshr i32 %428, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = fmul fast float %430, 0x3F50624DE0000000
  %432 = add i32 %34, 88
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 16
  %436 = and i32 %435, 255
  %437 = lshr i32 %434, 24
  %438 = add i32 %34, 292
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 65535
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %440, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = add i32 %34, 32
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 22
  %449 = shl nuw nsw i32 %448, 5
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = shl i32 %447, 4
  %452 = and i32 %451, 32752
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %447, 7
  %455 = and i32 %454, 32752
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 3
  %459 = fmul fast float %458, 1.000000e+03
  %460 = fmul fast float %257, %459
  %461 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %462 = fadd fast float %461, %247
  %463 = fmul fast float %258, %459
  %464 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %465 = fadd fast float %464, %249
  %466 = fmul fast float %431, %459
  %467 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %468 = fmul fast float %467, 0x401921FB60000000
  %469 = fadd fast float %468, %450
  %470 = call float @dx.op.unary.f32(i32 13, float %469)  ; Sin(value)
  %471 = call float @dx.op.unary.f32(i32 12, float %469)  ; Cos(value)
  %472 = fsub fast float -0.000000e+00, %470
  %473 = fadd fast float %424, -5.000000e-01
  %474 = fadd fast float %425, -5.000000e-01
  %475 = fmul fast float %442, %473
  %476 = fmul fast float %444, %474
  %477 = fadd fast float %475, 5.000000e-01
  %478 = fadd fast float %476, 5.000000e-01
  %479 = fmul fast float %453, %477
  %480 = fmul fast float %456, %478
  %481 = fmul fast float %471, %479
  %482 = call float @dx.op.tertiary.f32(i32 46, float %472, float %480, float %481)  ; FMad(a,b,c)
  %483 = fmul fast float %470, %479
  %484 = call float @dx.op.tertiary.f32(i32 46, float %471, float %480, float %483)  ; FMad(a,b,c)
  %485 = fadd fast float %462, %482
  %486 = fadd fast float %465, %484
  %487 = icmp ugt i32 %436, 1
  %488 = icmp ugt i32 %434, 33554431
  %489 = or i1 %488, %487
  br i1 %489, label %490, label %515

; <label>:490                                     ; preds = %417
  %491 = add i32 %34, 228
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = fmul fast float %458, %495
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = mul nuw nsw i32 %436, %437
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %497, %499
  %501 = call float @dx.op.unary.f32(i32 27, float %500)  ; Round_ni(value)
  %502 = fptoui float %501 to i32
  %503 = urem i32 %502, %436
  %504 = udiv i32 %502, %437
  %505 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %506 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %507 = uitofp i32 %503 to float
  %508 = uitofp i32 %504 to float
  %509 = fadd fast float %505, %507
  %510 = fadd fast float %506, %508
  %511 = uitofp i32 %436 to float
  %512 = uitofp i32 %437 to float
  %513 = fdiv fast float %509, %511
  %514 = fdiv fast float %510, %512
  br label %515

; <label>:515                                     ; preds = %490, %417
  %516 = phi float [ %513, %490 ], [ %485, %417 ]
  %517 = phi float [ %514, %490 ], [ %486, %417 ]
  %518 = and i32 %411, 16
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %716, label %520

; <label>:520                                     ; preds = %515
  %521 = add i32 %34, 392
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add i32 %523, 0
  %525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %525, %dx.types.Handle %74, float %516, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = extractvalue %dx.types.ResRet.f32 %526, 3
  %531 = and i32 %434, 255
  %532 = uitofp i32 %531 to float
  %533 = lshr i32 %434, 8
  %534 = and i32 %533, 255
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %530, %532
  %537 = fadd fast float %536, %535
  %538 = fmul fast float %537, 0x3F70101000000000
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 512
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %551, label %543

; <label>:543                                     ; preds = %520
  %544 = add i32 %34, 476
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %546, 0
  %548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %548, %dx.types.Handle %75, float %516, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  br label %551

; <label>:551                                     ; preds = %543, %520
  %552 = phi float [ %550, %543 ], [ 1.000000e+00, %520 ]
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 33554432
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %663, label %557

; <label>:557                                     ; preds = %551
  %558 = add i32 %34, 224
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %560, 16
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = add i32 %34, 228
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = and i32 %567, 65535
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = lshr i32 %571, 24
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = and i32 %571, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = lshr i32 %571, 8
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %571, 16
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = add i32 %34, 220
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 24
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = and i32 %588, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = lshr i32 %588, 8
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %588, 16
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = bitcast float %527 to i32
  %604 = ashr i32 %603, 1
  %605 = sub nsw i32 1597463174, %604
  %606 = bitcast i32 %605 to float
  %607 = fmul fast float %527, 5.000000e-01
  %608 = fmul fast float %606, %606
  %609 = fmul fast float %608, %607
  %610 = fsub fast float 1.500000e+00, %609
  %611 = fmul fast float %606, %527
  %612 = fmul fast float %611, %610
  %613 = bitcast float %528 to i32
  %614 = ashr i32 %613, 1
  %615 = sub nsw i32 1597463174, %614
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %528, 5.000000e-01
  %618 = fmul fast float %616, %616
  %619 = fmul fast float %618, %617
  %620 = fsub fast float 1.500000e+00, %619
  %621 = fmul fast float %616, %528
  %622 = fmul fast float %621, %620
  %623 = bitcast float %529 to i32
  %624 = ashr i32 %623, 1
  %625 = sub nsw i32 1597463174, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %529, 5.000000e-01
  %628 = fmul fast float %626, %626
  %629 = fmul fast float %628, %627
  %630 = fsub fast float 1.500000e+00, %629
  %631 = fmul fast float %626, %529
  %632 = fmul fast float %631, %630
  %633 = fsub fast float %612, %594
  %634 = fsub fast float %622, %598
  %635 = fsub fast float %632, %602
  %636 = fmul fast float %633, %562
  %637 = fmul fast float %634, %564
  %638 = fmul fast float %635, %569
  %639 = fadd fast float %636, %577
  %640 = fadd fast float %637, %581
  %641 = fadd fast float %638, %585
  %642 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %643 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %644 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %645 = fmul fast float %642, %642
  %646 = fmul fast float %643, %643
  %647 = fmul fast float %644, %644
  %648 = fsub fast float %645, %527
  %649 = fsub fast float %646, %528
  %650 = fsub fast float %647, %529
  %651 = fmul fast float %648, %552
  %652 = fmul fast float %649, %552
  %653 = fmul fast float %650, %552
  %654 = fadd fast float %651, %527
  %655 = fadd fast float %652, %528
  %656 = fadd fast float %653, %529
  %657 = fadd fast float %574, %538
  %658 = fsub fast float %657, %591
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = fsub fast float %659, %538
  %661 = fmul fast float %660, %552
  %662 = fadd fast float %661, %538
  br label %716

; <label>:663                                     ; preds = %551
  %664 = and i32 %554, 134217728
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %700, label %666

; <label>:666                                     ; preds = %663
  %667 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %668 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %669 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %670 = fadd fast float %667, -5.000000e-01
  %671 = fadd fast float %668, -5.000000e-01
  %672 = fadd fast float %669, -5.000000e-01
  %673 = fmul fast float %670, %552
  %674 = fmul fast float %671, %552
  %675 = fmul fast float %672, %552
  %676 = fadd fast float %673, 5.000000e-01
  %677 = fadd fast float %674, 5.000000e-01
  %678 = fadd fast float %675, 5.000000e-01
  %679 = call float @dx.op.unary.f32(i32 24, float %527)  ; Sqrt(value)
  %680 = call float @dx.op.unary.f32(i32 24, float %528)  ; Sqrt(value)
  %681 = call float @dx.op.unary.f32(i32 24, float %529)  ; Sqrt(value)
  %682 = fmul fast float %676, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %679
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %679
  %687 = fmul fast float %677, 2.000000e+00
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %680
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, %680
  %692 = fmul fast float %678, 2.000000e+00
  %693 = fsub fast float 1.000000e+00, %692
  %694 = fmul fast float %693, %681
  %695 = fadd fast float %694, %692
  %696 = fmul fast float %695, %681
  %697 = fmul fast float %686, %686
  %698 = fmul fast float %691, %691
  %699 = fmul fast float %696, %696
  br label %716

; <label>:700                                     ; preds = %663
  %701 = fmul fast float %234, %234
  %702 = fmul fast float %238, %238
  %703 = fmul fast float %242, %242
  %704 = fadd fast float %701, -1.000000e+00
  %705 = fadd fast float %702, -1.000000e+00
  %706 = fadd fast float %703, -1.000000e+00
  %707 = fmul fast float %552, %704
  %708 = fmul fast float %552, %705
  %709 = fmul fast float %552, %706
  %710 = fadd fast float %707, 1.000000e+00
  %711 = fadd fast float %708, 1.000000e+00
  %712 = fadd fast float %709, 1.000000e+00
  %713 = fmul fast float %710, %527
  %714 = fmul fast float %711, %528
  %715 = fmul fast float %712, %529
  br label %716

; <label>:716                                     ; preds = %700, %666, %557, %515
  %717 = phi float [ %662, %557 ], [ %538, %666 ], [ %538, %700 ], [ 0x3FA23C0BE0000000, %515 ]
  %718 = phi float [ %654, %557 ], [ %697, %666 ], [ %713, %700 ], [ 1.000000e+00, %515 ]
  %719 = phi float [ %655, %557 ], [ %698, %666 ], [ %714, %700 ], [ 1.000000e+00, %515 ]
  %720 = phi float [ %656, %557 ], [ %699, %666 ], [ %715, %700 ], [ 1.000000e+00, %515 ]
  %721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.i32 %721, 1
  %723 = and i32 %722, 1
  %724 = icmp ne i32 %723, 0
  %725 = add i32 %34, 356
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 32
  %729 = icmp ne i32 %728, 0
  %730 = and i1 %724, %729
  %731 = select i1 %730, float 1.000000e+00, float %718
  %732 = select i1 %730, float 0x3FD3333340000000, float %719
  %733 = select i1 %730, float 0x3FD3333340000000, float %720
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 32
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %810, label %738

; <label>:738                                     ; preds = %716
  %739 = add i32 %34, 92
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %34, 408
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %74, float %516, float %517, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = extractvalue %dx.types.ResRet.f32 %747, 3
  %752 = and i32 %741, 255
  %753 = uitofp i32 %752 to float
  %754 = lshr i32 %741, 8
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = lshr i32 %741, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101000000000
  %761 = fmul fast float %748, %753
  %762 = fadd fast float %761, %756
  %763 = fmul fast float %762, 0x3F70101000000000
  %764 = fadd fast float %749, -5.000000e-01
  %765 = fadd fast float %751, -5.000000e-01
  %766 = fmul fast float %764, %760
  %767 = fmul fast float %765, %760
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fmul fast float %768, 2.000000e+00
  %771 = fadd fast float %770, -1.000000e+00
  %772 = fmul fast float %769, 2.000000e+00
  %773 = fadd fast float %772, -1.000000e+00
  %774 = fadd fast float %771, %773
  %775 = fmul fast float %774, 5.000000e-01
  %776 = fsub fast float %771, %773
  %777 = fmul fast float %776, 5.000000e-01
  %778 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %779 = fsub fast float 1.000000e+00, %778
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float %779, %780
  %782 = call float @dx.op.dot3.f32(i32 55, float %775, float %777, float %781, float %775, float %777, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %775, %783
  %785 = fmul fast float %777, %783
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 67108864
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %806, label %790

; <label>:790                                     ; preds = %738
  %791 = add i32 %34, 280
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 65535
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 65535
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = lshr i32 %793, 16
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = fsub fast float %763, %801
  %803 = fmul fast float %802, %795
  %804 = fadd fast float %803, %799
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  br label %806

; <label>:806                                     ; preds = %790, %738
  %807 = phi float [ %805, %790 ], [ %763, %738 ]
  %808 = call float @dx.op.dot2.f32(i32 54, float %784, float %785, float %420, float %421)  ; Dot2(ax,ay,bx,by)
  %809 = call float @dx.op.dot2.f32(i32 54, float %784, float %785, float %422, float %423)  ; Dot2(ax,ay,bx,by)
  br label %810

; <label>:810                                     ; preds = %806, %716
  %811 = phi float [ %807, %806 ], [ 0x3FD6666660000000, %716 ]
  %812 = phi float [ %808, %806 ], [ 0.000000e+00, %716 ]
  %813 = phi float [ %809, %806 ], [ 0.000000e+00, %716 ]
  %814 = phi float [ %750, %806 ], [ 1.000000e+00, %716 ]
  %815 = add i32 %34, 96
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = lshr i32 %817, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = call float @dx.op.dot3.f32(i32 55, float %731, float %732, float %733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %824 = fmul fast float %822, %823
  %825 = fadd fast float %824, %819
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  br label %828

; <label>:828                                     ; preds = %810, %402
  %829 = phi float [ 0.000000e+00, %402 ], [ %812, %810 ]
  %830 = phi float [ 0.000000e+00, %402 ], [ %813, %810 ]
  %831 = phi float [ 0.000000e+00, %402 ], [ %731, %810 ]
  %832 = phi float [ 0.000000e+00, %402 ], [ %732, %810 ]
  %833 = phi float [ 0.000000e+00, %402 ], [ %733, %810 ]
  %834 = phi float [ 0.000000e+00, %402 ], [ %717, %810 ]
  %835 = phi float [ 0.000000e+00, %402 ], [ 1.000000e+00, %810 ]
  %836 = phi float [ 0.000000e+00, %402 ], [ %811, %810 ]
  %837 = phi float [ 0.000000e+00, %402 ], [ %814, %810 ]
  %838 = phi float [ 0.000000e+00, %402 ], [ %827, %810 ]
  br i1 %353, label %1497, label %839

; <label>:839                                     ; preds = %828
  %840 = icmp ult i32 %408, 2
  %841 = add i32 %34, 40
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %34, 44
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = or i32 %846, %843
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %1497, label %849

; <label>:849                                     ; preds = %839
  %850 = and i32 %843, 262144
  %851 = icmp ne i32 %850, 0
  %852 = select i1 %851, float %39, float 1.000000e+00
  %853 = select i1 %851, float %40, float 0.000000e+00
  %854 = select i1 %851, float %41, float 0.000000e+00
  %855 = select i1 %851, float %42, float 1.000000e+00
  %856 = select i1 %851, float %43, float %66
  %857 = select i1 %851, float %44, float %67
  %858 = add i32 %34, 300
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = lshr i32 %860, 16
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = fmul fast float %862, 0x3F50624DE0000000
  %864 = add i32 %34, 104
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = lshr i32 %866, 16
  %868 = and i32 %867, 255
  %869 = lshr i32 %866, 24
  %870 = add i32 %34, 308
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 65535
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = lshr i32 %872, 16
  %876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %875)  ; LegacyF16ToF32(value)
  %877 = add i32 %34, 48
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = lshr i32 %879, 22
  %881 = shl nuw nsw i32 %880, 5
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = shl i32 %879, 4
  %884 = and i32 %883, 32752
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = lshr i32 %879, 7
  %887 = and i32 %886, 32752
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = fmul fast float %890, 1.000000e+03
  %892 = fmul fast float %287, %891
  %893 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %894 = fadd fast float %893, %277
  %895 = fmul fast float %288, %891
  %896 = call float @dx.op.unary.f32(i32 22, float %895)  ; Frc(value)
  %897 = fadd fast float %896, %279
  %898 = fmul fast float %863, %891
  %899 = call float @dx.op.unary.f32(i32 22, float %898)  ; Frc(value)
  %900 = fmul fast float %899, 0x401921FB60000000
  %901 = fadd fast float %900, %882
  %902 = call float @dx.op.unary.f32(i32 13, float %901)  ; Sin(value)
  %903 = call float @dx.op.unary.f32(i32 12, float %901)  ; Cos(value)
  %904 = fsub fast float -0.000000e+00, %902
  %905 = fadd fast float %856, -5.000000e-01
  %906 = fadd fast float %857, -5.000000e-01
  %907 = fmul fast float %874, %905
  %908 = fmul fast float %876, %906
  %909 = fadd fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = fmul fast float %885, %909
  %912 = fmul fast float %888, %910
  %913 = fmul fast float %903, %911
  %914 = call float @dx.op.tertiary.f32(i32 46, float %904, float %912, float %913)  ; FMad(a,b,c)
  %915 = fmul fast float %902, %911
  %916 = call float @dx.op.tertiary.f32(i32 46, float %903, float %912, float %915)  ; FMad(a,b,c)
  %917 = fadd fast float %894, %914
  %918 = fadd fast float %897, %916
  %919 = icmp ugt i32 %868, 1
  %920 = icmp ugt i32 %866, 33554431
  %921 = or i1 %920, %919
  br i1 %921, label %922, label %947

; <label>:922                                     ; preds = %849
  %923 = add i32 %34, 244
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = lshr i32 %925, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = fmul fast float %890, %927
  %929 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %930 = mul nuw nsw i32 %868, %869
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %929, %931
  %933 = call float @dx.op.unary.f32(i32 27, float %932)  ; Round_ni(value)
  %934 = fptoui float %933 to i32
  %935 = urem i32 %934, %868
  %936 = udiv i32 %934, %869
  %937 = call float @dx.op.unary.f32(i32 22, float %917)  ; Frc(value)
  %938 = call float @dx.op.unary.f32(i32 22, float %918)  ; Frc(value)
  %939 = uitofp i32 %935 to float
  %940 = uitofp i32 %936 to float
  %941 = fadd fast float %937, %939
  %942 = fadd fast float %938, %940
  %943 = uitofp i32 %868 to float
  %944 = uitofp i32 %869 to float
  %945 = fdiv fast float %941, %943
  %946 = fdiv fast float %942, %944
  br label %947

; <label>:947                                     ; preds = %922, %849
  %948 = phi float [ %945, %922 ], [ %917, %849 ]
  %949 = phi float [ %946, %922 ], [ %918, %849 ]
  %950 = and i32 %843, 256
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %998, label %952

; <label>:952                                     ; preds = %947
  %953 = add i32 %34, 460
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = add i32 %955, 0
  %957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %957, %dx.types.Handle %75, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = add i32 %34, 116
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = shl i32 %962, 4
  %964 = and i32 %963, 32752
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = lshr i32 %962, 7
  %967 = and i32 %966, 32752
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = fsub fast float 1.000000e+00, %405
  %970 = call float @dx.op.binary.f32(i32 35, float %969, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %971 = bitcast float %405 to i32
  %972 = sitofp i32 %971 to float
  %973 = fadd fast float %972, 0xC1CFBF8940000000
  %974 = fmul fast float %968, %973
  %975 = fadd fast float %974, 0x41CFBF8940000000
  %976 = fptosi float %975 to i32
  %977 = bitcast i32 %976 to float
  %978 = bitcast float %970 to i32
  %979 = sitofp i32 %978 to float
  %980 = fadd fast float %979, 0xC1CFBF8940000000
  %981 = fmul fast float %980, %968
  %982 = fadd fast float %981, 0x41CFBF8940000000
  %983 = fptosi float %982 to i32
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %977, %965
  %986 = fmul fast float %984, %965
  %987 = fsub fast float %970, %985
  %988 = fadd fast float %986, %970
  %989 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %990 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %991 = fsub fast float %959, %989
  %992 = fsub fast float %990, %989
  %993 = bitcast float %992 to i32
  %994 = sub nsw i32 2129859010, %993
  %995 = bitcast i32 %994 to float
  %996 = fmul fast float %995, %991
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  br label %998

; <label>:998                                     ; preds = %952, %947
  %999 = phi float [ %997, %952 ], [ %405, %947 ]
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 128
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1020, label %1004

; <label>:1004                                    ; preds = %998
  %1005 = add i32 %34, 444
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1009, %dx.types.Handle %75, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 524288
  %1015 = icmp ne i32 %1014, 0
  %1016 = fcmp fast ogt float %1011, 0x3FE0101020000000
  %1017 = select i1 %1016, float 1.000000e+00, float 0.000000e+00
  %1018 = select i1 %1015, float %1017, float %1011
  %1019 = fmul fast float %1018, %999
  br label %1020

; <label>:1020                                    ; preds = %1004, %998
  %1021 = phi float [ %1019, %1004 ], [ %999, %998 ]
  %1022 = fcmp fast ult float %1021, 0x3F70101020000000
  br i1 %1022, label %1497, label %1023

; <label>:1023                                    ; preds = %1020
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 16
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1226, label %1028

; <label>:1028                                    ; preds = %1023
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %34, 396
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = add i32 %1033, 0
  %1035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1035, %dx.types.Handle %74, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = and i32 %1030, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1030, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1040, %1042
  %1047 = fadd fast float %1046, %1045
  %1048 = fmul fast float %1047, 0x3F70101000000000
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 512
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1061, label %1053

; <label>:1053                                    ; preds = %1028
  %1054 = add i32 %34, 480
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %75, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  br label %1061

; <label>:1061                                    ; preds = %1053, %1028
  %1062 = phi float [ %1060, %1053 ], [ 1.000000e+00, %1028 ]
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 33554432
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1173, label %1067

; <label>:1067                                    ; preds = %1061
  %1068 = add i32 %34, 240
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = lshr i32 %1070, 16
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = add i32 %34, 244
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = lshr i32 %1081, 24
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1083, 0x3F70101020000000
  %1085 = and i32 %1081, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = fmul fast float %1086, 0x3F70101020000000
  %1088 = lshr i32 %1081, 8
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1090, 0x3F70101020000000
  %1092 = lshr i32 %1081, 16
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3F70101020000000
  %1096 = add i32 %34, 236
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 24
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F70101020000000
  %1102 = and i32 %1098, 255
  %1103 = uitofp i32 %1102 to float
  %1104 = fmul fast float %1103, 0x3F70101020000000
  %1105 = lshr i32 %1098, 8
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = fmul fast float %1107, 0x3F70101020000000
  %1109 = lshr i32 %1098, 16
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = fmul fast float %1111, 0x3F70101020000000
  %1113 = bitcast float %1037 to i32
  %1114 = ashr i32 %1113, 1
  %1115 = sub nsw i32 1597463174, %1114
  %1116 = bitcast i32 %1115 to float
  %1117 = fmul fast float %1037, 5.000000e-01
  %1118 = fmul fast float %1116, %1116
  %1119 = fmul fast float %1118, %1117
  %1120 = fsub fast float 1.500000e+00, %1119
  %1121 = fmul fast float %1116, %1037
  %1122 = fmul fast float %1121, %1120
  %1123 = bitcast float %1038 to i32
  %1124 = ashr i32 %1123, 1
  %1125 = sub nsw i32 1597463174, %1124
  %1126 = bitcast i32 %1125 to float
  %1127 = fmul fast float %1038, 5.000000e-01
  %1128 = fmul fast float %1126, %1126
  %1129 = fmul fast float %1128, %1127
  %1130 = fsub fast float 1.500000e+00, %1129
  %1131 = fmul fast float %1126, %1038
  %1132 = fmul fast float %1131, %1130
  %1133 = bitcast float %1039 to i32
  %1134 = ashr i32 %1133, 1
  %1135 = sub nsw i32 1597463174, %1134
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1039, 5.000000e-01
  %1138 = fmul fast float %1136, %1136
  %1139 = fmul fast float %1138, %1137
  %1140 = fsub fast float 1.500000e+00, %1139
  %1141 = fmul fast float %1136, %1039
  %1142 = fmul fast float %1141, %1140
  %1143 = fsub fast float %1122, %1104
  %1144 = fsub fast float %1132, %1108
  %1145 = fsub fast float %1142, %1112
  %1146 = fmul fast float %1143, %1072
  %1147 = fmul fast float %1144, %1074
  %1148 = fmul fast float %1145, %1079
  %1149 = fadd fast float %1146, %1087
  %1150 = fadd fast float %1147, %1091
  %1151 = fadd fast float %1148, %1095
  %1152 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1153 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1154 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1155 = fmul fast float %1152, %1152
  %1156 = fmul fast float %1153, %1153
  %1157 = fmul fast float %1154, %1154
  %1158 = fsub fast float %1155, %1037
  %1159 = fsub fast float %1156, %1038
  %1160 = fsub fast float %1157, %1039
  %1161 = fmul fast float %1158, %1062
  %1162 = fmul fast float %1159, %1062
  %1163 = fmul fast float %1160, %1062
  %1164 = fadd fast float %1161, %1037
  %1165 = fadd fast float %1162, %1038
  %1166 = fadd fast float %1163, %1039
  %1167 = fadd fast float %1084, %1048
  %1168 = fsub fast float %1167, %1101
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1170 = fsub fast float %1169, %1048
  %1171 = fmul fast float %1170, %1062
  %1172 = fadd fast float %1171, %1048
  br label %1226

; <label>:1173                                    ; preds = %1061
  %1174 = and i32 %1064, 134217728
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1210, label %1176

; <label>:1176                                    ; preds = %1173
  %1177 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1178 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1179 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %1180 = fadd fast float %1177, -5.000000e-01
  %1181 = fadd fast float %1178, -5.000000e-01
  %1182 = fadd fast float %1179, -5.000000e-01
  %1183 = fmul fast float %1180, %1062
  %1184 = fmul fast float %1181, %1062
  %1185 = fmul fast float %1182, %1062
  %1186 = fadd fast float %1183, 5.000000e-01
  %1187 = fadd fast float %1184, 5.000000e-01
  %1188 = fadd fast float %1185, 5.000000e-01
  %1189 = call float @dx.op.unary.f32(i32 24, float %1037)  ; Sqrt(value)
  %1190 = call float @dx.op.unary.f32(i32 24, float %1038)  ; Sqrt(value)
  %1191 = call float @dx.op.unary.f32(i32 24, float %1039)  ; Sqrt(value)
  %1192 = fmul fast float %1186, 2.000000e+00
  %1193 = fsub fast float 1.000000e+00, %1192
  %1194 = fmul fast float %1193, %1189
  %1195 = fadd fast float %1194, %1192
  %1196 = fmul fast float %1195, %1189
  %1197 = fmul fast float %1187, 2.000000e+00
  %1198 = fsub fast float 1.000000e+00, %1197
  %1199 = fmul fast float %1198, %1190
  %1200 = fadd fast float %1199, %1197
  %1201 = fmul fast float %1200, %1190
  %1202 = fmul fast float %1188, 2.000000e+00
  %1203 = fsub fast float 1.000000e+00, %1202
  %1204 = fmul fast float %1203, %1191
  %1205 = fadd fast float %1204, %1202
  %1206 = fmul fast float %1205, %1191
  %1207 = fmul fast float %1196, %1196
  %1208 = fmul fast float %1201, %1201
  %1209 = fmul fast float %1206, %1206
  br label %1226

; <label>:1210                                    ; preds = %1173
  %1211 = fmul fast float %264, %264
  %1212 = fmul fast float %268, %268
  %1213 = fmul fast float %272, %272
  %1214 = fadd fast float %1211, -1.000000e+00
  %1215 = fadd fast float %1212, -1.000000e+00
  %1216 = fadd fast float %1213, -1.000000e+00
  %1217 = fmul fast float %1062, %1214
  %1218 = fmul fast float %1062, %1215
  %1219 = fmul fast float %1062, %1216
  %1220 = fadd fast float %1217, 1.000000e+00
  %1221 = fadd fast float %1218, 1.000000e+00
  %1222 = fadd fast float %1219, 1.000000e+00
  %1223 = fmul fast float %1220, %1037
  %1224 = fmul fast float %1221, %1038
  %1225 = fmul fast float %1222, %1039
  br label %1226

; <label>:1226                                    ; preds = %1210, %1176, %1067, %1023
  %1227 = phi float [ %1172, %1067 ], [ %1048, %1176 ], [ %1048, %1210 ], [ 0x3FA23C0BE0000000, %1023 ]
  %1228 = phi float [ %1164, %1067 ], [ %1207, %1176 ], [ %1223, %1210 ], [ 1.000000e+00, %1023 ]
  %1229 = phi float [ %1165, %1067 ], [ %1208, %1176 ], [ %1224, %1210 ], [ 1.000000e+00, %1023 ]
  %1230 = phi float [ %1166, %1067 ], [ %1209, %1176 ], [ %1225, %1210 ], [ 1.000000e+00, %1023 ]
  %1231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.i32 %1231, 1
  %1233 = and i32 %1232, 1
  %1234 = icmp ne i32 %1233, 0
  %1235 = add i32 %34, 356
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 32
  %1239 = icmp ne i32 %1238, 0
  %1240 = and i1 %1234, %1239
  %1241 = select i1 %1240, float 1.000000e+00, float %1228
  %1242 = select i1 %1240, float 0x3FD3333340000000, float %1229
  %1243 = select i1 %1240, float 0x3FD3333340000000, float %1230
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 32
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1320, label %1248

; <label>:1248                                    ; preds = %1226
  %1249 = add i32 %34, 108
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %34, 412
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %1254, 0
  %1256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1256, %dx.types.Handle %74, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = extractvalue %dx.types.ResRet.f32 %1257, 3
  %1262 = and i32 %1251, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = lshr i32 %1251, 8
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = lshr i32 %1251, 16
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101000000000
  %1271 = fmul fast float %1258, %1263
  %1272 = fadd fast float %1271, %1266
  %1273 = fmul fast float %1272, 0x3F70101000000000
  %1274 = fadd fast float %1259, -5.000000e-01
  %1275 = fadd fast float %1261, -5.000000e-01
  %1276 = fmul fast float %1274, %1270
  %1277 = fmul fast float %1275, %1270
  %1278 = fadd fast float %1276, 5.000000e-01
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fmul fast float %1278, 2.000000e+00
  %1281 = fadd fast float %1280, -1.000000e+00
  %1282 = fmul fast float %1279, 2.000000e+00
  %1283 = fadd fast float %1282, -1.000000e+00
  %1284 = fadd fast float %1281, %1283
  %1285 = fmul fast float %1284, 5.000000e-01
  %1286 = fsub fast float %1281, %1283
  %1287 = fmul fast float %1286, 5.000000e-01
  %1288 = call float @dx.op.unary.f32(i32 6, float %1285)  ; FAbs(value)
  %1289 = fsub fast float 1.000000e+00, %1288
  %1290 = call float @dx.op.unary.f32(i32 6, float %1287)  ; FAbs(value)
  %1291 = fsub fast float %1289, %1290
  %1292 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1287, float %1291, float %1285, float %1287, float %1291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1293 = call float @dx.op.unary.f32(i32 25, float %1292)  ; Rsqrt(value)
  %1294 = fmul fast float %1285, %1293
  %1295 = fmul fast float %1287, %1293
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 67108864
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1316, label %1300

; <label>:1300                                    ; preds = %1248
  %1301 = add i32 %34, 296
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 65535
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1303, 16
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = fsub fast float %1273, %1311
  %1313 = fmul fast float %1312, %1305
  %1314 = fadd fast float %1313, %1309
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  br label %1316

; <label>:1316                                    ; preds = %1300, %1248
  %1317 = phi float [ %1315, %1300 ], [ %1273, %1248 ]
  %1318 = call float @dx.op.dot2.f32(i32 54, float %1294, float %1295, float %852, float %853)  ; Dot2(ax,ay,bx,by)
  %1319 = call float @dx.op.dot2.f32(i32 54, float %1294, float %1295, float %854, float %855)  ; Dot2(ax,ay,bx,by)
  br label %1320

; <label>:1320                                    ; preds = %1316, %1226
  %1321 = phi float [ %1317, %1316 ], [ 0x3FD6666660000000, %1226 ]
  %1322 = phi float [ %1318, %1316 ], [ 0.000000e+00, %1226 ]
  %1323 = phi float [ %1319, %1316 ], [ 0.000000e+00, %1226 ]
  %1324 = phi float [ %1260, %1316 ], [ 1.000000e+00, %1226 ]
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = add i32 %34, 112
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = lshr i32 %1329, 8
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = fmul fast float %1334, %1335
  %1337 = fadd fast float %1336, %1331
  %1338 = fmul fast float %1337, 0x3F70101020000000
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  br i1 %840, label %1340, label %1345

; <label>:1340                                    ; preds = %1320
  %1341 = fsub fast float 1.000000e+00, %1021
  %1342 = fmul fast float %1341, %831
  %1343 = fmul fast float %1341, %832
  %1344 = fmul fast float %1341, %833
  br label %1345

; <label>:1345                                    ; preds = %1340, %1320
  %1346 = phi float [ %1342, %1340 ], [ %831, %1320 ]
  %1347 = phi float [ %1343, %1340 ], [ %832, %1320 ]
  %1348 = phi float [ %1344, %1340 ], [ %833, %1320 ]
  %1349 = and i32 %1326, 3
  %1350 = icmp eq i32 %1349, 3
  br i1 %1350, label %1417, label %1351

; <label>:1351                                    ; preds = %1345
  %1352 = and i32 %1326, 16
  %1353 = icmp ne i32 %1352, 0
  %1354 = select i1 %1353, float %1021, float 0.000000e+00
  %1355 = icmp eq i32 %1349, 0
  br i1 %1355, label %1356, label %1372

; <label>:1356                                    ; preds = %1351
  %1357 = fsub fast float %1241, %1346
  %1358 = fsub fast float %1242, %1347
  %1359 = fsub fast float %1243, %1348
  %1360 = fmul fast float %1354, %1357
  %1361 = fmul fast float %1354, %1358
  %1362 = fmul fast float %1354, %1359
  %1363 = fadd fast float %1360, %1346
  %1364 = fadd fast float %1361, %1347
  %1365 = fadd fast float %1362, %1348
  %1366 = fsub fast float %1227, %834
  %1367 = fmul fast float %1354, %1366
  %1368 = fadd fast float %1367, %834
  %1369 = fsub fast float %1339, %838
  %1370 = fmul fast float %1354, %1369
  %1371 = fadd fast float %1370, %838
  br label %1417

; <label>:1372                                    ; preds = %1351
  %1373 = icmp eq i32 %1349, 1
  br i1 %1373, label %1374, label %1387

; <label>:1374                                    ; preds = %1372
  %1375 = fadd fast float %1241, -1.000000e+00
  %1376 = fadd fast float %1242, -1.000000e+00
  %1377 = fadd fast float %1243, -1.000000e+00
  %1378 = fmul fast float %1354, %1375
  %1379 = fmul fast float %1354, %1376
  %1380 = fmul fast float %1354, %1377
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fadd fast float %1380, 1.000000e+00
  %1384 = fmul fast float %1381, %1346
  %1385 = fmul fast float %1382, %1347
  %1386 = fmul fast float %1383, %1348
  br label %1417

; <label>:1387                                    ; preds = %1372
  %1388 = icmp eq i32 %1349, 2
  br i1 %1388, label %1389, label %1417

; <label>:1389                                    ; preds = %1387
  %1390 = call float @dx.op.unary.f32(i32 24, float %1241)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %1243)  ; Sqrt(value)
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fmul fast float %1393, %1354
  %1397 = fmul fast float %1394, %1354
  %1398 = fmul fast float %1395, %1354
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fmul fast float %1399, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1346
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1346
  %1407 = fmul fast float %1400, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1347
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1347
  %1412 = fmul fast float %1401, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1348
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1348
  br label %1417

; <label>:1417                                    ; preds = %1389, %1387, %1374, %1356, %1345
  %1418 = phi float [ %1346, %1345 ], [ %1406, %1389 ], [ %1346, %1387 ], [ %1384, %1374 ], [ %1363, %1356 ]
  %1419 = phi float [ %1347, %1345 ], [ %1411, %1389 ], [ %1347, %1387 ], [ %1385, %1374 ], [ %1364, %1356 ]
  %1420 = phi float [ %1348, %1345 ], [ %1416, %1389 ], [ %1348, %1387 ], [ %1386, %1374 ], [ %1365, %1356 ]
  %1421 = phi float [ %834, %1345 ], [ %834, %1389 ], [ %834, %1387 ], [ %834, %1374 ], [ %1368, %1356 ]
  %1422 = phi float [ %838, %1345 ], [ %838, %1389 ], [ %838, %1387 ], [ %838, %1374 ], [ %1371, %1356 ]
  %1423 = and i32 %1326, 12
  %1424 = icmp eq i32 %1423, 12
  br i1 %1424, label %1497, label %1425

; <label>:1425                                    ; preds = %1417
  %1426 = and i32 %1326, 2097184
  %1427 = icmp eq i32 %1426, 2097184
  %1428 = select i1 %1427, float %1021, float 0.000000e+00
  %1429 = and i32 %1326, 4194336
  %1430 = icmp eq i32 %1429, 4194336
  %1431 = select i1 %1430, float %1021, float 0.000000e+00
  %1432 = and i32 %1326, 8388640
  %1433 = icmp eq i32 %1432, 8388640
  %1434 = select i1 %1433, float %1021, float 0.000000e+00
  %1435 = icmp eq i32 %1423, 0
  br i1 %1435, label %1436, label %1449

; <label>:1436                                    ; preds = %1425
  %1437 = fsub fast float %1322, %829
  %1438 = fsub fast float %1323, %830
  %1439 = fmul fast float %1428, %1437
  %1440 = fmul fast float %1428, %1438
  %1441 = fadd fast float %1439, %829
  %1442 = fadd fast float %1440, %830
  %1443 = fsub fast float %1324, %837
  %1444 = fmul fast float %1431, %1443
  %1445 = fadd fast float %1444, %837
  %1446 = fsub fast float %1321, %836
  %1447 = fmul fast float %1434, %1446
  %1448 = fadd fast float %1447, %836
  br label %1497

; <label>:1449                                    ; preds = %1425
  %1450 = icmp eq i32 %1423, 4
  br i1 %1450, label %1451, label %1483

; <label>:1451                                    ; preds = %1449
  %1452 = fmul fast float %1428, %1322
  %1453 = fmul fast float %1428, %1323
  %1454 = fadd fast float %1452, %829
  %1455 = fadd fast float %1453, %830
  %1456 = call float @dx.op.binary.f32(i32 36, float %837, float %1324)  ; FMin(a,b)
  %1457 = fsub fast float %1456, %837
  %1458 = fmul fast float %1457, %1431
  %1459 = fadd fast float %1458, %837
  %1460 = fadd fast float %1321, %836
  %1461 = fmul fast float %1460, 0x3FF337FAE0000000
  %1462 = fmul fast float %836, %836
  %1463 = fmul fast float %1321, %1321
  %1464 = fadd fast float %1463, %1462
  %1465 = fmul fast float %1464, 0x3FE5152B00000000
  %1466 = fmul fast float %836, 0xBFCC1F85E0000000
  %1467 = fmul fast float %1466, %1321
  %1468 = fadd fast float %1467, 0xBFE1363700000000
  %1469 = fadd fast float %1468, %1461
  %1470 = fsub fast float %1469, %1465
  %1471 = fmul fast float %1460, 0x3FBA6F0D00000000
  %1472 = fmul fast float %1464, 0x3FD0432880000000
  %1473 = fmul fast float %836, 0xBFEF110800000000
  %1474 = fmul fast float %1473, %1321
  %1475 = fadd fast float %1474, 1.000000e+00
  %1476 = fsub fast float %1475, %1471
  %1477 = fadd fast float %1476, %1472
  %1478 = fdiv fast float %1470, %1477
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = fsub fast float %1479, %836
  %1481 = fmul fast float %1480, %1434
  %1482 = fadd fast float %1481, %836
  br label %1497

; <label>:1483                                    ; preds = %1449
  %1484 = icmp eq i32 %1423, 8
  br i1 %1484, label %1485, label %1497

; <label>:1485                                    ; preds = %1483
  %1486 = fmul fast float %1428, %1322
  %1487 = fmul fast float %1428, %1323
  %1488 = fadd fast float %1486, %829
  %1489 = fadd fast float %1487, %830
  %1490 = call float @dx.op.binary.f32(i32 36, float %837, float %1324)  ; FMin(a,b)
  %1491 = fsub fast float %1490, %837
  %1492 = fmul fast float %1491, %1431
  %1493 = fadd fast float %1492, %837
  %1494 = fsub fast float %1321, %836
  %1495 = fmul fast float %1434, %1494
  %1496 = fadd fast float %1495, %836
  br label %1497

; <label>:1497                                    ; preds = %1485, %1483, %1451, %1436, %1417, %1020, %839, %828
  %1498 = phi float [ %829, %1417 ], [ %829, %1020 ], [ %829, %828 ], [ %1488, %1485 ], [ %829, %1483 ], [ %1454, %1451 ], [ %1441, %1436 ], [ %829, %839 ]
  %1499 = phi float [ %830, %1417 ], [ %830, %1020 ], [ %830, %828 ], [ %1489, %1485 ], [ %830, %1483 ], [ %1455, %1451 ], [ %1442, %1436 ], [ %830, %839 ]
  %1500 = phi float [ %1418, %1417 ], [ %831, %1020 ], [ %831, %828 ], [ %1418, %1485 ], [ %1418, %1483 ], [ %1418, %1451 ], [ %1418, %1436 ], [ %831, %839 ]
  %1501 = phi float [ %1419, %1417 ], [ %832, %1020 ], [ %832, %828 ], [ %1419, %1485 ], [ %1419, %1483 ], [ %1419, %1451 ], [ %1419, %1436 ], [ %832, %839 ]
  %1502 = phi float [ %1420, %1417 ], [ %833, %1020 ], [ %833, %828 ], [ %1420, %1485 ], [ %1420, %1483 ], [ %1420, %1451 ], [ %1420, %1436 ], [ %833, %839 ]
  %1503 = phi float [ %1421, %1417 ], [ %834, %1020 ], [ %834, %828 ], [ %1421, %1485 ], [ %1421, %1483 ], [ %1421, %1451 ], [ %1421, %1436 ], [ %834, %839 ]
  %1504 = phi float [ %836, %1417 ], [ %836, %1020 ], [ %836, %828 ], [ %1496, %1485 ], [ %836, %1483 ], [ %1482, %1451 ], [ %1448, %1436 ], [ %836, %839 ]
  %1505 = phi float [ %837, %1417 ], [ %837, %1020 ], [ %837, %828 ], [ %1493, %1485 ], [ %837, %1483 ], [ %1459, %1451 ], [ %1445, %1436 ], [ %837, %839 ]
  %1506 = phi float [ %1422, %1417 ], [ %838, %1020 ], [ %838, %828 ], [ %1422, %1485 ], [ %1422, %1483 ], [ %1422, %1451 ], [ %1422, %1436 ], [ %838, %839 ]
  br i1 %355, label %2165, label %1507

; <label>:1507                                    ; preds = %1497
  %1508 = icmp ult i32 %408, 3
  %1509 = add i32 %34, 56
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %34, 60
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = or i32 %1514, %1511
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %2165, label %1517

; <label>:1517                                    ; preds = %1507
  %1518 = and i32 %1511, 262144
  %1519 = icmp ne i32 %1518, 0
  %1520 = select i1 %1519, float %39, float 1.000000e+00
  %1521 = select i1 %1519, float %40, float 0.000000e+00
  %1522 = select i1 %1519, float %41, float 0.000000e+00
  %1523 = select i1 %1519, float %42, float 1.000000e+00
  %1524 = select i1 %1519, float %43, float %66
  %1525 = select i1 %1519, float %44, float %67
  %1526 = add i32 %34, 316
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = lshr i32 %1528, 16
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = fmul fast float %1530, 0x3F50624DE0000000
  %1532 = add i32 %34, 120
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = lshr i32 %1534, 16
  %1536 = and i32 %1535, 255
  %1537 = lshr i32 %1534, 24
  %1538 = add i32 %34, 324
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 65535
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = lshr i32 %1540, 16
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = add i32 %34, 64
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = lshr i32 %1547, 22
  %1549 = shl nuw nsw i32 %1548, 5
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = shl i32 %1547, 4
  %1552 = and i32 %1551, 32752
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = lshr i32 %1547, 7
  %1555 = and i32 %1554, 32752
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 3
  %1559 = fmul fast float %1558, 1.000000e+03
  %1560 = fmul fast float %317, %1559
  %1561 = call float @dx.op.unary.f32(i32 22, float %1560)  ; Frc(value)
  %1562 = fadd fast float %1561, %307
  %1563 = fmul fast float %318, %1559
  %1564 = call float @dx.op.unary.f32(i32 22, float %1563)  ; Frc(value)
  %1565 = fadd fast float %1564, %309
  %1566 = fmul fast float %1531, %1559
  %1567 = call float @dx.op.unary.f32(i32 22, float %1566)  ; Frc(value)
  %1568 = fmul fast float %1567, 0x401921FB60000000
  %1569 = fadd fast float %1568, %1550
  %1570 = call float @dx.op.unary.f32(i32 13, float %1569)  ; Sin(value)
  %1571 = call float @dx.op.unary.f32(i32 12, float %1569)  ; Cos(value)
  %1572 = fsub fast float -0.000000e+00, %1570
  %1573 = fadd fast float %1524, -5.000000e-01
  %1574 = fadd fast float %1525, -5.000000e-01
  %1575 = fmul fast float %1542, %1573
  %1576 = fmul fast float %1544, %1574
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = fmul fast float %1553, %1577
  %1580 = fmul fast float %1556, %1578
  %1581 = fmul fast float %1571, %1579
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1580, float %1581)  ; FMad(a,b,c)
  %1583 = fmul fast float %1570, %1579
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1571, float %1580, float %1583)  ; FMad(a,b,c)
  %1585 = fadd fast float %1562, %1582
  %1586 = fadd fast float %1565, %1584
  %1587 = icmp ugt i32 %1536, 1
  %1588 = icmp ugt i32 %1534, 33554431
  %1589 = or i1 %1588, %1587
  br i1 %1589, label %1590, label %1615

; <label>:1590                                    ; preds = %1517
  %1591 = add i32 %34, 260
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = lshr i32 %1593, 16
  %1595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1594)  ; LegacyF16ToF32(value)
  %1596 = fmul fast float %1558, %1595
  %1597 = call float @dx.op.unary.f32(i32 22, float %1596)  ; Frc(value)
  %1598 = mul nuw nsw i32 %1536, %1537
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1597, %1599
  %1601 = call float @dx.op.unary.f32(i32 27, float %1600)  ; Round_ni(value)
  %1602 = fptoui float %1601 to i32
  %1603 = urem i32 %1602, %1536
  %1604 = udiv i32 %1602, %1537
  %1605 = call float @dx.op.unary.f32(i32 22, float %1585)  ; Frc(value)
  %1606 = call float @dx.op.unary.f32(i32 22, float %1586)  ; Frc(value)
  %1607 = uitofp i32 %1603 to float
  %1608 = uitofp i32 %1604 to float
  %1609 = fadd fast float %1605, %1607
  %1610 = fadd fast float %1606, %1608
  %1611 = uitofp i32 %1536 to float
  %1612 = uitofp i32 %1537 to float
  %1613 = fdiv fast float %1609, %1611
  %1614 = fdiv fast float %1610, %1612
  br label %1615

; <label>:1615                                    ; preds = %1590, %1517
  %1616 = phi float [ %1613, %1590 ], [ %1585, %1517 ]
  %1617 = phi float [ %1614, %1590 ], [ %1586, %1517 ]
  %1618 = and i32 %1511, 256
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1666, label %1620

; <label>:1620                                    ; preds = %1615
  %1621 = add i32 %34, 464
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = add i32 %1623, 0
  %1625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1625, %dx.types.Handle %75, float %1616, float %1617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = add i32 %34, 132
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = shl i32 %1630, 4
  %1632 = and i32 %1631, 32752
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = lshr i32 %1630, 7
  %1635 = and i32 %1634, 32752
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = fsub fast float 1.000000e+00, %404
  %1638 = call float @dx.op.binary.f32(i32 35, float %1637, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1639 = bitcast float %404 to i32
  %1640 = sitofp i32 %1639 to float
  %1641 = fadd fast float %1640, 0xC1CFBF8940000000
  %1642 = fmul fast float %1636, %1641
  %1643 = fadd fast float %1642, 0x41CFBF8940000000
  %1644 = fptosi float %1643 to i32
  %1645 = bitcast i32 %1644 to float
  %1646 = bitcast float %1638 to i32
  %1647 = sitofp i32 %1646 to float
  %1648 = fadd fast float %1647, 0xC1CFBF8940000000
  %1649 = fmul fast float %1648, %1636
  %1650 = fadd fast float %1649, 0x41CFBF8940000000
  %1651 = fptosi float %1650 to i32
  %1652 = bitcast i32 %1651 to float
  %1653 = fmul fast float %1645, %1633
  %1654 = fmul fast float %1652, %1633
  %1655 = fsub fast float %1638, %1653
  %1656 = fadd fast float %1654, %1638
  %1657 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1659 = fsub fast float %1627, %1657
  %1660 = fsub fast float %1658, %1657
  %1661 = bitcast float %1660 to i32
  %1662 = sub nsw i32 2129859010, %1661
  %1663 = bitcast i32 %1662 to float
  %1664 = fmul fast float %1663, %1659
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  br label %1666

; <label>:1666                                    ; preds = %1620, %1615
  %1667 = phi float [ %1665, %1620 ], [ %404, %1615 ]
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 128
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1688, label %1672

; <label>:1672                                    ; preds = %1666
  %1673 = add i32 %34, 448
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = add i32 %1675, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1677, %dx.types.Handle %75, float %1616, float %1617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 524288
  %1683 = icmp ne i32 %1682, 0
  %1684 = fcmp fast ogt float %1679, 0x3FE0101020000000
  %1685 = select i1 %1684, float 1.000000e+00, float 0.000000e+00
  %1686 = select i1 %1683, float %1685, float %1679
  %1687 = fmul fast float %1686, %1667
  br label %1688

; <label>:1688                                    ; preds = %1672, %1666
  %1689 = phi float [ %1687, %1672 ], [ %1667, %1666 ]
  %1690 = fcmp fast ult float %1689, 0x3F70101020000000
  br i1 %1690, label %2165, label %1691

; <label>:1691                                    ; preds = %1688
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, 16
  %1695 = icmp eq i32 %1694, 0
  br i1 %1695, label %1894, label %1696

; <label>:1696                                    ; preds = %1691
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = add i32 %34, 400
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = add i32 %1701, 0
  %1703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1703, %dx.types.Handle %74, float %1616, float %1617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1708 = extractvalue %dx.types.ResRet.f32 %1704, 3
  %1709 = and i32 %1698, 255
  %1710 = uitofp i32 %1709 to float
  %1711 = lshr i32 %1698, 8
  %1712 = and i32 %1711, 255
  %1713 = uitofp i32 %1712 to float
  %1714 = fmul fast float %1708, %1710
  %1715 = fadd fast float %1714, %1713
  %1716 = fmul fast float %1715, 0x3F70101000000000
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 512
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1729, label %1721

; <label>:1721                                    ; preds = %1696
  %1722 = add i32 %34, 484
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = add i32 %1724, 0
  %1726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1726, %dx.types.Handle %75, float %1616, float %1617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  br label %1729

; <label>:1729                                    ; preds = %1721, %1696
  %1730 = phi float [ %1728, %1721 ], [ 1.000000e+00, %1696 ]
  %1731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1732 = extractvalue %dx.types.ResRet.i32 %1731, 0
  %1733 = and i32 %1732, 33554432
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1841, label %1735

; <label>:1735                                    ; preds = %1729
  %1736 = add i32 %34, 256
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 65535
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = lshr i32 %1738, 16
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = add i32 %34, 260
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 65535
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = lshr i32 %1749, 24
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101020000000
  %1753 = and i32 %1749, 255
  %1754 = uitofp i32 %1753 to float
  %1755 = fmul fast float %1754, 0x3F70101020000000
  %1756 = lshr i32 %1749, 8
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = fmul fast float %1758, 0x3F70101020000000
  %1760 = lshr i32 %1749, 16
  %1761 = and i32 %1760, 255
  %1762 = uitofp i32 %1761 to float
  %1763 = fmul fast float %1762, 0x3F70101020000000
  %1764 = add i32 %34, 252
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = lshr i32 %1766, 24
  %1768 = uitofp i32 %1767 to float
  %1769 = fmul fast float %1768, 0x3F70101020000000
  %1770 = and i32 %1766, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = fmul fast float %1771, 0x3F70101020000000
  %1773 = lshr i32 %1766, 8
  %1774 = and i32 %1773, 255
  %1775 = uitofp i32 %1774 to float
  %1776 = fmul fast float %1775, 0x3F70101020000000
  %1777 = lshr i32 %1766, 16
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = fmul fast float %1779, 0x3F70101020000000
  %1781 = bitcast float %1705 to i32
  %1782 = ashr i32 %1781, 1
  %1783 = sub nsw i32 1597463174, %1782
  %1784 = bitcast i32 %1783 to float
  %1785 = fmul fast float %1705, 5.000000e-01
  %1786 = fmul fast float %1784, %1784
  %1787 = fmul fast float %1786, %1785
  %1788 = fsub fast float 1.500000e+00, %1787
  %1789 = fmul fast float %1784, %1705
  %1790 = fmul fast float %1789, %1788
  %1791 = bitcast float %1706 to i32
  %1792 = ashr i32 %1791, 1
  %1793 = sub nsw i32 1597463174, %1792
  %1794 = bitcast i32 %1793 to float
  %1795 = fmul fast float %1706, 5.000000e-01
  %1796 = fmul fast float %1794, %1794
  %1797 = fmul fast float %1796, %1795
  %1798 = fsub fast float 1.500000e+00, %1797
  %1799 = fmul fast float %1794, %1706
  %1800 = fmul fast float %1799, %1798
  %1801 = bitcast float %1707 to i32
  %1802 = ashr i32 %1801, 1
  %1803 = sub nsw i32 1597463174, %1802
  %1804 = bitcast i32 %1803 to float
  %1805 = fmul fast float %1707, 5.000000e-01
  %1806 = fmul fast float %1804, %1804
  %1807 = fmul fast float %1806, %1805
  %1808 = fsub fast float 1.500000e+00, %1807
  %1809 = fmul fast float %1804, %1707
  %1810 = fmul fast float %1809, %1808
  %1811 = fsub fast float %1790, %1772
  %1812 = fsub fast float %1800, %1776
  %1813 = fsub fast float %1810, %1780
  %1814 = fmul fast float %1811, %1740
  %1815 = fmul fast float %1812, %1742
  %1816 = fmul fast float %1813, %1747
  %1817 = fadd fast float %1814, %1755
  %1818 = fadd fast float %1815, %1759
  %1819 = fadd fast float %1816, %1763
  %1820 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1821 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1822 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1823 = fmul fast float %1820, %1820
  %1824 = fmul fast float %1821, %1821
  %1825 = fmul fast float %1822, %1822
  %1826 = fsub fast float %1823, %1705
  %1827 = fsub fast float %1824, %1706
  %1828 = fsub fast float %1825, %1707
  %1829 = fmul fast float %1826, %1730
  %1830 = fmul fast float %1827, %1730
  %1831 = fmul fast float %1828, %1730
  %1832 = fadd fast float %1829, %1705
  %1833 = fadd fast float %1830, %1706
  %1834 = fadd fast float %1831, %1707
  %1835 = fadd fast float %1752, %1716
  %1836 = fsub fast float %1835, %1769
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = fsub fast float %1837, %1716
  %1839 = fmul fast float %1838, %1730
  %1840 = fadd fast float %1839, %1716
  br label %1894

; <label>:1841                                    ; preds = %1729
  %1842 = and i32 %1732, 134217728
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1878, label %1844

; <label>:1844                                    ; preds = %1841
  %1845 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1846 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1847 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1848 = fadd fast float %1845, -5.000000e-01
  %1849 = fadd fast float %1846, -5.000000e-01
  %1850 = fadd fast float %1847, -5.000000e-01
  %1851 = fmul fast float %1848, %1730
  %1852 = fmul fast float %1849, %1730
  %1853 = fmul fast float %1850, %1730
  %1854 = fadd fast float %1851, 5.000000e-01
  %1855 = fadd fast float %1852, 5.000000e-01
  %1856 = fadd fast float %1853, 5.000000e-01
  %1857 = call float @dx.op.unary.f32(i32 24, float %1705)  ; Sqrt(value)
  %1858 = call float @dx.op.unary.f32(i32 24, float %1706)  ; Sqrt(value)
  %1859 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1860 = fmul fast float %1854, 2.000000e+00
  %1861 = fsub fast float 1.000000e+00, %1860
  %1862 = fmul fast float %1861, %1857
  %1863 = fadd fast float %1862, %1860
  %1864 = fmul fast float %1863, %1857
  %1865 = fmul fast float %1855, 2.000000e+00
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = fmul fast float %1866, %1858
  %1868 = fadd fast float %1867, %1865
  %1869 = fmul fast float %1868, %1858
  %1870 = fmul fast float %1856, 2.000000e+00
  %1871 = fsub fast float 1.000000e+00, %1870
  %1872 = fmul fast float %1871, %1859
  %1873 = fadd fast float %1872, %1870
  %1874 = fmul fast float %1873, %1859
  %1875 = fmul fast float %1864, %1864
  %1876 = fmul fast float %1869, %1869
  %1877 = fmul fast float %1874, %1874
  br label %1894

; <label>:1878                                    ; preds = %1841
  %1879 = fmul fast float %294, %294
  %1880 = fmul fast float %298, %298
  %1881 = fmul fast float %302, %302
  %1882 = fadd fast float %1879, -1.000000e+00
  %1883 = fadd fast float %1880, -1.000000e+00
  %1884 = fadd fast float %1881, -1.000000e+00
  %1885 = fmul fast float %1730, %1882
  %1886 = fmul fast float %1730, %1883
  %1887 = fmul fast float %1730, %1884
  %1888 = fadd fast float %1885, 1.000000e+00
  %1889 = fadd fast float %1886, 1.000000e+00
  %1890 = fadd fast float %1887, 1.000000e+00
  %1891 = fmul fast float %1888, %1705
  %1892 = fmul fast float %1889, %1706
  %1893 = fmul fast float %1890, %1707
  br label %1894

; <label>:1894                                    ; preds = %1878, %1844, %1735, %1691
  %1895 = phi float [ %1840, %1735 ], [ %1716, %1844 ], [ %1716, %1878 ], [ 0x3FA23C0BE0000000, %1691 ]
  %1896 = phi float [ %1832, %1735 ], [ %1875, %1844 ], [ %1891, %1878 ], [ 1.000000e+00, %1691 ]
  %1897 = phi float [ %1833, %1735 ], [ %1876, %1844 ], [ %1892, %1878 ], [ 1.000000e+00, %1691 ]
  %1898 = phi float [ %1834, %1735 ], [ %1877, %1844 ], [ %1893, %1878 ], [ 1.000000e+00, %1691 ]
  %1899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.i32 %1899, 1
  %1901 = and i32 %1900, 1
  %1902 = icmp ne i32 %1901, 0
  %1903 = add i32 %34, 356
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 32
  %1907 = icmp ne i32 %1906, 0
  %1908 = and i1 %1902, %1907
  %1909 = select i1 %1908, float 1.000000e+00, float %1896
  %1910 = select i1 %1908, float 0x3FD3333340000000, float %1897
  %1911 = select i1 %1908, float 0x3FD3333340000000, float %1898
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 32
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %1988, label %1916

; <label>:1916                                    ; preds = %1894
  %1917 = add i32 %34, 124
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = add i32 %34, 416
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %74, float %1616, float %1617, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = extractvalue %dx.types.ResRet.f32 %1925, 3
  %1930 = and i32 %1919, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = lshr i32 %1919, 8
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = lshr i32 %1919, 16
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1937, 0x3F70101000000000
  %1939 = fmul fast float %1926, %1931
  %1940 = fadd fast float %1939, %1934
  %1941 = fmul fast float %1940, 0x3F70101000000000
  %1942 = fadd fast float %1927, -5.000000e-01
  %1943 = fadd fast float %1929, -5.000000e-01
  %1944 = fmul fast float %1942, %1938
  %1945 = fmul fast float %1943, %1938
  %1946 = fadd fast float %1944, 5.000000e-01
  %1947 = fadd fast float %1945, 5.000000e-01
  %1948 = fmul fast float %1946, 2.000000e+00
  %1949 = fadd fast float %1948, -1.000000e+00
  %1950 = fmul fast float %1947, 2.000000e+00
  %1951 = fadd fast float %1950, -1.000000e+00
  %1952 = fadd fast float %1949, %1951
  %1953 = fmul fast float %1952, 5.000000e-01
  %1954 = fsub fast float %1949, %1951
  %1955 = fmul fast float %1954, 5.000000e-01
  %1956 = call float @dx.op.unary.f32(i32 6, float %1953)  ; FAbs(value)
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = call float @dx.op.unary.f32(i32 6, float %1955)  ; FAbs(value)
  %1959 = fsub fast float %1957, %1958
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1955, float %1959, float %1953, float %1955, float %1959)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = call float @dx.op.unary.f32(i32 25, float %1960)  ; Rsqrt(value)
  %1962 = fmul fast float %1953, %1961
  %1963 = fmul fast float %1955, %1961
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 67108864
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %1984, label %1968

; <label>:1968                                    ; preds = %1916
  %1969 = add i32 %34, 312
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 65535
  %1973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1972)  ; LegacyF16ToF32(value)
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 65535
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = lshr i32 %1971, 16
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = fsub fast float %1941, %1979
  %1981 = fmul fast float %1980, %1973
  %1982 = fadd fast float %1981, %1977
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  br label %1984

; <label>:1984                                    ; preds = %1968, %1916
  %1985 = phi float [ %1983, %1968 ], [ %1941, %1916 ]
  %1986 = call float @dx.op.dot2.f32(i32 54, float %1962, float %1963, float %1520, float %1521)  ; Dot2(ax,ay,bx,by)
  %1987 = call float @dx.op.dot2.f32(i32 54, float %1962, float %1963, float %1522, float %1523)  ; Dot2(ax,ay,bx,by)
  br label %1988

; <label>:1988                                    ; preds = %1984, %1894
  %1989 = phi float [ %1985, %1984 ], [ 0x3FD6666660000000, %1894 ]
  %1990 = phi float [ %1986, %1984 ], [ 0.000000e+00, %1894 ]
  %1991 = phi float [ %1987, %1984 ], [ 0.000000e+00, %1894 ]
  %1992 = phi float [ %1928, %1984 ], [ 1.000000e+00, %1894 ]
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %34, 128
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = lshr i32 %1997, 8
  %2001 = and i32 %2000, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1910, float %1911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = fmul fast float %2002, %2003
  %2005 = fadd fast float %2004, %1999
  %2006 = fmul fast float %2005, 0x3F70101020000000
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  br i1 %1508, label %2008, label %2013

; <label>:2008                                    ; preds = %1988
  %2009 = fsub fast float 1.000000e+00, %1689
  %2010 = fmul fast float %2009, %1500
  %2011 = fmul fast float %2009, %1501
  %2012 = fmul fast float %2009, %1502
  br label %2013

; <label>:2013                                    ; preds = %2008, %1988
  %2014 = phi float [ %2010, %2008 ], [ %1500, %1988 ]
  %2015 = phi float [ %2011, %2008 ], [ %1501, %1988 ]
  %2016 = phi float [ %2012, %2008 ], [ %1502, %1988 ]
  %2017 = and i32 %1994, 3
  %2018 = icmp eq i32 %2017, 3
  br i1 %2018, label %2085, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = and i32 %1994, 16
  %2021 = icmp ne i32 %2020, 0
  %2022 = select i1 %2021, float %1689, float 0.000000e+00
  %2023 = icmp eq i32 %2017, 0
  br i1 %2023, label %2024, label %2040

; <label>:2024                                    ; preds = %2019
  %2025 = fsub fast float %1909, %2014
  %2026 = fsub fast float %1910, %2015
  %2027 = fsub fast float %1911, %2016
  %2028 = fmul fast float %2022, %2025
  %2029 = fmul fast float %2022, %2026
  %2030 = fmul fast float %2022, %2027
  %2031 = fadd fast float %2028, %2014
  %2032 = fadd fast float %2029, %2015
  %2033 = fadd fast float %2030, %2016
  %2034 = fsub fast float %1895, %1503
  %2035 = fmul fast float %2022, %2034
  %2036 = fadd fast float %2035, %1503
  %2037 = fsub fast float %2007, %1506
  %2038 = fmul fast float %2022, %2037
  %2039 = fadd fast float %2038, %1506
  br label %2085

; <label>:2040                                    ; preds = %2019
  %2041 = icmp eq i32 %2017, 1
  br i1 %2041, label %2042, label %2055

; <label>:2042                                    ; preds = %2040
  %2043 = fadd fast float %1909, -1.000000e+00
  %2044 = fadd fast float %1910, -1.000000e+00
  %2045 = fadd fast float %1911, -1.000000e+00
  %2046 = fmul fast float %2022, %2043
  %2047 = fmul fast float %2022, %2044
  %2048 = fmul fast float %2022, %2045
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fadd fast float %2048, 1.000000e+00
  %2052 = fmul fast float %2049, %2014
  %2053 = fmul fast float %2050, %2015
  %2054 = fmul fast float %2051, %2016
  br label %2085

; <label>:2055                                    ; preds = %2040
  %2056 = icmp eq i32 %2017, 2
  br i1 %2056, label %2057, label %2085

; <label>:2057                                    ; preds = %2055
  %2058 = call float @dx.op.unary.f32(i32 24, float %1909)  ; Sqrt(value)
  %2059 = call float @dx.op.unary.f32(i32 24, float %1910)  ; Sqrt(value)
  %2060 = call float @dx.op.unary.f32(i32 24, float %1911)  ; Sqrt(value)
  %2061 = fadd fast float %2058, -5.000000e-01
  %2062 = fadd fast float %2059, -5.000000e-01
  %2063 = fadd fast float %2060, -5.000000e-01
  %2064 = fmul fast float %2061, %2022
  %2065 = fmul fast float %2062, %2022
  %2066 = fmul fast float %2063, %2022
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = fmul fast float %2067, 2.000000e+00
  %2071 = fsub fast float 1.000000e+00, %2070
  %2072 = fmul fast float %2071, %2014
  %2073 = fadd fast float %2072, %2070
  %2074 = fmul fast float %2073, %2014
  %2075 = fmul fast float %2068, 2.000000e+00
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = fmul fast float %2076, %2015
  %2078 = fadd fast float %2077, %2075
  %2079 = fmul fast float %2078, %2015
  %2080 = fmul fast float %2069, 2.000000e+00
  %2081 = fsub fast float 1.000000e+00, %2080
  %2082 = fmul fast float %2081, %2016
  %2083 = fadd fast float %2082, %2080
  %2084 = fmul fast float %2083, %2016
  br label %2085

; <label>:2085                                    ; preds = %2057, %2055, %2042, %2024, %2013
  %2086 = phi float [ %2014, %2013 ], [ %2074, %2057 ], [ %2014, %2055 ], [ %2052, %2042 ], [ %2031, %2024 ]
  %2087 = phi float [ %2015, %2013 ], [ %2079, %2057 ], [ %2015, %2055 ], [ %2053, %2042 ], [ %2032, %2024 ]
  %2088 = phi float [ %2016, %2013 ], [ %2084, %2057 ], [ %2016, %2055 ], [ %2054, %2042 ], [ %2033, %2024 ]
  %2089 = phi float [ %1503, %2013 ], [ %1503, %2057 ], [ %1503, %2055 ], [ %1503, %2042 ], [ %2036, %2024 ]
  %2090 = phi float [ %1506, %2013 ], [ %1506, %2057 ], [ %1506, %2055 ], [ %1506, %2042 ], [ %2039, %2024 ]
  %2091 = and i32 %1994, 12
  %2092 = icmp eq i32 %2091, 12
  br i1 %2092, label %2165, label %2093

; <label>:2093                                    ; preds = %2085
  %2094 = and i32 %1994, 2097184
  %2095 = icmp eq i32 %2094, 2097184
  %2096 = select i1 %2095, float %1689, float 0.000000e+00
  %2097 = and i32 %1994, 4194336
  %2098 = icmp eq i32 %2097, 4194336
  %2099 = select i1 %2098, float %1689, float 0.000000e+00
  %2100 = and i32 %1994, 8388640
  %2101 = icmp eq i32 %2100, 8388640
  %2102 = select i1 %2101, float %1689, float 0.000000e+00
  %2103 = icmp eq i32 %2091, 0
  br i1 %2103, label %2104, label %2117

; <label>:2104                                    ; preds = %2093
  %2105 = fsub fast float %1990, %1498
  %2106 = fsub fast float %1991, %1499
  %2107 = fmul fast float %2096, %2105
  %2108 = fmul fast float %2096, %2106
  %2109 = fadd fast float %2107, %1498
  %2110 = fadd fast float %2108, %1499
  %2111 = fsub fast float %1992, %1505
  %2112 = fmul fast float %2099, %2111
  %2113 = fadd fast float %2112, %1505
  %2114 = fsub fast float %1989, %1504
  %2115 = fmul fast float %2102, %2114
  %2116 = fadd fast float %2115, %1504
  br label %2165

; <label>:2117                                    ; preds = %2093
  %2118 = icmp eq i32 %2091, 4
  br i1 %2118, label %2119, label %2151

; <label>:2119                                    ; preds = %2117
  %2120 = fmul fast float %2096, %1990
  %2121 = fmul fast float %2096, %1991
  %2122 = fadd fast float %2120, %1498
  %2123 = fadd fast float %2121, %1499
  %2124 = call float @dx.op.binary.f32(i32 36, float %1505, float %1992)  ; FMin(a,b)
  %2125 = fsub fast float %2124, %1505
  %2126 = fmul fast float %2125, %2099
  %2127 = fadd fast float %2126, %1505
  %2128 = fadd fast float %1989, %1504
  %2129 = fmul fast float %2128, 0x3FF337FAE0000000
  %2130 = fmul fast float %1504, %1504
  %2131 = fmul fast float %1989, %1989
  %2132 = fadd fast float %2131, %2130
  %2133 = fmul fast float %2132, 0x3FE5152B00000000
  %2134 = fmul fast float %1504, 0xBFCC1F85E0000000
  %2135 = fmul fast float %2134, %1989
  %2136 = fadd fast float %2135, 0xBFE1363700000000
  %2137 = fadd fast float %2136, %2129
  %2138 = fsub fast float %2137, %2133
  %2139 = fmul fast float %2128, 0x3FBA6F0D00000000
  %2140 = fmul fast float %2132, 0x3FD0432880000000
  %2141 = fmul fast float %1504, 0xBFEF110800000000
  %2142 = fmul fast float %2141, %1989
  %2143 = fadd fast float %2142, 1.000000e+00
  %2144 = fsub fast float %2143, %2139
  %2145 = fadd fast float %2144, %2140
  %2146 = fdiv fast float %2138, %2145
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fsub fast float %2147, %1504
  %2149 = fmul fast float %2148, %2102
  %2150 = fadd fast float %2149, %1504
  br label %2165

; <label>:2151                                    ; preds = %2117
  %2152 = icmp eq i32 %2091, 8
  br i1 %2152, label %2153, label %2165

; <label>:2153                                    ; preds = %2151
  %2154 = fmul fast float %2096, %1990
  %2155 = fmul fast float %2096, %1991
  %2156 = fadd fast float %2154, %1498
  %2157 = fadd fast float %2155, %1499
  %2158 = call float @dx.op.binary.f32(i32 36, float %1505, float %1992)  ; FMin(a,b)
  %2159 = fsub fast float %2158, %1505
  %2160 = fmul fast float %2159, %2099
  %2161 = fadd fast float %2160, %1505
  %2162 = fsub fast float %1989, %1504
  %2163 = fmul fast float %2102, %2162
  %2164 = fadd fast float %2163, %1504
  br label %2165

; <label>:2165                                    ; preds = %2153, %2151, %2119, %2104, %2085, %1688, %1507, %1497
  %2166 = phi float [ %1498, %2085 ], [ %1498, %1688 ], [ %1498, %1497 ], [ %2156, %2153 ], [ %1498, %2151 ], [ %2122, %2119 ], [ %2109, %2104 ], [ %1498, %1507 ]
  %2167 = phi float [ %1499, %2085 ], [ %1499, %1688 ], [ %1499, %1497 ], [ %2157, %2153 ], [ %1499, %2151 ], [ %2123, %2119 ], [ %2110, %2104 ], [ %1499, %1507 ]
  %2168 = phi float [ %2086, %2085 ], [ %1500, %1688 ], [ %1500, %1497 ], [ %2086, %2153 ], [ %2086, %2151 ], [ %2086, %2119 ], [ %2086, %2104 ], [ %1500, %1507 ]
  %2169 = phi float [ %2087, %2085 ], [ %1501, %1688 ], [ %1501, %1497 ], [ %2087, %2153 ], [ %2087, %2151 ], [ %2087, %2119 ], [ %2087, %2104 ], [ %1501, %1507 ]
  %2170 = phi float [ %2088, %2085 ], [ %1502, %1688 ], [ %1502, %1497 ], [ %2088, %2153 ], [ %2088, %2151 ], [ %2088, %2119 ], [ %2088, %2104 ], [ %1502, %1507 ]
  %2171 = phi float [ %2089, %2085 ], [ %1503, %1688 ], [ %1503, %1497 ], [ %2089, %2153 ], [ %2089, %2151 ], [ %2089, %2119 ], [ %2089, %2104 ], [ %1503, %1507 ]
  %2172 = phi float [ %1504, %2085 ], [ %1504, %1688 ], [ %1504, %1497 ], [ %2164, %2153 ], [ %1504, %2151 ], [ %2150, %2119 ], [ %2116, %2104 ], [ %1504, %1507 ]
  %2173 = phi float [ %1505, %2085 ], [ %1505, %1688 ], [ %1505, %1497 ], [ %2161, %2153 ], [ %1505, %2151 ], [ %2127, %2119 ], [ %2113, %2104 ], [ %1505, %1507 ]
  %2174 = phi float [ %2090, %2085 ], [ %1506, %1688 ], [ %1506, %1497 ], [ %2090, %2153 ], [ %2090, %2151 ], [ %2090, %2119 ], [ %2090, %2104 ], [ %1506, %1507 ]
  br i1 %357, label %2833, label %2175

; <label>:2175                                    ; preds = %2165
  %2176 = icmp ult i32 %408, 4
  %2177 = add i32 %34, 72
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = add i32 %34, 76
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = or i32 %2182, %2179
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2833, label %2185

; <label>:2185                                    ; preds = %2175
  %2186 = and i32 %2179, 262144
  %2187 = icmp ne i32 %2186, 0
  %2188 = select i1 %2187, float %39, float 1.000000e+00
  %2189 = select i1 %2187, float %40, float 0.000000e+00
  %2190 = select i1 %2187, float %41, float 0.000000e+00
  %2191 = select i1 %2187, float %42, float 1.000000e+00
  %2192 = select i1 %2187, float %43, float %66
  %2193 = select i1 %2187, float %44, float %67
  %2194 = add i32 %34, 332
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = lshr i32 %2196, 16
  %2198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2197)  ; LegacyF16ToF32(value)
  %2199 = fmul fast float %2198, 0x3F50624DE0000000
  %2200 = add i32 %34, 136
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = lshr i32 %2202, 16
  %2204 = and i32 %2203, 255
  %2205 = lshr i32 %2202, 24
  %2206 = add i32 %34, 340
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 65535
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = lshr i32 %2208, 16
  %2212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2211)  ; LegacyF16ToF32(value)
  %2213 = add i32 %34, 80
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = lshr i32 %2215, 22
  %2217 = shl nuw nsw i32 %2216, 5
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = shl i32 %2215, 4
  %2220 = and i32 %2219, 32752
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = lshr i32 %2215, 7
  %2223 = and i32 %2222, 32752
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 3
  %2227 = fmul fast float %2226, 1.000000e+03
  %2228 = fmul fast float %347, %2227
  %2229 = call float @dx.op.unary.f32(i32 22, float %2228)  ; Frc(value)
  %2230 = fadd fast float %2229, %337
  %2231 = fmul fast float %348, %2227
  %2232 = call float @dx.op.unary.f32(i32 22, float %2231)  ; Frc(value)
  %2233 = fadd fast float %2232, %339
  %2234 = fmul fast float %2199, %2227
  %2235 = call float @dx.op.unary.f32(i32 22, float %2234)  ; Frc(value)
  %2236 = fmul fast float %2235, 0x401921FB60000000
  %2237 = fadd fast float %2236, %2218
  %2238 = call float @dx.op.unary.f32(i32 13, float %2237)  ; Sin(value)
  %2239 = call float @dx.op.unary.f32(i32 12, float %2237)  ; Cos(value)
  %2240 = fsub fast float -0.000000e+00, %2238
  %2241 = fadd fast float %2192, -5.000000e-01
  %2242 = fadd fast float %2193, -5.000000e-01
  %2243 = fmul fast float %2210, %2241
  %2244 = fmul fast float %2212, %2242
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fadd fast float %2244, 5.000000e-01
  %2247 = fmul fast float %2221, %2245
  %2248 = fmul fast float %2224, %2246
  %2249 = fmul fast float %2239, %2247
  %2250 = call float @dx.op.tertiary.f32(i32 46, float %2240, float %2248, float %2249)  ; FMad(a,b,c)
  %2251 = fmul fast float %2238, %2247
  %2252 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2248, float %2251)  ; FMad(a,b,c)
  %2253 = fadd fast float %2230, %2250
  %2254 = fadd fast float %2233, %2252
  %2255 = icmp ugt i32 %2204, 1
  %2256 = icmp ugt i32 %2202, 33554431
  %2257 = or i1 %2256, %2255
  br i1 %2257, label %2258, label %2283

; <label>:2258                                    ; preds = %2185
  %2259 = add i32 %34, 276
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 16
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = fmul fast float %2226, %2263
  %2265 = call float @dx.op.unary.f32(i32 22, float %2264)  ; Frc(value)
  %2266 = mul nuw nsw i32 %2204, %2205
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2265, %2267
  %2269 = call float @dx.op.unary.f32(i32 27, float %2268)  ; Round_ni(value)
  %2270 = fptoui float %2269 to i32
  %2271 = urem i32 %2270, %2204
  %2272 = udiv i32 %2270, %2205
  %2273 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2274 = call float @dx.op.unary.f32(i32 22, float %2254)  ; Frc(value)
  %2275 = uitofp i32 %2271 to float
  %2276 = uitofp i32 %2272 to float
  %2277 = fadd fast float %2273, %2275
  %2278 = fadd fast float %2274, %2276
  %2279 = uitofp i32 %2204 to float
  %2280 = uitofp i32 %2205 to float
  %2281 = fdiv fast float %2277, %2279
  %2282 = fdiv fast float %2278, %2280
  br label %2283

; <label>:2283                                    ; preds = %2258, %2185
  %2284 = phi float [ %2281, %2258 ], [ %2253, %2185 ]
  %2285 = phi float [ %2282, %2258 ], [ %2254, %2185 ]
  %2286 = and i32 %2179, 256
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2334, label %2288

; <label>:2288                                    ; preds = %2283
  %2289 = add i32 %34, 468
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %75, float %2284, float %2285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = add i32 %34, 148
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = shl i32 %2298, 4
  %2300 = and i32 %2299, 32752
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = lshr i32 %2298, 7
  %2303 = and i32 %2302, 32752
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = fsub fast float 1.000000e+00, %403
  %2306 = call float @dx.op.binary.f32(i32 35, float %2305, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2307 = bitcast float %403 to i32
  %2308 = sitofp i32 %2307 to float
  %2309 = fadd fast float %2308, 0xC1CFBF8940000000
  %2310 = fmul fast float %2304, %2309
  %2311 = fadd fast float %2310, 0x41CFBF8940000000
  %2312 = fptosi float %2311 to i32
  %2313 = bitcast i32 %2312 to float
  %2314 = bitcast float %2306 to i32
  %2315 = sitofp i32 %2314 to float
  %2316 = fadd fast float %2315, 0xC1CFBF8940000000
  %2317 = fmul fast float %2316, %2304
  %2318 = fadd fast float %2317, 0x41CFBF8940000000
  %2319 = fptosi float %2318 to i32
  %2320 = bitcast i32 %2319 to float
  %2321 = fmul fast float %2313, %2301
  %2322 = fmul fast float %2320, %2301
  %2323 = fsub fast float %2306, %2321
  %2324 = fadd fast float %2322, %2306
  %2325 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2326 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2327 = fsub fast float %2295, %2325
  %2328 = fsub fast float %2326, %2325
  %2329 = bitcast float %2328 to i32
  %2330 = sub nsw i32 2129859010, %2329
  %2331 = bitcast i32 %2330 to float
  %2332 = fmul fast float %2331, %2327
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br label %2334

; <label>:2334                                    ; preds = %2288, %2283
  %2335 = phi float [ %2333, %2288 ], [ %403, %2283 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 128
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2356, label %2340

; <label>:2340                                    ; preds = %2334
  %2341 = add i32 %34, 452
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2345, %dx.types.Handle %75, float %2284, float %2285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 524288
  %2351 = icmp ne i32 %2350, 0
  %2352 = fcmp fast ogt float %2347, 0x3FE0101020000000
  %2353 = select i1 %2352, float 1.000000e+00, float 0.000000e+00
  %2354 = select i1 %2351, float %2353, float %2347
  %2355 = fmul fast float %2354, %2335
  br label %2356

; <label>:2356                                    ; preds = %2340, %2334
  %2357 = phi float [ %2355, %2340 ], [ %2335, %2334 ]
  %2358 = fcmp fast ult float %2357, 0x3F70101020000000
  br i1 %2358, label %2833, label %2359

; <label>:2359                                    ; preds = %2356
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 16
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2562, label %2364

; <label>:2364                                    ; preds = %2359
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = add i32 %34, 404
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = add i32 %2369, 0
  %2371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2371, %dx.types.Handle %74, float %2284, float %2285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = extractvalue %dx.types.ResRet.f32 %2372, 3
  %2377 = and i32 %2366, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = lshr i32 %2366, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = fmul fast float %2376, %2378
  %2383 = fadd fast float %2382, %2381
  %2384 = fmul fast float %2383, 0x3F70101000000000
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 512
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2397, label %2389

; <label>:2389                                    ; preds = %2364
  %2390 = add i32 %34, 488
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %75, float %2284, float %2285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  br label %2397

; <label>:2397                                    ; preds = %2389, %2364
  %2398 = phi float [ %2396, %2389 ], [ 1.000000e+00, %2364 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 33554432
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2509, label %2403

; <label>:2403                                    ; preds = %2397
  %2404 = add i32 %34, 272
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 65535
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2406, 16
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = add i32 %34, 276
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = lshr i32 %2417, 24
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = and i32 %2417, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = lshr i32 %2417, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = lshr i32 %2417, 16
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = add i32 %34, 268
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 24
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3F70101020000000
  %2438 = and i32 %2434, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = lshr i32 %2434, 8
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3F70101020000000
  %2445 = lshr i32 %2434, 16
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = fmul fast float %2447, 0x3F70101020000000
  %2449 = bitcast float %2373 to i32
  %2450 = ashr i32 %2449, 1
  %2451 = sub nsw i32 1597463174, %2450
  %2452 = bitcast i32 %2451 to float
  %2453 = fmul fast float %2373, 5.000000e-01
  %2454 = fmul fast float %2452, %2452
  %2455 = fmul fast float %2454, %2453
  %2456 = fsub fast float 1.500000e+00, %2455
  %2457 = fmul fast float %2452, %2373
  %2458 = fmul fast float %2457, %2456
  %2459 = bitcast float %2374 to i32
  %2460 = ashr i32 %2459, 1
  %2461 = sub nsw i32 1597463174, %2460
  %2462 = bitcast i32 %2461 to float
  %2463 = fmul fast float %2374, 5.000000e-01
  %2464 = fmul fast float %2462, %2462
  %2465 = fmul fast float %2464, %2463
  %2466 = fsub fast float 1.500000e+00, %2465
  %2467 = fmul fast float %2462, %2374
  %2468 = fmul fast float %2467, %2466
  %2469 = bitcast float %2375 to i32
  %2470 = ashr i32 %2469, 1
  %2471 = sub nsw i32 1597463174, %2470
  %2472 = bitcast i32 %2471 to float
  %2473 = fmul fast float %2375, 5.000000e-01
  %2474 = fmul fast float %2472, %2472
  %2475 = fmul fast float %2474, %2473
  %2476 = fsub fast float 1.500000e+00, %2475
  %2477 = fmul fast float %2472, %2375
  %2478 = fmul fast float %2477, %2476
  %2479 = fsub fast float %2458, %2440
  %2480 = fsub fast float %2468, %2444
  %2481 = fsub fast float %2478, %2448
  %2482 = fmul fast float %2479, %2408
  %2483 = fmul fast float %2480, %2410
  %2484 = fmul fast float %2481, %2415
  %2485 = fadd fast float %2482, %2423
  %2486 = fadd fast float %2483, %2427
  %2487 = fadd fast float %2484, %2431
  %2488 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2489 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2491 = fmul fast float %2488, %2488
  %2492 = fmul fast float %2489, %2489
  %2493 = fmul fast float %2490, %2490
  %2494 = fsub fast float %2491, %2373
  %2495 = fsub fast float %2492, %2374
  %2496 = fsub fast float %2493, %2375
  %2497 = fmul fast float %2494, %2398
  %2498 = fmul fast float %2495, %2398
  %2499 = fmul fast float %2496, %2398
  %2500 = fadd fast float %2497, %2373
  %2501 = fadd fast float %2498, %2374
  %2502 = fadd fast float %2499, %2375
  %2503 = fadd fast float %2420, %2384
  %2504 = fsub fast float %2503, %2437
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fsub fast float %2505, %2384
  %2507 = fmul fast float %2506, %2398
  %2508 = fadd fast float %2507, %2384
  br label %2562

; <label>:2509                                    ; preds = %2397
  %2510 = and i32 %2400, 134217728
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2546, label %2512

; <label>:2512                                    ; preds = %2509
  %2513 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %2514 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2515 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fadd fast float %2514, -5.000000e-01
  %2518 = fadd fast float %2515, -5.000000e-01
  %2519 = fmul fast float %2516, %2398
  %2520 = fmul fast float %2517, %2398
  %2521 = fmul fast float %2518, %2398
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = fadd fast float %2520, 5.000000e-01
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2374)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %2375)  ; Sqrt(value)
  %2528 = fmul fast float %2522, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2525
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2525
  %2533 = fmul fast float %2523, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2526
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2526
  %2538 = fmul fast float %2524, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2527
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2527
  %2543 = fmul fast float %2532, %2532
  %2544 = fmul fast float %2537, %2537
  %2545 = fmul fast float %2542, %2542
  br label %2562

; <label>:2546                                    ; preds = %2509
  %2547 = fmul fast float %324, %324
  %2548 = fmul fast float %328, %328
  %2549 = fmul fast float %332, %332
  %2550 = fadd fast float %2547, -1.000000e+00
  %2551 = fadd fast float %2548, -1.000000e+00
  %2552 = fadd fast float %2549, -1.000000e+00
  %2553 = fmul fast float %2398, %2550
  %2554 = fmul fast float %2398, %2551
  %2555 = fmul fast float %2398, %2552
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fmul fast float %2556, %2373
  %2560 = fmul fast float %2557, %2374
  %2561 = fmul fast float %2558, %2375
  br label %2562

; <label>:2562                                    ; preds = %2546, %2512, %2403, %2359
  %2563 = phi float [ %2508, %2403 ], [ %2384, %2512 ], [ %2384, %2546 ], [ 0x3FA23C0BE0000000, %2359 ]
  %2564 = phi float [ %2500, %2403 ], [ %2543, %2512 ], [ %2559, %2546 ], [ 1.000000e+00, %2359 ]
  %2565 = phi float [ %2501, %2403 ], [ %2544, %2512 ], [ %2560, %2546 ], [ 1.000000e+00, %2359 ]
  %2566 = phi float [ %2502, %2403 ], [ %2545, %2512 ], [ %2561, %2546 ], [ 1.000000e+00, %2359 ]
  %2567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.i32 %2567, 1
  %2569 = and i32 %2568, 1
  %2570 = icmp ne i32 %2569, 0
  %2571 = add i32 %34, 356
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 32
  %2575 = icmp ne i32 %2574, 0
  %2576 = and i1 %2570, %2575
  %2577 = select i1 %2576, float 1.000000e+00, float %2564
  %2578 = select i1 %2576, float 0x3FD3333340000000, float %2565
  %2579 = select i1 %2576, float 0x3FD3333340000000, float %2566
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 32
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2656, label %2584

; <label>:2584                                    ; preds = %2562
  %2585 = add i32 %34, 140
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = add i32 %34, 420
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %74, float %2284, float %2285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = and i32 %2587, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = lshr i32 %2587, 8
  %2601 = and i32 %2600, 255
  %2602 = uitofp i32 %2601 to float
  %2603 = lshr i32 %2587, 16
  %2604 = and i32 %2603, 255
  %2605 = uitofp i32 %2604 to float
  %2606 = fmul fast float %2605, 0x3F70101000000000
  %2607 = fmul fast float %2594, %2599
  %2608 = fadd fast float %2607, %2602
  %2609 = fmul fast float %2608, 0x3F70101000000000
  %2610 = fadd fast float %2595, -5.000000e-01
  %2611 = fadd fast float %2597, -5.000000e-01
  %2612 = fmul fast float %2610, %2606
  %2613 = fmul fast float %2611, %2606
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fmul fast float %2614, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = fmul fast float %2615, 2.000000e+00
  %2619 = fadd fast float %2618, -1.000000e+00
  %2620 = fadd fast float %2617, %2619
  %2621 = fmul fast float %2620, 5.000000e-01
  %2622 = fsub fast float %2617, %2619
  %2623 = fmul fast float %2622, 5.000000e-01
  %2624 = call float @dx.op.unary.f32(i32 6, float %2621)  ; FAbs(value)
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = call float @dx.op.unary.f32(i32 6, float %2623)  ; FAbs(value)
  %2627 = fsub fast float %2625, %2626
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2621, float %2623, float %2627, float %2621, float %2623, float %2627)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = call float @dx.op.unary.f32(i32 25, float %2628)  ; Rsqrt(value)
  %2630 = fmul fast float %2621, %2629
  %2631 = fmul fast float %2623, %2629
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 67108864
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2652, label %2636

; <label>:2636                                    ; preds = %2584
  %2637 = add i32 %34, 328
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 65535
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 65535
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = lshr i32 %2639, 16
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fsub fast float %2609, %2647
  %2649 = fmul fast float %2648, %2641
  %2650 = fadd fast float %2649, %2645
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  br label %2652

; <label>:2652                                    ; preds = %2636, %2584
  %2653 = phi float [ %2651, %2636 ], [ %2609, %2584 ]
  %2654 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2188, float %2189)  ; Dot2(ax,ay,bx,by)
  %2655 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2190, float %2191)  ; Dot2(ax,ay,bx,by)
  br label %2656

; <label>:2656                                    ; preds = %2652, %2562
  %2657 = phi float [ %2653, %2652 ], [ 0x3FD6666660000000, %2562 ]
  %2658 = phi float [ %2654, %2652 ], [ 0.000000e+00, %2562 ]
  %2659 = phi float [ %2655, %2652 ], [ 0.000000e+00, %2562 ]
  %2660 = phi float [ %2596, %2652 ], [ 1.000000e+00, %2562 ]
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %34, 144
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = lshr i32 %2665, 8
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2578, float %2579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = fmul fast float %2670, %2671
  %2673 = fadd fast float %2672, %2667
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  br i1 %2176, label %2676, label %2681

; <label>:2676                                    ; preds = %2656
  %2677 = fsub fast float 1.000000e+00, %2357
  %2678 = fmul fast float %2677, %2168
  %2679 = fmul fast float %2677, %2169
  %2680 = fmul fast float %2677, %2170
  br label %2681

; <label>:2681                                    ; preds = %2676, %2656
  %2682 = phi float [ %2678, %2676 ], [ %2168, %2656 ]
  %2683 = phi float [ %2679, %2676 ], [ %2169, %2656 ]
  %2684 = phi float [ %2680, %2676 ], [ %2170, %2656 ]
  %2685 = and i32 %2662, 3
  %2686 = icmp eq i32 %2685, 3
  br i1 %2686, label %2753, label %2687

; <label>:2687                                    ; preds = %2681
  %2688 = and i32 %2662, 16
  %2689 = icmp ne i32 %2688, 0
  %2690 = select i1 %2689, float %2357, float 0.000000e+00
  %2691 = icmp eq i32 %2685, 0
  br i1 %2691, label %2692, label %2708

; <label>:2692                                    ; preds = %2687
  %2693 = fsub fast float %2577, %2682
  %2694 = fsub fast float %2578, %2683
  %2695 = fsub fast float %2579, %2684
  %2696 = fmul fast float %2690, %2693
  %2697 = fmul fast float %2690, %2694
  %2698 = fmul fast float %2690, %2695
  %2699 = fadd fast float %2696, %2682
  %2700 = fadd fast float %2697, %2683
  %2701 = fadd fast float %2698, %2684
  %2702 = fsub fast float %2563, %2171
  %2703 = fmul fast float %2690, %2702
  %2704 = fadd fast float %2703, %2171
  %2705 = fsub fast float %2675, %2174
  %2706 = fmul fast float %2690, %2705
  %2707 = fadd fast float %2706, %2174
  br label %2753

; <label>:2708                                    ; preds = %2687
  %2709 = icmp eq i32 %2685, 1
  br i1 %2709, label %2710, label %2723

; <label>:2710                                    ; preds = %2708
  %2711 = fadd fast float %2577, -1.000000e+00
  %2712 = fadd fast float %2578, -1.000000e+00
  %2713 = fadd fast float %2579, -1.000000e+00
  %2714 = fmul fast float %2690, %2711
  %2715 = fmul fast float %2690, %2712
  %2716 = fmul fast float %2690, %2713
  %2717 = fadd fast float %2714, 1.000000e+00
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fmul fast float %2717, %2682
  %2721 = fmul fast float %2718, %2683
  %2722 = fmul fast float %2719, %2684
  br label %2753

; <label>:2723                                    ; preds = %2708
  %2724 = icmp eq i32 %2685, 2
  br i1 %2724, label %2725, label %2753

; <label>:2725                                    ; preds = %2723
  %2726 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2727 = call float @dx.op.unary.f32(i32 24, float %2578)  ; Sqrt(value)
  %2728 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2729 = fadd fast float %2726, -5.000000e-01
  %2730 = fadd fast float %2727, -5.000000e-01
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fmul fast float %2729, %2690
  %2733 = fmul fast float %2730, %2690
  %2734 = fmul fast float %2731, %2690
  %2735 = fadd fast float %2732, 5.000000e-01
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = fadd fast float %2734, 5.000000e-01
  %2738 = fmul fast float %2735, 2.000000e+00
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = fmul fast float %2739, %2682
  %2741 = fadd fast float %2740, %2738
  %2742 = fmul fast float %2741, %2682
  %2743 = fmul fast float %2736, 2.000000e+00
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2744, %2683
  %2746 = fadd fast float %2745, %2743
  %2747 = fmul fast float %2746, %2683
  %2748 = fmul fast float %2737, 2.000000e+00
  %2749 = fsub fast float 1.000000e+00, %2748
  %2750 = fmul fast float %2749, %2684
  %2751 = fadd fast float %2750, %2748
  %2752 = fmul fast float %2751, %2684
  br label %2753

; <label>:2753                                    ; preds = %2725, %2723, %2710, %2692, %2681
  %2754 = phi float [ %2682, %2681 ], [ %2742, %2725 ], [ %2682, %2723 ], [ %2720, %2710 ], [ %2699, %2692 ]
  %2755 = phi float [ %2683, %2681 ], [ %2747, %2725 ], [ %2683, %2723 ], [ %2721, %2710 ], [ %2700, %2692 ]
  %2756 = phi float [ %2684, %2681 ], [ %2752, %2725 ], [ %2684, %2723 ], [ %2722, %2710 ], [ %2701, %2692 ]
  %2757 = phi float [ %2171, %2681 ], [ %2171, %2725 ], [ %2171, %2723 ], [ %2171, %2710 ], [ %2704, %2692 ]
  %2758 = phi float [ %2174, %2681 ], [ %2174, %2725 ], [ %2174, %2723 ], [ %2174, %2710 ], [ %2707, %2692 ]
  %2759 = and i32 %2662, 12
  %2760 = icmp eq i32 %2759, 12
  br i1 %2760, label %2833, label %2761

; <label>:2761                                    ; preds = %2753
  %2762 = and i32 %2662, 2097184
  %2763 = icmp eq i32 %2762, 2097184
  %2764 = select i1 %2763, float %2357, float 0.000000e+00
  %2765 = and i32 %2662, 4194336
  %2766 = icmp eq i32 %2765, 4194336
  %2767 = select i1 %2766, float %2357, float 0.000000e+00
  %2768 = and i32 %2662, 8388640
  %2769 = icmp eq i32 %2768, 8388640
  %2770 = select i1 %2769, float %2357, float 0.000000e+00
  %2771 = icmp eq i32 %2759, 0
  br i1 %2771, label %2772, label %2785

; <label>:2772                                    ; preds = %2761
  %2773 = fsub fast float %2658, %2166
  %2774 = fsub fast float %2659, %2167
  %2775 = fmul fast float %2764, %2773
  %2776 = fmul fast float %2764, %2774
  %2777 = fadd fast float %2775, %2166
  %2778 = fadd fast float %2776, %2167
  %2779 = fsub fast float %2660, %2173
  %2780 = fmul fast float %2767, %2779
  %2781 = fadd fast float %2780, %2173
  %2782 = fsub fast float %2657, %2172
  %2783 = fmul fast float %2770, %2782
  %2784 = fadd fast float %2783, %2172
  br label %2833

; <label>:2785                                    ; preds = %2761
  %2786 = icmp eq i32 %2759, 4
  br i1 %2786, label %2787, label %2819

; <label>:2787                                    ; preds = %2785
  %2788 = fmul fast float %2764, %2658
  %2789 = fmul fast float %2764, %2659
  %2790 = fadd fast float %2788, %2166
  %2791 = fadd fast float %2789, %2167
  %2792 = call float @dx.op.binary.f32(i32 36, float %2173, float %2660)  ; FMin(a,b)
  %2793 = fsub fast float %2792, %2173
  %2794 = fmul fast float %2793, %2767
  %2795 = fadd fast float %2794, %2173
  %2796 = fadd fast float %2657, %2172
  %2797 = fmul fast float %2796, 0x3FF337FAE0000000
  %2798 = fmul fast float %2172, %2172
  %2799 = fmul fast float %2657, %2657
  %2800 = fadd fast float %2799, %2798
  %2801 = fmul fast float %2800, 0x3FE5152B00000000
  %2802 = fmul fast float %2172, 0xBFCC1F85E0000000
  %2803 = fmul fast float %2802, %2657
  %2804 = fadd fast float %2803, 0xBFE1363700000000
  %2805 = fadd fast float %2804, %2797
  %2806 = fsub fast float %2805, %2801
  %2807 = fmul fast float %2796, 0x3FBA6F0D00000000
  %2808 = fmul fast float %2800, 0x3FD0432880000000
  %2809 = fmul fast float %2172, 0xBFEF110800000000
  %2810 = fmul fast float %2809, %2657
  %2811 = fadd fast float %2810, 1.000000e+00
  %2812 = fsub fast float %2811, %2807
  %2813 = fadd fast float %2812, %2808
  %2814 = fdiv fast float %2806, %2813
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = fsub fast float %2815, %2172
  %2817 = fmul fast float %2816, %2770
  %2818 = fadd fast float %2817, %2172
  br label %2833

; <label>:2819                                    ; preds = %2785
  %2820 = icmp eq i32 %2759, 8
  br i1 %2820, label %2821, label %2833

; <label>:2821                                    ; preds = %2819
  %2822 = fmul fast float %2764, %2658
  %2823 = fmul fast float %2764, %2659
  %2824 = fadd fast float %2822, %2166
  %2825 = fadd fast float %2823, %2167
  %2826 = call float @dx.op.binary.f32(i32 36, float %2173, float %2660)  ; FMin(a,b)
  %2827 = fsub fast float %2826, %2173
  %2828 = fmul fast float %2827, %2767
  %2829 = fadd fast float %2828, %2173
  %2830 = fsub fast float %2657, %2172
  %2831 = fmul fast float %2770, %2830
  %2832 = fadd fast float %2831, %2172
  br label %2833

; <label>:2833                                    ; preds = %2821, %2819, %2787, %2772, %2753, %2356, %2175, %2165
  %2834 = phi float [ %2166, %2753 ], [ %2166, %2356 ], [ %2166, %2165 ], [ %2166, %2175 ], [ %2777, %2772 ], [ %2790, %2787 ], [ %2166, %2819 ], [ %2824, %2821 ]
  %2835 = phi float [ %2167, %2753 ], [ %2167, %2356 ], [ %2167, %2165 ], [ %2167, %2175 ], [ %2778, %2772 ], [ %2791, %2787 ], [ %2167, %2819 ], [ %2825, %2821 ]
  %2836 = phi float [ %2754, %2753 ], [ %2168, %2356 ], [ %2168, %2165 ], [ %2168, %2175 ], [ %2754, %2772 ], [ %2754, %2787 ], [ %2754, %2819 ], [ %2754, %2821 ]
  %2837 = phi float [ %2755, %2753 ], [ %2169, %2356 ], [ %2169, %2165 ], [ %2169, %2175 ], [ %2755, %2772 ], [ %2755, %2787 ], [ %2755, %2819 ], [ %2755, %2821 ]
  %2838 = phi float [ %2756, %2753 ], [ %2170, %2356 ], [ %2170, %2165 ], [ %2170, %2175 ], [ %2756, %2772 ], [ %2756, %2787 ], [ %2756, %2819 ], [ %2756, %2821 ]
  %2839 = phi float [ %2757, %2753 ], [ %2171, %2356 ], [ %2171, %2165 ], [ %2171, %2175 ], [ %2757, %2772 ], [ %2757, %2787 ], [ %2757, %2819 ], [ %2757, %2821 ]
  %2840 = phi float [ %2172, %2753 ], [ %2172, %2356 ], [ %2172, %2165 ], [ %2172, %2175 ], [ %2784, %2772 ], [ %2818, %2787 ], [ %2172, %2819 ], [ %2832, %2821 ]
  %2841 = phi float [ %2173, %2753 ], [ %2173, %2356 ], [ %2173, %2165 ], [ %2173, %2175 ], [ %2781, %2772 ], [ %2795, %2787 ], [ %2173, %2819 ], [ %2829, %2821 ]
  %2842 = phi float [ %2758, %2753 ], [ %2174, %2356 ], [ %2174, %2165 ], [ %2174, %2175 ], [ %2758, %2772 ], [ %2758, %2787 ], [ %2758, %2819 ], [ %2758, %2821 ]
  %2843 = add i32 %34, 360
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.i32 %2844, 1
  %2847 = bitcast i32 %2845 to float
  %2848 = bitcast i32 %2846 to float
  %2849 = fcmp fast oge float %2847, 0.000000e+00
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 0
  %2852 = select i1 %2849, float %2847, float %2851
  %2853 = fadd fast float %2852, %179
  %2854 = fmul fast float %2848, %180
  %2855 = add i32 %34, 472
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = add i32 %2857, 0
  %2859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2859, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 0
  %2862 = fmul fast float %2854, %2861
  %2863 = fadd fast float %2853, %2862
  %2864 = call float @dx.op.unary.f32(i32 22, float %66)  ; Frc(value)
  %2865 = call float @dx.op.unary.f32(i32 22, float %67)  ; Frc(value)
  %2866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2867 = extractvalue %dx.types.CBufRet.f32 %2866, 0
  %2868 = fcmp fast ogt float %2867, 5.000000e-01
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.CBufRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.CBufRet.f32 %2869, 2
  %2873 = extractvalue %dx.types.CBufRet.f32 %2869, 3
  %2874 = fmul fast float %2870, %2864
  %2875 = fmul fast float %2871, %2865
  %2876 = fmul fast float %2872, %2864
  %2877 = fmul fast float %2873, %2865
  %2878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %2874, float %2875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  br i1 %2868, label %2880, label %2884

; <label>:2880                                    ; preds = %2833
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %29, float %2876, float %2877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  br label %2889

; <label>:2884                                    ; preds = %2833
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %2876, float %2877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %29, float %2876, float %2877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  br label %2889

; <label>:2889                                    ; preds = %2884, %2880
  %2890 = phi float [ %2882, %2880 ], [ %2886, %2884 ]
  %2891 = phi float [ %2883, %2880 ], [ %2888, %2884 ]
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2895 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %2896 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2897 = call float @dx.op.dot4.f32(i32 56, float %2893, float %2894, float %2895, float %2896, float %2879, float %2890, float %2891, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2902 = extractvalue %dx.types.CBufRet.f32 %2899, 2
  %2903 = extractvalue %dx.types.CBufRet.f32 %2899, 3
  %2904 = call float @dx.op.dot4.f32(i32 56, float %2900, float %2901, float %2902, float %2903, float %2879, float %2890, float %2891, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.CBufRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.CBufRet.f32 %2906, 2
  %2910 = extractvalue %dx.types.CBufRet.f32 %2906, 3
  %2911 = call float @dx.op.dot4.f32(i32 56, float %2907, float %2908, float %2909, float %2910, float %2879, float %2890, float %2891, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2912 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %29, float %2874, float %2875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = fcmp fast ole float %2898, 0x3FA4B5DCC0000000
  %2916 = fmul fast float %2898, 0x3FB3D07220000000
  %2917 = fadd fast float %2898, 0x3FAC28F5C0000000
  %2918 = fmul fast float %2917, 0x3FEE54EDE0000000
  %2919 = call float @dx.op.unary.f32(i32 23, float %2918)  ; Log(value)
  %2920 = fmul fast float %2919, 0x4003333340000000
  %2921 = call float @dx.op.unary.f32(i32 21, float %2920)  ; Exp(value)
  %2922 = select i1 %2915, float %2916, float %2921
  %2923 = fcmp fast ole float %2905, 0x3FA4B5DCC0000000
  %2924 = fmul fast float %2905, 0x3FB3D07220000000
  %2925 = fadd fast float %2905, 0x3FAC28F5C0000000
  %2926 = fmul fast float %2925, 0x3FEE54EDE0000000
  %2927 = call float @dx.op.unary.f32(i32 23, float %2926)  ; Log(value)
  %2928 = fmul fast float %2927, 0x4003333340000000
  %2929 = call float @dx.op.unary.f32(i32 21, float %2928)  ; Exp(value)
  %2930 = select i1 %2923, float %2924, float %2929
  %2931 = fcmp fast ole float %2912, 0x3FA4B5DCC0000000
  %2932 = fmul fast float %2912, 0x3FB3D07220000000
  %2933 = fadd fast float %2912, 0x3FAC28F5C0000000
  %2934 = fmul fast float %2933, 0x3FEE54EDE0000000
  %2935 = call float @dx.op.unary.f32(i32 23, float %2934)  ; Log(value)
  %2936 = fmul fast float %2935, 0x4003333340000000
  %2937 = call float @dx.op.unary.f32(i32 21, float %2936)  ; Exp(value)
  %2938 = select i1 %2931, float %2932, float %2937
  %2939 = add i32 %34, 376
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.i32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.i32 %2940, 2
  %2944 = bitcast i32 %2941 to float
  %2945 = bitcast i32 %2942 to float
  %2946 = bitcast i32 %2943 to float
  %2947 = and i32 %171, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = lshr i32 %171, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = and i32 %172, 65535
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = fmul fast float %2948, %2836
  %2954 = fmul fast float %2950, %2837
  %2955 = fmul fast float %2952, %2838
  %2956 = shl i32 %173, 4
  %2957 = and i32 %2956, 32752
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %173, 7
  %2960 = and i32 %2959, 32752
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = lshr i32 %173, 22
  %2963 = shl nuw nsw i32 %2962, 5
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = and i32 %174, 65535
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = fmul fast float %2922, %2914
  %2968 = fmul fast float %2967, %2944
  %2969 = fmul fast float %2968, %2958
  %2970 = fmul fast float %2969, %2966
  %2971 = fmul fast float %2930, %2914
  %2972 = fmul fast float %2971, %2945
  %2973 = fmul fast float %2972, %2961
  %2974 = fmul fast float %2973, %2966
  %2975 = fmul fast float %2938, %2914
  %2976 = fmul fast float %2975, %2946
  %2977 = fmul fast float %2976, %2964
  %2978 = fmul fast float %2977, %2966
  %2979 = call float @dx.op.dot2.f32(i32 54, float %2834, float %2835, float %2834, float %2835)  ; Dot2(ax,ay,bx,by)
  %2980 = fmul fast float %2979, 0x3FE3333340000000
  %2981 = fsub fast float 1.000000e+00, %2980
  %2982 = call float @dx.op.dot3.f32(i32 55, float %2834, float %2835, float %2981, float %2834, float %2835, float %2981)  ; Dot3(ax,ay,az,bx,by,bz)
  %2983 = call float @dx.op.unary.f32(i32 25, float %2982)  ; Rsqrt(value)
  %2984 = fmul fast float %2983, %2834
  %2985 = fmul fast float %2983, %2835
  %2986 = fmul fast float %2981, %2983
  %2987 = fmul fast float %2986, %85
  %2988 = fmul fast float %2986, %86
  %2989 = fmul fast float %2986, %87
  %2990 = fmul fast float %2984, %59
  %2991 = fmul fast float %2984, %60
  %2992 = fmul fast float %2984, %61
  %2993 = fadd fast float %2987, %2990
  %2994 = fadd fast float %2988, %2991
  %2995 = fadd fast float %2989, %2992
  %2996 = fmul fast float %97, %2985
  %2997 = fmul fast float %98, %2985
  %2998 = fmul fast float %99, %2985
  %2999 = fadd fast float %2993, %2996
  %3000 = fadd fast float %2994, %2997
  %3001 = fadd fast float %2995, %2998
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = call float @dx.op.unary.f32(i32 25, float %3002)  ; Rsqrt(value)
  %3004 = fmul fast float %2999, %3003
  %3005 = fmul fast float %3000, %3003
  %3006 = fmul fast float %3001, %3003
  %3007 = fadd fast float %2839, 0xBFB99999A0000000
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3009 = fmul fast float %3008, 0x3FF1C71C80000000
  %3010 = call float @dx.op.binary.f32(i32 36, float %2839, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3011 = fsub fast float 1.000000e+00, %3009
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3013 = fmul fast float %3012, %2953
  %3014 = fmul fast float %3012, %2954
  %3015 = fmul fast float %3012, %2955
  %3016 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3017 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = fmul fast float %3009, %2953
  %3020 = fmul fast float %3009, %2954
  %3021 = fmul fast float %3009, %2955
  %3022 = fadd fast float %3019, %3010
  %3023 = fadd fast float %3020, %3010
  %3024 = fadd fast float %3021, %3010
  %3025 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3026 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3027 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3028 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %3029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.i32 %3029, 3
  %3031 = and i32 %3030, 8
  %3032 = icmp ne i32 %3031, 0
  %3033 = call float @dx.op.binary.f32(i32 35, float %3016, float %2953)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3017, float %2953)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3018, float %2953)  ; FMax(a,b)
  %3036 = call float @dx.op.dot3.f32(i32 55, float %3016, float %3017, float %3018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3037 = select i1 %217, float %2953, float %3016
  %3038 = select i1 %217, float %3036, float %3017
  %3039 = select i1 %217, float 1.000000e+00, float %3018
  %3040 = select i1 %3032, float %3033, float %3037
  %3041 = select i1 %3032, float %3034, float %3038
  %3042 = select i1 %3032, float %3035, float %3039
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3047 = fadd fast float %3044, %165
  %3048 = fadd fast float %3045, %166
  %3049 = fadd fast float %3046, %167
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3053 = fsub fast float %3047, %3051
  %3054 = fsub fast float %3048, %3052
  %3055 = fmul fast float %3053, %3053
  %3056 = fmul fast float %3054, %3054
  %3057 = fadd fast float %3055, %3056
  %3058 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3060 = fcmp fast olt float %3058, %3059
  br i1 %3060, label %3061, label %3128

; <label>:3061                                    ; preds = %2889
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 0
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3069 = extractvalue %dx.types.CBufRet.f32 %3064, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3066, 1
  %3071 = extractvalue %dx.types.CBufRet.f32 %3062, 3
  %3072 = extractvalue %dx.types.CBufRet.f32 %3064, 3
  %3073 = extractvalue %dx.types.CBufRet.f32 %3066, 3
  %3074 = fadd fast float %3071, %3047
  %3075 = fadd fast float %3072, %3048
  %3076 = fadd fast float %3073, %3049
  %3077 = fmul fast float %3074, %3063
  %3078 = call float @dx.op.tertiary.f32(i32 46, float %3075, float %3065, float %3077)  ; FMad(a,b,c)
  %3079 = call float @dx.op.tertiary.f32(i32 46, float %3076, float %3067, float %3078)  ; FMad(a,b,c)
  %3080 = fmul fast float %3074, %3068
  %3081 = call float @dx.op.tertiary.f32(i32 46, float %3075, float %3069, float %3080)  ; FMad(a,b,c)
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %3076, float %3070, float %3081)  ; FMad(a,b,c)
  %3083 = fsub fast float %3079, %3071
  %3084 = fsub fast float %3082, %3072
  %3085 = fsub fast float %3083, %3051
  %3086 = fadd fast float %3085, %3059
  %3087 = fsub fast float %3084, %3052
  %3088 = fadd fast float %3087, %3059
  %3089 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3090 = fmul fast float %3086, %3089
  %3091 = fmul fast float %3088, %3089
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3094 = fsub fast float 1.000000e+00, %3092
  %3095 = fsub fast float 1.000000e+00, %3093
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3094, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = fcmp fast ugt float %3097, 0.000000e+00
  br i1 %3098, label %3099, label %3402

; <label>:3099                                    ; preds = %3061
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3102 = fmul fast float %3101, %3097
  %3103 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3104 = fadd fast float %3103, %3102
  %3105 = extractvalue %dx.types.CBufRet.f32 %3066, 2
  %3106 = fadd fast float %3104, %3073
  %3107 = fmul fast float %3079, %3067
  %3108 = call float @dx.op.tertiary.f32(i32 46, float %3082, float %3070, float %3107)  ; FMad(a,b,c)
  %3109 = call float @dx.op.tertiary.f32(i32 46, float %3106, float %3105, float %3108)  ; FMad(a,b,c)
  %3110 = fsub fast float %3109, %3073
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3113 = fsub fast float %3110, %3112
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %3094, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %29, float %3094, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = extractvalue %dx.types.ResRet.f32 %3118, 1
  %3121 = extractvalue %dx.types.ResRet.f32 %3118, 2
  %3122 = fadd fast float %3119, %3115
  %3123 = fmul fast float %3122, 0x3F847AE140000000
  %3124 = fadd fast float %3120, %3116
  %3125 = fmul fast float %3124, 0x3F847AE140000000
  %3126 = fadd fast float %3121, %3117
  %3127 = fmul fast float %3126, 0x3F847AE140000000
  br label %3402

; <label>:3128                                    ; preds = %2889
  %3129 = and i32 %196, 1
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3402, label %3131

; <label>:3131                                    ; preds = %3128
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3135 = extractvalue %dx.types.CBufRet.f32 %3134, 0
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 0
  %3138 = extractvalue %dx.types.CBufRet.f32 %3132, 1
  %3139 = extractvalue %dx.types.CBufRet.f32 %3134, 1
  %3140 = extractvalue %dx.types.CBufRet.f32 %3136, 1
  %3141 = extractvalue %dx.types.CBufRet.f32 %3132, 3
  %3142 = extractvalue %dx.types.CBufRet.f32 %3134, 3
  %3143 = extractvalue %dx.types.CBufRet.f32 %3136, 3
  %3144 = fadd fast float %3141, %3047
  %3145 = fadd fast float %3142, %3048
  %3146 = fadd fast float %3143, %3049
  %3147 = fmul fast float %3144, %3133
  %3148 = call float @dx.op.tertiary.f32(i32 46, float %3145, float %3135, float %3147)  ; FMad(a,b,c)
  %3149 = call float @dx.op.tertiary.f32(i32 46, float %3146, float %3137, float %3148)  ; FMad(a,b,c)
  %3150 = fmul fast float %3144, %3138
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3145, float %3139, float %3150)  ; FMad(a,b,c)
  %3152 = call float @dx.op.tertiary.f32(i32 46, float %3146, float %3140, float %3151)  ; FMad(a,b,c)
  %3153 = fsub fast float %3149, %3141
  %3154 = fsub fast float %3152, %3142
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.CBufRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.CBufRet.f32 %3155, 2
  %3159 = extractvalue %dx.types.CBufRet.f32 %3155, 3
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 3
  %3162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.i32 %3162, 0
  %3164 = extractvalue %dx.types.CBufRet.i32 %3162, 1
  %3165 = udiv i32 %3164, %3163
  %3166 = fsub fast float %3153, %3156
  %3167 = fsub fast float %3154, %3157
  %3168 = call float @dx.op.binary.f32(i32 35, float %3166, float 0.000000e+00)  ; FMax(a,b)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3170 = call float @dx.op.binary.f32(i32 36, float %3168, float %3158)  ; FMin(a,b)
  %3171 = call float @dx.op.binary.f32(i32 36, float %3169, float %3159)  ; FMin(a,b)
  %3172 = add i32 %3163, -1
  %3173 = add i32 %3165, -1
  %3174 = fmul fast float %3170, %3161
  %3175 = fmul fast float %3171, %3161
  %3176 = fptoui float %3174 to i32
  %3177 = fptoui float %3175 to i32
  %3178 = call i32 @dx.op.binary.i32(i32 40, i32 %3176, i32 %3172)  ; UMin(a,b)
  %3179 = call i32 @dx.op.binary.i32(i32 40, i32 %3177, i32 %3173)  ; UMin(a,b)
  %3180 = mul i32 %3179, %3163
  %3181 = add i32 %3180, %3178
  %3182 = shl i32 %3181, 2
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = icmp eq i32 %3184, -1
  br i1 %3185, label %3402, label %3186

; <label>:3186                                    ; preds = %3131
  %3187 = mul i32 %3184, 148
  %3188 = add i32 %3187, 4
  %3189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = add i32 %3187, 8
  %3192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = add i32 %3187, 36
  %3195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = add i32 %3187, 60
  %3198 = add i32 %3187, 92
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = add i32 %3187, 116
  %3202 = fsub fast float %3153, %3190
  %3203 = fsub fast float %3154, %3193
  %3204 = fmul fast float %3161, %3202
  %3205 = fmul fast float %3161, %3203
  %3206 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  %3207 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3211 = call float @dx.op.unary.f32(i32 83, float %3206)  ; DerivCoarseX(value)
  %3212 = call float @dx.op.unary.f32(i32 83, float %3208)  ; DerivCoarseX(value)
  %3213 = call float @dx.op.unary.f32(i32 84, float %3206)  ; DerivCoarseY(value)
  %3214 = call float @dx.op.unary.f32(i32 84, float %3208)  ; DerivCoarseY(value)
  %3215 = fmul fast float %3211, %3210
  %3216 = fmul fast float %3212, %3210
  %3217 = fmul fast float %3213, %3210
  %3218 = fmul fast float %3214, %3210
  %3219 = call float @dx.op.dot2.f32(i32 54, float %3217, float %3218, float %3217, float %3218)  ; Dot2(ax,ay,bx,by)
  %3220 = call float @dx.op.dot2.f32(i32 54, float %3215, float %3216, float %3215, float %3216)  ; Dot2(ax,ay,bx,by)
  %3221 = call float @dx.op.binary.f32(i32 35, float %3220, float %3219)  ; FMax(a,b)
  %3222 = call float @dx.op.unary.f32(i32 23, float %3221)  ; Log(value)
  %3223 = fmul fast float %3222, 5.000000e-01
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3226 = fadd fast float %3225, %3223
  %3227 = call float @dx.op.binary.f32(i32 35, float %3226, float 0.000000e+00)  ; FMax(a,b)
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 3
  %3230 = fadd fast float %3229, %3227
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3233 = fadd fast float %3230, %3232
  %3234 = add i32 %3200, 0
  %3235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3236 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3235, i32 0)  ; GetDimensions(handle,mipLevel)
  %3237 = extractvalue %dx.types.Dimensions %3236, 0
  %3238 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3237)  ; FirstbitLo(value)
  %3239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3240 = extractvalue %dx.types.CBufRet.i32 %3239, 1
  %3241 = sub nsw i32 %3240, %3238
  %3242 = sitofp i32 %3241 to float
  %3243 = fsub fast float %3233, %3242
  %3244 = call float @dx.op.binary.f32(i32 35, float %3243, float 0.000000e+00)  ; FMax(a,b)
  %3245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3235, %dx.types.Handle %28, float %3206, float %3208, float %3196, float undef, i32 0, i32 0, i32 undef, float %3244)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = fcmp ule float %3246, 0x3FE0101020000000
  %3248 = extractvalue %dx.types.CBufRet.i32 %3239, 0
  %3249 = and i32 %3248, 128
  %3250 = icmp ne i32 %3249, 0
  %3251 = and i1 %3247, %3250
  br i1 %3251, label %3402, label %3252

; <label>:3252                                    ; preds = %3186
  %3253 = add i32 %3187, 20
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = add i32 %3187, 24
  %3257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = add i32 %3187, 40
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = add i32 %3187, 96
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3267 = fmul fast float %3266, %3206
  %3268 = fmul fast float %3266, %3208
  %3269 = extractvalue %dx.types.CBufRet.f32 %3265, 3
  %3270 = fadd fast float %3267, %3269
  %3271 = fadd fast float %3268, %3269
  %3272 = add i32 %3264, 0
  %3273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3272, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3274 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3273, i32 0)  ; GetDimensions(handle,mipLevel)
  %3275 = extractvalue %dx.types.Dimensions %3274, 0
  %3276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3275)  ; FirstbitLo(value)
  %3277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.i32 %3277, 1
  %3279 = sub nsw i32 %3278, %3276
  %3280 = sitofp i32 %3279 to float
  %3281 = fsub fast float %3230, %3280
  %3282 = call float @dx.op.binary.f32(i32 35, float %3281, float 0.000000e+00)  ; FMax(a,b)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3273, %dx.types.Handle %28, float %3270, float %3271, float %3261, float undef, i32 0, i32 0, i32 undef, float %3282)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = fmul fast float %3284, %3255
  %3286 = fadd fast float %3285, %3258
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3289 = extractvalue %dx.types.CBufRet.f32 %3287, 1
  %3290 = extractvalue %dx.types.CBufRet.f32 %3287, 2
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 3
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3295 = extractvalue %dx.types.CBufRet.f32 %3287, 3
  %3296 = fadd fast float %3292, %3153
  %3297 = fadd fast float %3294, %3154
  %3298 = fadd fast float %3286, %3295
  %3299 = fmul fast float %3296, %3288
  %3300 = call float @dx.op.tertiary.f32(i32 46, float %3297, float %3289, float %3299)  ; FMad(a,b,c)
  %3301 = call float @dx.op.tertiary.f32(i32 46, float %3298, float %3290, float %3300)  ; FMad(a,b,c)
  %3302 = fsub fast float %3301, %3295
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 2
  %3305 = fsub fast float %3302, %3304
  %3306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.i32 %3306, 0
  %3308 = call i32 @dx.op.binary.i32(i32 40, i32 %3184, i32 %3307)  ; UMin(a,b)
  %3309 = mul i32 %3308, 36
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = add i32 %3309, 4
  %3313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.f32 %3313, 0
  %3315 = fmul fast float %3314, %3206
  %3316 = fmul fast float %3314, %3208
  %3317 = extractvalue %dx.types.CBufRet.f32 %3313, 1
  %3318 = fadd fast float %3315, %3317
  %3319 = fadd fast float %3316, %3317
  %3320 = icmp eq i32 %3311, 0
  br i1 %3320, label %3389, label %3321

; <label>:3321                                    ; preds = %3252
  br label %3322

; <label>:3322                                    ; preds = %3379, %3321
  %3323 = phi float [ %3380, %3379 ], [ 0.000000e+00, %3321 ]
  %3324 = phi float [ %3381, %3379 ], [ 0.000000e+00, %3321 ]
  %3325 = phi float [ %3382, %3379 ], [ 0.000000e+00, %3321 ]
  %3326 = phi float [ %3383, %3379 ], [ 0.000000e+00, %3321 ]
  %3327 = phi float [ %3384, %3379 ], [ 0.000000e+00, %3321 ]
  %3328 = phi float [ %3385, %3379 ], [ 0.000000e+00, %3321 ]
  %3329 = phi i32 [ %3386, %3379 ], [ 0, %3321 ]
  %3330 = shl i32 %3329, 2
  %3331 = add i32 %3197, %3330
  %3332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  %3334 = add i32 %3201, %3330
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = add i32 %3336, 0
  %3338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3337, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3339 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3338, i32 0)  ; GetDimensions(handle,mipLevel)
  %3340 = extractvalue %dx.types.Dimensions %3339, 0
  %3341 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3340)  ; FirstbitLo(value)
  %3342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.i32 %3342, 1
  %3344 = sub nsw i32 %3343, %3341
  %3345 = sitofp i32 %3344 to float
  %3346 = fsub fast float %3230, %3345
  %3347 = call float @dx.op.binary.f32(i32 35, float %3346, float 0.000000e+00)  ; FMax(a,b)
  %3348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3338, %dx.types.Handle %28, float %3318, float %3319, float %3333, float undef, i32 0, i32 0, i32 undef, float %3347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = fcmp fast ogt float %3349, 0.000000e+00
  br i1 %3350, label %3351, label %3379

; <label>:3351                                    ; preds = %3322
  %3352 = add i32 %3312, %3330
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = and i32 %3354, 32767
  %3356 = mul nuw nsw i32 %3355, 928
  %3357 = add nuw nsw i32 %3356, 48
  %3358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3362 = add nuw nsw i32 %3356, 60
  %3363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = fmul fast float %3359, %3349
  %3368 = fmul fast float %3360, %3349
  %3369 = fmul fast float %3361, %3349
  %3370 = fadd fast float %3367, %3323
  %3371 = fadd fast float %3368, %3324
  %3372 = fadd fast float %3369, %3325
  %3373 = fmul fast float %3364, %3349
  %3374 = fmul fast float %3365, %3349
  %3375 = fmul fast float %3366, %3349
  %3376 = fadd fast float %3373, %3326
  %3377 = fadd fast float %3374, %3327
  %3378 = fadd fast float %3375, %3328
  br label %3379

; <label>:3379                                    ; preds = %3351, %3322
  %3380 = phi float [ %3370, %3351 ], [ %3323, %3322 ]
  %3381 = phi float [ %3371, %3351 ], [ %3324, %3322 ]
  %3382 = phi float [ %3372, %3351 ], [ %3325, %3322 ]
  %3383 = phi float [ %3376, %3351 ], [ %3326, %3322 ]
  %3384 = phi float [ %3377, %3351 ], [ %3327, %3322 ]
  %3385 = phi float [ %3378, %3351 ], [ %3328, %3322 ]
  %3386 = add nuw i32 %3329, 1
  %3387 = icmp eq i32 %3386, %3311
  br i1 %3387, label %3388, label %3322

; <label>:3388                                    ; preds = %3379
  br label %3389

; <label>:3389                                    ; preds = %3388, %3252
  %3390 = phi float [ 0.000000e+00, %3252 ], [ %3380, %3388 ]
  %3391 = phi float [ 0.000000e+00, %3252 ], [ %3381, %3388 ]
  %3392 = phi float [ 0.000000e+00, %3252 ], [ %3382, %3388 ]
  %3393 = phi float [ 0.000000e+00, %3252 ], [ %3383, %3388 ]
  %3394 = phi float [ 0.000000e+00, %3252 ], [ %3384, %3388 ]
  %3395 = phi float [ 0.000000e+00, %3252 ], [ %3385, %3388 ]
  %3396 = fadd fast float %3393, %3390
  %3397 = fmul fast float %3396, 0x3F847AE140000000
  %3398 = fadd fast float %3394, %3391
  %3399 = fmul fast float %3398, 0x3F847AE140000000
  %3400 = fadd fast float %3395, %3392
  %3401 = fmul fast float %3400, 0x3F847AE140000000
  br label %3402

; <label>:3402                                    ; preds = %3389, %3186, %3131, %3128, %3099, %3061
  %3403 = phi float [ %3113, %3099 ], [ -1.310720e+05, %3061 ], [ %3305, %3389 ], [ -1.310720e+05, %3131 ], [ -1.310720e+05, %3186 ], [ -1.310720e+05, %3128 ]
  %3404 = phi float [ %3123, %3099 ], [ 0.000000e+00, %3061 ], [ %3397, %3389 ], [ 0.000000e+00, %3131 ], [ 0.000000e+00, %3186 ], [ 0.000000e+00, %3128 ]
  %3405 = phi float [ %3125, %3099 ], [ 0.000000e+00, %3061 ], [ %3399, %3389 ], [ 0.000000e+00, %3131 ], [ 0.000000e+00, %3186 ], [ 0.000000e+00, %3128 ]
  %3406 = phi float [ %3127, %3099 ], [ 0.000000e+00, %3061 ], [ %3401, %3389 ], [ 0.000000e+00, %3131 ], [ 0.000000e+00, %3186 ], [ 0.000000e+00, %3128 ]
  %3407 = phi i1 [ true, %3099 ], [ false, %3061 ], [ true, %3389 ], [ false, %3131 ], [ false, %3186 ], [ false, %3128 ]
  %3408 = and i32 %196, 3
  %3409 = icmp eq i32 %3408, 1
  %3410 = select i1 %3409, float 1.000000e+00, float 0.000000e+00
  %3411 = fsub fast float %3403, %167
  %3412 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3413 = select i1 %3407, float %3412, float 1.000000e+00
  %3414 = fmul fast float %3413, %3410
  %3415 = icmp eq i32 %3408, 3
  %3416 = select i1 %3415, float 1.000000e+00, float %3414
  %3417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3416)  ; FMax(a,b)
  %3418 = fcmp fast olt float %3416, 1.000000e+00
  %3419 = fcmp uge float %49, 0.000000e+00
  %3420 = and i1 %3419, %3418
  br i1 %3420, label %3421, label %3431

; <label>:3421                                    ; preds = %3402
  %3422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = extractvalue %dx.types.ResRet.f32 %3422, 2
  %3426 = fadd fast float %3423, %3417
  %3427 = fcmp ule float %48, 0.000000e+00
  %3428 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = select i1 %3427, float %3428, float 1.000000e+00
  %3430 = fmul fast float %3429, %3425
  br label %3431

; <label>:3431                                    ; preds = %3421, %3402
  %3432 = phi float [ %3426, %3421 ], [ %3417, %3402 ]
  %3433 = phi float [ %3424, %3421 ], [ 0.000000e+00, %3402 ]
  %3434 = phi float [ %3430, %3421 ], [ 0.000000e+00, %3402 ]
  %3435 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3436 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3437 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3438 = fcmp fast une float %3436, 0.000000e+00
  %3439 = fcmp fast une float %3437, 0.000000e+00
  %3440 = or i1 %3438, %3439
  br i1 %3440, label %3441, label %4000

; <label>:3441                                    ; preds = %3431
  br i1 %3438, label %3442, label %3715

; <label>:3442                                    ; preds = %3441
  %3443 = call float @dx.op.unary.f32(i32 23, float %2841)  ; Log(value)
  %3444 = fmul fast float %3443, 4.000000e+00
  %3445 = call float @dx.op.unary.f32(i32 21, float %3444)  ; Exp(value)
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = fmul fast float %3447, %36
  %3449 = fmul fast float %3447, %37
  %3450 = fmul fast float %3447, %38
  %3451 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %3452 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %3453 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %3454 = call float @dx.op.unary.f32(i32 23, float %3451)  ; Log(value)
  %3455 = call float @dx.op.unary.f32(i32 23, float %3452)  ; Log(value)
  %3456 = call float @dx.op.unary.f32(i32 23, float %3453)  ; Log(value)
  %3457 = fmul fast float %3454, 4.000000e+00
  %3458 = fmul fast float %3455, 4.000000e+00
  %3459 = fmul fast float %3456, 4.000000e+00
  %3460 = call float @dx.op.unary.f32(i32 21, float %3457)  ; Exp(value)
  %3461 = call float @dx.op.unary.f32(i32 21, float %3458)  ; Exp(value)
  %3462 = call float @dx.op.unary.f32(i32 21, float %3459)  ; Exp(value)
  %3463 = fadd fast float %3461, %3460
  %3464 = fadd fast float %3463, %3462
  %3465 = fdiv fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3465, %3460
  %3467 = fcmp fast ogt float %45, 0.000000e+00
  %3468 = fcmp fast ogt float %46, 0.000000e+00
  %3469 = fcmp fast ogt float %47, 0.000000e+00
  %3470 = fcmp fast olt float %45, 0.000000e+00
  %3471 = fcmp fast olt float %46, 0.000000e+00
  %3472 = fcmp fast olt float %47, 0.000000e+00
  %3473 = zext i1 %3467 to i32
  %3474 = zext i1 %3468 to i32
  %3475 = zext i1 %3469 to i32
  %3476 = zext i1 %3470 to i32
  %3477 = zext i1 %3471 to i32
  %3478 = zext i1 %3472 to i32
  %3479 = sub nsw i32 %3473, %3476
  %3480 = sub nsw i32 %3474, %3477
  %3481 = sub nsw i32 %3475, %3478
  %3482 = call float @dx.op.unary.f32(i32 83, float %3448)  ; DerivCoarseX(value)
  %3483 = call float @dx.op.unary.f32(i32 83, float %3449)  ; DerivCoarseX(value)
  %3484 = call float @dx.op.unary.f32(i32 83, float %3450)  ; DerivCoarseX(value)
  %3485 = call float @dx.op.unary.f32(i32 84, float %3448)  ; DerivCoarseY(value)
  %3486 = call float @dx.op.unary.f32(i32 84, float %3449)  ; DerivCoarseY(value)
  %3487 = call float @dx.op.unary.f32(i32 84, float %3450)  ; DerivCoarseY(value)
  %3488 = fcmp fast ole float %228, %3466
  %3489 = fmul fast float %3465, %3463
  %3490 = fcmp fast ole float %228, %3489
  %3491 = select i1 %3490, float %3450, float %3448
  %3492 = select i1 %3490, float %3448, float %3449
  %3493 = select i1 %3488, float %3449, float %3491
  %3494 = select i1 %3488, float %3450, float %3492
  %3495 = select i1 %3490, float %3484, float %3482
  %3496 = select i1 %3490, float %3482, float %3483
  %3497 = select i1 %3488, float %3483, float %3495
  %3498 = select i1 %3488, float %3484, float %3496
  %3499 = select i1 %3490, float %3487, float %3485
  %3500 = select i1 %3490, float %3485, float %3486
  %3501 = select i1 %3488, float %3486, float %3499
  %3502 = select i1 %3488, float %3487, float %3500
  %3503 = call float @dx.op.unary.f32(i32 27, float %3493)  ; Round_ni(value)
  %3504 = call float @dx.op.unary.f32(i32 27, float %3494)  ; Round_ni(value)
  %3505 = fptosi float %3503 to i32
  %3506 = fptosi float %3504 to i32
  %3507 = xor i32 %3506, %3505
  %3508 = sitofp i32 %3507 to float
  %3509 = fptosi float %3508 to i32
  %3510 = sitofp i32 %3509 to float
  %3511 = fmul fast float %3510, 0x3FE3C6EF40000000
  %3512 = frem fast float %3503, 2.560000e+02
  %3513 = frem fast float %3504, 2.560000e+02
  %3514 = fptoui float %3512 to i32
  %3515 = fptoui float %3513 to i32
  %3516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3514, i32 %3515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = fadd fast float %3517, %3511
  %3521 = fadd fast float %3518, %3511
  %3522 = fadd fast float %3519, %3511
  %3523 = call float @dx.op.unary.f32(i32 22, float %3520)  ; Frc(value)
  %3524 = call float @dx.op.unary.f32(i32 22, float %3521)  ; Frc(value)
  %3525 = call float @dx.op.unary.f32(i32 22, float %3522)  ; Frc(value)
  %3526 = fmul fast float %3525, 0x401921FB60000000
  %3527 = call float @dx.op.unary.f32(i32 13, float %3526)  ; Sin(value)
  %3528 = call float @dx.op.unary.f32(i32 12, float %3526)  ; Cos(value)
  %3529 = fsub fast float -0.000000e+00, %3528
  %3530 = fmul fast float %3528, %3493
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3527, float %3494, float %3530)  ; FMad(a,b,c)
  %3532 = fmul fast float %3527, %3493
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3529, float %3494, float %3532)  ; FMad(a,b,c)
  %3534 = fadd fast float %3531, %3523
  %3535 = fadd fast float %3533, %3524
  %3536 = extractvalue %dx.types.CBufRet.f32 %3446, 3
  %3537 = bitcast float %3536 to i32
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3577, label %3539

; <label>:3539                                    ; preds = %3442
  %3540 = add i32 %3537, 0
  %3541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3541, %dx.types.Handle %75, float %3534, float %3535, float undef, float undef, i32 0, i32 0, i32 undef, float %3497, float %3498, float undef, float %3501, float %3502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3544, 2
  %3547 = fsub fast float 1.000000e+00, %3436
  %3548 = call float @dx.op.binary.f32(i32 35, float %3547, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3549 = bitcast float %3436 to i32
  %3550 = sitofp i32 %3549 to float
  %3551 = fadd fast float %3550, 0xC1CFBF8940000000
  %3552 = fmul fast float %3546, %3551
  %3553 = fadd fast float %3552, 0x41CFBF8940000000
  %3554 = fptosi float %3553 to i32
  %3555 = bitcast i32 %3554 to float
  %3556 = bitcast float %3548 to i32
  %3557 = sitofp i32 %3556 to float
  %3558 = fadd fast float %3557, 0xC1CFBF8940000000
  %3559 = fmul fast float %3558, %3546
  %3560 = fadd fast float %3559, 0x41CFBF8940000000
  %3561 = fptosi float %3560 to i32
  %3562 = bitcast i32 %3561 to float
  %3563 = fmul fast float %3555, %3545
  %3564 = fmul fast float %3562, %3545
  %3565 = fsub fast float %3548, %3563
  %3566 = fadd fast float %3564, %3548
  %3567 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3568 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3569 = fsub fast float %3543, %3567
  %3570 = fsub fast float %3568, %3567
  %3571 = bitcast float %3570 to i32
  %3572 = sub nsw i32 2129859010, %3571
  %3573 = bitcast i32 %3572 to float
  %3574 = fmul fast float %3573, %3569
  %3575 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3576 = fcmp fast olt float %3575, 0x3F70101020000000
  br i1 %3576, label %3715, label %3577

; <label>:3577                                    ; preds = %3539, %3442
  %3578 = phi float [ %3575, %3539 ], [ %3436, %3442 ]
  %3579 = fmul fast float %3578, %3445
  %3580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.i32 %3580, 1
  %3582 = extractvalue %dx.types.CBufRet.i32 %3580, 0
  %3583 = add i32 %3582, 0
  %3584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3585 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3584, %dx.types.Handle %74, float %3534, float %3535, float undef, float undef, i32 0, i32 0, i32 undef, float %3497, float %3498, float undef, float %3501, float %3502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = and i32 %3581, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = lshr i32 %3581, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3589, %3591
  %3596 = fadd fast float %3595, %3594
  %3597 = fmul fast float %3596, 0x3F70101000000000
  %3598 = fadd fast float %3597, 0xBFB99999A0000000
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3600 = fmul fast float %3599, 0x3FF1C71C80000000
  %3601 = call float @dx.op.binary.f32(i32 36, float %3597, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3602 = fsub fast float 1.000000e+00, %3600
  %3603 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3604 = fmul fast float %3603, %3586
  %3605 = fmul fast float %3603, %3587
  %3606 = fmul fast float %3603, %3588
  %3607 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3608 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  %3609 = call float @dx.op.unary.f32(i32 7, float %3606)  ; Saturate(value)
  %3610 = fmul fast float %3600, %3586
  %3611 = fmul fast float %3600, %3587
  %3612 = fmul fast float %3600, %3588
  %3613 = fadd fast float %3610, %3601
  %3614 = fadd fast float %3611, %3601
  %3615 = fadd fast float %3612, %3601
  %3616 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3617 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3618 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.i32 %3619, 3
  %3621 = extractvalue %dx.types.CBufRet.i32 %3619, 2
  %3622 = add i32 %3621, 0
  %3623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3623, %dx.types.Handle %74, float %3534, float %3535, float undef, float undef, i32 0, i32 0, i32 undef, float %3497, float %3498, float undef, float %3501, float %3502, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = and i32 %3620, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = lshr i32 %3620, 8
  %3632 = and i32 %3631, 255
  %3633 = uitofp i32 %3632 to float
  %3634 = lshr i32 %3620, 16
  %3635 = and i32 %3634, 255
  %3636 = uitofp i32 %3635 to float
  %3637 = fmul fast float %3636, 0x3F70101000000000
  %3638 = fmul fast float %3625, %3630
  %3639 = fadd fast float %3638, %3633
  %3640 = fmul fast float %3639, 0x3F70101000000000
  %3641 = fadd fast float %3626, -5.000000e-01
  %3642 = fadd fast float %3628, -5.000000e-01
  %3643 = fmul fast float %3641, %3637
  %3644 = fmul fast float %3642, %3637
  %3645 = fadd fast float %3643, 5.000000e-01
  %3646 = fadd fast float %3644, 5.000000e-01
  %3647 = fmul fast float %3645, 2.000000e+00
  %3648 = fadd fast float %3647, -1.000000e+00
  %3649 = fmul fast float %3646, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = fadd fast float %3648, %3650
  %3652 = fmul fast float %3651, 5.000000e-01
  %3653 = fsub fast float %3648, %3650
  %3654 = fmul fast float %3653, 5.000000e-01
  %3655 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3658 = fsub fast float %3656, %3657
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3654, float %3658, float %3652, float %3654, float %3658)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = call float @dx.op.unary.f32(i32 25, float %3659)  ; Rsqrt(value)
  %3661 = fmul fast float %3652, %3660
  %3662 = fmul fast float %3654, %3660
  %3663 = select i1 %3490, i32 %3480, i32 %3481
  %3664 = select i1 %3488, i32 %3479, i32 %3663
  %3665 = sitofp i32 %3664 to float
  %3666 = fmul fast float %3658, %3665
  %3667 = fmul fast float %3666, %3660
  %3668 = select i1 %3490, float %3667, float %3662
  %3669 = select i1 %3490, float %3662, float %3667
  %3670 = select i1 %3488, float %3667, float %3661
  %3671 = select i1 %3488, float %3662, float %3668
  %3672 = select i1 %3488, float %3661, float %3669
  %3673 = fsub fast float %3607, %3040
  %3674 = fsub fast float %3608, %3041
  %3675 = fsub fast float %3609, %3042
  %3676 = fmul fast float %3673, %3579
  %3677 = fmul fast float %3674, %3579
  %3678 = fmul fast float %3675, %3579
  %3679 = fadd fast float %3676, %3040
  %3680 = fadd fast float %3677, %3041
  %3681 = fadd fast float %3678, %3042
  %3682 = fsub fast float %3616, %3025
  %3683 = fsub fast float %3617, %3026
  %3684 = fsub fast float %3618, %3027
  %3685 = fmul fast float %3682, %3579
  %3686 = fmul fast float %3683, %3579
  %3687 = fmul fast float %3684, %3579
  %3688 = fadd fast float %3685, %3025
  %3689 = fadd fast float %3686, %3026
  %3690 = fadd fast float %3687, %3027
  %3691 = fadd fast float %3670, %3004
  %3692 = fadd fast float %3671, %3005
  %3693 = fadd fast float %3672, %3006
  %3694 = call float @dx.op.dot3.f32(i32 55, float %3691, float %3692, float %3693, float %3691, float %3692, float %3693)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = call float @dx.op.unary.f32(i32 25, float %3694)  ; Rsqrt(value)
  %3696 = fmul fast float %3691, %3695
  %3697 = fmul fast float %3692, %3695
  %3698 = fmul fast float %3693, %3695
  %3699 = fsub fast float %3696, %3004
  %3700 = fsub fast float %3697, %3005
  %3701 = fsub fast float %3698, %3006
  %3702 = fmul fast float %3699, %3579
  %3703 = fmul fast float %3700, %3579
  %3704 = fmul fast float %3701, %3579
  %3705 = fadd fast float %3702, %3004
  %3706 = fadd fast float %3703, %3005
  %3707 = fadd fast float %3704, %3006
  %3708 = call float @dx.op.binary.f32(i32 36, float %2841, float %3627)  ; FMin(a,b)
  %3709 = fsub fast float %3708, %2841
  %3710 = fmul fast float %3709, %3579
  %3711 = fadd fast float %3710, %2841
  %3712 = fsub fast float %3640, %3028
  %3713 = fmul fast float %3712, %3579
  %3714 = fadd fast float %3713, %3028
  br label %3715

; <label>:3715                                    ; preds = %3577, %3539, %3441
  %3716 = phi float [ %3688, %3577 ], [ %3025, %3539 ], [ %3025, %3441 ]
  %3717 = phi float [ %3689, %3577 ], [ %3026, %3539 ], [ %3026, %3441 ]
  %3718 = phi float [ %3690, %3577 ], [ %3027, %3539 ], [ %3027, %3441 ]
  %3719 = phi float [ %3705, %3577 ], [ %3004, %3539 ], [ %3004, %3441 ]
  %3720 = phi float [ %3706, %3577 ], [ %3005, %3539 ], [ %3005, %3441 ]
  %3721 = phi float [ %3707, %3577 ], [ %3006, %3539 ], [ %3006, %3441 ]
  %3722 = phi float [ %3679, %3577 ], [ %3040, %3539 ], [ %3040, %3441 ]
  %3723 = phi float [ %3680, %3577 ], [ %3041, %3539 ], [ %3041, %3441 ]
  %3724 = phi float [ %3681, %3577 ], [ %3042, %3539 ], [ %3042, %3441 ]
  %3725 = phi float [ %3714, %3577 ], [ %3028, %3539 ], [ %3028, %3441 ]
  %3726 = phi float [ %3711, %3577 ], [ %2841, %3539 ], [ %2841, %3441 ]
  br i1 %3439, label %3727, label %4000

; <label>:3727                                    ; preds = %3715
  %3728 = call float @dx.op.unary.f32(i32 23, float %3726)  ; Log(value)
  %3729 = fmul fast float %3728, 4.000000e+00
  %3730 = call float @dx.op.unary.f32(i32 21, float %3729)  ; Exp(value)
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 0
  %3733 = fmul fast float %3732, %36
  %3734 = fmul fast float %3732, %37
  %3735 = fmul fast float %3732, %38
  %3736 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %3737 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %3738 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %3739 = call float @dx.op.unary.f32(i32 23, float %3736)  ; Log(value)
  %3740 = call float @dx.op.unary.f32(i32 23, float %3737)  ; Log(value)
  %3741 = call float @dx.op.unary.f32(i32 23, float %3738)  ; Log(value)
  %3742 = fmul fast float %3739, 4.000000e+00
  %3743 = fmul fast float %3740, 4.000000e+00
  %3744 = fmul fast float %3741, 4.000000e+00
  %3745 = call float @dx.op.unary.f32(i32 21, float %3742)  ; Exp(value)
  %3746 = call float @dx.op.unary.f32(i32 21, float %3743)  ; Exp(value)
  %3747 = call float @dx.op.unary.f32(i32 21, float %3744)  ; Exp(value)
  %3748 = fadd fast float %3746, %3745
  %3749 = fadd fast float %3748, %3747
  %3750 = fdiv fast float 1.000000e+00, %3749
  %3751 = fmul fast float %3750, %3745
  %3752 = fcmp fast ogt float %45, 0.000000e+00
  %3753 = fcmp fast ogt float %46, 0.000000e+00
  %3754 = fcmp fast ogt float %47, 0.000000e+00
  %3755 = fcmp fast olt float %45, 0.000000e+00
  %3756 = fcmp fast olt float %46, 0.000000e+00
  %3757 = fcmp fast olt float %47, 0.000000e+00
  %3758 = zext i1 %3752 to i32
  %3759 = zext i1 %3753 to i32
  %3760 = zext i1 %3754 to i32
  %3761 = zext i1 %3755 to i32
  %3762 = zext i1 %3756 to i32
  %3763 = zext i1 %3757 to i32
  %3764 = sub nsw i32 %3758, %3761
  %3765 = sub nsw i32 %3759, %3762
  %3766 = sub nsw i32 %3760, %3763
  %3767 = call float @dx.op.unary.f32(i32 83, float %3733)  ; DerivCoarseX(value)
  %3768 = call float @dx.op.unary.f32(i32 83, float %3734)  ; DerivCoarseX(value)
  %3769 = call float @dx.op.unary.f32(i32 83, float %3735)  ; DerivCoarseX(value)
  %3770 = call float @dx.op.unary.f32(i32 84, float %3733)  ; DerivCoarseY(value)
  %3771 = call float @dx.op.unary.f32(i32 84, float %3734)  ; DerivCoarseY(value)
  %3772 = call float @dx.op.unary.f32(i32 84, float %3735)  ; DerivCoarseY(value)
  %3773 = fcmp fast ole float %228, %3751
  %3774 = fmul fast float %3750, %3748
  %3775 = fcmp fast ole float %228, %3774
  %3776 = select i1 %3775, float %3735, float %3733
  %3777 = select i1 %3775, float %3733, float %3734
  %3778 = select i1 %3773, float %3734, float %3776
  %3779 = select i1 %3773, float %3735, float %3777
  %3780 = select i1 %3775, float %3769, float %3767
  %3781 = select i1 %3775, float %3767, float %3768
  %3782 = select i1 %3773, float %3768, float %3780
  %3783 = select i1 %3773, float %3769, float %3781
  %3784 = select i1 %3775, float %3772, float %3770
  %3785 = select i1 %3775, float %3770, float %3771
  %3786 = select i1 %3773, float %3771, float %3784
  %3787 = select i1 %3773, float %3772, float %3785
  %3788 = call float @dx.op.unary.f32(i32 27, float %3778)  ; Round_ni(value)
  %3789 = call float @dx.op.unary.f32(i32 27, float %3779)  ; Round_ni(value)
  %3790 = fptosi float %3788 to i32
  %3791 = fptosi float %3789 to i32
  %3792 = xor i32 %3791, %3790
  %3793 = sitofp i32 %3792 to float
  %3794 = fptosi float %3793 to i32
  %3795 = sitofp i32 %3794 to float
  %3796 = fmul fast float %3795, 0x3FE3C6EF40000000
  %3797 = frem fast float %3788, 2.560000e+02
  %3798 = frem fast float %3789, 2.560000e+02
  %3799 = fptoui float %3797 to i32
  %3800 = fptoui float %3798 to i32
  %3801 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %3799, i32 %3800, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = fadd fast float %3802, %3796
  %3806 = fadd fast float %3803, %3796
  %3807 = fadd fast float %3804, %3796
  %3808 = call float @dx.op.unary.f32(i32 22, float %3805)  ; Frc(value)
  %3809 = call float @dx.op.unary.f32(i32 22, float %3806)  ; Frc(value)
  %3810 = call float @dx.op.unary.f32(i32 22, float %3807)  ; Frc(value)
  %3811 = fmul fast float %3810, 0x401921FB60000000
  %3812 = call float @dx.op.unary.f32(i32 13, float %3811)  ; Sin(value)
  %3813 = call float @dx.op.unary.f32(i32 12, float %3811)  ; Cos(value)
  %3814 = fsub fast float -0.000000e+00, %3813
  %3815 = fmul fast float %3813, %3778
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3779, float %3815)  ; FMad(a,b,c)
  %3817 = fmul fast float %3812, %3778
  %3818 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3779, float %3817)  ; FMad(a,b,c)
  %3819 = fadd fast float %3816, %3808
  %3820 = fadd fast float %3818, %3809
  %3821 = extractvalue %dx.types.CBufRet.f32 %3731, 3
  %3822 = bitcast float %3821 to i32
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3862, label %3824

; <label>:3824                                    ; preds = %3727
  %3825 = add i32 %3822, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3826, %dx.types.Handle %75, float %3819, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3782, float %3783, float undef, float %3786, float %3787, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3832 = fsub fast float 1.000000e+00, %3437
  %3833 = call float @dx.op.binary.f32(i32 35, float %3832, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3834 = bitcast float %3437 to i32
  %3835 = sitofp i32 %3834 to float
  %3836 = fadd fast float %3835, 0xC1CFBF8940000000
  %3837 = fmul fast float %3831, %3836
  %3838 = fadd fast float %3837, 0x41CFBF8940000000
  %3839 = fptosi float %3838 to i32
  %3840 = bitcast i32 %3839 to float
  %3841 = bitcast float %3833 to i32
  %3842 = sitofp i32 %3841 to float
  %3843 = fadd fast float %3842, 0xC1CFBF8940000000
  %3844 = fmul fast float %3843, %3831
  %3845 = fadd fast float %3844, 0x41CFBF8940000000
  %3846 = fptosi float %3845 to i32
  %3847 = bitcast i32 %3846 to float
  %3848 = fmul fast float %3840, %3830
  %3849 = fmul fast float %3847, %3830
  %3850 = fsub fast float %3833, %3848
  %3851 = fadd fast float %3849, %3833
  %3852 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3854 = fsub fast float %3828, %3852
  %3855 = fsub fast float %3853, %3852
  %3856 = bitcast float %3855 to i32
  %3857 = sub nsw i32 2129859010, %3856
  %3858 = bitcast i32 %3857 to float
  %3859 = fmul fast float %3858, %3854
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = fcmp fast olt float %3860, 0x3F70101020000000
  br i1 %3861, label %4000, label %3862

; <label>:3862                                    ; preds = %3824, %3727
  %3863 = phi float [ %3860, %3824 ], [ %3437, %3727 ]
  %3864 = fmul fast float %3863, %3730
  %3865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.i32 %3865, 1
  %3867 = extractvalue %dx.types.CBufRet.i32 %3865, 0
  %3868 = add i32 %3867, 0
  %3869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3869, %dx.types.Handle %74, float %3819, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3782, float %3783, float undef, float %3786, float %3787, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = and i32 %3866, 255
  %3876 = uitofp i32 %3875 to float
  %3877 = lshr i32 %3866, 8
  %3878 = and i32 %3877, 255
  %3879 = uitofp i32 %3878 to float
  %3880 = fmul fast float %3874, %3876
  %3881 = fadd fast float %3880, %3879
  %3882 = fmul fast float %3881, 0x3F70101000000000
  %3883 = fadd fast float %3882, 0xBFB99999A0000000
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3884, 0x3FF1C71C80000000
  %3886 = call float @dx.op.binary.f32(i32 36, float %3882, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3887 = fsub fast float 1.000000e+00, %3885
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fmul fast float %3888, %3871
  %3890 = fmul fast float %3888, %3872
  %3891 = fmul fast float %3888, %3873
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = fmul fast float %3885, %3871
  %3896 = fmul fast float %3885, %3872
  %3897 = fmul fast float %3885, %3873
  %3898 = fadd fast float %3895, %3886
  %3899 = fadd fast float %3896, %3886
  %3900 = fadd fast float %3897, %3886
  %3901 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.i32 %3904, 3
  %3906 = extractvalue %dx.types.CBufRet.i32 %3904, 2
  %3907 = add i32 %3906, 0
  %3908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3909 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3908, %dx.types.Handle %74, float %3819, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3782, float %3783, float undef, float %3786, float %3787, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = and i32 %3905, 255
  %3915 = uitofp i32 %3914 to float
  %3916 = lshr i32 %3905, 8
  %3917 = and i32 %3916, 255
  %3918 = uitofp i32 %3917 to float
  %3919 = lshr i32 %3905, 16
  %3920 = and i32 %3919, 255
  %3921 = uitofp i32 %3920 to float
  %3922 = fmul fast float %3921, 0x3F70101000000000
  %3923 = fmul fast float %3910, %3915
  %3924 = fadd fast float %3923, %3918
  %3925 = fmul fast float %3924, 0x3F70101000000000
  %3926 = fadd fast float %3911, -5.000000e-01
  %3927 = fadd fast float %3913, -5.000000e-01
  %3928 = fmul fast float %3926, %3922
  %3929 = fmul fast float %3927, %3922
  %3930 = fadd fast float %3928, 5.000000e-01
  %3931 = fadd fast float %3929, 5.000000e-01
  %3932 = fmul fast float %3930, 2.000000e+00
  %3933 = fadd fast float %3932, -1.000000e+00
  %3934 = fmul fast float %3931, 2.000000e+00
  %3935 = fadd fast float %3934, -1.000000e+00
  %3936 = fadd fast float %3933, %3935
  %3937 = fmul fast float %3936, 5.000000e-01
  %3938 = fsub fast float %3933, %3935
  %3939 = fmul fast float %3938, 5.000000e-01
  %3940 = call float @dx.op.unary.f32(i32 6, float %3937)  ; FAbs(value)
  %3941 = fsub fast float 1.000000e+00, %3940
  %3942 = call float @dx.op.unary.f32(i32 6, float %3939)  ; FAbs(value)
  %3943 = fsub fast float %3941, %3942
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3939, float %3943, float %3937, float %3939, float %3943)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = call float @dx.op.unary.f32(i32 25, float %3944)  ; Rsqrt(value)
  %3946 = fmul fast float %3937, %3945
  %3947 = fmul fast float %3939, %3945
  %3948 = select i1 %3775, i32 %3765, i32 %3766
  %3949 = select i1 %3773, i32 %3764, i32 %3948
  %3950 = sitofp i32 %3949 to float
  %3951 = fmul fast float %3943, %3950
  %3952 = fmul fast float %3951, %3945
  %3953 = select i1 %3775, float %3952, float %3947
  %3954 = select i1 %3775, float %3947, float %3952
  %3955 = select i1 %3773, float %3952, float %3946
  %3956 = select i1 %3773, float %3947, float %3953
  %3957 = select i1 %3773, float %3946, float %3954
  %3958 = fsub fast float %3892, %3722
  %3959 = fsub fast float %3893, %3723
  %3960 = fsub fast float %3894, %3724
  %3961 = fmul fast float %3958, %3864
  %3962 = fmul fast float %3959, %3864
  %3963 = fmul fast float %3960, %3864
  %3964 = fadd fast float %3961, %3722
  %3965 = fadd fast float %3962, %3723
  %3966 = fadd fast float %3963, %3724
  %3967 = fsub fast float %3901, %3716
  %3968 = fsub fast float %3902, %3717
  %3969 = fsub fast float %3903, %3718
  %3970 = fmul fast float %3967, %3864
  %3971 = fmul fast float %3968, %3864
  %3972 = fmul fast float %3969, %3864
  %3973 = fadd fast float %3970, %3716
  %3974 = fadd fast float %3971, %3717
  %3975 = fadd fast float %3972, %3718
  %3976 = fadd fast float %3955, %3719
  %3977 = fadd fast float %3956, %3720
  %3978 = fadd fast float %3957, %3721
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3976, float %3977, float %3978, float %3976, float %3977, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = call float @dx.op.unary.f32(i32 25, float %3979)  ; Rsqrt(value)
  %3981 = fmul fast float %3976, %3980
  %3982 = fmul fast float %3977, %3980
  %3983 = fmul fast float %3978, %3980
  %3984 = fsub fast float %3981, %3719
  %3985 = fsub fast float %3982, %3720
  %3986 = fsub fast float %3983, %3721
  %3987 = fmul fast float %3984, %3864
  %3988 = fmul fast float %3985, %3864
  %3989 = fmul fast float %3986, %3864
  %3990 = fadd fast float %3987, %3719
  %3991 = fadd fast float %3988, %3720
  %3992 = fadd fast float %3989, %3721
  %3993 = call float @dx.op.binary.f32(i32 36, float %3726, float %3912)  ; FMin(a,b)
  %3994 = fsub fast float %3993, %3726
  %3995 = fmul fast float %3994, %3864
  %3996 = fadd fast float %3995, %3726
  %3997 = fsub fast float %3925, %3725
  %3998 = fmul fast float %3997, %3864
  %3999 = fadd fast float %3998, %3725
  br label %4000

; <label>:4000                                    ; preds = %3862, %3824, %3715, %3431
  %4001 = phi float [ %3973, %3862 ], [ %3716, %3824 ], [ %3716, %3715 ], [ %3025, %3431 ]
  %4002 = phi float [ %3974, %3862 ], [ %3717, %3824 ], [ %3717, %3715 ], [ %3026, %3431 ]
  %4003 = phi float [ %3975, %3862 ], [ %3718, %3824 ], [ %3718, %3715 ], [ %3027, %3431 ]
  %4004 = phi float [ %3990, %3862 ], [ %3719, %3824 ], [ %3719, %3715 ], [ %3004, %3431 ]
  %4005 = phi float [ %3991, %3862 ], [ %3720, %3824 ], [ %3720, %3715 ], [ %3005, %3431 ]
  %4006 = phi float [ %3992, %3862 ], [ %3721, %3824 ], [ %3721, %3715 ], [ %3006, %3431 ]
  %4007 = phi float [ %3964, %3862 ], [ %3722, %3824 ], [ %3722, %3715 ], [ %3040, %3431 ]
  %4008 = phi float [ %3965, %3862 ], [ %3723, %3824 ], [ %3723, %3715 ], [ %3041, %3431 ]
  %4009 = phi float [ %3966, %3862 ], [ %3724, %3824 ], [ %3724, %3715 ], [ %3042, %3431 ]
  %4010 = phi float [ %3999, %3862 ], [ %3725, %3824 ], [ %3725, %3715 ], [ %3028, %3431 ]
  %4011 = phi float [ %3996, %3862 ], [ %3726, %3824 ], [ %3726, %3715 ], [ %2841, %3431 ]
  %4012 = fcmp fast une float %3435, 0.000000e+00
  %4013 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = call float @dx.op.unary.f32(i32 25, float %4013)  ; Rsqrt(value)
  br i1 %4012, label %4022, label %4015

; <label>:4015                                    ; preds = %4000
  %4016 = fmul fast float %4014, %165
  %4017 = fmul fast float %4014, %166
  %4018 = fmul fast float %4014, %167
  %4019 = fsub fast float -0.000000e+00, %4016
  %4020 = fsub fast float -0.000000e+00, %4017
  %4021 = fsub fast float -0.000000e+00, %4018
  br label %4189

; <label>:4022                                    ; preds = %4000
  %4023 = fmul fast float %165, %4014
  %4024 = fsub fast float -0.000000e+00, %4023
  %4025 = fmul fast float %166, %4014
  %4026 = fsub fast float -0.000000e+00, %4025
  %4027 = fmul fast float %167, %4014
  %4028 = fsub fast float -0.000000e+00, %4027
  %4029 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4026, float %4028, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4030 = fmul fast float %3435, 2.500000e+00
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = fmul fast float %3435, 0x4013FFFFE0000000
  %4033 = fadd fast float %4032, 0xBFFFFFFFE0000000
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = fmul fast float %3435, 0x4004000020000000
  %4036 = fadd fast float %4035, 0xBFF8000040000000
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %3007, 1.000000e+01
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %4039, 2.000000e+00
  %4041 = fsub fast float 3.000000e+00, %4040
  %4042 = fmul fast float %4039, %4039
  %4043 = fmul fast float %4042, %4041
  %4044 = fsub fast float 1.000000e+00, %4043
  %4045 = fsub fast float 0x3FE3333340000000, %4010
  %4046 = fmul fast float %4045, 0x400AAAAAA0000000
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = fmul fast float %4044, %4047
  %4049 = fmul fast float %4007, 0x3FEA2B8620000000
  %4050 = fmul fast float %4008, 0x3FEA2B8620000000
  %4051 = fmul fast float %4009, 0x3FEA2B8620000000
  %4052 = fadd fast float %4049, 0x3FC81DFBA0000000
  %4053 = fmul fast float %4052, %4007
  %4054 = fadd fast float %4053, 0x3F910E6020000000
  %4055 = fadd fast float %4050, 0x3FC81DFBA0000000
  %4056 = fmul fast float %4055, %4008
  %4057 = fadd fast float %4056, 0x3F910E6020000000
  %4058 = fadd fast float %4051, 0x3FC81DFBA0000000
  %4059 = fmul fast float %4058, %4009
  %4060 = fadd fast float %4059, 0x3F910E6020000000
  %4061 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4063 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4064 = fsub fast float %4061, %4007
  %4065 = fsub fast float %4062, %4008
  %4066 = fsub fast float %4063, %4009
  %4067 = fmul fast float %4064, %4031
  %4068 = fmul fast float %4067, %4048
  %4069 = fmul fast float %4065, %4031
  %4070 = fmul fast float %4069, %4048
  %4071 = fmul fast float %4066, %4031
  %4072 = fmul fast float %4071, %4048
  %4073 = fadd fast float %4068, %4007
  %4074 = fadd fast float %4070, %4008
  %4075 = fadd fast float %4072, %4009
  %4076 = fmul fast float %4011, %4011
  %4077 = fmul fast float %4076, %4076
  %4078 = fadd fast float %4034, 1.000000e+00
  %4079 = fsub fast float %4078, %4048
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = fsub fast float 1.000000e+00, %4077
  %4084 = call float @dx.op.binary.f32(i32 36, float %4080, float %4083)  ; FMin(a,b)
  %4085 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4086 = call float @dx.op.binary.f32(i32 35, float %4084, float %4085)  ; FMax(a,b)
  %4087 = fadd fast float %4082, 0xBFE4CCCCC0000000
  %4088 = fmul fast float %4087, 0x4006DB6DA0000000
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = fmul fast float %4089, 2.000000e+00
  %4091 = fsub fast float 3.000000e+00, %4090
  %4092 = bitcast float %4001 to i32
  %4093 = ashr i32 %4092, 1
  %4094 = add nsw i32 %4093, 532487669
  %4095 = bitcast i32 %4094 to float
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = bitcast float %4096 to i32
  %4098 = sub nsw i32 2129859010, %4097
  %4099 = bitcast i32 %4098 to float
  %4100 = fmul fast float %4099, 2.000000e+00
  %4101 = bitcast float %4002 to i32
  %4102 = ashr i32 %4101, 1
  %4103 = add nsw i32 %4102, 532487669
  %4104 = bitcast i32 %4103 to float
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = bitcast float %4105 to i32
  %4107 = sub nsw i32 2129859010, %4106
  %4108 = bitcast i32 %4107 to float
  %4109 = fmul fast float %4108, 2.000000e+00
  %4110 = bitcast float %4003 to i32
  %4111 = ashr i32 %4110, 1
  %4112 = add nsw i32 %4111, 532487669
  %4113 = bitcast i32 %4112 to float
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = bitcast float %4114 to i32
  %4116 = sub nsw i32 2129859010, %4115
  %4117 = bitcast i32 %4116 to float
  %4118 = fmul fast float %4117, 2.000000e+00
  %4119 = fsub fast float 0x4002A9FBE0000000, %4100
  %4120 = fadd fast float %4100, 0x3FD54FDF00000000
  %4121 = bitcast float %4120 to i32
  %4122 = sub nsw i32 2129859010, %4121
  %4123 = bitcast i32 %4122 to float
  %4124 = fmul fast float %4123, %4119
  %4125 = fmul fast float %4124, %4124
  %4126 = fsub fast float 0x4002A9FBE0000000, %4109
  %4127 = fadd fast float %4109, 0x3FD54FDF00000000
  %4128 = bitcast float %4127 to i32
  %4129 = sub nsw i32 2129859010, %4128
  %4130 = bitcast i32 %4129 to float
  %4131 = fmul fast float %4130, %4126
  %4132 = fmul fast float %4131, %4131
  %4133 = fsub fast float 0x4002A9FBE0000000, %4118
  %4134 = fadd fast float %4118, 0x3FD54FDF00000000
  %4135 = bitcast float %4134 to i32
  %4136 = sub nsw i32 2129859010, %4135
  %4137 = bitcast i32 %4136 to float
  %4138 = fmul fast float %4137, %4133
  %4139 = fmul fast float %4138, %4138
  %4140 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4125)  ; FMax(a,b)
  %4141 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4132)  ; FMax(a,b)
  %4142 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4139)  ; FMax(a,b)
  %4143 = fsub fast float 1.000000e+00, %4029
  %4144 = fadd fast float %4143, %4044
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4146 = fsub fast float 1.000000e+00, %3416
  %4147 = fmul fast float %4086, %4146
  %4148 = fmul fast float %4089, %4089
  %4149 = fmul fast float %4148, %4147
  %4150 = fmul fast float %4149, %4091
  %4151 = fmul fast float %4146, 0xBFE99999A0000000
  %4152 = fmul fast float %4151, %4031
  %4153 = fmul fast float %4152, %4048
  %4154 = fadd fast float %4153, 1.000000e+00
  %4155 = fadd fast float %4010, -1.000000e+00
  %4156 = fmul fast float %4154, %4155
  %4157 = fadd fast float %4156, 1.000000e+00
  %4158 = fsub fast float %4140, %4001
  %4159 = fsub fast float %4141, %4002
  %4160 = fsub fast float %4142, %4003
  %4161 = fmul fast float %4150, %4158
  %4162 = fmul fast float %4150, %4159
  %4163 = fmul fast float %4150, %4160
  %4164 = fadd fast float %4161, %4001
  %4165 = fadd fast float %4162, %4002
  %4166 = fadd fast float %4163, %4003
  %4167 = fsub fast float %85, %4004
  %4168 = fsub fast float %86, %4005
  %4169 = fsub fast float %87, %4006
  %4170 = fmul fast float %4150, %4167
  %4171 = fmul fast float %4150, %4168
  %4172 = fmul fast float %4150, %4169
  %4173 = fadd fast float %4170, %4004
  %4174 = fadd fast float %4171, %4005
  %4175 = fadd fast float %4172, %4006
  %4176 = fmul fast float %4150, %4145
  %4177 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4178 = fsub fast float 1.000000e+00, %4177
  %4179 = fmul fast float %4176, %4178
  %4180 = fadd fast float %4179, %4177
  %4181 = fsub fast float 1.000000e+00, %4011
  %4182 = fmul fast float %4150, %4181
  %4183 = fadd fast float %4182, %4011
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4174, float %4175, float %4173, float %4174, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = call float @dx.op.unary.f32(i32 25, float %4184)  ; Rsqrt(value)
  %4186 = fmul fast float %4173, %4185
  %4187 = fmul fast float %4174, %4185
  %4188 = fmul fast float %4175, %4185
  br label %4189

; <label>:4189                                    ; preds = %4022, %4015
  %4190 = phi float [ %4021, %4015 ], [ %4028, %4022 ]
  %4191 = phi float [ %4020, %4015 ], [ %4026, %4022 ]
  %4192 = phi float [ %4019, %4015 ], [ %4024, %4022 ]
  %4193 = phi float [ %4018, %4015 ], [ %4027, %4022 ]
  %4194 = phi float [ %4017, %4015 ], [ %4025, %4022 ]
  %4195 = phi float [ %4016, %4015 ], [ %4023, %4022 ]
  %4196 = phi float [ %4001, %4015 ], [ %4164, %4022 ]
  %4197 = phi float [ %4002, %4015 ], [ %4165, %4022 ]
  %4198 = phi float [ %4003, %4015 ], [ %4166, %4022 ]
  %4199 = phi float [ %4004, %4015 ], [ %4186, %4022 ]
  %4200 = phi float [ %4005, %4015 ], [ %4187, %4022 ]
  %4201 = phi float [ %4006, %4015 ], [ %4188, %4022 ]
  %4202 = phi float [ %4007, %4015 ], [ %4073, %4022 ]
  %4203 = phi float [ %4008, %4015 ], [ %4074, %4022 ]
  %4204 = phi float [ %4009, %4015 ], [ %4075, %4022 ]
  %4205 = phi float [ %4010, %4015 ], [ %4180, %4022 ]
  %4206 = phi float [ %4011, %4015 ], [ %4183, %4022 ]
  %4207 = select i1 %217, float 0.000000e+00, float %4198
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4200, float %4201, float %4192, float %4191, float %4190)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4195, float %4194, float %4193, float %4199, float %4200, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = fmul fast float %4210, 2.000000e+00
  %4212 = fmul fast float %4211, %4199
  %4213 = fmul fast float %4211, %4200
  %4214 = fmul fast float %4211, %4201
  %4215 = fsub fast float %4195, %4212
  %4216 = fsub fast float %4194, %4213
  %4217 = fsub fast float %4193, %4214
  %4218 = call float @dx.op.binary.f32(i32 36, float %4206, float 1.000000e+00)  ; FMin(a,b)
  %4219 = fsub fast float 1.000000e+00, %4206
  %4220 = bitcast float %4219 to i32
  %4221 = sub nsw i32 2129859010, %4220
  %4222 = fsub fast float 1.000000e+00, %55
  %4223 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4225 = fdiv fast float %4222, %4224
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4200, float %4201, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = fmul fast float %4227, 5.000000e-01
  %4229 = fadd fast float %4228, 5.000000e-01
  %4230 = fmul fast float %4229, %55
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4200, float %4201, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4232, %4225
  %4234 = fadd fast float %4230, %4233
  %4235 = fsub fast float 5.000000e-01, %4228
  %4236 = fmul fast float %4235, %4202
  %4237 = fmul fast float %4235, %4203
  %4238 = fmul fast float %4235, %4204
  %4239 = fadd fast float %4234, %4236
  %4240 = fadd fast float %4234, %4237
  %4241 = fadd fast float %4234, %4238
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = fmul fast float %4243, 5.000000e-01
  %4245 = fadd fast float %4244, 5.000000e-01
  %4246 = fmul fast float %4245, %55
  %4247 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = fmul fast float %4248, %4225
  %4250 = fadd fast float %4246, %4249
  %4251 = fsub fast float 5.000000e-01, %4244
  %4252 = fmul fast float %4251, %4202
  %4253 = fmul fast float %4251, %4203
  %4254 = fmul fast float %4251, %4204
  %4255 = fadd fast float %4250, %4252
  %4256 = fadd fast float %4250, %4253
  %4257 = fadd fast float %4250, %4254
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = call float @dx.op.binary.f32(i32 36, float %4202, float %4259)  ; FMin(a,b)
  %4261 = fsub fast float 1.000000e+00, %4218
  %4262 = fmul fast float %4260, %4261
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = bitcast float %4263 to i32
  %4265 = sub nsw i32 2129859010, %4264
  %4266 = bitcast i32 %4265 to float
  %4267 = call float @dx.op.binary.f32(i32 36, float %4203, float %4259)  ; FMin(a,b)
  %4268 = fmul fast float %4267, %4261
  %4269 = fsub fast float 1.000000e+00, %4268
  %4270 = bitcast float %4269 to i32
  %4271 = sub nsw i32 2129859010, %4270
  %4272 = bitcast i32 %4271 to float
  %4273 = call float @dx.op.binary.f32(i32 36, float %4204, float %4259)  ; FMin(a,b)
  %4274 = fmul fast float %4273, %4261
  %4275 = fsub fast float 1.000000e+00, %4274
  %4276 = bitcast float %4275 to i32
  %4277 = sub nsw i32 2129859010, %4276
  %4278 = bitcast i32 %4277 to float
  %4279 = fmul fast float %4218, %56
  %4280 = fmul fast float %4279, %4239
  %4281 = fmul fast float %4280, %4266
  %4282 = fmul fast float %4218, %57
  %4283 = fmul fast float %4282, %4240
  %4284 = fmul fast float %4283, %4272
  %4285 = fmul fast float %4218, %58
  %4286 = fmul fast float %4285, %4241
  %4287 = fmul fast float %4286, %4278
  %4288 = call float @dx.op.binary.f32(i32 36, float %4196, float %4259)  ; FMin(a,b)
  %4289 = fmul fast float %4288, %4261
  %4290 = fsub fast float 1.000000e+00, %4289
  %4291 = bitcast float %4290 to i32
  %4292 = sub nsw i32 2129859010, %4291
  %4293 = bitcast i32 %4292 to float
  %4294 = call float @dx.op.binary.f32(i32 36, float %4197, float %4259)  ; FMin(a,b)
  %4295 = fmul fast float %4294, %4261
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = bitcast float %4296 to i32
  %4298 = sub nsw i32 2129859010, %4297
  %4299 = bitcast i32 %4298 to float
  %4300 = call float @dx.op.binary.f32(i32 36, float %4207, float %4259)  ; FMin(a,b)
  %4301 = fmul fast float %4300, %4261
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = bitcast float %4302 to i32
  %4304 = sub nsw i32 2129859010, %4303
  %4305 = bitcast i32 %4304 to float
  %4306 = fmul fast float %4279, %4255
  %4307 = fmul fast float %4306, %4293
  %4308 = fmul fast float %4282, %4256
  %4309 = fmul fast float %4308, %4299
  %4310 = fmul fast float %4285, %4257
  %4311 = fmul fast float %4310, %4305
  %4312 = call float @dx.op.dot3.f32(i32 55, float %4281, float %4284, float %4287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4313 = select i1 %217, float 0.000000e+00, float %4281
  %4314 = select i1 %217, float %4312, float %4284
  %4315 = select i1 %217, float 0.000000e+00, float %4287
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4307, float %4309, float %4311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = select i1 %217, float 0.000000e+00, float %4307
  %4318 = select i1 %217, float %4316, float %4309
  %4319 = select i1 %217, float 0.000000e+00, float %4311
  %4320 = fmul fast float %4209, 9.843750e-01
  %4321 = fmul fast float %4205, 9.843750e-01
  %4322 = fadd fast float %4320, 7.812500e-03
  %4323 = fadd fast float %4321, 7.812500e-03
  %4324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %4322, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 2
  %4326 = extractvalue %dx.types.ResRet.f32 %4324, 3
  %4327 = fmul fast float %4325, %4196
  %4328 = fmul fast float %4325, %4197
  %4329 = fmul fast float %4325, %4207
  %4330 = fadd fast float %4327, %4326
  %4331 = fadd fast float %4328, %4326
  %4332 = fadd fast float %4329, %4326
  %4333 = call float @dx.op.binary.f32(i32 35, float %4331, float %4332)  ; FMax(a,b)
  %4334 = call float @dx.op.binary.f32(i32 35, float %4330, float %4333)  ; FMax(a,b)
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = fmul fast float %4335, %4313
  %4337 = fmul fast float %4335, %4314
  %4338 = fmul fast float %4335, %4315
  %4339 = fmul fast float %4330, %4317
  %4340 = fmul fast float %4331, %4318
  %4341 = fmul fast float %4332, %4319
  %4342 = fmul fast float %4336, %835
  %4343 = fmul fast float %4337, %835
  %4344 = fmul fast float %4338, %835
  %4345 = fadd fast float %4339, %2970
  %4346 = fmul fast float %4345, %835
  %4347 = fadd fast float %4340, %2974
  %4348 = fmul fast float %4347, %835
  %4349 = fadd fast float %4341, %2978
  %4350 = fmul fast float %4349, %835
  %4351 = bitcast i32 %4221 to float
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4354 = fcmp fast oeq float %4353, 0.000000e+00
  br i1 %4354, label %4513, label %4355

; <label>:4355                                    ; preds = %4189
  %4356 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4363, 0
  %4365 = extractvalue %dx.types.CBufRet.f32 %4363, 1
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = select i1 %217, float %4364, float %4360
  %4368 = select i1 %217, float %4366, float %4361
  %4369 = select i1 %217, float %4365, float %4362
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4372 = fcmp fast une float %4371, 0.000000e+00
  br i1 %4372, label %4373, label %4390

; <label>:4373                                    ; preds = %4355
  %4374 = fptoui float %78 to i32
  %4375 = fptoui float %79 to i32
  %4376 = lshr i32 %4374, 4
  %4377 = lshr i32 %4375, 4
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = fptoui float %4379 to i32
  %4381 = add i32 %4380, 15
  %4382 = lshr i32 %4381, 4
  %4383 = mul i32 %4382, %4377
  %4384 = add i32 %4383, %4376
  %4385 = shl i32 %4384, 3
  %4386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.i32 %4386, 0
  %4388 = and i32 %4387, -268435456
  %4389 = icmp eq i32 %4388, -1342177280
  br i1 %4389, label %4400, label %4390

; <label>:4390                                    ; preds = %4373, %4355
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 2
  %4393 = extractvalue %dx.types.CBufRet.f32 %4391, 3
  %4394 = fmul fast float %4392, %78
  %4395 = fmul fast float %4393, %79
  %4396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4394, float %4395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  br label %4400

; <label>:4400                                    ; preds = %4390, %4373
  %4401 = phi float [ %4397, %4390 ], [ 0.000000e+00, %4373 ]
  %4402 = phi float [ %4398, %4390 ], [ 0.000000e+00, %4373 ]
  %4403 = phi float [ %4399, %4390 ], [ 0.000000e+00, %4373 ]
  %4404 = call float @dx.op.binary.f32(i32 36, float %4402, float %4403)  ; FMin(a,b)
  %4405 = call float @dx.op.binary.f32(i32 36, float %4401, float %4404)  ; FMin(a,b)
  %4406 = fcmp fast ogt float %4405, 0.000000e+00
  br i1 %4406, label %4407, label %4513, !dx.controlflow.hints !76

; <label>:4407                                    ; preds = %4400
  %4408 = fmul fast float %4401, %4367
  %4409 = fmul fast float %4402, %4368
  %4410 = fmul fast float %4403, %4369
  %4411 = fsub fast float %4356, %4195
  %4412 = fsub fast float %4357, %4194
  %4413 = fsub fast float %4358, %4193
  %4414 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4412, float %4413, float %4411, float %4412, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %4415 = call float @dx.op.unary.f32(i32 25, float %4414)  ; Rsqrt(value)
  %4416 = fmul fast float %4415, %4411
  %4417 = fmul fast float %4415, %4412
  %4418 = fmul fast float %4415, %4413
  %4419 = call float @dx.op.dot3.f32(i32 55, float %4356, float %4357, float %4358, float %4199, float %4200, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4191, float %4190, float %4416, float %4417, float %4418)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4422 = fmul fast float %4421, %4421
  %4423 = fmul fast float %4422, %4351
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %4424, %4421
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4200, float %4201, float %4416, float %4417, float %4418)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = fmul fast float %4426, %4426
  %4428 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4429 = fsub fast float 1.000000e+00, %4205
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float 0x3F847AE140000000)  ; FMax(a,b)
  %4431 = fmul fast float %4430, %4430
  %4432 = fmul fast float %4431, %4431
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = fmul fast float %4209, %4209
  %4435 = fmul fast float %4434, %4433
  %4436 = fadd fast float %4435, %4432
  %4437 = bitcast float %4436 to i32
  %4438 = ashr i32 %4437, 1
  %4439 = add nsw i32 %4438, 532487669
  %4440 = bitcast i32 %4439 to float
  %4441 = fadd fast float %4440, %4209
  %4442 = fmul fast float %4432, %4427
  %4443 = fsub fast float 1.000000e+00, %4427
  %4444 = fadd fast float %4443, %4442
  %4445 = fmul fast float %4428, %4428
  %4446 = fmul fast float %4445, %4433
  %4447 = fadd fast float %4446, %4432
  %4448 = bitcast float %4447 to i32
  %4449 = ashr i32 %4448, 1
  %4450 = add nsw i32 %4449, 532487669
  %4451 = bitcast i32 %4450 to float
  %4452 = fadd fast float %4451, %4428
  %4453 = fmul fast float %4444, %4444
  %4454 = fmul fast float %4453, %4441
  %4455 = fmul fast float %4454, %4452
  %4456 = fdiv fast float 0x3FF0A00000000000, %4455
  %4457 = fmul fast float %4456, %4432
  %4458 = call float @dx.op.unary.f32(i32 6, float %4420)  ; FAbs(value)
  %4459 = fsub fast float 1.000000e+00, %4458
  %4460 = bitcast float %4459 to i32
  %4461 = sitofp i32 %4460 to float
  %4462 = fmul fast float %4461, 5.000000e+00
  %4463 = fadd fast float %4462, 0xC1EFBF8940000000
  %4464 = fptosi float %4463 to i32
  %4465 = bitcast i32 %4464 to float
  %4466 = fsub fast float 1.000000e+00, %4196
  %4467 = fsub fast float 1.000000e+00, %4197
  %4468 = fsub fast float 1.000000e+00, %4207
  %4469 = fmul fast float %4465, %4466
  %4470 = fmul fast float %4465, %4467
  %4471 = fmul fast float %4465, %4468
  %4472 = fadd fast float %4469, %4196
  %4473 = fadd fast float %4470, %4197
  %4474 = fadd fast float %4471, %4207
  %4475 = fmul fast float %4419, 9.843750e-01
  %4476 = fadd fast float %4475, 7.812500e-03
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %4476, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 3
  %4480 = fmul fast float %4478, %4196
  %4481 = fmul fast float %4478, %4197
  %4482 = fmul fast float %4478, %4207
  %4483 = fadd fast float %4480, %4479
  %4484 = fadd fast float %4481, %4479
  %4485 = fadd fast float %4482, %4479
  %4486 = call float @dx.op.binary.f32(i32 35, float %4484, float %4485)  ; FMax(a,b)
  %4487 = call float @dx.op.binary.f32(i32 35, float %4483, float %4486)  ; FMax(a,b)
  %4488 = fsub fast float 1.000000e+00, %4487
  %4489 = fmul fast float %4425, %4408
  %4490 = fmul fast float %4489, %4488
  %4491 = fmul fast float %4425, %4409
  %4492 = fmul fast float %4491, %4488
  %4493 = fmul fast float %4425, %4410
  %4494 = fmul fast float %4493, %4488
  %4495 = fmul fast float %4489, %4457
  %4496 = fmul fast float %4495, %4472
  %4497 = fmul fast float %4491, %4457
  %4498 = fmul fast float %4497, %4473
  %4499 = fmul fast float %4493, %4457
  %4500 = fmul fast float %4499, %4474
  %4501 = fadd fast float %4490, %4336
  %4502 = fmul fast float %4501, %835
  %4503 = fadd fast float %4492, %4337
  %4504 = fmul fast float %4503, %835
  %4505 = fadd fast float %4494, %4338
  %4506 = fmul fast float %4505, %835
  %4507 = fadd fast float %4496, %4345
  %4508 = fmul fast float %4507, %835
  %4509 = fadd fast float %4498, %4347
  %4510 = fmul fast float %4509, %835
  %4511 = fadd fast float %4500, %4349
  %4512 = fmul fast float %4511, %835
  br label %4513

; <label>:4513                                    ; preds = %4407, %4400, %4189
  %4514 = phi float [ %4346, %4189 ], [ %4346, %4400 ], [ %4508, %4407 ]
  %4515 = phi float [ %4348, %4189 ], [ %4348, %4400 ], [ %4510, %4407 ]
  %4516 = phi float [ %4350, %4189 ], [ %4350, %4400 ], [ %4512, %4407 ]
  %4517 = phi float [ %4342, %4189 ], [ %4342, %4400 ], [ %4502, %4407 ]
  %4518 = phi float [ %4343, %4189 ], [ %4343, %4400 ], [ %4504, %4407 ]
  %4519 = phi float [ %4344, %4189 ], [ %4344, %4400 ], [ %4506, %4407 ]
  %4520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.i32 %4520, 0
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4888, label %4523

; <label>:4523                                    ; preds = %4513
  %4524 = fptoui float %78 to i32
  %4525 = fptoui float %79 to i32
  %4526 = lshr i32 %4524, 4
  %4527 = lshr i32 %4525, 4
  %4528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.i32 %4528, 0
  %4530 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4527, i32 %4529, i32 %4526)  ; UMad(a,b,c)
  %4531 = add nsw i32 %4521, -1
  %4532 = call i32 @dx.op.binary.i32(i32 37, i32 %4531, i32 0)  ; IMax(a,b)
  %4533 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %4534 = fptoui float %4533 to i32
  %4535 = lshr i32 %4534, 5
  %4536 = call i32 @dx.op.binary.i32(i32 40, i32 %4535, i32 8191)  ; UMin(a,b)
  %4537 = shl i32 %4536, 2
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = lshr i32 %4539, 16
  %4541 = and i32 %4539, 65535
  %4542 = lshr i32 %4539, 21
  %4543 = lshr i32 %4541, 5
  %4544 = call i32 @dx.op.binary.i32(i32 40, i32 %4543, i32 %4532)  ; UMin(a,b)
  %4545 = icmp ugt i32 %4542, %4544
  br i1 %4545, label %4888, label %4546

; <label>:4546                                    ; preds = %4523
  br label %4547

; <label>:4547                                    ; preds = %4878, %4546
  %4548 = phi i32 [ %4885, %4878 ], [ %4542, %4546 ]
  %4549 = phi float [ %4879, %4878 ], [ %4514, %4546 ]
  %4550 = phi float [ %4880, %4878 ], [ %4515, %4546 ]
  %4551 = phi float [ %4881, %4878 ], [ %4516, %4546 ]
  %4552 = phi float [ %4882, %4878 ], [ %4517, %4546 ]
  %4553 = phi float [ %4883, %4878 ], [ %4518, %4546 ]
  %4554 = phi float [ %4884, %4878 ], [ %4519, %4546 ]
  %4555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.i32 %4555, 0
  %4557 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4530, i32 %4556, i32 %4548)  ; UMad(a,b,c)
  %4558 = shl i32 %4557, 2
  %4559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.i32 %4559, 0
  %4561 = shl i32 %4548, 5
  %4562 = sub nsw i32 %4540, %4561
  %4563 = call i32 @dx.op.binary.i32(i32 37, i32 %4562, i32 0)  ; IMax(a,b)
  %4564 = call i32 @dx.op.binary.i32(i32 38, i32 %4563, i32 31)  ; IMin(a,b)
  %4565 = sub nsw i32 1, %4540
  %4566 = add nsw i32 %4565, %4541
  %4567 = call i32 @dx.op.binary.i32(i32 37, i32 %4566, i32 0)  ; IMax(a,b)
  %4568 = call i32 @dx.op.binary.i32(i32 38, i32 %4567, i32 32)  ; IMin(a,b)
  %4569 = and i32 %4568, 31
  %4570 = shl i32 -1, %4569
  %4571 = xor i32 %4570, -1
  %4572 = and i32 %4564, 31
  %4573 = shl i32 %4571, %4572
  %4574 = icmp eq i32 %4568, 32
  %4575 = select i1 %4574, i32 -1, i32 %4573
  %4576 = and i32 %4575, %4560
  %4577 = icmp eq i32 %4576, 0
  br i1 %4577, label %4878, label %4578

; <label>:4578                                    ; preds = %4547
  br label %4579

; <label>:4579                                    ; preds = %4659, %4578
  %4580 = phi i32 [ %4591, %4659 ], [ %4576, %4578 ]
  %4581 = phi float [ %4660, %4659 ], [ %4549, %4578 ]
  %4582 = phi float [ %4661, %4659 ], [ %4550, %4578 ]
  %4583 = phi float [ %4662, %4659 ], [ %4551, %4578 ]
  %4584 = phi float [ %4663, %4659 ], [ %4552, %4578 ]
  %4585 = phi float [ %4664, %4659 ], [ %4553, %4578 ]
  %4586 = phi float [ %4665, %4659 ], [ %4554, %4578 ]
  %4587 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4580)  ; FirstbitLo(value)
  %4588 = add i32 %4587, %4561
  %4589 = and i32 %4587, 31
  %4590 = shl i32 1, %4589
  %4591 = xor i32 %4590, %4580
  %4592 = mul i32 %4588, 112
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = or i32 %4592, 12
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = add i32 %4592, 44
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = add i32 %4592, 48
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = add i32 %4592, 80
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = select i1 %217, float %4610, float %4594
  %4614 = select i1 %217, float %4612, float %4595
  %4615 = select i1 %217, float %4611, float %4596
  %4616 = fsub fast float %4605, %165
  %4617 = fsub fast float %4606, %166
  %4618 = fsub fast float %4607, %167
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4616, float %4617, float %4618)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = call float @dx.op.unary.f32(i32 24, float %4619)  ; Sqrt(value)
  %4621 = fdiv fast float 1.000000e+00, %4620
  %4622 = fmul fast float %4621, %4616
  %4623 = fmul fast float %4621, %4617
  %4624 = fmul fast float %4621, %4618
  %4625 = fadd fast float %4620, %4599
  %4626 = fdiv fast float 1.000000e+00, %4625
  %4627 = fmul float %4602, %4626
  %4628 = fmul float %4627, %4627
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = and i32 %4590, %4576
  %4631 = icmp eq i32 %4630, 0
  br i1 %4631, label %4654, label %4632, !dx.controlflow.hints !77

; <label>:4632                                    ; preds = %4579
  %4633 = lshr i32 %4524, 5
  %4634 = lshr i32 %4525, 5
  %4635 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4633, i32 %4634, i32 %4588, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4636 = extractvalue %dx.types.ResRet.i32 %4635, 0
  %4637 = and i32 %4636, 3
  %4638 = icmp eq i32 %4637, 0
  %4639 = select i1 %4638, float 1.000000e+00, float 0.000000e+00
  %4640 = icmp eq i32 %4637, 3
  br i1 %4640, label %4641, label %4654

; <label>:4641                                    ; preds = %4632
  %4642 = lshr i32 %4636, 10
  %4643 = and i32 %4642, 8160
  %4644 = and i32 %4525, 31
  %4645 = or i32 %4643, %4644
  %4646 = lshr i32 %4636, 1
  %4647 = and i32 %4646, 16352
  %4648 = and i32 %4524, 31
  %4649 = or i32 %4647, %4648
  %4650 = lshr i32 %4636, 23
  %4651 = and i32 %4650, 255
  %4652 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %4649, i32 %4645, i32 %4651, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  br label %4654

; <label>:4654                                    ; preds = %4641, %4632, %4579
  %4655 = phi float [ %4653, %4641 ], [ %4639, %4632 ], [ 0.000000e+00, %4579 ]
  %4656 = call float @dx.op.binary.f32(i32 36, float %4655, float %4655)  ; FMin(a,b)
  %4657 = call float @dx.op.binary.f32(i32 36, float %4655, float %4656)  ; FMin(a,b)
  %4658 = fcmp fast ogt float %4657, 0.000000e+00
  br i1 %4658, label %4667, label %4659, !dx.controlflow.hints !78

; <label>:4659                                    ; preds = %4728, %4654
  %4660 = phi float [ %4581, %4654 ], [ %4874, %4728 ]
  %4661 = phi float [ %4582, %4654 ], [ %4875, %4728 ]
  %4662 = phi float [ %4583, %4654 ], [ %4876, %4728 ]
  %4663 = phi float [ %4584, %4654 ], [ %4865, %4728 ]
  %4664 = phi float [ %4585, %4654 ], [ %4866, %4728 ]
  %4665 = phi float [ %4586, %4654 ], [ %4867, %4728 ]
  %4666 = icmp eq i32 %4580, %4590
  br i1 %4666, label %4877, label %4579

; <label>:4667                                    ; preds = %4654
  %4668 = fmul fast float %4655, %4613
  %4669 = fmul fast float %4655, %4614
  %4670 = fmul fast float %4655, %4615
  %4671 = fsub fast float %4607, %3403
  %4672 = fcmp fast ogt float %4671, 0.000000e+00
  %4673 = fsub fast float %167, %3403
  %4674 = fcmp fast ogt float %4673, 0.000000e+00
  %4675 = xor i1 %4674, %4672
  %4676 = fsub fast float %3403, %4607
  %4677 = fmul fast float %4676, 2.000000e+00
  %4678 = fadd fast float %4677, %4607
  %4679 = select i1 %4675, float %4607, float %4678
  %4680 = fsub fast float %4679, %167
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4680, float %4616, float %4617, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 25, float %4681)  ; Rsqrt(value)
  %4683 = fmul fast float %4682, %4616
  %4684 = fmul fast float %4682, %4617
  %4685 = fmul fast float %4682, %4680
  %4686 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4683, float %4684, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = fdiv fast float 1.000000e+00, %4687
  %4689 = fmul fast float %4688, %4686
  %4690 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4673, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fcmp fast ogt float %4690, 0.000000e+00
  %4692 = fcmp fast olt float %4690, 0.000000e+00
  %4693 = zext i1 %4691 to i32
  %4694 = zext i1 %4692 to i32
  %4695 = sub nsw i32 %4693, %4694
  %4696 = sitofp i32 %4695 to float
  %4697 = fsub fast float %4679, %3403
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4697, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fcmp fast ogt float %4698, 0.000000e+00
  %4700 = fcmp fast olt float %4698, 0.000000e+00
  %4701 = zext i1 %4699 to i32
  %4702 = zext i1 %4700 to i32
  %4703 = sub nsw i32 %4701, %4702
  %4704 = sitofp i32 %4703 to float
  %4705 = fcmp fast une float %4696, %4704
  br i1 %4705, label %4706, label %4716

; <label>:4706                                    ; preds = %4667
  %4707 = fmul fast float %4689, %4685
  %4708 = fmul fast float %4689, %4684
  %4709 = fmul fast float %4689, %4683
  %4710 = fmul fast float %4709, %4709
  %4711 = fmul fast float %4708, %4708
  %4712 = fadd fast float %4710, %4711
  %4713 = fmul fast float %4707, %4707
  %4714 = fadd fast float %4712, %4713
  %4715 = call float @dx.op.unary.f32(i32 24, float %4714)  ; Sqrt(value)
  br label %4728

; <label>:4716                                    ; preds = %4667
  %4717 = icmp slt i32 %4695, 0
  br i1 %4717, label %4718, label %4728

; <label>:4718                                    ; preds = %4716
  %4719 = fsub fast float %165, %4605
  %4720 = fsub fast float %166, %4606
  %4721 = fsub fast float %167, %4679
  %4722 = fmul fast float %4719, %4719
  %4723 = fmul fast float %4720, %4720
  %4724 = fadd fast float %4722, %4723
  %4725 = fmul fast float %4721, %4721
  %4726 = fadd fast float %4724, %4725
  %4727 = call float @dx.op.unary.f32(i32 24, float %4726)  ; Sqrt(value)
  br label %4728

; <label>:4728                                    ; preds = %4718, %4716, %4706
  %4729 = phi float [ %4715, %4706 ], [ %4727, %4718 ], [ 0.000000e+00, %4716 ]
  %4730 = and i1 %4674, %4672
  %4731 = fsub fast float -0.000000e+00, %4729
  %4732 = select i1 %4730, float -0.000000e+00, float %4731
  %4733 = fmul fast float %3404, 0x3FF7154760000000
  %4734 = fmul fast float %4733, %4732
  %4735 = fmul fast float %3405, 0x3FF7154760000000
  %4736 = fmul fast float %4735, %4732
  %4737 = fmul fast float %3406, 0x3FF7154760000000
  %4738 = fmul fast float %4737, %4732
  %4739 = call float @dx.op.unary.f32(i32 21, float %4734)  ; Exp(value)
  %4740 = call float @dx.op.unary.f32(i32 21, float %4736)  ; Exp(value)
  %4741 = call float @dx.op.unary.f32(i32 21, float %4738)  ; Exp(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4745 = fmul fast float %4668, %4742
  %4746 = fmul fast float %4669, %4743
  %4747 = fmul fast float %4670, %4744
  %4748 = fsub fast float %4622, %4195
  %4749 = fsub fast float %4623, %4194
  %4750 = fsub fast float %4624, %4193
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float %4748, float %4749, float %4750)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.unary.f32(i32 25, float %4751)  ; Rsqrt(value)
  %4753 = fmul fast float %4752, %4748
  %4754 = fmul fast float %4752, %4749
  %4755 = fmul fast float %4752, %4750
  %4756 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float %4199, float %4200, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4191, float %4190, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4759 = fmul fast float %4758, %4629
  %4760 = fmul fast float %4758, %4758
  %4761 = fmul fast float %4760, %4351
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4759, %4762
  %4764 = bitcast float %4619 to i32
  %4765 = ashr i32 %4764, 1
  %4766 = sub nsw i32 1597463007, %4765
  %4767 = bitcast i32 %4766 to float
  %4768 = fmul fast float %4767, %4616
  %4769 = fmul fast float %4767, %4617
  %4770 = fmul fast float %4767, %4618
  %4771 = fsub fast float %4768, %4195
  %4772 = fsub fast float %4769, %4194
  %4773 = fsub fast float %4770, %4193
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4772, float %4773, float %4771, float %4772, float %4773)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.unary.f32(i32 25, float %4774)  ; Rsqrt(value)
  %4776 = fmul fast float %4771, %4775
  %4777 = fmul fast float %4772, %4775
  %4778 = fmul fast float %4773, %4775
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4199, float %4200, float %4201, float %4776, float %4777, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = fmul fast float %4779, %4779
  %4781 = call float @dx.op.unary.f32(i32 6, float %4756)  ; FAbs(value)
  %4782 = fsub fast float 1.000000e+00, %4205
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float 0x3F847AE140000000)  ; FMax(a,b)
  %4784 = fmul fast float %4783, %4783
  %4785 = fmul fast float %4784, %4784
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = fmul fast float %4209, %4209
  %4788 = fmul fast float %4787, %4786
  %4789 = fadd fast float %4788, %4785
  %4790 = bitcast float %4789 to i32
  %4791 = ashr i32 %4790, 1
  %4792 = add nsw i32 %4791, 532487669
  %4793 = bitcast i32 %4792 to float
  %4794 = fadd fast float %4793, %4209
  %4795 = fmul fast float %4785, %4780
  %4796 = fsub fast float 1.000000e+00, %4780
  %4797 = fadd fast float %4796, %4795
  %4798 = fmul fast float %4781, %4781
  %4799 = fmul fast float %4798, %4786
  %4800 = fadd fast float %4799, %4785
  %4801 = bitcast float %4800 to i32
  %4802 = ashr i32 %4801, 1
  %4803 = add nsw i32 %4802, 532487669
  %4804 = bitcast i32 %4803 to float
  %4805 = fadd fast float %4804, %4781
  %4806 = fmul fast float %4797, %4797
  %4807 = fmul fast float %4806, %4794
  %4808 = fmul fast float %4807, %4805
  %4809 = fdiv fast float 1.000000e+00, %4808
  %4810 = bitcast float %4785 to i32
  %4811 = sitofp i32 %4810 to float
  %4812 = fmul fast float %4811, 0x3FE7F73180000000
  %4813 = fadd fast float %4812, 0x41AFE27C40000000
  %4814 = fptosi float %4813 to i32
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4602, 0x3FD80E9D60000000
  %4817 = fmul fast float %4816, %4767
  %4818 = fadd fast float %4815, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = fmul fast float %4785, %4809
  %4823 = fmul fast float %4822, %4815
  %4824 = fmul fast float %4823, %4821
  %4825 = call float @dx.op.unary.f32(i32 6, float %4757)  ; FAbs(value)
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sitofp i32 %4827 to float
  %4829 = fmul fast float %4828, 5.000000e+00
  %4830 = fadd fast float %4829, 0xC1EFBF8940000000
  %4831 = fptosi float %4830 to i32
  %4832 = bitcast i32 %4831 to float
  %4833 = fsub fast float 1.000000e+00, %4196
  %4834 = fsub fast float 1.000000e+00, %4197
  %4835 = fsub fast float 1.000000e+00, %4207
  %4836 = fmul fast float %4832, %4833
  %4837 = fmul fast float %4832, %4834
  %4838 = fmul fast float %4832, %4835
  %4839 = fadd fast float %4836, %4196
  %4840 = fadd fast float %4837, %4197
  %4841 = fadd fast float %4838, %4207
  %4842 = fmul fast float %4756, 9.843750e-01
  %4843 = fadd fast float %4842, 7.812500e-03
  %4844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %4843, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4845 = extractvalue %dx.types.ResRet.f32 %4844, 2
  %4846 = extractvalue %dx.types.ResRet.f32 %4844, 3
  %4847 = fmul fast float %4845, %4196
  %4848 = fmul fast float %4845, %4197
  %4849 = fmul fast float %4845, %4207
  %4850 = fadd fast float %4847, %4846
  %4851 = fadd fast float %4848, %4846
  %4852 = fadd fast float %4849, %4846
  %4853 = call float @dx.op.binary.f32(i32 35, float %4851, float %4852)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4850, float %4853)  ; FMax(a,b)
  %4855 = fsub fast float 1.000000e+00, %4854
  %4856 = fmul fast float %4745, %835
  %4857 = fmul fast float %4856, %4763
  %4858 = fmul fast float %4857, %4855
  %4859 = fmul fast float %4746, %835
  %4860 = fmul fast float %4859, %4763
  %4861 = fmul fast float %4860, %4855
  %4862 = fmul fast float %4747, %835
  %4863 = fmul fast float %4862, %4763
  %4864 = fmul fast float %4863, %4855
  %4865 = fadd fast float %4858, %4584
  %4866 = fadd fast float %4861, %4585
  %4867 = fadd fast float %4864, %4586
  %4868 = fmul fast float %4857, %4839
  %4869 = fmul fast float %4868, %4824
  %4870 = fmul fast float %4860, %4840
  %4871 = fmul fast float %4870, %4824
  %4872 = fmul fast float %4863, %4841
  %4873 = fmul fast float %4872, %4824
  %4874 = fadd fast float %4869, %4581
  %4875 = fadd fast float %4871, %4582
  %4876 = fadd fast float %4873, %4583
  br label %4659

; <label>:4877                                    ; preds = %4659
  br label %4878

; <label>:4878                                    ; preds = %4877, %4547
  %4879 = phi float [ %4549, %4547 ], [ %4660, %4877 ]
  %4880 = phi float [ %4550, %4547 ], [ %4661, %4877 ]
  %4881 = phi float [ %4551, %4547 ], [ %4662, %4877 ]
  %4882 = phi float [ %4552, %4547 ], [ %4663, %4877 ]
  %4883 = phi float [ %4553, %4547 ], [ %4664, %4877 ]
  %4884 = phi float [ %4554, %4547 ], [ %4665, %4877 ]
  %4885 = add i32 %4548, 1
  %4886 = icmp ugt i32 %4885, %4544
  br i1 %4886, label %4887, label %4547

; <label>:4887                                    ; preds = %4878
  br label %4888

; <label>:4888                                    ; preds = %4887, %4523, %4513
  %4889 = phi float [ %4514, %4513 ], [ %4514, %4523 ], [ %4879, %4887 ]
  %4890 = phi float [ %4515, %4513 ], [ %4515, %4523 ], [ %4880, %4887 ]
  %4891 = phi float [ %4516, %4513 ], [ %4516, %4523 ], [ %4881, %4887 ]
  %4892 = phi float [ %4517, %4513 ], [ %4517, %4523 ], [ %4882, %4887 ]
  %4893 = phi float [ %4518, %4513 ], [ %4518, %4523 ], [ %4883, %4887 ]
  %4894 = phi float [ %4519, %4513 ], [ %4519, %4523 ], [ %4884, %4887 ]
  %4895 = call float @dx.op.unary.f32(i32 24, float %4202)  ; Sqrt(value)
  %4896 = call float @dx.op.unary.f32(i32 24, float %4203)  ; Sqrt(value)
  %4897 = call float @dx.op.unary.f32(i32 24, float %4204)  ; Sqrt(value)
  %4898 = fmul fast float %4895, %4892
  %4899 = fmul fast float %4896, %4893
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  br i1 %217, label %4902, label %4923

; <label>:4902                                    ; preds = %4888
  %4903 = fadd fast float %2863, %4894
  %4904 = fmul fast float %4903, %2842
  %4905 = fsub fast float 1.000000e+00, %2842
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4909 = fmul fast float %4908, %4906
  %4910 = fadd fast float %4909, %4904
  %4911 = fsub fast float 1.000000e+00, %4209
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = fmul fast float %4913, %4911
  %4915 = fsub fast float %4910, %4914
  %4916 = fadd fast float %4899, %4898
  %4917 = fmul fast float %4901, %4916
  %4918 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4919 = fsub fast float %4915, %4918
  %4920 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4921 = fmul fast float %4919, %4920
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  br label %4939

; <label>:4923                                    ; preds = %4888
  %4924 = fmul fast float %4897, %4894
  %4925 = fmul fast float %4901, %4898
  %4926 = fmul fast float %4901, %4899
  %4927 = fmul fast float %4924, %4901
  %4928 = add i32 %34, 356
  %4929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4928, i32 undef)  ; BufferLoad(srv,index,wot)
  %4930 = extractvalue %dx.types.ResRet.i32 %4929, 0
  %4931 = and i32 %4930, 32
  %4932 = icmp eq i32 %4931, 0
  br i1 %4932, label %4939, label %4933

; <label>:4933                                    ; preds = %4923
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4936 = fmul fast float %4935, 0x3FE99999A0000000
  %4937 = fadd fast float %4935, %4925
  %4938 = fadd fast float %4936, %4927
  br label %4939

; <label>:4939                                    ; preds = %4933, %4923, %4902
  %4940 = phi float [ %4917, %4902 ], [ %4937, %4933 ], [ %4925, %4923 ]
  %4941 = phi float [ %4922, %4902 ], [ %4926, %4933 ], [ %4926, %4923 ]
  %4942 = phi float [ 1.000000e+00, %4902 ], [ %4938, %4933 ], [ %4927, %4923 ]
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = fmul fast float %4944, %4890
  %4946 = fmul fast float %4944, %4891
  %4947 = fadd fast float %4890, %4889
  %4948 = select i1 %217, float %4947, float %4889
  %4949 = fmul float %4948, %4944
  %4950 = select i1 %217, float 0.000000e+00, float %4945
  %4951 = select i1 %217, float 0.000000e+00, float %4946
  %4952 = fmul fast float %4940, %4895
  %4953 = fmul fast float %4941, %4896
  %4954 = fmul fast float %4942, %4897
  %4955 = fadd fast float %4949, %4952
  %4956 = fadd fast float %4950, %4953
  %4957 = fadd fast float %4951, %4954
  %4958 = select i1 %217, float %4941, float %4956
  %4959 = select i1 %217, float %4942, float %4957
  %4960 = call float @dx.op.binary.f32(i32 36, float %4955, float 3.225500e+04)  ; FMin(a,b)
  %4961 = call float @dx.op.binary.f32(i32 36, float %4958, float 3.225500e+04)  ; FMin(a,b)
  %4962 = call float @dx.op.binary.f32(i32 36, float %4959, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4962)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!4 = !{!5, null, !38, !42}
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
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40, !41}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{i32 2, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!42 = !{!43, !44, !45, !46}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !75}
!49 = !{!50, !73, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72}
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
!69 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !52, i8 1, i32 1, i8 2, i32 12, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 13, i8 0, !70}
!72 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!73 = !{!74}
!74 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!75 = !{i32 0, i64 24}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

