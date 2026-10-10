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
; shader hash: eb1cb5fb4cd92821100f928cef363e02
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
;                                   texture     f32          2d     T29             t0     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %70
  %78 = fmul fast float %76, %71
  %79 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = bitcast float %79 to i32
  %81 = ashr i32 %80, 1
  %82 = sub nsw i32 1597250115, %81
  %83 = bitcast i32 %82 to float
  %84 = fmul fast float %83, %62
  %85 = fmul fast float %83, %63
  %86 = fmul fast float %83, %64
  %87 = fmul fast float %63, %60
  %88 = fmul fast float %64, %59
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %64, %58
  %91 = fmul fast float %62, %60
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %62, %59
  %94 = fmul fast float %63, %58
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %61
  %97 = fmul fast float %92, %61
  %98 = fmul fast float %95, %61
  %99 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %51
  %105 = fmul fast float %103, %52
  %106 = fmul fast float %103, %53
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast une float %108, 0.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %77, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %78, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %109, float %120, float %124
  %128 = select i1 %109, float %121, float %125
  %129 = select i1 %109, float %122, float %126
  %130 = fmul fast float %127, %117
  %131 = fmul fast float %128, %117
  %132 = fmul fast float %129, %117
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %109, float %134, float %138
  %142 = select i1 %109, float %135, float %139
  %143 = select i1 %109, float %136, float %140
  %144 = fmul fast float %141, %118
  %145 = fmul fast float %142, %118
  %146 = fmul fast float %143, %118
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %109, float %151, float %155
  %159 = select i1 %109, float %152, float %156
  %160 = select i1 %109, float %153, float %157
  %161 = fadd fast float %147, %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fmul fast float %161, %72
  %165 = fmul fast float %162, %72
  %166 = fmul fast float %163, %72
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %170 = fmul fast float %168, %77
  %171 = fmul fast float %169, %78
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = and i32 %173, 114688
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float %170, float 0.000000e+00
  %177 = select i1 %175, float %171, float 0.000000e+00
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %30, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fmul fast float %179, 2.550000e+02
  %181 = fptoui float %180 to i32
  %182 = select i1 %175, i32 %181, i32 0
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 3
  %185 = and i32 %184, 3
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %184, 4
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %199

; <label>:190                                     ; preds = %0
  %191 = fmul fast float %112, %78
  %192 = fmul fast float %111, %77
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %192, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast olt float %195, %197
  br label %202

; <label>:199                                     ; preds = %0
  %200 = icmp eq i32 %187, 0
  %201 = and i1 %186, %200
  br label %202

; <label>:202                                     ; preds = %199, %190
  %203 = phi i1 [ %198, %190 ], [ %201, %199 ]
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = fmul fast float %205, 0x3FE3C6EF40000000
  %207 = frem fast float %77, 2.560000e+02
  %208 = frem fast float %78, 2.560000e+02
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fadd fast float %212, %206
  %214 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %215 = add i32 %33, 156
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %33, 216
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = add i32 %33, 36
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %33, 288
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = add i32 %33, 172
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %33, 232
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %33, 52
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %33, 304
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %294, 0x3F50624DE0000000
  %298 = fmul fast float %296, 0x3F50624DE0000000
  %299 = add i32 %33, 188
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = shl i32 %301, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %301, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %301, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %33, 248
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %313, 8
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %313, 16
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = add i32 %33, 68
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %33, 320
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %336, 0x3F50624DE0000000
  %340 = fmul fast float %338, 0x3F50624DE0000000
  %341 = add i32 %33, 204
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = shl i32 %343, 4
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %343, 7
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %343, 22
  %351 = shl nuw nsw i32 %350, 5
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %33, 264
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %355, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %355, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = add i32 %33, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %33, 336
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fmul fast float %378, 0x3F50624DE0000000
  %382 = fmul fast float %380, 0x3F50624DE0000000
  %383 = add i32 %33, 348
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 32
  %387 = icmp eq i32 %386, 0
  %388 = and i32 %385, 64
  %389 = icmp eq i32 %388, 0
  %390 = and i32 %385, 128
  %391 = icmp eq i32 %390, 0
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 2
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %409, label %396

; <label>:396                                     ; preds = %202
  %397 = add i32 %33, 472
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = add i32 %399, 0
  %401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %401, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = extractvalue %dx.types.ResRet.f32 %402, 1
  %405 = extractvalue %dx.types.ResRet.f32 %402, 2
  %406 = fmul fast float %403, %67
  %407 = fmul fast float %404, %68
  %408 = fmul fast float %405, %69
  br label %409

; <label>:409                                     ; preds = %396, %202
  %410 = phi float [ %69, %202 ], [ %408, %396 ]
  %411 = phi float [ %68, %202 ], [ %407, %396 ]
  %412 = phi float [ %67, %202 ], [ %406, %396 ]
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %436, label %417

; <label>:417                                     ; preds = %409
  %418 = add i32 %33, 44
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %412, float 1.000000e+00
  %424 = add i32 %33, 60
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 1
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %411, float 1.000000e+00
  %430 = add i32 %33, 76
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 1
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %410, float 1.000000e+00
  br label %436

; <label>:436                                     ; preds = %417, %409
  %437 = phi float [ %410, %409 ], [ %435, %417 ]
  %438 = phi float [ %411, %409 ], [ %429, %417 ]
  %439 = phi float [ %412, %409 ], [ %423, %417 ]
  %440 = lshr i32 %414, 20
  %441 = and i32 %440, 3
  %442 = add nuw nsw i32 %441, 1
  %443 = add i32 %33, 24
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %33, 28
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = or i32 %448, %445
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %887, label %451

; <label>:451                                     ; preds = %436
  %452 = and i32 %445, 262144
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %38, float 1.000000e+00
  %455 = select i1 %453, float %39, float 0.000000e+00
  %456 = select i1 %453, float %40, float 0.000000e+00
  %457 = select i1 %453, float %41, float 1.000000e+00
  %458 = select i1 %453, float %42, float %65
  %459 = select i1 %453, float %43, float %66
  %460 = add i32 %33, 284
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = fmul fast float %464, 0x3F50624DE0000000
  %466 = add i32 %33, 88
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  %471 = lshr i32 %468, 24
  %472 = add i32 %33, 292
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = add i32 %33, 32
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 22
  %483 = shl nuw nsw i32 %482, 5
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = shl i32 %481, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %481, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 3
  %493 = fmul fast float %492, 1.000000e+03
  %494 = fmul fast float %255, %493
  %495 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %496 = fadd fast float %495, %245
  %497 = fmul fast float %256, %493
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = fadd fast float %498, %247
  %500 = fmul fast float %465, %493
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = fmul fast float %501, 0x401921FB60000000
  %503 = fadd fast float %502, %484
  %504 = call float @dx.op.unary.f32(i32 13, float %503)  ; Sin(value)
  %505 = call float @dx.op.unary.f32(i32 12, float %503)  ; Cos(value)
  %506 = fsub fast float -0.000000e+00, %504
  %507 = fadd fast float %458, -5.000000e-01
  %508 = fadd fast float %459, -5.000000e-01
  %509 = fmul fast float %476, %507
  %510 = fmul fast float %478, %508
  %511 = fadd fast float %509, 5.000000e-01
  %512 = fadd fast float %510, 5.000000e-01
  %513 = fmul fast float %487, %511
  %514 = fmul fast float %490, %512
  %515 = fmul fast float %505, %513
  %516 = call float @dx.op.tertiary.f32(i32 46, float %506, float %514, float %515)  ; FMad(a,b,c)
  %517 = fmul fast float %504, %513
  %518 = call float @dx.op.tertiary.f32(i32 46, float %505, float %514, float %517)  ; FMad(a,b,c)
  %519 = fadd fast float %496, %516
  %520 = fadd fast float %499, %518
  %521 = icmp ugt i32 %470, 1
  %522 = icmp ugt i32 %468, 33554431
  %523 = or i1 %522, %521
  br i1 %523, label %524, label %549

; <label>:524                                     ; preds = %451
  %525 = add i32 %33, 228
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %492, %529
  %531 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %532 = mul nuw nsw i32 %470, %471
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %531, %533
  %535 = call float @dx.op.unary.f32(i32 27, float %534)  ; Round_ni(value)
  %536 = fptoui float %535 to i32
  %537 = urem i32 %536, %470
  %538 = udiv i32 %536, %471
  %539 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %540 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %541 = uitofp i32 %537 to float
  %542 = uitofp i32 %538 to float
  %543 = fadd fast float %539, %541
  %544 = fadd fast float %540, %542
  %545 = uitofp i32 %470 to float
  %546 = uitofp i32 %471 to float
  %547 = fdiv fast float %543, %545
  %548 = fdiv fast float %544, %546
  br label %549

; <label>:549                                     ; preds = %524, %451
  %550 = phi float [ %547, %524 ], [ %519, %451 ]
  %551 = phi float [ %548, %524 ], [ %520, %451 ]
  %552 = and i32 %445, 16
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %729, label %554

; <label>:554                                     ; preds = %549
  %555 = add i32 %33, 360
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = add i32 %557, 0
  %559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %559, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 512
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %576, label %568

; <label>:568                                     ; preds = %554
  %569 = add i32 %33, 440
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %74, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  br label %576

; <label>:576                                     ; preds = %568, %554
  %577 = phi float [ %575, %568 ], [ 1.000000e+00, %554 ]
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 33554432
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %676, label %582

; <label>:582                                     ; preds = %576
  %583 = add i32 %33, 224
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %585, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = add i32 %33, 228
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = lshr i32 %596, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = lshr i32 %596, 16
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = add i32 %33, 220
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %610, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %610, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %561 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %561, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %561
  %631 = fmul fast float %630, %629
  %632 = bitcast float %562 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %562, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %562
  %641 = fmul fast float %640, %639
  %642 = bitcast float %563 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %563, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %563
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %587
  %656 = fmul fast float %653, %589
  %657 = fmul fast float %654, %594
  %658 = fadd fast float %655, %599
  %659 = fadd fast float %656, %603
  %660 = fadd fast float %657, %607
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %561
  %668 = fsub fast float %665, %562
  %669 = fsub fast float %666, %563
  %670 = fmul fast float %667, %577
  %671 = fmul fast float %668, %577
  %672 = fmul fast float %669, %577
  %673 = fadd fast float %670, %561
  %674 = fadd fast float %671, %562
  %675 = fadd fast float %672, %563
  br label %729

; <label>:676                                     ; preds = %576
  %677 = and i32 %579, 134217728
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %713, label %679

; <label>:679                                     ; preds = %676
  %680 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %681 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %682 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %683 = fadd fast float %680, -5.000000e-01
  %684 = fadd fast float %681, -5.000000e-01
  %685 = fadd fast float %682, -5.000000e-01
  %686 = fmul fast float %683, %577
  %687 = fmul fast float %684, %577
  %688 = fmul fast float %685, %577
  %689 = fadd fast float %686, 5.000000e-01
  %690 = fadd fast float %687, 5.000000e-01
  %691 = fadd fast float %688, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %562)  ; Sqrt(value)
  %694 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %695 = fmul fast float %689, 2.000000e+00
  %696 = fsub fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %692
  %698 = fadd fast float %697, %695
  %699 = fmul fast float %698, %692
  %700 = fmul fast float %690, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %693
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %693
  %705 = fmul fast float %691, 2.000000e+00
  %706 = fsub fast float 1.000000e+00, %705
  %707 = fmul fast float %706, %694
  %708 = fadd fast float %707, %705
  %709 = fmul fast float %708, %694
  %710 = fmul fast float %699, %699
  %711 = fmul fast float %704, %704
  %712 = fmul fast float %709, %709
  br label %729

; <label>:713                                     ; preds = %676
  %714 = fmul fast float %232, %232
  %715 = fmul fast float %236, %236
  %716 = fmul fast float %240, %240
  %717 = fadd fast float %714, -1.000000e+00
  %718 = fadd fast float %715, -1.000000e+00
  %719 = fadd fast float %716, -1.000000e+00
  %720 = fmul fast float %577, %717
  %721 = fmul fast float %577, %718
  %722 = fmul fast float %577, %719
  %723 = fadd fast float %720, 1.000000e+00
  %724 = fadd fast float %721, 1.000000e+00
  %725 = fadd fast float %722, 1.000000e+00
  %726 = fmul fast float %723, %561
  %727 = fmul fast float %724, %562
  %728 = fmul fast float %725, %563
  br label %729

; <label>:729                                     ; preds = %713, %679, %582, %549
  %730 = phi float [ %673, %582 ], [ %710, %679 ], [ %726, %713 ], [ 1.000000e+00, %549 ]
  %731 = phi float [ %674, %582 ], [ %711, %679 ], [ %727, %713 ], [ 1.000000e+00, %549 ]
  %732 = phi float [ %675, %582 ], [ %712, %679 ], [ %728, %713 ], [ 1.000000e+00, %549 ]
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 1
  %735 = and i32 %734, 1
  %736 = icmp ne i32 %735, 0
  %737 = add i32 %33, 356
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 32
  %741 = icmp ne i32 %740, 0
  %742 = and i1 %736, %741
  %743 = select i1 %742, float 1.000000e+00, float %730
  %744 = select i1 %742, float 0x3FD3333340000000, float %731
  %745 = select i1 %742, float 0x3FD3333340000000, float %732
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %822, label %750

; <label>:750                                     ; preds = %729
  %751 = add i32 %33, 92
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %33, 376
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %756, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %758, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = and i32 %753, 255
  %765 = uitofp i32 %764 to float
  %766 = lshr i32 %753, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = lshr i32 %753, 16
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101000000000
  %773 = fmul fast float %760, %765
  %774 = fadd fast float %773, %768
  %775 = fmul fast float %774, 0x3F70101000000000
  %776 = fadd fast float %761, -5.000000e-01
  %777 = fadd fast float %763, -5.000000e-01
  %778 = fmul fast float %776, %772
  %779 = fmul fast float %777, %772
  %780 = fadd fast float %778, 5.000000e-01
  %781 = fadd fast float %779, 5.000000e-01
  %782 = fmul fast float %780, 2.000000e+00
  %783 = fadd fast float %782, -1.000000e+00
  %784 = fmul fast float %781, 2.000000e+00
  %785 = fadd fast float %784, -1.000000e+00
  %786 = fadd fast float %783, %785
  %787 = fmul fast float %786, 5.000000e-01
  %788 = fsub fast float %783, %785
  %789 = fmul fast float %788, 5.000000e-01
  %790 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %791 = fsub fast float 1.000000e+00, %790
  %792 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %793 = fsub fast float %791, %792
  %794 = call float @dx.op.dot3.f32(i32 55, float %787, float %789, float %793, float %787, float %789, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.unary.f32(i32 25, float %794)  ; Rsqrt(value)
  %796 = fmul fast float %787, %795
  %797 = fmul fast float %789, %795
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 67108864
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %818, label %802

; <label>:802                                     ; preds = %750
  %803 = add i32 %33, 280
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = lshr i32 %805, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fsub fast float %775, %813
  %815 = fmul fast float %814, %807
  %816 = fadd fast float %815, %811
  %817 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  br label %818

; <label>:818                                     ; preds = %802, %750
  %819 = phi float [ %817, %802 ], [ %775, %750 ]
  %820 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %454, float %455)  ; Dot2(ax,ay,bx,by)
  %821 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %456, float %457)  ; Dot2(ax,ay,bx,by)
  br label %822

; <label>:822                                     ; preds = %818, %729
  %823 = phi float [ %819, %818 ], [ 0x3FD6666660000000, %729 ]
  %824 = phi float [ %820, %818 ], [ 0.000000e+00, %729 ]
  %825 = phi float [ %821, %818 ], [ 0.000000e+00, %729 ]
  %826 = phi float [ %762, %818 ], [ 1.000000e+00, %729 ]
  %827 = add i32 %33, 160
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 22
  %831 = shl nuw nsw i32 %830, 5
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 64
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %870, label %837

; <label>:837                                     ; preds = %822
  %838 = add i32 %33, 392
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = add i32 %840, 0
  %842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %841, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 131072
  %846 = icmp eq i32 %845, 0
  %847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %842, %dx.types.Handle %73, float %550, float %551, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  %851 = fmul fast float %848, %220
  %852 = fmul fast float %849, %223
  %853 = fmul fast float %850, %226
  br i1 %846, label %860, label %854

; <label>:854                                     ; preds = %837
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = fmul fast float %856, %851
  %858 = fmul fast float %856, %852
  %859 = fmul fast float %856, %853
  br label %860

; <label>:860                                     ; preds = %854, %837
  %861 = phi float [ %857, %854 ], [ %851, %837 ]
  %862 = phi float [ %858, %854 ], [ %852, %837 ]
  %863 = phi float [ %859, %854 ], [ %853, %837 ]
  %864 = fmul fast float %861, %832
  %865 = select i1 %203, float %864, float %861
  %866 = call float @dx.op.dot3.f32(i32 55, float %865, float %862, float %863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = select i1 %203, float 0.000000e+00, float %861
  %868 = select i1 %203, float %866, float %862
  %869 = select i1 %203, float 0.000000e+00, float %863
  br label %870

; <label>:870                                     ; preds = %860, %822
  %871 = phi float [ %867, %860 ], [ 0.000000e+00, %822 ]
  %872 = phi float [ %868, %860 ], [ 0.000000e+00, %822 ]
  %873 = phi float [ %869, %860 ], [ 0.000000e+00, %822 ]
  %874 = add i32 %33, 96
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = lshr i32 %876, 8
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = fmul fast float %881, %882
  %884 = fadd fast float %883, %878
  %885 = fmul fast float %884, 0x3F70101020000000
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  br label %887

; <label>:887                                     ; preds = %870, %436
  %888 = phi float [ 0.000000e+00, %436 ], [ %824, %870 ]
  %889 = phi float [ 0.000000e+00, %436 ], [ %825, %870 ]
  %890 = phi float [ 0.000000e+00, %436 ], [ %871, %870 ]
  %891 = phi float [ 0.000000e+00, %436 ], [ %872, %870 ]
  %892 = phi float [ 0.000000e+00, %436 ], [ %873, %870 ]
  %893 = phi float [ 0.000000e+00, %436 ], [ 1.000000e+00, %870 ]
  %894 = phi float [ 0.000000e+00, %436 ], [ %823, %870 ]
  %895 = phi float [ 0.000000e+00, %436 ], [ %826, %870 ]
  %896 = phi float [ 0.000000e+00, %436 ], [ %886, %870 ]
  br i1 %387, label %1530, label %897

; <label>:897                                     ; preds = %887
  %898 = icmp ult i32 %442, 2
  %899 = add i32 %33, 40
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %33, 44
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = or i32 %904, %901
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %1530, label %907

; <label>:907                                     ; preds = %897
  %908 = and i32 %901, 262144
  %909 = icmp ne i32 %908, 0
  %910 = select i1 %909, float %38, float 1.000000e+00
  %911 = select i1 %909, float %39, float 0.000000e+00
  %912 = select i1 %909, float %40, float 0.000000e+00
  %913 = select i1 %909, float %41, float 1.000000e+00
  %914 = select i1 %909, float %42, float %65
  %915 = select i1 %909, float %43, float %66
  %916 = add i32 %33, 300
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = fmul fast float %920, 0x3F50624DE0000000
  %922 = add i32 %33, 104
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = lshr i32 %924, 24
  %928 = add i32 %33, 308
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %33, 48
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 22
  %939 = shl nuw nsw i32 %938, 5
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = shl i32 %937, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %937, 7
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, 1.000000e+03
  %950 = fmul fast float %297, %949
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fadd fast float %951, %287
  %953 = fmul fast float %298, %949
  %954 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %955 = fadd fast float %954, %289
  %956 = fmul fast float %921, %949
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = fmul fast float %957, 0x401921FB60000000
  %959 = fadd fast float %958, %940
  %960 = call float @dx.op.unary.f32(i32 13, float %959)  ; Sin(value)
  %961 = call float @dx.op.unary.f32(i32 12, float %959)  ; Cos(value)
  %962 = fsub fast float -0.000000e+00, %960
  %963 = fadd fast float %914, -5.000000e-01
  %964 = fadd fast float %915, -5.000000e-01
  %965 = fmul fast float %932, %963
  %966 = fmul fast float %934, %964
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %943, %967
  %970 = fmul fast float %946, %968
  %971 = fmul fast float %961, %969
  %972 = call float @dx.op.tertiary.f32(i32 46, float %962, float %970, float %971)  ; FMad(a,b,c)
  %973 = fmul fast float %960, %969
  %974 = call float @dx.op.tertiary.f32(i32 46, float %961, float %970, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %952, %972
  %976 = fadd fast float %955, %974
  %977 = icmp ugt i32 %926, 1
  %978 = icmp ugt i32 %924, 33554431
  %979 = or i1 %978, %977
  br i1 %979, label %980, label %1005

; <label>:980                                     ; preds = %907
  %981 = add i32 %33, 244
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = fmul fast float %948, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = mul nuw nsw i32 %926, %927
  %989 = uitofp i32 %988 to float
  %990 = fmul fast float %987, %989
  %991 = call float @dx.op.unary.f32(i32 27, float %990)  ; Round_ni(value)
  %992 = fptoui float %991 to i32
  %993 = urem i32 %992, %926
  %994 = udiv i32 %992, %927
  %995 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %996 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %997 = uitofp i32 %993 to float
  %998 = uitofp i32 %994 to float
  %999 = fadd fast float %995, %997
  %1000 = fadd fast float %996, %998
  %1001 = uitofp i32 %926 to float
  %1002 = uitofp i32 %927 to float
  %1003 = fdiv fast float %999, %1001
  %1004 = fdiv fast float %1000, %1002
  br label %1005

; <label>:1005                                    ; preds = %980, %907
  %1006 = phi float [ %1003, %980 ], [ %975, %907 ]
  %1007 = phi float [ %1004, %980 ], [ %976, %907 ]
  %1008 = and i32 %901, 256
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1056, label %1010

; <label>:1010                                    ; preds = %1005
  %1011 = add i32 %33, 428
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = add i32 %1013, 0
  %1015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1015, %dx.types.Handle %74, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = add i32 %33, 116
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = shl i32 %1020, 4
  %1022 = and i32 %1021, 32752
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = lshr i32 %1020, 7
  %1025 = and i32 %1024, 32752
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = fsub fast float 1.000000e+00, %439
  %1028 = call float @dx.op.binary.f32(i32 35, float %1027, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1029 = bitcast float %439 to i32
  %1030 = sitofp i32 %1029 to float
  %1031 = fadd fast float %1030, 0xC1CFBF8940000000
  %1032 = fmul fast float %1026, %1031
  %1033 = fadd fast float %1032, 0x41CFBF8940000000
  %1034 = fptosi float %1033 to i32
  %1035 = bitcast i32 %1034 to float
  %1036 = bitcast float %1028 to i32
  %1037 = sitofp i32 %1036 to float
  %1038 = fadd fast float %1037, 0xC1CFBF8940000000
  %1039 = fmul fast float %1038, %1026
  %1040 = fadd fast float %1039, 0x41CFBF8940000000
  %1041 = fptosi float %1040 to i32
  %1042 = bitcast i32 %1041 to float
  %1043 = fmul fast float %1035, %1023
  %1044 = fmul fast float %1042, %1023
  %1045 = fsub fast float %1028, %1043
  %1046 = fadd fast float %1044, %1028
  %1047 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1048 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1049 = fsub fast float %1017, %1047
  %1050 = fsub fast float %1048, %1047
  %1051 = bitcast float %1050 to i32
  %1052 = sub nsw i32 2129859010, %1051
  %1053 = bitcast i32 %1052 to float
  %1054 = fmul fast float %1053, %1049
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  br label %1056

; <label>:1056                                    ; preds = %1010, %1005
  %1057 = phi float [ %1055, %1010 ], [ %439, %1005 ]
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = and i32 %1059, 128
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1078, label %1062

; <label>:1062                                    ; preds = %1056
  %1063 = add i32 %33, 412
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1067, %dx.types.Handle %74, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 524288
  %1073 = icmp ne i32 %1072, 0
  %1074 = fcmp fast ogt float %1069, 0x3FE0101020000000
  %1075 = select i1 %1074, float 1.000000e+00, float 0.000000e+00
  %1076 = select i1 %1073, float %1075, float %1069
  %1077 = fmul fast float %1076, %1057
  br label %1078

; <label>:1078                                    ; preds = %1062, %1056
  %1079 = phi float [ %1077, %1062 ], [ %1057, %1056 ]
  %1080 = fcmp fast ult float %1079, 0x3F70101020000000
  br i1 %1080, label %1530, label %1081

; <label>:1081                                    ; preds = %1078
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 16
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1261, label %1086

; <label>:1086                                    ; preds = %1081
  %1087 = add i32 %33, 364
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = add i32 %1089, 0
  %1091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1091, %dx.types.Handle %73, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 512
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1108, label %1100

; <label>:1100                                    ; preds = %1086
  %1101 = add i32 %33, 444
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %74, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  br label %1108

; <label>:1108                                    ; preds = %1100, %1086
  %1109 = phi float [ %1107, %1100 ], [ 1.000000e+00, %1086 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 33554432
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1208, label %1114

; <label>:1114                                    ; preds = %1108
  %1115 = add i32 %33, 240
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 65535
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = lshr i32 %1117, 16
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = add i32 %33, 244
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 65535
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = lshr i32 %1128, 8
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F70101020000000
  %1136 = lshr i32 %1128, 16
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = fmul fast float %1138, 0x3F70101020000000
  %1140 = add i32 %33, 236
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 255
  %1144 = uitofp i32 %1143 to float
  %1145 = fmul fast float %1144, 0x3F70101020000000
  %1146 = lshr i32 %1142, 8
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F70101020000000
  %1150 = lshr i32 %1142, 16
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = bitcast float %1093 to i32
  %1155 = ashr i32 %1154, 1
  %1156 = sub nsw i32 1597463174, %1155
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1093, 5.000000e-01
  %1159 = fmul fast float %1157, %1157
  %1160 = fmul fast float %1159, %1158
  %1161 = fsub fast float 1.500000e+00, %1160
  %1162 = fmul fast float %1157, %1093
  %1163 = fmul fast float %1162, %1161
  %1164 = bitcast float %1094 to i32
  %1165 = ashr i32 %1164, 1
  %1166 = sub nsw i32 1597463174, %1165
  %1167 = bitcast i32 %1166 to float
  %1168 = fmul fast float %1094, 5.000000e-01
  %1169 = fmul fast float %1167, %1167
  %1170 = fmul fast float %1169, %1168
  %1171 = fsub fast float 1.500000e+00, %1170
  %1172 = fmul fast float %1167, %1094
  %1173 = fmul fast float %1172, %1171
  %1174 = bitcast float %1095 to i32
  %1175 = ashr i32 %1174, 1
  %1176 = sub nsw i32 1597463174, %1175
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1095, 5.000000e-01
  %1179 = fmul fast float %1177, %1177
  %1180 = fmul fast float %1179, %1178
  %1181 = fsub fast float 1.500000e+00, %1180
  %1182 = fmul fast float %1177, %1095
  %1183 = fmul fast float %1182, %1181
  %1184 = fsub fast float %1163, %1145
  %1185 = fsub fast float %1173, %1149
  %1186 = fsub fast float %1183, %1153
  %1187 = fmul fast float %1184, %1119
  %1188 = fmul fast float %1185, %1121
  %1189 = fmul fast float %1186, %1126
  %1190 = fadd fast float %1187, %1131
  %1191 = fadd fast float %1188, %1135
  %1192 = fadd fast float %1189, %1139
  %1193 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1194 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1195 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1196 = fmul fast float %1193, %1193
  %1197 = fmul fast float %1194, %1194
  %1198 = fmul fast float %1195, %1195
  %1199 = fsub fast float %1196, %1093
  %1200 = fsub fast float %1197, %1094
  %1201 = fsub fast float %1198, %1095
  %1202 = fmul fast float %1199, %1109
  %1203 = fmul fast float %1200, %1109
  %1204 = fmul fast float %1201, %1109
  %1205 = fadd fast float %1202, %1093
  %1206 = fadd fast float %1203, %1094
  %1207 = fadd fast float %1204, %1095
  br label %1261

; <label>:1208                                    ; preds = %1108
  %1209 = and i32 %1111, 134217728
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1245, label %1211

; <label>:1211                                    ; preds = %1208
  %1212 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1213 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %1214 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %1215 = fadd fast float %1212, -5.000000e-01
  %1216 = fadd fast float %1213, -5.000000e-01
  %1217 = fadd fast float %1214, -5.000000e-01
  %1218 = fmul fast float %1215, %1109
  %1219 = fmul fast float %1216, %1109
  %1220 = fmul fast float %1217, %1109
  %1221 = fadd fast float %1218, 5.000000e-01
  %1222 = fadd fast float %1219, 5.000000e-01
  %1223 = fadd fast float %1220, 5.000000e-01
  %1224 = call float @dx.op.unary.f32(i32 24, float %1093)  ; Sqrt(value)
  %1225 = call float @dx.op.unary.f32(i32 24, float %1094)  ; Sqrt(value)
  %1226 = call float @dx.op.unary.f32(i32 24, float %1095)  ; Sqrt(value)
  %1227 = fmul fast float %1221, 2.000000e+00
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = fmul fast float %1228, %1224
  %1230 = fadd fast float %1229, %1227
  %1231 = fmul fast float %1230, %1224
  %1232 = fmul fast float %1222, 2.000000e+00
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1233, %1225
  %1235 = fadd fast float %1234, %1232
  %1236 = fmul fast float %1235, %1225
  %1237 = fmul fast float %1223, 2.000000e+00
  %1238 = fsub fast float 1.000000e+00, %1237
  %1239 = fmul fast float %1238, %1226
  %1240 = fadd fast float %1239, %1237
  %1241 = fmul fast float %1240, %1226
  %1242 = fmul fast float %1231, %1231
  %1243 = fmul fast float %1236, %1236
  %1244 = fmul fast float %1241, %1241
  br label %1261

; <label>:1245                                    ; preds = %1208
  %1246 = fmul fast float %274, %274
  %1247 = fmul fast float %278, %278
  %1248 = fmul fast float %282, %282
  %1249 = fadd fast float %1246, -1.000000e+00
  %1250 = fadd fast float %1247, -1.000000e+00
  %1251 = fadd fast float %1248, -1.000000e+00
  %1252 = fmul fast float %1109, %1249
  %1253 = fmul fast float %1109, %1250
  %1254 = fmul fast float %1109, %1251
  %1255 = fadd fast float %1252, 1.000000e+00
  %1256 = fadd fast float %1253, 1.000000e+00
  %1257 = fadd fast float %1254, 1.000000e+00
  %1258 = fmul fast float %1255, %1093
  %1259 = fmul fast float %1256, %1094
  %1260 = fmul fast float %1257, %1095
  br label %1261

; <label>:1261                                    ; preds = %1245, %1211, %1114, %1081
  %1262 = phi float [ %1205, %1114 ], [ %1242, %1211 ], [ %1258, %1245 ], [ 1.000000e+00, %1081 ]
  %1263 = phi float [ %1206, %1114 ], [ %1243, %1211 ], [ %1259, %1245 ], [ 1.000000e+00, %1081 ]
  %1264 = phi float [ %1207, %1114 ], [ %1244, %1211 ], [ %1260, %1245 ], [ 1.000000e+00, %1081 ]
  %1265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.i32 %1265, 1
  %1267 = and i32 %1266, 1
  %1268 = icmp ne i32 %1267, 0
  %1269 = add i32 %33, 356
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %1271, 32
  %1273 = icmp ne i32 %1272, 0
  %1274 = and i1 %1268, %1273
  %1275 = select i1 %1274, float 1.000000e+00, float %1262
  %1276 = select i1 %1274, float 0x3FD3333340000000, float %1263
  %1277 = select i1 %1274, float 0x3FD3333340000000, float %1264
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 32
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1354, label %1282

; <label>:1282                                    ; preds = %1261
  %1283 = add i32 %33, 108
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %33, 380
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = add i32 %1288, 0
  %1290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1290, %dx.types.Handle %73, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = and i32 %1285, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = lshr i32 %1285, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = lshr i32 %1285, 16
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101000000000
  %1305 = fmul fast float %1292, %1297
  %1306 = fadd fast float %1305, %1300
  %1307 = fmul fast float %1306, 0x3F70101000000000
  %1308 = fadd fast float %1293, -5.000000e-01
  %1309 = fadd fast float %1295, -5.000000e-01
  %1310 = fmul fast float %1308, %1304
  %1311 = fmul fast float %1309, %1304
  %1312 = fadd fast float %1310, 5.000000e-01
  %1313 = fadd fast float %1311, 5.000000e-01
  %1314 = fmul fast float %1312, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1313, 2.000000e+00
  %1317 = fadd fast float %1316, -1.000000e+00
  %1318 = fadd fast float %1315, %1317
  %1319 = fmul fast float %1318, 5.000000e-01
  %1320 = fsub fast float %1315, %1317
  %1321 = fmul fast float %1320, 5.000000e-01
  %1322 = call float @dx.op.unary.f32(i32 6, float %1319)  ; FAbs(value)
  %1323 = fsub fast float 1.000000e+00, %1322
  %1324 = call float @dx.op.unary.f32(i32 6, float %1321)  ; FAbs(value)
  %1325 = fsub fast float %1323, %1324
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1319, float %1321, float %1325, float %1319, float %1321, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call float @dx.op.unary.f32(i32 25, float %1326)  ; Rsqrt(value)
  %1328 = fmul fast float %1319, %1327
  %1329 = fmul fast float %1321, %1327
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 67108864
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1350, label %1334

; <label>:1334                                    ; preds = %1282
  %1335 = add i32 %33, 296
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 65535
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 65535
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = lshr i32 %1337, 16
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = fsub fast float %1307, %1345
  %1347 = fmul fast float %1346, %1339
  %1348 = fadd fast float %1347, %1343
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  br label %1350

; <label>:1350                                    ; preds = %1334, %1282
  %1351 = phi float [ %1349, %1334 ], [ %1307, %1282 ]
  %1352 = call float @dx.op.dot2.f32(i32 54, float %1328, float %1329, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %1353 = call float @dx.op.dot2.f32(i32 54, float %1328, float %1329, float %912, float %913)  ; Dot2(ax,ay,bx,by)
  br label %1354

; <label>:1354                                    ; preds = %1350, %1261
  %1355 = phi float [ %1351, %1350 ], [ 0x3FD6666660000000, %1261 ]
  %1356 = phi float [ %1352, %1350 ], [ 0.000000e+00, %1261 ]
  %1357 = phi float [ %1353, %1350 ], [ 0.000000e+00, %1261 ]
  %1358 = phi float [ %1294, %1350 ], [ 1.000000e+00, %1261 ]
  %1359 = add i32 %33, 176
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = lshr i32 %1361, 22
  %1363 = shl nuw nsw i32 %1362, 5
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = and i32 %1366, 64
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1402, label %1369

; <label>:1369                                    ; preds = %1354
  %1370 = add i32 %33, 396
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = add i32 %1372, 0
  %1374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 131072
  %1378 = icmp eq i32 %1377, 0
  %1379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1374, %dx.types.Handle %73, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = fmul fast float %1380, %262
  %1384 = fmul fast float %1381, %265
  %1385 = fmul fast float %1382, %268
  br i1 %1378, label %1392, label %1386

; <label>:1386                                    ; preds = %1369
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = fmul fast float %1388, %1383
  %1390 = fmul fast float %1388, %1384
  %1391 = fmul fast float %1388, %1385
  br label %1392

; <label>:1392                                    ; preds = %1386, %1369
  %1393 = phi float [ %1389, %1386 ], [ %1383, %1369 ]
  %1394 = phi float [ %1390, %1386 ], [ %1384, %1369 ]
  %1395 = phi float [ %1391, %1386 ], [ %1385, %1369 ]
  %1396 = fmul fast float %1393, %1364
  %1397 = select i1 %203, float %1396, float %1393
  %1398 = call float @dx.op.dot3.f32(i32 55, float %1397, float %1394, float %1395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1399 = select i1 %203, float 0.000000e+00, float %1393
  %1400 = select i1 %203, float %1398, float %1394
  %1401 = select i1 %203, float 0.000000e+00, float %1395
  br label %1402

; <label>:1402                                    ; preds = %1392, %1354
  %1403 = phi float [ %1399, %1392 ], [ 0.000000e+00, %1354 ]
  %1404 = phi float [ %1400, %1392 ], [ 0.000000e+00, %1354 ]
  %1405 = phi float [ %1401, %1392 ], [ 0.000000e+00, %1354 ]
  %1406 = add i32 %33, 112
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = lshr i32 %1408, 8
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = call float @dx.op.dot3.f32(i32 55, float %1275, float %1276, float %1277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = fmul fast float %1413, %1414
  %1416 = fadd fast float %1415, %1410
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  br i1 %898, label %1419, label %1424

; <label>:1419                                    ; preds = %1402
  %1420 = fsub fast float 1.000000e+00, %1079
  %1421 = fmul fast float %1420, %890
  %1422 = fmul fast float %1420, %891
  %1423 = fmul fast float %1420, %892
  br label %1424

; <label>:1424                                    ; preds = %1419, %1402
  %1425 = phi float [ %1421, %1419 ], [ %890, %1402 ]
  %1426 = phi float [ %1422, %1419 ], [ %891, %1402 ]
  %1427 = phi float [ %1423, %1419 ], [ %892, %1402 ]
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 3
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1432, label %1451

; <label>:1432                                    ; preds = %1424
  %1433 = and i32 %1429, 16
  %1434 = icmp ne i32 %1433, 0
  %1435 = select i1 %1434, float %1079, float 0.000000e+00
  %1436 = and i32 %1429, 64
  %1437 = icmp ne i32 %1436, 0
  %1438 = select i1 %1437, float %1079, float 0.000000e+00
  %1439 = fsub fast float %1403, %1425
  %1440 = fsub fast float %1404, %1426
  %1441 = fsub fast float %1405, %1427
  %1442 = fmul fast float %1438, %1439
  %1443 = fmul fast float %1438, %1440
  %1444 = fmul fast float %1438, %1441
  %1445 = fadd fast float %1442, %1425
  %1446 = fadd fast float %1443, %1426
  %1447 = fadd fast float %1444, %1427
  %1448 = fsub fast float %1418, %896
  %1449 = fmul fast float %1435, %1448
  %1450 = fadd fast float %1449, %896
  br label %1451

; <label>:1451                                    ; preds = %1432, %1424
  %1452 = phi float [ %1425, %1424 ], [ %1445, %1432 ]
  %1453 = phi float [ %1426, %1424 ], [ %1446, %1432 ]
  %1454 = phi float [ %1427, %1424 ], [ %1447, %1432 ]
  %1455 = phi float [ %896, %1424 ], [ %1450, %1432 ]
  %1456 = and i32 %1429, 12
  %1457 = icmp eq i32 %1456, 12
  br i1 %1457, label %1530, label %1458

; <label>:1458                                    ; preds = %1451
  %1459 = and i32 %1429, 2097184
  %1460 = icmp eq i32 %1459, 2097184
  %1461 = select i1 %1460, float %1079, float 0.000000e+00
  %1462 = and i32 %1429, 4194336
  %1463 = icmp eq i32 %1462, 4194336
  %1464 = select i1 %1463, float %1079, float 0.000000e+00
  %1465 = and i32 %1429, 8388640
  %1466 = icmp eq i32 %1465, 8388640
  %1467 = select i1 %1466, float %1079, float 0.000000e+00
  %1468 = icmp eq i32 %1456, 0
  br i1 %1468, label %1469, label %1482

; <label>:1469                                    ; preds = %1458
  %1470 = fsub fast float %1356, %888
  %1471 = fsub fast float %1357, %889
  %1472 = fmul fast float %1461, %1470
  %1473 = fmul fast float %1461, %1471
  %1474 = fadd fast float %1472, %888
  %1475 = fadd fast float %1473, %889
  %1476 = fsub fast float %1358, %895
  %1477 = fmul fast float %1464, %1476
  %1478 = fadd fast float %1477, %895
  %1479 = fsub fast float %1355, %894
  %1480 = fmul fast float %1467, %1479
  %1481 = fadd fast float %1480, %894
  br label %1530

; <label>:1482                                    ; preds = %1458
  %1483 = icmp eq i32 %1456, 4
  br i1 %1483, label %1484, label %1516

; <label>:1484                                    ; preds = %1482
  %1485 = fmul fast float %1461, %1356
  %1486 = fmul fast float %1461, %1357
  %1487 = fadd fast float %1485, %888
  %1488 = fadd fast float %1486, %889
  %1489 = call float @dx.op.binary.f32(i32 36, float %895, float %1358)  ; FMin(a,b)
  %1490 = fsub fast float %1489, %895
  %1491 = fmul fast float %1490, %1464
  %1492 = fadd fast float %1491, %895
  %1493 = fadd fast float %1355, %894
  %1494 = fmul fast float %1493, 0x3FF337FAE0000000
  %1495 = fmul fast float %894, %894
  %1496 = fmul fast float %1355, %1355
  %1497 = fadd fast float %1496, %1495
  %1498 = fmul fast float %1497, 0x3FE5152B00000000
  %1499 = fmul fast float %894, 0xBFCC1F85E0000000
  %1500 = fmul fast float %1499, %1355
  %1501 = fadd fast float %1500, 0xBFE1363700000000
  %1502 = fadd fast float %1501, %1494
  %1503 = fsub fast float %1502, %1498
  %1504 = fmul fast float %1493, 0x3FBA6F0D00000000
  %1505 = fmul fast float %1497, 0x3FD0432880000000
  %1506 = fmul fast float %894, 0xBFEF110800000000
  %1507 = fmul fast float %1506, %1355
  %1508 = fadd fast float %1507, 1.000000e+00
  %1509 = fsub fast float %1508, %1504
  %1510 = fadd fast float %1509, %1505
  %1511 = fdiv fast float %1503, %1510
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fsub fast float %1512, %894
  %1514 = fmul fast float %1513, %1467
  %1515 = fadd fast float %1514, %894
  br label %1530

; <label>:1516                                    ; preds = %1482
  %1517 = icmp eq i32 %1456, 8
  br i1 %1517, label %1518, label %1530

; <label>:1518                                    ; preds = %1516
  %1519 = fmul fast float %1461, %1356
  %1520 = fmul fast float %1461, %1357
  %1521 = fadd fast float %1519, %888
  %1522 = fadd fast float %1520, %889
  %1523 = call float @dx.op.binary.f32(i32 36, float %895, float %1358)  ; FMin(a,b)
  %1524 = fsub fast float %1523, %895
  %1525 = fmul fast float %1524, %1464
  %1526 = fadd fast float %1525, %895
  %1527 = fsub fast float %1355, %894
  %1528 = fmul fast float %1467, %1527
  %1529 = fadd fast float %1528, %894
  br label %1530

; <label>:1530                                    ; preds = %1518, %1516, %1484, %1469, %1451, %1078, %897, %887
  %1531 = phi float [ %888, %1451 ], [ %888, %1078 ], [ %888, %887 ], [ %1521, %1518 ], [ %888, %1516 ], [ %1487, %1484 ], [ %1474, %1469 ], [ %888, %897 ]
  %1532 = phi float [ %889, %1451 ], [ %889, %1078 ], [ %889, %887 ], [ %1522, %1518 ], [ %889, %1516 ], [ %1488, %1484 ], [ %1475, %1469 ], [ %889, %897 ]
  %1533 = phi float [ %1452, %1451 ], [ %890, %1078 ], [ %890, %887 ], [ %1452, %1518 ], [ %1452, %1516 ], [ %1452, %1484 ], [ %1452, %1469 ], [ %890, %897 ]
  %1534 = phi float [ %1453, %1451 ], [ %891, %1078 ], [ %891, %887 ], [ %1453, %1518 ], [ %1453, %1516 ], [ %1453, %1484 ], [ %1453, %1469 ], [ %891, %897 ]
  %1535 = phi float [ %1454, %1451 ], [ %892, %1078 ], [ %892, %887 ], [ %1454, %1518 ], [ %1454, %1516 ], [ %1454, %1484 ], [ %1454, %1469 ], [ %892, %897 ]
  %1536 = phi float [ %894, %1451 ], [ %894, %1078 ], [ %894, %887 ], [ %1529, %1518 ], [ %894, %1516 ], [ %1515, %1484 ], [ %1481, %1469 ], [ %894, %897 ]
  %1537 = phi float [ %895, %1451 ], [ %895, %1078 ], [ %895, %887 ], [ %1526, %1518 ], [ %895, %1516 ], [ %1492, %1484 ], [ %1478, %1469 ], [ %895, %897 ]
  %1538 = phi float [ %1455, %1451 ], [ %896, %1078 ], [ %896, %887 ], [ %1455, %1518 ], [ %1455, %1516 ], [ %1455, %1484 ], [ %1455, %1469 ], [ %896, %897 ]
  br i1 %389, label %2172, label %1539

; <label>:1539                                    ; preds = %1530
  %1540 = icmp ult i32 %442, 3
  %1541 = add i32 %33, 56
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %33, 60
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = or i32 %1546, %1543
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %2172, label %1549

; <label>:1549                                    ; preds = %1539
  %1550 = and i32 %1543, 262144
  %1551 = icmp ne i32 %1550, 0
  %1552 = select i1 %1551, float %38, float 1.000000e+00
  %1553 = select i1 %1551, float %39, float 0.000000e+00
  %1554 = select i1 %1551, float %40, float 0.000000e+00
  %1555 = select i1 %1551, float %41, float 1.000000e+00
  %1556 = select i1 %1551, float %42, float %65
  %1557 = select i1 %1551, float %43, float %66
  %1558 = add i32 %33, 316
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 16
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = fmul fast float %1562, 0x3F50624DE0000000
  %1564 = add i32 %33, 120
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = lshr i32 %1566, 16
  %1568 = and i32 %1567, 255
  %1569 = lshr i32 %1566, 24
  %1570 = add i32 %33, 324
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 65535
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = lshr i32 %1572, 16
  %1576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1575)  ; LegacyF16ToF32(value)
  %1577 = add i32 %33, 64
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = lshr i32 %1579, 22
  %1581 = shl nuw nsw i32 %1580, 5
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = shl i32 %1579, 4
  %1584 = and i32 %1583, 32752
  %1585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1584)  ; LegacyF16ToF32(value)
  %1586 = lshr i32 %1579, 7
  %1587 = and i32 %1586, 32752
  %1588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1587)  ; LegacyF16ToF32(value)
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1591 = fmul fast float %1590, 1.000000e+03
  %1592 = fmul fast float %339, %1591
  %1593 = call float @dx.op.unary.f32(i32 22, float %1592)  ; Frc(value)
  %1594 = fadd fast float %1593, %329
  %1595 = fmul fast float %340, %1591
  %1596 = call float @dx.op.unary.f32(i32 22, float %1595)  ; Frc(value)
  %1597 = fadd fast float %1596, %331
  %1598 = fmul fast float %1563, %1591
  %1599 = call float @dx.op.unary.f32(i32 22, float %1598)  ; Frc(value)
  %1600 = fmul fast float %1599, 0x401921FB60000000
  %1601 = fadd fast float %1600, %1582
  %1602 = call float @dx.op.unary.f32(i32 13, float %1601)  ; Sin(value)
  %1603 = call float @dx.op.unary.f32(i32 12, float %1601)  ; Cos(value)
  %1604 = fsub fast float -0.000000e+00, %1602
  %1605 = fadd fast float %1556, -5.000000e-01
  %1606 = fadd fast float %1557, -5.000000e-01
  %1607 = fmul fast float %1574, %1605
  %1608 = fmul fast float %1576, %1606
  %1609 = fadd fast float %1607, 5.000000e-01
  %1610 = fadd fast float %1608, 5.000000e-01
  %1611 = fmul fast float %1585, %1609
  %1612 = fmul fast float %1588, %1610
  %1613 = fmul fast float %1603, %1611
  %1614 = call float @dx.op.tertiary.f32(i32 46, float %1604, float %1612, float %1613)  ; FMad(a,b,c)
  %1615 = fmul fast float %1602, %1611
  %1616 = call float @dx.op.tertiary.f32(i32 46, float %1603, float %1612, float %1615)  ; FMad(a,b,c)
  %1617 = fadd fast float %1594, %1614
  %1618 = fadd fast float %1597, %1616
  %1619 = icmp ugt i32 %1568, 1
  %1620 = icmp ugt i32 %1566, 33554431
  %1621 = or i1 %1620, %1619
  br i1 %1621, label %1622, label %1647

; <label>:1622                                    ; preds = %1549
  %1623 = add i32 %33, 260
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = lshr i32 %1625, 16
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = fmul fast float %1590, %1627
  %1629 = call float @dx.op.unary.f32(i32 22, float %1628)  ; Frc(value)
  %1630 = mul nuw nsw i32 %1568, %1569
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1629, %1631
  %1633 = call float @dx.op.unary.f32(i32 27, float %1632)  ; Round_ni(value)
  %1634 = fptoui float %1633 to i32
  %1635 = urem i32 %1634, %1568
  %1636 = udiv i32 %1634, %1569
  %1637 = call float @dx.op.unary.f32(i32 22, float %1617)  ; Frc(value)
  %1638 = call float @dx.op.unary.f32(i32 22, float %1618)  ; Frc(value)
  %1639 = uitofp i32 %1635 to float
  %1640 = uitofp i32 %1636 to float
  %1641 = fadd fast float %1637, %1639
  %1642 = fadd fast float %1638, %1640
  %1643 = uitofp i32 %1568 to float
  %1644 = uitofp i32 %1569 to float
  %1645 = fdiv fast float %1641, %1643
  %1646 = fdiv fast float %1642, %1644
  br label %1647

; <label>:1647                                    ; preds = %1622, %1549
  %1648 = phi float [ %1645, %1622 ], [ %1617, %1549 ]
  %1649 = phi float [ %1646, %1622 ], [ %1618, %1549 ]
  %1650 = and i32 %1543, 256
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1698, label %1652

; <label>:1652                                    ; preds = %1647
  %1653 = add i32 %33, 432
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = add i32 %1655, 0
  %1657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1657, %dx.types.Handle %74, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = add i32 %33, 132
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = shl i32 %1662, 4
  %1664 = and i32 %1663, 32752
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = lshr i32 %1662, 7
  %1667 = and i32 %1666, 32752
  %1668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1667)  ; LegacyF16ToF32(value)
  %1669 = fsub fast float 1.000000e+00, %438
  %1670 = call float @dx.op.binary.f32(i32 35, float %1669, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1671 = bitcast float %438 to i32
  %1672 = sitofp i32 %1671 to float
  %1673 = fadd fast float %1672, 0xC1CFBF8940000000
  %1674 = fmul fast float %1668, %1673
  %1675 = fadd fast float %1674, 0x41CFBF8940000000
  %1676 = fptosi float %1675 to i32
  %1677 = bitcast i32 %1676 to float
  %1678 = bitcast float %1670 to i32
  %1679 = sitofp i32 %1678 to float
  %1680 = fadd fast float %1679, 0xC1CFBF8940000000
  %1681 = fmul fast float %1680, %1668
  %1682 = fadd fast float %1681, 0x41CFBF8940000000
  %1683 = fptosi float %1682 to i32
  %1684 = bitcast i32 %1683 to float
  %1685 = fmul fast float %1677, %1665
  %1686 = fmul fast float %1684, %1665
  %1687 = fsub fast float %1670, %1685
  %1688 = fadd fast float %1686, %1670
  %1689 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1691 = fsub fast float %1659, %1689
  %1692 = fsub fast float %1690, %1689
  %1693 = bitcast float %1692 to i32
  %1694 = sub nsw i32 2129859010, %1693
  %1695 = bitcast i32 %1694 to float
  %1696 = fmul fast float %1695, %1691
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  br label %1698

; <label>:1698                                    ; preds = %1652, %1647
  %1699 = phi float [ %1697, %1652 ], [ %438, %1647 ]
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 128
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1720, label %1704

; <label>:1704                                    ; preds = %1698
  %1705 = add i32 %33, 416
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = add i32 %1707, 0
  %1709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1709, %dx.types.Handle %74, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 524288
  %1715 = icmp ne i32 %1714, 0
  %1716 = fcmp fast ogt float %1711, 0x3FE0101020000000
  %1717 = select i1 %1716, float 1.000000e+00, float 0.000000e+00
  %1718 = select i1 %1715, float %1717, float %1711
  %1719 = fmul fast float %1718, %1699
  br label %1720

; <label>:1720                                    ; preds = %1704, %1698
  %1721 = phi float [ %1719, %1704 ], [ %1699, %1698 ]
  %1722 = fcmp fast ult float %1721, 0x3F70101020000000
  br i1 %1722, label %2172, label %1723

; <label>:1723                                    ; preds = %1720
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 16
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %1903, label %1728

; <label>:1728                                    ; preds = %1723
  %1729 = add i32 %33, 368
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = add i32 %1731, 0
  %1733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1733, %dx.types.Handle %73, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 512
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1750, label %1742

; <label>:1742                                    ; preds = %1728
  %1743 = add i32 %33, 448
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = add i32 %1745, 0
  %1747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1746, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1747, %dx.types.Handle %74, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  br label %1750

; <label>:1750                                    ; preds = %1742, %1728
  %1751 = phi float [ %1749, %1742 ], [ 1.000000e+00, %1728 ]
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 33554432
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1850, label %1756

; <label>:1756                                    ; preds = %1750
  %1757 = add i32 %33, 256
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 65535
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = lshr i32 %1759, 16
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = add i32 %33, 260
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 65535
  %1768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1767)  ; LegacyF16ToF32(value)
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 255
  %1772 = uitofp i32 %1771 to float
  %1773 = fmul fast float %1772, 0x3F70101020000000
  %1774 = lshr i32 %1770, 8
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = fmul fast float %1776, 0x3F70101020000000
  %1778 = lshr i32 %1770, 16
  %1779 = and i32 %1778, 255
  %1780 = uitofp i32 %1779 to float
  %1781 = fmul fast float %1780, 0x3F70101020000000
  %1782 = add i32 %33, 252
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = fmul fast float %1786, 0x3F70101020000000
  %1788 = lshr i32 %1784, 8
  %1789 = and i32 %1788, 255
  %1790 = uitofp i32 %1789 to float
  %1791 = fmul fast float %1790, 0x3F70101020000000
  %1792 = lshr i32 %1784, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101020000000
  %1796 = bitcast float %1735 to i32
  %1797 = ashr i32 %1796, 1
  %1798 = sub nsw i32 1597463174, %1797
  %1799 = bitcast i32 %1798 to float
  %1800 = fmul fast float %1735, 5.000000e-01
  %1801 = fmul fast float %1799, %1799
  %1802 = fmul fast float %1801, %1800
  %1803 = fsub fast float 1.500000e+00, %1802
  %1804 = fmul fast float %1799, %1735
  %1805 = fmul fast float %1804, %1803
  %1806 = bitcast float %1736 to i32
  %1807 = ashr i32 %1806, 1
  %1808 = sub nsw i32 1597463174, %1807
  %1809 = bitcast i32 %1808 to float
  %1810 = fmul fast float %1736, 5.000000e-01
  %1811 = fmul fast float %1809, %1809
  %1812 = fmul fast float %1811, %1810
  %1813 = fsub fast float 1.500000e+00, %1812
  %1814 = fmul fast float %1809, %1736
  %1815 = fmul fast float %1814, %1813
  %1816 = bitcast float %1737 to i32
  %1817 = ashr i32 %1816, 1
  %1818 = sub nsw i32 1597463174, %1817
  %1819 = bitcast i32 %1818 to float
  %1820 = fmul fast float %1737, 5.000000e-01
  %1821 = fmul fast float %1819, %1819
  %1822 = fmul fast float %1821, %1820
  %1823 = fsub fast float 1.500000e+00, %1822
  %1824 = fmul fast float %1819, %1737
  %1825 = fmul fast float %1824, %1823
  %1826 = fsub fast float %1805, %1787
  %1827 = fsub fast float %1815, %1791
  %1828 = fsub fast float %1825, %1795
  %1829 = fmul fast float %1826, %1761
  %1830 = fmul fast float %1827, %1763
  %1831 = fmul fast float %1828, %1768
  %1832 = fadd fast float %1829, %1773
  %1833 = fadd fast float %1830, %1777
  %1834 = fadd fast float %1831, %1781
  %1835 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  %1836 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1837 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1838 = fmul fast float %1835, %1835
  %1839 = fmul fast float %1836, %1836
  %1840 = fmul fast float %1837, %1837
  %1841 = fsub fast float %1838, %1735
  %1842 = fsub fast float %1839, %1736
  %1843 = fsub fast float %1840, %1737
  %1844 = fmul fast float %1841, %1751
  %1845 = fmul fast float %1842, %1751
  %1846 = fmul fast float %1843, %1751
  %1847 = fadd fast float %1844, %1735
  %1848 = fadd fast float %1845, %1736
  %1849 = fadd fast float %1846, %1737
  br label %1903

; <label>:1850                                    ; preds = %1750
  %1851 = and i32 %1753, 134217728
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1887, label %1853

; <label>:1853                                    ; preds = %1850
  %1854 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %1855 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1856 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1857 = fadd fast float %1854, -5.000000e-01
  %1858 = fadd fast float %1855, -5.000000e-01
  %1859 = fadd fast float %1856, -5.000000e-01
  %1860 = fmul fast float %1857, %1751
  %1861 = fmul fast float %1858, %1751
  %1862 = fmul fast float %1859, %1751
  %1863 = fadd fast float %1860, 5.000000e-01
  %1864 = fadd fast float %1861, 5.000000e-01
  %1865 = fadd fast float %1862, 5.000000e-01
  %1866 = call float @dx.op.unary.f32(i32 24, float %1735)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1736)  ; Sqrt(value)
  %1868 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %1869 = fmul fast float %1863, 2.000000e+00
  %1870 = fsub fast float 1.000000e+00, %1869
  %1871 = fmul fast float %1870, %1866
  %1872 = fadd fast float %1871, %1869
  %1873 = fmul fast float %1872, %1866
  %1874 = fmul fast float %1864, 2.000000e+00
  %1875 = fsub fast float 1.000000e+00, %1874
  %1876 = fmul fast float %1875, %1867
  %1877 = fadd fast float %1876, %1874
  %1878 = fmul fast float %1877, %1867
  %1879 = fmul fast float %1865, 2.000000e+00
  %1880 = fsub fast float 1.000000e+00, %1879
  %1881 = fmul fast float %1880, %1868
  %1882 = fadd fast float %1881, %1879
  %1883 = fmul fast float %1882, %1868
  %1884 = fmul fast float %1873, %1873
  %1885 = fmul fast float %1878, %1878
  %1886 = fmul fast float %1883, %1883
  br label %1903

; <label>:1887                                    ; preds = %1850
  %1888 = fmul fast float %316, %316
  %1889 = fmul fast float %320, %320
  %1890 = fmul fast float %324, %324
  %1891 = fadd fast float %1888, -1.000000e+00
  %1892 = fadd fast float %1889, -1.000000e+00
  %1893 = fadd fast float %1890, -1.000000e+00
  %1894 = fmul fast float %1751, %1891
  %1895 = fmul fast float %1751, %1892
  %1896 = fmul fast float %1751, %1893
  %1897 = fadd fast float %1894, 1.000000e+00
  %1898 = fadd fast float %1895, 1.000000e+00
  %1899 = fadd fast float %1896, 1.000000e+00
  %1900 = fmul fast float %1897, %1735
  %1901 = fmul fast float %1898, %1736
  %1902 = fmul fast float %1899, %1737
  br label %1903

; <label>:1903                                    ; preds = %1887, %1853, %1756, %1723
  %1904 = phi float [ %1847, %1756 ], [ %1884, %1853 ], [ %1900, %1887 ], [ 1.000000e+00, %1723 ]
  %1905 = phi float [ %1848, %1756 ], [ %1885, %1853 ], [ %1901, %1887 ], [ 1.000000e+00, %1723 ]
  %1906 = phi float [ %1849, %1756 ], [ %1886, %1853 ], [ %1902, %1887 ], [ 1.000000e+00, %1723 ]
  %1907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.i32 %1907, 1
  %1909 = and i32 %1908, 1
  %1910 = icmp ne i32 %1909, 0
  %1911 = add i32 %33, 356
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 32
  %1915 = icmp ne i32 %1914, 0
  %1916 = and i1 %1910, %1915
  %1917 = select i1 %1916, float 1.000000e+00, float %1904
  %1918 = select i1 %1916, float 0x3FD3333340000000, float %1905
  %1919 = select i1 %1916, float 0x3FD3333340000000, float %1906
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 32
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1996, label %1924

; <label>:1924                                    ; preds = %1903
  %1925 = add i32 %33, 124
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %33, 384
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1930, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1932, %dx.types.Handle %73, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1933, 2
  %1937 = extractvalue %dx.types.ResRet.f32 %1933, 3
  %1938 = and i32 %1927, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = lshr i32 %1927, 8
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = lshr i32 %1927, 16
  %1944 = and i32 %1943, 255
  %1945 = uitofp i32 %1944 to float
  %1946 = fmul fast float %1945, 0x3F70101000000000
  %1947 = fmul fast float %1934, %1939
  %1948 = fadd fast float %1947, %1942
  %1949 = fmul fast float %1948, 0x3F70101000000000
  %1950 = fadd fast float %1935, -5.000000e-01
  %1951 = fadd fast float %1937, -5.000000e-01
  %1952 = fmul fast float %1950, %1946
  %1953 = fmul fast float %1951, %1946
  %1954 = fadd fast float %1952, 5.000000e-01
  %1955 = fadd fast float %1953, 5.000000e-01
  %1956 = fmul fast float %1954, 2.000000e+00
  %1957 = fadd fast float %1956, -1.000000e+00
  %1958 = fmul fast float %1955, 2.000000e+00
  %1959 = fadd fast float %1958, -1.000000e+00
  %1960 = fadd fast float %1957, %1959
  %1961 = fmul fast float %1960, 5.000000e-01
  %1962 = fsub fast float %1957, %1959
  %1963 = fmul fast float %1962, 5.000000e-01
  %1964 = call float @dx.op.unary.f32(i32 6, float %1961)  ; FAbs(value)
  %1965 = fsub fast float 1.000000e+00, %1964
  %1966 = call float @dx.op.unary.f32(i32 6, float %1963)  ; FAbs(value)
  %1967 = fsub fast float %1965, %1966
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1961, float %1963, float %1967, float %1961, float %1963, float %1967)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = call float @dx.op.unary.f32(i32 25, float %1968)  ; Rsqrt(value)
  %1970 = fmul fast float %1961, %1969
  %1971 = fmul fast float %1963, %1969
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 67108864
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1992, label %1976

; <label>:1976                                    ; preds = %1924
  %1977 = add i32 %33, 312
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %1979, 65535
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 65535
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = lshr i32 %1979, 16
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = fsub fast float %1949, %1987
  %1989 = fmul fast float %1988, %1981
  %1990 = fadd fast float %1989, %1985
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  br label %1992

; <label>:1992                                    ; preds = %1976, %1924
  %1993 = phi float [ %1991, %1976 ], [ %1949, %1924 ]
  %1994 = call float @dx.op.dot2.f32(i32 54, float %1970, float %1971, float %1552, float %1553)  ; Dot2(ax,ay,bx,by)
  %1995 = call float @dx.op.dot2.f32(i32 54, float %1970, float %1971, float %1554, float %1555)  ; Dot2(ax,ay,bx,by)
  br label %1996

; <label>:1996                                    ; preds = %1992, %1903
  %1997 = phi float [ %1993, %1992 ], [ 0x3FD6666660000000, %1903 ]
  %1998 = phi float [ %1994, %1992 ], [ 0.000000e+00, %1903 ]
  %1999 = phi float [ %1995, %1992 ], [ 0.000000e+00, %1903 ]
  %2000 = phi float [ %1936, %1992 ], [ 1.000000e+00, %1903 ]
  %2001 = add i32 %33, 192
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 22
  %2005 = shl nuw nsw i32 %2004, 5
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 64
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2044, label %2011

; <label>:2011                                    ; preds = %1996
  %2012 = add i32 %33, 400
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 131072
  %2020 = icmp eq i32 %2019, 0
  %2021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %73, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = fmul fast float %2022, %304
  %2026 = fmul fast float %2023, %307
  %2027 = fmul fast float %2024, %310
  br i1 %2020, label %2034, label %2028

; <label>:2028                                    ; preds = %2011
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = fmul fast float %2030, %2025
  %2032 = fmul fast float %2030, %2026
  %2033 = fmul fast float %2030, %2027
  br label %2034

; <label>:2034                                    ; preds = %2028, %2011
  %2035 = phi float [ %2031, %2028 ], [ %2025, %2011 ]
  %2036 = phi float [ %2032, %2028 ], [ %2026, %2011 ]
  %2037 = phi float [ %2033, %2028 ], [ %2027, %2011 ]
  %2038 = fmul fast float %2035, %2006
  %2039 = select i1 %203, float %2038, float %2035
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2036, float %2037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = select i1 %203, float 0.000000e+00, float %2035
  %2042 = select i1 %203, float %2040, float %2036
  %2043 = select i1 %203, float 0.000000e+00, float %2037
  br label %2044

; <label>:2044                                    ; preds = %2034, %1996
  %2045 = phi float [ %2041, %2034 ], [ 0.000000e+00, %1996 ]
  %2046 = phi float [ %2042, %2034 ], [ 0.000000e+00, %1996 ]
  %2047 = phi float [ %2043, %2034 ], [ 0.000000e+00, %1996 ]
  %2048 = add i32 %33, 128
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = lshr i32 %2050, 8
  %2054 = and i32 %2053, 255
  %2055 = uitofp i32 %2054 to float
  %2056 = call float @dx.op.dot3.f32(i32 55, float %1917, float %1918, float %1919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2057 = fmul fast float %2055, %2056
  %2058 = fadd fast float %2057, %2052
  %2059 = fmul fast float %2058, 0x3F70101020000000
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  br i1 %1540, label %2061, label %2066

; <label>:2061                                    ; preds = %2044
  %2062 = fsub fast float 1.000000e+00, %1721
  %2063 = fmul fast float %2062, %1533
  %2064 = fmul fast float %2062, %1534
  %2065 = fmul fast float %2062, %1535
  br label %2066

; <label>:2066                                    ; preds = %2061, %2044
  %2067 = phi float [ %2063, %2061 ], [ %1533, %2044 ]
  %2068 = phi float [ %2064, %2061 ], [ %1534, %2044 ]
  %2069 = phi float [ %2065, %2061 ], [ %1535, %2044 ]
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 3
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2074, label %2093

; <label>:2074                                    ; preds = %2066
  %2075 = and i32 %2071, 16
  %2076 = icmp ne i32 %2075, 0
  %2077 = select i1 %2076, float %1721, float 0.000000e+00
  %2078 = and i32 %2071, 64
  %2079 = icmp ne i32 %2078, 0
  %2080 = select i1 %2079, float %1721, float 0.000000e+00
  %2081 = fsub fast float %2045, %2067
  %2082 = fsub fast float %2046, %2068
  %2083 = fsub fast float %2047, %2069
  %2084 = fmul fast float %2080, %2081
  %2085 = fmul fast float %2080, %2082
  %2086 = fmul fast float %2080, %2083
  %2087 = fadd fast float %2084, %2067
  %2088 = fadd fast float %2085, %2068
  %2089 = fadd fast float %2086, %2069
  %2090 = fsub fast float %2060, %1538
  %2091 = fmul fast float %2077, %2090
  %2092 = fadd fast float %2091, %1538
  br label %2093

; <label>:2093                                    ; preds = %2074, %2066
  %2094 = phi float [ %2067, %2066 ], [ %2087, %2074 ]
  %2095 = phi float [ %2068, %2066 ], [ %2088, %2074 ]
  %2096 = phi float [ %2069, %2066 ], [ %2089, %2074 ]
  %2097 = phi float [ %1538, %2066 ], [ %2092, %2074 ]
  %2098 = and i32 %2071, 12
  %2099 = icmp eq i32 %2098, 12
  br i1 %2099, label %2172, label %2100

; <label>:2100                                    ; preds = %2093
  %2101 = and i32 %2071, 2097184
  %2102 = icmp eq i32 %2101, 2097184
  %2103 = select i1 %2102, float %1721, float 0.000000e+00
  %2104 = and i32 %2071, 4194336
  %2105 = icmp eq i32 %2104, 4194336
  %2106 = select i1 %2105, float %1721, float 0.000000e+00
  %2107 = and i32 %2071, 8388640
  %2108 = icmp eq i32 %2107, 8388640
  %2109 = select i1 %2108, float %1721, float 0.000000e+00
  %2110 = icmp eq i32 %2098, 0
  br i1 %2110, label %2111, label %2124

; <label>:2111                                    ; preds = %2100
  %2112 = fsub fast float %1998, %1531
  %2113 = fsub fast float %1999, %1532
  %2114 = fmul fast float %2103, %2112
  %2115 = fmul fast float %2103, %2113
  %2116 = fadd fast float %2114, %1531
  %2117 = fadd fast float %2115, %1532
  %2118 = fsub fast float %2000, %1537
  %2119 = fmul fast float %2106, %2118
  %2120 = fadd fast float %2119, %1537
  %2121 = fsub fast float %1997, %1536
  %2122 = fmul fast float %2109, %2121
  %2123 = fadd fast float %2122, %1536
  br label %2172

; <label>:2124                                    ; preds = %2100
  %2125 = icmp eq i32 %2098, 4
  br i1 %2125, label %2126, label %2158

; <label>:2126                                    ; preds = %2124
  %2127 = fmul fast float %2103, %1998
  %2128 = fmul fast float %2103, %1999
  %2129 = fadd fast float %2127, %1531
  %2130 = fadd fast float %2128, %1532
  %2131 = call float @dx.op.binary.f32(i32 36, float %1537, float %2000)  ; FMin(a,b)
  %2132 = fsub fast float %2131, %1537
  %2133 = fmul fast float %2132, %2106
  %2134 = fadd fast float %2133, %1537
  %2135 = fadd fast float %1997, %1536
  %2136 = fmul fast float %2135, 0x3FF337FAE0000000
  %2137 = fmul fast float %1536, %1536
  %2138 = fmul fast float %1997, %1997
  %2139 = fadd fast float %2138, %2137
  %2140 = fmul fast float %2139, 0x3FE5152B00000000
  %2141 = fmul fast float %1536, 0xBFCC1F85E0000000
  %2142 = fmul fast float %2141, %1997
  %2143 = fadd fast float %2142, 0xBFE1363700000000
  %2144 = fadd fast float %2143, %2136
  %2145 = fsub fast float %2144, %2140
  %2146 = fmul fast float %2135, 0x3FBA6F0D00000000
  %2147 = fmul fast float %2139, 0x3FD0432880000000
  %2148 = fmul fast float %1536, 0xBFEF110800000000
  %2149 = fmul fast float %2148, %1997
  %2150 = fadd fast float %2149, 1.000000e+00
  %2151 = fsub fast float %2150, %2146
  %2152 = fadd fast float %2151, %2147
  %2153 = fdiv fast float %2145, %2152
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fsub fast float %2154, %1536
  %2156 = fmul fast float %2155, %2109
  %2157 = fadd fast float %2156, %1536
  br label %2172

; <label>:2158                                    ; preds = %2124
  %2159 = icmp eq i32 %2098, 8
  br i1 %2159, label %2160, label %2172

; <label>:2160                                    ; preds = %2158
  %2161 = fmul fast float %2103, %1998
  %2162 = fmul fast float %2103, %1999
  %2163 = fadd fast float %2161, %1531
  %2164 = fadd fast float %2162, %1532
  %2165 = call float @dx.op.binary.f32(i32 36, float %1537, float %2000)  ; FMin(a,b)
  %2166 = fsub fast float %2165, %1537
  %2167 = fmul fast float %2166, %2106
  %2168 = fadd fast float %2167, %1537
  %2169 = fsub fast float %1997, %1536
  %2170 = fmul fast float %2109, %2169
  %2171 = fadd fast float %2170, %1536
  br label %2172

; <label>:2172                                    ; preds = %2160, %2158, %2126, %2111, %2093, %1720, %1539, %1530
  %2173 = phi float [ %1531, %2093 ], [ %1531, %1720 ], [ %1531, %1530 ], [ %2163, %2160 ], [ %1531, %2158 ], [ %2129, %2126 ], [ %2116, %2111 ], [ %1531, %1539 ]
  %2174 = phi float [ %1532, %2093 ], [ %1532, %1720 ], [ %1532, %1530 ], [ %2164, %2160 ], [ %1532, %2158 ], [ %2130, %2126 ], [ %2117, %2111 ], [ %1532, %1539 ]
  %2175 = phi float [ %2094, %2093 ], [ %1533, %1720 ], [ %1533, %1530 ], [ %2094, %2160 ], [ %2094, %2158 ], [ %2094, %2126 ], [ %2094, %2111 ], [ %1533, %1539 ]
  %2176 = phi float [ %2095, %2093 ], [ %1534, %1720 ], [ %1534, %1530 ], [ %2095, %2160 ], [ %2095, %2158 ], [ %2095, %2126 ], [ %2095, %2111 ], [ %1534, %1539 ]
  %2177 = phi float [ %2096, %2093 ], [ %1535, %1720 ], [ %1535, %1530 ], [ %2096, %2160 ], [ %2096, %2158 ], [ %2096, %2126 ], [ %2096, %2111 ], [ %1535, %1539 ]
  %2178 = phi float [ %1536, %2093 ], [ %1536, %1720 ], [ %1536, %1530 ], [ %2171, %2160 ], [ %1536, %2158 ], [ %2157, %2126 ], [ %2123, %2111 ], [ %1536, %1539 ]
  %2179 = phi float [ %1537, %2093 ], [ %1537, %1720 ], [ %1537, %1530 ], [ %2168, %2160 ], [ %1537, %2158 ], [ %2134, %2126 ], [ %2120, %2111 ], [ %1537, %1539 ]
  %2180 = phi float [ %2097, %2093 ], [ %1538, %1720 ], [ %1538, %1530 ], [ %2097, %2160 ], [ %2097, %2158 ], [ %2097, %2126 ], [ %2097, %2111 ], [ %1538, %1539 ]
  br i1 %391, label %2814, label %2181

; <label>:2181                                    ; preds = %2172
  %2182 = icmp ult i32 %442, 4
  %2183 = add i32 %33, 72
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = add i32 %33, 76
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = or i32 %2188, %2185
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2814, label %2191

; <label>:2191                                    ; preds = %2181
  %2192 = and i32 %2185, 262144
  %2193 = icmp ne i32 %2192, 0
  %2194 = select i1 %2193, float %38, float 1.000000e+00
  %2195 = select i1 %2193, float %39, float 0.000000e+00
  %2196 = select i1 %2193, float %40, float 0.000000e+00
  %2197 = select i1 %2193, float %41, float 1.000000e+00
  %2198 = select i1 %2193, float %42, float %65
  %2199 = select i1 %2193, float %43, float %66
  %2200 = add i32 %33, 332
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = lshr i32 %2202, 16
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = fmul fast float %2204, 0x3F50624DE0000000
  %2206 = add i32 %33, 136
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 16
  %2210 = and i32 %2209, 255
  %2211 = lshr i32 %2208, 24
  %2212 = add i32 %33, 340
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 65535
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = lshr i32 %2214, 16
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = add i32 %33, 80
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = lshr i32 %2221, 22
  %2223 = shl nuw nsw i32 %2222, 5
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = shl i32 %2221, 4
  %2226 = and i32 %2225, 32752
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = lshr i32 %2221, 7
  %2229 = and i32 %2228, 32752
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2233 = fmul fast float %2232, 1.000000e+03
  %2234 = fmul fast float %381, %2233
  %2235 = call float @dx.op.unary.f32(i32 22, float %2234)  ; Frc(value)
  %2236 = fadd fast float %2235, %371
  %2237 = fmul fast float %382, %2233
  %2238 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2239 = fadd fast float %2238, %373
  %2240 = fmul fast float %2205, %2233
  %2241 = call float @dx.op.unary.f32(i32 22, float %2240)  ; Frc(value)
  %2242 = fmul fast float %2241, 0x401921FB60000000
  %2243 = fadd fast float %2242, %2224
  %2244 = call float @dx.op.unary.f32(i32 13, float %2243)  ; Sin(value)
  %2245 = call float @dx.op.unary.f32(i32 12, float %2243)  ; Cos(value)
  %2246 = fsub fast float -0.000000e+00, %2244
  %2247 = fadd fast float %2198, -5.000000e-01
  %2248 = fadd fast float %2199, -5.000000e-01
  %2249 = fmul fast float %2216, %2247
  %2250 = fmul fast float %2218, %2248
  %2251 = fadd fast float %2249, 5.000000e-01
  %2252 = fadd fast float %2250, 5.000000e-01
  %2253 = fmul fast float %2227, %2251
  %2254 = fmul fast float %2230, %2252
  %2255 = fmul fast float %2245, %2253
  %2256 = call float @dx.op.tertiary.f32(i32 46, float %2246, float %2254, float %2255)  ; FMad(a,b,c)
  %2257 = fmul fast float %2244, %2253
  %2258 = call float @dx.op.tertiary.f32(i32 46, float %2245, float %2254, float %2257)  ; FMad(a,b,c)
  %2259 = fadd fast float %2236, %2256
  %2260 = fadd fast float %2239, %2258
  %2261 = icmp ugt i32 %2210, 1
  %2262 = icmp ugt i32 %2208, 33554431
  %2263 = or i1 %2262, %2261
  br i1 %2263, label %2264, label %2289

; <label>:2264                                    ; preds = %2191
  %2265 = add i32 %33, 276
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 16
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = fmul fast float %2232, %2269
  %2271 = call float @dx.op.unary.f32(i32 22, float %2270)  ; Frc(value)
  %2272 = mul nuw nsw i32 %2210, %2211
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2271, %2273
  %2275 = call float @dx.op.unary.f32(i32 27, float %2274)  ; Round_ni(value)
  %2276 = fptoui float %2275 to i32
  %2277 = urem i32 %2276, %2210
  %2278 = udiv i32 %2276, %2211
  %2279 = call float @dx.op.unary.f32(i32 22, float %2259)  ; Frc(value)
  %2280 = call float @dx.op.unary.f32(i32 22, float %2260)  ; Frc(value)
  %2281 = uitofp i32 %2277 to float
  %2282 = uitofp i32 %2278 to float
  %2283 = fadd fast float %2279, %2281
  %2284 = fadd fast float %2280, %2282
  %2285 = uitofp i32 %2210 to float
  %2286 = uitofp i32 %2211 to float
  %2287 = fdiv fast float %2283, %2285
  %2288 = fdiv fast float %2284, %2286
  br label %2289

; <label>:2289                                    ; preds = %2264, %2191
  %2290 = phi float [ %2287, %2264 ], [ %2259, %2191 ]
  %2291 = phi float [ %2288, %2264 ], [ %2260, %2191 ]
  %2292 = and i32 %2185, 256
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2340, label %2294

; <label>:2294                                    ; preds = %2289
  %2295 = add i32 %33, 436
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %74, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = add i32 %33, 148
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = shl i32 %2304, 4
  %2306 = and i32 %2305, 32752
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = lshr i32 %2304, 7
  %2309 = and i32 %2308, 32752
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = fsub fast float 1.000000e+00, %437
  %2312 = call float @dx.op.binary.f32(i32 35, float %2311, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2313 = bitcast float %437 to i32
  %2314 = sitofp i32 %2313 to float
  %2315 = fadd fast float %2314, 0xC1CFBF8940000000
  %2316 = fmul fast float %2310, %2315
  %2317 = fadd fast float %2316, 0x41CFBF8940000000
  %2318 = fptosi float %2317 to i32
  %2319 = bitcast i32 %2318 to float
  %2320 = bitcast float %2312 to i32
  %2321 = sitofp i32 %2320 to float
  %2322 = fadd fast float %2321, 0xC1CFBF8940000000
  %2323 = fmul fast float %2322, %2310
  %2324 = fadd fast float %2323, 0x41CFBF8940000000
  %2325 = fptosi float %2324 to i32
  %2326 = bitcast i32 %2325 to float
  %2327 = fmul fast float %2319, %2307
  %2328 = fmul fast float %2326, %2307
  %2329 = fsub fast float %2312, %2327
  %2330 = fadd fast float %2328, %2312
  %2331 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2332 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2333 = fsub fast float %2301, %2331
  %2334 = fsub fast float %2332, %2331
  %2335 = bitcast float %2334 to i32
  %2336 = sub nsw i32 2129859010, %2335
  %2337 = bitcast i32 %2336 to float
  %2338 = fmul fast float %2337, %2333
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  br label %2340

; <label>:2340                                    ; preds = %2294, %2289
  %2341 = phi float [ %2339, %2294 ], [ %437, %2289 ]
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 128
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2362, label %2346

; <label>:2346                                    ; preds = %2340
  %2347 = add i32 %33, 420
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = add i32 %2349, 0
  %2351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2351, %dx.types.Handle %74, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 524288
  %2357 = icmp ne i32 %2356, 0
  %2358 = fcmp fast ogt float %2353, 0x3FE0101020000000
  %2359 = select i1 %2358, float 1.000000e+00, float 0.000000e+00
  %2360 = select i1 %2357, float %2359, float %2353
  %2361 = fmul fast float %2360, %2341
  br label %2362

; <label>:2362                                    ; preds = %2346, %2340
  %2363 = phi float [ %2361, %2346 ], [ %2341, %2340 ]
  %2364 = fcmp fast ult float %2363, 0x3F70101020000000
  br i1 %2364, label %2814, label %2365

; <label>:2365                                    ; preds = %2362
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 16
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2545, label %2370

; <label>:2370                                    ; preds = %2365
  %2371 = add i32 %33, 372
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = add i32 %2373, 0
  %2375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2375, %dx.types.Handle %73, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.ResRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.ResRet.f32 %2376, 2
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 512
  %2383 = icmp eq i32 %2382, 0
  br i1 %2383, label %2392, label %2384

; <label>:2384                                    ; preds = %2370
  %2385 = add i32 %33, 452
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = add i32 %2387, 0
  %2389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2389, %dx.types.Handle %74, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  br label %2392

; <label>:2392                                    ; preds = %2384, %2370
  %2393 = phi float [ %2391, %2384 ], [ 1.000000e+00, %2370 ]
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 33554432
  %2397 = icmp eq i32 %2396, 0
  br i1 %2397, label %2492, label %2398

; <label>:2398                                    ; preds = %2392
  %2399 = add i32 %33, 272
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 65535
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = lshr i32 %2401, 16
  %2405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2404)  ; LegacyF16ToF32(value)
  %2406 = add i32 %33, 276
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = and i32 %2408, 65535
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = lshr i32 %2412, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = lshr i32 %2412, 16
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = add i32 %33, 268
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, 0x3F70101020000000
  %2430 = lshr i32 %2426, 8
  %2431 = and i32 %2430, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = fmul fast float %2432, 0x3F70101020000000
  %2434 = lshr i32 %2426, 16
  %2435 = and i32 %2434, 255
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3F70101020000000
  %2438 = bitcast float %2377 to i32
  %2439 = ashr i32 %2438, 1
  %2440 = sub nsw i32 1597463174, %2439
  %2441 = bitcast i32 %2440 to float
  %2442 = fmul fast float %2377, 5.000000e-01
  %2443 = fmul fast float %2441, %2441
  %2444 = fmul fast float %2443, %2442
  %2445 = fsub fast float 1.500000e+00, %2444
  %2446 = fmul fast float %2441, %2377
  %2447 = fmul fast float %2446, %2445
  %2448 = bitcast float %2378 to i32
  %2449 = ashr i32 %2448, 1
  %2450 = sub nsw i32 1597463174, %2449
  %2451 = bitcast i32 %2450 to float
  %2452 = fmul fast float %2378, 5.000000e-01
  %2453 = fmul fast float %2451, %2451
  %2454 = fmul fast float %2453, %2452
  %2455 = fsub fast float 1.500000e+00, %2454
  %2456 = fmul fast float %2451, %2378
  %2457 = fmul fast float %2456, %2455
  %2458 = bitcast float %2379 to i32
  %2459 = ashr i32 %2458, 1
  %2460 = sub nsw i32 1597463174, %2459
  %2461 = bitcast i32 %2460 to float
  %2462 = fmul fast float %2379, 5.000000e-01
  %2463 = fmul fast float %2461, %2461
  %2464 = fmul fast float %2463, %2462
  %2465 = fsub fast float 1.500000e+00, %2464
  %2466 = fmul fast float %2461, %2379
  %2467 = fmul fast float %2466, %2465
  %2468 = fsub fast float %2447, %2429
  %2469 = fsub fast float %2457, %2433
  %2470 = fsub fast float %2467, %2437
  %2471 = fmul fast float %2468, %2403
  %2472 = fmul fast float %2469, %2405
  %2473 = fmul fast float %2470, %2410
  %2474 = fadd fast float %2471, %2415
  %2475 = fadd fast float %2472, %2419
  %2476 = fadd fast float %2473, %2423
  %2477 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2478 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2479 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2480 = fmul fast float %2477, %2477
  %2481 = fmul fast float %2478, %2478
  %2482 = fmul fast float %2479, %2479
  %2483 = fsub fast float %2480, %2377
  %2484 = fsub fast float %2481, %2378
  %2485 = fsub fast float %2482, %2379
  %2486 = fmul fast float %2483, %2393
  %2487 = fmul fast float %2484, %2393
  %2488 = fmul fast float %2485, %2393
  %2489 = fadd fast float %2486, %2377
  %2490 = fadd fast float %2487, %2378
  %2491 = fadd fast float %2488, %2379
  br label %2545

; <label>:2492                                    ; preds = %2392
  %2493 = and i32 %2395, 134217728
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2529, label %2495

; <label>:2495                                    ; preds = %2492
  %2496 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2498 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fadd fast float %2497, -5.000000e-01
  %2501 = fadd fast float %2498, -5.000000e-01
  %2502 = fmul fast float %2499, %2393
  %2503 = fmul fast float %2500, %2393
  %2504 = fmul fast float %2501, %2393
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = call float @dx.op.unary.f32(i32 24, float %2377)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %2378)  ; Sqrt(value)
  %2510 = call float @dx.op.unary.f32(i32 24, float %2379)  ; Sqrt(value)
  %2511 = fmul fast float %2505, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2508
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2508
  %2516 = fmul fast float %2506, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2509
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2509
  %2521 = fmul fast float %2507, 2.000000e+00
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2522, %2510
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2524, %2510
  %2526 = fmul fast float %2515, %2515
  %2527 = fmul fast float %2520, %2520
  %2528 = fmul fast float %2525, %2525
  br label %2545

; <label>:2529                                    ; preds = %2492
  %2530 = fmul fast float %358, %358
  %2531 = fmul fast float %362, %362
  %2532 = fmul fast float %366, %366
  %2533 = fadd fast float %2530, -1.000000e+00
  %2534 = fadd fast float %2531, -1.000000e+00
  %2535 = fadd fast float %2532, -1.000000e+00
  %2536 = fmul fast float %2393, %2533
  %2537 = fmul fast float %2393, %2534
  %2538 = fmul fast float %2393, %2535
  %2539 = fadd fast float %2536, 1.000000e+00
  %2540 = fadd fast float %2537, 1.000000e+00
  %2541 = fadd fast float %2538, 1.000000e+00
  %2542 = fmul fast float %2539, %2377
  %2543 = fmul fast float %2540, %2378
  %2544 = fmul fast float %2541, %2379
  br label %2545

; <label>:2545                                    ; preds = %2529, %2495, %2398, %2365
  %2546 = phi float [ %2489, %2398 ], [ %2526, %2495 ], [ %2542, %2529 ], [ 1.000000e+00, %2365 ]
  %2547 = phi float [ %2490, %2398 ], [ %2527, %2495 ], [ %2543, %2529 ], [ 1.000000e+00, %2365 ]
  %2548 = phi float [ %2491, %2398 ], [ %2528, %2495 ], [ %2544, %2529 ], [ 1.000000e+00, %2365 ]
  %2549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.i32 %2549, 1
  %2551 = and i32 %2550, 1
  %2552 = icmp ne i32 %2551, 0
  %2553 = add i32 %33, 356
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 32
  %2557 = icmp ne i32 %2556, 0
  %2558 = and i1 %2552, %2557
  %2559 = select i1 %2558, float 1.000000e+00, float %2546
  %2560 = select i1 %2558, float 0x3FD3333340000000, float %2547
  %2561 = select i1 %2558, float 0x3FD3333340000000, float %2548
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 32
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2638, label %2566

; <label>:2566                                    ; preds = %2545
  %2567 = add i32 %33, 140
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %33, 388
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = add i32 %2572, 0
  %2574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2574, %dx.types.Handle %73, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.ResRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.ResRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.ResRet.f32 %2575, 3
  %2580 = and i32 %2569, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = lshr i32 %2569, 8
  %2583 = and i32 %2582, 255
  %2584 = uitofp i32 %2583 to float
  %2585 = lshr i32 %2569, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101000000000
  %2589 = fmul fast float %2576, %2581
  %2590 = fadd fast float %2589, %2584
  %2591 = fmul fast float %2590, 0x3F70101000000000
  %2592 = fadd fast float %2577, -5.000000e-01
  %2593 = fadd fast float %2579, -5.000000e-01
  %2594 = fmul fast float %2592, %2588
  %2595 = fmul fast float %2593, %2588
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fmul fast float %2596, 2.000000e+00
  %2599 = fadd fast float %2598, -1.000000e+00
  %2600 = fmul fast float %2597, 2.000000e+00
  %2601 = fadd fast float %2600, -1.000000e+00
  %2602 = fadd fast float %2599, %2601
  %2603 = fmul fast float %2602, 5.000000e-01
  %2604 = fsub fast float %2599, %2601
  %2605 = fmul fast float %2604, 5.000000e-01
  %2606 = call float @dx.op.unary.f32(i32 6, float %2603)  ; FAbs(value)
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = call float @dx.op.unary.f32(i32 6, float %2605)  ; FAbs(value)
  %2609 = fsub fast float %2607, %2608
  %2610 = call float @dx.op.dot3.f32(i32 55, float %2603, float %2605, float %2609, float %2603, float %2605, float %2609)  ; Dot3(ax,ay,az,bx,by,bz)
  %2611 = call float @dx.op.unary.f32(i32 25, float %2610)  ; Rsqrt(value)
  %2612 = fmul fast float %2603, %2611
  %2613 = fmul fast float %2605, %2611
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 67108864
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2634, label %2618

; <label>:2618                                    ; preds = %2566
  %2619 = add i32 %33, 328
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 65535
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 65535
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2621, 16
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = fsub fast float %2591, %2629
  %2631 = fmul fast float %2630, %2623
  %2632 = fadd fast float %2631, %2627
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  br label %2634

; <label>:2634                                    ; preds = %2618, %2566
  %2635 = phi float [ %2633, %2618 ], [ %2591, %2566 ]
  %2636 = call float @dx.op.dot2.f32(i32 54, float %2612, float %2613, float %2194, float %2195)  ; Dot2(ax,ay,bx,by)
  %2637 = call float @dx.op.dot2.f32(i32 54, float %2612, float %2613, float %2196, float %2197)  ; Dot2(ax,ay,bx,by)
  br label %2638

; <label>:2638                                    ; preds = %2634, %2545
  %2639 = phi float [ %2635, %2634 ], [ 0x3FD6666660000000, %2545 ]
  %2640 = phi float [ %2636, %2634 ], [ 0.000000e+00, %2545 ]
  %2641 = phi float [ %2637, %2634 ], [ 0.000000e+00, %2545 ]
  %2642 = phi float [ %2578, %2634 ], [ 1.000000e+00, %2545 ]
  %2643 = add i32 %33, 208
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 22
  %2647 = shl nuw nsw i32 %2646, 5
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 64
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2686, label %2653

; <label>:2653                                    ; preds = %2638
  %2654 = add i32 %33, 404
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2656, 0
  %2658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 131072
  %2662 = icmp eq i32 %2661, 0
  %2663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2658, %dx.types.Handle %73, float %2290, float %2291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = fmul fast float %2664, %346
  %2668 = fmul fast float %2665, %349
  %2669 = fmul fast float %2666, %352
  br i1 %2662, label %2676, label %2670

; <label>:2670                                    ; preds = %2653
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = fmul fast float %2672, %2667
  %2674 = fmul fast float %2672, %2668
  %2675 = fmul fast float %2672, %2669
  br label %2676

; <label>:2676                                    ; preds = %2670, %2653
  %2677 = phi float [ %2673, %2670 ], [ %2667, %2653 ]
  %2678 = phi float [ %2674, %2670 ], [ %2668, %2653 ]
  %2679 = phi float [ %2675, %2670 ], [ %2669, %2653 ]
  %2680 = fmul fast float %2677, %2648
  %2681 = select i1 %203, float %2680, float %2677
  %2682 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2678, float %2679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2683 = select i1 %203, float 0.000000e+00, float %2677
  %2684 = select i1 %203, float %2682, float %2678
  %2685 = select i1 %203, float 0.000000e+00, float %2679
  br label %2686

; <label>:2686                                    ; preds = %2676, %2638
  %2687 = phi float [ %2683, %2676 ], [ 0.000000e+00, %2638 ]
  %2688 = phi float [ %2684, %2676 ], [ 0.000000e+00, %2638 ]
  %2689 = phi float [ %2685, %2676 ], [ 0.000000e+00, %2638 ]
  %2690 = add i32 %33, 144
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = lshr i32 %2692, 8
  %2696 = and i32 %2695, 255
  %2697 = uitofp i32 %2696 to float
  %2698 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2560, float %2561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2699 = fmul fast float %2697, %2698
  %2700 = fadd fast float %2699, %2694
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  br i1 %2182, label %2703, label %2708

; <label>:2703                                    ; preds = %2686
  %2704 = fsub fast float 1.000000e+00, %2363
  %2705 = fmul fast float %2704, %2175
  %2706 = fmul fast float %2704, %2176
  %2707 = fmul fast float %2704, %2177
  br label %2708

; <label>:2708                                    ; preds = %2703, %2686
  %2709 = phi float [ %2705, %2703 ], [ %2175, %2686 ]
  %2710 = phi float [ %2706, %2703 ], [ %2176, %2686 ]
  %2711 = phi float [ %2707, %2703 ], [ %2177, %2686 ]
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 3
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2716, label %2735

; <label>:2716                                    ; preds = %2708
  %2717 = and i32 %2713, 16
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2363, float 0.000000e+00
  %2720 = and i32 %2713, 64
  %2721 = icmp ne i32 %2720, 0
  %2722 = select i1 %2721, float %2363, float 0.000000e+00
  %2723 = fsub fast float %2687, %2709
  %2724 = fsub fast float %2688, %2710
  %2725 = fsub fast float %2689, %2711
  %2726 = fmul fast float %2722, %2723
  %2727 = fmul fast float %2722, %2724
  %2728 = fmul fast float %2722, %2725
  %2729 = fadd fast float %2726, %2709
  %2730 = fadd fast float %2727, %2710
  %2731 = fadd fast float %2728, %2711
  %2732 = fsub fast float %2702, %2180
  %2733 = fmul fast float %2719, %2732
  %2734 = fadd fast float %2733, %2180
  br label %2735

; <label>:2735                                    ; preds = %2716, %2708
  %2736 = phi float [ %2709, %2708 ], [ %2729, %2716 ]
  %2737 = phi float [ %2710, %2708 ], [ %2730, %2716 ]
  %2738 = phi float [ %2711, %2708 ], [ %2731, %2716 ]
  %2739 = phi float [ %2180, %2708 ], [ %2734, %2716 ]
  %2740 = and i32 %2713, 12
  %2741 = icmp eq i32 %2740, 12
  br i1 %2741, label %2814, label %2742

; <label>:2742                                    ; preds = %2735
  %2743 = and i32 %2713, 2097184
  %2744 = icmp eq i32 %2743, 2097184
  %2745 = select i1 %2744, float %2363, float 0.000000e+00
  %2746 = and i32 %2713, 4194336
  %2747 = icmp eq i32 %2746, 4194336
  %2748 = select i1 %2747, float %2363, float 0.000000e+00
  %2749 = and i32 %2713, 8388640
  %2750 = icmp eq i32 %2749, 8388640
  %2751 = select i1 %2750, float %2363, float 0.000000e+00
  %2752 = icmp eq i32 %2740, 0
  br i1 %2752, label %2753, label %2766

; <label>:2753                                    ; preds = %2742
  %2754 = fsub fast float %2640, %2173
  %2755 = fsub fast float %2641, %2174
  %2756 = fmul fast float %2745, %2754
  %2757 = fmul fast float %2745, %2755
  %2758 = fadd fast float %2756, %2173
  %2759 = fadd fast float %2757, %2174
  %2760 = fsub fast float %2642, %2179
  %2761 = fmul fast float %2748, %2760
  %2762 = fadd fast float %2761, %2179
  %2763 = fsub fast float %2639, %2178
  %2764 = fmul fast float %2751, %2763
  %2765 = fadd fast float %2764, %2178
  br label %2814

; <label>:2766                                    ; preds = %2742
  %2767 = icmp eq i32 %2740, 4
  br i1 %2767, label %2768, label %2800

; <label>:2768                                    ; preds = %2766
  %2769 = fmul fast float %2745, %2640
  %2770 = fmul fast float %2745, %2641
  %2771 = fadd fast float %2769, %2173
  %2772 = fadd fast float %2770, %2174
  %2773 = call float @dx.op.binary.f32(i32 36, float %2179, float %2642)  ; FMin(a,b)
  %2774 = fsub fast float %2773, %2179
  %2775 = fmul fast float %2774, %2748
  %2776 = fadd fast float %2775, %2179
  %2777 = fadd fast float %2639, %2178
  %2778 = fmul fast float %2777, 0x3FF337FAE0000000
  %2779 = fmul fast float %2178, %2178
  %2780 = fmul fast float %2639, %2639
  %2781 = fadd fast float %2780, %2779
  %2782 = fmul fast float %2781, 0x3FE5152B00000000
  %2783 = fmul fast float %2178, 0xBFCC1F85E0000000
  %2784 = fmul fast float %2783, %2639
  %2785 = fadd fast float %2784, 0xBFE1363700000000
  %2786 = fadd fast float %2785, %2778
  %2787 = fsub fast float %2786, %2782
  %2788 = fmul fast float %2777, 0x3FBA6F0D00000000
  %2789 = fmul fast float %2781, 0x3FD0432880000000
  %2790 = fmul fast float %2178, 0xBFEF110800000000
  %2791 = fmul fast float %2790, %2639
  %2792 = fadd fast float %2791, 1.000000e+00
  %2793 = fsub fast float %2792, %2788
  %2794 = fadd fast float %2793, %2789
  %2795 = fdiv fast float %2787, %2794
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fsub fast float %2796, %2178
  %2798 = fmul fast float %2797, %2751
  %2799 = fadd fast float %2798, %2178
  br label %2814

; <label>:2800                                    ; preds = %2766
  %2801 = icmp eq i32 %2740, 8
  br i1 %2801, label %2802, label %2814

; <label>:2802                                    ; preds = %2800
  %2803 = fmul fast float %2745, %2640
  %2804 = fmul fast float %2745, %2641
  %2805 = fadd fast float %2803, %2173
  %2806 = fadd fast float %2804, %2174
  %2807 = call float @dx.op.binary.f32(i32 36, float %2179, float %2642)  ; FMin(a,b)
  %2808 = fsub fast float %2807, %2179
  %2809 = fmul fast float %2808, %2748
  %2810 = fadd fast float %2809, %2179
  %2811 = fsub fast float %2639, %2178
  %2812 = fmul fast float %2751, %2811
  %2813 = fadd fast float %2812, %2178
  br label %2814

; <label>:2814                                    ; preds = %2802, %2800, %2768, %2753, %2735, %2362, %2181, %2172
  %2815 = phi float [ %2173, %2735 ], [ %2173, %2362 ], [ %2173, %2172 ], [ %2173, %2181 ], [ %2758, %2753 ], [ %2771, %2768 ], [ %2173, %2800 ], [ %2805, %2802 ]
  %2816 = phi float [ %2174, %2735 ], [ %2174, %2362 ], [ %2174, %2172 ], [ %2174, %2181 ], [ %2759, %2753 ], [ %2772, %2768 ], [ %2174, %2800 ], [ %2806, %2802 ]
  %2817 = phi float [ %2736, %2735 ], [ %2175, %2362 ], [ %2175, %2172 ], [ %2175, %2181 ], [ %2736, %2753 ], [ %2736, %2768 ], [ %2736, %2800 ], [ %2736, %2802 ]
  %2818 = phi float [ %2737, %2735 ], [ %2176, %2362 ], [ %2176, %2172 ], [ %2176, %2181 ], [ %2737, %2753 ], [ %2737, %2768 ], [ %2737, %2800 ], [ %2737, %2802 ]
  %2819 = phi float [ %2738, %2735 ], [ %2177, %2362 ], [ %2177, %2172 ], [ %2177, %2181 ], [ %2738, %2753 ], [ %2738, %2768 ], [ %2738, %2800 ], [ %2738, %2802 ]
  %2820 = phi float [ %2178, %2735 ], [ %2178, %2362 ], [ %2178, %2172 ], [ %2178, %2181 ], [ %2765, %2753 ], [ %2799, %2768 ], [ %2178, %2800 ], [ %2813, %2802 ]
  %2821 = phi float [ %2179, %2735 ], [ %2179, %2362 ], [ %2179, %2172 ], [ %2179, %2181 ], [ %2762, %2753 ], [ %2776, %2768 ], [ %2179, %2800 ], [ %2810, %2802 ]
  %2822 = phi float [ %2739, %2735 ], [ %2180, %2362 ], [ %2180, %2172 ], [ %2180, %2181 ], [ %2739, %2753 ], [ %2739, %2768 ], [ %2739, %2800 ], [ %2739, %2802 ]
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2827, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float %2826, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = call float @dx.op.dot2.f32(i32 54, float %2815, float %2816, float %2815, float %2816)  ; Dot2(ax,ay,bx,by)
  %2833 = fmul fast float %2832, 0x3FE3333340000000
  %2834 = fsub fast float 1.000000e+00, %2833
  %2835 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2834, float %2815, float %2816, float %2834)  ; Dot3(ax,ay,az,bx,by,bz)
  %2836 = call float @dx.op.unary.f32(i32 25, float %2835)  ; Rsqrt(value)
  %2837 = fmul fast float %2836, %2815
  %2838 = fmul fast float %2836, %2816
  %2839 = fmul fast float %2834, %2836
  %2840 = fmul fast float %2839, %84
  %2841 = fmul fast float %2839, %85
  %2842 = fmul fast float %2839, %86
  %2843 = fmul fast float %2837, %58
  %2844 = fmul fast float %2837, %59
  %2845 = fmul fast float %2837, %60
  %2846 = fadd fast float %2840, %2843
  %2847 = fadd fast float %2841, %2844
  %2848 = fadd fast float %2842, %2845
  %2849 = fmul fast float %96, %2838
  %2850 = fmul fast float %97, %2838
  %2851 = fmul fast float %98, %2838
  %2852 = fadd fast float %2846, %2849
  %2853 = fadd fast float %2847, %2850
  %2854 = fadd fast float %2848, %2851
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = call float @dx.op.unary.f32(i32 25, float %2855)  ; Rsqrt(value)
  %2857 = fmul fast float %2852, %2856
  %2858 = fmul fast float %2853, %2856
  %2859 = fmul fast float %2854, %2856
  %2860 = icmp eq i32 %34, 65535
  br i1 %2860, label %3375, label %2861

; <label>:2861                                    ; preds = %2814
  %2862 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %2863 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %2864 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %2865 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %2866 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %2867 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %2868 = fadd fast float %2862, %35
  %2869 = fadd fast float %2863, %36
  %2870 = fadd fast float %2864, %37
  %2871 = fadd fast float %2865, %35
  %2872 = fadd fast float %2866, %36
  %2873 = fadd fast float %2867, %37
  %2874 = mul i32 %34, 48
  %2875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = add i32 %2874, 16
  %2880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = add i32 %2874, 32
  %2885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = bitcast float %2889 to i32
  %2891 = fmul fast float %2876, %35
  %2892 = fmul fast float %2877, %36
  %2893 = fmul fast float %2878, %37
  %2894 = fsub fast float %2891, %2881
  %2895 = fsub fast float %2892, %2882
  %2896 = fsub fast float %2893, %2883
  %2897 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  %2898 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  %2899 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2900 = fmul fast float %2897, %2886
  %2901 = fmul fast float %2898, %2887
  %2902 = fmul fast float %2899, %2888
  %2903 = fadd fast float %2886, -1.000000e+00
  %2904 = fadd fast float %2887, -1.000000e+00
  %2905 = fadd fast float %2888, -1.000000e+00
  %2906 = call float @dx.op.unary.f32(i32 27, float %2900)  ; Round_ni(value)
  %2907 = call float @dx.op.unary.f32(i32 27, float %2901)  ; Round_ni(value)
  %2908 = call float @dx.op.unary.f32(i32 27, float %2902)  ; Round_ni(value)
  %2909 = call float @dx.op.binary.f32(i32 36, float %2906, float %2903)  ; FMin(a,b)
  %2910 = call float @dx.op.binary.f32(i32 36, float %2907, float %2904)  ; FMin(a,b)
  %2911 = call float @dx.op.binary.f32(i32 36, float %2908, float %2905)  ; FMin(a,b)
  %2912 = fmul fast float %2911, %2887
  %2913 = fadd fast float %2912, %2910
  %2914 = fmul fast float %2913, %2886
  %2915 = fadd fast float %2914, %2909
  %2916 = fptosi float %2915 to i32
  %2917 = add nsw i32 %2916, %2890
  %2918 = shl nsw i32 %2917, 2
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = lshr i32 %2920, 16
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %3344, label %2923

; <label>:2923                                    ; preds = %2861
  br label %2924

; <label>:2924                                    ; preds = %3045, %2923
  %2925 = phi i32 [ %2947, %3045 ], [ %2921, %2923 ]
  %2926 = phi float [ %3046, %3045 ], [ 0.000000e+00, %2923 ]
  %2927 = phi float [ %3047, %3045 ], [ %2824, %2923 ]
  %2928 = phi float [ %3048, %3045 ], [ %2822, %2923 ]
  %2929 = phi float [ %3049, %3045 ], [ 0.000000e+00, %2923 ]
  %2930 = phi float [ %3050, %3045 ], [ 0.000000e+00, %2923 ]
  %2931 = phi float [ %3051, %3045 ], [ %2817, %2923 ]
  %2932 = phi float [ %3052, %3045 ], [ %2818, %2923 ]
  %2933 = phi float [ %3053, %3045 ], [ %2819, %2923 ]
  %2934 = phi float [ %3054, %3045 ], [ %2857, %2923 ]
  %2935 = phi float [ %3055, %3045 ], [ %2858, %2923 ]
  %2936 = phi float [ %3056, %3045 ], [ %2859, %2923 ]
  %2937 = phi float [ %3057, %3045 ], [ %2821, %2923 ]
  %2938 = phi float [ %3058, %3045 ], [ %2820, %2923 ]
  %2939 = phi float [ %3059, %3045 ], [ 0.000000e+00, %2923 ]
  %2940 = phi float [ %3060, %3045 ], [ 0x3FA23C0BE0000000, %2923 ]
  %2941 = phi float [ %3061, %3045 ], [ %2829, %2923 ]
  %2942 = phi float [ %3062, %3045 ], [ %2830, %2923 ]
  %2943 = phi float [ %3063, %3045 ], [ %2831, %2923 ]
  %2944 = shl nuw nsw i32 %2925, 2
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = lshr i32 %2946, 16
  %2948 = shl i32 %2946, 8
  %2949 = and i32 %2948, 16776960
  %2950 = or i32 %2949, 48
  %2951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = or i32 %2949, 64
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.i32 %2956, 1
  %2959 = or i32 %2949, 80
  %2960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 3
  %2963 = or i32 %2949, 96
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = extractvalue %dx.types.ResRet.f32 %2964, 3
  %2969 = or i32 %2949, 112
  %2970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2972 = or i32 %2949, 128
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = or i32 %2949, 144
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.ResRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.ResRet.f32 %2979, 2
  %2983 = extractvalue %dx.types.ResRet.f32 %2979, 3
  %2984 = or i32 %2949, 160
  %2985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = extractvalue %dx.types.ResRet.f32 %2985, 3
  %2990 = or i32 %2949, 192
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = or i32 %2949, 208
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = or i32 %2949, 248
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %3000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.ResRet.f32 %3000, 2
  %3004 = extractvalue %dx.types.ResRet.f32 %3000, 3
  %3005 = call float @dx.op.dot4.f32(i32 56, float %3001, float %3002, float %3003, float %3004, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3006 = or i32 %2949, 16
  %3007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.ResRet.f32 %3007, 1
  %3010 = extractvalue %dx.types.ResRet.f32 %3007, 2
  %3011 = extractvalue %dx.types.ResRet.f32 %3007, 3
  %3012 = call float @dx.op.dot4.f32(i32 56, float %3008, float %3009, float %3010, float %3011, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3013 = or i32 %2949, 32
  %3014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.ResRet.f32 %3014, 1
  %3017 = extractvalue %dx.types.ResRet.f32 %3014, 2
  %3018 = extractvalue %dx.types.ResRet.f32 %3014, 3
  %3019 = call float @dx.op.dot4.f32(i32 56, float %3015, float %3016, float %3017, float %3018, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3020 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3021 = call float @dx.op.unary.f32(i32 6, float %3020)  ; FAbs(value)
  %3022 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3023 = call float @dx.op.unary.f32(i32 6, float %3022)  ; FAbs(value)
  %3024 = call float @dx.op.unary.f32(i32 6, float %3019)  ; FAbs(value)
  %3025 = call float @dx.op.unary.f32(i32 27, float %3024)  ; Round_ni(value)
  %3026 = fadd fast float %3023, %3021
  %3027 = fadd fast float %3026, %3025
  %3028 = fcmp fast oeq float %3027, 0.000000e+00
  %3029 = call float @dx.op.dot4.f32(i32 56, float %3001, float %3002, float %3003, float %3004, float %2868, float %2869, float %2870, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3030 = call float @dx.op.dot4.f32(i32 56, float %3008, float %3009, float %3010, float %3011, float %2868, float %2869, float %2870, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3031 = call float @dx.op.dot4.f32(i32 56, float %3001, float %3002, float %3003, float %3004, float %2871, float %2872, float %2873, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3032 = call float @dx.op.dot4.f32(i32 56, float %3008, float %3009, float %3010, float %3011, float %2871, float %2872, float %2873, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3033 = fsub fast float %3029, %3005
  %3034 = fsub fast float %3031, %3005
  %3035 = fsub fast float %3030, %3012
  %3036 = fsub fast float %3032, %3012
  %3037 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3040 = fadd fast float %3039, %3037
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3043 = fcmp fast ogt float %3041, %3042
  %3044 = and i1 %3028, %3043
  br i1 %3044, label %3065, label %3045

; <label>:3045                                    ; preds = %3330, %3148, %3065, %2924
  %3046 = phi float [ %2926, %3065 ], [ %3151, %3148 ], [ %3151, %3330 ], [ %2926, %2924 ]
  %3047 = phi float [ %2927, %3065 ], [ %2927, %3148 ], [ %3305, %3330 ], [ %2927, %2924 ]
  %3048 = phi float [ %2928, %3065 ], [ %2928, %3148 ], [ %3303, %3330 ], [ %2928, %2924 ]
  %3049 = phi float [ %2929, %3065 ], [ %2929, %3148 ], [ %3275, %3330 ], [ %2929, %2924 ]
  %3050 = phi float [ %2930, %3065 ], [ %2930, %3148 ], [ %3273, %3330 ], [ %2930, %2924 ]
  %3051 = phi float [ %2931, %3065 ], [ %2931, %3148 ], [ %3340, %3330 ], [ %2931, %2924 ]
  %3052 = phi float [ %2932, %3065 ], [ %2932, %3148 ], [ %3341, %3330 ], [ %2932, %2924 ]
  %3053 = phi float [ %2933, %3065 ], [ %2933, %3148 ], [ %3342, %3330 ], [ %2933, %2924 ]
  %3054 = phi float [ %2934, %3065 ], [ %2934, %3148 ], [ %3254, %3330 ], [ %2934, %2924 ]
  %3055 = phi float [ %2935, %3065 ], [ %2935, %3148 ], [ %3255, %3330 ], [ %2935, %2924 ]
  %3056 = phi float [ %2936, %3065 ], [ %2936, %3148 ], [ %3256, %3330 ], [ %2936, %2924 ]
  %3057 = phi float [ %2937, %3065 ], [ %2937, %3148 ], [ %3283, %3330 ], [ %2937, %2924 ]
  %3058 = phi float [ %2938, %3065 ], [ %2938, %3148 ], [ %3280, %3330 ], [ %2938, %2924 ]
  %3059 = phi float [ %2939, %3065 ], [ %2939, %3148 ], [ %3277, %3330 ], [ %2939, %2924 ]
  %3060 = phi float [ %2940, %3065 ], [ %2940, %3148 ], [ %3271, %3330 ], [ %2940, %2924 ]
  %3061 = phi float [ %2941, %3065 ], [ %2941, %3148 ], [ %3266, %3330 ], [ %2941, %2924 ]
  %3062 = phi float [ %2942, %3065 ], [ %2942, %3148 ], [ %3267, %3330 ], [ %2942, %2924 ]
  %3063 = phi float [ %2943, %3065 ], [ %2943, %3148 ], [ %3268, %3330 ], [ %2943, %2924 ]
  %3064 = icmp eq i32 %2947, 0
  br i1 %3064, label %3343, label %2924

; <label>:3065                                    ; preds = %2924
  %3066 = extractvalue %dx.types.ResRet.f32 %2951, 3
  %3067 = extractvalue %dx.types.ResRet.f32 %2970, 3
  %3068 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %3072 = extractvalue %dx.types.ResRet.i32 %2956, 3
  %3073 = extractvalue %dx.types.ResRet.i32 %2956, 2
  %3074 = bitcast float %3066 to i32
  %3075 = add i32 %3072, 0
  %3076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3075, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3076, %dx.types.Handle %3077, float %3005, float %3012, float undef, float undef, i32 0, i32 0, i32 undef, float %3033, float %3035, float undef, float %3034, float %3036, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = fmul fast float %3079, %3071
  %3081 = fadd fast float %3080, %3070
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = fmul fast float %3005, %2965
  %3084 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %3012, float %3083)  ; FMad(a,b,c)
  %3085 = fadd fast float %3084, %3069
  %3086 = fmul fast float %3005, %2967
  %3087 = call float @dx.op.tertiary.f32(i32 46, float %2968, float %3012, float %3086)  ; FMad(a,b,c)
  %3088 = fadd fast float %3087, %3068
  %3089 = fmul fast float %3033, %2965
  %3090 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %3035, float %3089)  ; FMad(a,b,c)
  %3091 = fmul fast float %3033, %2967
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %2968, float %3035, float %3091)  ; FMad(a,b,c)
  %3093 = fmul fast float %3034, %2965
  %3094 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %3036, float %3093)  ; FMad(a,b,c)
  %3095 = fmul fast float %3034, %2967
  %3096 = call float @dx.op.tertiary.f32(i32 46, float %2968, float %3036, float %3095)  ; FMad(a,b,c)
  %3097 = add i32 %3073, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3098, %dx.types.Handle %3077, float %3085, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float %3090, float %3092, float undef, float %3094, float %3096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = and i32 %3074, 1024
  %3102 = icmp ne i32 %3101, 0
  %3103 = fcmp fast ogt float %3100, 0x3FE0101020000000
  %3104 = uitofp i1 %3103 to float
  %3105 = select i1 %3102, float %3104, float %3100
  %3106 = and i32 %3074, 8192
  %3107 = icmp ne i32 %3106, 0
  %3108 = select i1 %3107, float %3067, float 1.000000e+00
  %3109 = fmul fast float %3005, 2.000000e+00
  %3110 = fadd fast float %3109, -1.000000e+00
  %3111 = call float @dx.op.unary.f32(i32 6, float %3110)  ; FAbs(value)
  %3112 = fmul fast float %3111, %2998
  %3113 = fsub fast float %3112, %2998
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3115 = fmul fast float %3012, 2.000000e+00
  %3116 = fadd fast float %3115, -1.000000e+00
  %3117 = call float @dx.op.unary.f32(i32 6, float %3116)  ; FAbs(value)
  %3118 = fmul fast float %3117, %2999
  %3119 = fsub fast float %3118, %2999
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3121 = fmul fast float %3024, %2961
  %3122 = fsub fast float %3121, %2961
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3124 = fmul fast float %3082, %3108
  %3125 = fmul fast float %3124, %3079
  %3126 = fmul fast float %3125, %3114
  %3127 = fmul fast float %3126, %3105
  %3128 = fmul fast float %3127, %3120
  %3129 = fmul fast float %3128, %3123
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3133 = fsub fast float %3041, %3132
  %3134 = fmul fast float %3133, %3131
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  %3136 = fmul fast float %3129, %2962
  %3137 = fadd fast float %3129, %2962
  %3138 = fmul fast float %3137, %2971
  %3139 = fsub fast float %3138, %2971
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = and i32 %3074, 128
  %3142 = icmp ne i32 %3141, 0
  %3143 = select i1 %3142, float %3140, float %3136
  %3144 = fmul fast float %3143, %3135
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = fcmp fast ugt float %3144, %3146
  br i1 %3147, label %3148, label %3045

; <label>:3148                                    ; preds = %3065
  %3149 = select i1 %3107, float %3144, float 0.000000e+00
  %3150 = fadd fast float %3149, %2926
  %3151 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  br i1 %3107, label %3045, label %3152

; <label>:3152                                    ; preds = %3148
  %3153 = and i32 %3074, 4
  %3154 = and i32 %3074, 8
  %3155 = add i32 %2957, 0
  %3156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3156, %dx.types.Handle %3157, float %3085, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float %3090, float %3092, float undef, float %3094, float %3096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  %3161 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3162 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3163 = bitcast float %2983 to i32
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = lshr i32 %3163, 8
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3162, %3165
  %3170 = fadd fast float %3169, %3168
  %3171 = fmul fast float %3170, 0x3F70101000000000
  %3172 = add i32 %2958, 0
  %3173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3172, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3174 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3173, %dx.types.Handle %3157, float %3085, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float %3090, float %3092, float undef, float %3094, float %3096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.ResRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.ResRet.f32 %3174, 2
  %3178 = extractvalue %dx.types.ResRet.f32 %3174, 3
  %3179 = bitcast float %2977 to i32
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = lshr i32 %3179, 8
  %3183 = and i32 %3182, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = lshr i32 %3179, 16
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101000000000
  %3189 = fmul fast float %3175, %3181
  %3190 = fadd fast float %3189, %3184
  %3191 = fmul fast float %3190, 0x3F70101000000000
  %3192 = fadd fast float %3176, -5.000000e-01
  %3193 = fadd fast float %3178, -5.000000e-01
  %3194 = fmul fast float %3192, %3188
  %3195 = fmul fast float %3193, %3188
  %3196 = fadd fast float %3194, 5.000000e-01
  %3197 = fadd fast float %3195, 5.000000e-01
  %3198 = fmul fast float %3159, %2986
  %3199 = fmul fast float %3160, %2987
  %3200 = fmul fast float %3161, %2988
  %3201 = fmul fast float %3196, 2.000000e+00
  %3202 = fadd fast float %3201, -1.000000e+00
  %3203 = fmul fast float %3197, 2.000000e+00
  %3204 = fadd fast float %3203, -1.000000e+00
  %3205 = fadd fast float %3202, %3204
  %3206 = fmul fast float %3205, 5.000000e-01
  %3207 = fsub fast float %3202, %3204
  %3208 = fmul fast float %3207, 5.000000e-01
  %3209 = call float @dx.op.unary.f32(i32 6, float %3206)  ; FAbs(value)
  %3210 = fsub fast float 1.000000e+00, %3209
  %3211 = call float @dx.op.unary.f32(i32 6, float %3208)  ; FAbs(value)
  %3212 = fsub fast float %3210, %3211
  %3213 = call float @dx.op.dot3.f32(i32 55, float %3206, float %3208, float %3212, float %3206, float %3208, float %3212)  ; Dot3(ax,ay,az,bx,by,bz)
  %3214 = call float @dx.op.unary.f32(i32 25, float %3213)  ; Rsqrt(value)
  %3215 = fmul fast float %3206, %3214
  %3216 = fmul fast float %3208, %3214
  %3217 = fmul fast float %3214, %3212
  %3218 = fmul fast float %3217, %2952
  %3219 = fmul fast float %3217, %2953
  %3220 = fmul fast float %3217, %2954
  %3221 = fmul fast float %3215, %2974
  %3222 = fmul fast float %3215, %2975
  %3223 = fmul fast float %3215, %2976
  %3224 = fadd fast float %3221, %3218
  %3225 = fadd fast float %3222, %3219
  %3226 = fadd fast float %3223, %3220
  %3227 = fmul fast float %3216, %2980
  %3228 = fmul fast float %3216, %2981
  %3229 = fmul fast float %3216, %2982
  %3230 = fadd fast float %3224, %3227
  %3231 = fadd fast float %3225, %3228
  %3232 = fadd fast float %3226, %3229
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3230, float %3231, float %3232, float %3230, float %3231, float %3232)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = call float @dx.op.unary.f32(i32 25, float %3233)  ; Rsqrt(value)
  %3235 = fmul fast float %3230, %3234
  %3236 = fmul fast float %3231, %3234
  %3237 = fmul fast float %3232, %3234
  %3238 = icmp ne i32 %3154, 0
  %3239 = select i1 %3238, float 1.000000e+00, float 0.000000e+00
  %3240 = fmul fast float %3144, %3239
  %3241 = and i32 %3074, 1
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3243, label %3247

; <label>:3243                                    ; preds = %3152
  %3244 = fsub fast float %3235, %2934
  %3245 = fsub fast float %3236, %2935
  %3246 = fsub fast float %3237, %2936
  br label %3247

; <label>:3247                                    ; preds = %3243, %3152
  %3248 = phi float [ %3244, %3243 ], [ %3235, %3152 ]
  %3249 = phi float [ %3245, %3243 ], [ %3236, %3152 ]
  %3250 = phi float [ %3246, %3243 ], [ %3237, %3152 ]
  %3251 = fmul float %3250, %3240
  %3252 = fmul float %3249, %3240
  %3253 = fmul float %3248, %3240
  %3254 = fadd fast float %3253, %2934
  %3255 = fadd fast float %3252, %2935
  %3256 = fadd fast float %3251, %2936
  %3257 = icmp ne i32 %3153, 0
  %3258 = select i1 %3257, float 1.000000e+00, float 0.000000e+00
  %3259 = fmul fast float %3144, %3258
  %3260 = fsub fast float %3198, %2941
  %3261 = fsub fast float %3199, %2942
  %3262 = fsub fast float %3200, %2943
  %3263 = fmul fast float %3260, %3259
  %3264 = fmul fast float %3261, %3259
  %3265 = fmul fast float %3262, %3259
  %3266 = fadd fast float %3263, %2941
  %3267 = fadd fast float %3264, %2942
  %3268 = fadd fast float %3265, %2943
  %3269 = fsub fast float %3171, %2940
  %3270 = fmul fast float %3269, %3259
  %3271 = fadd fast float %3270, %2940
  %3272 = fmul fast float %3259, %2930
  %3273 = fsub fast float %2930, %3272
  %3274 = fmul fast float %3259, %2929
  %3275 = fsub fast float %2929, %3274
  %3276 = fadd fast float %3144, %2939
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3278 = fsub fast float %3191, %2938
  %3279 = fmul fast float %3278, %3240
  %3280 = fadd fast float %3279, %2938
  %3281 = fsub fast float %3177, %2937
  %3282 = fmul fast float %3281, %3240
  %3283 = fadd fast float %3282, %2937
  %3284 = call float @dx.op.dot3.f32(i32 55, float %3198, float %3199, float %3200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.CBufRet.f32 %3285, 1
  %3288 = fmul fast float %3287, %3284
  %3289 = fadd fast float %3288, %3286
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = bitcast float %2989 to i32
  %3292 = and i32 %3291, 65535
  %3293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3292)  ; LegacyF16ToF32(value)
  %3294 = lshr i32 %3291, 16
  %3295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3294)  ; LegacyF16ToF32(value)
  %3296 = fcmp fast oge float %3293, 0.000000e+00
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 0
  %3299 = select i1 %3296, float %3293, float %3298
  %3300 = fadd fast float %3299, %3295
  %3301 = fsub fast float %3290, %2928
  %3302 = fmul fast float %3301, %3144
  %3303 = fadd fast float %3302, %2928
  %3304 = fmul fast float %3300, %3144
  %3305 = call float @dx.op.binary.f32(i32 35, float %2927, float %3304)  ; FMax(a,b)
  %3306 = and i32 %3074, 16
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3330, label %3308

; <label>:3308                                    ; preds = %3247
  %3309 = bitcast float %2995 to i32
  %3310 = add i32 %2992, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3311, %dx.types.Handle %3157, float %3085, float %3088, float undef, float undef, i32 0, i32 0, i32 undef, float %3090, float %3092, float undef, float %3094, float %3096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = and i32 %3309, 65535
  %3317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3316)  ; LegacyF16ToF32(value)
  %3318 = fmul fast float %3313, %2986
  %3319 = fmul fast float %3314, %2987
  %3320 = fmul fast float %3315, %2988
  %3321 = and i32 %3074, 16384
  %3322 = icmp ne i32 %3321, 0
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = select i1 %3322, float %3324, float 1.000000e+00
  %3326 = fmul fast float %3325, %3317
  %3327 = fmul fast float %3318, %3326
  %3328 = fmul fast float %3319, %3326
  %3329 = fmul fast float %3320, %3326
  br label %3330

; <label>:3330                                    ; preds = %3308, %3247
  %3331 = phi float [ %3327, %3308 ], [ 0.000000e+00, %3247 ]
  %3332 = phi float [ %3328, %3308 ], [ 0.000000e+00, %3247 ]
  %3333 = phi float [ %3329, %3308 ], [ 0.000000e+00, %3247 ]
  %3334 = fsub fast float %3331, %2931
  %3335 = fsub fast float %3332, %2932
  %3336 = fsub fast float %3333, %2933
  %3337 = fmul fast float %3334, %3144
  %3338 = fmul fast float %3335, %3144
  %3339 = fmul fast float %3336, %3144
  %3340 = fadd fast float %3337, %2931
  %3341 = fadd fast float %3338, %2932
  %3342 = fadd fast float %3339, %2933
  br label %3045

; <label>:3343                                    ; preds = %3045
  br label %3344

; <label>:3344                                    ; preds = %3343, %2861
  %3345 = phi float [ 0.000000e+00, %2861 ], [ %3046, %3343 ]
  %3346 = phi float [ %2824, %2861 ], [ %3047, %3343 ]
  %3347 = phi float [ %2822, %2861 ], [ %3048, %3343 ]
  %3348 = phi float [ 0.000000e+00, %2861 ], [ %3049, %3343 ]
  %3349 = phi float [ 0.000000e+00, %2861 ], [ %3050, %3343 ]
  %3350 = phi float [ %2817, %2861 ], [ %3051, %3343 ]
  %3351 = phi float [ %2818, %2861 ], [ %3052, %3343 ]
  %3352 = phi float [ %2819, %2861 ], [ %3053, %3343 ]
  %3353 = phi float [ %2857, %2861 ], [ %3054, %3343 ]
  %3354 = phi float [ %2858, %2861 ], [ %3055, %3343 ]
  %3355 = phi float [ %2859, %2861 ], [ %3056, %3343 ]
  %3356 = phi float [ %2821, %2861 ], [ %3057, %3343 ]
  %3357 = phi float [ %2820, %2861 ], [ %3058, %3343 ]
  %3358 = phi float [ 0.000000e+00, %2861 ], [ %3059, %3343 ]
  %3359 = phi float [ 0x3FA23C0BE0000000, %2861 ], [ %3060, %3343 ]
  %3360 = phi float [ %2829, %2861 ], [ %3061, %3343 ]
  %3361 = phi float [ %2830, %2861 ], [ %3062, %3343 ]
  %3362 = phi float [ %2831, %2861 ], [ %3063, %3343 ]
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3353, float %3354, float %3355, float %3353, float %3354, float %3355)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = call float @dx.op.unary.f32(i32 25, float %3363)  ; Rsqrt(value)
  %3365 = fmul fast float %3364, %3353
  %3366 = fmul fast float %3364, %3354
  %3367 = fmul fast float %3364, %3355
  %3368 = fadd fast float %3358, %893
  %3369 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3370 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3366, float %3367, float %3365, float %3366, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = call float @dx.op.unary.f32(i32 25, float %3370)  ; Rsqrt(value)
  %3372 = fmul fast float %3371, %3365
  %3373 = fmul fast float %3371, %3366
  %3374 = fmul fast float %3371, %3367
  br label %3375

; <label>:3375                                    ; preds = %3344, %2814
  %3376 = phi float [ %3372, %3344 ], [ %2857, %2814 ]
  %3377 = phi float [ %3373, %3344 ], [ %2858, %2814 ]
  %3378 = phi float [ %3374, %3344 ], [ %2859, %2814 ]
  %3379 = phi float [ %3360, %3344 ], [ %2829, %2814 ]
  %3380 = phi float [ %3361, %3344 ], [ %2830, %2814 ]
  %3381 = phi float [ %3362, %3344 ], [ %2831, %2814 ]
  %3382 = phi float [ %3350, %3344 ], [ %2817, %2814 ]
  %3383 = phi float [ %3351, %3344 ], [ %2818, %2814 ]
  %3384 = phi float [ %3352, %3344 ], [ %2819, %2814 ]
  %3385 = phi float [ %3359, %3344 ], [ 0x3FA23C0BE0000000, %2814 ]
  %3386 = phi float [ %3369, %3344 ], [ %893, %2814 ]
  %3387 = phi float [ %3357, %3344 ], [ %2820, %2814 ]
  %3388 = phi float [ %3356, %3344 ], [ %2821, %2814 ]
  %3389 = phi float [ %3349, %3344 ], [ 0.000000e+00, %2814 ]
  %3390 = phi float [ %3348, %3344 ], [ 0.000000e+00, %2814 ]
  %3391 = phi float [ %3345, %3344 ], [ 0.000000e+00, %2814 ]
  %3392 = phi float [ %3346, %3344 ], [ %2824, %2814 ]
  %3393 = phi float [ %3347, %3344 ], [ %2822, %2814 ]
  %3394 = fadd fast float %3385, 0xBFB99999A0000000
  %3395 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3396 = fmul fast float %3395, 0x3FF1C71C80000000
  %3397 = call float @dx.op.binary.f32(i32 36, float %3385, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3398 = fsub fast float 1.000000e+00, %3396
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = fmul fast float %3399, %3379
  %3401 = fmul fast float %3399, %3380
  %3402 = fmul fast float %3399, %3381
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3405 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3406 = fmul fast float %3396, %3379
  %3407 = fmul fast float %3396, %3380
  %3408 = fmul fast float %3396, %3381
  %3409 = fadd fast float %3406, %3397
  %3410 = fadd fast float %3407, %3397
  %3411 = fadd fast float %3408, %3397
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.i32 %3416, 3
  %3418 = and i32 %3417, 8
  %3419 = icmp ne i32 %3418, 0
  %3420 = call float @dx.op.binary.f32(i32 35, float %3403, float %3379)  ; FMax(a,b)
  %3421 = call float @dx.op.binary.f32(i32 35, float %3404, float %3379)  ; FMax(a,b)
  %3422 = call float @dx.op.binary.f32(i32 35, float %3405, float %3379)  ; FMax(a,b)
  %3423 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3404, float %3405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3424 = select i1 %203, float %3379, float %3403
  %3425 = select i1 %203, float %3423, float %3404
  %3426 = select i1 %203, float 1.000000e+00, float %3405
  %3427 = select i1 %3419, float %3420, float %3424
  %3428 = select i1 %3419, float %3421, float %3425
  %3429 = select i1 %3419, float %3422, float %3426
  %3430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3431 = extractvalue %dx.types.CBufRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.CBufRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.CBufRet.f32 %3430, 2
  %3434 = fadd fast float %3431, %164
  %3435 = fadd fast float %3432, %165
  %3436 = fadd fast float %3433, %166
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3440 = fsub fast float %3434, %3438
  %3441 = fsub fast float %3435, %3439
  %3442 = fmul fast float %3440, %3440
  %3443 = fmul fast float %3441, %3441
  %3444 = fadd fast float %3442, %3443
  %3445 = call float @dx.op.unary.f32(i32 24, float %3444)  ; Sqrt(value)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3447 = fcmp fast olt float %3445, %3446
  br i1 %3447, label %3448, label %3515

; <label>:3448                                    ; preds = %3375
  %3449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3450 = extractvalue %dx.types.CBufRet.f32 %3449, 0
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 0
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.CBufRet.f32 %3449, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3451, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3458 = extractvalue %dx.types.CBufRet.f32 %3449, 3
  %3459 = extractvalue %dx.types.CBufRet.f32 %3451, 3
  %3460 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3461 = fadd fast float %3458, %3434
  %3462 = fadd fast float %3459, %3435
  %3463 = fadd fast float %3460, %3436
  %3464 = fmul fast float %3461, %3450
  %3465 = call float @dx.op.tertiary.f32(i32 46, float %3462, float %3452, float %3464)  ; FMad(a,b,c)
  %3466 = call float @dx.op.tertiary.f32(i32 46, float %3463, float %3454, float %3465)  ; FMad(a,b,c)
  %3467 = fmul fast float %3461, %3455
  %3468 = call float @dx.op.tertiary.f32(i32 46, float %3462, float %3456, float %3467)  ; FMad(a,b,c)
  %3469 = call float @dx.op.tertiary.f32(i32 46, float %3463, float %3457, float %3468)  ; FMad(a,b,c)
  %3470 = fsub fast float %3466, %3458
  %3471 = fsub fast float %3469, %3459
  %3472 = fsub fast float %3470, %3438
  %3473 = fadd fast float %3472, %3446
  %3474 = fsub fast float %3471, %3439
  %3475 = fadd fast float %3474, %3446
  %3476 = extractvalue %dx.types.CBufRet.f32 %3437, 3
  %3477 = fmul fast float %3473, %3476
  %3478 = fmul fast float %3475, %3476
  %3479 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3480 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3481 = fsub fast float 1.000000e+00, %3479
  %3482 = fsub fast float 1.000000e+00, %3480
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = fcmp fast ugt float %3484, 0.000000e+00
  br i1 %3485, label %3486, label %3789

; <label>:3486                                    ; preds = %3448
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3489 = fmul fast float %3488, %3484
  %3490 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3491 = fadd fast float %3490, %3489
  %3492 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3493 = fadd fast float %3491, %3460
  %3494 = fmul fast float %3466, %3454
  %3495 = call float @dx.op.tertiary.f32(i32 46, float %3469, float %3457, float %3494)  ; FMad(a,b,c)
  %3496 = call float @dx.op.tertiary.f32(i32 46, float %3493, float %3492, float %3495)  ; FMad(a,b,c)
  %3497 = fsub fast float %3496, %3460
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 2
  %3500 = fsub fast float %3497, %3499
  %3501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = fadd fast float %3506, %3502
  %3510 = fmul fast float %3509, 0x3F847AE140000000
  %3511 = fadd fast float %3507, %3503
  %3512 = fmul fast float %3511, 0x3F847AE140000000
  %3513 = fadd fast float %3508, %3504
  %3514 = fmul fast float %3513, 0x3F847AE140000000
  br label %3789

; <label>:3515                                    ; preds = %3375
  %3516 = and i32 %182, 1
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3789, label %3518

; <label>:3518                                    ; preds = %3515
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3527 = extractvalue %dx.types.CBufRet.f32 %3523, 1
  %3528 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3529 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3530 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3531 = fadd fast float %3528, %3434
  %3532 = fadd fast float %3529, %3435
  %3533 = fadd fast float %3530, %3436
  %3534 = fmul fast float %3531, %3520
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3532, float %3522, float %3534)  ; FMad(a,b,c)
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3524, float %3535)  ; FMad(a,b,c)
  %3537 = fmul fast float %3531, %3525
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3532, float %3526, float %3537)  ; FMad(a,b,c)
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3527, float %3538)  ; FMad(a,b,c)
  %3540 = fsub fast float %3536, %3528
  %3541 = fsub fast float %3539, %3529
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3546 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 3
  %3549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.i32 %3549, 0
  %3551 = extractvalue %dx.types.CBufRet.i32 %3549, 1
  %3552 = udiv i32 %3551, %3550
  %3553 = fsub fast float %3540, %3543
  %3554 = fsub fast float %3541, %3544
  %3555 = call float @dx.op.binary.f32(i32 35, float %3553, float 0.000000e+00)  ; FMax(a,b)
  %3556 = call float @dx.op.binary.f32(i32 35, float %3554, float 0.000000e+00)  ; FMax(a,b)
  %3557 = call float @dx.op.binary.f32(i32 36, float %3555, float %3545)  ; FMin(a,b)
  %3558 = call float @dx.op.binary.f32(i32 36, float %3556, float %3546)  ; FMin(a,b)
  %3559 = add i32 %3550, -1
  %3560 = add i32 %3552, -1
  %3561 = fmul fast float %3557, %3548
  %3562 = fmul fast float %3558, %3548
  %3563 = fptoui float %3561 to i32
  %3564 = fptoui float %3562 to i32
  %3565 = call i32 @dx.op.binary.i32(i32 40, i32 %3563, i32 %3559)  ; UMin(a,b)
  %3566 = call i32 @dx.op.binary.i32(i32 40, i32 %3564, i32 %3560)  ; UMin(a,b)
  %3567 = mul i32 %3566, %3550
  %3568 = add i32 %3567, %3565
  %3569 = shl i32 %3568, 2
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = icmp eq i32 %3571, -1
  br i1 %3572, label %3789, label %3573

; <label>:3573                                    ; preds = %3518
  %3574 = mul i32 %3571, 148
  %3575 = add i32 %3574, 4
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = add i32 %3574, 8
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = add i32 %3574, 36
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = add i32 %3574, 60
  %3585 = add i32 %3574, 92
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = add i32 %3574, 116
  %3589 = fsub fast float %3540, %3577
  %3590 = fsub fast float %3541, %3580
  %3591 = fmul fast float %3548, %3589
  %3592 = fmul fast float %3548, %3590
  %3593 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3594 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3595 = fsub fast float 1.000000e+00, %3594
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3598 = call float @dx.op.unary.f32(i32 83, float %3593)  ; DerivCoarseX(value)
  %3599 = call float @dx.op.unary.f32(i32 83, float %3595)  ; DerivCoarseX(value)
  %3600 = call float @dx.op.unary.f32(i32 84, float %3593)  ; DerivCoarseY(value)
  %3601 = call float @dx.op.unary.f32(i32 84, float %3595)  ; DerivCoarseY(value)
  %3602 = fmul fast float %3598, %3597
  %3603 = fmul fast float %3599, %3597
  %3604 = fmul fast float %3600, %3597
  %3605 = fmul fast float %3601, %3597
  %3606 = call float @dx.op.dot2.f32(i32 54, float %3604, float %3605, float %3604, float %3605)  ; Dot2(ax,ay,bx,by)
  %3607 = call float @dx.op.dot2.f32(i32 54, float %3602, float %3603, float %3602, float %3603)  ; Dot2(ax,ay,bx,by)
  %3608 = call float @dx.op.binary.f32(i32 35, float %3607, float %3606)  ; FMax(a,b)
  %3609 = call float @dx.op.unary.f32(i32 23, float %3608)  ; Log(value)
  %3610 = fmul fast float %3609, 5.000000e-01
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3613 = fadd fast float %3612, %3610
  %3614 = call float @dx.op.binary.f32(i32 35, float %3613, float 0.000000e+00)  ; FMax(a,b)
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3617 = fadd fast float %3616, %3614
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 3
  %3620 = fadd fast float %3617, %3619
  %3621 = add i32 %3587, 0
  %3622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3621, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3623 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3622, i32 0)  ; GetDimensions(handle,mipLevel)
  %3624 = extractvalue %dx.types.Dimensions %3623, 0
  %3625 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3624)  ; FirstbitLo(value)
  %3626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.i32 %3626, 1
  %3628 = sub nsw i32 %3627, %3625
  %3629 = sitofp i32 %3628 to float
  %3630 = fsub fast float %3620, %3629
  %3631 = call float @dx.op.binary.f32(i32 35, float %3630, float 0.000000e+00)  ; FMax(a,b)
  %3632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3622, %dx.types.Handle %28, float %3593, float %3595, float %3583, float undef, i32 0, i32 0, i32 undef, float %3631)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = fcmp ule float %3633, 0x3FE0101020000000
  %3635 = extractvalue %dx.types.CBufRet.i32 %3626, 0
  %3636 = and i32 %3635, 128
  %3637 = icmp ne i32 %3636, 0
  %3638 = and i1 %3634, %3637
  br i1 %3638, label %3789, label %3639

; <label>:3639                                    ; preds = %3573
  %3640 = add i32 %3574, 20
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = add i32 %3574, 24
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = add i32 %3574, 40
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = add i32 %3574, 96
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3654 = fmul fast float %3653, %3593
  %3655 = fmul fast float %3653, %3595
  %3656 = extractvalue %dx.types.CBufRet.f32 %3652, 3
  %3657 = fadd fast float %3654, %3656
  %3658 = fadd fast float %3655, %3656
  %3659 = add i32 %3651, 0
  %3660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3659, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3661 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3660, i32 0)  ; GetDimensions(handle,mipLevel)
  %3662 = extractvalue %dx.types.Dimensions %3661, 0
  %3663 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3662)  ; FirstbitLo(value)
  %3664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.i32 %3664, 1
  %3666 = sub nsw i32 %3665, %3663
  %3667 = sitofp i32 %3666 to float
  %3668 = fsub fast float %3617, %3667
  %3669 = call float @dx.op.binary.f32(i32 35, float %3668, float 0.000000e+00)  ; FMax(a,b)
  %3670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3660, %dx.types.Handle %28, float %3657, float %3658, float %3648, float undef, i32 0, i32 0, i32 undef, float %3669)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = fmul fast float %3671, %3642
  %3673 = fadd fast float %3672, %3645
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.CBufRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 3
  %3682 = extractvalue %dx.types.CBufRet.f32 %3674, 3
  %3683 = fadd fast float %3679, %3540
  %3684 = fadd fast float %3681, %3541
  %3685 = fadd fast float %3673, %3682
  %3686 = fmul fast float %3683, %3675
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3684, float %3676, float %3686)  ; FMad(a,b,c)
  %3688 = call float @dx.op.tertiary.f32(i32 46, float %3685, float %3677, float %3687)  ; FMad(a,b,c)
  %3689 = fsub fast float %3688, %3682
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3692 = fsub fast float %3689, %3691
  %3693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.i32 %3693, 0
  %3695 = call i32 @dx.op.binary.i32(i32 40, i32 %3571, i32 %3694)  ; UMin(a,b)
  %3696 = mul i32 %3695, 36
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = add i32 %3696, 4
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3702 = fmul fast float %3701, %3593
  %3703 = fmul fast float %3701, %3595
  %3704 = extractvalue %dx.types.CBufRet.f32 %3700, 1
  %3705 = fadd fast float %3702, %3704
  %3706 = fadd fast float %3703, %3704
  %3707 = icmp eq i32 %3698, 0
  br i1 %3707, label %3776, label %3708

; <label>:3708                                    ; preds = %3639
  br label %3709

; <label>:3709                                    ; preds = %3766, %3708
  %3710 = phi float [ %3767, %3766 ], [ 0.000000e+00, %3708 ]
  %3711 = phi float [ %3768, %3766 ], [ 0.000000e+00, %3708 ]
  %3712 = phi float [ %3769, %3766 ], [ 0.000000e+00, %3708 ]
  %3713 = phi float [ %3770, %3766 ], [ 0.000000e+00, %3708 ]
  %3714 = phi float [ %3771, %3766 ], [ 0.000000e+00, %3708 ]
  %3715 = phi float [ %3772, %3766 ], [ 0.000000e+00, %3708 ]
  %3716 = phi i32 [ %3773, %3766 ], [ 0, %3708 ]
  %3717 = shl i32 %3716, 2
  %3718 = add i32 %3584, %3717
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = add i32 %3588, %3717
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = add i32 %3723, 0
  %3725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3724, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3726 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3725, i32 0)  ; GetDimensions(handle,mipLevel)
  %3727 = extractvalue %dx.types.Dimensions %3726, 0
  %3728 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3727)  ; FirstbitLo(value)
  %3729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.i32 %3729, 1
  %3731 = sub nsw i32 %3730, %3728
  %3732 = sitofp i32 %3731 to float
  %3733 = fsub fast float %3617, %3732
  %3734 = call float @dx.op.binary.f32(i32 35, float %3733, float 0.000000e+00)  ; FMax(a,b)
  %3735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3725, %dx.types.Handle %28, float %3705, float %3706, float %3720, float undef, i32 0, i32 0, i32 undef, float %3734)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = fcmp fast ogt float %3736, 0.000000e+00
  br i1 %3737, label %3738, label %3766

; <label>:3738                                    ; preds = %3709
  %3739 = add i32 %3699, %3717
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 32767
  %3743 = mul nuw nsw i32 %3742, 928
  %3744 = add nuw nsw i32 %3743, 48
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3745, 2
  %3749 = add nuw nsw i32 %3743, 60
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = fmul fast float %3746, %3736
  %3755 = fmul fast float %3747, %3736
  %3756 = fmul fast float %3748, %3736
  %3757 = fadd fast float %3754, %3710
  %3758 = fadd fast float %3755, %3711
  %3759 = fadd fast float %3756, %3712
  %3760 = fmul fast float %3751, %3736
  %3761 = fmul fast float %3752, %3736
  %3762 = fmul fast float %3753, %3736
  %3763 = fadd fast float %3760, %3713
  %3764 = fadd fast float %3761, %3714
  %3765 = fadd fast float %3762, %3715
  br label %3766

; <label>:3766                                    ; preds = %3738, %3709
  %3767 = phi float [ %3757, %3738 ], [ %3710, %3709 ]
  %3768 = phi float [ %3758, %3738 ], [ %3711, %3709 ]
  %3769 = phi float [ %3759, %3738 ], [ %3712, %3709 ]
  %3770 = phi float [ %3763, %3738 ], [ %3713, %3709 ]
  %3771 = phi float [ %3764, %3738 ], [ %3714, %3709 ]
  %3772 = phi float [ %3765, %3738 ], [ %3715, %3709 ]
  %3773 = add nuw i32 %3716, 1
  %3774 = icmp eq i32 %3773, %3698
  br i1 %3774, label %3775, label %3709

; <label>:3775                                    ; preds = %3766
  br label %3776

; <label>:3776                                    ; preds = %3775, %3639
  %3777 = phi float [ 0.000000e+00, %3639 ], [ %3767, %3775 ]
  %3778 = phi float [ 0.000000e+00, %3639 ], [ %3768, %3775 ]
  %3779 = phi float [ 0.000000e+00, %3639 ], [ %3769, %3775 ]
  %3780 = phi float [ 0.000000e+00, %3639 ], [ %3770, %3775 ]
  %3781 = phi float [ 0.000000e+00, %3639 ], [ %3771, %3775 ]
  %3782 = phi float [ 0.000000e+00, %3639 ], [ %3772, %3775 ]
  %3783 = fadd fast float %3780, %3777
  %3784 = fmul fast float %3783, 0x3F847AE140000000
  %3785 = fadd fast float %3781, %3778
  %3786 = fmul fast float %3785, 0x3F847AE140000000
  %3787 = fadd fast float %3782, %3779
  %3788 = fmul fast float %3787, 0x3F847AE140000000
  br label %3789

; <label>:3789                                    ; preds = %3776, %3573, %3518, %3515, %3486, %3448
  %3790 = phi float [ %3500, %3486 ], [ -1.310720e+05, %3448 ], [ %3692, %3776 ], [ -1.310720e+05, %3518 ], [ -1.310720e+05, %3573 ], [ -1.310720e+05, %3515 ]
  %3791 = phi float [ %3510, %3486 ], [ 0.000000e+00, %3448 ], [ %3784, %3776 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3573 ], [ 0.000000e+00, %3515 ]
  %3792 = phi float [ %3512, %3486 ], [ 0.000000e+00, %3448 ], [ %3786, %3776 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3573 ], [ 0.000000e+00, %3515 ]
  %3793 = phi float [ %3514, %3486 ], [ 0.000000e+00, %3448 ], [ %3788, %3776 ], [ 0.000000e+00, %3518 ], [ 0.000000e+00, %3573 ], [ 0.000000e+00, %3515 ]
  %3794 = phi i1 [ true, %3486 ], [ false, %3448 ], [ true, %3776 ], [ false, %3518 ], [ false, %3573 ], [ false, %3515 ]
  %3795 = and i32 %182, 3
  %3796 = icmp eq i32 %3795, 1
  %3797 = select i1 %3796, float 1.000000e+00, float 0.000000e+00
  %3798 = fsub fast float %3790, %166
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = select i1 %3794, float %3799, float 1.000000e+00
  %3801 = fmul fast float %3800, %3797
  %3802 = icmp eq i32 %3795, 3
  %3803 = select i1 %3802, float 1.000000e+00, float %3801
  %3804 = call float @dx.op.binary.f32(i32 35, float %3391, float %3803)  ; FMax(a,b)
  %3805 = fcmp fast olt float %3803, 1.000000e+00
  %3806 = fcmp uge float %48, 0.000000e+00
  %3807 = and i1 %3806, %3805
  br i1 %3807, label %3808, label %3818

; <label>:3808                                    ; preds = %3789
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %28, float %48, float %49, float %50, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = fadd fast float %3810, %3804
  %3814 = fcmp ule float %47, 0.000000e+00
  %3815 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3816 = select i1 %3814, float %3815, float 1.000000e+00
  %3817 = fmul fast float %3816, %3812
  br label %3818

; <label>:3818                                    ; preds = %3808, %3789
  %3819 = phi float [ %3813, %3808 ], [ %3804, %3789 ]
  %3820 = phi float [ %3811, %3808 ], [ 0.000000e+00, %3789 ]
  %3821 = phi float [ %3817, %3808 ], [ 0.000000e+00, %3789 ]
  %3822 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = fcmp fast une float %3823, 0.000000e+00
  %3826 = fcmp fast une float %3824, 0.000000e+00
  %3827 = or i1 %3825, %3826
  br i1 %3827, label %3828, label %4387

; <label>:3828                                    ; preds = %3818
  br i1 %3825, label %3829, label %4102

; <label>:3829                                    ; preds = %3828
  %3830 = call float @dx.op.unary.f32(i32 23, float %3388)  ; Log(value)
  %3831 = fmul fast float %3830, 4.000000e+00
  %3832 = call float @dx.op.unary.f32(i32 21, float %3831)  ; Exp(value)
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = fmul fast float %3834, %35
  %3836 = fmul fast float %3834, %36
  %3837 = fmul fast float %3834, %37
  %3838 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %3839 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %3840 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %3841 = call float @dx.op.unary.f32(i32 23, float %3838)  ; Log(value)
  %3842 = call float @dx.op.unary.f32(i32 23, float %3839)  ; Log(value)
  %3843 = call float @dx.op.unary.f32(i32 23, float %3840)  ; Log(value)
  %3844 = fmul fast float %3841, 4.000000e+00
  %3845 = fmul fast float %3842, 4.000000e+00
  %3846 = fmul fast float %3843, 4.000000e+00
  %3847 = call float @dx.op.unary.f32(i32 21, float %3844)  ; Exp(value)
  %3848 = call float @dx.op.unary.f32(i32 21, float %3845)  ; Exp(value)
  %3849 = call float @dx.op.unary.f32(i32 21, float %3846)  ; Exp(value)
  %3850 = fadd fast float %3848, %3847
  %3851 = fadd fast float %3850, %3849
  %3852 = fdiv fast float 1.000000e+00, %3851
  %3853 = fmul fast float %3852, %3847
  %3854 = fcmp fast ogt float %44, 0.000000e+00
  %3855 = fcmp fast ogt float %45, 0.000000e+00
  %3856 = fcmp fast ogt float %46, 0.000000e+00
  %3857 = fcmp fast olt float %44, 0.000000e+00
  %3858 = fcmp fast olt float %45, 0.000000e+00
  %3859 = fcmp fast olt float %46, 0.000000e+00
  %3860 = zext i1 %3854 to i32
  %3861 = zext i1 %3855 to i32
  %3862 = zext i1 %3856 to i32
  %3863 = zext i1 %3857 to i32
  %3864 = zext i1 %3858 to i32
  %3865 = zext i1 %3859 to i32
  %3866 = sub nsw i32 %3860, %3863
  %3867 = sub nsw i32 %3861, %3864
  %3868 = sub nsw i32 %3862, %3865
  %3869 = call float @dx.op.unary.f32(i32 83, float %3835)  ; DerivCoarseX(value)
  %3870 = call float @dx.op.unary.f32(i32 83, float %3836)  ; DerivCoarseX(value)
  %3871 = call float @dx.op.unary.f32(i32 83, float %3837)  ; DerivCoarseX(value)
  %3872 = call float @dx.op.unary.f32(i32 84, float %3835)  ; DerivCoarseY(value)
  %3873 = call float @dx.op.unary.f32(i32 84, float %3836)  ; DerivCoarseY(value)
  %3874 = call float @dx.op.unary.f32(i32 84, float %3837)  ; DerivCoarseY(value)
  %3875 = fcmp fast ole float %214, %3853
  %3876 = fmul fast float %3852, %3850
  %3877 = fcmp fast ole float %214, %3876
  %3878 = select i1 %3877, float %3837, float %3835
  %3879 = select i1 %3877, float %3835, float %3836
  %3880 = select i1 %3875, float %3836, float %3878
  %3881 = select i1 %3875, float %3837, float %3879
  %3882 = select i1 %3877, float %3871, float %3869
  %3883 = select i1 %3877, float %3869, float %3870
  %3884 = select i1 %3875, float %3870, float %3882
  %3885 = select i1 %3875, float %3871, float %3883
  %3886 = select i1 %3877, float %3874, float %3872
  %3887 = select i1 %3877, float %3872, float %3873
  %3888 = select i1 %3875, float %3873, float %3886
  %3889 = select i1 %3875, float %3874, float %3887
  %3890 = call float @dx.op.unary.f32(i32 27, float %3880)  ; Round_ni(value)
  %3891 = call float @dx.op.unary.f32(i32 27, float %3881)  ; Round_ni(value)
  %3892 = fptosi float %3890 to i32
  %3893 = fptosi float %3891 to i32
  %3894 = xor i32 %3893, %3892
  %3895 = sitofp i32 %3894 to float
  %3896 = fptosi float %3895 to i32
  %3897 = sitofp i32 %3896 to float
  %3898 = fmul fast float %3897, 0x3FE3C6EF40000000
  %3899 = frem fast float %3890, 2.560000e+02
  %3900 = frem fast float %3891, 2.560000e+02
  %3901 = fptoui float %3899 to i32
  %3902 = fptoui float %3900 to i32
  %3903 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3901, i32 %3902, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = fadd fast float %3904, %3898
  %3908 = fadd fast float %3905, %3898
  %3909 = fadd fast float %3906, %3898
  %3910 = call float @dx.op.unary.f32(i32 22, float %3907)  ; Frc(value)
  %3911 = call float @dx.op.unary.f32(i32 22, float %3908)  ; Frc(value)
  %3912 = call float @dx.op.unary.f32(i32 22, float %3909)  ; Frc(value)
  %3913 = fmul fast float %3912, 0x401921FB60000000
  %3914 = call float @dx.op.unary.f32(i32 13, float %3913)  ; Sin(value)
  %3915 = call float @dx.op.unary.f32(i32 12, float %3913)  ; Cos(value)
  %3916 = fsub fast float -0.000000e+00, %3915
  %3917 = fmul fast float %3915, %3880
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3914, float %3881, float %3917)  ; FMad(a,b,c)
  %3919 = fmul fast float %3914, %3880
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %3916, float %3881, float %3919)  ; FMad(a,b,c)
  %3921 = fadd fast float %3918, %3910
  %3922 = fadd fast float %3920, %3911
  %3923 = extractvalue %dx.types.CBufRet.f32 %3833, 3
  %3924 = bitcast float %3923 to i32
  %3925 = icmp eq i32 %3924, 0
  br i1 %3925, label %3964, label %3926

; <label>:3926                                    ; preds = %3829
  %3927 = add i32 %3924, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3928, %dx.types.Handle %74, float %3921, float %3922, float undef, float undef, i32 0, i32 0, i32 undef, float %3884, float %3885, float undef, float %3888, float %3889, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3934 = fsub fast float 1.000000e+00, %3823
  %3935 = call float @dx.op.binary.f32(i32 35, float %3934, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3936 = bitcast float %3823 to i32
  %3937 = sitofp i32 %3936 to float
  %3938 = fadd fast float %3937, 0xC1CFBF8940000000
  %3939 = fmul fast float %3933, %3938
  %3940 = fadd fast float %3939, 0x41CFBF8940000000
  %3941 = fptosi float %3940 to i32
  %3942 = bitcast i32 %3941 to float
  %3943 = bitcast float %3935 to i32
  %3944 = sitofp i32 %3943 to float
  %3945 = fadd fast float %3944, 0xC1CFBF8940000000
  %3946 = fmul fast float %3945, %3933
  %3947 = fadd fast float %3946, 0x41CFBF8940000000
  %3948 = fptosi float %3947 to i32
  %3949 = bitcast i32 %3948 to float
  %3950 = fmul fast float %3942, %3932
  %3951 = fmul fast float %3949, %3932
  %3952 = fsub fast float %3935, %3950
  %3953 = fadd fast float %3951, %3935
  %3954 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3955 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3956 = fsub fast float %3930, %3954
  %3957 = fsub fast float %3955, %3954
  %3958 = bitcast float %3957 to i32
  %3959 = sub nsw i32 2129859010, %3958
  %3960 = bitcast i32 %3959 to float
  %3961 = fmul fast float %3960, %3956
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fcmp fast olt float %3962, 0x3F70101020000000
  br i1 %3963, label %4102, label %3964

; <label>:3964                                    ; preds = %3926, %3829
  %3965 = phi float [ %3962, %3926 ], [ %3823, %3829 ]
  %3966 = fmul fast float %3965, %3832
  %3967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.i32 %3967, 1
  %3969 = extractvalue %dx.types.CBufRet.i32 %3967, 0
  %3970 = add i32 %3969, 0
  %3971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3971, %dx.types.Handle %73, float %3921, float %3922, float undef, float undef, i32 0, i32 0, i32 undef, float %3884, float %3885, float undef, float %3888, float %3889, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = extractvalue %dx.types.ResRet.f32 %3972, 3
  %3977 = and i32 %3968, 255
  %3978 = uitofp i32 %3977 to float
  %3979 = lshr i32 %3968, 8
  %3980 = and i32 %3979, 255
  %3981 = uitofp i32 %3980 to float
  %3982 = fmul fast float %3976, %3978
  %3983 = fadd fast float %3982, %3981
  %3984 = fmul fast float %3983, 0x3F70101000000000
  %3985 = fadd fast float %3984, 0xBFB99999A0000000
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3986, 0x3FF1C71C80000000
  %3988 = call float @dx.op.binary.f32(i32 36, float %3984, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3989 = fsub fast float 1.000000e+00, %3987
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fmul fast float %3990, %3973
  %3992 = fmul fast float %3990, %3974
  %3993 = fmul fast float %3990, %3975
  %3994 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3995 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3996 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3997 = fmul fast float %3987, %3973
  %3998 = fmul fast float %3987, %3974
  %3999 = fmul fast float %3987, %3975
  %4000 = fadd fast float %3997, %3988
  %4001 = fadd fast float %3998, %3988
  %4002 = fadd fast float %3999, %3988
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4005 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.i32 %4006, 3
  %4008 = extractvalue %dx.types.CBufRet.i32 %4006, 2
  %4009 = add i32 %4008, 0
  %4010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4010, %dx.types.Handle %73, float %3921, float %3922, float undef, float undef, i32 0, i32 0, i32 undef, float %3884, float %3885, float undef, float %3888, float %3889, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4011, 3
  %4016 = and i32 %4007, 255
  %4017 = uitofp i32 %4016 to float
  %4018 = lshr i32 %4007, 8
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = lshr i32 %4007, 16
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3F70101000000000
  %4025 = fmul fast float %4012, %4017
  %4026 = fadd fast float %4025, %4020
  %4027 = fmul fast float %4026, 0x3F70101000000000
  %4028 = fadd fast float %4013, -5.000000e-01
  %4029 = fadd fast float %4015, -5.000000e-01
  %4030 = fmul fast float %4028, %4024
  %4031 = fmul fast float %4029, %4024
  %4032 = fadd fast float %4030, 5.000000e-01
  %4033 = fadd fast float %4031, 5.000000e-01
  %4034 = fmul fast float %4032, 2.000000e+00
  %4035 = fadd fast float %4034, -1.000000e+00
  %4036 = fmul fast float %4033, 2.000000e+00
  %4037 = fadd fast float %4036, -1.000000e+00
  %4038 = fadd fast float %4035, %4037
  %4039 = fmul fast float %4038, 5.000000e-01
  %4040 = fsub fast float %4035, %4037
  %4041 = fmul fast float %4040, 5.000000e-01
  %4042 = call float @dx.op.unary.f32(i32 6, float %4039)  ; FAbs(value)
  %4043 = fsub fast float 1.000000e+00, %4042
  %4044 = call float @dx.op.unary.f32(i32 6, float %4041)  ; FAbs(value)
  %4045 = fsub fast float %4043, %4044
  %4046 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4041, float %4045, float %4039, float %4041, float %4045)  ; Dot3(ax,ay,az,bx,by,bz)
  %4047 = call float @dx.op.unary.f32(i32 25, float %4046)  ; Rsqrt(value)
  %4048 = fmul fast float %4039, %4047
  %4049 = fmul fast float %4041, %4047
  %4050 = select i1 %3877, i32 %3867, i32 %3868
  %4051 = select i1 %3875, i32 %3866, i32 %4050
  %4052 = sitofp i32 %4051 to float
  %4053 = fmul fast float %4045, %4052
  %4054 = fmul fast float %4053, %4047
  %4055 = select i1 %3877, float %4054, float %4049
  %4056 = select i1 %3877, float %4049, float %4054
  %4057 = select i1 %3875, float %4054, float %4048
  %4058 = select i1 %3875, float %4049, float %4055
  %4059 = select i1 %3875, float %4048, float %4056
  %4060 = fsub fast float %3994, %3427
  %4061 = fsub fast float %3995, %3428
  %4062 = fsub fast float %3996, %3429
  %4063 = fmul fast float %4060, %3966
  %4064 = fmul fast float %4061, %3966
  %4065 = fmul fast float %4062, %3966
  %4066 = fadd fast float %4063, %3427
  %4067 = fadd fast float %4064, %3428
  %4068 = fadd fast float %4065, %3429
  %4069 = fsub fast float %4003, %3412
  %4070 = fsub fast float %4004, %3413
  %4071 = fsub fast float %4005, %3414
  %4072 = fmul fast float %4069, %3966
  %4073 = fmul fast float %4070, %3966
  %4074 = fmul fast float %4071, %3966
  %4075 = fadd fast float %4072, %3412
  %4076 = fadd fast float %4073, %3413
  %4077 = fadd fast float %4074, %3414
  %4078 = fadd fast float %4057, %3376
  %4079 = fadd fast float %4058, %3377
  %4080 = fadd fast float %4059, %3378
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4079, float %4080, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 25, float %4081)  ; Rsqrt(value)
  %4083 = fmul fast float %4078, %4082
  %4084 = fmul fast float %4079, %4082
  %4085 = fmul fast float %4080, %4082
  %4086 = fsub fast float %4083, %3376
  %4087 = fsub fast float %4084, %3377
  %4088 = fsub fast float %4085, %3378
  %4089 = fmul fast float %4086, %3966
  %4090 = fmul fast float %4087, %3966
  %4091 = fmul fast float %4088, %3966
  %4092 = fadd fast float %4089, %3376
  %4093 = fadd fast float %4090, %3377
  %4094 = fadd fast float %4091, %3378
  %4095 = call float @dx.op.binary.f32(i32 36, float %3388, float %4014)  ; FMin(a,b)
  %4096 = fsub fast float %4095, %3388
  %4097 = fmul fast float %4096, %3966
  %4098 = fadd fast float %4097, %3388
  %4099 = fsub fast float %4027, %3415
  %4100 = fmul fast float %4099, %3966
  %4101 = fadd fast float %4100, %3415
  br label %4102

; <label>:4102                                    ; preds = %3964, %3926, %3828
  %4103 = phi float [ %4066, %3964 ], [ %3427, %3926 ], [ %3427, %3828 ]
  %4104 = phi float [ %4067, %3964 ], [ %3428, %3926 ], [ %3428, %3828 ]
  %4105 = phi float [ %4068, %3964 ], [ %3429, %3926 ], [ %3429, %3828 ]
  %4106 = phi float [ %4092, %3964 ], [ %3376, %3926 ], [ %3376, %3828 ]
  %4107 = phi float [ %4093, %3964 ], [ %3377, %3926 ], [ %3377, %3828 ]
  %4108 = phi float [ %4094, %3964 ], [ %3378, %3926 ], [ %3378, %3828 ]
  %4109 = phi float [ %4075, %3964 ], [ %3412, %3926 ], [ %3412, %3828 ]
  %4110 = phi float [ %4076, %3964 ], [ %3413, %3926 ], [ %3413, %3828 ]
  %4111 = phi float [ %4077, %3964 ], [ %3414, %3926 ], [ %3414, %3828 ]
  %4112 = phi float [ %4101, %3964 ], [ %3415, %3926 ], [ %3415, %3828 ]
  %4113 = phi float [ %4098, %3964 ], [ %3388, %3926 ], [ %3388, %3828 ]
  br i1 %3826, label %4114, label %4387

; <label>:4114                                    ; preds = %4102
  %4115 = call float @dx.op.unary.f32(i32 23, float %4113)  ; Log(value)
  %4116 = fmul fast float %4115, 4.000000e+00
  %4117 = call float @dx.op.unary.f32(i32 21, float %4116)  ; Exp(value)
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = fmul fast float %4119, %35
  %4121 = fmul fast float %4119, %36
  %4122 = fmul fast float %4119, %37
  %4123 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4124 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4125 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4126 = call float @dx.op.unary.f32(i32 23, float %4123)  ; Log(value)
  %4127 = call float @dx.op.unary.f32(i32 23, float %4124)  ; Log(value)
  %4128 = call float @dx.op.unary.f32(i32 23, float %4125)  ; Log(value)
  %4129 = fmul fast float %4126, 4.000000e+00
  %4130 = fmul fast float %4127, 4.000000e+00
  %4131 = fmul fast float %4128, 4.000000e+00
  %4132 = call float @dx.op.unary.f32(i32 21, float %4129)  ; Exp(value)
  %4133 = call float @dx.op.unary.f32(i32 21, float %4130)  ; Exp(value)
  %4134 = call float @dx.op.unary.f32(i32 21, float %4131)  ; Exp(value)
  %4135 = fadd fast float %4133, %4132
  %4136 = fadd fast float %4135, %4134
  %4137 = fdiv fast float 1.000000e+00, %4136
  %4138 = fmul fast float %4137, %4132
  %4139 = fcmp fast ogt float %44, 0.000000e+00
  %4140 = fcmp fast ogt float %45, 0.000000e+00
  %4141 = fcmp fast ogt float %46, 0.000000e+00
  %4142 = fcmp fast olt float %44, 0.000000e+00
  %4143 = fcmp fast olt float %45, 0.000000e+00
  %4144 = fcmp fast olt float %46, 0.000000e+00
  %4145 = zext i1 %4139 to i32
  %4146 = zext i1 %4140 to i32
  %4147 = zext i1 %4141 to i32
  %4148 = zext i1 %4142 to i32
  %4149 = zext i1 %4143 to i32
  %4150 = zext i1 %4144 to i32
  %4151 = sub nsw i32 %4145, %4148
  %4152 = sub nsw i32 %4146, %4149
  %4153 = sub nsw i32 %4147, %4150
  %4154 = call float @dx.op.unary.f32(i32 83, float %4120)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 83, float %4121)  ; DerivCoarseX(value)
  %4156 = call float @dx.op.unary.f32(i32 83, float %4122)  ; DerivCoarseX(value)
  %4157 = call float @dx.op.unary.f32(i32 84, float %4120)  ; DerivCoarseY(value)
  %4158 = call float @dx.op.unary.f32(i32 84, float %4121)  ; DerivCoarseY(value)
  %4159 = call float @dx.op.unary.f32(i32 84, float %4122)  ; DerivCoarseY(value)
  %4160 = fcmp fast ole float %214, %4138
  %4161 = fmul fast float %4137, %4135
  %4162 = fcmp fast ole float %214, %4161
  %4163 = select i1 %4162, float %4122, float %4120
  %4164 = select i1 %4162, float %4120, float %4121
  %4165 = select i1 %4160, float %4121, float %4163
  %4166 = select i1 %4160, float %4122, float %4164
  %4167 = select i1 %4162, float %4156, float %4154
  %4168 = select i1 %4162, float %4154, float %4155
  %4169 = select i1 %4160, float %4155, float %4167
  %4170 = select i1 %4160, float %4156, float %4168
  %4171 = select i1 %4162, float %4159, float %4157
  %4172 = select i1 %4162, float %4157, float %4158
  %4173 = select i1 %4160, float %4158, float %4171
  %4174 = select i1 %4160, float %4159, float %4172
  %4175 = call float @dx.op.unary.f32(i32 27, float %4165)  ; Round_ni(value)
  %4176 = call float @dx.op.unary.f32(i32 27, float %4166)  ; Round_ni(value)
  %4177 = fptosi float %4175 to i32
  %4178 = fptosi float %4176 to i32
  %4179 = xor i32 %4178, %4177
  %4180 = sitofp i32 %4179 to float
  %4181 = fptosi float %4180 to i32
  %4182 = sitofp i32 %4181 to float
  %4183 = fmul fast float %4182, 0x3FE3C6EF40000000
  %4184 = frem fast float %4175, 2.560000e+02
  %4185 = frem fast float %4176, 2.560000e+02
  %4186 = fptoui float %4184 to i32
  %4187 = fptoui float %4185 to i32
  %4188 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %4186, i32 %4187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = fadd fast float %4189, %4183
  %4193 = fadd fast float %4190, %4183
  %4194 = fadd fast float %4191, %4183
  %4195 = call float @dx.op.unary.f32(i32 22, float %4192)  ; Frc(value)
  %4196 = call float @dx.op.unary.f32(i32 22, float %4193)  ; Frc(value)
  %4197 = call float @dx.op.unary.f32(i32 22, float %4194)  ; Frc(value)
  %4198 = fmul fast float %4197, 0x401921FB60000000
  %4199 = call float @dx.op.unary.f32(i32 13, float %4198)  ; Sin(value)
  %4200 = call float @dx.op.unary.f32(i32 12, float %4198)  ; Cos(value)
  %4201 = fsub fast float -0.000000e+00, %4200
  %4202 = fmul fast float %4200, %4165
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4166, float %4202)  ; FMad(a,b,c)
  %4204 = fmul fast float %4199, %4165
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4166, float %4204)  ; FMad(a,b,c)
  %4206 = fadd fast float %4203, %4195
  %4207 = fadd fast float %4205, %4196
  %4208 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4209 = bitcast float %4208 to i32
  %4210 = icmp eq i32 %4209, 0
  br i1 %4210, label %4249, label %4211

; <label>:4211                                    ; preds = %4114
  %4212 = add i32 %4209, 0
  %4213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4213, %dx.types.Handle %74, float %4206, float %4207, float undef, float undef, i32 0, i32 0, i32 undef, float %4169, float %4170, float undef, float %4173, float %4174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4219 = fsub fast float 1.000000e+00, %3824
  %4220 = call float @dx.op.binary.f32(i32 35, float %4219, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4221 = bitcast float %3824 to i32
  %4222 = sitofp i32 %4221 to float
  %4223 = fadd fast float %4222, 0xC1CFBF8940000000
  %4224 = fmul fast float %4218, %4223
  %4225 = fadd fast float %4224, 0x41CFBF8940000000
  %4226 = fptosi float %4225 to i32
  %4227 = bitcast i32 %4226 to float
  %4228 = bitcast float %4220 to i32
  %4229 = sitofp i32 %4228 to float
  %4230 = fadd fast float %4229, 0xC1CFBF8940000000
  %4231 = fmul fast float %4230, %4218
  %4232 = fadd fast float %4231, 0x41CFBF8940000000
  %4233 = fptosi float %4232 to i32
  %4234 = bitcast i32 %4233 to float
  %4235 = fmul fast float %4227, %4217
  %4236 = fmul fast float %4234, %4217
  %4237 = fsub fast float %4220, %4235
  %4238 = fadd fast float %4236, %4220
  %4239 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4241 = fsub fast float %4215, %4239
  %4242 = fsub fast float %4240, %4239
  %4243 = bitcast float %4242 to i32
  %4244 = sub nsw i32 2129859010, %4243
  %4245 = bitcast i32 %4244 to float
  %4246 = fmul fast float %4245, %4241
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fcmp fast olt float %4247, 0x3F70101020000000
  br i1 %4248, label %4387, label %4249

; <label>:4249                                    ; preds = %4211, %4114
  %4250 = phi float [ %4247, %4211 ], [ %3824, %4114 ]
  %4251 = fmul fast float %4250, %4117
  %4252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.i32 %4252, 1
  %4254 = extractvalue %dx.types.CBufRet.i32 %4252, 0
  %4255 = add i32 %4254, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4256, %dx.types.Handle %73, float %4206, float %4207, float undef, float undef, i32 0, i32 0, i32 undef, float %4169, float %4170, float undef, float %4173, float %4174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = extractvalue %dx.types.ResRet.f32 %4257, 3
  %4262 = and i32 %4253, 255
  %4263 = uitofp i32 %4262 to float
  %4264 = lshr i32 %4253, 8
  %4265 = and i32 %4264, 255
  %4266 = uitofp i32 %4265 to float
  %4267 = fmul fast float %4261, %4263
  %4268 = fadd fast float %4267, %4266
  %4269 = fmul fast float %4268, 0x3F70101000000000
  %4270 = fadd fast float %4269, 0xBFB99999A0000000
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fmul fast float %4271, 0x3FF1C71C80000000
  %4273 = call float @dx.op.binary.f32(i32 36, float %4269, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4274 = fsub fast float 1.000000e+00, %4272
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fmul fast float %4275, %4258
  %4277 = fmul fast float %4275, %4259
  %4278 = fmul fast float %4275, %4260
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = fmul fast float %4272, %4258
  %4283 = fmul fast float %4272, %4259
  %4284 = fmul fast float %4272, %4260
  %4285 = fadd fast float %4282, %4273
  %4286 = fadd fast float %4283, %4273
  %4287 = fadd fast float %4284, %4273
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.i32 %4291, 3
  %4293 = extractvalue %dx.types.CBufRet.i32 %4291, 2
  %4294 = add i32 %4293, 0
  %4295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4296 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4295, %dx.types.Handle %73, float %4206, float %4207, float undef, float undef, i32 0, i32 0, i32 undef, float %4169, float %4170, float undef, float %4173, float %4174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4300 = extractvalue %dx.types.ResRet.f32 %4296, 3
  %4301 = and i32 %4292, 255
  %4302 = uitofp i32 %4301 to float
  %4303 = lshr i32 %4292, 8
  %4304 = and i32 %4303, 255
  %4305 = uitofp i32 %4304 to float
  %4306 = lshr i32 %4292, 16
  %4307 = and i32 %4306, 255
  %4308 = uitofp i32 %4307 to float
  %4309 = fmul fast float %4308, 0x3F70101000000000
  %4310 = fmul fast float %4297, %4302
  %4311 = fadd fast float %4310, %4305
  %4312 = fmul fast float %4311, 0x3F70101000000000
  %4313 = fadd fast float %4298, -5.000000e-01
  %4314 = fadd fast float %4300, -5.000000e-01
  %4315 = fmul fast float %4313, %4309
  %4316 = fmul fast float %4314, %4309
  %4317 = fadd fast float %4315, 5.000000e-01
  %4318 = fadd fast float %4316, 5.000000e-01
  %4319 = fmul fast float %4317, 2.000000e+00
  %4320 = fadd fast float %4319, -1.000000e+00
  %4321 = fmul fast float %4318, 2.000000e+00
  %4322 = fadd fast float %4321, -1.000000e+00
  %4323 = fadd fast float %4320, %4322
  %4324 = fmul fast float %4323, 5.000000e-01
  %4325 = fsub fast float %4320, %4322
  %4326 = fmul fast float %4325, 5.000000e-01
  %4327 = call float @dx.op.unary.f32(i32 6, float %4324)  ; FAbs(value)
  %4328 = fsub fast float 1.000000e+00, %4327
  %4329 = call float @dx.op.unary.f32(i32 6, float %4326)  ; FAbs(value)
  %4330 = fsub fast float %4328, %4329
  %4331 = call float @dx.op.dot3.f32(i32 55, float %4324, float %4326, float %4330, float %4324, float %4326, float %4330)  ; Dot3(ax,ay,az,bx,by,bz)
  %4332 = call float @dx.op.unary.f32(i32 25, float %4331)  ; Rsqrt(value)
  %4333 = fmul fast float %4324, %4332
  %4334 = fmul fast float %4326, %4332
  %4335 = select i1 %4162, i32 %4152, i32 %4153
  %4336 = select i1 %4160, i32 %4151, i32 %4335
  %4337 = sitofp i32 %4336 to float
  %4338 = fmul fast float %4330, %4337
  %4339 = fmul fast float %4338, %4332
  %4340 = select i1 %4162, float %4339, float %4334
  %4341 = select i1 %4162, float %4334, float %4339
  %4342 = select i1 %4160, float %4339, float %4333
  %4343 = select i1 %4160, float %4334, float %4340
  %4344 = select i1 %4160, float %4333, float %4341
  %4345 = fsub fast float %4279, %4103
  %4346 = fsub fast float %4280, %4104
  %4347 = fsub fast float %4281, %4105
  %4348 = fmul fast float %4345, %4251
  %4349 = fmul fast float %4346, %4251
  %4350 = fmul fast float %4347, %4251
  %4351 = fadd fast float %4348, %4103
  %4352 = fadd fast float %4349, %4104
  %4353 = fadd fast float %4350, %4105
  %4354 = fsub fast float %4288, %4109
  %4355 = fsub fast float %4289, %4110
  %4356 = fsub fast float %4290, %4111
  %4357 = fmul fast float %4354, %4251
  %4358 = fmul fast float %4355, %4251
  %4359 = fmul fast float %4356, %4251
  %4360 = fadd fast float %4357, %4109
  %4361 = fadd fast float %4358, %4110
  %4362 = fadd fast float %4359, %4111
  %4363 = fadd fast float %4342, %4106
  %4364 = fadd fast float %4343, %4107
  %4365 = fadd fast float %4344, %4108
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4364, float %4365, float %4363, float %4364, float %4365)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = call float @dx.op.unary.f32(i32 25, float %4366)  ; Rsqrt(value)
  %4368 = fmul fast float %4363, %4367
  %4369 = fmul fast float %4364, %4367
  %4370 = fmul fast float %4365, %4367
  %4371 = fsub fast float %4368, %4106
  %4372 = fsub fast float %4369, %4107
  %4373 = fsub fast float %4370, %4108
  %4374 = fmul fast float %4371, %4251
  %4375 = fmul fast float %4372, %4251
  %4376 = fmul fast float %4373, %4251
  %4377 = fadd fast float %4374, %4106
  %4378 = fadd fast float %4375, %4107
  %4379 = fadd fast float %4376, %4108
  %4380 = call float @dx.op.binary.f32(i32 36, float %4113, float %4299)  ; FMin(a,b)
  %4381 = fsub fast float %4380, %4113
  %4382 = fmul fast float %4381, %4251
  %4383 = fadd fast float %4382, %4113
  %4384 = fsub fast float %4312, %4112
  %4385 = fmul fast float %4384, %4251
  %4386 = fadd fast float %4385, %4112
  br label %4387

; <label>:4387                                    ; preds = %4249, %4211, %4102, %3818
  %4388 = phi float [ %4351, %4249 ], [ %4103, %4211 ], [ %4103, %4102 ], [ %3427, %3818 ]
  %4389 = phi float [ %4352, %4249 ], [ %4104, %4211 ], [ %4104, %4102 ], [ %3428, %3818 ]
  %4390 = phi float [ %4353, %4249 ], [ %4105, %4211 ], [ %4105, %4102 ], [ %3429, %3818 ]
  %4391 = phi float [ %4377, %4249 ], [ %4106, %4211 ], [ %4106, %4102 ], [ %3376, %3818 ]
  %4392 = phi float [ %4378, %4249 ], [ %4107, %4211 ], [ %4107, %4102 ], [ %3377, %3818 ]
  %4393 = phi float [ %4379, %4249 ], [ %4108, %4211 ], [ %4108, %4102 ], [ %3378, %3818 ]
  %4394 = phi float [ %4360, %4249 ], [ %4109, %4211 ], [ %4109, %4102 ], [ %3412, %3818 ]
  %4395 = phi float [ %4361, %4249 ], [ %4110, %4211 ], [ %4110, %4102 ], [ %3413, %3818 ]
  %4396 = phi float [ %4362, %4249 ], [ %4111, %4211 ], [ %4111, %4102 ], [ %3414, %3818 ]
  %4397 = phi float [ %4386, %4249 ], [ %4112, %4211 ], [ %4112, %4102 ], [ %3415, %3818 ]
  %4398 = phi float [ %4383, %4249 ], [ %4113, %4211 ], [ %4113, %4102 ], [ %3388, %3818 ]
  %4399 = fcmp fast une float %3822, 0.000000e+00
  %4400 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4401 = call float @dx.op.unary.f32(i32 25, float %4400)  ; Rsqrt(value)
  br i1 %4399, label %4409, label %4402

; <label>:4402                                    ; preds = %4387
  %4403 = fmul fast float %4401, %164
  %4404 = fmul fast float %4401, %165
  %4405 = fmul fast float %4401, %166
  %4406 = fsub fast float -0.000000e+00, %4403
  %4407 = fsub fast float -0.000000e+00, %4404
  %4408 = fsub fast float -0.000000e+00, %4405
  br label %4576

; <label>:4409                                    ; preds = %4387
  %4410 = fmul fast float %164, %4401
  %4411 = fsub fast float -0.000000e+00, %4410
  %4412 = fmul fast float %165, %4401
  %4413 = fsub fast float -0.000000e+00, %4412
  %4414 = fmul fast float %166, %4401
  %4415 = fsub fast float -0.000000e+00, %4414
  %4416 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4413, float %4415, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = fmul fast float %3822, 2.500000e+00
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fmul fast float %3822, 0x4013FFFFE0000000
  %4420 = fadd fast float %4419, 0xBFFFFFFFE0000000
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %3822, 0x4004000020000000
  %4423 = fadd fast float %4422, 0xBFF8000040000000
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %3394, 1.000000e+01
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, 2.000000e+00
  %4428 = fsub fast float 3.000000e+00, %4427
  %4429 = fmul fast float %4426, %4426
  %4430 = fmul fast float %4429, %4428
  %4431 = fsub fast float 1.000000e+00, %4430
  %4432 = fsub fast float 0x3FE3333340000000, %4397
  %4433 = fmul fast float %4432, 0x400AAAAAA0000000
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4431, %4434
  %4436 = fmul fast float %4388, 0x3FEA2B8620000000
  %4437 = fmul fast float %4389, 0x3FEA2B8620000000
  %4438 = fmul fast float %4390, 0x3FEA2B8620000000
  %4439 = fadd fast float %4436, 0x3FC81DFBA0000000
  %4440 = fmul fast float %4439, %4388
  %4441 = fadd fast float %4440, 0x3F910E6020000000
  %4442 = fadd fast float %4437, 0x3FC81DFBA0000000
  %4443 = fmul fast float %4442, %4389
  %4444 = fadd fast float %4443, 0x3F910E6020000000
  %4445 = fadd fast float %4438, 0x3FC81DFBA0000000
  %4446 = fmul fast float %4445, %4390
  %4447 = fadd fast float %4446, 0x3F910E6020000000
  %4448 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = fsub fast float %4448, %4388
  %4452 = fsub fast float %4449, %4389
  %4453 = fsub fast float %4450, %4390
  %4454 = fmul fast float %4451, %4418
  %4455 = fmul fast float %4454, %4435
  %4456 = fmul fast float %4452, %4418
  %4457 = fmul fast float %4456, %4435
  %4458 = fmul fast float %4453, %4418
  %4459 = fmul fast float %4458, %4435
  %4460 = fadd fast float %4455, %4388
  %4461 = fadd fast float %4457, %4389
  %4462 = fadd fast float %4459, %4390
  %4463 = fmul fast float %4398, %4398
  %4464 = fmul fast float %4463, %4463
  %4465 = fadd fast float %4421, 1.000000e+00
  %4466 = fsub fast float %4465, %4435
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fsub fast float 1.000000e+00, %4464
  %4471 = call float @dx.op.binary.f32(i32 36, float %4467, float %4470)  ; FMin(a,b)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4473 = call float @dx.op.binary.f32(i32 35, float %4471, float %4472)  ; FMax(a,b)
  %4474 = fadd fast float %4469, 0xBFE4CCCCC0000000
  %4475 = fmul fast float %4474, 0x4006DB6DA0000000
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, 2.000000e+00
  %4478 = fsub fast float 3.000000e+00, %4477
  %4479 = bitcast float %4394 to i32
  %4480 = ashr i32 %4479, 1
  %4481 = add nsw i32 %4480, 532487669
  %4482 = bitcast i32 %4481 to float
  %4483 = fsub fast float 1.000000e+00, %4482
  %4484 = bitcast float %4483 to i32
  %4485 = sub nsw i32 2129859010, %4484
  %4486 = bitcast i32 %4485 to float
  %4487 = fmul fast float %4486, 2.000000e+00
  %4488 = bitcast float %4395 to i32
  %4489 = ashr i32 %4488, 1
  %4490 = add nsw i32 %4489, 532487669
  %4491 = bitcast i32 %4490 to float
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = bitcast float %4492 to i32
  %4494 = sub nsw i32 2129859010, %4493
  %4495 = bitcast i32 %4494 to float
  %4496 = fmul fast float %4495, 2.000000e+00
  %4497 = bitcast float %4396 to i32
  %4498 = ashr i32 %4497, 1
  %4499 = add nsw i32 %4498, 532487669
  %4500 = bitcast i32 %4499 to float
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = bitcast float %4501 to i32
  %4503 = sub nsw i32 2129859010, %4502
  %4504 = bitcast i32 %4503 to float
  %4505 = fmul fast float %4504, 2.000000e+00
  %4506 = fsub fast float 0x4002A9FBE0000000, %4487
  %4507 = fadd fast float %4487, 0x3FD54FDF00000000
  %4508 = bitcast float %4507 to i32
  %4509 = sub nsw i32 2129859010, %4508
  %4510 = bitcast i32 %4509 to float
  %4511 = fmul fast float %4510, %4506
  %4512 = fmul fast float %4511, %4511
  %4513 = fsub fast float 0x4002A9FBE0000000, %4496
  %4514 = fadd fast float %4496, 0x3FD54FDF00000000
  %4515 = bitcast float %4514 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4517, %4513
  %4519 = fmul fast float %4518, %4518
  %4520 = fsub fast float 0x4002A9FBE0000000, %4505
  %4521 = fadd fast float %4505, 0x3FD54FDF00000000
  %4522 = bitcast float %4521 to i32
  %4523 = sub nsw i32 2129859010, %4522
  %4524 = bitcast i32 %4523 to float
  %4525 = fmul fast float %4524, %4520
  %4526 = fmul fast float %4525, %4525
  %4527 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4512)  ; FMax(a,b)
  %4528 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4519)  ; FMax(a,b)
  %4529 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4526)  ; FMax(a,b)
  %4530 = fsub fast float 1.000000e+00, %4416
  %4531 = fadd fast float %4530, %4431
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = fsub fast float 1.000000e+00, %3803
  %4534 = fmul fast float %4473, %4533
  %4535 = fmul fast float %4476, %4476
  %4536 = fmul fast float %4535, %4534
  %4537 = fmul fast float %4536, %4478
  %4538 = fmul fast float %4533, 0xBFE99999A0000000
  %4539 = fmul fast float %4538, %4418
  %4540 = fmul fast float %4539, %4435
  %4541 = fadd fast float %4540, 1.000000e+00
  %4542 = fadd fast float %4397, -1.000000e+00
  %4543 = fmul fast float %4541, %4542
  %4544 = fadd fast float %4543, 1.000000e+00
  %4545 = fsub fast float %4527, %4394
  %4546 = fsub fast float %4528, %4395
  %4547 = fsub fast float %4529, %4396
  %4548 = fmul fast float %4537, %4545
  %4549 = fmul fast float %4537, %4546
  %4550 = fmul fast float %4537, %4547
  %4551 = fadd fast float %4548, %4394
  %4552 = fadd fast float %4549, %4395
  %4553 = fadd fast float %4550, %4396
  %4554 = fsub fast float %84, %4391
  %4555 = fsub fast float %85, %4392
  %4556 = fsub fast float %86, %4393
  %4557 = fmul fast float %4537, %4554
  %4558 = fmul fast float %4537, %4555
  %4559 = fmul fast float %4537, %4556
  %4560 = fadd fast float %4557, %4391
  %4561 = fadd fast float %4558, %4392
  %4562 = fadd fast float %4559, %4393
  %4563 = fmul fast float %4537, %4532
  %4564 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4565 = fsub fast float 1.000000e+00, %4564
  %4566 = fmul fast float %4563, %4565
  %4567 = fadd fast float %4566, %4564
  %4568 = fsub fast float 1.000000e+00, %4398
  %4569 = fmul fast float %4537, %4568
  %4570 = fadd fast float %4569, %4398
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4560, float %4561, float %4562, float %4560, float %4561, float %4562)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 25, float %4571)  ; Rsqrt(value)
  %4573 = fmul fast float %4560, %4572
  %4574 = fmul fast float %4561, %4572
  %4575 = fmul fast float %4562, %4572
  br label %4576

; <label>:4576                                    ; preds = %4409, %4402
  %4577 = phi float [ %4408, %4402 ], [ %4415, %4409 ]
  %4578 = phi float [ %4407, %4402 ], [ %4413, %4409 ]
  %4579 = phi float [ %4406, %4402 ], [ %4411, %4409 ]
  %4580 = phi float [ %4405, %4402 ], [ %4414, %4409 ]
  %4581 = phi float [ %4404, %4402 ], [ %4412, %4409 ]
  %4582 = phi float [ %4403, %4402 ], [ %4410, %4409 ]
  %4583 = phi float [ %4388, %4402 ], [ %4460, %4409 ]
  %4584 = phi float [ %4389, %4402 ], [ %4461, %4409 ]
  %4585 = phi float [ %4390, %4402 ], [ %4462, %4409 ]
  %4586 = phi float [ %4391, %4402 ], [ %4573, %4409 ]
  %4587 = phi float [ %4392, %4402 ], [ %4574, %4409 ]
  %4588 = phi float [ %4393, %4402 ], [ %4575, %4409 ]
  %4589 = phi float [ %4394, %4402 ], [ %4551, %4409 ]
  %4590 = phi float [ %4395, %4402 ], [ %4552, %4409 ]
  %4591 = phi float [ %4396, %4402 ], [ %4553, %4409 ]
  %4592 = phi float [ %4397, %4402 ], [ %4567, %4409 ]
  %4593 = phi float [ %4398, %4402 ], [ %4570, %4409 ]
  %4594 = select i1 %203, float 0.000000e+00, float %4591
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4579, float %4578, float %4577)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4582, float %4581, float %4580, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = fmul fast float %4597, 2.000000e+00
  %4599 = fmul fast float %4598, %4586
  %4600 = fmul fast float %4598, %4587
  %4601 = fmul fast float %4598, %4588
  %4602 = fsub fast float %4582, %4599
  %4603 = fsub fast float %4581, %4600
  %4604 = fsub fast float %4580, %4601
  %4605 = call float @dx.op.binary.f32(i32 36, float %4593, float 1.000000e+00)  ; FMin(a,b)
  %4606 = fsub fast float 1.000000e+00, %4593
  %4607 = bitcast float %4606 to i32
  %4608 = sub nsw i32 2129859010, %4607
  %4609 = fsub fast float 1.000000e+00, %54
  %4610 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = call float @dx.op.binary.f32(i32 35, float %4610, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4612 = fdiv fast float %4609, %4611
  %4613 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4614, 5.000000e-01
  %4616 = fadd fast float %4615, 5.000000e-01
  %4617 = fmul fast float %4616, %54
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4619, %4612
  %4621 = fadd fast float %4617, %4620
  %4622 = fsub fast float 5.000000e-01, %4615
  %4623 = fmul fast float %4622, %4583
  %4624 = fmul fast float %4622, %4584
  %4625 = fmul fast float %4622, %4585
  %4626 = fadd fast float %4621, %4623
  %4627 = fadd fast float %4621, %4624
  %4628 = fadd fast float %4621, %4625
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4630, 5.000000e-01
  %4632 = fadd fast float %4631, 5.000000e-01
  %4633 = fmul fast float %4632, %54
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, %4612
  %4637 = fadd fast float %4633, %4636
  %4638 = fsub fast float 5.000000e-01, %4631
  %4639 = fmul fast float %4638, %4583
  %4640 = fmul fast float %4638, %4584
  %4641 = fmul fast float %4638, %4585
  %4642 = fadd fast float %4637, %4639
  %4643 = fadd fast float %4637, %4640
  %4644 = fadd fast float %4637, %4641
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4647 = call float @dx.op.binary.f32(i32 36, float %4583, float %4646)  ; FMin(a,b)
  %4648 = fsub fast float 1.000000e+00, %4605
  %4649 = fmul fast float %4647, %4648
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = bitcast float %4650 to i32
  %4652 = sub nsw i32 2129859010, %4651
  %4653 = bitcast i32 %4652 to float
  %4654 = call float @dx.op.binary.f32(i32 36, float %4584, float %4646)  ; FMin(a,b)
  %4655 = fmul fast float %4654, %4648
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = bitcast float %4656 to i32
  %4658 = sub nsw i32 2129859010, %4657
  %4659 = bitcast i32 %4658 to float
  %4660 = call float @dx.op.binary.f32(i32 36, float %4585, float %4646)  ; FMin(a,b)
  %4661 = fmul fast float %4660, %4648
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = bitcast float %4662 to i32
  %4664 = sub nsw i32 2129859010, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4605, %55
  %4667 = fmul fast float %4666, %4626
  %4668 = fmul fast float %4667, %4653
  %4669 = fmul fast float %4605, %56
  %4670 = fmul fast float %4669, %4627
  %4671 = fmul fast float %4670, %4659
  %4672 = fmul fast float %4605, %57
  %4673 = fmul fast float %4672, %4628
  %4674 = fmul fast float %4673, %4665
  %4675 = call float @dx.op.binary.f32(i32 36, float %4589, float %4646)  ; FMin(a,b)
  %4676 = fmul fast float %4675, %4648
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = call float @dx.op.binary.f32(i32 36, float %4590, float %4646)  ; FMin(a,b)
  %4682 = fmul fast float %4681, %4648
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = call float @dx.op.binary.f32(i32 36, float %4594, float %4646)  ; FMin(a,b)
  %4688 = fmul fast float %4687, %4648
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4666, %4642
  %4694 = fmul fast float %4693, %4680
  %4695 = fmul fast float %4669, %4643
  %4696 = fmul fast float %4695, %4686
  %4697 = fmul fast float %4672, %4644
  %4698 = fmul fast float %4697, %4692
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4671, float %4674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = select i1 %203, float 0.000000e+00, float %4668
  %4701 = select i1 %203, float %4699, float %4671
  %4702 = select i1 %203, float 0.000000e+00, float %4674
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4696, float %4698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = select i1 %203, float 0.000000e+00, float %4694
  %4705 = select i1 %203, float %4703, float %4696
  %4706 = select i1 %203, float 0.000000e+00, float %4698
  %4707 = fmul fast float %4596, 9.843750e-01
  %4708 = fmul fast float %4592, 9.843750e-01
  %4709 = fadd fast float %4707, 7.812500e-03
  %4710 = fadd fast float %4708, 7.812500e-03
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4709, float %4710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 2
  %4713 = extractvalue %dx.types.ResRet.f32 %4711, 3
  %4714 = fmul fast float %4712, %4589
  %4715 = fmul fast float %4712, %4590
  %4716 = fmul fast float %4712, %4594
  %4717 = fadd fast float %4714, %4713
  %4718 = fadd fast float %4715, %4713
  %4719 = fadd fast float %4716, %4713
  %4720 = fcmp fast ogt float %3389, 0.000000e+00
  br i1 %4720, label %4721, label %4747

; <label>:4721                                    ; preds = %4576
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3389, float %4596, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  %4726 = fadd fast float %4723, -5.000000e-01
  %4727 = fadd fast float %4724, -5.000000e-01
  %4728 = fadd fast float %4725, -5.000000e-01
  %4729 = fsub fast float 1.000000e+00, %4589
  %4730 = fsub fast float 1.000000e+00, %4590
  %4731 = fsub fast float 1.000000e+00, %4594
  %4732 = fmul fast float %4589, 4.000000e+00
  %4733 = fmul fast float %4732, %4729
  %4734 = fmul fast float %4733, %4726
  %4735 = fmul fast float %4590, 4.000000e+00
  %4736 = fmul fast float %4735, %4730
  %4737 = fmul fast float %4736, %4727
  %4738 = fmul fast float %4594, 4.000000e+00
  %4739 = fmul fast float %4738, %4731
  %4740 = fmul fast float %4739, %4728
  %4741 = fadd fast float %4734, %4717
  %4742 = fadd fast float %4737, %4718
  %4743 = fadd fast float %4740, %4719
  %4744 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4745 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  br label %4747

; <label>:4747                                    ; preds = %4721, %4576
  %4748 = phi float [ %4744, %4721 ], [ %4717, %4576 ]
  %4749 = phi float [ %4745, %4721 ], [ %4718, %4576 ]
  %4750 = phi float [ %4746, %4721 ], [ %4719, %4576 ]
  %4751 = call float @dx.op.binary.f32(i32 35, float %4749, float %4750)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4748, float %4751)  ; FMax(a,b)
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = fmul fast float %4753, %4700
  %4755 = fmul fast float %4753, %4701
  %4756 = fmul fast float %4753, %4702
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fcmp fast ogt float %4757, 0x3E7FF19E20000000
  %4759 = fdiv fast float 1.000000e+00, %4757
  %4760 = select i1 %4758, float %4759, float 0.000000e+00
  %4761 = fmul fast float %4760, %4583
  %4762 = fmul fast float %4760, %4584
  %4763 = fmul fast float %4760, %4585
  %4764 = fadd fast float %4761, -1.000000e+00
  %4765 = fadd fast float %4762, -1.000000e+00
  %4766 = fadd fast float %4763, -1.000000e+00
  %4767 = fmul fast float %4764, 5.000000e-01
  %4768 = fmul fast float %4765, 5.000000e-01
  %4769 = fmul fast float %4766, 5.000000e-01
  %4770 = fadd fast float %4767, 1.000000e+00
  %4771 = fadd fast float %4768, 1.000000e+00
  %4772 = fadd fast float %4769, 1.000000e+00
  %4773 = fmul fast float %4748, %4704
  %4774 = fmul fast float %4749, %4705
  %4775 = fmul fast float %4750, %4706
  %4776 = fsub fast float 1.000000e+00, %4596
  %4777 = bitcast float %4776 to i32
  %4778 = sitofp i32 %4777 to float
  %4779 = fmul fast float %4778, 5.000000e+00
  %4780 = fadd fast float %4779, 0xC1EFBF8940000000
  %4781 = fptosi float %4780 to i32
  %4782 = bitcast i32 %4781 to float
  %4783 = fmul fast float %4782, %3390
  %4784 = fmul fast float %4700, %4783
  %4785 = fmul fast float %4784, %4753
  %4786 = fmul fast float %4785, %4770
  %4787 = fmul fast float %4701, %4783
  %4788 = fmul fast float %4787, %4753
  %4789 = fmul fast float %4788, %4771
  %4790 = fmul fast float %4702, %4783
  %4791 = fmul fast float %4790, %4753
  %4792 = fmul fast float %4791, %4772
  %4793 = fmul fast float %4754, %3386
  %4794 = fmul fast float %4755, %3386
  %4795 = fmul fast float %4756, %3386
  %4796 = fadd fast float %4773, %3382
  %4797 = fadd fast float %4796, %4786
  %4798 = fmul fast float %4797, %3386
  %4799 = fadd fast float %4774, %3383
  %4800 = fadd fast float %4799, %4789
  %4801 = fmul fast float %4800, %3386
  %4802 = fadd fast float %4775, %3384
  %4803 = fadd fast float %4802, %4792
  %4804 = fmul fast float %4803, %3386
  %4805 = bitcast i32 %4608 to float
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 3
  %4808 = fcmp fast oeq float %4807, 0.000000e+00
  br i1 %4808, label %5036, label %4809

; <label>:4809                                    ; preds = %4747
  %4810 = extractvalue %dx.types.CBufRet.f32 %4806, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4806, 1
  %4812 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4816 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4820 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = select i1 %203, float %4818, float %4814
  %4822 = select i1 %203, float %4820, float %4815
  %4823 = select i1 %203, float %4819, float %4816
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 1
  %4826 = fcmp fast une float %4825, 0.000000e+00
  br i1 %4826, label %4827, label %4844

; <label>:4827                                    ; preds = %4809
  %4828 = fptoui float %77 to i32
  %4829 = fptoui float %78 to i32
  %4830 = lshr i32 %4828, 4
  %4831 = lshr i32 %4829, 4
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = fptoui float %4833 to i32
  %4835 = add i32 %4834, 15
  %4836 = lshr i32 %4835, 4
  %4837 = mul i32 %4836, %4831
  %4838 = add i32 %4837, %4830
  %4839 = shl i32 %4838, 3
  %4840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %4839, i32 undef)  ; BufferLoad(srv,index,wot)
  %4841 = extractvalue %dx.types.ResRet.i32 %4840, 0
  %4842 = and i32 %4841, -268435456
  %4843 = icmp eq i32 %4842, -1342177280
  br i1 %4843, label %4854, label %4844

; <label>:4844                                    ; preds = %4827, %4809
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4847 = extractvalue %dx.types.CBufRet.f32 %4845, 3
  %4848 = fmul fast float %4846, %77
  %4849 = fmul fast float %4847, %78
  %4850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %30, float %4848, float %4849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.ResRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.ResRet.f32 %4850, 2
  br label %4854

; <label>:4854                                    ; preds = %4844, %4827
  %4855 = phi float [ %4851, %4844 ], [ 0.000000e+00, %4827 ]
  %4856 = phi float [ %4852, %4844 ], [ 0.000000e+00, %4827 ]
  %4857 = phi float [ %4853, %4844 ], [ 0.000000e+00, %4827 ]
  %4858 = call float @dx.op.binary.f32(i32 36, float %4856, float %4857)  ; FMin(a,b)
  %4859 = call float @dx.op.binary.f32(i32 36, float %4855, float %4858)  ; FMin(a,b)
  %4860 = fcmp fast ogt float %4859, 0.000000e+00
  br i1 %4860, label %4861, label %5036, !dx.controlflow.hints !75

; <label>:4861                                    ; preds = %4854
  %4862 = fmul fast float %4855, %4821
  %4863 = fmul fast float %4856, %4822
  %4864 = fmul fast float %4857, %4823
  %4865 = fsub fast float %4810, %4582
  %4866 = fsub fast float %4811, %4581
  %4867 = fsub fast float %4812, %4580
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 25, float %4868)  ; Rsqrt(value)
  %4870 = fmul fast float %4869, %4865
  %4871 = fmul fast float %4869, %4866
  %4872 = fmul fast float %4869, %4867
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4578, float %4577, float %4870, float %4871, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4876 = fmul fast float %4875, %4875
  %4877 = fmul fast float %4876, %4805
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, %4875
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4870, float %4871, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = fmul fast float %4880, %4880
  %4882 = call float @dx.op.unary.f32(i32 6, float %4873)  ; FAbs(value)
  %4883 = fsub fast float 1.000000e+00, %4592
  %4884 = call float @dx.op.binary.f32(i32 35, float %4883, float 0x3F847AE140000000)  ; FMax(a,b)
  %4885 = fmul fast float %4884, %4884
  %4886 = fmul fast float %4885, %4885
  %4887 = fsub fast float 1.000000e+00, %4886
  %4888 = fmul fast float %4596, %4596
  %4889 = fmul fast float %4888, %4887
  %4890 = fadd fast float %4889, %4886
  %4891 = bitcast float %4890 to i32
  %4892 = ashr i32 %4891, 1
  %4893 = add nsw i32 %4892, 532487669
  %4894 = bitcast i32 %4893 to float
  %4895 = fadd fast float %4894, %4596
  %4896 = fmul fast float %4886, %4881
  %4897 = fsub fast float 1.000000e+00, %4881
  %4898 = fadd fast float %4897, %4896
  %4899 = fmul fast float %4882, %4882
  %4900 = fmul fast float %4899, %4887
  %4901 = fadd fast float %4900, %4886
  %4902 = bitcast float %4901 to i32
  %4903 = ashr i32 %4902, 1
  %4904 = add nsw i32 %4903, 532487669
  %4905 = bitcast i32 %4904 to float
  %4906 = fadd fast float %4905, %4882
  %4907 = fmul fast float %4898, %4898
  %4908 = fmul fast float %4907, %4895
  %4909 = fmul fast float %4908, %4906
  %4910 = fdiv fast float 0x3FF0A00000000000, %4909
  %4911 = fmul fast float %4910, %4886
  %4912 = call float @dx.op.unary.f32(i32 6, float %4874)  ; FAbs(value)
  %4913 = fsub fast float 1.000000e+00, %4912
  %4914 = bitcast float %4913 to i32
  %4915 = sitofp i32 %4914 to float
  %4916 = fmul fast float %4915, 5.000000e+00
  %4917 = fadd fast float %4916, 0xC1EFBF8940000000
  %4918 = fptosi float %4917 to i32
  %4919 = bitcast i32 %4918 to float
  %4920 = fsub fast float 1.000000e+00, %4589
  %4921 = fsub fast float 1.000000e+00, %4590
  %4922 = fsub fast float 1.000000e+00, %4594
  %4923 = fmul fast float %4919, %4920
  %4924 = fmul fast float %4919, %4921
  %4925 = fmul fast float %4919, %4922
  %4926 = fadd fast float %4923, %4589
  %4927 = fadd fast float %4924, %4590
  %4928 = fadd fast float %4925, %4594
  br i1 %4720, label %4929, label %4952

; <label>:4929                                    ; preds = %4861
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3389, float %4912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = fadd fast float %4931, -5.000000e-01
  %4935 = fadd fast float %4932, -5.000000e-01
  %4936 = fadd fast float %4933, -5.000000e-01
  %4937 = fmul fast float %4589, 4.000000e+00
  %4938 = fmul fast float %4937, %4920
  %4939 = fmul fast float %4938, %4934
  %4940 = fmul fast float %4590, 4.000000e+00
  %4941 = fmul fast float %4940, %4921
  %4942 = fmul fast float %4941, %4935
  %4943 = fmul fast float %4594, 4.000000e+00
  %4944 = fmul fast float %4943, %4922
  %4945 = fmul fast float %4944, %4936
  %4946 = fadd fast float %4939, %4926
  %4947 = fadd fast float %4942, %4927
  %4948 = fadd fast float %4945, %4928
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4951 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  br label %4952

; <label>:4952                                    ; preds = %4929, %4861
  %4953 = phi float [ %4949, %4929 ], [ %4926, %4861 ]
  %4954 = phi float [ %4950, %4929 ], [ %4927, %4861 ]
  %4955 = phi float [ %4951, %4929 ], [ %4928, %4861 ]
  %4956 = fmul fast float %4873, 9.843750e-01
  %4957 = fadd fast float %4956, 7.812500e-03
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4957, float %4710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 2
  %4960 = extractvalue %dx.types.ResRet.f32 %4958, 3
  %4961 = fmul fast float %4959, %4589
  %4962 = fmul fast float %4959, %4590
  %4963 = fmul fast float %4959, %4594
  %4964 = fadd fast float %4961, %4960
  %4965 = fadd fast float %4962, %4960
  %4966 = fadd fast float %4963, %4960
  br i1 %4720, label %4967, label %4990

; <label>:4967                                    ; preds = %4952
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3389, float %4873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.ResRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.ResRet.f32 %4968, 2
  %4972 = fadd fast float %4969, -5.000000e-01
  %4973 = fadd fast float %4970, -5.000000e-01
  %4974 = fadd fast float %4971, -5.000000e-01
  %4975 = fmul fast float %4589, 4.000000e+00
  %4976 = fmul fast float %4975, %4920
  %4977 = fmul fast float %4976, %4972
  %4978 = fmul fast float %4590, 4.000000e+00
  %4979 = fmul fast float %4978, %4921
  %4980 = fmul fast float %4979, %4973
  %4981 = fmul fast float %4594, 4.000000e+00
  %4982 = fmul fast float %4981, %4922
  %4983 = fmul fast float %4982, %4974
  %4984 = fadd fast float %4977, %4964
  %4985 = fadd fast float %4980, %4965
  %4986 = fadd fast float %4983, %4966
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  br label %4990

; <label>:4990                                    ; preds = %4967, %4952
  %4991 = phi float [ %4987, %4967 ], [ %4964, %4952 ]
  %4992 = phi float [ %4988, %4967 ], [ %4965, %4952 ]
  %4993 = phi float [ %4989, %4967 ], [ %4966, %4952 ]
  %4994 = call float @dx.op.binary.f32(i32 35, float %4992, float %4993)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float %4991, float %4994)  ; FMax(a,b)
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = fmul fast float %4953, %4911
  %4998 = fmul fast float %4954, %4911
  %4999 = fmul fast float %4955, %4911
  %5000 = fsub fast float 1.000000e+00, %4874
  %5001 = bitcast float %5000 to i32
  %5002 = sitofp i32 %5001 to float
  %5003 = fmul fast float %5002, 5.000000e+00
  %5004 = fadd fast float %5003, 0xC1EFBF8940000000
  %5005 = fptosi float %5004 to i32
  %5006 = bitcast i32 %5005 to float
  %5007 = fmul fast float %5006, %3390
  %5008 = fmul fast float %4996, %5007
  %5009 = fmul fast float %5008, %4770
  %5010 = fmul fast float %5008, %4771
  %5011 = fmul fast float %5008, %4772
  %5012 = fadd fast float %5009, %4997
  %5013 = fadd fast float %5010, %4998
  %5014 = fadd fast float %5011, %4999
  %5015 = fmul fast float %4879, %4862
  %5016 = fmul fast float %5015, %4996
  %5017 = fmul fast float %4879, %4863
  %5018 = fmul fast float %5017, %4996
  %5019 = fmul fast float %4879, %4864
  %5020 = fmul fast float %5019, %4996
  %5021 = fmul fast float %5015, %5012
  %5022 = fmul fast float %5017, %5013
  %5023 = fmul fast float %5019, %5014
  %5024 = fadd fast float %5016, %4754
  %5025 = fmul fast float %5024, %3386
  %5026 = fadd fast float %5018, %4755
  %5027 = fmul fast float %5026, %3386
  %5028 = fadd fast float %5020, %4756
  %5029 = fmul fast float %5028, %3386
  %5030 = fadd fast float %5021, %4797
  %5031 = fmul fast float %5030, %3386
  %5032 = fadd fast float %5022, %4800
  %5033 = fmul fast float %5032, %3386
  %5034 = fadd fast float %5023, %4803
  %5035 = fmul fast float %5034, %3386
  br label %5036

; <label>:5036                                    ; preds = %4990, %4854, %4747
  %5037 = phi float [ %4798, %4747 ], [ %4798, %4854 ], [ %5031, %4990 ]
  %5038 = phi float [ %4801, %4747 ], [ %4801, %4854 ], [ %5033, %4990 ]
  %5039 = phi float [ %4804, %4747 ], [ %4804, %4854 ], [ %5035, %4990 ]
  %5040 = phi float [ %4793, %4747 ], [ %4793, %4854 ], [ %5025, %4990 ]
  %5041 = phi float [ %4794, %4747 ], [ %4794, %4854 ], [ %5027, %4990 ]
  %5042 = phi float [ %4795, %4747 ], [ %4795, %4854 ], [ %5029, %4990 ]
  %5043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.i32 %5043, 0
  %5045 = icmp eq i32 %5044, 0
  br i1 %5045, label %5480, label %5046

; <label>:5046                                    ; preds = %5036
  %5047 = fptoui float %77 to i32
  %5048 = fptoui float %78 to i32
  %5049 = lshr i32 %5047, 4
  %5050 = lshr i32 %5048, 4
  %5051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.i32 %5051, 0
  %5053 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5050, i32 %5052, i32 %5049)  ; UMad(a,b,c)
  %5054 = add nsw i32 %5044, -1
  %5055 = call i32 @dx.op.binary.i32(i32 37, i32 %5054, i32 0)  ; IMax(a,b)
  %5056 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5057 = fptoui float %5056 to i32
  %5058 = lshr i32 %5057, 5
  %5059 = call i32 @dx.op.binary.i32(i32 40, i32 %5058, i32 8191)  ; UMin(a,b)
  %5060 = shl i32 %5059, 2
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = lshr i32 %5062, 16
  %5064 = and i32 %5062, 65535
  %5065 = lshr i32 %5062, 21
  %5066 = lshr i32 %5064, 5
  %5067 = call i32 @dx.op.binary.i32(i32 40, i32 %5066, i32 %5055)  ; UMin(a,b)
  %5068 = icmp ugt i32 %5065, %5067
  br i1 %5068, label %5480, label %5069

; <label>:5069                                    ; preds = %5046
  br label %5070

; <label>:5070                                    ; preds = %5470, %5069
  %5071 = phi i32 [ %5477, %5470 ], [ %5065, %5069 ]
  %5072 = phi float [ %5471, %5470 ], [ %5037, %5069 ]
  %5073 = phi float [ %5472, %5470 ], [ %5038, %5069 ]
  %5074 = phi float [ %5473, %5470 ], [ %5039, %5069 ]
  %5075 = phi float [ %5474, %5470 ], [ %5040, %5069 ]
  %5076 = phi float [ %5475, %5470 ], [ %5041, %5069 ]
  %5077 = phi float [ %5476, %5470 ], [ %5042, %5069 ]
  %5078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.i32 %5078, 0
  %5080 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5053, i32 %5079, i32 %5071)  ; UMad(a,b,c)
  %5081 = shl i32 %5080, 2
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = shl i32 %5071, 5
  %5085 = sub nsw i32 %5063, %5084
  %5086 = call i32 @dx.op.binary.i32(i32 37, i32 %5085, i32 0)  ; IMax(a,b)
  %5087 = call i32 @dx.op.binary.i32(i32 38, i32 %5086, i32 31)  ; IMin(a,b)
  %5088 = sub nsw i32 1, %5063
  %5089 = add nsw i32 %5088, %5064
  %5090 = call i32 @dx.op.binary.i32(i32 37, i32 %5089, i32 0)  ; IMax(a,b)
  %5091 = call i32 @dx.op.binary.i32(i32 38, i32 %5090, i32 32)  ; IMin(a,b)
  %5092 = and i32 %5091, 31
  %5093 = shl i32 -1, %5092
  %5094 = xor i32 %5093, -1
  %5095 = and i32 %5087, 31
  %5096 = shl i32 %5094, %5095
  %5097 = icmp eq i32 %5091, 32
  %5098 = select i1 %5097, i32 -1, i32 %5096
  %5099 = and i32 %5098, %5083
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5470, label %5101

; <label>:5101                                    ; preds = %5070
  br label %5102

; <label>:5102                                    ; preds = %5182, %5101
  %5103 = phi i32 [ %5114, %5182 ], [ %5099, %5101 ]
  %5104 = phi float [ %5183, %5182 ], [ %5072, %5101 ]
  %5105 = phi float [ %5184, %5182 ], [ %5073, %5101 ]
  %5106 = phi float [ %5185, %5182 ], [ %5074, %5101 ]
  %5107 = phi float [ %5186, %5182 ], [ %5075, %5101 ]
  %5108 = phi float [ %5187, %5182 ], [ %5076, %5101 ]
  %5109 = phi float [ %5188, %5182 ], [ %5077, %5101 ]
  %5110 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5103)  ; FirstbitLo(value)
  %5111 = add i32 %5110, %5084
  %5112 = and i32 %5110, 31
  %5113 = shl i32 1, %5112
  %5114 = xor i32 %5113, %5103
  %5115 = mul i32 %5111, 112
  %5116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5115, i32 undef)  ; BufferLoad(srv,index,wot)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5120 = or i32 %5115, 12
  %5121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5120, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = add i32 %5115, 44
  %5124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = add i32 %5115, 48
  %5127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5126, i32 undef)  ; BufferLoad(srv,index,wot)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.ResRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.ResRet.f32 %5127, 2
  %5131 = add i32 %5115, 80
  %5132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5131, i32 undef)  ; BufferLoad(srv,index,wot)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 1
  %5134 = extractvalue %dx.types.ResRet.f32 %5132, 2
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = select i1 %203, float %5133, float %5117
  %5137 = select i1 %203, float %5135, float %5118
  %5138 = select i1 %203, float %5134, float %5119
  %5139 = fsub fast float %5128, %164
  %5140 = fsub fast float %5129, %165
  %5141 = fsub fast float %5130, %166
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float %5139, float %5140, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = call float @dx.op.unary.f32(i32 24, float %5142)  ; Sqrt(value)
  %5144 = fdiv fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5144, %5139
  %5146 = fmul fast float %5144, %5140
  %5147 = fmul fast float %5144, %5141
  %5148 = fadd fast float %5143, %5122
  %5149 = fdiv fast float 1.000000e+00, %5148
  %5150 = fmul float %5125, %5149
  %5151 = fmul float %5150, %5150
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = and i32 %5113, %5099
  %5154 = icmp eq i32 %5153, 0
  br i1 %5154, label %5177, label %5155, !dx.controlflow.hints !76

; <label>:5155                                    ; preds = %5102
  %5156 = lshr i32 %5047, 5
  %5157 = lshr i32 %5048, 5
  %5158 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5156, i32 %5157, i32 %5111, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5159 = extractvalue %dx.types.ResRet.i32 %5158, 0
  %5160 = and i32 %5159, 3
  %5161 = icmp eq i32 %5160, 0
  %5162 = select i1 %5161, float 1.000000e+00, float 0.000000e+00
  %5163 = icmp eq i32 %5160, 3
  br i1 %5163, label %5164, label %5177

; <label>:5164                                    ; preds = %5155
  %5165 = lshr i32 %5159, 10
  %5166 = and i32 %5165, 8160
  %5167 = and i32 %5048, 31
  %5168 = or i32 %5166, %5167
  %5169 = lshr i32 %5159, 1
  %5170 = and i32 %5169, 16352
  %5171 = and i32 %5047, 31
  %5172 = or i32 %5170, %5171
  %5173 = lshr i32 %5159, 23
  %5174 = and i32 %5173, 255
  %5175 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5172, i32 %5168, i32 %5174, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 0
  br label %5177

; <label>:5177                                    ; preds = %5164, %5155, %5102
  %5178 = phi float [ %5176, %5164 ], [ %5162, %5155 ], [ 0.000000e+00, %5102 ]
  %5179 = call float @dx.op.binary.f32(i32 36, float %5178, float %5178)  ; FMin(a,b)
  %5180 = call float @dx.op.binary.f32(i32 36, float %5178, float %5179)  ; FMin(a,b)
  %5181 = fcmp fast ogt float %5180, 0.000000e+00
  br i1 %5181, label %5190, label %5182, !dx.controlflow.hints !77

; <label>:5182                                    ; preds = %5426, %5177
  %5183 = phi float [ %5104, %5177 ], [ %5466, %5426 ]
  %5184 = phi float [ %5105, %5177 ], [ %5467, %5426 ]
  %5185 = phi float [ %5106, %5177 ], [ %5468, %5426 ]
  %5186 = phi float [ %5107, %5177 ], [ %5460, %5426 ]
  %5187 = phi float [ %5108, %5177 ], [ %5461, %5426 ]
  %5188 = phi float [ %5109, %5177 ], [ %5462, %5426 ]
  %5189 = icmp eq i32 %5103, %5113
  br i1 %5189, label %5469, label %5102

; <label>:5190                                    ; preds = %5177
  %5191 = fmul fast float %5178, %5136
  %5192 = fmul fast float %5178, %5137
  %5193 = fmul fast float %5178, %5138
  %5194 = fsub fast float %5130, %3790
  %5195 = fcmp fast ogt float %5194, 0.000000e+00
  %5196 = fsub fast float %166, %3790
  %5197 = fcmp fast ogt float %5196, 0.000000e+00
  %5198 = xor i1 %5197, %5195
  %5199 = fsub fast float %3790, %5130
  %5200 = fmul fast float %5199, 2.000000e+00
  %5201 = fadd fast float %5200, %5130
  %5202 = select i1 %5198, float %5130, float %5201
  %5203 = fsub fast float %5202, %166
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5203, float %5139, float %5140, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 25, float %5204)  ; Rsqrt(value)
  %5206 = fmul fast float %5205, %5139
  %5207 = fmul fast float %5205, %5140
  %5208 = fmul fast float %5205, %5203
  %5209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5206, float %5207, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = fdiv fast float 1.000000e+00, %5210
  %5212 = fmul fast float %5211, %5209
  %5213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5196, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = fcmp fast ogt float %5213, 0.000000e+00
  %5215 = fcmp fast olt float %5213, 0.000000e+00
  %5216 = zext i1 %5214 to i32
  %5217 = zext i1 %5215 to i32
  %5218 = sub nsw i32 %5216, %5217
  %5219 = sitofp i32 %5218 to float
  %5220 = fsub fast float %5202, %3790
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5220, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fcmp fast ogt float %5221, 0.000000e+00
  %5223 = fcmp fast olt float %5221, 0.000000e+00
  %5224 = zext i1 %5222 to i32
  %5225 = zext i1 %5223 to i32
  %5226 = sub nsw i32 %5224, %5225
  %5227 = sitofp i32 %5226 to float
  %5228 = fcmp fast une float %5219, %5227
  br i1 %5228, label %5229, label %5239

; <label>:5229                                    ; preds = %5190
  %5230 = fmul fast float %5212, %5208
  %5231 = fmul fast float %5212, %5207
  %5232 = fmul fast float %5212, %5206
  %5233 = fmul fast float %5232, %5232
  %5234 = fmul fast float %5231, %5231
  %5235 = fadd fast float %5233, %5234
  %5236 = fmul fast float %5230, %5230
  %5237 = fadd fast float %5235, %5236
  %5238 = call float @dx.op.unary.f32(i32 24, float %5237)  ; Sqrt(value)
  br label %5251

; <label>:5239                                    ; preds = %5190
  %5240 = icmp slt i32 %5218, 0
  br i1 %5240, label %5241, label %5251

; <label>:5241                                    ; preds = %5239
  %5242 = fsub fast float %164, %5128
  %5243 = fsub fast float %165, %5129
  %5244 = fsub fast float %166, %5202
  %5245 = fmul fast float %5242, %5242
  %5246 = fmul fast float %5243, %5243
  %5247 = fadd fast float %5245, %5246
  %5248 = fmul fast float %5244, %5244
  %5249 = fadd fast float %5247, %5248
  %5250 = call float @dx.op.unary.f32(i32 24, float %5249)  ; Sqrt(value)
  br label %5251

; <label>:5251                                    ; preds = %5241, %5239, %5229
  %5252 = phi float [ %5238, %5229 ], [ %5250, %5241 ], [ 0.000000e+00, %5239 ]
  %5253 = and i1 %5197, %5195
  %5254 = fsub fast float -0.000000e+00, %5252
  %5255 = select i1 %5253, float -0.000000e+00, float %5254
  %5256 = fmul fast float %3791, 0x3FF7154760000000
  %5257 = fmul fast float %5256, %5255
  %5258 = fmul fast float %3792, 0x3FF7154760000000
  %5259 = fmul fast float %5258, %5255
  %5260 = fmul fast float %3793, 0x3FF7154760000000
  %5261 = fmul fast float %5260, %5255
  %5262 = call float @dx.op.unary.f32(i32 21, float %5257)  ; Exp(value)
  %5263 = call float @dx.op.unary.f32(i32 21, float %5259)  ; Exp(value)
  %5264 = call float @dx.op.unary.f32(i32 21, float %5261)  ; Exp(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = fmul fast float %5191, %5265
  %5269 = fmul fast float %5192, %5266
  %5270 = fmul fast float %5193, %5267
  %5271 = fsub fast float %5145, %4582
  %5272 = fsub fast float %5146, %4581
  %5273 = fsub fast float %5147, %4580
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float %5271, float %5272, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 25, float %5274)  ; Rsqrt(value)
  %5276 = fmul fast float %5275, %5271
  %5277 = fmul fast float %5275, %5272
  %5278 = fmul fast float %5275, %5273
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %4586, float %4587, float %4588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4578, float %4577, float %5276, float %5277, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5282 = fmul fast float %5281, %5152
  %5283 = fmul fast float %5281, %5281
  %5284 = fmul fast float %5283, %4805
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5282, %5285
  %5287 = bitcast float %5142 to i32
  %5288 = ashr i32 %5287, 1
  %5289 = sub nsw i32 1597463007, %5288
  %5290 = bitcast i32 %5289 to float
  %5291 = fmul fast float %5290, %5139
  %5292 = fmul fast float %5290, %5140
  %5293 = fmul fast float %5290, %5141
  %5294 = fsub fast float %5291, %4582
  %5295 = fsub fast float %5292, %4581
  %5296 = fsub fast float %5293, %4580
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 25, float %5297)  ; Rsqrt(value)
  %5299 = fmul fast float %5294, %5298
  %5300 = fmul fast float %5295, %5298
  %5301 = fmul fast float %5296, %5298
  %5302 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = fmul fast float %5302, %5302
  %5304 = call float @dx.op.unary.f32(i32 6, float %5279)  ; FAbs(value)
  %5305 = fsub fast float 1.000000e+00, %4592
  %5306 = call float @dx.op.binary.f32(i32 35, float %5305, float 0x3F847AE140000000)  ; FMax(a,b)
  %5307 = fmul fast float %5306, %5306
  %5308 = fmul fast float %5307, %5307
  %5309 = fsub fast float 1.000000e+00, %5308
  %5310 = fmul fast float %4596, %4596
  %5311 = fmul fast float %5310, %5309
  %5312 = fadd fast float %5311, %5308
  %5313 = bitcast float %5312 to i32
  %5314 = ashr i32 %5313, 1
  %5315 = add nsw i32 %5314, 532487669
  %5316 = bitcast i32 %5315 to float
  %5317 = fadd fast float %5316, %4596
  %5318 = fmul fast float %5308, %5303
  %5319 = fsub fast float 1.000000e+00, %5303
  %5320 = fadd fast float %5319, %5318
  %5321 = fmul fast float %5304, %5304
  %5322 = fmul fast float %5321, %5309
  %5323 = fadd fast float %5322, %5308
  %5324 = bitcast float %5323 to i32
  %5325 = ashr i32 %5324, 1
  %5326 = add nsw i32 %5325, 532487669
  %5327 = bitcast i32 %5326 to float
  %5328 = fadd fast float %5327, %5304
  %5329 = fmul fast float %5320, %5320
  %5330 = fmul fast float %5329, %5317
  %5331 = fmul fast float %5330, %5328
  %5332 = fdiv fast float 1.000000e+00, %5331
  %5333 = bitcast float %5308 to i32
  %5334 = sitofp i32 %5333 to float
  %5335 = fmul fast float %5334, 0x3FE7F73180000000
  %5336 = fadd fast float %5335, 0x41AFE27C40000000
  %5337 = fptosi float %5336 to i32
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5125, 0x3FD80E9D60000000
  %5340 = fmul fast float %5339, %5290
  %5341 = fadd fast float %5338, %5340
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = fmul fast float %5308, %5332
  %5346 = fmul fast float %5345, %5338
  %5347 = fmul fast float %5346, %5344
  %5348 = call float @dx.op.unary.f32(i32 6, float %5280)  ; FAbs(value)
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sitofp i32 %5350 to float
  %5352 = fmul fast float %5351, 5.000000e+00
  %5353 = fadd fast float %5352, 0xC1EFBF8940000000
  %5354 = fptosi float %5353 to i32
  %5355 = bitcast i32 %5354 to float
  %5356 = fsub fast float 1.000000e+00, %4589
  %5357 = fsub fast float 1.000000e+00, %4590
  %5358 = fsub fast float 1.000000e+00, %4594
  %5359 = fmul fast float %5355, %5356
  %5360 = fmul fast float %5355, %5357
  %5361 = fmul fast float %5355, %5358
  %5362 = fadd fast float %5359, %4589
  %5363 = fadd fast float %5360, %4590
  %5364 = fadd fast float %5361, %4594
  br i1 %4720, label %5365, label %5388

; <label>:5365                                    ; preds = %5251
  %5366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3389, float %5348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.ResRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.ResRet.f32 %5366, 2
  %5370 = fadd fast float %5367, -5.000000e-01
  %5371 = fadd fast float %5368, -5.000000e-01
  %5372 = fadd fast float %5369, -5.000000e-01
  %5373 = fmul fast float %4589, 4.000000e+00
  %5374 = fmul fast float %5373, %5356
  %5375 = fmul fast float %5374, %5370
  %5376 = fmul fast float %4590, 4.000000e+00
  %5377 = fmul fast float %5376, %5357
  %5378 = fmul fast float %5377, %5371
  %5379 = fmul fast float %4594, 4.000000e+00
  %5380 = fmul fast float %5379, %5358
  %5381 = fmul fast float %5380, %5372
  %5382 = fadd fast float %5375, %5362
  %5383 = fadd fast float %5378, %5363
  %5384 = fadd fast float %5381, %5364
  %5385 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  br label %5388

; <label>:5388                                    ; preds = %5365, %5251
  %5389 = phi float [ %5385, %5365 ], [ %5362, %5251 ]
  %5390 = phi float [ %5386, %5365 ], [ %5363, %5251 ]
  %5391 = phi float [ %5387, %5365 ], [ %5364, %5251 ]
  %5392 = fmul fast float %5279, 9.843750e-01
  %5393 = fadd fast float %5392, 7.812500e-03
  %5394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5393, float %4710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 3
  %5397 = fmul fast float %5395, %4589
  %5398 = fmul fast float %5395, %4590
  %5399 = fmul fast float %5395, %4594
  %5400 = fadd fast float %5397, %5396
  %5401 = fadd fast float %5398, %5396
  %5402 = fadd fast float %5399, %5396
  br i1 %4720, label %5403, label %5426

; <label>:5403                                    ; preds = %5388
  %5404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3389, float %5279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.ResRet.f32 %5404, 2
  %5408 = fadd fast float %5405, -5.000000e-01
  %5409 = fadd fast float %5406, -5.000000e-01
  %5410 = fadd fast float %5407, -5.000000e-01
  %5411 = fmul fast float %4589, 4.000000e+00
  %5412 = fmul fast float %5411, %5356
  %5413 = fmul fast float %5412, %5408
  %5414 = fmul fast float %4590, 4.000000e+00
  %5415 = fmul fast float %5414, %5357
  %5416 = fmul fast float %5415, %5409
  %5417 = fmul fast float %4594, 4.000000e+00
  %5418 = fmul fast float %5417, %5358
  %5419 = fmul fast float %5418, %5410
  %5420 = fadd fast float %5413, %5400
  %5421 = fadd fast float %5416, %5401
  %5422 = fadd fast float %5419, %5402
  %5423 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5424 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  br label %5426

; <label>:5426                                    ; preds = %5403, %5388
  %5427 = phi float [ %5423, %5403 ], [ %5400, %5388 ]
  %5428 = phi float [ %5424, %5403 ], [ %5401, %5388 ]
  %5429 = phi float [ %5425, %5403 ], [ %5402, %5388 ]
  %5430 = call float @dx.op.binary.f32(i32 35, float %5428, float %5429)  ; FMax(a,b)
  %5431 = call float @dx.op.binary.f32(i32 35, float %5427, float %5430)  ; FMax(a,b)
  %5432 = fsub fast float 1.000000e+00, %5431
  %5433 = fmul fast float %5389, %5347
  %5434 = fmul fast float %5390, %5347
  %5435 = fmul fast float %5391, %5347
  %5436 = fsub fast float 1.000000e+00, %5280
  %5437 = bitcast float %5436 to i32
  %5438 = sitofp i32 %5437 to float
  %5439 = fmul fast float %5438, 5.000000e+00
  %5440 = fadd fast float %5439, 0xC1EFBF8940000000
  %5441 = fptosi float %5440 to i32
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5442, %3390
  %5444 = fmul fast float %5432, %5443
  %5445 = fmul fast float %5444, %4770
  %5446 = fmul fast float %5444, %4771
  %5447 = fmul fast float %5444, %4772
  %5448 = fadd fast float %5445, %5433
  %5449 = fadd fast float %5446, %5434
  %5450 = fadd fast float %5447, %5435
  %5451 = fmul fast float %5268, %3386
  %5452 = fmul fast float %5451, %5286
  %5453 = fmul fast float %5452, %5432
  %5454 = fmul fast float %5269, %3386
  %5455 = fmul fast float %5454, %5286
  %5456 = fmul fast float %5455, %5432
  %5457 = fmul fast float %5270, %3386
  %5458 = fmul fast float %5457, %5286
  %5459 = fmul fast float %5458, %5432
  %5460 = fadd fast float %5453, %5107
  %5461 = fadd fast float %5456, %5108
  %5462 = fadd fast float %5459, %5109
  %5463 = fmul fast float %5452, %5448
  %5464 = fmul fast float %5455, %5449
  %5465 = fmul fast float %5458, %5450
  %5466 = fadd fast float %5463, %5104
  %5467 = fadd fast float %5464, %5105
  %5468 = fadd fast float %5465, %5106
  br label %5182

; <label>:5469                                    ; preds = %5182
  br label %5470

; <label>:5470                                    ; preds = %5469, %5070
  %5471 = phi float [ %5072, %5070 ], [ %5183, %5469 ]
  %5472 = phi float [ %5073, %5070 ], [ %5184, %5469 ]
  %5473 = phi float [ %5074, %5070 ], [ %5185, %5469 ]
  %5474 = phi float [ %5075, %5070 ], [ %5186, %5469 ]
  %5475 = phi float [ %5076, %5070 ], [ %5187, %5469 ]
  %5476 = phi float [ %5077, %5070 ], [ %5188, %5469 ]
  %5477 = add i32 %5071, 1
  %5478 = icmp ugt i32 %5477, %5067
  br i1 %5478, label %5479, label %5070

; <label>:5479                                    ; preds = %5470
  br label %5480

; <label>:5480                                    ; preds = %5479, %5046, %5036
  %5481 = phi float [ %5037, %5036 ], [ %5037, %5046 ], [ %5471, %5479 ]
  %5482 = phi float [ %5038, %5036 ], [ %5038, %5046 ], [ %5472, %5479 ]
  %5483 = phi float [ %5039, %5036 ], [ %5039, %5046 ], [ %5473, %5479 ]
  %5484 = phi float [ %5040, %5036 ], [ %5040, %5046 ], [ %5474, %5479 ]
  %5485 = phi float [ %5041, %5036 ], [ %5041, %5046 ], [ %5475, %5479 ]
  %5486 = phi float [ %5042, %5036 ], [ %5042, %5046 ], [ %5476, %5479 ]
  %5487 = call float @dx.op.unary.f32(i32 24, float %4583)  ; Sqrt(value)
  %5488 = call float @dx.op.unary.f32(i32 24, float %4584)  ; Sqrt(value)
  %5489 = call float @dx.op.unary.f32(i32 24, float %4585)  ; Sqrt(value)
  %5490 = fmul fast float %5487, %5484
  %5491 = fmul fast float %5488, %5485
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 0
  br i1 %203, label %5494, label %5514

; <label>:5494                                    ; preds = %5480
  %5495 = fadd fast float %5486, %3392
  %5496 = fmul fast float %5495, %3393
  %5497 = fsub fast float 1.000000e+00, %3393
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 3
  %5501 = fmul fast float %5500, %5498
  %5502 = fadd fast float %5501, %5496
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = fmul fast float %5504, %4776
  %5506 = fsub fast float %5502, %5505
  %5507 = fadd fast float %5491, %5490
  %5508 = fmul fast float %5493, %5507
  %5509 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5510 = fsub fast float %5506, %5509
  %5511 = extractvalue %dx.types.CBufRet.f32 %5499, 2
  %5512 = fmul fast float %5510, %5511
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  br label %5530

; <label>:5514                                    ; preds = %5480
  %5515 = fmul fast float %5489, %5486
  %5516 = fmul fast float %5493, %5490
  %5517 = fmul fast float %5493, %5491
  %5518 = fmul fast float %5515, %5493
  %5519 = add i32 %33, 356
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = and i32 %5521, 32
  %5523 = icmp eq i32 %5522, 0
  br i1 %5523, label %5530, label %5524

; <label>:5524                                    ; preds = %5514
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = fmul fast float %5526, 0x3FE99999A0000000
  %5528 = fadd fast float %5526, %5516
  %5529 = fadd fast float %5527, %5518
  br label %5530

; <label>:5530                                    ; preds = %5524, %5514, %5494
  %5531 = phi float [ %5508, %5494 ], [ %5528, %5524 ], [ %5516, %5514 ]
  %5532 = phi float [ %5513, %5494 ], [ %5517, %5524 ], [ %5517, %5514 ]
  %5533 = phi float [ 1.000000e+00, %5494 ], [ %5529, %5524 ], [ %5518, %5514 ]
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = fmul fast float %5535, %5482
  %5537 = fmul fast float %5535, %5483
  %5538 = fadd fast float %5482, %5481
  %5539 = select i1 %203, float %5538, float %5481
  %5540 = fmul float %5539, %5535
  %5541 = select i1 %203, float 0.000000e+00, float %5536
  %5542 = select i1 %203, float 0.000000e+00, float %5537
  %5543 = fmul fast float %5531, %5487
  %5544 = fmul fast float %5532, %5488
  %5545 = fmul fast float %5533, %5489
  %5546 = fadd fast float %5540, %5543
  %5547 = fadd fast float %5541, %5544
  %5548 = fadd fast float %5542, %5545
  %5549 = select i1 %203, float %5532, float %5547
  %5550 = select i1 %203, float %5533, float %5548
  %5551 = call float @dx.op.binary.f32(i32 36, float %5546, float 3.225500e+04)  ; FMin(a,b)
  %5552 = call float @dx.op.binary.f32(i32 36, float %5549, float 3.225500e+04)  ; FMin(a,b)
  %5553 = call float @dx.op.binary.f32(i32 36, float %5550, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
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
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !74}
!48 = !{!49, !72, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71}
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
!70 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!71 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

