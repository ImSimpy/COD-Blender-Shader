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
; shader hash: 037ea8a614ec16fd75a72d02a096cea0
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
  %897 = and i32 %896, 26624
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %922, label %899

; <label>:899                                     ; preds = %891
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 16384
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
  %913 = extractvalue %dx.types.ResRet.f32 %912, 0
  %914 = add i32 %32, 96
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = lshr i32 %916, 24
  %918 = uitofp i32 %917 to float
  %919 = fmul fast float %913, 0x3F70101020000000
  %920 = select i1 %906, float 0x3F70101020000000, float %919
  %921 = fmul fast float %920, %918
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
  %1487 = and i32 %1486, 26624
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1512, label %1489

; <label>:1489                                    ; preds = %1481
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 16384
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
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = add i32 %32, 112
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = lshr i32 %1506, 24
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1503, 0x3F70101020000000
  %1510 = select i1 %1496, float 0x3F70101020000000, float %1509
  %1511 = fmul fast float %1510, %1508
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
  %1645 = and i32 %1543, 16384
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
  %2266 = and i32 %2265, 26624
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2291, label %2268

; <label>:2268                                    ; preds = %2260
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 16384
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
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = add i32 %32, 128
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = lshr i32 %2285, 24
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2282, 0x3F70101020000000
  %2289 = select i1 %2275, float 0x3F70101020000000, float %2288
  %2290 = fmul fast float %2289, %2287
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
  %2424 = and i32 %2322, 16384
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
  %3045 = and i32 %3044, 26624
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3070, label %3047

; <label>:3047                                    ; preds = %3039
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 16384
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
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = add i32 %32, 144
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = lshr i32 %3064, 24
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3061, 0x3F70101020000000
  %3068 = select i1 %3054, float 0x3F70101020000000, float %3067
  %3069 = fmul fast float %3068, %3066
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
  %3203 = and i32 %3101, 16384
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
  br i1 %3319, label %3834, label %3320

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
  br i1 %3381, label %3803, label %3382

; <label>:3382                                    ; preds = %3320
  br label %3383

; <label>:3383                                    ; preds = %3504, %3382
  %3384 = phi i32 [ %3406, %3504 ], [ %3380, %3382 ]
  %3385 = phi float [ %3505, %3504 ], [ 0.000000e+00, %3382 ]
  %3386 = phi float [ %3506, %3504 ], [ %3290, %3382 ]
  %3387 = phi float [ %3507, %3504 ], [ %3288, %3382 ]
  %3388 = phi float [ %3508, %3504 ], [ %3287, %3382 ]
  %3389 = phi float [ %3509, %3504 ], [ 0.000000e+00, %3382 ]
  %3390 = phi float [ %3510, %3504 ], [ %3281, %3382 ]
  %3391 = phi float [ %3511, %3504 ], [ %3282, %3382 ]
  %3392 = phi float [ %3512, %3504 ], [ %3283, %3382 ]
  %3393 = phi float [ %3513, %3504 ], [ %3316, %3382 ]
  %3394 = phi float [ %3514, %3504 ], [ %3317, %3382 ]
  %3395 = phi float [ %3515, %3504 ], [ %3318, %3382 ]
  %3396 = phi float [ %3516, %3504 ], [ %3286, %3382 ]
  %3397 = phi float [ %3517, %3504 ], [ %3285, %3382 ]
  %3398 = phi float [ %3518, %3504 ], [ 0.000000e+00, %3382 ]
  %3399 = phi float [ %3519, %3504 ], [ %3284, %3382 ]
  %3400 = phi float [ %3520, %3504 ], [ %3278, %3382 ]
  %3401 = phi float [ %3521, %3504 ], [ %3279, %3382 ]
  %3402 = phi float [ %3522, %3504 ], [ %3280, %3382 ]
  %3403 = shl nuw nsw i32 %3384, 2
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = lshr i32 %3405, 16
  %3407 = shl i32 %3405, 8
  %3408 = and i32 %3407, 16776960
  %3409 = or i32 %3408, 48
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = or i32 %3408, 64
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.i32 %3415, 1
  %3418 = or i32 %3408, 80
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3422 = or i32 %3408, 96
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = or i32 %3408, 112
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3431 = or i32 %3408, 128
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = or i32 %3408, 144
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3443 = or i32 %3408, 160
  %3444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = extractvalue %dx.types.ResRet.f32 %3444, 3
  %3449 = or i32 %3408, 192
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = or i32 %3408, 208
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = or i32 %3408, 248
  %3456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.f32 %3456, 1
  %3459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.ResRet.f32 %3459, 3
  %3464 = call float @dx.op.dot4.f32(i32 56, float %3460, float %3461, float %3462, float %3463, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3465 = or i32 %3408, 16
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3471 = call float @dx.op.dot4.f32(i32 56, float %3467, float %3468, float %3469, float %3470, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3472 = or i32 %3408, 32
  %3473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = extractvalue %dx.types.ResRet.f32 %3473, 3
  %3478 = call float @dx.op.dot4.f32(i32 56, float %3474, float %3475, float %3476, float %3477, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3479 = call float @dx.op.unary.f32(i32 27, float %3464)  ; Round_ni(value)
  %3480 = call float @dx.op.unary.f32(i32 6, float %3479)  ; FAbs(value)
  %3481 = call float @dx.op.unary.f32(i32 27, float %3471)  ; Round_ni(value)
  %3482 = call float @dx.op.unary.f32(i32 6, float %3481)  ; FAbs(value)
  %3483 = call float @dx.op.unary.f32(i32 6, float %3478)  ; FAbs(value)
  %3484 = call float @dx.op.unary.f32(i32 27, float %3483)  ; Round_ni(value)
  %3485 = fadd fast float %3482, %3480
  %3486 = fadd fast float %3485, %3484
  %3487 = fcmp fast oeq float %3486, 0.000000e+00
  %3488 = call float @dx.op.dot4.f32(i32 56, float %3460, float %3461, float %3462, float %3463, float %3327, float %3328, float %3329, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3489 = call float @dx.op.dot4.f32(i32 56, float %3467, float %3468, float %3469, float %3470, float %3327, float %3328, float %3329, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3490 = call float @dx.op.dot4.f32(i32 56, float %3460, float %3461, float %3462, float %3463, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3491 = call float @dx.op.dot4.f32(i32 56, float %3467, float %3468, float %3469, float %3470, float %3330, float %3331, float %3332, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3492 = fsub fast float %3488, %3464
  %3493 = fsub fast float %3490, %3464
  %3494 = fsub fast float %3489, %3471
  %3495 = fsub fast float %3491, %3471
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3499 = fadd fast float %3498, %3496
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3502 = fcmp fast ogt float %3500, %3501
  %3503 = and i1 %3487, %3502
  br i1 %3503, label %3524, label %3504

; <label>:3504                                    ; preds = %3789, %3607, %3524, %3383
  %3505 = phi float [ %3385, %3524 ], [ %3610, %3607 ], [ %3610, %3789 ], [ %3385, %3383 ]
  %3506 = phi float [ %3386, %3524 ], [ %3386, %3607 ], [ %3764, %3789 ], [ %3386, %3383 ]
  %3507 = phi float [ %3387, %3524 ], [ %3387, %3607 ], [ %3762, %3789 ], [ %3387, %3383 ]
  %3508 = phi float [ %3388, %3524 ], [ %3388, %3607 ], [ %3734, %3789 ], [ %3388, %3383 ]
  %3509 = phi float [ %3389, %3524 ], [ %3389, %3607 ], [ %3732, %3789 ], [ %3389, %3383 ]
  %3510 = phi float [ %3390, %3524 ], [ %3390, %3607 ], [ %3799, %3789 ], [ %3390, %3383 ]
  %3511 = phi float [ %3391, %3524 ], [ %3391, %3607 ], [ %3800, %3789 ], [ %3391, %3383 ]
  %3512 = phi float [ %3392, %3524 ], [ %3392, %3607 ], [ %3801, %3789 ], [ %3392, %3383 ]
  %3513 = phi float [ %3393, %3524 ], [ %3393, %3607 ], [ %3713, %3789 ], [ %3393, %3383 ]
  %3514 = phi float [ %3394, %3524 ], [ %3394, %3607 ], [ %3714, %3789 ], [ %3394, %3383 ]
  %3515 = phi float [ %3395, %3524 ], [ %3395, %3607 ], [ %3715, %3789 ], [ %3395, %3383 ]
  %3516 = phi float [ %3396, %3524 ], [ %3396, %3607 ], [ %3742, %3789 ], [ %3396, %3383 ]
  %3517 = phi float [ %3397, %3524 ], [ %3397, %3607 ], [ %3739, %3789 ], [ %3397, %3383 ]
  %3518 = phi float [ %3398, %3524 ], [ %3398, %3607 ], [ %3736, %3789 ], [ %3398, %3383 ]
  %3519 = phi float [ %3399, %3524 ], [ %3399, %3607 ], [ %3730, %3789 ], [ %3399, %3383 ]
  %3520 = phi float [ %3400, %3524 ], [ %3400, %3607 ], [ %3725, %3789 ], [ %3400, %3383 ]
  %3521 = phi float [ %3401, %3524 ], [ %3401, %3607 ], [ %3726, %3789 ], [ %3401, %3383 ]
  %3522 = phi float [ %3402, %3524 ], [ %3402, %3607 ], [ %3727, %3789 ], [ %3402, %3383 ]
  %3523 = icmp eq i32 %3406, 0
  br i1 %3523, label %3802, label %3383

; <label>:3524                                    ; preds = %3383
  %3525 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3526 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3527 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3529 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3530 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3531 = extractvalue %dx.types.ResRet.i32 %3415, 3
  %3532 = extractvalue %dx.types.ResRet.i32 %3415, 2
  %3533 = bitcast float %3525 to i32
  %3534 = add i32 %3531, 0
  %3535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3535, %dx.types.Handle %3536, float %3464, float %3471, float undef, float undef, i32 0, i32 0, i32 undef, float %3492, float %3494, float undef, float %3493, float %3495, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = fmul fast float %3538, %3530
  %3540 = fadd fast float %3539, %3529
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = fmul fast float %3464, %3424
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3471, float %3542)  ; FMad(a,b,c)
  %3544 = fadd fast float %3543, %3528
  %3545 = fmul fast float %3464, %3426
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3471, float %3545)  ; FMad(a,b,c)
  %3547 = fadd fast float %3546, %3527
  %3548 = fmul fast float %3492, %3424
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3494, float %3548)  ; FMad(a,b,c)
  %3550 = fmul fast float %3492, %3426
  %3551 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3494, float %3550)  ; FMad(a,b,c)
  %3552 = fmul fast float %3493, %3424
  %3553 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3495, float %3552)  ; FMad(a,b,c)
  %3554 = fmul fast float %3493, %3426
  %3555 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3495, float %3554)  ; FMad(a,b,c)
  %3556 = add i32 %3532, 0
  %3557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3556, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3558 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3557, %dx.types.Handle %3536, float %3544, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3549, float %3551, float undef, float %3553, float %3555, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = and i32 %3533, 1024
  %3561 = icmp ne i32 %3560, 0
  %3562 = fcmp fast ogt float %3559, 0x3FE0101020000000
  %3563 = uitofp i1 %3562 to float
  %3564 = select i1 %3561, float %3563, float %3559
  %3565 = and i32 %3533, 8192
  %3566 = icmp ne i32 %3565, 0
  %3567 = select i1 %3566, float %3526, float 1.000000e+00
  %3568 = fmul fast float %3464, 2.000000e+00
  %3569 = fadd fast float %3568, -1.000000e+00
  %3570 = call float @dx.op.unary.f32(i32 6, float %3569)  ; FAbs(value)
  %3571 = fmul fast float %3570, %3457
  %3572 = fsub fast float %3571, %3457
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = fmul fast float %3471, 2.000000e+00
  %3575 = fadd fast float %3574, -1.000000e+00
  %3576 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3577 = fmul fast float %3576, %3458
  %3578 = fsub fast float %3577, %3458
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = fmul fast float %3483, %3420
  %3581 = fsub fast float %3580, %3420
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3541, %3567
  %3584 = fmul fast float %3583, %3538
  %3585 = fmul fast float %3584, %3573
  %3586 = fmul fast float %3585, %3564
  %3587 = fmul fast float %3586, %3579
  %3588 = fmul fast float %3587, %3582
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 1
  %3591 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3592 = fsub fast float %3500, %3591
  %3593 = fmul fast float %3592, %3590
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fmul fast float %3588, %3421
  %3596 = fadd fast float %3588, %3421
  %3597 = fmul fast float %3596, %3430
  %3598 = fsub fast float %3597, %3430
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3600 = and i32 %3533, 128
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3599, float %3595
  %3603 = fmul fast float %3602, %3594
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = fcmp fast ugt float %3603, %3605
  br i1 %3606, label %3607, label %3504

; <label>:3607                                    ; preds = %3524
  %3608 = select i1 %3566, float %3603, float 0.000000e+00
  %3609 = fadd fast float %3608, %3385
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  br i1 %3566, label %3504, label %3611

; <label>:3611                                    ; preds = %3607
  %3612 = and i32 %3533, 4
  %3613 = and i32 %3533, 8
  %3614 = add i32 %3416, 0
  %3615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3614, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3615, %dx.types.Handle %3616, float %3544, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3549, float %3551, float undef, float %3553, float %3555, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3622 = bitcast float %3442 to i32
  %3623 = and i32 %3622, 255
  %3624 = uitofp i32 %3623 to float
  %3625 = lshr i32 %3622, 8
  %3626 = and i32 %3625, 255
  %3627 = uitofp i32 %3626 to float
  %3628 = fmul fast float %3621, %3624
  %3629 = fadd fast float %3628, %3627
  %3630 = fmul fast float %3629, 0x3F70101000000000
  %3631 = add i32 %3417, 0
  %3632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3631, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3633 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3632, %dx.types.Handle %3616, float %3544, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3549, float %3551, float undef, float %3553, float %3555, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = bitcast float %3436 to i32
  %3639 = and i32 %3638, 255
  %3640 = uitofp i32 %3639 to float
  %3641 = lshr i32 %3638, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = lshr i32 %3638, 16
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = fmul fast float %3646, 0x3F70101000000000
  %3648 = fmul fast float %3634, %3640
  %3649 = fadd fast float %3648, %3643
  %3650 = fmul fast float %3649, 0x3F70101000000000
  %3651 = fadd fast float %3635, -5.000000e-01
  %3652 = fadd fast float %3637, -5.000000e-01
  %3653 = fmul fast float %3651, %3647
  %3654 = fmul fast float %3652, %3647
  %3655 = fadd fast float %3653, 5.000000e-01
  %3656 = fadd fast float %3654, 5.000000e-01
  %3657 = fmul fast float %3618, %3445
  %3658 = fmul fast float %3619, %3446
  %3659 = fmul fast float %3620, %3447
  %3660 = fmul fast float %3655, 2.000000e+00
  %3661 = fadd fast float %3660, -1.000000e+00
  %3662 = fmul fast float %3656, 2.000000e+00
  %3663 = fadd fast float %3662, -1.000000e+00
  %3664 = fadd fast float %3661, %3663
  %3665 = fmul fast float %3664, 5.000000e-01
  %3666 = fsub fast float %3661, %3663
  %3667 = fmul fast float %3666, 5.000000e-01
  %3668 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3669 = fsub fast float 1.000000e+00, %3668
  %3670 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3671 = fsub fast float %3669, %3670
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3667, float %3671, float %3665, float %3667, float %3671)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call float @dx.op.unary.f32(i32 25, float %3672)  ; Rsqrt(value)
  %3674 = fmul fast float %3665, %3673
  %3675 = fmul fast float %3667, %3673
  %3676 = fmul fast float %3673, %3671
  %3677 = fmul fast float %3676, %3411
  %3678 = fmul fast float %3676, %3412
  %3679 = fmul fast float %3676, %3413
  %3680 = fmul fast float %3674, %3433
  %3681 = fmul fast float %3674, %3434
  %3682 = fmul fast float %3674, %3435
  %3683 = fadd fast float %3680, %3677
  %3684 = fadd fast float %3681, %3678
  %3685 = fadd fast float %3682, %3679
  %3686 = fmul fast float %3675, %3439
  %3687 = fmul fast float %3675, %3440
  %3688 = fmul fast float %3675, %3441
  %3689 = fadd fast float %3683, %3686
  %3690 = fadd fast float %3684, %3687
  %3691 = fadd fast float %3685, %3688
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3690, float %3691, float %3689, float %3690, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.unary.f32(i32 25, float %3692)  ; Rsqrt(value)
  %3694 = fmul fast float %3689, %3693
  %3695 = fmul fast float %3690, %3693
  %3696 = fmul fast float %3691, %3693
  %3697 = icmp ne i32 %3613, 0
  %3698 = select i1 %3697, float 1.000000e+00, float 0.000000e+00
  %3699 = fmul fast float %3603, %3698
  %3700 = and i32 %3533, 1
  %3701 = icmp eq i32 %3700, 0
  br i1 %3701, label %3702, label %3706

; <label>:3702                                    ; preds = %3611
  %3703 = fsub fast float %3694, %3393
  %3704 = fsub fast float %3695, %3394
  %3705 = fsub fast float %3696, %3395
  br label %3706

; <label>:3706                                    ; preds = %3702, %3611
  %3707 = phi float [ %3703, %3702 ], [ %3694, %3611 ]
  %3708 = phi float [ %3704, %3702 ], [ %3695, %3611 ]
  %3709 = phi float [ %3705, %3702 ], [ %3696, %3611 ]
  %3710 = fmul float %3709, %3699
  %3711 = fmul float %3708, %3699
  %3712 = fmul float %3707, %3699
  %3713 = fadd fast float %3712, %3393
  %3714 = fadd fast float %3711, %3394
  %3715 = fadd fast float %3710, %3395
  %3716 = icmp ne i32 %3612, 0
  %3717 = select i1 %3716, float 1.000000e+00, float 0.000000e+00
  %3718 = fmul fast float %3603, %3717
  %3719 = fsub fast float %3657, %3400
  %3720 = fsub fast float %3658, %3401
  %3721 = fsub fast float %3659, %3402
  %3722 = fmul fast float %3719, %3718
  %3723 = fmul fast float %3720, %3718
  %3724 = fmul fast float %3721, %3718
  %3725 = fadd fast float %3722, %3400
  %3726 = fadd fast float %3723, %3401
  %3727 = fadd fast float %3724, %3402
  %3728 = fsub fast float %3630, %3399
  %3729 = fmul fast float %3728, %3718
  %3730 = fadd fast float %3729, %3399
  %3731 = fmul fast float %3718, %3389
  %3732 = fsub fast float %3389, %3731
  %3733 = fmul fast float %3718, %3388
  %3734 = fsub fast float %3388, %3733
  %3735 = fadd fast float %3603, %3398
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3737 = fsub fast float %3650, %3397
  %3738 = fmul fast float %3737, %3699
  %3739 = fadd fast float %3738, %3397
  %3740 = fsub fast float %3636, %3396
  %3741 = fmul fast float %3740, %3699
  %3742 = fadd fast float %3741, %3396
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = fmul fast float %3746, %3743
  %3748 = fadd fast float %3747, %3745
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = bitcast float %3448 to i32
  %3751 = and i32 %3750, 65535
  %3752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3751)  ; LegacyF16ToF32(value)
  %3753 = lshr i32 %3750, 16
  %3754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3753)  ; LegacyF16ToF32(value)
  %3755 = fcmp fast oge float %3752, 0.000000e+00
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = select i1 %3755, float %3752, float %3757
  %3759 = fadd fast float %3758, %3754
  %3760 = fsub fast float %3749, %3387
  %3761 = fmul fast float %3760, %3603
  %3762 = fadd fast float %3761, %3387
  %3763 = fmul fast float %3759, %3603
  %3764 = call float @dx.op.binary.f32(i32 35, float %3386, float %3763)  ; FMax(a,b)
  %3765 = and i32 %3533, 16
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3789, label %3767

; <label>:3767                                    ; preds = %3706
  %3768 = bitcast float %3454 to i32
  %3769 = add i32 %3451, 0
  %3770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3770, %dx.types.Handle %3616, float %3544, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3549, float %3551, float undef, float %3553, float %3555, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = and i32 %3768, 65535
  %3776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3775)  ; LegacyF16ToF32(value)
  %3777 = fmul fast float %3772, %3445
  %3778 = fmul fast float %3773, %3446
  %3779 = fmul fast float %3774, %3447
  %3780 = and i32 %3533, 16384
  %3781 = icmp ne i32 %3780, 0
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = select i1 %3781, float %3783, float 1.000000e+00
  %3785 = fmul fast float %3784, %3776
  %3786 = fmul fast float %3777, %3785
  %3787 = fmul fast float %3778, %3785
  %3788 = fmul fast float %3779, %3785
  br label %3789

; <label>:3789                                    ; preds = %3767, %3706
  %3790 = phi float [ %3786, %3767 ], [ 0.000000e+00, %3706 ]
  %3791 = phi float [ %3787, %3767 ], [ 0.000000e+00, %3706 ]
  %3792 = phi float [ %3788, %3767 ], [ 0.000000e+00, %3706 ]
  %3793 = fsub fast float %3790, %3390
  %3794 = fsub fast float %3791, %3391
  %3795 = fsub fast float %3792, %3392
  %3796 = fmul fast float %3793, %3603
  %3797 = fmul fast float %3794, %3603
  %3798 = fmul fast float %3795, %3603
  %3799 = fadd fast float %3796, %3390
  %3800 = fadd fast float %3797, %3391
  %3801 = fadd fast float %3798, %3392
  br label %3504

; <label>:3802                                    ; preds = %3504
  br label %3803

; <label>:3803                                    ; preds = %3802, %3320
  %3804 = phi float [ 0.000000e+00, %3320 ], [ %3505, %3802 ]
  %3805 = phi float [ %3290, %3320 ], [ %3506, %3802 ]
  %3806 = phi float [ %3288, %3320 ], [ %3507, %3802 ]
  %3807 = phi float [ %3287, %3320 ], [ %3508, %3802 ]
  %3808 = phi float [ 0.000000e+00, %3320 ], [ %3509, %3802 ]
  %3809 = phi float [ %3281, %3320 ], [ %3510, %3802 ]
  %3810 = phi float [ %3282, %3320 ], [ %3511, %3802 ]
  %3811 = phi float [ %3283, %3320 ], [ %3512, %3802 ]
  %3812 = phi float [ %3316, %3320 ], [ %3513, %3802 ]
  %3813 = phi float [ %3317, %3320 ], [ %3514, %3802 ]
  %3814 = phi float [ %3318, %3320 ], [ %3515, %3802 ]
  %3815 = phi float [ %3286, %3320 ], [ %3516, %3802 ]
  %3816 = phi float [ %3285, %3320 ], [ %3517, %3802 ]
  %3817 = phi float [ 0.000000e+00, %3320 ], [ %3518, %3802 ]
  %3818 = phi float [ %3284, %3320 ], [ %3519, %3802 ]
  %3819 = phi float [ %3278, %3320 ], [ %3520, %3802 ]
  %3820 = phi float [ %3279, %3320 ], [ %3521, %3802 ]
  %3821 = phi float [ %3280, %3320 ], [ %3522, %3802 ]
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3813, float %3814, float %3812, float %3813, float %3814)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call float @dx.op.unary.f32(i32 25, float %3822)  ; Rsqrt(value)
  %3824 = fmul fast float %3823, %3812
  %3825 = fmul fast float %3823, %3813
  %3826 = fmul fast float %3823, %3814
  %3827 = fadd fast float %3817, %947
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3825, float %3826, float %3824, float %3825, float %3826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3830 = call float @dx.op.unary.f32(i32 25, float %3829)  ; Rsqrt(value)
  %3831 = fmul fast float %3830, %3824
  %3832 = fmul fast float %3830, %3825
  %3833 = fmul fast float %3830, %3826
  br label %3834

; <label>:3834                                    ; preds = %3803, %3275
  %3835 = phi float [ %3831, %3803 ], [ %3316, %3275 ]
  %3836 = phi float [ %3832, %3803 ], [ %3317, %3275 ]
  %3837 = phi float [ %3833, %3803 ], [ %3318, %3275 ]
  %3838 = phi float [ %3819, %3803 ], [ %3278, %3275 ]
  %3839 = phi float [ %3820, %3803 ], [ %3279, %3275 ]
  %3840 = phi float [ %3821, %3803 ], [ %3280, %3275 ]
  %3841 = phi float [ %3809, %3803 ], [ %3281, %3275 ]
  %3842 = phi float [ %3810, %3803 ], [ %3282, %3275 ]
  %3843 = phi float [ %3811, %3803 ], [ %3283, %3275 ]
  %3844 = phi float [ %3818, %3803 ], [ %3284, %3275 ]
  %3845 = phi float [ %3828, %3803 ], [ %947, %3275 ]
  %3846 = phi float [ %3816, %3803 ], [ %3285, %3275 ]
  %3847 = phi float [ %3815, %3803 ], [ %3286, %3275 ]
  %3848 = phi float [ %3808, %3803 ], [ 0.000000e+00, %3275 ]
  %3849 = phi float [ %3807, %3803 ], [ %3287, %3275 ]
  %3850 = phi float [ %3804, %3803 ], [ 0.000000e+00, %3275 ]
  %3851 = phi float [ %3805, %3803 ], [ %3290, %3275 ]
  %3852 = phi float [ %3806, %3803 ], [ %3288, %3275 ]
  %3853 = fadd fast float %3844, 0xBFB99999A0000000
  %3854 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3855 = fmul fast float %3854, 0x3FF1C71C80000000
  %3856 = call float @dx.op.binary.f32(i32 36, float %3844, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3857 = fsub fast float 1.000000e+00, %3855
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = fmul fast float %3858, %3838
  %3860 = fmul fast float %3858, %3839
  %3861 = fmul fast float %3858, %3840
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = fmul fast float %3855, %3838
  %3866 = fmul fast float %3855, %3839
  %3867 = fmul fast float %3855, %3840
  %3868 = fadd fast float %3865, %3856
  %3869 = fadd fast float %3866, %3856
  %3870 = fadd fast float %3867, %3856
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3874 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.i32 %3875, 3
  %3877 = and i32 %3876, 8
  %3878 = icmp ne i32 %3877, 0
  %3879 = call float @dx.op.binary.f32(i32 35, float %3862, float %3838)  ; FMax(a,b)
  %3880 = call float @dx.op.binary.f32(i32 35, float %3863, float %3838)  ; FMax(a,b)
  %3881 = call float @dx.op.binary.f32(i32 35, float %3864, float %3838)  ; FMax(a,b)
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3862, float %3863, float %3864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = select i1 %202, float %3838, float %3862
  %3884 = select i1 %202, float %3882, float %3863
  %3885 = select i1 %202, float 1.000000e+00, float %3864
  %3886 = select i1 %3878, float %3879, float %3883
  %3887 = select i1 %3878, float %3880, float %3884
  %3888 = select i1 %3878, float %3881, float %3885
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3893 = fadd fast float %3890, %163
  %3894 = fadd fast float %3891, %164
  %3895 = fadd fast float %3892, %165
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3899 = fsub fast float %3893, %3897
  %3900 = fsub fast float %3894, %3898
  %3901 = fmul fast float %3899, %3899
  %3902 = fmul fast float %3900, %3900
  %3903 = fadd fast float %3901, %3902
  %3904 = call float @dx.op.unary.f32(i32 24, float %3903)  ; Sqrt(value)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3906 = fcmp fast olt float %3904, %3905
  br i1 %3906, label %3907, label %3974

; <label>:3907                                    ; preds = %3834
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3915 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3916 = extractvalue %dx.types.CBufRet.f32 %3912, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3918 = extractvalue %dx.types.CBufRet.f32 %3910, 3
  %3919 = extractvalue %dx.types.CBufRet.f32 %3912, 3
  %3920 = fadd fast float %3917, %3893
  %3921 = fadd fast float %3918, %3894
  %3922 = fadd fast float %3919, %3895
  %3923 = fmul fast float %3920, %3909
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3911, float %3923)  ; FMad(a,b,c)
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3913, float %3924)  ; FMad(a,b,c)
  %3926 = fmul fast float %3920, %3914
  %3927 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3915, float %3926)  ; FMad(a,b,c)
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3916, float %3927)  ; FMad(a,b,c)
  %3929 = fsub fast float %3925, %3917
  %3930 = fsub fast float %3928, %3918
  %3931 = fsub fast float %3929, %3897
  %3932 = fadd fast float %3931, %3905
  %3933 = fsub fast float %3930, %3898
  %3934 = fadd fast float %3933, %3905
  %3935 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3936 = fmul fast float %3932, %3935
  %3937 = fmul fast float %3934, %3935
  %3938 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3940 = fsub fast float 1.000000e+00, %3938
  %3941 = fsub fast float 1.000000e+00, %3939
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3940, float %3941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = fcmp fast ugt float %3943, 0.000000e+00
  br i1 %3944, label %3945, label %4248

; <label>:3945                                    ; preds = %3907
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 2
  %3948 = fmul fast float %3947, %3943
  %3949 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3950 = fadd fast float %3949, %3948
  %3951 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3952 = fadd fast float %3950, %3919
  %3953 = fmul fast float %3925, %3913
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3916, float %3953)  ; FMad(a,b,c)
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %3951, float %3954)  ; FMad(a,b,c)
  %3956 = fsub fast float %3955, %3919
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3959 = fsub fast float %3956, %3958
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3940, float %3941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3940, float %3941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = fadd fast float %3965, %3961
  %3969 = fmul fast float %3968, 0x3F847AE140000000
  %3970 = fadd fast float %3966, %3962
  %3971 = fmul fast float %3970, 0x3F847AE140000000
  %3972 = fadd fast float %3967, %3963
  %3973 = fmul fast float %3972, 0x3F847AE140000000
  br label %4248

; <label>:3974                                    ; preds = %3834
  %3975 = and i32 %181, 1
  %3976 = icmp eq i32 %3975, 0
  br i1 %3976, label %4248, label %3977

; <label>:3977                                    ; preds = %3974
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3985 = extractvalue %dx.types.CBufRet.f32 %3980, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3982, 1
  %3987 = extractvalue %dx.types.CBufRet.f32 %3978, 3
  %3988 = extractvalue %dx.types.CBufRet.f32 %3980, 3
  %3989 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3990 = fadd fast float %3987, %3893
  %3991 = fadd fast float %3988, %3894
  %3992 = fadd fast float %3989, %3895
  %3993 = fmul fast float %3990, %3979
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3981, float %3993)  ; FMad(a,b,c)
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3983, float %3994)  ; FMad(a,b,c)
  %3996 = fmul fast float %3990, %3984
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3985, float %3996)  ; FMad(a,b,c)
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = fsub fast float %3995, %3987
  %4000 = fsub fast float %3998, %3988
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.i32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.i32 %4008, 1
  %4011 = udiv i32 %4010, %4009
  %4012 = fsub fast float %3999, %4002
  %4013 = fsub fast float %4000, %4003
  %4014 = call float @dx.op.binary.f32(i32 35, float %4012, float 0.000000e+00)  ; FMax(a,b)
  %4015 = call float @dx.op.binary.f32(i32 35, float %4013, float 0.000000e+00)  ; FMax(a,b)
  %4016 = call float @dx.op.binary.f32(i32 36, float %4014, float %4004)  ; FMin(a,b)
  %4017 = call float @dx.op.binary.f32(i32 36, float %4015, float %4005)  ; FMin(a,b)
  %4018 = add i32 %4009, -1
  %4019 = add i32 %4011, -1
  %4020 = fmul fast float %4016, %4007
  %4021 = fmul fast float %4017, %4007
  %4022 = fptoui float %4020 to i32
  %4023 = fptoui float %4021 to i32
  %4024 = call i32 @dx.op.binary.i32(i32 40, i32 %4022, i32 %4018)  ; UMin(a,b)
  %4025 = call i32 @dx.op.binary.i32(i32 40, i32 %4023, i32 %4019)  ; UMin(a,b)
  %4026 = mul i32 %4025, %4009
  %4027 = add i32 %4026, %4024
  %4028 = shl i32 %4027, 2
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = icmp eq i32 %4030, -1
  br i1 %4031, label %4248, label %4032

; <label>:4032                                    ; preds = %3977
  %4033 = mul i32 %4030, 148
  %4034 = add i32 %4033, 4
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = add i32 %4033, 8
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = add i32 %4033, 36
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = add i32 %4033, 60
  %4044 = add i32 %4033, 92
  %4045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.i32 %4045, 0
  %4047 = add i32 %4033, 116
  %4048 = fsub fast float %3999, %4036
  %4049 = fsub fast float %4000, %4039
  %4050 = fmul fast float %4007, %4048
  %4051 = fmul fast float %4007, %4049
  %4052 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4053 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4057 = call float @dx.op.unary.f32(i32 83, float %4052)  ; DerivCoarseX(value)
  %4058 = call float @dx.op.unary.f32(i32 83, float %4054)  ; DerivCoarseX(value)
  %4059 = call float @dx.op.unary.f32(i32 84, float %4052)  ; DerivCoarseY(value)
  %4060 = call float @dx.op.unary.f32(i32 84, float %4054)  ; DerivCoarseY(value)
  %4061 = fmul fast float %4057, %4056
  %4062 = fmul fast float %4058, %4056
  %4063 = fmul fast float %4059, %4056
  %4064 = fmul fast float %4060, %4056
  %4065 = call float @dx.op.dot2.f32(i32 54, float %4063, float %4064, float %4063, float %4064)  ; Dot2(ax,ay,bx,by)
  %4066 = call float @dx.op.dot2.f32(i32 54, float %4061, float %4062, float %4061, float %4062)  ; Dot2(ax,ay,bx,by)
  %4067 = call float @dx.op.binary.f32(i32 35, float %4066, float %4065)  ; FMax(a,b)
  %4068 = call float @dx.op.unary.f32(i32 23, float %4067)  ; Log(value)
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4072 = fadd fast float %4071, %4069
  %4073 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4076 = fadd fast float %4075, %4073
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4079 = fadd fast float %4076, %4078
  %4080 = add i32 %4046, 0
  %4081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4080, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4082 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4081, i32 0)  ; GetDimensions(handle,mipLevel)
  %4083 = extractvalue %dx.types.Dimensions %4082, 0
  %4084 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4083)  ; FirstbitLo(value)
  %4085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.i32 %4085, 1
  %4087 = sub nsw i32 %4086, %4084
  %4088 = sitofp i32 %4087 to float
  %4089 = fsub fast float %4079, %4088
  %4090 = call float @dx.op.binary.f32(i32 35, float %4089, float 0.000000e+00)  ; FMax(a,b)
  %4091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4081, %dx.types.Handle %27, float %4052, float %4054, float %4042, float undef, i32 0, i32 0, i32 undef, float %4090)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = fcmp ule float %4092, 0x3FE0101020000000
  %4094 = extractvalue %dx.types.CBufRet.i32 %4085, 0
  %4095 = and i32 %4094, 128
  %4096 = icmp ne i32 %4095, 0
  %4097 = and i1 %4093, %4096
  br i1 %4097, label %4248, label %4098

; <label>:4098                                    ; preds = %4032
  %4099 = add i32 %4033, 20
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = add i32 %4033, 24
  %4103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = add i32 %4033, 40
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = add i32 %4033, 96
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4113 = fmul fast float %4112, %4052
  %4114 = fmul fast float %4112, %4054
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4116 = fadd fast float %4113, %4115
  %4117 = fadd fast float %4114, %4115
  %4118 = add i32 %4110, 0
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4119, i32 0)  ; GetDimensions(handle,mipLevel)
  %4121 = extractvalue %dx.types.Dimensions %4120, 0
  %4122 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4121)  ; FirstbitLo(value)
  %4123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.i32 %4123, 1
  %4125 = sub nsw i32 %4124, %4122
  %4126 = sitofp i32 %4125 to float
  %4127 = fsub fast float %4076, %4126
  %4128 = call float @dx.op.binary.f32(i32 35, float %4127, float 0.000000e+00)  ; FMax(a,b)
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4119, %dx.types.Handle %27, float %4116, float %4117, float %4107, float undef, i32 0, i32 0, i32 undef, float %4128)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = fmul fast float %4130, %4101
  %4132 = fadd fast float %4131, %4104
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 3
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4141 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4142 = fadd fast float %4138, %3999
  %4143 = fadd fast float %4140, %4000
  %4144 = fadd fast float %4132, %4141
  %4145 = fmul fast float %4142, %4134
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4135, float %4145)  ; FMad(a,b,c)
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4136, float %4146)  ; FMad(a,b,c)
  %4148 = fsub fast float %4147, %4141
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4151 = fsub fast float %4148, %4150
  %4152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.i32 %4152, 0
  %4154 = call i32 @dx.op.binary.i32(i32 40, i32 %4030, i32 %4153)  ; UMin(a,b)
  %4155 = mul i32 %4154, 36
  %4156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.i32 %4156, 0
  %4158 = add i32 %4155, 4
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = fmul fast float %4160, %4052
  %4162 = fmul fast float %4160, %4054
  %4163 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4164 = fadd fast float %4161, %4163
  %4165 = fadd fast float %4162, %4163
  %4166 = icmp eq i32 %4157, 0
  br i1 %4166, label %4235, label %4167

; <label>:4167                                    ; preds = %4098
  br label %4168

; <label>:4168                                    ; preds = %4225, %4167
  %4169 = phi float [ %4226, %4225 ], [ 0.000000e+00, %4167 ]
  %4170 = phi float [ %4227, %4225 ], [ 0.000000e+00, %4167 ]
  %4171 = phi float [ %4228, %4225 ], [ 0.000000e+00, %4167 ]
  %4172 = phi float [ %4229, %4225 ], [ 0.000000e+00, %4167 ]
  %4173 = phi float [ %4230, %4225 ], [ 0.000000e+00, %4167 ]
  %4174 = phi float [ %4231, %4225 ], [ 0.000000e+00, %4167 ]
  %4175 = phi i32 [ %4232, %4225 ], [ 0, %4167 ]
  %4176 = shl i32 %4175, 2
  %4177 = add i32 %4043, %4176
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = add i32 %4047, %4176
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = add i32 %4182, 0
  %4184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4185 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4184, i32 0)  ; GetDimensions(handle,mipLevel)
  %4186 = extractvalue %dx.types.Dimensions %4185, 0
  %4187 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4186)  ; FirstbitLo(value)
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 1
  %4190 = sub nsw i32 %4189, %4187
  %4191 = sitofp i32 %4190 to float
  %4192 = fsub fast float %4076, %4191
  %4193 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4184, %dx.types.Handle %27, float %4164, float %4165, float %4179, float undef, i32 0, i32 0, i32 undef, float %4193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = fcmp fast ogt float %4195, 0.000000e+00
  br i1 %4196, label %4197, label %4225

; <label>:4197                                    ; preds = %4168
  %4198 = add i32 %4158, %4176
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = and i32 %4200, 32767
  %4202 = mul nuw nsw i32 %4201, 928
  %4203 = add nuw nsw i32 %4202, 48
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = add nuw nsw i32 %4202, 60
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = fmul fast float %4205, %4195
  %4214 = fmul fast float %4206, %4195
  %4215 = fmul fast float %4207, %4195
  %4216 = fadd fast float %4213, %4169
  %4217 = fadd fast float %4214, %4170
  %4218 = fadd fast float %4215, %4171
  %4219 = fmul fast float %4210, %4195
  %4220 = fmul fast float %4211, %4195
  %4221 = fmul fast float %4212, %4195
  %4222 = fadd fast float %4219, %4172
  %4223 = fadd fast float %4220, %4173
  %4224 = fadd fast float %4221, %4174
  br label %4225

; <label>:4225                                    ; preds = %4197, %4168
  %4226 = phi float [ %4216, %4197 ], [ %4169, %4168 ]
  %4227 = phi float [ %4217, %4197 ], [ %4170, %4168 ]
  %4228 = phi float [ %4218, %4197 ], [ %4171, %4168 ]
  %4229 = phi float [ %4222, %4197 ], [ %4172, %4168 ]
  %4230 = phi float [ %4223, %4197 ], [ %4173, %4168 ]
  %4231 = phi float [ %4224, %4197 ], [ %4174, %4168 ]
  %4232 = add nuw i32 %4175, 1
  %4233 = icmp eq i32 %4232, %4157
  br i1 %4233, label %4234, label %4168

; <label>:4234                                    ; preds = %4225
  br label %4235

; <label>:4235                                    ; preds = %4234, %4098
  %4236 = phi float [ 0.000000e+00, %4098 ], [ %4226, %4234 ]
  %4237 = phi float [ 0.000000e+00, %4098 ], [ %4227, %4234 ]
  %4238 = phi float [ 0.000000e+00, %4098 ], [ %4228, %4234 ]
  %4239 = phi float [ 0.000000e+00, %4098 ], [ %4229, %4234 ]
  %4240 = phi float [ 0.000000e+00, %4098 ], [ %4230, %4234 ]
  %4241 = phi float [ 0.000000e+00, %4098 ], [ %4231, %4234 ]
  %4242 = fadd fast float %4239, %4236
  %4243 = fmul fast float %4242, 0x3F847AE140000000
  %4244 = fadd fast float %4240, %4237
  %4245 = fmul fast float %4244, 0x3F847AE140000000
  %4246 = fadd fast float %4241, %4238
  %4247 = fmul fast float %4246, 0x3F847AE140000000
  br label %4248

; <label>:4248                                    ; preds = %4235, %4032, %3977, %3974, %3945, %3907
  %4249 = phi float [ %3959, %3945 ], [ -1.310720e+05, %3907 ], [ %4151, %4235 ], [ -1.310720e+05, %3977 ], [ -1.310720e+05, %4032 ], [ -1.310720e+05, %3974 ]
  %4250 = phi float [ %3969, %3945 ], [ 0.000000e+00, %3907 ], [ %4243, %4235 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %3974 ]
  %4251 = phi float [ %3971, %3945 ], [ 0.000000e+00, %3907 ], [ %4245, %4235 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %3974 ]
  %4252 = phi float [ %3973, %3945 ], [ 0.000000e+00, %3907 ], [ %4247, %4235 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %3974 ]
  %4253 = phi i1 [ true, %3945 ], [ false, %3907 ], [ true, %4235 ], [ false, %3977 ], [ false, %4032 ], [ false, %3974 ]
  %4254 = and i32 %181, 3
  %4255 = icmp eq i32 %4254, 1
  %4256 = select i1 %4255, float 1.000000e+00, float 0.000000e+00
  %4257 = fsub fast float %4249, %165
  %4258 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4259 = select i1 %4253, float %4258, float 1.000000e+00
  %4260 = fmul fast float %4259, %4256
  %4261 = icmp eq i32 %4254, 3
  %4262 = select i1 %4261, float 1.000000e+00, float %4260
  %4263 = call float @dx.op.binary.f32(i32 35, float %3850, float %4262)  ; FMax(a,b)
  %4264 = fcmp fast olt float %4262, 1.000000e+00
  %4265 = fcmp uge float %47, 0.000000e+00
  %4266 = and i1 %4265, %4264
  br i1 %4266, label %4267, label %4277

; <label>:4267                                    ; preds = %4248
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4272 = fadd fast float %4269, %4263
  %4273 = fcmp ule float %46, 0.000000e+00
  %4274 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = select i1 %4273, float %4274, float 1.000000e+00
  %4276 = fmul fast float %4275, %4271
  br label %4277

; <label>:4277                                    ; preds = %4267, %4248
  %4278 = phi float [ %4272, %4267 ], [ %4263, %4248 ]
  %4279 = phi float [ %4270, %4267 ], [ 0.000000e+00, %4248 ]
  %4280 = phi float [ %4276, %4267 ], [ 0.000000e+00, %4248 ]
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = fcmp fast une float %4282, 0.000000e+00
  %4285 = fcmp fast une float %4283, 0.000000e+00
  %4286 = or i1 %4284, %4285
  br i1 %4286, label %4287, label %4846

; <label>:4287                                    ; preds = %4277
  br i1 %4284, label %4288, label %4561

; <label>:4288                                    ; preds = %4287
  %4289 = call float @dx.op.unary.f32(i32 23, float %3847)  ; Log(value)
  %4290 = fmul fast float %4289, 4.000000e+00
  %4291 = call float @dx.op.unary.f32(i32 21, float %4290)  ; Exp(value)
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 0
  %4294 = fmul fast float %4293, %34
  %4295 = fmul fast float %4293, %35
  %4296 = fmul fast float %4293, %36
  %4297 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4298 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4299 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4300 = call float @dx.op.unary.f32(i32 23, float %4297)  ; Log(value)
  %4301 = call float @dx.op.unary.f32(i32 23, float %4298)  ; Log(value)
  %4302 = call float @dx.op.unary.f32(i32 23, float %4299)  ; Log(value)
  %4303 = fmul fast float %4300, 4.000000e+00
  %4304 = fmul fast float %4301, 4.000000e+00
  %4305 = fmul fast float %4302, 4.000000e+00
  %4306 = call float @dx.op.unary.f32(i32 21, float %4303)  ; Exp(value)
  %4307 = call float @dx.op.unary.f32(i32 21, float %4304)  ; Exp(value)
  %4308 = call float @dx.op.unary.f32(i32 21, float %4305)  ; Exp(value)
  %4309 = fadd fast float %4307, %4306
  %4310 = fadd fast float %4309, %4308
  %4311 = fdiv fast float 1.000000e+00, %4310
  %4312 = fmul fast float %4311, %4306
  %4313 = fcmp fast ogt float %43, 0.000000e+00
  %4314 = fcmp fast ogt float %44, 0.000000e+00
  %4315 = fcmp fast ogt float %45, 0.000000e+00
  %4316 = fcmp fast olt float %43, 0.000000e+00
  %4317 = fcmp fast olt float %44, 0.000000e+00
  %4318 = fcmp fast olt float %45, 0.000000e+00
  %4319 = zext i1 %4313 to i32
  %4320 = zext i1 %4314 to i32
  %4321 = zext i1 %4315 to i32
  %4322 = zext i1 %4316 to i32
  %4323 = zext i1 %4317 to i32
  %4324 = zext i1 %4318 to i32
  %4325 = sub nsw i32 %4319, %4322
  %4326 = sub nsw i32 %4320, %4323
  %4327 = sub nsw i32 %4321, %4324
  %4328 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4329 = call float @dx.op.unary.f32(i32 83, float %4295)  ; DerivCoarseX(value)
  %4330 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4331 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4332 = call float @dx.op.unary.f32(i32 84, float %4295)  ; DerivCoarseY(value)
  %4333 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4334 = fcmp fast ole float %213, %4312
  %4335 = fmul fast float %4311, %4309
  %4336 = fcmp fast ole float %213, %4335
  %4337 = select i1 %4336, float %4296, float %4294
  %4338 = select i1 %4336, float %4294, float %4295
  %4339 = select i1 %4334, float %4295, float %4337
  %4340 = select i1 %4334, float %4296, float %4338
  %4341 = select i1 %4336, float %4330, float %4328
  %4342 = select i1 %4336, float %4328, float %4329
  %4343 = select i1 %4334, float %4329, float %4341
  %4344 = select i1 %4334, float %4330, float %4342
  %4345 = select i1 %4336, float %4333, float %4331
  %4346 = select i1 %4336, float %4331, float %4332
  %4347 = select i1 %4334, float %4332, float %4345
  %4348 = select i1 %4334, float %4333, float %4346
  %4349 = call float @dx.op.unary.f32(i32 27, float %4339)  ; Round_ni(value)
  %4350 = call float @dx.op.unary.f32(i32 27, float %4340)  ; Round_ni(value)
  %4351 = fptosi float %4349 to i32
  %4352 = fptosi float %4350 to i32
  %4353 = xor i32 %4352, %4351
  %4354 = sitofp i32 %4353 to float
  %4355 = fptosi float %4354 to i32
  %4356 = sitofp i32 %4355 to float
  %4357 = fmul fast float %4356, 0x3FE3C6EF40000000
  %4358 = frem fast float %4349, 2.560000e+02
  %4359 = frem fast float %4350, 2.560000e+02
  %4360 = fptoui float %4358 to i32
  %4361 = fptoui float %4359 to i32
  %4362 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4360, i32 %4361, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = fadd fast float %4363, %4357
  %4367 = fadd fast float %4364, %4357
  %4368 = fadd fast float %4365, %4357
  %4369 = call float @dx.op.unary.f32(i32 22, float %4366)  ; Frc(value)
  %4370 = call float @dx.op.unary.f32(i32 22, float %4367)  ; Frc(value)
  %4371 = call float @dx.op.unary.f32(i32 22, float %4368)  ; Frc(value)
  %4372 = fmul fast float %4371, 0x401921FB60000000
  %4373 = call float @dx.op.unary.f32(i32 13, float %4372)  ; Sin(value)
  %4374 = call float @dx.op.unary.f32(i32 12, float %4372)  ; Cos(value)
  %4375 = fsub fast float -0.000000e+00, %4374
  %4376 = fmul fast float %4374, %4339
  %4377 = call float @dx.op.tertiary.f32(i32 46, float %4373, float %4340, float %4376)  ; FMad(a,b,c)
  %4378 = fmul fast float %4373, %4339
  %4379 = call float @dx.op.tertiary.f32(i32 46, float %4375, float %4340, float %4378)  ; FMad(a,b,c)
  %4380 = fadd fast float %4377, %4369
  %4381 = fadd fast float %4379, %4370
  %4382 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4383 = bitcast float %4382 to i32
  %4384 = icmp eq i32 %4383, 0
  br i1 %4384, label %4423, label %4385

; <label>:4385                                    ; preds = %4288
  %4386 = add i32 %4383, 0
  %4387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4387, %dx.types.Handle %73, float %4380, float %4381, float undef, float undef, i32 0, i32 0, i32 undef, float %4343, float %4344, float undef, float %4347, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4393 = fsub fast float 1.000000e+00, %4282
  %4394 = call float @dx.op.binary.f32(i32 35, float %4393, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4395 = bitcast float %4282 to i32
  %4396 = sitofp i32 %4395 to float
  %4397 = fadd fast float %4396, 0xC1CFBF8940000000
  %4398 = fmul fast float %4392, %4397
  %4399 = fadd fast float %4398, 0x41CFBF8940000000
  %4400 = fptosi float %4399 to i32
  %4401 = bitcast i32 %4400 to float
  %4402 = bitcast float %4394 to i32
  %4403 = sitofp i32 %4402 to float
  %4404 = fadd fast float %4403, 0xC1CFBF8940000000
  %4405 = fmul fast float %4404, %4392
  %4406 = fadd fast float %4405, 0x41CFBF8940000000
  %4407 = fptosi float %4406 to i32
  %4408 = bitcast i32 %4407 to float
  %4409 = fmul fast float %4401, %4391
  %4410 = fmul fast float %4408, %4391
  %4411 = fsub fast float %4394, %4409
  %4412 = fadd fast float %4410, %4394
  %4413 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4415 = fsub fast float %4389, %4413
  %4416 = fsub fast float %4414, %4413
  %4417 = bitcast float %4416 to i32
  %4418 = sub nsw i32 2129859010, %4417
  %4419 = bitcast i32 %4418 to float
  %4420 = fmul fast float %4419, %4415
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fcmp fast olt float %4421, 0x3F70101020000000
  br i1 %4422, label %4561, label %4423

; <label>:4423                                    ; preds = %4385, %4288
  %4424 = phi float [ %4421, %4385 ], [ %4282, %4288 ]
  %4425 = fmul fast float %4424, %4291
  %4426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.i32 %4426, 1
  %4428 = extractvalue %dx.types.CBufRet.i32 %4426, 0
  %4429 = add i32 %4428, 0
  %4430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4430, %dx.types.Handle %72, float %4380, float %4381, float undef, float undef, i32 0, i32 0, i32 undef, float %4343, float %4344, float undef, float %4347, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = extractvalue %dx.types.ResRet.f32 %4431, 3
  %4436 = and i32 %4427, 255
  %4437 = uitofp i32 %4436 to float
  %4438 = lshr i32 %4427, 8
  %4439 = and i32 %4438, 255
  %4440 = uitofp i32 %4439 to float
  %4441 = fmul fast float %4435, %4437
  %4442 = fadd fast float %4441, %4440
  %4443 = fmul fast float %4442, 0x3F70101000000000
  %4444 = fadd fast float %4443, 0xBFB99999A0000000
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fmul fast float %4445, 0x3FF1C71C80000000
  %4447 = call float @dx.op.binary.f32(i32 36, float %4443, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4448 = fsub fast float 1.000000e+00, %4446
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4449, %4432
  %4451 = fmul fast float %4449, %4433
  %4452 = fmul fast float %4449, %4434
  %4453 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = fmul fast float %4446, %4432
  %4457 = fmul fast float %4446, %4433
  %4458 = fmul fast float %4446, %4434
  %4459 = fadd fast float %4456, %4447
  %4460 = fadd fast float %4457, %4447
  %4461 = fadd fast float %4458, %4447
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.i32 %4465, 3
  %4467 = extractvalue %dx.types.CBufRet.i32 %4465, 2
  %4468 = add i32 %4467, 0
  %4469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4469, %dx.types.Handle %72, float %4380, float %4381, float undef, float undef, i32 0, i32 0, i32 undef, float %4343, float %4344, float undef, float %4347, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4471 = extractvalue %dx.types.ResRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.ResRet.f32 %4470, 1
  %4473 = extractvalue %dx.types.ResRet.f32 %4470, 2
  %4474 = extractvalue %dx.types.ResRet.f32 %4470, 3
  %4475 = and i32 %4466, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = lshr i32 %4466, 8
  %4478 = and i32 %4477, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = lshr i32 %4466, 16
  %4481 = and i32 %4480, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = fmul fast float %4482, 0x3F70101000000000
  %4484 = fmul fast float %4471, %4476
  %4485 = fadd fast float %4484, %4479
  %4486 = fmul fast float %4485, 0x3F70101000000000
  %4487 = fadd fast float %4472, -5.000000e-01
  %4488 = fadd fast float %4474, -5.000000e-01
  %4489 = fmul fast float %4487, %4483
  %4490 = fmul fast float %4488, %4483
  %4491 = fadd fast float %4489, 5.000000e-01
  %4492 = fadd fast float %4490, 5.000000e-01
  %4493 = fmul fast float %4491, 2.000000e+00
  %4494 = fadd fast float %4493, -1.000000e+00
  %4495 = fmul fast float %4492, 2.000000e+00
  %4496 = fadd fast float %4495, -1.000000e+00
  %4497 = fadd fast float %4494, %4496
  %4498 = fmul fast float %4497, 5.000000e-01
  %4499 = fsub fast float %4494, %4496
  %4500 = fmul fast float %4499, 5.000000e-01
  %4501 = call float @dx.op.unary.f32(i32 6, float %4498)  ; FAbs(value)
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = call float @dx.op.unary.f32(i32 6, float %4500)  ; FAbs(value)
  %4504 = fsub fast float %4502, %4503
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4498, float %4500, float %4504, float %4498, float %4500, float %4504)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 25, float %4505)  ; Rsqrt(value)
  %4507 = fmul fast float %4498, %4506
  %4508 = fmul fast float %4500, %4506
  %4509 = select i1 %4336, i32 %4326, i32 %4327
  %4510 = select i1 %4334, i32 %4325, i32 %4509
  %4511 = sitofp i32 %4510 to float
  %4512 = fmul fast float %4504, %4511
  %4513 = fmul fast float %4512, %4506
  %4514 = select i1 %4336, float %4513, float %4508
  %4515 = select i1 %4336, float %4508, float %4513
  %4516 = select i1 %4334, float %4513, float %4507
  %4517 = select i1 %4334, float %4508, float %4514
  %4518 = select i1 %4334, float %4507, float %4515
  %4519 = fsub fast float %4453, %3886
  %4520 = fsub fast float %4454, %3887
  %4521 = fsub fast float %4455, %3888
  %4522 = fmul fast float %4519, %4425
  %4523 = fmul fast float %4520, %4425
  %4524 = fmul fast float %4521, %4425
  %4525 = fadd fast float %4522, %3886
  %4526 = fadd fast float %4523, %3887
  %4527 = fadd fast float %4524, %3888
  %4528 = fsub fast float %4462, %3871
  %4529 = fsub fast float %4463, %3872
  %4530 = fsub fast float %4464, %3873
  %4531 = fmul fast float %4528, %4425
  %4532 = fmul fast float %4529, %4425
  %4533 = fmul fast float %4530, %4425
  %4534 = fadd fast float %4531, %3871
  %4535 = fadd fast float %4532, %3872
  %4536 = fadd fast float %4533, %3873
  %4537 = fadd fast float %4516, %3835
  %4538 = fadd fast float %4517, %3836
  %4539 = fadd fast float %4518, %3837
  %4540 = call float @dx.op.dot3.f32(i32 55, float %4537, float %4538, float %4539, float %4537, float %4538, float %4539)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = call float @dx.op.unary.f32(i32 25, float %4540)  ; Rsqrt(value)
  %4542 = fmul fast float %4537, %4541
  %4543 = fmul fast float %4538, %4541
  %4544 = fmul fast float %4539, %4541
  %4545 = fsub fast float %4542, %3835
  %4546 = fsub fast float %4543, %3836
  %4547 = fsub fast float %4544, %3837
  %4548 = fmul fast float %4545, %4425
  %4549 = fmul fast float %4546, %4425
  %4550 = fmul fast float %4547, %4425
  %4551 = fadd fast float %4548, %3835
  %4552 = fadd fast float %4549, %3836
  %4553 = fadd fast float %4550, %3837
  %4554 = call float @dx.op.binary.f32(i32 36, float %3847, float %4473)  ; FMin(a,b)
  %4555 = fsub fast float %4554, %3847
  %4556 = fmul fast float %4555, %4425
  %4557 = fadd fast float %4556, %3847
  %4558 = fsub fast float %4486, %3874
  %4559 = fmul fast float %4558, %4425
  %4560 = fadd fast float %4559, %3874
  br label %4561

; <label>:4561                                    ; preds = %4423, %4385, %4287
  %4562 = phi float [ %4534, %4423 ], [ %3871, %4385 ], [ %3871, %4287 ]
  %4563 = phi float [ %4535, %4423 ], [ %3872, %4385 ], [ %3872, %4287 ]
  %4564 = phi float [ %4536, %4423 ], [ %3873, %4385 ], [ %3873, %4287 ]
  %4565 = phi float [ %4525, %4423 ], [ %3886, %4385 ], [ %3886, %4287 ]
  %4566 = phi float [ %4526, %4423 ], [ %3887, %4385 ], [ %3887, %4287 ]
  %4567 = phi float [ %4527, %4423 ], [ %3888, %4385 ], [ %3888, %4287 ]
  %4568 = phi float [ %4551, %4423 ], [ %3835, %4385 ], [ %3835, %4287 ]
  %4569 = phi float [ %4552, %4423 ], [ %3836, %4385 ], [ %3836, %4287 ]
  %4570 = phi float [ %4553, %4423 ], [ %3837, %4385 ], [ %3837, %4287 ]
  %4571 = phi float [ %4560, %4423 ], [ %3874, %4385 ], [ %3874, %4287 ]
  %4572 = phi float [ %4557, %4423 ], [ %3847, %4385 ], [ %3847, %4287 ]
  br i1 %4285, label %4573, label %4846

; <label>:4573                                    ; preds = %4561
  %4574 = call float @dx.op.unary.f32(i32 23, float %4572)  ; Log(value)
  %4575 = fmul fast float %4574, 4.000000e+00
  %4576 = call float @dx.op.unary.f32(i32 21, float %4575)  ; Exp(value)
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = fmul fast float %4578, %34
  %4580 = fmul fast float %4578, %35
  %4581 = fmul fast float %4578, %36
  %4582 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4583 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4584 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4585 = call float @dx.op.unary.f32(i32 23, float %4582)  ; Log(value)
  %4586 = call float @dx.op.unary.f32(i32 23, float %4583)  ; Log(value)
  %4587 = call float @dx.op.unary.f32(i32 23, float %4584)  ; Log(value)
  %4588 = fmul fast float %4585, 4.000000e+00
  %4589 = fmul fast float %4586, 4.000000e+00
  %4590 = fmul fast float %4587, 4.000000e+00
  %4591 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4592 = call float @dx.op.unary.f32(i32 21, float %4589)  ; Exp(value)
  %4593 = call float @dx.op.unary.f32(i32 21, float %4590)  ; Exp(value)
  %4594 = fadd fast float %4592, %4591
  %4595 = fadd fast float %4594, %4593
  %4596 = fdiv fast float 1.000000e+00, %4595
  %4597 = fmul fast float %4596, %4591
  %4598 = fcmp fast ogt float %43, 0.000000e+00
  %4599 = fcmp fast ogt float %44, 0.000000e+00
  %4600 = fcmp fast ogt float %45, 0.000000e+00
  %4601 = fcmp fast olt float %43, 0.000000e+00
  %4602 = fcmp fast olt float %44, 0.000000e+00
  %4603 = fcmp fast olt float %45, 0.000000e+00
  %4604 = zext i1 %4598 to i32
  %4605 = zext i1 %4599 to i32
  %4606 = zext i1 %4600 to i32
  %4607 = zext i1 %4601 to i32
  %4608 = zext i1 %4602 to i32
  %4609 = zext i1 %4603 to i32
  %4610 = sub nsw i32 %4604, %4607
  %4611 = sub nsw i32 %4605, %4608
  %4612 = sub nsw i32 %4606, %4609
  %4613 = call float @dx.op.unary.f32(i32 83, float %4579)  ; DerivCoarseX(value)
  %4614 = call float @dx.op.unary.f32(i32 83, float %4580)  ; DerivCoarseX(value)
  %4615 = call float @dx.op.unary.f32(i32 83, float %4581)  ; DerivCoarseX(value)
  %4616 = call float @dx.op.unary.f32(i32 84, float %4579)  ; DerivCoarseY(value)
  %4617 = call float @dx.op.unary.f32(i32 84, float %4580)  ; DerivCoarseY(value)
  %4618 = call float @dx.op.unary.f32(i32 84, float %4581)  ; DerivCoarseY(value)
  %4619 = fcmp fast ole float %213, %4597
  %4620 = fmul fast float %4596, %4594
  %4621 = fcmp fast ole float %213, %4620
  %4622 = select i1 %4621, float %4581, float %4579
  %4623 = select i1 %4621, float %4579, float %4580
  %4624 = select i1 %4619, float %4580, float %4622
  %4625 = select i1 %4619, float %4581, float %4623
  %4626 = select i1 %4621, float %4615, float %4613
  %4627 = select i1 %4621, float %4613, float %4614
  %4628 = select i1 %4619, float %4614, float %4626
  %4629 = select i1 %4619, float %4615, float %4627
  %4630 = select i1 %4621, float %4618, float %4616
  %4631 = select i1 %4621, float %4616, float %4617
  %4632 = select i1 %4619, float %4617, float %4630
  %4633 = select i1 %4619, float %4618, float %4631
  %4634 = call float @dx.op.unary.f32(i32 27, float %4624)  ; Round_ni(value)
  %4635 = call float @dx.op.unary.f32(i32 27, float %4625)  ; Round_ni(value)
  %4636 = fptosi float %4634 to i32
  %4637 = fptosi float %4635 to i32
  %4638 = xor i32 %4637, %4636
  %4639 = sitofp i32 %4638 to float
  %4640 = fptosi float %4639 to i32
  %4641 = sitofp i32 %4640 to float
  %4642 = fmul fast float %4641, 0x3FE3C6EF40000000
  %4643 = frem fast float %4634, 2.560000e+02
  %4644 = frem fast float %4635, 2.560000e+02
  %4645 = fptoui float %4643 to i32
  %4646 = fptoui float %4644 to i32
  %4647 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4645, i32 %4646, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = extractvalue %dx.types.ResRet.f32 %4647, 2
  %4651 = fadd fast float %4648, %4642
  %4652 = fadd fast float %4649, %4642
  %4653 = fadd fast float %4650, %4642
  %4654 = call float @dx.op.unary.f32(i32 22, float %4651)  ; Frc(value)
  %4655 = call float @dx.op.unary.f32(i32 22, float %4652)  ; Frc(value)
  %4656 = call float @dx.op.unary.f32(i32 22, float %4653)  ; Frc(value)
  %4657 = fmul fast float %4656, 0x401921FB60000000
  %4658 = call float @dx.op.unary.f32(i32 13, float %4657)  ; Sin(value)
  %4659 = call float @dx.op.unary.f32(i32 12, float %4657)  ; Cos(value)
  %4660 = fsub fast float -0.000000e+00, %4659
  %4661 = fmul fast float %4659, %4624
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4658, float %4625, float %4661)  ; FMad(a,b,c)
  %4663 = fmul fast float %4658, %4624
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4625, float %4663)  ; FMad(a,b,c)
  %4665 = fadd fast float %4662, %4654
  %4666 = fadd fast float %4664, %4655
  %4667 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4668 = bitcast float %4667 to i32
  %4669 = icmp eq i32 %4668, 0
  br i1 %4669, label %4708, label %4670

; <label>:4670                                    ; preds = %4573
  %4671 = add i32 %4668, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %73, float %4665, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float %4628, float %4629, float undef, float %4632, float %4633, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4677 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4678 = fsub fast float 1.000000e+00, %4283
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4680 = bitcast float %4283 to i32
  %4681 = sitofp i32 %4680 to float
  %4682 = fadd fast float %4681, 0xC1CFBF8940000000
  %4683 = fmul fast float %4677, %4682
  %4684 = fadd fast float %4683, 0x41CFBF8940000000
  %4685 = fptosi float %4684 to i32
  %4686 = bitcast i32 %4685 to float
  %4687 = bitcast float %4679 to i32
  %4688 = sitofp i32 %4687 to float
  %4689 = fadd fast float %4688, 0xC1CFBF8940000000
  %4690 = fmul fast float %4689, %4677
  %4691 = fadd fast float %4690, 0x41CFBF8940000000
  %4692 = fptosi float %4691 to i32
  %4693 = bitcast i32 %4692 to float
  %4694 = fmul fast float %4686, %4676
  %4695 = fmul fast float %4693, %4676
  %4696 = fsub fast float %4679, %4694
  %4697 = fadd fast float %4695, %4679
  %4698 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4700 = fsub fast float %4674, %4698
  %4701 = fsub fast float %4699, %4698
  %4702 = bitcast float %4701 to i32
  %4703 = sub nsw i32 2129859010, %4702
  %4704 = bitcast i32 %4703 to float
  %4705 = fmul fast float %4704, %4700
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fcmp fast olt float %4706, 0x3F70101020000000
  br i1 %4707, label %4846, label %4708

; <label>:4708                                    ; preds = %4670, %4573
  %4709 = phi float [ %4706, %4670 ], [ %4283, %4573 ]
  %4710 = fmul fast float %4709, %4576
  %4711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.i32 %4711, 1
  %4713 = extractvalue %dx.types.CBufRet.i32 %4711, 0
  %4714 = add i32 %4713, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4715, %dx.types.Handle %72, float %4665, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float %4628, float %4629, float undef, float %4632, float %4633, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.ResRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.ResRet.f32 %4716, 2
  %4720 = extractvalue %dx.types.ResRet.f32 %4716, 3
  %4721 = and i32 %4712, 255
  %4722 = uitofp i32 %4721 to float
  %4723 = lshr i32 %4712, 8
  %4724 = and i32 %4723, 255
  %4725 = uitofp i32 %4724 to float
  %4726 = fmul fast float %4720, %4722
  %4727 = fadd fast float %4726, %4725
  %4728 = fmul fast float %4727, 0x3F70101000000000
  %4729 = fadd fast float %4728, 0xBFB99999A0000000
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4730, 0x3FF1C71C80000000
  %4732 = call float @dx.op.binary.f32(i32 36, float %4728, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4733 = fsub fast float 1.000000e+00, %4731
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4734, %4717
  %4736 = fmul fast float %4734, %4718
  %4737 = fmul fast float %4734, %4719
  %4738 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4741 = fmul fast float %4731, %4717
  %4742 = fmul fast float %4731, %4718
  %4743 = fmul fast float %4731, %4719
  %4744 = fadd fast float %4741, %4732
  %4745 = fadd fast float %4742, %4732
  %4746 = fadd fast float %4743, %4732
  %4747 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.i32 %4750, 3
  %4752 = extractvalue %dx.types.CBufRet.i32 %4750, 2
  %4753 = add i32 %4752, 0
  %4754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4754, %dx.types.Handle %72, float %4665, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float %4628, float %4629, float undef, float %4632, float %4633, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.ResRet.f32 %4755, 1
  %4758 = extractvalue %dx.types.ResRet.f32 %4755, 2
  %4759 = extractvalue %dx.types.ResRet.f32 %4755, 3
  %4760 = and i32 %4751, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = lshr i32 %4751, 8
  %4763 = and i32 %4762, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = lshr i32 %4751, 16
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = fmul fast float %4767, 0x3F70101000000000
  %4769 = fmul fast float %4756, %4761
  %4770 = fadd fast float %4769, %4764
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = fadd fast float %4757, -5.000000e-01
  %4773 = fadd fast float %4759, -5.000000e-01
  %4774 = fmul fast float %4772, %4768
  %4775 = fmul fast float %4773, %4768
  %4776 = fadd fast float %4774, 5.000000e-01
  %4777 = fadd fast float %4775, 5.000000e-01
  %4778 = fmul fast float %4776, 2.000000e+00
  %4779 = fadd fast float %4778, -1.000000e+00
  %4780 = fmul fast float %4777, 2.000000e+00
  %4781 = fadd fast float %4780, -1.000000e+00
  %4782 = fadd fast float %4779, %4781
  %4783 = fmul fast float %4782, 5.000000e-01
  %4784 = fsub fast float %4779, %4781
  %4785 = fmul fast float %4784, 5.000000e-01
  %4786 = call float @dx.op.unary.f32(i32 6, float %4783)  ; FAbs(value)
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = call float @dx.op.unary.f32(i32 6, float %4785)  ; FAbs(value)
  %4789 = fsub fast float %4787, %4788
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4785, float %4789, float %4783, float %4785, float %4789)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = call float @dx.op.unary.f32(i32 25, float %4790)  ; Rsqrt(value)
  %4792 = fmul fast float %4783, %4791
  %4793 = fmul fast float %4785, %4791
  %4794 = select i1 %4621, i32 %4611, i32 %4612
  %4795 = select i1 %4619, i32 %4610, i32 %4794
  %4796 = sitofp i32 %4795 to float
  %4797 = fmul fast float %4789, %4796
  %4798 = fmul fast float %4797, %4791
  %4799 = select i1 %4621, float %4798, float %4793
  %4800 = select i1 %4621, float %4793, float %4798
  %4801 = select i1 %4619, float %4798, float %4792
  %4802 = select i1 %4619, float %4793, float %4799
  %4803 = select i1 %4619, float %4792, float %4800
  %4804 = fsub fast float %4738, %4565
  %4805 = fsub fast float %4739, %4566
  %4806 = fsub fast float %4740, %4567
  %4807 = fmul fast float %4804, %4710
  %4808 = fmul fast float %4805, %4710
  %4809 = fmul fast float %4806, %4710
  %4810 = fadd fast float %4807, %4565
  %4811 = fadd fast float %4808, %4566
  %4812 = fadd fast float %4809, %4567
  %4813 = fsub fast float %4747, %4562
  %4814 = fsub fast float %4748, %4563
  %4815 = fsub fast float %4749, %4564
  %4816 = fmul fast float %4813, %4710
  %4817 = fmul fast float %4814, %4710
  %4818 = fmul fast float %4815, %4710
  %4819 = fadd fast float %4816, %4562
  %4820 = fadd fast float %4817, %4563
  %4821 = fadd fast float %4818, %4564
  %4822 = fadd fast float %4801, %4568
  %4823 = fadd fast float %4802, %4569
  %4824 = fadd fast float %4803, %4570
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4822, float %4823, float %4824, float %4822, float %4823, float %4824)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.unary.f32(i32 25, float %4825)  ; Rsqrt(value)
  %4827 = fmul fast float %4822, %4826
  %4828 = fmul fast float %4823, %4826
  %4829 = fmul fast float %4824, %4826
  %4830 = fsub fast float %4827, %4568
  %4831 = fsub fast float %4828, %4569
  %4832 = fsub fast float %4829, %4570
  %4833 = fmul fast float %4830, %4710
  %4834 = fmul fast float %4831, %4710
  %4835 = fmul fast float %4832, %4710
  %4836 = fadd fast float %4833, %4568
  %4837 = fadd fast float %4834, %4569
  %4838 = fadd fast float %4835, %4570
  %4839 = call float @dx.op.binary.f32(i32 36, float %4572, float %4758)  ; FMin(a,b)
  %4840 = fsub fast float %4839, %4572
  %4841 = fmul fast float %4840, %4710
  %4842 = fadd fast float %4841, %4572
  %4843 = fsub fast float %4771, %4571
  %4844 = fmul fast float %4843, %4710
  %4845 = fadd fast float %4844, %4571
  br label %4846

; <label>:4846                                    ; preds = %4708, %4670, %4561, %4277
  %4847 = phi float [ %4819, %4708 ], [ %4562, %4670 ], [ %4562, %4561 ], [ %3871, %4277 ]
  %4848 = phi float [ %4820, %4708 ], [ %4563, %4670 ], [ %4563, %4561 ], [ %3872, %4277 ]
  %4849 = phi float [ %4821, %4708 ], [ %4564, %4670 ], [ %4564, %4561 ], [ %3873, %4277 ]
  %4850 = phi float [ %4810, %4708 ], [ %4565, %4670 ], [ %4565, %4561 ], [ %3886, %4277 ]
  %4851 = phi float [ %4811, %4708 ], [ %4566, %4670 ], [ %4566, %4561 ], [ %3887, %4277 ]
  %4852 = phi float [ %4812, %4708 ], [ %4567, %4670 ], [ %4567, %4561 ], [ %3888, %4277 ]
  %4853 = phi float [ %4836, %4708 ], [ %4568, %4670 ], [ %4568, %4561 ], [ %3835, %4277 ]
  %4854 = phi float [ %4837, %4708 ], [ %4569, %4670 ], [ %4569, %4561 ], [ %3836, %4277 ]
  %4855 = phi float [ %4838, %4708 ], [ %4570, %4670 ], [ %4570, %4561 ], [ %3837, %4277 ]
  %4856 = phi float [ %4845, %4708 ], [ %4571, %4670 ], [ %4571, %4561 ], [ %3874, %4277 ]
  %4857 = phi float [ %4842, %4708 ], [ %4572, %4670 ], [ %4572, %4561 ], [ %3847, %4277 ]
  %4858 = fcmp fast une float %4281, 0.000000e+00
  %4859 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = call float @dx.op.unary.f32(i32 25, float %4859)  ; Rsqrt(value)
  br i1 %4858, label %4868, label %4861

; <label>:4861                                    ; preds = %4846
  %4862 = fmul fast float %4860, %163
  %4863 = fmul fast float %4860, %164
  %4864 = fmul fast float %4860, %165
  %4865 = fsub fast float -0.000000e+00, %4862
  %4866 = fsub fast float -0.000000e+00, %4863
  %4867 = fsub fast float -0.000000e+00, %4864
  br label %5035

; <label>:4868                                    ; preds = %4846
  %4869 = fmul fast float %163, %4860
  %4870 = fsub fast float -0.000000e+00, %4869
  %4871 = fmul fast float %164, %4860
  %4872 = fsub fast float -0.000000e+00, %4871
  %4873 = fmul fast float %165, %4860
  %4874 = fsub fast float -0.000000e+00, %4873
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4872, float %4874, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = fmul fast float %4281, 2.500000e+00
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = fmul fast float %4281, 0x4013FFFFE0000000
  %4879 = fadd fast float %4878, 0xBFFFFFFFE0000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4281, 0x4004000020000000
  %4882 = fadd fast float %4881, 0xBFF8000040000000
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %3853, 1.000000e+01
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 2.000000e+00
  %4887 = fsub fast float 3.000000e+00, %4886
  %4888 = fmul fast float %4885, %4885
  %4889 = fmul fast float %4888, %4887
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fsub fast float 0x3FE3333340000000, %4856
  %4892 = fmul fast float %4891, 0x400AAAAAA0000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4890, %4893
  %4895 = fmul fast float %4850, 0x3FEA2B8620000000
  %4896 = fmul fast float %4851, 0x3FEA2B8620000000
  %4897 = fmul fast float %4852, 0x3FEA2B8620000000
  %4898 = fadd fast float %4895, 0x3FC81DFBA0000000
  %4899 = fmul fast float %4898, %4850
  %4900 = fadd fast float %4899, 0x3F910E6020000000
  %4901 = fadd fast float %4896, 0x3FC81DFBA0000000
  %4902 = fmul fast float %4901, %4851
  %4903 = fadd fast float %4902, 0x3F910E6020000000
  %4904 = fadd fast float %4897, 0x3FC81DFBA0000000
  %4905 = fmul fast float %4904, %4852
  %4906 = fadd fast float %4905, 0x3F910E6020000000
  %4907 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = fsub fast float %4907, %4850
  %4911 = fsub fast float %4908, %4851
  %4912 = fsub fast float %4909, %4852
  %4913 = fmul fast float %4910, %4877
  %4914 = fmul fast float %4913, %4894
  %4915 = fmul fast float %4911, %4877
  %4916 = fmul fast float %4915, %4894
  %4917 = fmul fast float %4912, %4877
  %4918 = fmul fast float %4917, %4894
  %4919 = fadd fast float %4914, %4850
  %4920 = fadd fast float %4916, %4851
  %4921 = fadd fast float %4918, %4852
  %4922 = fmul fast float %4857, %4857
  %4923 = fmul fast float %4922, %4922
  %4924 = fadd fast float %4880, 1.000000e+00
  %4925 = fsub fast float %4924, %4894
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fsub fast float 1.000000e+00, %4923
  %4930 = call float @dx.op.binary.f32(i32 36, float %4926, float %4929)  ; FMin(a,b)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4932 = call float @dx.op.binary.f32(i32 35, float %4930, float %4931)  ; FMax(a,b)
  %4933 = fadd fast float %4928, 0xBFE4CCCCC0000000
  %4934 = fmul fast float %4933, 0x4006DB6DA0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, 2.000000e+00
  %4937 = fsub fast float 3.000000e+00, %4936
  %4938 = bitcast float %4847 to i32
  %4939 = ashr i32 %4938, 1
  %4940 = add nsw i32 %4939, 532487669
  %4941 = bitcast i32 %4940 to float
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = fmul fast float %4945, 2.000000e+00
  %4947 = bitcast float %4848 to i32
  %4948 = ashr i32 %4947, 1
  %4949 = add nsw i32 %4948, 532487669
  %4950 = bitcast i32 %4949 to float
  %4951 = fsub fast float 1.000000e+00, %4950
  %4952 = bitcast float %4951 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, 2.000000e+00
  %4956 = bitcast float %4849 to i32
  %4957 = ashr i32 %4956, 1
  %4958 = add nsw i32 %4957, 532487669
  %4959 = bitcast i32 %4958 to float
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, 2.000000e+00
  %4965 = fsub fast float 0x4002A9FBE0000000, %4946
  %4966 = fadd fast float %4946, 0x3FD54FDF00000000
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, %4965
  %4971 = fmul fast float %4970, %4970
  %4972 = fsub fast float 0x4002A9FBE0000000, %4955
  %4973 = fadd fast float %4955, 0x3FD54FDF00000000
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, %4972
  %4978 = fmul fast float %4977, %4977
  %4979 = fsub fast float 0x4002A9FBE0000000, %4964
  %4980 = fadd fast float %4964, 0x3FD54FDF00000000
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %4979
  %4985 = fmul fast float %4984, %4984
  %4986 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4971)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4978)  ; FMax(a,b)
  %4988 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4985)  ; FMax(a,b)
  %4989 = fsub fast float 1.000000e+00, %4875
  %4990 = fadd fast float %4989, %4890
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fsub fast float 1.000000e+00, %4262
  %4993 = fmul fast float %4932, %4992
  %4994 = fmul fast float %4935, %4935
  %4995 = fmul fast float %4994, %4993
  %4996 = fmul fast float %4995, %4937
  %4997 = fmul fast float %4992, 0xBFE99999A0000000
  %4998 = fmul fast float %4997, %4877
  %4999 = fmul fast float %4998, %4894
  %5000 = fadd fast float %4999, 1.000000e+00
  %5001 = fadd fast float %4856, -1.000000e+00
  %5002 = fmul fast float %5000, %5001
  %5003 = fadd fast float %5002, 1.000000e+00
  %5004 = fsub fast float %4986, %4847
  %5005 = fsub fast float %4987, %4848
  %5006 = fsub fast float %4988, %4849
  %5007 = fmul fast float %4996, %5004
  %5008 = fmul fast float %4996, %5005
  %5009 = fmul fast float %4996, %5006
  %5010 = fadd fast float %5007, %4847
  %5011 = fadd fast float %5008, %4848
  %5012 = fadd fast float %5009, %4849
  %5013 = fsub fast float %83, %4853
  %5014 = fsub fast float %84, %4854
  %5015 = fsub fast float %85, %4855
  %5016 = fmul fast float %4996, %5013
  %5017 = fmul fast float %4996, %5014
  %5018 = fmul fast float %4996, %5015
  %5019 = fadd fast float %5016, %4853
  %5020 = fadd fast float %5017, %4854
  %5021 = fadd fast float %5018, %4855
  %5022 = fmul fast float %4996, %4991
  %5023 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = fmul fast float %5022, %5024
  %5026 = fadd fast float %5025, %5023
  %5027 = fsub fast float 1.000000e+00, %4857
  %5028 = fmul fast float %4996, %5027
  %5029 = fadd fast float %5028, %4857
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %5019, float %5020, float %5021)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 25, float %5030)  ; Rsqrt(value)
  %5032 = fmul fast float %5019, %5031
  %5033 = fmul fast float %5020, %5031
  %5034 = fmul fast float %5021, %5031
  br label %5035

; <label>:5035                                    ; preds = %4868, %4861
  %5036 = phi float [ %4867, %4861 ], [ %4874, %4868 ]
  %5037 = phi float [ %4866, %4861 ], [ %4872, %4868 ]
  %5038 = phi float [ %4865, %4861 ], [ %4870, %4868 ]
  %5039 = phi float [ %4864, %4861 ], [ %4873, %4868 ]
  %5040 = phi float [ %4863, %4861 ], [ %4871, %4868 ]
  %5041 = phi float [ %4862, %4861 ], [ %4869, %4868 ]
  %5042 = phi float [ %4847, %4861 ], [ %5010, %4868 ]
  %5043 = phi float [ %4848, %4861 ], [ %5011, %4868 ]
  %5044 = phi float [ %4849, %4861 ], [ %5012, %4868 ]
  %5045 = phi float [ %4850, %4861 ], [ %4919, %4868 ]
  %5046 = phi float [ %4851, %4861 ], [ %4920, %4868 ]
  %5047 = phi float [ %4852, %4861 ], [ %4921, %4868 ]
  %5048 = phi float [ %4853, %4861 ], [ %5032, %4868 ]
  %5049 = phi float [ %4854, %4861 ], [ %5033, %4868 ]
  %5050 = phi float [ %4855, %4861 ], [ %5034, %4868 ]
  %5051 = phi float [ %4856, %4861 ], [ %5026, %4868 ]
  %5052 = phi float [ %4857, %4861 ], [ %5029, %4868 ]
  %5053 = select i1 %202, float 0.000000e+00, float %5044
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5038, float %5037, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5040, float %5039, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fmul fast float %5056, 2.000000e+00
  %5058 = fmul fast float %5057, %5048
  %5059 = fmul fast float %5057, %5049
  %5060 = fmul fast float %5057, %5050
  %5061 = fsub fast float %5041, %5058
  %5062 = fsub fast float %5040, %5059
  %5063 = fsub fast float %5039, %5060
  %5064 = call float @dx.op.binary.f32(i32 36, float %5052, float 1.000000e+00)  ; FMin(a,b)
  %5065 = fsub fast float 1.000000e+00, %5052
  %5066 = bitcast float %5065 to i32
  %5067 = sub nsw i32 2129859010, %5066
  %5068 = fsub fast float 1.000000e+00, %53
  %5069 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.binary.f32(i32 35, float %5069, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5071 = fdiv fast float %5068, %5070
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, 5.000000e-01
  %5075 = fadd fast float %5074, 5.000000e-01
  %5076 = fmul fast float %5075, %53
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, %5071
  %5080 = fadd fast float %5076, %5079
  %5081 = fsub fast float 5.000000e-01, %5074
  %5082 = fmul fast float %5081, %5045
  %5083 = fmul fast float %5081, %5046
  %5084 = fmul fast float %5081, %5047
  %5085 = fadd fast float %5080, %5082
  %5086 = fadd fast float %5080, %5083
  %5087 = fadd fast float %5080, %5084
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, 5.000000e-01
  %5091 = fadd fast float %5090, 5.000000e-01
  %5092 = fmul fast float %5091, %53
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fmul fast float %5094, %5071
  %5096 = fadd fast float %5092, %5095
  %5097 = fsub fast float 5.000000e-01, %5090
  %5098 = fmul fast float %5097, %5045
  %5099 = fmul fast float %5097, %5046
  %5100 = fmul fast float %5097, %5047
  %5101 = fadd fast float %5096, %5098
  %5102 = fadd fast float %5096, %5099
  %5103 = fadd fast float %5096, %5100
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = call float @dx.op.binary.f32(i32 36, float %5045, float %5105)  ; FMin(a,b)
  %5107 = fsub fast float 1.000000e+00, %5064
  %5108 = fmul fast float %5106, %5107
  %5109 = fsub fast float 1.000000e+00, %5108
  %5110 = bitcast float %5109 to i32
  %5111 = sub nsw i32 2129859010, %5110
  %5112 = bitcast i32 %5111 to float
  %5113 = call float @dx.op.binary.f32(i32 36, float %5046, float %5105)  ; FMin(a,b)
  %5114 = fmul fast float %5113, %5107
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = bitcast float %5115 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = call float @dx.op.binary.f32(i32 36, float %5047, float %5105)  ; FMin(a,b)
  %5120 = fmul fast float %5119, %5107
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = fmul fast float %5064, %54
  %5126 = fmul fast float %5125, %5085
  %5127 = fmul fast float %5126, %5112
  %5128 = fmul fast float %5064, %55
  %5129 = fmul fast float %5128, %5086
  %5130 = fmul fast float %5129, %5118
  %5131 = fmul fast float %5064, %56
  %5132 = fmul fast float %5131, %5087
  %5133 = fmul fast float %5132, %5124
  %5134 = call float @dx.op.binary.f32(i32 36, float %5042, float %5105)  ; FMin(a,b)
  %5135 = fmul fast float %5134, %5107
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = bitcast float %5136 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = call float @dx.op.binary.f32(i32 36, float %5043, float %5105)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5107
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %5053, float %5105)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5107
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5125, %5101
  %5153 = fmul fast float %5152, %5139
  %5154 = fmul fast float %5128, %5102
  %5155 = fmul fast float %5154, %5145
  %5156 = fmul fast float %5131, %5103
  %5157 = fmul fast float %5156, %5151
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5130, float %5133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = select i1 %202, float 0.000000e+00, float %5127
  %5160 = select i1 %202, float %5158, float %5130
  %5161 = select i1 %202, float 0.000000e+00, float %5133
  %5162 = call float @dx.op.dot3.f32(i32 55, float %5153, float %5155, float %5157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = select i1 %202, float 0.000000e+00, float %5153
  %5164 = select i1 %202, float %5162, float %5155
  %5165 = select i1 %202, float 0.000000e+00, float %5157
  %5166 = fmul fast float %5055, 9.843750e-01
  %5167 = fmul fast float %5051, 9.843750e-01
  %5168 = fadd fast float %5166, 7.812500e-03
  %5169 = fadd fast float %5167, 7.812500e-03
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5168, float %5169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 3
  %5173 = fmul fast float %5171, %5042
  %5174 = fmul fast float %5171, %5043
  %5175 = fmul fast float %5171, %5053
  %5176 = fadd fast float %5173, %5172
  %5177 = fadd fast float %5174, %5172
  %5178 = fadd fast float %5175, %5172
  %5179 = fcmp fast ogt float %3848, 0.000000e+00
  br i1 %5179, label %5180, label %5206

; <label>:5180                                    ; preds = %5035
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3848, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.ResRet.f32 %5181, 2
  %5185 = fadd fast float %5182, -5.000000e-01
  %5186 = fadd fast float %5183, -5.000000e-01
  %5187 = fadd fast float %5184, -5.000000e-01
  %5188 = fsub fast float 1.000000e+00, %5042
  %5189 = fsub fast float 1.000000e+00, %5043
  %5190 = fsub fast float 1.000000e+00, %5053
  %5191 = fmul fast float %5042, 4.000000e+00
  %5192 = fmul fast float %5191, %5188
  %5193 = fmul fast float %5192, %5185
  %5194 = fmul fast float %5043, 4.000000e+00
  %5195 = fmul fast float %5194, %5189
  %5196 = fmul fast float %5195, %5186
  %5197 = fmul fast float %5053, 4.000000e+00
  %5198 = fmul fast float %5197, %5190
  %5199 = fmul fast float %5198, %5187
  %5200 = fadd fast float %5193, %5176
  %5201 = fadd fast float %5196, %5177
  %5202 = fadd fast float %5199, %5178
  %5203 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  br label %5206

; <label>:5206                                    ; preds = %5180, %5035
  %5207 = phi float [ %5203, %5180 ], [ %5176, %5035 ]
  %5208 = phi float [ %5204, %5180 ], [ %5177, %5035 ]
  %5209 = phi float [ %5205, %5180 ], [ %5178, %5035 ]
  %5210 = call float @dx.op.binary.f32(i32 35, float %5208, float %5209)  ; FMax(a,b)
  %5211 = call float @dx.op.binary.f32(i32 35, float %5207, float %5210)  ; FMax(a,b)
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = fmul fast float %5212, %5159
  %5214 = fmul fast float %5212, %5160
  %5215 = fmul fast float %5212, %5161
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = fcmp fast ogt float %5216, 0x3E7FF19E20000000
  %5218 = fdiv fast float 1.000000e+00, %5216
  %5219 = select i1 %5217, float %5218, float 0.000000e+00
  %5220 = fmul fast float %5219, %5045
  %5221 = fmul fast float %5219, %5046
  %5222 = fmul fast float %5219, %5047
  %5223 = fadd fast float %5220, -1.000000e+00
  %5224 = fadd fast float %5221, -1.000000e+00
  %5225 = fadd fast float %5222, -1.000000e+00
  %5226 = fmul fast float %5223, 5.000000e-01
  %5227 = fmul fast float %5224, 5.000000e-01
  %5228 = fmul fast float %5225, 5.000000e-01
  %5229 = fadd fast float %5226, 1.000000e+00
  %5230 = fadd fast float %5227, 1.000000e+00
  %5231 = fadd fast float %5228, 1.000000e+00
  %5232 = fmul fast float %5207, %5163
  %5233 = fmul fast float %5208, %5164
  %5234 = fmul fast float %5209, %5165
  %5235 = fsub fast float 1.000000e+00, %5055
  %5236 = bitcast float %5235 to i32
  %5237 = sitofp i32 %5236 to float
  %5238 = fmul fast float %5237, 5.000000e+00
  %5239 = fadd fast float %5238, 0xC1EFBF8940000000
  %5240 = fptosi float %5239 to i32
  %5241 = bitcast i32 %5240 to float
  %5242 = fmul fast float %5241, %3849
  %5243 = fmul fast float %5159, %5242
  %5244 = fmul fast float %5243, %5212
  %5245 = fmul fast float %5244, %5229
  %5246 = fmul fast float %5160, %5242
  %5247 = fmul fast float %5246, %5212
  %5248 = fmul fast float %5247, %5230
  %5249 = fmul fast float %5161, %5242
  %5250 = fmul fast float %5249, %5212
  %5251 = fmul fast float %5250, %5231
  %5252 = fmul fast float %5213, %3845
  %5253 = fmul fast float %5214, %3845
  %5254 = fmul fast float %5215, %3845
  %5255 = fadd fast float %5232, %3841
  %5256 = fadd fast float %5255, %5245
  %5257 = fmul fast float %5256, %3845
  %5258 = fadd fast float %5233, %3842
  %5259 = fadd fast float %5258, %5248
  %5260 = fmul fast float %5259, %3845
  %5261 = fadd fast float %5234, %3843
  %5262 = fadd fast float %5261, %5251
  %5263 = fmul fast float %5262, %3845
  %5264 = bitcast i32 %5067 to float
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5267 = fcmp fast oeq float %5266, 0.000000e+00
  br i1 %5267, label %5495, label %5268

; <label>:5268                                    ; preds = %5206
  %5269 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 1
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %202, float %5277, float %5273
  %5281 = select i1 %202, float %5279, float %5274
  %5282 = select i1 %202, float %5278, float %5275
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5285 = fcmp fast une float %5284, 0.000000e+00
  br i1 %5285, label %5286, label %5303

; <label>:5286                                    ; preds = %5268
  %5287 = fptoui float %76 to i32
  %5288 = fptoui float %77 to i32
  %5289 = lshr i32 %5287, 4
  %5290 = lshr i32 %5288, 4
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = fptoui float %5292 to i32
  %5294 = add i32 %5293, 15
  %5295 = lshr i32 %5294, 4
  %5296 = mul i32 %5295, %5290
  %5297 = add i32 %5296, %5289
  %5298 = shl i32 %5297, 3
  %5299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.i32 %5299, 0
  %5301 = and i32 %5300, -268435456
  %5302 = icmp eq i32 %5301, -1342177280
  br i1 %5302, label %5313, label %5303

; <label>:5303                                    ; preds = %5286, %5268
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5307 = fmul fast float %5305, %76
  %5308 = fmul fast float %5306, %77
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.ResRet.f32 %5309, 2
  br label %5313

; <label>:5313                                    ; preds = %5303, %5286
  %5314 = phi float [ %5310, %5303 ], [ 0.000000e+00, %5286 ]
  %5315 = phi float [ %5311, %5303 ], [ 0.000000e+00, %5286 ]
  %5316 = phi float [ %5312, %5303 ], [ 0.000000e+00, %5286 ]
  %5317 = call float @dx.op.binary.f32(i32 36, float %5315, float %5316)  ; FMin(a,b)
  %5318 = call float @dx.op.binary.f32(i32 36, float %5314, float %5317)  ; FMin(a,b)
  %5319 = fcmp fast ogt float %5318, 0.000000e+00
  br i1 %5319, label %5320, label %5495, !dx.controlflow.hints !74

; <label>:5320                                    ; preds = %5313
  %5321 = fmul fast float %5314, %5280
  %5322 = fmul fast float %5315, %5281
  %5323 = fmul fast float %5316, %5282
  %5324 = fsub fast float %5269, %5041
  %5325 = fsub fast float %5270, %5040
  %5326 = fsub fast float %5271, %5039
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5324, float %5325, float %5326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 25, float %5327)  ; Rsqrt(value)
  %5329 = fmul fast float %5328, %5324
  %5330 = fmul fast float %5328, %5325
  %5331 = fmul fast float %5328, %5326
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5037, float %5036, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5335 = fmul fast float %5334, %5334
  %5336 = fmul fast float %5335, %5264
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = fmul fast float %5337, %5334
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = fmul fast float %5339, %5339
  %5341 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5342 = fsub fast float 1.000000e+00, %5051
  %5343 = call float @dx.op.binary.f32(i32 35, float %5342, float 0x3F847AE140000000)  ; FMax(a,b)
  %5344 = fmul fast float %5343, %5343
  %5345 = fmul fast float %5344, %5344
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5055, %5055
  %5348 = fmul fast float %5347, %5346
  %5349 = fadd fast float %5348, %5345
  %5350 = bitcast float %5349 to i32
  %5351 = ashr i32 %5350, 1
  %5352 = add nsw i32 %5351, 532487669
  %5353 = bitcast i32 %5352 to float
  %5354 = fadd fast float %5353, %5055
  %5355 = fmul fast float %5345, %5340
  %5356 = fsub fast float 1.000000e+00, %5340
  %5357 = fadd fast float %5356, %5355
  %5358 = fmul fast float %5341, %5341
  %5359 = fmul fast float %5358, %5346
  %5360 = fadd fast float %5359, %5345
  %5361 = bitcast float %5360 to i32
  %5362 = ashr i32 %5361, 1
  %5363 = add nsw i32 %5362, 532487669
  %5364 = bitcast i32 %5363 to float
  %5365 = fadd fast float %5364, %5341
  %5366 = fmul fast float %5357, %5357
  %5367 = fmul fast float %5366, %5354
  %5368 = fmul fast float %5367, %5365
  %5369 = fdiv fast float 0x3FF0A00000000000, %5368
  %5370 = fmul fast float %5369, %5345
  %5371 = call float @dx.op.unary.f32(i32 6, float %5333)  ; FAbs(value)
  %5372 = fsub fast float 1.000000e+00, %5371
  %5373 = bitcast float %5372 to i32
  %5374 = sitofp i32 %5373 to float
  %5375 = fmul fast float %5374, 5.000000e+00
  %5376 = fadd fast float %5375, 0xC1EFBF8940000000
  %5377 = fptosi float %5376 to i32
  %5378 = bitcast i32 %5377 to float
  %5379 = fsub fast float 1.000000e+00, %5042
  %5380 = fsub fast float 1.000000e+00, %5043
  %5381 = fsub fast float 1.000000e+00, %5053
  %5382 = fmul fast float %5378, %5379
  %5383 = fmul fast float %5378, %5380
  %5384 = fmul fast float %5378, %5381
  %5385 = fadd fast float %5382, %5042
  %5386 = fadd fast float %5383, %5043
  %5387 = fadd fast float %5384, %5053
  br i1 %5179, label %5388, label %5411

; <label>:5388                                    ; preds = %5320
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3848, float %5371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = fadd fast float %5390, -5.000000e-01
  %5394 = fadd fast float %5391, -5.000000e-01
  %5395 = fadd fast float %5392, -5.000000e-01
  %5396 = fmul fast float %5042, 4.000000e+00
  %5397 = fmul fast float %5396, %5379
  %5398 = fmul fast float %5397, %5393
  %5399 = fmul fast float %5043, 4.000000e+00
  %5400 = fmul fast float %5399, %5380
  %5401 = fmul fast float %5400, %5394
  %5402 = fmul fast float %5053, 4.000000e+00
  %5403 = fmul fast float %5402, %5381
  %5404 = fmul fast float %5403, %5395
  %5405 = fadd fast float %5398, %5385
  %5406 = fadd fast float %5401, %5386
  %5407 = fadd fast float %5404, %5387
  %5408 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5410 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  br label %5411

; <label>:5411                                    ; preds = %5388, %5320
  %5412 = phi float [ %5408, %5388 ], [ %5385, %5320 ]
  %5413 = phi float [ %5409, %5388 ], [ %5386, %5320 ]
  %5414 = phi float [ %5410, %5388 ], [ %5387, %5320 ]
  %5415 = fmul fast float %5332, 9.843750e-01
  %5416 = fadd fast float %5415, 7.812500e-03
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5416, float %5169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 3
  %5420 = fmul fast float %5418, %5042
  %5421 = fmul fast float %5418, %5043
  %5422 = fmul fast float %5418, %5053
  %5423 = fadd fast float %5420, %5419
  %5424 = fadd fast float %5421, %5419
  %5425 = fadd fast float %5422, %5419
  br i1 %5179, label %5426, label %5449

; <label>:5426                                    ; preds = %5411
  %5427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3848, float %5332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.ResRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.ResRet.f32 %5427, 2
  %5431 = fadd fast float %5428, -5.000000e-01
  %5432 = fadd fast float %5429, -5.000000e-01
  %5433 = fadd fast float %5430, -5.000000e-01
  %5434 = fmul fast float %5042, 4.000000e+00
  %5435 = fmul fast float %5434, %5379
  %5436 = fmul fast float %5435, %5431
  %5437 = fmul fast float %5043, 4.000000e+00
  %5438 = fmul fast float %5437, %5380
  %5439 = fmul fast float %5438, %5432
  %5440 = fmul fast float %5053, 4.000000e+00
  %5441 = fmul fast float %5440, %5381
  %5442 = fmul fast float %5441, %5433
  %5443 = fadd fast float %5436, %5423
  %5444 = fadd fast float %5439, %5424
  %5445 = fadd fast float %5442, %5425
  %5446 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  br label %5449

; <label>:5449                                    ; preds = %5426, %5411
  %5450 = phi float [ %5446, %5426 ], [ %5423, %5411 ]
  %5451 = phi float [ %5447, %5426 ], [ %5424, %5411 ]
  %5452 = phi float [ %5448, %5426 ], [ %5425, %5411 ]
  %5453 = call float @dx.op.binary.f32(i32 35, float %5451, float %5452)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5450, float %5453)  ; FMax(a,b)
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fmul fast float %5412, %5370
  %5457 = fmul fast float %5413, %5370
  %5458 = fmul fast float %5414, %5370
  %5459 = fsub fast float 1.000000e+00, %5333
  %5460 = bitcast float %5459 to i32
  %5461 = sitofp i32 %5460 to float
  %5462 = fmul fast float %5461, 5.000000e+00
  %5463 = fadd fast float %5462, 0xC1EFBF8940000000
  %5464 = fptosi float %5463 to i32
  %5465 = bitcast i32 %5464 to float
  %5466 = fmul fast float %5465, %3849
  %5467 = fmul fast float %5455, %5466
  %5468 = fmul fast float %5467, %5229
  %5469 = fmul fast float %5467, %5230
  %5470 = fmul fast float %5467, %5231
  %5471 = fadd fast float %5468, %5456
  %5472 = fadd fast float %5469, %5457
  %5473 = fadd fast float %5470, %5458
  %5474 = fmul fast float %5338, %5321
  %5475 = fmul fast float %5474, %5455
  %5476 = fmul fast float %5338, %5322
  %5477 = fmul fast float %5476, %5455
  %5478 = fmul fast float %5338, %5323
  %5479 = fmul fast float %5478, %5455
  %5480 = fmul fast float %5474, %5471
  %5481 = fmul fast float %5476, %5472
  %5482 = fmul fast float %5478, %5473
  %5483 = fadd fast float %5475, %5213
  %5484 = fmul fast float %5483, %3845
  %5485 = fadd fast float %5477, %5214
  %5486 = fmul fast float %5485, %3845
  %5487 = fadd fast float %5479, %5215
  %5488 = fmul fast float %5487, %3845
  %5489 = fadd fast float %5480, %5256
  %5490 = fmul fast float %5489, %3845
  %5491 = fadd fast float %5481, %5259
  %5492 = fmul fast float %5491, %3845
  %5493 = fadd fast float %5482, %5262
  %5494 = fmul fast float %5493, %3845
  br label %5495

; <label>:5495                                    ; preds = %5449, %5313, %5206
  %5496 = phi float [ %5257, %5206 ], [ %5257, %5313 ], [ %5490, %5449 ]
  %5497 = phi float [ %5260, %5206 ], [ %5260, %5313 ], [ %5492, %5449 ]
  %5498 = phi float [ %5263, %5206 ], [ %5263, %5313 ], [ %5494, %5449 ]
  %5499 = phi float [ %5252, %5206 ], [ %5252, %5313 ], [ %5484, %5449 ]
  %5500 = phi float [ %5253, %5206 ], [ %5253, %5313 ], [ %5486, %5449 ]
  %5501 = phi float [ %5254, %5206 ], [ %5254, %5313 ], [ %5488, %5449 ]
  %5502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.i32 %5502, 0
  %5504 = icmp eq i32 %5503, 0
  br i1 %5504, label %5939, label %5505

; <label>:5505                                    ; preds = %5495
  %5506 = fptoui float %76 to i32
  %5507 = fptoui float %77 to i32
  %5508 = lshr i32 %5506, 4
  %5509 = lshr i32 %5507, 4
  %5510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.i32 %5510, 0
  %5512 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5509, i32 %5511, i32 %5508)  ; UMad(a,b,c)
  %5513 = add nsw i32 %5503, -1
  %5514 = call i32 @dx.op.binary.i32(i32 37, i32 %5513, i32 0)  ; IMax(a,b)
  %5515 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5516 = fptoui float %5515 to i32
  %5517 = lshr i32 %5516, 5
  %5518 = call i32 @dx.op.binary.i32(i32 40, i32 %5517, i32 8191)  ; UMin(a,b)
  %5519 = shl i32 %5518, 2
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = lshr i32 %5521, 16
  %5523 = and i32 %5521, 65535
  %5524 = lshr i32 %5521, 21
  %5525 = lshr i32 %5523, 5
  %5526 = call i32 @dx.op.binary.i32(i32 40, i32 %5525, i32 %5514)  ; UMin(a,b)
  %5527 = icmp ugt i32 %5524, %5526
  br i1 %5527, label %5939, label %5528

; <label>:5528                                    ; preds = %5505
  br label %5529

; <label>:5529                                    ; preds = %5929, %5528
  %5530 = phi i32 [ %5936, %5929 ], [ %5524, %5528 ]
  %5531 = phi float [ %5930, %5929 ], [ %5496, %5528 ]
  %5532 = phi float [ %5931, %5929 ], [ %5497, %5528 ]
  %5533 = phi float [ %5932, %5929 ], [ %5498, %5528 ]
  %5534 = phi float [ %5933, %5929 ], [ %5499, %5528 ]
  %5535 = phi float [ %5934, %5929 ], [ %5500, %5528 ]
  %5536 = phi float [ %5935, %5929 ], [ %5501, %5528 ]
  %5537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.i32 %5537, 0
  %5539 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5512, i32 %5538, i32 %5530)  ; UMad(a,b,c)
  %5540 = shl i32 %5539, 2
  %5541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5540, i32 undef)  ; BufferLoad(srv,index,wot)
  %5542 = extractvalue %dx.types.ResRet.i32 %5541, 0
  %5543 = shl i32 %5530, 5
  %5544 = sub nsw i32 %5522, %5543
  %5545 = call i32 @dx.op.binary.i32(i32 37, i32 %5544, i32 0)  ; IMax(a,b)
  %5546 = call i32 @dx.op.binary.i32(i32 38, i32 %5545, i32 31)  ; IMin(a,b)
  %5547 = sub nsw i32 1, %5522
  %5548 = add nsw i32 %5547, %5523
  %5549 = call i32 @dx.op.binary.i32(i32 37, i32 %5548, i32 0)  ; IMax(a,b)
  %5550 = call i32 @dx.op.binary.i32(i32 38, i32 %5549, i32 32)  ; IMin(a,b)
  %5551 = and i32 %5550, 31
  %5552 = shl i32 -1, %5551
  %5553 = xor i32 %5552, -1
  %5554 = and i32 %5546, 31
  %5555 = shl i32 %5553, %5554
  %5556 = icmp eq i32 %5550, 32
  %5557 = select i1 %5556, i32 -1, i32 %5555
  %5558 = and i32 %5557, %5542
  %5559 = icmp eq i32 %5558, 0
  br i1 %5559, label %5929, label %5560

; <label>:5560                                    ; preds = %5529
  br label %5561

; <label>:5561                                    ; preds = %5641, %5560
  %5562 = phi i32 [ %5573, %5641 ], [ %5558, %5560 ]
  %5563 = phi float [ %5642, %5641 ], [ %5531, %5560 ]
  %5564 = phi float [ %5643, %5641 ], [ %5532, %5560 ]
  %5565 = phi float [ %5644, %5641 ], [ %5533, %5560 ]
  %5566 = phi float [ %5645, %5641 ], [ %5534, %5560 ]
  %5567 = phi float [ %5646, %5641 ], [ %5535, %5560 ]
  %5568 = phi float [ %5647, %5641 ], [ %5536, %5560 ]
  %5569 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5562)  ; FirstbitLo(value)
  %5570 = add i32 %5569, %5543
  %5571 = and i32 %5569, 31
  %5572 = shl i32 1, %5571
  %5573 = xor i32 %5572, %5562
  %5574 = mul i32 %5570, 112
  %5575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5574, i32 undef)  ; BufferLoad(srv,index,wot)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.ResRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.ResRet.f32 %5575, 2
  %5579 = or i32 %5574, 12
  %5580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = add i32 %5574, 44
  %5583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5582, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = add i32 %5574, 48
  %5586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 0
  %5588 = extractvalue %dx.types.ResRet.f32 %5586, 1
  %5589 = extractvalue %dx.types.ResRet.f32 %5586, 2
  %5590 = add i32 %5574, 80
  %5591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5590, i32 undef)  ; BufferLoad(srv,index,wot)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 2
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = select i1 %202, float %5592, float %5576
  %5596 = select i1 %202, float %5594, float %5577
  %5597 = select i1 %202, float %5593, float %5578
  %5598 = fsub fast float %5587, %163
  %5599 = fsub fast float %5588, %164
  %5600 = fsub fast float %5589, %165
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5598, float %5599, float %5600)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = call float @dx.op.unary.f32(i32 24, float %5601)  ; Sqrt(value)
  %5603 = fdiv fast float 1.000000e+00, %5602
  %5604 = fmul fast float %5603, %5598
  %5605 = fmul fast float %5603, %5599
  %5606 = fmul fast float %5603, %5600
  %5607 = fadd fast float %5602, %5581
  %5608 = fdiv fast float 1.000000e+00, %5607
  %5609 = fmul float %5584, %5608
  %5610 = fmul float %5609, %5609
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = and i32 %5572, %5558
  %5613 = icmp eq i32 %5612, 0
  br i1 %5613, label %5636, label %5614, !dx.controlflow.hints !75

; <label>:5614                                    ; preds = %5561
  %5615 = lshr i32 %5506, 5
  %5616 = lshr i32 %5507, 5
  %5617 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5615, i32 %5616, i32 %5570, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5618 = extractvalue %dx.types.ResRet.i32 %5617, 0
  %5619 = and i32 %5618, 3
  %5620 = icmp eq i32 %5619, 0
  %5621 = select i1 %5620, float 1.000000e+00, float 0.000000e+00
  %5622 = icmp eq i32 %5619, 3
  br i1 %5622, label %5623, label %5636

; <label>:5623                                    ; preds = %5614
  %5624 = lshr i32 %5618, 10
  %5625 = and i32 %5624, 8160
  %5626 = and i32 %5507, 31
  %5627 = or i32 %5625, %5626
  %5628 = lshr i32 %5618, 1
  %5629 = and i32 %5628, 16352
  %5630 = and i32 %5506, 31
  %5631 = or i32 %5629, %5630
  %5632 = lshr i32 %5618, 23
  %5633 = and i32 %5632, 255
  %5634 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5631, i32 %5627, i32 %5633, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5635 = extractvalue %dx.types.ResRet.f32 %5634, 0
  br label %5636

; <label>:5636                                    ; preds = %5623, %5614, %5561
  %5637 = phi float [ %5635, %5623 ], [ %5621, %5614 ], [ 0.000000e+00, %5561 ]
  %5638 = call float @dx.op.binary.f32(i32 36, float %5637, float %5637)  ; FMin(a,b)
  %5639 = call float @dx.op.binary.f32(i32 36, float %5637, float %5638)  ; FMin(a,b)
  %5640 = fcmp fast ogt float %5639, 0.000000e+00
  br i1 %5640, label %5649, label %5641, !dx.controlflow.hints !76

; <label>:5641                                    ; preds = %5885, %5636
  %5642 = phi float [ %5563, %5636 ], [ %5925, %5885 ]
  %5643 = phi float [ %5564, %5636 ], [ %5926, %5885 ]
  %5644 = phi float [ %5565, %5636 ], [ %5927, %5885 ]
  %5645 = phi float [ %5566, %5636 ], [ %5919, %5885 ]
  %5646 = phi float [ %5567, %5636 ], [ %5920, %5885 ]
  %5647 = phi float [ %5568, %5636 ], [ %5921, %5885 ]
  %5648 = icmp eq i32 %5562, %5572
  br i1 %5648, label %5928, label %5561

; <label>:5649                                    ; preds = %5636
  %5650 = fmul fast float %5637, %5595
  %5651 = fmul fast float %5637, %5596
  %5652 = fmul fast float %5637, %5597
  %5653 = fsub fast float %5589, %4249
  %5654 = fcmp fast ogt float %5653, 0.000000e+00
  %5655 = fsub fast float %165, %4249
  %5656 = fcmp fast ogt float %5655, 0.000000e+00
  %5657 = xor i1 %5656, %5654
  %5658 = fsub fast float %4249, %5589
  %5659 = fmul fast float %5658, 2.000000e+00
  %5660 = fadd fast float %5659, %5589
  %5661 = select i1 %5657, float %5589, float %5660
  %5662 = fsub fast float %5661, %165
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5662, float %5598, float %5599, float %5662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.unary.f32(i32 25, float %5663)  ; Rsqrt(value)
  %5665 = fmul fast float %5664, %5598
  %5666 = fmul fast float %5664, %5599
  %5667 = fmul fast float %5664, %5662
  %5668 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5665, float %5666, float %5667)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fdiv fast float 1.000000e+00, %5669
  %5671 = fmul fast float %5670, %5668
  %5672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5655, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fcmp fast ogt float %5672, 0.000000e+00
  %5674 = fcmp fast olt float %5672, 0.000000e+00
  %5675 = zext i1 %5673 to i32
  %5676 = zext i1 %5674 to i32
  %5677 = sub nsw i32 %5675, %5676
  %5678 = sitofp i32 %5677 to float
  %5679 = fsub fast float %5661, %4249
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5679, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = fcmp fast ogt float %5680, 0.000000e+00
  %5682 = fcmp fast olt float %5680, 0.000000e+00
  %5683 = zext i1 %5681 to i32
  %5684 = zext i1 %5682 to i32
  %5685 = sub nsw i32 %5683, %5684
  %5686 = sitofp i32 %5685 to float
  %5687 = fcmp fast une float %5678, %5686
  br i1 %5687, label %5688, label %5698

; <label>:5688                                    ; preds = %5649
  %5689 = fmul fast float %5671, %5667
  %5690 = fmul fast float %5671, %5666
  %5691 = fmul fast float %5671, %5665
  %5692 = fmul fast float %5691, %5691
  %5693 = fmul fast float %5690, %5690
  %5694 = fadd fast float %5692, %5693
  %5695 = fmul fast float %5689, %5689
  %5696 = fadd fast float %5694, %5695
  %5697 = call float @dx.op.unary.f32(i32 24, float %5696)  ; Sqrt(value)
  br label %5710

; <label>:5698                                    ; preds = %5649
  %5699 = icmp slt i32 %5677, 0
  br i1 %5699, label %5700, label %5710

; <label>:5700                                    ; preds = %5698
  %5701 = fsub fast float %163, %5587
  %5702 = fsub fast float %164, %5588
  %5703 = fsub fast float %165, %5661
  %5704 = fmul fast float %5701, %5701
  %5705 = fmul fast float %5702, %5702
  %5706 = fadd fast float %5704, %5705
  %5707 = fmul fast float %5703, %5703
  %5708 = fadd fast float %5706, %5707
  %5709 = call float @dx.op.unary.f32(i32 24, float %5708)  ; Sqrt(value)
  br label %5710

; <label>:5710                                    ; preds = %5700, %5698, %5688
  %5711 = phi float [ %5697, %5688 ], [ %5709, %5700 ], [ 0.000000e+00, %5698 ]
  %5712 = and i1 %5656, %5654
  %5713 = fsub fast float -0.000000e+00, %5711
  %5714 = select i1 %5712, float -0.000000e+00, float %5713
  %5715 = fmul fast float %4250, 0x3FF7154760000000
  %5716 = fmul fast float %5715, %5714
  %5717 = fmul fast float %4251, 0x3FF7154760000000
  %5718 = fmul fast float %5717, %5714
  %5719 = fmul fast float %4252, 0x3FF7154760000000
  %5720 = fmul fast float %5719, %5714
  %5721 = call float @dx.op.unary.f32(i32 21, float %5716)  ; Exp(value)
  %5722 = call float @dx.op.unary.f32(i32 21, float %5718)  ; Exp(value)
  %5723 = call float @dx.op.unary.f32(i32 21, float %5720)  ; Exp(value)
  %5724 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5725 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5727 = fmul fast float %5650, %5724
  %5728 = fmul fast float %5651, %5725
  %5729 = fmul fast float %5652, %5726
  %5730 = fsub fast float %5604, %5041
  %5731 = fsub fast float %5605, %5040
  %5732 = fsub fast float %5606, %5039
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.unary.f32(i32 25, float %5733)  ; Rsqrt(value)
  %5735 = fmul fast float %5734, %5730
  %5736 = fmul fast float %5734, %5731
  %5737 = fmul fast float %5734, %5732
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5606, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5037, float %5036, float %5735, float %5736, float %5737)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5741 = fmul fast float %5740, %5611
  %5742 = fmul fast float %5740, %5740
  %5743 = fmul fast float %5742, %5264
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = fmul fast float %5741, %5744
  %5746 = bitcast float %5601 to i32
  %5747 = ashr i32 %5746, 1
  %5748 = sub nsw i32 1597463007, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = fmul fast float %5749, %5598
  %5751 = fmul fast float %5749, %5599
  %5752 = fmul fast float %5749, %5600
  %5753 = fsub fast float %5750, %5041
  %5754 = fsub fast float %5751, %5040
  %5755 = fsub fast float %5752, %5039
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 25, float %5756)  ; Rsqrt(value)
  %5758 = fmul fast float %5753, %5757
  %5759 = fmul fast float %5754, %5757
  %5760 = fmul fast float %5755, %5757
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5758, float %5759, float %5760)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fmul fast float %5761, %5761
  %5763 = call float @dx.op.unary.f32(i32 6, float %5738)  ; FAbs(value)
  %5764 = fsub fast float 1.000000e+00, %5051
  %5765 = call float @dx.op.binary.f32(i32 35, float %5764, float 0x3F847AE140000000)  ; FMax(a,b)
  %5766 = fmul fast float %5765, %5765
  %5767 = fmul fast float %5766, %5766
  %5768 = fsub fast float 1.000000e+00, %5767
  %5769 = fmul fast float %5055, %5055
  %5770 = fmul fast float %5769, %5768
  %5771 = fadd fast float %5770, %5767
  %5772 = bitcast float %5771 to i32
  %5773 = ashr i32 %5772, 1
  %5774 = add nsw i32 %5773, 532487669
  %5775 = bitcast i32 %5774 to float
  %5776 = fadd fast float %5775, %5055
  %5777 = fmul fast float %5767, %5762
  %5778 = fsub fast float 1.000000e+00, %5762
  %5779 = fadd fast float %5778, %5777
  %5780 = fmul fast float %5763, %5763
  %5781 = fmul fast float %5780, %5768
  %5782 = fadd fast float %5781, %5767
  %5783 = bitcast float %5782 to i32
  %5784 = ashr i32 %5783, 1
  %5785 = add nsw i32 %5784, 532487669
  %5786 = bitcast i32 %5785 to float
  %5787 = fadd fast float %5786, %5763
  %5788 = fmul fast float %5779, %5779
  %5789 = fmul fast float %5788, %5776
  %5790 = fmul fast float %5789, %5787
  %5791 = fdiv fast float 1.000000e+00, %5790
  %5792 = bitcast float %5767 to i32
  %5793 = sitofp i32 %5792 to float
  %5794 = fmul fast float %5793, 0x3FE7F73180000000
  %5795 = fadd fast float %5794, 0x41AFE27C40000000
  %5796 = fptosi float %5795 to i32
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5584, 0x3FD80E9D60000000
  %5799 = fmul fast float %5798, %5749
  %5800 = fadd fast float %5797, %5799
  %5801 = bitcast float %5800 to i32
  %5802 = sub nsw i32 2129859010, %5801
  %5803 = bitcast i32 %5802 to float
  %5804 = fmul fast float %5767, %5791
  %5805 = fmul fast float %5804, %5797
  %5806 = fmul fast float %5805, %5803
  %5807 = call float @dx.op.unary.f32(i32 6, float %5739)  ; FAbs(value)
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = bitcast float %5808 to i32
  %5810 = sitofp i32 %5809 to float
  %5811 = fmul fast float %5810, 5.000000e+00
  %5812 = fadd fast float %5811, 0xC1EFBF8940000000
  %5813 = fptosi float %5812 to i32
  %5814 = bitcast i32 %5813 to float
  %5815 = fsub fast float 1.000000e+00, %5042
  %5816 = fsub fast float 1.000000e+00, %5043
  %5817 = fsub fast float 1.000000e+00, %5053
  %5818 = fmul fast float %5814, %5815
  %5819 = fmul fast float %5814, %5816
  %5820 = fmul fast float %5814, %5817
  %5821 = fadd fast float %5818, %5042
  %5822 = fadd fast float %5819, %5043
  %5823 = fadd fast float %5820, %5053
  br i1 %5179, label %5824, label %5847

; <label>:5824                                    ; preds = %5710
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3848, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fadd fast float %5828, -5.000000e-01
  %5832 = fmul fast float %5042, 4.000000e+00
  %5833 = fmul fast float %5832, %5815
  %5834 = fmul fast float %5833, %5829
  %5835 = fmul fast float %5043, 4.000000e+00
  %5836 = fmul fast float %5835, %5816
  %5837 = fmul fast float %5836, %5830
  %5838 = fmul fast float %5053, 4.000000e+00
  %5839 = fmul fast float %5838, %5817
  %5840 = fmul fast float %5839, %5831
  %5841 = fadd fast float %5834, %5821
  %5842 = fadd fast float %5837, %5822
  %5843 = fadd fast float %5840, %5823
  %5844 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5845 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5846 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  br label %5847

; <label>:5847                                    ; preds = %5824, %5710
  %5848 = phi float [ %5844, %5824 ], [ %5821, %5710 ]
  %5849 = phi float [ %5845, %5824 ], [ %5822, %5710 ]
  %5850 = phi float [ %5846, %5824 ], [ %5823, %5710 ]
  %5851 = fmul fast float %5738, 9.843750e-01
  %5852 = fadd fast float %5851, 7.812500e-03
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5852, float %5169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 3
  %5856 = fmul fast float %5854, %5042
  %5857 = fmul fast float %5854, %5043
  %5858 = fmul fast float %5854, %5053
  %5859 = fadd fast float %5856, %5855
  %5860 = fadd fast float %5857, %5855
  %5861 = fadd fast float %5858, %5855
  br i1 %5179, label %5862, label %5885

; <label>:5862                                    ; preds = %5847
  %5863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3848, float %5738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.ResRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.ResRet.f32 %5863, 2
  %5867 = fadd fast float %5864, -5.000000e-01
  %5868 = fadd fast float %5865, -5.000000e-01
  %5869 = fadd fast float %5866, -5.000000e-01
  %5870 = fmul fast float %5042, 4.000000e+00
  %5871 = fmul fast float %5870, %5815
  %5872 = fmul fast float %5871, %5867
  %5873 = fmul fast float %5043, 4.000000e+00
  %5874 = fmul fast float %5873, %5816
  %5875 = fmul fast float %5874, %5868
  %5876 = fmul fast float %5053, 4.000000e+00
  %5877 = fmul fast float %5876, %5817
  %5878 = fmul fast float %5877, %5869
  %5879 = fadd fast float %5872, %5859
  %5880 = fadd fast float %5875, %5860
  %5881 = fadd fast float %5878, %5861
  %5882 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  %5884 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  br label %5885

; <label>:5885                                    ; preds = %5862, %5847
  %5886 = phi float [ %5882, %5862 ], [ %5859, %5847 ]
  %5887 = phi float [ %5883, %5862 ], [ %5860, %5847 ]
  %5888 = phi float [ %5884, %5862 ], [ %5861, %5847 ]
  %5889 = call float @dx.op.binary.f32(i32 35, float %5887, float %5888)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5886, float %5889)  ; FMax(a,b)
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = fmul fast float %5848, %5806
  %5893 = fmul fast float %5849, %5806
  %5894 = fmul fast float %5850, %5806
  %5895 = fsub fast float 1.000000e+00, %5739
  %5896 = bitcast float %5895 to i32
  %5897 = sitofp i32 %5896 to float
  %5898 = fmul fast float %5897, 5.000000e+00
  %5899 = fadd fast float %5898, 0xC1EFBF8940000000
  %5900 = fptosi float %5899 to i32
  %5901 = bitcast i32 %5900 to float
  %5902 = fmul fast float %5901, %3849
  %5903 = fmul fast float %5891, %5902
  %5904 = fmul fast float %5903, %5229
  %5905 = fmul fast float %5903, %5230
  %5906 = fmul fast float %5903, %5231
  %5907 = fadd fast float %5904, %5892
  %5908 = fadd fast float %5905, %5893
  %5909 = fadd fast float %5906, %5894
  %5910 = fmul fast float %5727, %3845
  %5911 = fmul fast float %5910, %5745
  %5912 = fmul fast float %5911, %5891
  %5913 = fmul fast float %5728, %3845
  %5914 = fmul fast float %5913, %5745
  %5915 = fmul fast float %5914, %5891
  %5916 = fmul fast float %5729, %3845
  %5917 = fmul fast float %5916, %5745
  %5918 = fmul fast float %5917, %5891
  %5919 = fadd fast float %5912, %5566
  %5920 = fadd fast float %5915, %5567
  %5921 = fadd fast float %5918, %5568
  %5922 = fmul fast float %5911, %5907
  %5923 = fmul fast float %5914, %5908
  %5924 = fmul fast float %5917, %5909
  %5925 = fadd fast float %5922, %5563
  %5926 = fadd fast float %5923, %5564
  %5927 = fadd fast float %5924, %5565
  br label %5641

; <label>:5928                                    ; preds = %5641
  br label %5929

; <label>:5929                                    ; preds = %5928, %5529
  %5930 = phi float [ %5531, %5529 ], [ %5642, %5928 ]
  %5931 = phi float [ %5532, %5529 ], [ %5643, %5928 ]
  %5932 = phi float [ %5533, %5529 ], [ %5644, %5928 ]
  %5933 = phi float [ %5534, %5529 ], [ %5645, %5928 ]
  %5934 = phi float [ %5535, %5529 ], [ %5646, %5928 ]
  %5935 = phi float [ %5536, %5529 ], [ %5647, %5928 ]
  %5936 = add i32 %5530, 1
  %5937 = icmp ugt i32 %5936, %5526
  br i1 %5937, label %5938, label %5529

; <label>:5938                                    ; preds = %5929
  br label %5939

; <label>:5939                                    ; preds = %5938, %5505, %5495
  %5940 = phi float [ %5496, %5495 ], [ %5496, %5505 ], [ %5930, %5938 ]
  %5941 = phi float [ %5497, %5495 ], [ %5497, %5505 ], [ %5931, %5938 ]
  %5942 = phi float [ %5498, %5495 ], [ %5498, %5505 ], [ %5932, %5938 ]
  %5943 = phi float [ %5499, %5495 ], [ %5499, %5505 ], [ %5933, %5938 ]
  %5944 = phi float [ %5500, %5495 ], [ %5500, %5505 ], [ %5934, %5938 ]
  %5945 = phi float [ %5501, %5495 ], [ %5501, %5505 ], [ %5935, %5938 ]
  %5946 = call float @dx.op.unary.f32(i32 24, float %5045)  ; Sqrt(value)
  %5947 = call float @dx.op.unary.f32(i32 24, float %5046)  ; Sqrt(value)
  %5948 = call float @dx.op.unary.f32(i32 24, float %5047)  ; Sqrt(value)
  %5949 = fmul fast float %5946, %5943
  %5950 = fmul fast float %5947, %5944
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  br i1 %202, label %5953, label %5973

; <label>:5953                                    ; preds = %5939
  %5954 = fadd fast float %5945, %3851
  %5955 = fmul fast float %5954, %3852
  %5956 = fsub fast float 1.000000e+00, %3852
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5960 = fmul fast float %5959, %5957
  %5961 = fadd fast float %5960, %5955
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = fmul fast float %5963, %5235
  %5965 = fsub fast float %5961, %5964
  %5966 = fadd fast float %5950, %5949
  %5967 = fmul fast float %5952, %5966
  %5968 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5969 = fsub fast float %5965, %5968
  %5970 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5971 = fmul fast float %5969, %5970
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  br label %5989

; <label>:5973                                    ; preds = %5939
  %5974 = fmul fast float %5948, %5945
  %5975 = fmul fast float %5952, %5949
  %5976 = fmul fast float %5952, %5950
  %5977 = fmul fast float %5974, %5952
  %5978 = add i32 %32, 356
  %5979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.i32 %5979, 0
  %5981 = and i32 %5980, 32
  %5982 = icmp eq i32 %5981, 0
  br i1 %5982, label %5989, label %5983

; <label>:5983                                    ; preds = %5973
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = fmul fast float %5985, 0x3FE99999A0000000
  %5987 = fadd fast float %5985, %5975
  %5988 = fadd fast float %5986, %5977
  br label %5989

; <label>:5989                                    ; preds = %5983, %5973, %5953
  %5990 = phi float [ %5967, %5953 ], [ %5987, %5983 ], [ %5975, %5973 ]
  %5991 = phi float [ %5972, %5953 ], [ %5976, %5983 ], [ %5976, %5973 ]
  %5992 = phi float [ 1.000000e+00, %5953 ], [ %5988, %5983 ], [ %5977, %5973 ]
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = fmul fast float %5994, %5941
  %5996 = fmul fast float %5994, %5942
  %5997 = fadd fast float %5941, %5940
  %5998 = select i1 %202, float %5997, float %5940
  %5999 = fmul float %5998, %5994
  %6000 = select i1 %202, float 0.000000e+00, float %5995
  %6001 = select i1 %202, float 0.000000e+00, float %5996
  %6002 = fmul fast float %5990, %5946
  %6003 = fmul fast float %5991, %5947
  %6004 = fmul fast float %5992, %5948
  %6005 = fadd fast float %5999, %6002
  %6006 = fadd fast float %6000, %6003
  %6007 = fadd fast float %6001, %6004
  %6008 = select i1 %202, float %5991, float %6006
  %6009 = select i1 %202, float %5992, float %6007
  %6010 = call float @dx.op.binary.f32(i32 36, float %6005, float 3.225500e+04)  ; FMin(a,b)
  %6011 = call float @dx.op.binary.f32(i32 36, float %6008, float 3.225500e+04)  ; FMin(a,b)
  %6012 = call float @dx.op.binary.f32(i32 36, float %6009, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6010)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6011)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6012)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

