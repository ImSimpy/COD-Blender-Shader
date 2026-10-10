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
; shader hash: 92cc009b318373eba4f3c6b3880c53d2
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
  %396 = add i32 %32, 552
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
  %554 = add i32 %32, 440
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
  %577 = add i32 %32, 520
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
  %775 = add i32 %32, 456
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
  %859 = add i32 %32, 472
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
  %1036 = add i32 %32, 508
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
  %1088 = add i32 %32, 492
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
  %1114 = add i32 %32, 444
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
  %1137 = add i32 %32, 524
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
  %1335 = add i32 %32, 460
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
  %1419 = add i32 %32, 476
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
  %1775 = add i32 %32, 512
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
  %1827 = add i32 %32, 496
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
  %1853 = add i32 %32, 448
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
  %1876 = add i32 %32, 528
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
  %2074 = add i32 %32, 464
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
  %2158 = add i32 %32, 480
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
  %2514 = add i32 %32, 516
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
  %2566 = add i32 %32, 500
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
  %2592 = add i32 %32, 452
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
  %2615 = add i32 %32, 532
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
  %2813 = add i32 %32, 468
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
  %2897 = add i32 %32, 484
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
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  %3141 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3142 = fmul fast float %3141, 0x3FE3333340000000
  %3143 = fsub fast float 1.000000e+00, %3142
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3143, float %3127, float %3128, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = call float @dx.op.unary.f32(i32 25, float %3144)  ; Rsqrt(value)
  %3146 = fmul fast float %3145, %3127
  %3147 = fmul fast float %3145, %3128
  %3148 = fmul fast float %3143, %3145
  %3149 = fmul fast float %3148, %83
  %3150 = fmul fast float %3148, %84
  %3151 = fmul fast float %3148, %85
  %3152 = fmul fast float %3146, %57
  %3153 = fmul fast float %3146, %58
  %3154 = fmul fast float %3146, %59
  %3155 = fadd fast float %3149, %3152
  %3156 = fadd fast float %3150, %3153
  %3157 = fadd fast float %3151, %3154
  %3158 = fmul fast float %95, %3147
  %3159 = fmul fast float %96, %3147
  %3160 = fmul fast float %97, %3147
  %3161 = fadd fast float %3155, %3158
  %3162 = fadd fast float %3156, %3159
  %3163 = fadd fast float %3157, %3160
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3163, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3161, %3165
  %3167 = fmul fast float %3162, %3165
  %3168 = fmul fast float %3163, %3165
  %3169 = icmp eq i32 %33, 65535
  br i1 %3169, label %3684, label %3170

; <label>:3170                                    ; preds = %3126
  %3171 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3172 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3173 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3174 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3175 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3176 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3177 = fadd fast float %3171, %34
  %3178 = fadd fast float %3172, %35
  %3179 = fadd fast float %3173, %36
  %3180 = fadd fast float %3174, %34
  %3181 = fadd fast float %3175, %35
  %3182 = fadd fast float %3176, %36
  %3183 = mul i32 %33, 48
  %3184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.ResRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.ResRet.f32 %3184, 2
  %3188 = add i32 %3183, 16
  %3189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.ResRet.f32 %3189, 1
  %3192 = extractvalue %dx.types.ResRet.f32 %3189, 2
  %3193 = add i32 %3183, 32
  %3194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = extractvalue %dx.types.ResRet.f32 %3194, 3
  %3199 = bitcast float %3198 to i32
  %3200 = fmul fast float %3185, %34
  %3201 = fmul fast float %3186, %35
  %3202 = fmul fast float %3187, %36
  %3203 = fsub fast float %3200, %3190
  %3204 = fsub fast float %3201, %3191
  %3205 = fsub fast float %3202, %3192
  %3206 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3207 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  %3208 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3209 = fmul fast float %3206, %3195
  %3210 = fmul fast float %3207, %3196
  %3211 = fmul fast float %3208, %3197
  %3212 = fadd fast float %3195, -1.000000e+00
  %3213 = fadd fast float %3196, -1.000000e+00
  %3214 = fadd fast float %3197, -1.000000e+00
  %3215 = call float @dx.op.unary.f32(i32 27, float %3209)  ; Round_ni(value)
  %3216 = call float @dx.op.unary.f32(i32 27, float %3210)  ; Round_ni(value)
  %3217 = call float @dx.op.unary.f32(i32 27, float %3211)  ; Round_ni(value)
  %3218 = call float @dx.op.binary.f32(i32 36, float %3215, float %3212)  ; FMin(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3216, float %3213)  ; FMin(a,b)
  %3220 = call float @dx.op.binary.f32(i32 36, float %3217, float %3214)  ; FMin(a,b)
  %3221 = fmul fast float %3220, %3196
  %3222 = fadd fast float %3221, %3219
  %3223 = fmul fast float %3222, %3195
  %3224 = fadd fast float %3223, %3218
  %3225 = fptosi float %3224 to i32
  %3226 = add nsw i32 %3225, %3199
  %3227 = shl nsw i32 %3226, 2
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 16
  %3231 = icmp eq i32 %3230, 0
  br i1 %3231, label %3653, label %3232

; <label>:3232                                    ; preds = %3170
  br label %3233

; <label>:3233                                    ; preds = %3354, %3232
  %3234 = phi i32 [ %3256, %3354 ], [ %3230, %3232 ]
  %3235 = phi float [ %3355, %3354 ], [ 0.000000e+00, %3232 ]
  %3236 = phi float [ %3356, %3354 ], [ %3140, %3232 ]
  %3237 = phi float [ %3357, %3354 ], [ %3138, %3232 ]
  %3238 = phi float [ %3358, %3354 ], [ 0.000000e+00, %3232 ]
  %3239 = phi float [ %3359, %3354 ], [ 0.000000e+00, %3232 ]
  %3240 = phi float [ %3360, %3354 ], [ %3132, %3232 ]
  %3241 = phi float [ %3361, %3354 ], [ %3133, %3232 ]
  %3242 = phi float [ %3362, %3354 ], [ %3134, %3232 ]
  %3243 = phi float [ %3363, %3354 ], [ %3166, %3232 ]
  %3244 = phi float [ %3364, %3354 ], [ %3167, %3232 ]
  %3245 = phi float [ %3365, %3354 ], [ %3168, %3232 ]
  %3246 = phi float [ %3366, %3354 ], [ %3137, %3232 ]
  %3247 = phi float [ %3367, %3354 ], [ %3136, %3232 ]
  %3248 = phi float [ %3368, %3354 ], [ 0.000000e+00, %3232 ]
  %3249 = phi float [ %3369, %3354 ], [ %3135, %3232 ]
  %3250 = phi float [ %3370, %3354 ], [ %3129, %3232 ]
  %3251 = phi float [ %3371, %3354 ], [ %3130, %3232 ]
  %3252 = phi float [ %3372, %3354 ], [ %3131, %3232 ]
  %3253 = shl nuw nsw i32 %3234, 2
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = lshr i32 %3255, 16
  %3257 = shl i32 %3255, 8
  %3258 = and i32 %3257, 16776960
  %3259 = or i32 %3258, 48
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = or i32 %3258, 64
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.i32 %3265, 1
  %3268 = or i32 %3258, 80
  %3269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 3
  %3272 = or i32 %3258, 96
  %3273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 0
  %3275 = extractvalue %dx.types.ResRet.f32 %3273, 1
  %3276 = extractvalue %dx.types.ResRet.f32 %3273, 2
  %3277 = extractvalue %dx.types.ResRet.f32 %3273, 3
  %3278 = or i32 %3258, 112
  %3279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3281 = or i32 %3258, 128
  %3282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.f32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.f32 %3282, 1
  %3285 = extractvalue %dx.types.ResRet.f32 %3282, 2
  %3286 = extractvalue %dx.types.ResRet.f32 %3282, 3
  %3287 = or i32 %3258, 144
  %3288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.ResRet.f32 %3288, 3
  %3293 = or i32 %3258, 160
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3299 = or i32 %3258, 192
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = or i32 %3258, 208
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = or i32 %3258, 248
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.ResRet.f32 %3309, 2
  %3313 = extractvalue %dx.types.ResRet.f32 %3309, 3
  %3314 = call float @dx.op.dot4.f32(i32 56, float %3310, float %3311, float %3312, float %3313, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3315 = or i32 %3258, 16
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3321 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3322 = or i32 %3258, 32
  %3323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = extractvalue %dx.types.ResRet.f32 %3323, 3
  %3328 = call float @dx.op.dot4.f32(i32 56, float %3324, float %3325, float %3326, float %3327, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3329 = call float @dx.op.unary.f32(i32 27, float %3314)  ; Round_ni(value)
  %3330 = call float @dx.op.unary.f32(i32 6, float %3329)  ; FAbs(value)
  %3331 = call float @dx.op.unary.f32(i32 27, float %3321)  ; Round_ni(value)
  %3332 = call float @dx.op.unary.f32(i32 6, float %3331)  ; FAbs(value)
  %3333 = call float @dx.op.unary.f32(i32 6, float %3328)  ; FAbs(value)
  %3334 = call float @dx.op.unary.f32(i32 27, float %3333)  ; Round_ni(value)
  %3335 = fadd fast float %3332, %3330
  %3336 = fadd fast float %3335, %3334
  %3337 = fcmp fast oeq float %3336, 0.000000e+00
  %3338 = call float @dx.op.dot4.f32(i32 56, float %3310, float %3311, float %3312, float %3313, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3339 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %3177, float %3178, float %3179, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3340 = call float @dx.op.dot4.f32(i32 56, float %3310, float %3311, float %3312, float %3313, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3341 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %3180, float %3181, float %3182, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3342 = fsub fast float %3338, %3314
  %3343 = fsub fast float %3340, %3314
  %3344 = fsub fast float %3339, %3321
  %3345 = fsub fast float %3341, %3321
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3349 = fadd fast float %3348, %3346
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3352 = fcmp fast ogt float %3350, %3351
  %3353 = and i1 %3337, %3352
  br i1 %3353, label %3374, label %3354

; <label>:3354                                    ; preds = %3639, %3457, %3374, %3233
  %3355 = phi float [ %3235, %3374 ], [ %3460, %3457 ], [ %3460, %3639 ], [ %3235, %3233 ]
  %3356 = phi float [ %3236, %3374 ], [ %3236, %3457 ], [ %3614, %3639 ], [ %3236, %3233 ]
  %3357 = phi float [ %3237, %3374 ], [ %3237, %3457 ], [ %3612, %3639 ], [ %3237, %3233 ]
  %3358 = phi float [ %3238, %3374 ], [ %3238, %3457 ], [ %3584, %3639 ], [ %3238, %3233 ]
  %3359 = phi float [ %3239, %3374 ], [ %3239, %3457 ], [ %3582, %3639 ], [ %3239, %3233 ]
  %3360 = phi float [ %3240, %3374 ], [ %3240, %3457 ], [ %3649, %3639 ], [ %3240, %3233 ]
  %3361 = phi float [ %3241, %3374 ], [ %3241, %3457 ], [ %3650, %3639 ], [ %3241, %3233 ]
  %3362 = phi float [ %3242, %3374 ], [ %3242, %3457 ], [ %3651, %3639 ], [ %3242, %3233 ]
  %3363 = phi float [ %3243, %3374 ], [ %3243, %3457 ], [ %3563, %3639 ], [ %3243, %3233 ]
  %3364 = phi float [ %3244, %3374 ], [ %3244, %3457 ], [ %3564, %3639 ], [ %3244, %3233 ]
  %3365 = phi float [ %3245, %3374 ], [ %3245, %3457 ], [ %3565, %3639 ], [ %3245, %3233 ]
  %3366 = phi float [ %3246, %3374 ], [ %3246, %3457 ], [ %3592, %3639 ], [ %3246, %3233 ]
  %3367 = phi float [ %3247, %3374 ], [ %3247, %3457 ], [ %3589, %3639 ], [ %3247, %3233 ]
  %3368 = phi float [ %3248, %3374 ], [ %3248, %3457 ], [ %3586, %3639 ], [ %3248, %3233 ]
  %3369 = phi float [ %3249, %3374 ], [ %3249, %3457 ], [ %3580, %3639 ], [ %3249, %3233 ]
  %3370 = phi float [ %3250, %3374 ], [ %3250, %3457 ], [ %3575, %3639 ], [ %3250, %3233 ]
  %3371 = phi float [ %3251, %3374 ], [ %3251, %3457 ], [ %3576, %3639 ], [ %3251, %3233 ]
  %3372 = phi float [ %3252, %3374 ], [ %3252, %3457 ], [ %3577, %3639 ], [ %3252, %3233 ]
  %3373 = icmp eq i32 %3256, 0
  br i1 %3373, label %3652, label %3233

; <label>:3374                                    ; preds = %3233
  %3375 = extractvalue %dx.types.ResRet.f32 %3260, 3
  %3376 = extractvalue %dx.types.ResRet.f32 %3279, 3
  %3377 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3381 = extractvalue %dx.types.ResRet.i32 %3265, 3
  %3382 = extractvalue %dx.types.ResRet.i32 %3265, 2
  %3383 = bitcast float %3375 to i32
  %3384 = add i32 %3381, 0
  %3385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3384, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3387 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3385, %dx.types.Handle %3386, float %3314, float %3321, float undef, float undef, i32 0, i32 0, i32 undef, float %3342, float %3344, float undef, float %3343, float %3345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = fmul fast float %3388, %3380
  %3390 = fadd fast float %3389, %3379
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3392 = fmul fast float %3314, %3274
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3321, float %3392)  ; FMad(a,b,c)
  %3394 = fadd fast float %3393, %3378
  %3395 = fmul fast float %3314, %3276
  %3396 = call float @dx.op.tertiary.f32(i32 46, float %3277, float %3321, float %3395)  ; FMad(a,b,c)
  %3397 = fadd fast float %3396, %3377
  %3398 = fmul fast float %3342, %3274
  %3399 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3344, float %3398)  ; FMad(a,b,c)
  %3400 = fmul fast float %3342, %3276
  %3401 = call float @dx.op.tertiary.f32(i32 46, float %3277, float %3344, float %3400)  ; FMad(a,b,c)
  %3402 = fmul fast float %3343, %3274
  %3403 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3345, float %3402)  ; FMad(a,b,c)
  %3404 = fmul fast float %3343, %3276
  %3405 = call float @dx.op.tertiary.f32(i32 46, float %3277, float %3345, float %3404)  ; FMad(a,b,c)
  %3406 = add i32 %3382, 0
  %3407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3407, %dx.types.Handle %3386, float %3394, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3399, float %3401, float undef, float %3403, float %3405, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 0
  %3410 = and i32 %3383, 1024
  %3411 = icmp ne i32 %3410, 0
  %3412 = fcmp fast ogt float %3409, 0x3FE0101020000000
  %3413 = uitofp i1 %3412 to float
  %3414 = select i1 %3411, float %3413, float %3409
  %3415 = and i32 %3383, 8192
  %3416 = icmp ne i32 %3415, 0
  %3417 = select i1 %3416, float %3376, float 1.000000e+00
  %3418 = fmul fast float %3314, 2.000000e+00
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3421 = fmul fast float %3420, %3307
  %3422 = fsub fast float %3421, %3307
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3424 = fmul fast float %3321, 2.000000e+00
  %3425 = fadd fast float %3424, -1.000000e+00
  %3426 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3427 = fmul fast float %3426, %3308
  %3428 = fsub fast float %3427, %3308
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = fmul fast float %3333, %3270
  %3431 = fsub fast float %3430, %3270
  %3432 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3433 = fmul fast float %3391, %3417
  %3434 = fmul fast float %3433, %3388
  %3435 = fmul fast float %3434, %3423
  %3436 = fmul fast float %3435, %3414
  %3437 = fmul fast float %3436, %3429
  %3438 = fmul fast float %3437, %3432
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3441 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3442 = fsub fast float %3350, %3441
  %3443 = fmul fast float %3442, %3440
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = fmul fast float %3438, %3271
  %3446 = fadd fast float %3438, %3271
  %3447 = fmul fast float %3446, %3280
  %3448 = fsub fast float %3447, %3280
  %3449 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3450 = and i32 %3383, 128
  %3451 = icmp ne i32 %3450, 0
  %3452 = select i1 %3451, float %3449, float %3445
  %3453 = fmul fast float %3452, %3444
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = fcmp fast ugt float %3453, %3455
  br i1 %3456, label %3457, label %3354

; <label>:3457                                    ; preds = %3374
  %3458 = select i1 %3416, float %3453, float 0.000000e+00
  %3459 = fadd fast float %3458, %3235
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  br i1 %3416, label %3354, label %3461

; <label>:3461                                    ; preds = %3457
  %3462 = and i32 %3383, 4
  %3463 = and i32 %3383, 8
  %3464 = add i32 %3266, 0
  %3465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3464, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3465, %dx.types.Handle %3466, float %3394, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3399, float %3401, float undef, float %3403, float %3405, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3472 = bitcast float %3292 to i32
  %3473 = and i32 %3472, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = lshr i32 %3472, 8
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = fmul fast float %3471, %3474
  %3479 = fadd fast float %3478, %3477
  %3480 = fmul fast float %3479, 0x3F70101000000000
  %3481 = add i32 %3267, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3482, %dx.types.Handle %3466, float %3394, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3399, float %3401, float undef, float %3403, float %3405, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = bitcast float %3286 to i32
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3488, 8
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = lshr i32 %3488, 16
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = fmul fast float %3496, 0x3F70101000000000
  %3498 = fmul fast float %3484, %3490
  %3499 = fadd fast float %3498, %3493
  %3500 = fmul fast float %3499, 0x3F70101000000000
  %3501 = fadd fast float %3485, -5.000000e-01
  %3502 = fadd fast float %3487, -5.000000e-01
  %3503 = fmul fast float %3501, %3497
  %3504 = fmul fast float %3502, %3497
  %3505 = fadd fast float %3503, 5.000000e-01
  %3506 = fadd fast float %3504, 5.000000e-01
  %3507 = fmul fast float %3468, %3295
  %3508 = fmul fast float %3469, %3296
  %3509 = fmul fast float %3470, %3297
  %3510 = fmul fast float %3505, 2.000000e+00
  %3511 = fadd fast float %3510, -1.000000e+00
  %3512 = fmul fast float %3506, 2.000000e+00
  %3513 = fadd fast float %3512, -1.000000e+00
  %3514 = fadd fast float %3511, %3513
  %3515 = fmul fast float %3514, 5.000000e-01
  %3516 = fsub fast float %3511, %3513
  %3517 = fmul fast float %3516, 5.000000e-01
  %3518 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3519 = fsub fast float 1.000000e+00, %3518
  %3520 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3521 = fsub fast float %3519, %3520
  %3522 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3517, float %3521, float %3515, float %3517, float %3521)  ; Dot3(ax,ay,az,bx,by,bz)
  %3523 = call float @dx.op.unary.f32(i32 25, float %3522)  ; Rsqrt(value)
  %3524 = fmul fast float %3515, %3523
  %3525 = fmul fast float %3517, %3523
  %3526 = fmul fast float %3523, %3521
  %3527 = fmul fast float %3526, %3261
  %3528 = fmul fast float %3526, %3262
  %3529 = fmul fast float %3526, %3263
  %3530 = fmul fast float %3524, %3283
  %3531 = fmul fast float %3524, %3284
  %3532 = fmul fast float %3524, %3285
  %3533 = fadd fast float %3530, %3527
  %3534 = fadd fast float %3531, %3528
  %3535 = fadd fast float %3532, %3529
  %3536 = fmul fast float %3525, %3289
  %3537 = fmul fast float %3525, %3290
  %3538 = fmul fast float %3525, %3291
  %3539 = fadd fast float %3533, %3536
  %3540 = fadd fast float %3534, %3537
  %3541 = fadd fast float %3535, %3538
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3541, float %3539, float %3540, float %3541)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call float @dx.op.unary.f32(i32 25, float %3542)  ; Rsqrt(value)
  %3544 = fmul fast float %3539, %3543
  %3545 = fmul fast float %3540, %3543
  %3546 = fmul fast float %3541, %3543
  %3547 = icmp ne i32 %3463, 0
  %3548 = select i1 %3547, float 1.000000e+00, float 0.000000e+00
  %3549 = fmul fast float %3453, %3548
  %3550 = and i32 %3383, 1
  %3551 = icmp eq i32 %3550, 0
  br i1 %3551, label %3552, label %3556

; <label>:3552                                    ; preds = %3461
  %3553 = fsub fast float %3544, %3243
  %3554 = fsub fast float %3545, %3244
  %3555 = fsub fast float %3546, %3245
  br label %3556

; <label>:3556                                    ; preds = %3552, %3461
  %3557 = phi float [ %3553, %3552 ], [ %3544, %3461 ]
  %3558 = phi float [ %3554, %3552 ], [ %3545, %3461 ]
  %3559 = phi float [ %3555, %3552 ], [ %3546, %3461 ]
  %3560 = fmul float %3559, %3549
  %3561 = fmul float %3558, %3549
  %3562 = fmul float %3557, %3549
  %3563 = fadd fast float %3562, %3243
  %3564 = fadd fast float %3561, %3244
  %3565 = fadd fast float %3560, %3245
  %3566 = icmp ne i32 %3462, 0
  %3567 = select i1 %3566, float 1.000000e+00, float 0.000000e+00
  %3568 = fmul fast float %3453, %3567
  %3569 = fsub fast float %3507, %3250
  %3570 = fsub fast float %3508, %3251
  %3571 = fsub fast float %3509, %3252
  %3572 = fmul fast float %3569, %3568
  %3573 = fmul fast float %3570, %3568
  %3574 = fmul fast float %3571, %3568
  %3575 = fadd fast float %3572, %3250
  %3576 = fadd fast float %3573, %3251
  %3577 = fadd fast float %3574, %3252
  %3578 = fsub fast float %3480, %3249
  %3579 = fmul fast float %3578, %3568
  %3580 = fadd fast float %3579, %3249
  %3581 = fmul fast float %3568, %3239
  %3582 = fsub fast float %3239, %3581
  %3583 = fmul fast float %3568, %3238
  %3584 = fsub fast float %3238, %3583
  %3585 = fadd fast float %3453, %3248
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fsub fast float %3500, %3247
  %3588 = fmul fast float %3587, %3549
  %3589 = fadd fast float %3588, %3247
  %3590 = fsub fast float %3486, %3246
  %3591 = fmul fast float %3590, %3549
  %3592 = fadd fast float %3591, %3246
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3597 = fmul fast float %3596, %3593
  %3598 = fadd fast float %3597, %3595
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3600 = bitcast float %3298 to i32
  %3601 = and i32 %3600, 65535
  %3602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3601)  ; LegacyF16ToF32(value)
  %3603 = lshr i32 %3600, 16
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = fcmp fast oge float %3602, 0.000000e+00
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = select i1 %3605, float %3602, float %3607
  %3609 = fadd fast float %3608, %3604
  %3610 = fsub fast float %3599, %3237
  %3611 = fmul fast float %3610, %3453
  %3612 = fadd fast float %3611, %3237
  %3613 = fmul fast float %3609, %3453
  %3614 = call float @dx.op.binary.f32(i32 35, float %3236, float %3613)  ; FMax(a,b)
  %3615 = and i32 %3383, 16
  %3616 = icmp eq i32 %3615, 0
  br i1 %3616, label %3639, label %3617

; <label>:3617                                    ; preds = %3556
  %3618 = bitcast float %3304 to i32
  %3619 = add i32 %3301, 0
  %3620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3619, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3621 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3620, %dx.types.Handle %3466, float %3394, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3399, float %3401, float undef, float %3403, float %3405, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = and i32 %3618, 65535
  %3626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3625)  ; LegacyF16ToF32(value)
  %3627 = fmul fast float %3622, %3295
  %3628 = fmul fast float %3623, %3296
  %3629 = fmul fast float %3624, %3297
  %3630 = and i32 %3383, 16384
  %3631 = icmp ne i32 %3630, 0
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = select i1 %3631, float %3633, float 1.000000e+00
  %3635 = fmul fast float %3634, %3626
  %3636 = fmul fast float %3627, %3635
  %3637 = fmul fast float %3628, %3635
  %3638 = fmul fast float %3629, %3635
  br label %3639

; <label>:3639                                    ; preds = %3617, %3556
  %3640 = phi float [ %3636, %3617 ], [ 0.000000e+00, %3556 ]
  %3641 = phi float [ %3637, %3617 ], [ 0.000000e+00, %3556 ]
  %3642 = phi float [ %3638, %3617 ], [ 0.000000e+00, %3556 ]
  %3643 = fsub fast float %3640, %3240
  %3644 = fsub fast float %3641, %3241
  %3645 = fsub fast float %3642, %3242
  %3646 = fmul fast float %3643, %3453
  %3647 = fmul fast float %3644, %3453
  %3648 = fmul fast float %3645, %3453
  %3649 = fadd fast float %3646, %3240
  %3650 = fadd fast float %3647, %3241
  %3651 = fadd fast float %3648, %3242
  br label %3354

; <label>:3652                                    ; preds = %3354
  br label %3653

; <label>:3653                                    ; preds = %3652, %3170
  %3654 = phi float [ 0.000000e+00, %3170 ], [ %3355, %3652 ]
  %3655 = phi float [ %3140, %3170 ], [ %3356, %3652 ]
  %3656 = phi float [ %3138, %3170 ], [ %3357, %3652 ]
  %3657 = phi float [ 0.000000e+00, %3170 ], [ %3358, %3652 ]
  %3658 = phi float [ 0.000000e+00, %3170 ], [ %3359, %3652 ]
  %3659 = phi float [ %3132, %3170 ], [ %3360, %3652 ]
  %3660 = phi float [ %3133, %3170 ], [ %3361, %3652 ]
  %3661 = phi float [ %3134, %3170 ], [ %3362, %3652 ]
  %3662 = phi float [ %3166, %3170 ], [ %3363, %3652 ]
  %3663 = phi float [ %3167, %3170 ], [ %3364, %3652 ]
  %3664 = phi float [ %3168, %3170 ], [ %3365, %3652 ]
  %3665 = phi float [ %3137, %3170 ], [ %3366, %3652 ]
  %3666 = phi float [ %3136, %3170 ], [ %3367, %3652 ]
  %3667 = phi float [ 0.000000e+00, %3170 ], [ %3368, %3652 ]
  %3668 = phi float [ %3135, %3170 ], [ %3369, %3652 ]
  %3669 = phi float [ %3129, %3170 ], [ %3370, %3652 ]
  %3670 = phi float [ %3130, %3170 ], [ %3371, %3652 ]
  %3671 = phi float [ %3131, %3170 ], [ %3372, %3652 ]
  %3672 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = call float @dx.op.unary.f32(i32 25, float %3672)  ; Rsqrt(value)
  %3674 = fmul fast float %3673, %3662
  %3675 = fmul fast float %3673, %3663
  %3676 = fmul fast float %3673, %3664
  %3677 = fadd fast float %3667, %918
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3675, float %3676, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 25, float %3679)  ; Rsqrt(value)
  %3681 = fmul fast float %3680, %3674
  %3682 = fmul fast float %3680, %3675
  %3683 = fmul fast float %3680, %3676
  br label %3684

; <label>:3684                                    ; preds = %3653, %3126
  %3685 = phi float [ %3681, %3653 ], [ %3166, %3126 ]
  %3686 = phi float [ %3682, %3653 ], [ %3167, %3126 ]
  %3687 = phi float [ %3683, %3653 ], [ %3168, %3126 ]
  %3688 = phi float [ %3669, %3653 ], [ %3129, %3126 ]
  %3689 = phi float [ %3670, %3653 ], [ %3130, %3126 ]
  %3690 = phi float [ %3671, %3653 ], [ %3131, %3126 ]
  %3691 = phi float [ %3659, %3653 ], [ %3132, %3126 ]
  %3692 = phi float [ %3660, %3653 ], [ %3133, %3126 ]
  %3693 = phi float [ %3661, %3653 ], [ %3134, %3126 ]
  %3694 = phi float [ %3668, %3653 ], [ %3135, %3126 ]
  %3695 = phi float [ %3678, %3653 ], [ %918, %3126 ]
  %3696 = phi float [ %3666, %3653 ], [ %3136, %3126 ]
  %3697 = phi float [ %3665, %3653 ], [ %3137, %3126 ]
  %3698 = phi float [ %3658, %3653 ], [ 0.000000e+00, %3126 ]
  %3699 = phi float [ %3657, %3653 ], [ 0.000000e+00, %3126 ]
  %3700 = phi float [ %3654, %3653 ], [ 0.000000e+00, %3126 ]
  %3701 = phi float [ %3655, %3653 ], [ %3140, %3126 ]
  %3702 = phi float [ %3656, %3653 ], [ %3138, %3126 ]
  %3703 = fadd fast float %3694, 0xBFB99999A0000000
  %3704 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3705 = fmul fast float %3704, 0x3FF1C71C80000000
  %3706 = call float @dx.op.binary.f32(i32 36, float %3694, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3707 = fsub fast float 1.000000e+00, %3705
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = fmul fast float %3708, %3688
  %3710 = fmul fast float %3708, %3689
  %3711 = fmul fast float %3708, %3690
  %3712 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3713 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3714 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3715 = fmul fast float %3705, %3688
  %3716 = fmul fast float %3705, %3689
  %3717 = fmul fast float %3705, %3690
  %3718 = fadd fast float %3715, %3706
  %3719 = fadd fast float %3716, %3706
  %3720 = fadd fast float %3717, %3706
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.i32 %3725, 3
  %3727 = and i32 %3726, 8
  %3728 = icmp ne i32 %3727, 0
  %3729 = call float @dx.op.binary.f32(i32 35, float %3712, float %3688)  ; FMax(a,b)
  %3730 = call float @dx.op.binary.f32(i32 35, float %3713, float %3688)  ; FMax(a,b)
  %3731 = call float @dx.op.binary.f32(i32 35, float %3714, float %3688)  ; FMax(a,b)
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3713, float %3714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = select i1 %202, float %3688, float %3712
  %3734 = select i1 %202, float %3732, float %3713
  %3735 = select i1 %202, float 1.000000e+00, float %3714
  %3736 = select i1 %3728, float %3729, float %3733
  %3737 = select i1 %3728, float %3730, float %3734
  %3738 = select i1 %3728, float %3731, float %3735
  %3739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.CBufRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.CBufRet.f32 %3739, 2
  %3743 = fadd fast float %3740, %163
  %3744 = fadd fast float %3741, %164
  %3745 = fadd fast float %3742, %165
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3749 = fsub fast float %3743, %3747
  %3750 = fsub fast float %3744, %3748
  %3751 = fmul fast float %3749, %3749
  %3752 = fmul fast float %3750, %3750
  %3753 = fadd fast float %3751, %3752
  %3754 = call float @dx.op.unary.f32(i32 24, float %3753)  ; Sqrt(value)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3756 = fcmp fast olt float %3754, %3755
  br i1 %3756, label %3757, label %3824

; <label>:3757                                    ; preds = %3684
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3765 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3768 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3769 = extractvalue %dx.types.CBufRet.f32 %3762, 3
  %3770 = fadd fast float %3767, %3743
  %3771 = fadd fast float %3768, %3744
  %3772 = fadd fast float %3769, %3745
  %3773 = fmul fast float %3770, %3759
  %3774 = call float @dx.op.tertiary.f32(i32 46, float %3771, float %3761, float %3773)  ; FMad(a,b,c)
  %3775 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3763, float %3774)  ; FMad(a,b,c)
  %3776 = fmul fast float %3770, %3764
  %3777 = call float @dx.op.tertiary.f32(i32 46, float %3771, float %3765, float %3776)  ; FMad(a,b,c)
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3766, float %3777)  ; FMad(a,b,c)
  %3779 = fsub fast float %3775, %3767
  %3780 = fsub fast float %3778, %3768
  %3781 = fsub fast float %3779, %3747
  %3782 = fadd fast float %3781, %3755
  %3783 = fsub fast float %3780, %3748
  %3784 = fadd fast float %3783, %3755
  %3785 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3786 = fmul fast float %3782, %3785
  %3787 = fmul fast float %3784, %3785
  %3788 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3790 = fsub fast float 1.000000e+00, %3788
  %3791 = fsub fast float 1.000000e+00, %3789
  %3792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3790, float %3791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = fcmp fast ugt float %3793, 0.000000e+00
  br i1 %3794, label %3795, label %4098

; <label>:3795                                    ; preds = %3757
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 2
  %3798 = fmul fast float %3797, %3793
  %3799 = extractvalue %dx.types.CBufRet.f32 %3796, 3
  %3800 = fadd fast float %3799, %3798
  %3801 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3802 = fadd fast float %3800, %3769
  %3803 = fmul fast float %3775, %3763
  %3804 = call float @dx.op.tertiary.f32(i32 46, float %3778, float %3766, float %3803)  ; FMad(a,b,c)
  %3805 = call float @dx.op.tertiary.f32(i32 46, float %3802, float %3801, float %3804)  ; FMad(a,b,c)
  %3806 = fsub fast float %3805, %3769
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3809 = fsub fast float %3806, %3808
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3790, float %3791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3790, float %3791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = fadd fast float %3815, %3811
  %3819 = fmul fast float %3818, 0x3F847AE140000000
  %3820 = fadd fast float %3816, %3812
  %3821 = fmul fast float %3820, 0x3F847AE140000000
  %3822 = fadd fast float %3817, %3813
  %3823 = fmul fast float %3822, 0x3F847AE140000000
  br label %4098

; <label>:3824                                    ; preds = %3684
  %3825 = and i32 %181, 1
  %3826 = icmp eq i32 %3825, 0
  br i1 %3826, label %4098, label %3827

; <label>:3827                                    ; preds = %3824
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3836 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3828, 3
  %3838 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3839 = extractvalue %dx.types.CBufRet.f32 %3832, 3
  %3840 = fadd fast float %3837, %3743
  %3841 = fadd fast float %3838, %3744
  %3842 = fadd fast float %3839, %3745
  %3843 = fmul fast float %3840, %3829
  %3844 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3831, float %3843)  ; FMad(a,b,c)
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3842, float %3833, float %3844)  ; FMad(a,b,c)
  %3846 = fmul fast float %3840, %3834
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %3841, float %3835, float %3846)  ; FMad(a,b,c)
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3842, float %3836, float %3847)  ; FMad(a,b,c)
  %3849 = fsub fast float %3845, %3837
  %3850 = fsub fast float %3848, %3838
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3855 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.i32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.i32 %3858, 1
  %3861 = udiv i32 %3860, %3859
  %3862 = fsub fast float %3849, %3852
  %3863 = fsub fast float %3850, %3853
  %3864 = call float @dx.op.binary.f32(i32 35, float %3862, float 0.000000e+00)  ; FMax(a,b)
  %3865 = call float @dx.op.binary.f32(i32 35, float %3863, float 0.000000e+00)  ; FMax(a,b)
  %3866 = call float @dx.op.binary.f32(i32 36, float %3864, float %3854)  ; FMin(a,b)
  %3867 = call float @dx.op.binary.f32(i32 36, float %3865, float %3855)  ; FMin(a,b)
  %3868 = add i32 %3859, -1
  %3869 = add i32 %3861, -1
  %3870 = fmul fast float %3866, %3857
  %3871 = fmul fast float %3867, %3857
  %3872 = fptoui float %3870 to i32
  %3873 = fptoui float %3871 to i32
  %3874 = call i32 @dx.op.binary.i32(i32 40, i32 %3872, i32 %3868)  ; UMin(a,b)
  %3875 = call i32 @dx.op.binary.i32(i32 40, i32 %3873, i32 %3869)  ; UMin(a,b)
  %3876 = mul i32 %3875, %3859
  %3877 = add i32 %3876, %3874
  %3878 = shl i32 %3877, 2
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = icmp eq i32 %3880, -1
  br i1 %3881, label %4098, label %3882

; <label>:3882                                    ; preds = %3827
  %3883 = mul i32 %3880, 148
  %3884 = add i32 %3883, 4
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = add i32 %3883, 8
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = add i32 %3883, 36
  %3891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = add i32 %3883, 60
  %3894 = add i32 %3883, 92
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = add i32 %3883, 116
  %3898 = fsub fast float %3849, %3886
  %3899 = fsub fast float %3850, %3889
  %3900 = fmul fast float %3857, %3898
  %3901 = fmul fast float %3857, %3899
  %3902 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %3907 = call float @dx.op.unary.f32(i32 83, float %3902)  ; DerivCoarseX(value)
  %3908 = call float @dx.op.unary.f32(i32 83, float %3904)  ; DerivCoarseX(value)
  %3909 = call float @dx.op.unary.f32(i32 84, float %3902)  ; DerivCoarseY(value)
  %3910 = call float @dx.op.unary.f32(i32 84, float %3904)  ; DerivCoarseY(value)
  %3911 = fmul fast float %3907, %3906
  %3912 = fmul fast float %3908, %3906
  %3913 = fmul fast float %3909, %3906
  %3914 = fmul fast float %3910, %3906
  %3915 = call float @dx.op.dot2.f32(i32 54, float %3913, float %3914, float %3913, float %3914)  ; Dot2(ax,ay,bx,by)
  %3916 = call float @dx.op.dot2.f32(i32 54, float %3911, float %3912, float %3911, float %3912)  ; Dot2(ax,ay,bx,by)
  %3917 = call float @dx.op.binary.f32(i32 35, float %3916, float %3915)  ; FMax(a,b)
  %3918 = call float @dx.op.unary.f32(i32 23, float %3917)  ; Log(value)
  %3919 = fmul fast float %3918, 5.000000e-01
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3922 = fadd fast float %3921, %3919
  %3923 = call float @dx.op.binary.f32(i32 35, float %3922, float 0.000000e+00)  ; FMax(a,b)
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3926 = fadd fast float %3925, %3923
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3929 = fadd fast float %3926, %3928
  %3930 = add i32 %3896, 0
  %3931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3930, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3932 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3931, i32 0)  ; GetDimensions(handle,mipLevel)
  %3933 = extractvalue %dx.types.Dimensions %3932, 0
  %3934 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3933)  ; FirstbitLo(value)
  %3935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.i32 %3935, 1
  %3937 = sub nsw i32 %3936, %3934
  %3938 = sitofp i32 %3937 to float
  %3939 = fsub fast float %3929, %3938
  %3940 = call float @dx.op.binary.f32(i32 35, float %3939, float 0.000000e+00)  ; FMax(a,b)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3931, %dx.types.Handle %27, float %3902, float %3904, float %3892, float undef, i32 0, i32 0, i32 undef, float %3940)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = fcmp ule float %3942, 0x3FE0101020000000
  %3944 = extractvalue %dx.types.CBufRet.i32 %3935, 0
  %3945 = and i32 %3944, 128
  %3946 = icmp ne i32 %3945, 0
  %3947 = and i1 %3943, %3946
  br i1 %3947, label %4098, label %3948

; <label>:3948                                    ; preds = %3882
  %3949 = add i32 %3883, 20
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = add i32 %3883, 24
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = add i32 %3883, 40
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = add i32 %3883, 96
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3963 = fmul fast float %3962, %3902
  %3964 = fmul fast float %3962, %3904
  %3965 = extractvalue %dx.types.CBufRet.f32 %3961, 3
  %3966 = fadd fast float %3963, %3965
  %3967 = fadd fast float %3964, %3965
  %3968 = add i32 %3960, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3969, i32 0)  ; GetDimensions(handle,mipLevel)
  %3971 = extractvalue %dx.types.Dimensions %3970, 0
  %3972 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3971)  ; FirstbitLo(value)
  %3973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.i32 %3973, 1
  %3975 = sub nsw i32 %3974, %3972
  %3976 = sitofp i32 %3975 to float
  %3977 = fsub fast float %3926, %3976
  %3978 = call float @dx.op.binary.f32(i32 35, float %3977, float 0.000000e+00)  ; FMax(a,b)
  %3979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3969, %dx.types.Handle %27, float %3966, float %3967, float %3957, float undef, i32 0, i32 0, i32 undef, float %3978)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3980 = extractvalue %dx.types.ResRet.f32 %3979, 0
  %3981 = fmul fast float %3980, %3951
  %3982 = fadd fast float %3981, %3954
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3991 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3992 = fadd fast float %3988, %3849
  %3993 = fadd fast float %3990, %3850
  %3994 = fadd fast float %3982, %3991
  %3995 = fmul fast float %3992, %3984
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3985, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3986, float %3996)  ; FMad(a,b,c)
  %3998 = fsub fast float %3997, %3991
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 2
  %4001 = fsub fast float %3998, %4000
  %4002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.i32 %4002, 0
  %4004 = call i32 @dx.op.binary.i32(i32 40, i32 %3880, i32 %4003)  ; UMin(a,b)
  %4005 = mul i32 %4004, 36
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = add i32 %4005, 4
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = fmul fast float %4010, %3902
  %4012 = fmul fast float %4010, %3904
  %4013 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4014 = fadd fast float %4011, %4013
  %4015 = fadd fast float %4012, %4013
  %4016 = icmp eq i32 %4007, 0
  br i1 %4016, label %4085, label %4017

; <label>:4017                                    ; preds = %3948
  br label %4018

; <label>:4018                                    ; preds = %4075, %4017
  %4019 = phi float [ %4076, %4075 ], [ 0.000000e+00, %4017 ]
  %4020 = phi float [ %4077, %4075 ], [ 0.000000e+00, %4017 ]
  %4021 = phi float [ %4078, %4075 ], [ 0.000000e+00, %4017 ]
  %4022 = phi float [ %4079, %4075 ], [ 0.000000e+00, %4017 ]
  %4023 = phi float [ %4080, %4075 ], [ 0.000000e+00, %4017 ]
  %4024 = phi float [ %4081, %4075 ], [ 0.000000e+00, %4017 ]
  %4025 = phi i32 [ %4082, %4075 ], [ 0, %4017 ]
  %4026 = shl i32 %4025, 2
  %4027 = add i32 %3893, %4026
  %4028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = add i32 %3897, %4026
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = add i32 %4032, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4033, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4034, i32 0)  ; GetDimensions(handle,mipLevel)
  %4036 = extractvalue %dx.types.Dimensions %4035, 0
  %4037 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4036)  ; FirstbitLo(value)
  %4038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.i32 %4038, 1
  %4040 = sub nsw i32 %4039, %4037
  %4041 = sitofp i32 %4040 to float
  %4042 = fsub fast float %3926, %4041
  %4043 = call float @dx.op.binary.f32(i32 35, float %4042, float 0.000000e+00)  ; FMax(a,b)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4034, %dx.types.Handle %27, float %4014, float %4015, float %4029, float undef, i32 0, i32 0, i32 undef, float %4043)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = fcmp fast ogt float %4045, 0.000000e+00
  br i1 %4046, label %4047, label %4075

; <label>:4047                                    ; preds = %4018
  %4048 = add i32 %4008, %4026
  %4049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.i32 %4049, 0
  %4051 = and i32 %4050, 32767
  %4052 = mul nuw nsw i32 %4051, 928
  %4053 = add nuw nsw i32 %4052, 48
  %4054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.ResRet.f32 %4054, 2
  %4058 = add nuw nsw i32 %4052, 60
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = fmul fast float %4055, %4045
  %4064 = fmul fast float %4056, %4045
  %4065 = fmul fast float %4057, %4045
  %4066 = fadd fast float %4063, %4019
  %4067 = fadd fast float %4064, %4020
  %4068 = fadd fast float %4065, %4021
  %4069 = fmul fast float %4060, %4045
  %4070 = fmul fast float %4061, %4045
  %4071 = fmul fast float %4062, %4045
  %4072 = fadd fast float %4069, %4022
  %4073 = fadd fast float %4070, %4023
  %4074 = fadd fast float %4071, %4024
  br label %4075

; <label>:4075                                    ; preds = %4047, %4018
  %4076 = phi float [ %4066, %4047 ], [ %4019, %4018 ]
  %4077 = phi float [ %4067, %4047 ], [ %4020, %4018 ]
  %4078 = phi float [ %4068, %4047 ], [ %4021, %4018 ]
  %4079 = phi float [ %4072, %4047 ], [ %4022, %4018 ]
  %4080 = phi float [ %4073, %4047 ], [ %4023, %4018 ]
  %4081 = phi float [ %4074, %4047 ], [ %4024, %4018 ]
  %4082 = add nuw i32 %4025, 1
  %4083 = icmp eq i32 %4082, %4007
  br i1 %4083, label %4084, label %4018

; <label>:4084                                    ; preds = %4075
  br label %4085

; <label>:4085                                    ; preds = %4084, %3948
  %4086 = phi float [ 0.000000e+00, %3948 ], [ %4076, %4084 ]
  %4087 = phi float [ 0.000000e+00, %3948 ], [ %4077, %4084 ]
  %4088 = phi float [ 0.000000e+00, %3948 ], [ %4078, %4084 ]
  %4089 = phi float [ 0.000000e+00, %3948 ], [ %4079, %4084 ]
  %4090 = phi float [ 0.000000e+00, %3948 ], [ %4080, %4084 ]
  %4091 = phi float [ 0.000000e+00, %3948 ], [ %4081, %4084 ]
  %4092 = fadd fast float %4089, %4086
  %4093 = fmul fast float %4092, 0x3F847AE140000000
  %4094 = fadd fast float %4090, %4087
  %4095 = fmul fast float %4094, 0x3F847AE140000000
  %4096 = fadd fast float %4091, %4088
  %4097 = fmul fast float %4096, 0x3F847AE140000000
  br label %4098

; <label>:4098                                    ; preds = %4085, %3882, %3827, %3824, %3795, %3757
  %4099 = phi float [ %3809, %3795 ], [ -1.310720e+05, %3757 ], [ %4001, %4085 ], [ -1.310720e+05, %3827 ], [ -1.310720e+05, %3882 ], [ -1.310720e+05, %3824 ]
  %4100 = phi float [ %3819, %3795 ], [ 0.000000e+00, %3757 ], [ %4093, %4085 ], [ 0.000000e+00, %3827 ], [ 0.000000e+00, %3882 ], [ 0.000000e+00, %3824 ]
  %4101 = phi float [ %3821, %3795 ], [ 0.000000e+00, %3757 ], [ %4095, %4085 ], [ 0.000000e+00, %3827 ], [ 0.000000e+00, %3882 ], [ 0.000000e+00, %3824 ]
  %4102 = phi float [ %3823, %3795 ], [ 0.000000e+00, %3757 ], [ %4097, %4085 ], [ 0.000000e+00, %3827 ], [ 0.000000e+00, %3882 ], [ 0.000000e+00, %3824 ]
  %4103 = phi i1 [ true, %3795 ], [ false, %3757 ], [ true, %4085 ], [ false, %3827 ], [ false, %3882 ], [ false, %3824 ]
  %4104 = and i32 %181, 3
  %4105 = icmp eq i32 %4104, 1
  %4106 = select i1 %4105, float 1.000000e+00, float 0.000000e+00
  %4107 = fsub fast float %4099, %165
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = select i1 %4103, float %4108, float 1.000000e+00
  %4110 = fmul fast float %4109, %4106
  %4111 = icmp eq i32 %4104, 3
  %4112 = select i1 %4111, float 1.000000e+00, float %4110
  %4113 = call float @dx.op.binary.f32(i32 35, float %3700, float %4112)  ; FMax(a,b)
  %4114 = fcmp fast olt float %4112, 1.000000e+00
  %4115 = fcmp uge float %47, 0.000000e+00
  %4116 = and i1 %4115, %4114
  br i1 %4116, label %4117, label %4127

; <label>:4117                                    ; preds = %4098
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = fadd fast float %4119, %4113
  %4123 = fcmp ule float %46, 0.000000e+00
  %4124 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = select i1 %4123, float %4124, float 1.000000e+00
  %4126 = fmul fast float %4125, %4121
  br label %4127

; <label>:4127                                    ; preds = %4117, %4098
  %4128 = phi float [ %4122, %4117 ], [ %4113, %4098 ]
  %4129 = phi float [ %4120, %4117 ], [ 0.000000e+00, %4098 ]
  %4130 = phi float [ %4126, %4117 ], [ 0.000000e+00, %4098 ]
  %4131 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4134 = fcmp fast une float %4132, 0.000000e+00
  %4135 = fcmp fast une float %4133, 0.000000e+00
  %4136 = or i1 %4134, %4135
  br i1 %4136, label %4137, label %4696

; <label>:4137                                    ; preds = %4127
  br i1 %4134, label %4138, label %4411

; <label>:4138                                    ; preds = %4137
  %4139 = call float @dx.op.unary.f32(i32 23, float %3697)  ; Log(value)
  %4140 = fmul fast float %4139, 4.000000e+00
  %4141 = call float @dx.op.unary.f32(i32 21, float %4140)  ; Exp(value)
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = fmul fast float %4143, %34
  %4145 = fmul fast float %4143, %35
  %4146 = fmul fast float %4143, %36
  %4147 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4148 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4149 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4150 = call float @dx.op.unary.f32(i32 23, float %4147)  ; Log(value)
  %4151 = call float @dx.op.unary.f32(i32 23, float %4148)  ; Log(value)
  %4152 = call float @dx.op.unary.f32(i32 23, float %4149)  ; Log(value)
  %4153 = fmul fast float %4150, 4.000000e+00
  %4154 = fmul fast float %4151, 4.000000e+00
  %4155 = fmul fast float %4152, 4.000000e+00
  %4156 = call float @dx.op.unary.f32(i32 21, float %4153)  ; Exp(value)
  %4157 = call float @dx.op.unary.f32(i32 21, float %4154)  ; Exp(value)
  %4158 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4159 = fadd fast float %4157, %4156
  %4160 = fadd fast float %4159, %4158
  %4161 = fdiv fast float 1.000000e+00, %4160
  %4162 = fmul fast float %4161, %4156
  %4163 = fcmp fast ogt float %43, 0.000000e+00
  %4164 = fcmp fast ogt float %44, 0.000000e+00
  %4165 = fcmp fast ogt float %45, 0.000000e+00
  %4166 = fcmp fast olt float %43, 0.000000e+00
  %4167 = fcmp fast olt float %44, 0.000000e+00
  %4168 = fcmp fast olt float %45, 0.000000e+00
  %4169 = zext i1 %4163 to i32
  %4170 = zext i1 %4164 to i32
  %4171 = zext i1 %4165 to i32
  %4172 = zext i1 %4166 to i32
  %4173 = zext i1 %4167 to i32
  %4174 = zext i1 %4168 to i32
  %4175 = sub nsw i32 %4169, %4172
  %4176 = sub nsw i32 %4170, %4173
  %4177 = sub nsw i32 %4171, %4174
  %4178 = call float @dx.op.unary.f32(i32 83, float %4144)  ; DerivCoarseX(value)
  %4179 = call float @dx.op.unary.f32(i32 83, float %4145)  ; DerivCoarseX(value)
  %4180 = call float @dx.op.unary.f32(i32 83, float %4146)  ; DerivCoarseX(value)
  %4181 = call float @dx.op.unary.f32(i32 84, float %4144)  ; DerivCoarseY(value)
  %4182 = call float @dx.op.unary.f32(i32 84, float %4145)  ; DerivCoarseY(value)
  %4183 = call float @dx.op.unary.f32(i32 84, float %4146)  ; DerivCoarseY(value)
  %4184 = fcmp fast ole float %213, %4162
  %4185 = fmul fast float %4161, %4159
  %4186 = fcmp fast ole float %213, %4185
  %4187 = select i1 %4186, float %4146, float %4144
  %4188 = select i1 %4186, float %4144, float %4145
  %4189 = select i1 %4184, float %4145, float %4187
  %4190 = select i1 %4184, float %4146, float %4188
  %4191 = select i1 %4186, float %4180, float %4178
  %4192 = select i1 %4186, float %4178, float %4179
  %4193 = select i1 %4184, float %4179, float %4191
  %4194 = select i1 %4184, float %4180, float %4192
  %4195 = select i1 %4186, float %4183, float %4181
  %4196 = select i1 %4186, float %4181, float %4182
  %4197 = select i1 %4184, float %4182, float %4195
  %4198 = select i1 %4184, float %4183, float %4196
  %4199 = call float @dx.op.unary.f32(i32 27, float %4189)  ; Round_ni(value)
  %4200 = call float @dx.op.unary.f32(i32 27, float %4190)  ; Round_ni(value)
  %4201 = fptosi float %4199 to i32
  %4202 = fptosi float %4200 to i32
  %4203 = xor i32 %4202, %4201
  %4204 = sitofp i32 %4203 to float
  %4205 = fptosi float %4204 to i32
  %4206 = sitofp i32 %4205 to float
  %4207 = fmul fast float %4206, 0x3FE3C6EF40000000
  %4208 = frem fast float %4199, 2.560000e+02
  %4209 = frem fast float %4200, 2.560000e+02
  %4210 = fptoui float %4208 to i32
  %4211 = fptoui float %4209 to i32
  %4212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4210, i32 %4211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = fadd fast float %4213, %4207
  %4217 = fadd fast float %4214, %4207
  %4218 = fadd fast float %4215, %4207
  %4219 = call float @dx.op.unary.f32(i32 22, float %4216)  ; Frc(value)
  %4220 = call float @dx.op.unary.f32(i32 22, float %4217)  ; Frc(value)
  %4221 = call float @dx.op.unary.f32(i32 22, float %4218)  ; Frc(value)
  %4222 = fmul fast float %4221, 0x401921FB60000000
  %4223 = call float @dx.op.unary.f32(i32 13, float %4222)  ; Sin(value)
  %4224 = call float @dx.op.unary.f32(i32 12, float %4222)  ; Cos(value)
  %4225 = fsub fast float -0.000000e+00, %4224
  %4226 = fmul fast float %4224, %4189
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4223, float %4190, float %4226)  ; FMad(a,b,c)
  %4228 = fmul fast float %4223, %4189
  %4229 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4190, float %4228)  ; FMad(a,b,c)
  %4230 = fadd fast float %4227, %4219
  %4231 = fadd fast float %4229, %4220
  %4232 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4233 = bitcast float %4232 to i32
  %4234 = icmp eq i32 %4233, 0
  br i1 %4234, label %4273, label %4235

; <label>:4235                                    ; preds = %4138
  %4236 = add i32 %4233, 0
  %4237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4238 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4237, %dx.types.Handle %73, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float %4193, float %4194, float undef, float %4197, float %4198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4243 = fsub fast float 1.000000e+00, %4132
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4245 = bitcast float %4132 to i32
  %4246 = sitofp i32 %4245 to float
  %4247 = fadd fast float %4246, 0xC1CFBF8940000000
  %4248 = fmul fast float %4242, %4247
  %4249 = fadd fast float %4248, 0x41CFBF8940000000
  %4250 = fptosi float %4249 to i32
  %4251 = bitcast i32 %4250 to float
  %4252 = bitcast float %4244 to i32
  %4253 = sitofp i32 %4252 to float
  %4254 = fadd fast float %4253, 0xC1CFBF8940000000
  %4255 = fmul fast float %4254, %4242
  %4256 = fadd fast float %4255, 0x41CFBF8940000000
  %4257 = fptosi float %4256 to i32
  %4258 = bitcast i32 %4257 to float
  %4259 = fmul fast float %4251, %4241
  %4260 = fmul fast float %4258, %4241
  %4261 = fsub fast float %4244, %4259
  %4262 = fadd fast float %4260, %4244
  %4263 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4264 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4265 = fsub fast float %4239, %4263
  %4266 = fsub fast float %4264, %4263
  %4267 = bitcast float %4266 to i32
  %4268 = sub nsw i32 2129859010, %4267
  %4269 = bitcast i32 %4268 to float
  %4270 = fmul fast float %4269, %4265
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fcmp fast olt float %4271, 0x3F70101020000000
  br i1 %4272, label %4411, label %4273

; <label>:4273                                    ; preds = %4235, %4138
  %4274 = phi float [ %4271, %4235 ], [ %4132, %4138 ]
  %4275 = fmul fast float %4274, %4141
  %4276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.i32 %4276, 1
  %4278 = extractvalue %dx.types.CBufRet.i32 %4276, 0
  %4279 = add i32 %4278, 0
  %4280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4281 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4280, %dx.types.Handle %72, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float %4193, float %4194, float undef, float %4197, float %4198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.ResRet.f32 %4281, 2
  %4285 = extractvalue %dx.types.ResRet.f32 %4281, 3
  %4286 = and i32 %4277, 255
  %4287 = uitofp i32 %4286 to float
  %4288 = lshr i32 %4277, 8
  %4289 = and i32 %4288, 255
  %4290 = uitofp i32 %4289 to float
  %4291 = fmul fast float %4285, %4287
  %4292 = fadd fast float %4291, %4290
  %4293 = fmul fast float %4292, 0x3F70101000000000
  %4294 = fadd fast float %4293, 0xBFB99999A0000000
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fmul fast float %4295, 0x3FF1C71C80000000
  %4297 = call float @dx.op.binary.f32(i32 36, float %4293, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4298 = fsub fast float 1.000000e+00, %4296
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fmul fast float %4299, %4282
  %4301 = fmul fast float %4299, %4283
  %4302 = fmul fast float %4299, %4284
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4306 = fmul fast float %4296, %4282
  %4307 = fmul fast float %4296, %4283
  %4308 = fmul fast float %4296, %4284
  %4309 = fadd fast float %4306, %4297
  %4310 = fadd fast float %4307, %4297
  %4311 = fadd fast float %4308, %4297
  %4312 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4313 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 3
  %4317 = extractvalue %dx.types.CBufRet.i32 %4315, 2
  %4318 = add i32 %4317, 0
  %4319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4319, %dx.types.Handle %72, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float %4193, float %4194, float undef, float %4197, float %4198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.ResRet.f32 %4320, 3
  %4325 = and i32 %4316, 255
  %4326 = uitofp i32 %4325 to float
  %4327 = lshr i32 %4316, 8
  %4328 = and i32 %4327, 255
  %4329 = uitofp i32 %4328 to float
  %4330 = lshr i32 %4316, 16
  %4331 = and i32 %4330, 255
  %4332 = uitofp i32 %4331 to float
  %4333 = fmul fast float %4332, 0x3F70101000000000
  %4334 = fmul fast float %4321, %4326
  %4335 = fadd fast float %4334, %4329
  %4336 = fmul fast float %4335, 0x3F70101000000000
  %4337 = fadd fast float %4322, -5.000000e-01
  %4338 = fadd fast float %4324, -5.000000e-01
  %4339 = fmul fast float %4337, %4333
  %4340 = fmul fast float %4338, %4333
  %4341 = fadd fast float %4339, 5.000000e-01
  %4342 = fadd fast float %4340, 5.000000e-01
  %4343 = fmul fast float %4341, 2.000000e+00
  %4344 = fadd fast float %4343, -1.000000e+00
  %4345 = fmul fast float %4342, 2.000000e+00
  %4346 = fadd fast float %4345, -1.000000e+00
  %4347 = fadd fast float %4344, %4346
  %4348 = fmul fast float %4347, 5.000000e-01
  %4349 = fsub fast float %4344, %4346
  %4350 = fmul fast float %4349, 5.000000e-01
  %4351 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4352 = fsub fast float 1.000000e+00, %4351
  %4353 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4354 = fsub fast float %4352, %4353
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4348, float %4350, float %4354, float %4348, float %4350, float %4354)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = call float @dx.op.unary.f32(i32 25, float %4355)  ; Rsqrt(value)
  %4357 = fmul fast float %4348, %4356
  %4358 = fmul fast float %4350, %4356
  %4359 = select i1 %4186, i32 %4176, i32 %4177
  %4360 = select i1 %4184, i32 %4175, i32 %4359
  %4361 = sitofp i32 %4360 to float
  %4362 = fmul fast float %4354, %4361
  %4363 = fmul fast float %4362, %4356
  %4364 = select i1 %4186, float %4363, float %4358
  %4365 = select i1 %4186, float %4358, float %4363
  %4366 = select i1 %4184, float %4363, float %4357
  %4367 = select i1 %4184, float %4358, float %4364
  %4368 = select i1 %4184, float %4357, float %4365
  %4369 = fsub fast float %4303, %3736
  %4370 = fsub fast float %4304, %3737
  %4371 = fsub fast float %4305, %3738
  %4372 = fmul fast float %4369, %4275
  %4373 = fmul fast float %4370, %4275
  %4374 = fmul fast float %4371, %4275
  %4375 = fadd fast float %4372, %3736
  %4376 = fadd fast float %4373, %3737
  %4377 = fadd fast float %4374, %3738
  %4378 = fsub fast float %4312, %3721
  %4379 = fsub fast float %4313, %3722
  %4380 = fsub fast float %4314, %3723
  %4381 = fmul fast float %4378, %4275
  %4382 = fmul fast float %4379, %4275
  %4383 = fmul fast float %4380, %4275
  %4384 = fadd fast float %4381, %3721
  %4385 = fadd fast float %4382, %3722
  %4386 = fadd fast float %4383, %3723
  %4387 = fadd fast float %4366, %3685
  %4388 = fadd fast float %4367, %3686
  %4389 = fadd fast float %4368, %3687
  %4390 = call float @dx.op.dot3.f32(i32 55, float %4387, float %4388, float %4389, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4391 = call float @dx.op.unary.f32(i32 25, float %4390)  ; Rsqrt(value)
  %4392 = fmul fast float %4387, %4391
  %4393 = fmul fast float %4388, %4391
  %4394 = fmul fast float %4389, %4391
  %4395 = fsub fast float %4392, %3685
  %4396 = fsub fast float %4393, %3686
  %4397 = fsub fast float %4394, %3687
  %4398 = fmul fast float %4395, %4275
  %4399 = fmul fast float %4396, %4275
  %4400 = fmul fast float %4397, %4275
  %4401 = fadd fast float %4398, %3685
  %4402 = fadd fast float %4399, %3686
  %4403 = fadd fast float %4400, %3687
  %4404 = call float @dx.op.binary.f32(i32 36, float %3697, float %4323)  ; FMin(a,b)
  %4405 = fsub fast float %4404, %3697
  %4406 = fmul fast float %4405, %4275
  %4407 = fadd fast float %4406, %3697
  %4408 = fsub fast float %4336, %3724
  %4409 = fmul fast float %4408, %4275
  %4410 = fadd fast float %4409, %3724
  br label %4411

; <label>:4411                                    ; preds = %4273, %4235, %4137
  %4412 = phi float [ %4375, %4273 ], [ %3736, %4235 ], [ %3736, %4137 ]
  %4413 = phi float [ %4376, %4273 ], [ %3737, %4235 ], [ %3737, %4137 ]
  %4414 = phi float [ %4377, %4273 ], [ %3738, %4235 ], [ %3738, %4137 ]
  %4415 = phi float [ %4384, %4273 ], [ %3721, %4235 ], [ %3721, %4137 ]
  %4416 = phi float [ %4385, %4273 ], [ %3722, %4235 ], [ %3722, %4137 ]
  %4417 = phi float [ %4386, %4273 ], [ %3723, %4235 ], [ %3723, %4137 ]
  %4418 = phi float [ %4401, %4273 ], [ %3685, %4235 ], [ %3685, %4137 ]
  %4419 = phi float [ %4402, %4273 ], [ %3686, %4235 ], [ %3686, %4137 ]
  %4420 = phi float [ %4403, %4273 ], [ %3687, %4235 ], [ %3687, %4137 ]
  %4421 = phi float [ %4410, %4273 ], [ %3724, %4235 ], [ %3724, %4137 ]
  %4422 = phi float [ %4407, %4273 ], [ %3697, %4235 ], [ %3697, %4137 ]
  br i1 %4135, label %4423, label %4696

; <label>:4423                                    ; preds = %4411
  %4424 = call float @dx.op.unary.f32(i32 23, float %4422)  ; Log(value)
  %4425 = fmul fast float %4424, 4.000000e+00
  %4426 = call float @dx.op.unary.f32(i32 21, float %4425)  ; Exp(value)
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = fmul fast float %4428, %34
  %4430 = fmul fast float %4428, %35
  %4431 = fmul fast float %4428, %36
  %4432 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4433 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4434 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4435 = call float @dx.op.unary.f32(i32 23, float %4432)  ; Log(value)
  %4436 = call float @dx.op.unary.f32(i32 23, float %4433)  ; Log(value)
  %4437 = call float @dx.op.unary.f32(i32 23, float %4434)  ; Log(value)
  %4438 = fmul fast float %4435, 4.000000e+00
  %4439 = fmul fast float %4436, 4.000000e+00
  %4440 = fmul fast float %4437, 4.000000e+00
  %4441 = call float @dx.op.unary.f32(i32 21, float %4438)  ; Exp(value)
  %4442 = call float @dx.op.unary.f32(i32 21, float %4439)  ; Exp(value)
  %4443 = call float @dx.op.unary.f32(i32 21, float %4440)  ; Exp(value)
  %4444 = fadd fast float %4442, %4441
  %4445 = fadd fast float %4444, %4443
  %4446 = fdiv fast float 1.000000e+00, %4445
  %4447 = fmul fast float %4446, %4441
  %4448 = fcmp fast ogt float %43, 0.000000e+00
  %4449 = fcmp fast ogt float %44, 0.000000e+00
  %4450 = fcmp fast ogt float %45, 0.000000e+00
  %4451 = fcmp fast olt float %43, 0.000000e+00
  %4452 = fcmp fast olt float %44, 0.000000e+00
  %4453 = fcmp fast olt float %45, 0.000000e+00
  %4454 = zext i1 %4448 to i32
  %4455 = zext i1 %4449 to i32
  %4456 = zext i1 %4450 to i32
  %4457 = zext i1 %4451 to i32
  %4458 = zext i1 %4452 to i32
  %4459 = zext i1 %4453 to i32
  %4460 = sub nsw i32 %4454, %4457
  %4461 = sub nsw i32 %4455, %4458
  %4462 = sub nsw i32 %4456, %4459
  %4463 = call float @dx.op.unary.f32(i32 83, float %4429)  ; DerivCoarseX(value)
  %4464 = call float @dx.op.unary.f32(i32 83, float %4430)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 83, float %4431)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %4429)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %4430)  ; DerivCoarseY(value)
  %4468 = call float @dx.op.unary.f32(i32 84, float %4431)  ; DerivCoarseY(value)
  %4469 = fcmp fast ole float %213, %4447
  %4470 = fmul fast float %4446, %4444
  %4471 = fcmp fast ole float %213, %4470
  %4472 = select i1 %4471, float %4431, float %4429
  %4473 = select i1 %4471, float %4429, float %4430
  %4474 = select i1 %4469, float %4430, float %4472
  %4475 = select i1 %4469, float %4431, float %4473
  %4476 = select i1 %4471, float %4465, float %4463
  %4477 = select i1 %4471, float %4463, float %4464
  %4478 = select i1 %4469, float %4464, float %4476
  %4479 = select i1 %4469, float %4465, float %4477
  %4480 = select i1 %4471, float %4468, float %4466
  %4481 = select i1 %4471, float %4466, float %4467
  %4482 = select i1 %4469, float %4467, float %4480
  %4483 = select i1 %4469, float %4468, float %4481
  %4484 = call float @dx.op.unary.f32(i32 27, float %4474)  ; Round_ni(value)
  %4485 = call float @dx.op.unary.f32(i32 27, float %4475)  ; Round_ni(value)
  %4486 = fptosi float %4484 to i32
  %4487 = fptosi float %4485 to i32
  %4488 = xor i32 %4487, %4486
  %4489 = sitofp i32 %4488 to float
  %4490 = fptosi float %4489 to i32
  %4491 = sitofp i32 %4490 to float
  %4492 = fmul fast float %4491, 0x3FE3C6EF40000000
  %4493 = frem fast float %4484, 2.560000e+02
  %4494 = frem fast float %4485, 2.560000e+02
  %4495 = fptoui float %4493 to i32
  %4496 = fptoui float %4494 to i32
  %4497 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4495, i32 %4496, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = fadd fast float %4498, %4492
  %4502 = fadd fast float %4499, %4492
  %4503 = fadd fast float %4500, %4492
  %4504 = call float @dx.op.unary.f32(i32 22, float %4501)  ; Frc(value)
  %4505 = call float @dx.op.unary.f32(i32 22, float %4502)  ; Frc(value)
  %4506 = call float @dx.op.unary.f32(i32 22, float %4503)  ; Frc(value)
  %4507 = fmul fast float %4506, 0x401921FB60000000
  %4508 = call float @dx.op.unary.f32(i32 13, float %4507)  ; Sin(value)
  %4509 = call float @dx.op.unary.f32(i32 12, float %4507)  ; Cos(value)
  %4510 = fsub fast float -0.000000e+00, %4509
  %4511 = fmul fast float %4509, %4474
  %4512 = call float @dx.op.tertiary.f32(i32 46, float %4508, float %4475, float %4511)  ; FMad(a,b,c)
  %4513 = fmul fast float %4508, %4474
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4510, float %4475, float %4513)  ; FMad(a,b,c)
  %4515 = fadd fast float %4512, %4504
  %4516 = fadd fast float %4514, %4505
  %4517 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4518 = bitcast float %4517 to i32
  %4519 = icmp eq i32 %4518, 0
  br i1 %4519, label %4558, label %4520

; <label>:4520                                    ; preds = %4423
  %4521 = add i32 %4518, 0
  %4522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4522, %dx.types.Handle %73, float %4515, float %4516, float undef, float undef, i32 0, i32 0, i32 undef, float %4478, float %4479, float undef, float %4482, float %4483, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4528 = fsub fast float 1.000000e+00, %4133
  %4529 = call float @dx.op.binary.f32(i32 35, float %4528, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4530 = bitcast float %4133 to i32
  %4531 = sitofp i32 %4530 to float
  %4532 = fadd fast float %4531, 0xC1CFBF8940000000
  %4533 = fmul fast float %4527, %4532
  %4534 = fadd fast float %4533, 0x41CFBF8940000000
  %4535 = fptosi float %4534 to i32
  %4536 = bitcast i32 %4535 to float
  %4537 = bitcast float %4529 to i32
  %4538 = sitofp i32 %4537 to float
  %4539 = fadd fast float %4538, 0xC1CFBF8940000000
  %4540 = fmul fast float %4539, %4527
  %4541 = fadd fast float %4540, 0x41CFBF8940000000
  %4542 = fptosi float %4541 to i32
  %4543 = bitcast i32 %4542 to float
  %4544 = fmul fast float %4536, %4526
  %4545 = fmul fast float %4543, %4526
  %4546 = fsub fast float %4529, %4544
  %4547 = fadd fast float %4545, %4529
  %4548 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4549 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4550 = fsub fast float %4524, %4548
  %4551 = fsub fast float %4549, %4548
  %4552 = bitcast float %4551 to i32
  %4553 = sub nsw i32 2129859010, %4552
  %4554 = bitcast i32 %4553 to float
  %4555 = fmul fast float %4554, %4550
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = fcmp fast olt float %4556, 0x3F70101020000000
  br i1 %4557, label %4696, label %4558

; <label>:4558                                    ; preds = %4520, %4423
  %4559 = phi float [ %4556, %4520 ], [ %4133, %4423 ]
  %4560 = fmul fast float %4559, %4426
  %4561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.i32 %4561, 1
  %4563 = extractvalue %dx.types.CBufRet.i32 %4561, 0
  %4564 = add i32 %4563, 0
  %4565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4565, %dx.types.Handle %72, float %4515, float %4516, float undef, float undef, i32 0, i32 0, i32 undef, float %4478, float %4479, float undef, float %4482, float %4483, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = and i32 %4562, 255
  %4572 = uitofp i32 %4571 to float
  %4573 = lshr i32 %4562, 8
  %4574 = and i32 %4573, 255
  %4575 = uitofp i32 %4574 to float
  %4576 = fmul fast float %4570, %4572
  %4577 = fadd fast float %4576, %4575
  %4578 = fmul fast float %4577, 0x3F70101000000000
  %4579 = fadd fast float %4578, 0xBFB99999A0000000
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = fmul fast float %4580, 0x3FF1C71C80000000
  %4582 = call float @dx.op.binary.f32(i32 36, float %4578, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4583 = fsub fast float 1.000000e+00, %4581
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fmul fast float %4584, %4567
  %4586 = fmul fast float %4584, %4568
  %4587 = fmul fast float %4584, %4569
  %4588 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4589 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4591 = fmul fast float %4581, %4567
  %4592 = fmul fast float %4581, %4568
  %4593 = fmul fast float %4581, %4569
  %4594 = fadd fast float %4591, %4582
  %4595 = fadd fast float %4592, %4582
  %4596 = fadd fast float %4593, %4582
  %4597 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.i32 %4600, 3
  %4602 = extractvalue %dx.types.CBufRet.i32 %4600, 2
  %4603 = add i32 %4602, 0
  %4604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4604, %dx.types.Handle %72, float %4515, float %4516, float undef, float undef, i32 0, i32 0, i32 undef, float %4478, float %4479, float undef, float %4482, float %4483, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = and i32 %4601, 255
  %4611 = uitofp i32 %4610 to float
  %4612 = lshr i32 %4601, 8
  %4613 = and i32 %4612, 255
  %4614 = uitofp i32 %4613 to float
  %4615 = lshr i32 %4601, 16
  %4616 = and i32 %4615, 255
  %4617 = uitofp i32 %4616 to float
  %4618 = fmul fast float %4617, 0x3F70101000000000
  %4619 = fmul fast float %4606, %4611
  %4620 = fadd fast float %4619, %4614
  %4621 = fmul fast float %4620, 0x3F70101000000000
  %4622 = fadd fast float %4607, -5.000000e-01
  %4623 = fadd fast float %4609, -5.000000e-01
  %4624 = fmul fast float %4622, %4618
  %4625 = fmul fast float %4623, %4618
  %4626 = fadd fast float %4624, 5.000000e-01
  %4627 = fadd fast float %4625, 5.000000e-01
  %4628 = fmul fast float %4626, 2.000000e+00
  %4629 = fadd fast float %4628, -1.000000e+00
  %4630 = fmul fast float %4627, 2.000000e+00
  %4631 = fadd fast float %4630, -1.000000e+00
  %4632 = fadd fast float %4629, %4631
  %4633 = fmul fast float %4632, 5.000000e-01
  %4634 = fsub fast float %4629, %4631
  %4635 = fmul fast float %4634, 5.000000e-01
  %4636 = call float @dx.op.unary.f32(i32 6, float %4633)  ; FAbs(value)
  %4637 = fsub fast float 1.000000e+00, %4636
  %4638 = call float @dx.op.unary.f32(i32 6, float %4635)  ; FAbs(value)
  %4639 = fsub fast float %4637, %4638
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4635, float %4639, float %4633, float %4635, float %4639)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.unary.f32(i32 25, float %4640)  ; Rsqrt(value)
  %4642 = fmul fast float %4633, %4641
  %4643 = fmul fast float %4635, %4641
  %4644 = select i1 %4471, i32 %4461, i32 %4462
  %4645 = select i1 %4469, i32 %4460, i32 %4644
  %4646 = sitofp i32 %4645 to float
  %4647 = fmul fast float %4639, %4646
  %4648 = fmul fast float %4647, %4641
  %4649 = select i1 %4471, float %4648, float %4643
  %4650 = select i1 %4471, float %4643, float %4648
  %4651 = select i1 %4469, float %4648, float %4642
  %4652 = select i1 %4469, float %4643, float %4649
  %4653 = select i1 %4469, float %4642, float %4650
  %4654 = fsub fast float %4588, %4412
  %4655 = fsub fast float %4589, %4413
  %4656 = fsub fast float %4590, %4414
  %4657 = fmul fast float %4654, %4560
  %4658 = fmul fast float %4655, %4560
  %4659 = fmul fast float %4656, %4560
  %4660 = fadd fast float %4657, %4412
  %4661 = fadd fast float %4658, %4413
  %4662 = fadd fast float %4659, %4414
  %4663 = fsub fast float %4597, %4415
  %4664 = fsub fast float %4598, %4416
  %4665 = fsub fast float %4599, %4417
  %4666 = fmul fast float %4663, %4560
  %4667 = fmul fast float %4664, %4560
  %4668 = fmul fast float %4665, %4560
  %4669 = fadd fast float %4666, %4415
  %4670 = fadd fast float %4667, %4416
  %4671 = fadd fast float %4668, %4417
  %4672 = fadd fast float %4651, %4418
  %4673 = fadd fast float %4652, %4419
  %4674 = fadd fast float %4653, %4420
  %4675 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = call float @dx.op.unary.f32(i32 25, float %4675)  ; Rsqrt(value)
  %4677 = fmul fast float %4672, %4676
  %4678 = fmul fast float %4673, %4676
  %4679 = fmul fast float %4674, %4676
  %4680 = fsub fast float %4677, %4418
  %4681 = fsub fast float %4678, %4419
  %4682 = fsub fast float %4679, %4420
  %4683 = fmul fast float %4680, %4560
  %4684 = fmul fast float %4681, %4560
  %4685 = fmul fast float %4682, %4560
  %4686 = fadd fast float %4683, %4418
  %4687 = fadd fast float %4684, %4419
  %4688 = fadd fast float %4685, %4420
  %4689 = call float @dx.op.binary.f32(i32 36, float %4422, float %4608)  ; FMin(a,b)
  %4690 = fsub fast float %4689, %4422
  %4691 = fmul fast float %4690, %4560
  %4692 = fadd fast float %4691, %4422
  %4693 = fsub fast float %4621, %4421
  %4694 = fmul fast float %4693, %4560
  %4695 = fadd fast float %4694, %4421
  br label %4696

; <label>:4696                                    ; preds = %4558, %4520, %4411, %4127
  %4697 = phi float [ %4660, %4558 ], [ %4412, %4520 ], [ %4412, %4411 ], [ %3736, %4127 ]
  %4698 = phi float [ %4661, %4558 ], [ %4413, %4520 ], [ %4413, %4411 ], [ %3737, %4127 ]
  %4699 = phi float [ %4662, %4558 ], [ %4414, %4520 ], [ %4414, %4411 ], [ %3738, %4127 ]
  %4700 = phi float [ %4669, %4558 ], [ %4415, %4520 ], [ %4415, %4411 ], [ %3721, %4127 ]
  %4701 = phi float [ %4670, %4558 ], [ %4416, %4520 ], [ %4416, %4411 ], [ %3722, %4127 ]
  %4702 = phi float [ %4671, %4558 ], [ %4417, %4520 ], [ %4417, %4411 ], [ %3723, %4127 ]
  %4703 = phi float [ %4686, %4558 ], [ %4418, %4520 ], [ %4418, %4411 ], [ %3685, %4127 ]
  %4704 = phi float [ %4687, %4558 ], [ %4419, %4520 ], [ %4419, %4411 ], [ %3686, %4127 ]
  %4705 = phi float [ %4688, %4558 ], [ %4420, %4520 ], [ %4420, %4411 ], [ %3687, %4127 ]
  %4706 = phi float [ %4695, %4558 ], [ %4421, %4520 ], [ %4421, %4411 ], [ %3724, %4127 ]
  %4707 = phi float [ %4692, %4558 ], [ %4422, %4520 ], [ %4422, %4411 ], [ %3697, %4127 ]
  %4708 = fcmp fast une float %4131, 0.000000e+00
  %4709 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4710 = call float @dx.op.unary.f32(i32 25, float %4709)  ; Rsqrt(value)
  br i1 %4708, label %4718, label %4711

; <label>:4711                                    ; preds = %4696
  %4712 = fmul fast float %4710, %163
  %4713 = fmul fast float %4710, %164
  %4714 = fmul fast float %4710, %165
  %4715 = fsub fast float -0.000000e+00, %4712
  %4716 = fsub fast float -0.000000e+00, %4713
  %4717 = fsub fast float -0.000000e+00, %4714
  br label %4885

; <label>:4718                                    ; preds = %4696
  %4719 = fmul fast float %163, %4710
  %4720 = fsub fast float -0.000000e+00, %4719
  %4721 = fmul fast float %164, %4710
  %4722 = fsub fast float -0.000000e+00, %4721
  %4723 = fmul fast float %165, %4710
  %4724 = fsub fast float -0.000000e+00, %4723
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4722, float %4724, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = fmul fast float %4131, 2.500000e+00
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fmul fast float %4131, 0x4013FFFFE0000000
  %4729 = fadd fast float %4728, 0xBFFFFFFFE0000000
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4131, 0x4004000020000000
  %4732 = fadd fast float %4731, 0xBFF8000040000000
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %3703, 1.000000e+01
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4735, 2.000000e+00
  %4737 = fsub fast float 3.000000e+00, %4736
  %4738 = fmul fast float %4735, %4735
  %4739 = fmul fast float %4738, %4737
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = fsub fast float 0x3FE3333340000000, %4706
  %4742 = fmul fast float %4741, 0x400AAAAAA0000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4740, %4743
  %4745 = fmul fast float %4697, 0x3FEA2B8620000000
  %4746 = fmul fast float %4698, 0x3FEA2B8620000000
  %4747 = fmul fast float %4699, 0x3FEA2B8620000000
  %4748 = fadd fast float %4745, 0x3FC81DFBA0000000
  %4749 = fmul fast float %4748, %4697
  %4750 = fadd fast float %4749, 0x3F910E6020000000
  %4751 = fadd fast float %4746, 0x3FC81DFBA0000000
  %4752 = fmul fast float %4751, %4698
  %4753 = fadd fast float %4752, 0x3F910E6020000000
  %4754 = fadd fast float %4747, 0x3FC81DFBA0000000
  %4755 = fmul fast float %4754, %4699
  %4756 = fadd fast float %4755, 0x3F910E6020000000
  %4757 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4760 = fsub fast float %4757, %4697
  %4761 = fsub fast float %4758, %4698
  %4762 = fsub fast float %4759, %4699
  %4763 = fmul fast float %4760, %4727
  %4764 = fmul fast float %4763, %4744
  %4765 = fmul fast float %4761, %4727
  %4766 = fmul fast float %4765, %4744
  %4767 = fmul fast float %4762, %4727
  %4768 = fmul fast float %4767, %4744
  %4769 = fadd fast float %4764, %4697
  %4770 = fadd fast float %4766, %4698
  %4771 = fadd fast float %4768, %4699
  %4772 = fmul fast float %4707, %4707
  %4773 = fmul fast float %4772, %4772
  %4774 = fadd fast float %4730, 1.000000e+00
  %4775 = fsub fast float %4774, %4744
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fsub fast float 1.000000e+00, %4773
  %4780 = call float @dx.op.binary.f32(i32 36, float %4776, float %4779)  ; FMin(a,b)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4780, float %4781)  ; FMax(a,b)
  %4783 = fadd fast float %4778, 0xBFE4CCCCC0000000
  %4784 = fmul fast float %4783, 0x4006DB6DA0000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fmul fast float %4785, 2.000000e+00
  %4787 = fsub fast float 3.000000e+00, %4786
  %4788 = bitcast float %4700 to i32
  %4789 = ashr i32 %4788, 1
  %4790 = add nsw i32 %4789, 532487669
  %4791 = bitcast i32 %4790 to float
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = fmul fast float %4795, 2.000000e+00
  %4797 = bitcast float %4701 to i32
  %4798 = ashr i32 %4797, 1
  %4799 = add nsw i32 %4798, 532487669
  %4800 = bitcast i32 %4799 to float
  %4801 = fsub fast float 1.000000e+00, %4800
  %4802 = bitcast float %4801 to i32
  %4803 = sub nsw i32 2129859010, %4802
  %4804 = bitcast i32 %4803 to float
  %4805 = fmul fast float %4804, 2.000000e+00
  %4806 = bitcast float %4702 to i32
  %4807 = ashr i32 %4806, 1
  %4808 = add nsw i32 %4807, 532487669
  %4809 = bitcast i32 %4808 to float
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = fmul fast float %4813, 2.000000e+00
  %4815 = fsub fast float 0x4002A9FBE0000000, %4796
  %4816 = fadd fast float %4796, 0x3FD54FDF00000000
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4819, %4815
  %4821 = fmul fast float %4820, %4820
  %4822 = fsub fast float 0x4002A9FBE0000000, %4805
  %4823 = fadd fast float %4805, 0x3FD54FDF00000000
  %4824 = bitcast float %4823 to i32
  %4825 = sub nsw i32 2129859010, %4824
  %4826 = bitcast i32 %4825 to float
  %4827 = fmul fast float %4826, %4822
  %4828 = fmul fast float %4827, %4827
  %4829 = fsub fast float 0x4002A9FBE0000000, %4814
  %4830 = fadd fast float %4814, 0x3FD54FDF00000000
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4833, %4829
  %4835 = fmul fast float %4834, %4834
  %4836 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4821)  ; FMax(a,b)
  %4837 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4828)  ; FMax(a,b)
  %4838 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4835)  ; FMax(a,b)
  %4839 = fsub fast float 1.000000e+00, %4725
  %4840 = fadd fast float %4839, %4740
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fsub fast float 1.000000e+00, %4112
  %4843 = fmul fast float %4782, %4842
  %4844 = fmul fast float %4785, %4785
  %4845 = fmul fast float %4844, %4843
  %4846 = fmul fast float %4845, %4787
  %4847 = fmul fast float %4842, 0xBFE99999A0000000
  %4848 = fmul fast float %4847, %4727
  %4849 = fmul fast float %4848, %4744
  %4850 = fadd fast float %4849, 1.000000e+00
  %4851 = fadd fast float %4706, -1.000000e+00
  %4852 = fmul fast float %4850, %4851
  %4853 = fadd fast float %4852, 1.000000e+00
  %4854 = fsub fast float %4836, %4700
  %4855 = fsub fast float %4837, %4701
  %4856 = fsub fast float %4838, %4702
  %4857 = fmul fast float %4846, %4854
  %4858 = fmul fast float %4846, %4855
  %4859 = fmul fast float %4846, %4856
  %4860 = fadd fast float %4857, %4700
  %4861 = fadd fast float %4858, %4701
  %4862 = fadd fast float %4859, %4702
  %4863 = fsub fast float %83, %4703
  %4864 = fsub fast float %84, %4704
  %4865 = fsub fast float %85, %4705
  %4866 = fmul fast float %4846, %4863
  %4867 = fmul fast float %4846, %4864
  %4868 = fmul fast float %4846, %4865
  %4869 = fadd fast float %4866, %4703
  %4870 = fadd fast float %4867, %4704
  %4871 = fadd fast float %4868, %4705
  %4872 = fmul fast float %4846, %4841
  %4873 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = fmul fast float %4872, %4874
  %4876 = fadd fast float %4875, %4873
  %4877 = fsub fast float 1.000000e+00, %4707
  %4878 = fmul fast float %4846, %4877
  %4879 = fadd fast float %4878, %4707
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4869, float %4870, float %4871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.unary.f32(i32 25, float %4880)  ; Rsqrt(value)
  %4882 = fmul fast float %4869, %4881
  %4883 = fmul fast float %4870, %4881
  %4884 = fmul fast float %4871, %4881
  br label %4885

; <label>:4885                                    ; preds = %4718, %4711
  %4886 = phi float [ %4717, %4711 ], [ %4724, %4718 ]
  %4887 = phi float [ %4716, %4711 ], [ %4722, %4718 ]
  %4888 = phi float [ %4715, %4711 ], [ %4720, %4718 ]
  %4889 = phi float [ %4714, %4711 ], [ %4723, %4718 ]
  %4890 = phi float [ %4713, %4711 ], [ %4721, %4718 ]
  %4891 = phi float [ %4712, %4711 ], [ %4719, %4718 ]
  %4892 = phi float [ %4697, %4711 ], [ %4769, %4718 ]
  %4893 = phi float [ %4698, %4711 ], [ %4770, %4718 ]
  %4894 = phi float [ %4699, %4711 ], [ %4771, %4718 ]
  %4895 = phi float [ %4700, %4711 ], [ %4860, %4718 ]
  %4896 = phi float [ %4701, %4711 ], [ %4861, %4718 ]
  %4897 = phi float [ %4702, %4711 ], [ %4862, %4718 ]
  %4898 = phi float [ %4703, %4711 ], [ %4882, %4718 ]
  %4899 = phi float [ %4704, %4711 ], [ %4883, %4718 ]
  %4900 = phi float [ %4705, %4711 ], [ %4884, %4718 ]
  %4901 = phi float [ %4706, %4711 ], [ %4876, %4718 ]
  %4902 = phi float [ %4707, %4711 ], [ %4879, %4718 ]
  %4903 = select i1 %202, float 0.000000e+00, float %4897
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %4888, float %4887, float %4886)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4890, float %4889, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4906, 2.000000e+00
  %4908 = fmul fast float %4907, %4898
  %4909 = fmul fast float %4907, %4899
  %4910 = fmul fast float %4907, %4900
  %4911 = fsub fast float %4891, %4908
  %4912 = fsub fast float %4890, %4909
  %4913 = fsub fast float %4889, %4910
  %4914 = call float @dx.op.binary.f32(i32 36, float %4902, float 1.000000e+00)  ; FMin(a,b)
  %4915 = fsub fast float 1.000000e+00, %4902
  %4916 = bitcast float %4915 to i32
  %4917 = sub nsw i32 2129859010, %4916
  %4918 = fsub fast float 1.000000e+00, %53
  %4919 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4919, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4921 = fdiv fast float %4918, %4920
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fmul fast float %4923, 5.000000e-01
  %4925 = fadd fast float %4924, 5.000000e-01
  %4926 = fmul fast float %4925, %53
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, %4921
  %4930 = fadd fast float %4926, %4929
  %4931 = fsub fast float 5.000000e-01, %4924
  %4932 = fmul fast float %4931, %4892
  %4933 = fmul fast float %4931, %4893
  %4934 = fmul fast float %4931, %4894
  %4935 = fadd fast float %4930, %4932
  %4936 = fadd fast float %4930, %4933
  %4937 = fadd fast float %4930, %4934
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, 5.000000e-01
  %4941 = fadd fast float %4940, 5.000000e-01
  %4942 = fmul fast float %4941, %53
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, %4921
  %4946 = fadd fast float %4942, %4945
  %4947 = fsub fast float 5.000000e-01, %4940
  %4948 = fmul fast float %4947, %4892
  %4949 = fmul fast float %4947, %4893
  %4950 = fmul fast float %4947, %4894
  %4951 = fadd fast float %4946, %4948
  %4952 = fadd fast float %4946, %4949
  %4953 = fadd fast float %4946, %4950
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = call float @dx.op.binary.f32(i32 36, float %4892, float %4955)  ; FMin(a,b)
  %4957 = fsub fast float 1.000000e+00, %4914
  %4958 = fmul fast float %4956, %4957
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = call float @dx.op.binary.f32(i32 36, float %4893, float %4955)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4957
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = call float @dx.op.binary.f32(i32 36, float %4894, float %4955)  ; FMin(a,b)
  %4970 = fmul fast float %4969, %4957
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4914, %54
  %4976 = fmul fast float %4975, %4935
  %4977 = fmul fast float %4976, %4962
  %4978 = fmul fast float %4914, %55
  %4979 = fmul fast float %4978, %4936
  %4980 = fmul fast float %4979, %4968
  %4981 = fmul fast float %4914, %56
  %4982 = fmul fast float %4981, %4937
  %4983 = fmul fast float %4982, %4974
  %4984 = call float @dx.op.binary.f32(i32 36, float %4895, float %4955)  ; FMin(a,b)
  %4985 = fmul fast float %4984, %4957
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = call float @dx.op.binary.f32(i32 36, float %4896, float %4955)  ; FMin(a,b)
  %4991 = fmul fast float %4990, %4957
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = call float @dx.op.binary.f32(i32 36, float %4903, float %4955)  ; FMin(a,b)
  %4997 = fmul fast float %4996, %4957
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %4975, %4951
  %5003 = fmul fast float %5002, %4989
  %5004 = fmul fast float %4978, %4952
  %5005 = fmul fast float %5004, %4995
  %5006 = fmul fast float %4981, %4953
  %5007 = fmul fast float %5006, %5001
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4980, float %4983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = select i1 %202, float 0.000000e+00, float %4977
  %5010 = select i1 %202, float %5008, float %4980
  %5011 = select i1 %202, float 0.000000e+00, float %4983
  %5012 = call float @dx.op.dot3.f32(i32 55, float %5003, float %5005, float %5007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = select i1 %202, float 0.000000e+00, float %5003
  %5014 = select i1 %202, float %5012, float %5005
  %5015 = select i1 %202, float 0.000000e+00, float %5007
  %5016 = fmul fast float %4905, 9.843750e-01
  %5017 = fmul fast float %4901, 9.843750e-01
  %5018 = fadd fast float %5016, 7.812500e-03
  %5019 = fadd fast float %5017, 7.812500e-03
  %5020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5018, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 2
  %5022 = extractvalue %dx.types.ResRet.f32 %5020, 3
  %5023 = fmul fast float %5021, %4895
  %5024 = fmul fast float %5021, %4896
  %5025 = fmul fast float %5021, %4903
  %5026 = fadd fast float %5023, %5022
  %5027 = fadd fast float %5024, %5022
  %5028 = fadd fast float %5025, %5022
  %5029 = fcmp fast ogt float %3698, 0.000000e+00
  br i1 %5029, label %5030, label %5056

; <label>:5030                                    ; preds = %4885
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3698, float %4905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = fadd fast float %5032, -5.000000e-01
  %5036 = fadd fast float %5033, -5.000000e-01
  %5037 = fadd fast float %5034, -5.000000e-01
  %5038 = fsub fast float 1.000000e+00, %4895
  %5039 = fsub fast float 1.000000e+00, %4896
  %5040 = fsub fast float 1.000000e+00, %4903
  %5041 = fmul fast float %4895, 4.000000e+00
  %5042 = fmul fast float %5041, %5038
  %5043 = fmul fast float %5042, %5035
  %5044 = fmul fast float %4896, 4.000000e+00
  %5045 = fmul fast float %5044, %5039
  %5046 = fmul fast float %5045, %5036
  %5047 = fmul fast float %4903, 4.000000e+00
  %5048 = fmul fast float %5047, %5040
  %5049 = fmul fast float %5048, %5037
  %5050 = fadd fast float %5043, %5026
  %5051 = fadd fast float %5046, %5027
  %5052 = fadd fast float %5049, %5028
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  br label %5056

; <label>:5056                                    ; preds = %5030, %4885
  %5057 = phi float [ %5053, %5030 ], [ %5026, %4885 ]
  %5058 = phi float [ %5054, %5030 ], [ %5027, %4885 ]
  %5059 = phi float [ %5055, %5030 ], [ %5028, %4885 ]
  %5060 = call float @dx.op.binary.f32(i32 35, float %5058, float %5059)  ; FMax(a,b)
  %5061 = call float @dx.op.binary.f32(i32 35, float %5057, float %5060)  ; FMax(a,b)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = fmul fast float %5062, %5009
  %5064 = fmul fast float %5062, %5010
  %5065 = fmul fast float %5062, %5011
  %5066 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4893, float %4894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5067 = fcmp fast ogt float %5066, 0x3E7FF19E20000000
  %5068 = fdiv fast float 1.000000e+00, %5066
  %5069 = select i1 %5067, float %5068, float 0.000000e+00
  %5070 = fmul fast float %5069, %4892
  %5071 = fmul fast float %5069, %4893
  %5072 = fmul fast float %5069, %4894
  %5073 = fadd fast float %5070, -1.000000e+00
  %5074 = fadd fast float %5071, -1.000000e+00
  %5075 = fadd fast float %5072, -1.000000e+00
  %5076 = fmul fast float %5073, 5.000000e-01
  %5077 = fmul fast float %5074, 5.000000e-01
  %5078 = fmul fast float %5075, 5.000000e-01
  %5079 = fadd fast float %5076, 1.000000e+00
  %5080 = fadd fast float %5077, 1.000000e+00
  %5081 = fadd fast float %5078, 1.000000e+00
  %5082 = fmul fast float %5057, %5013
  %5083 = fmul fast float %5058, %5014
  %5084 = fmul fast float %5059, %5015
  %5085 = fsub fast float 1.000000e+00, %4905
  %5086 = bitcast float %5085 to i32
  %5087 = sitofp i32 %5086 to float
  %5088 = fmul fast float %5087, 5.000000e+00
  %5089 = fadd fast float %5088, 0xC1EFBF8940000000
  %5090 = fptosi float %5089 to i32
  %5091 = bitcast i32 %5090 to float
  %5092 = fmul fast float %5091, %3699
  %5093 = fmul fast float %5009, %5092
  %5094 = fmul fast float %5093, %5062
  %5095 = fmul fast float %5094, %5079
  %5096 = fmul fast float %5010, %5092
  %5097 = fmul fast float %5096, %5062
  %5098 = fmul fast float %5097, %5080
  %5099 = fmul fast float %5011, %5092
  %5100 = fmul fast float %5099, %5062
  %5101 = fmul fast float %5100, %5081
  %5102 = fmul fast float %5063, %3695
  %5103 = fmul fast float %5064, %3695
  %5104 = fmul fast float %5065, %3695
  %5105 = fadd fast float %5082, %3691
  %5106 = fadd fast float %5105, %5095
  %5107 = fmul fast float %5106, %3695
  %5108 = fadd fast float %5083, %3692
  %5109 = fadd fast float %5108, %5098
  %5110 = fmul fast float %5109, %3695
  %5111 = fadd fast float %5084, %3693
  %5112 = fadd fast float %5111, %5101
  %5113 = fmul fast float %5112, %3695
  %5114 = bitcast i32 %4917 to float
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 3
  %5117 = fcmp fast oeq float %5116, 0.000000e+00
  br i1 %5117, label %5345, label %5118

; <label>:5118                                    ; preds = %5056
  %5119 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5121 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.CBufRet.f32 %5126, 1
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %202, float %5127, float %5123
  %5131 = select i1 %202, float %5129, float %5124
  %5132 = select i1 %202, float %5128, float %5125
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5135 = fcmp fast une float %5134, 0.000000e+00
  br i1 %5135, label %5136, label %5153

; <label>:5136                                    ; preds = %5118
  %5137 = fptoui float %76 to i32
  %5138 = fptoui float %77 to i32
  %5139 = lshr i32 %5137, 4
  %5140 = lshr i32 %5138, 4
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = fptoui float %5142 to i32
  %5144 = add i32 %5143, 15
  %5145 = lshr i32 %5144, 4
  %5146 = mul i32 %5145, %5140
  %5147 = add i32 %5146, %5139
  %5148 = shl i32 %5147, 3
  %5149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5148, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.i32 %5149, 0
  %5151 = and i32 %5150, -268435456
  %5152 = icmp eq i32 %5151, -1342177280
  br i1 %5152, label %5163, label %5153

; <label>:5153                                    ; preds = %5136, %5118
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 3
  %5157 = fmul fast float %5155, %76
  %5158 = fmul fast float %5156, %77
  %5159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5157, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.ResRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.ResRet.f32 %5159, 2
  br label %5163

; <label>:5163                                    ; preds = %5153, %5136
  %5164 = phi float [ %5160, %5153 ], [ 0.000000e+00, %5136 ]
  %5165 = phi float [ %5161, %5153 ], [ 0.000000e+00, %5136 ]
  %5166 = phi float [ %5162, %5153 ], [ 0.000000e+00, %5136 ]
  %5167 = call float @dx.op.binary.f32(i32 36, float %5165, float %5166)  ; FMin(a,b)
  %5168 = call float @dx.op.binary.f32(i32 36, float %5164, float %5167)  ; FMin(a,b)
  %5169 = fcmp fast ogt float %5168, 0.000000e+00
  br i1 %5169, label %5170, label %5345, !dx.controlflow.hints !74

; <label>:5170                                    ; preds = %5163
  %5171 = fmul fast float %5164, %5130
  %5172 = fmul fast float %5165, %5131
  %5173 = fmul fast float %5166, %5132
  %5174 = fsub fast float %5119, %4891
  %5175 = fsub fast float %5120, %4890
  %5176 = fsub fast float %5121, %4889
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5174, float %5175, float %5176)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = call float @dx.op.unary.f32(i32 25, float %5177)  ; Rsqrt(value)
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %5178, %5175
  %5181 = fmul fast float %5178, %5176
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4887, float %4886, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = fmul fast float %5184, %5184
  %5186 = fmul fast float %5185, %5114
  %5187 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5188 = fmul fast float %5187, %5184
  %5189 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %5179, float %5180, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = fmul fast float %5189, %5189
  %5191 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5192 = fsub fast float 1.000000e+00, %4901
  %5193 = call float @dx.op.binary.f32(i32 35, float %5192, float 0x3F847AE140000000)  ; FMax(a,b)
  %5194 = fmul fast float %5193, %5193
  %5195 = fmul fast float %5194, %5194
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = fmul fast float %4905, %4905
  %5198 = fmul fast float %5197, %5196
  %5199 = fadd fast float %5198, %5195
  %5200 = bitcast float %5199 to i32
  %5201 = ashr i32 %5200, 1
  %5202 = add nsw i32 %5201, 532487669
  %5203 = bitcast i32 %5202 to float
  %5204 = fadd fast float %5203, %4905
  %5205 = fmul fast float %5195, %5190
  %5206 = fsub fast float 1.000000e+00, %5190
  %5207 = fadd fast float %5206, %5205
  %5208 = fmul fast float %5191, %5191
  %5209 = fmul fast float %5208, %5196
  %5210 = fadd fast float %5209, %5195
  %5211 = bitcast float %5210 to i32
  %5212 = ashr i32 %5211, 1
  %5213 = add nsw i32 %5212, 532487669
  %5214 = bitcast i32 %5213 to float
  %5215 = fadd fast float %5214, %5191
  %5216 = fmul fast float %5207, %5207
  %5217 = fmul fast float %5216, %5204
  %5218 = fmul fast float %5217, %5215
  %5219 = fdiv fast float 0x3FF0A00000000000, %5218
  %5220 = fmul fast float %5219, %5195
  %5221 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5222 = fsub fast float 1.000000e+00, %5221
  %5223 = bitcast float %5222 to i32
  %5224 = sitofp i32 %5223 to float
  %5225 = fmul fast float %5224, 5.000000e+00
  %5226 = fadd fast float %5225, 0xC1EFBF8940000000
  %5227 = fptosi float %5226 to i32
  %5228 = bitcast i32 %5227 to float
  %5229 = fsub fast float 1.000000e+00, %4895
  %5230 = fsub fast float 1.000000e+00, %4896
  %5231 = fsub fast float 1.000000e+00, %4903
  %5232 = fmul fast float %5228, %5229
  %5233 = fmul fast float %5228, %5230
  %5234 = fmul fast float %5228, %5231
  %5235 = fadd fast float %5232, %4895
  %5236 = fadd fast float %5233, %4896
  %5237 = fadd fast float %5234, %4903
  br i1 %5029, label %5238, label %5261

; <label>:5238                                    ; preds = %5170
  %5239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3698, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5243 = fadd fast float %5240, -5.000000e-01
  %5244 = fadd fast float %5241, -5.000000e-01
  %5245 = fadd fast float %5242, -5.000000e-01
  %5246 = fmul fast float %4895, 4.000000e+00
  %5247 = fmul fast float %5246, %5229
  %5248 = fmul fast float %5247, %5243
  %5249 = fmul fast float %4896, 4.000000e+00
  %5250 = fmul fast float %5249, %5230
  %5251 = fmul fast float %5250, %5244
  %5252 = fmul fast float %4903, 4.000000e+00
  %5253 = fmul fast float %5252, %5231
  %5254 = fmul fast float %5253, %5245
  %5255 = fadd fast float %5248, %5235
  %5256 = fadd fast float %5251, %5236
  %5257 = fadd fast float %5254, %5237
  %5258 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5259 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5260 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  br label %5261

; <label>:5261                                    ; preds = %5238, %5170
  %5262 = phi float [ %5258, %5238 ], [ %5235, %5170 ]
  %5263 = phi float [ %5259, %5238 ], [ %5236, %5170 ]
  %5264 = phi float [ %5260, %5238 ], [ %5237, %5170 ]
  %5265 = fmul fast float %5182, 9.843750e-01
  %5266 = fadd fast float %5265, 7.812500e-03
  %5267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5266, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 3
  %5270 = fmul fast float %5268, %4895
  %5271 = fmul fast float %5268, %4896
  %5272 = fmul fast float %5268, %4903
  %5273 = fadd fast float %5270, %5269
  %5274 = fadd fast float %5271, %5269
  %5275 = fadd fast float %5272, %5269
  br i1 %5029, label %5276, label %5299

; <label>:5276                                    ; preds = %5261
  %5277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3698, float %5182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.ResRet.f32 %5277, 2
  %5281 = fadd fast float %5278, -5.000000e-01
  %5282 = fadd fast float %5279, -5.000000e-01
  %5283 = fadd fast float %5280, -5.000000e-01
  %5284 = fmul fast float %4895, 4.000000e+00
  %5285 = fmul fast float %5284, %5229
  %5286 = fmul fast float %5285, %5281
  %5287 = fmul fast float %4896, 4.000000e+00
  %5288 = fmul fast float %5287, %5230
  %5289 = fmul fast float %5288, %5282
  %5290 = fmul fast float %4903, 4.000000e+00
  %5291 = fmul fast float %5290, %5231
  %5292 = fmul fast float %5291, %5283
  %5293 = fadd fast float %5286, %5273
  %5294 = fadd fast float %5289, %5274
  %5295 = fadd fast float %5292, %5275
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  br label %5299

; <label>:5299                                    ; preds = %5276, %5261
  %5300 = phi float [ %5296, %5276 ], [ %5273, %5261 ]
  %5301 = phi float [ %5297, %5276 ], [ %5274, %5261 ]
  %5302 = phi float [ %5298, %5276 ], [ %5275, %5261 ]
  %5303 = call float @dx.op.binary.f32(i32 35, float %5301, float %5302)  ; FMax(a,b)
  %5304 = call float @dx.op.binary.f32(i32 35, float %5300, float %5303)  ; FMax(a,b)
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = fmul fast float %5262, %5220
  %5307 = fmul fast float %5263, %5220
  %5308 = fmul fast float %5264, %5220
  %5309 = fsub fast float 1.000000e+00, %5183
  %5310 = bitcast float %5309 to i32
  %5311 = sitofp i32 %5310 to float
  %5312 = fmul fast float %5311, 5.000000e+00
  %5313 = fadd fast float %5312, 0xC1EFBF8940000000
  %5314 = fptosi float %5313 to i32
  %5315 = bitcast i32 %5314 to float
  %5316 = fmul fast float %5315, %3699
  %5317 = fmul fast float %5305, %5316
  %5318 = fmul fast float %5317, %5079
  %5319 = fmul fast float %5317, %5080
  %5320 = fmul fast float %5317, %5081
  %5321 = fadd fast float %5318, %5306
  %5322 = fadd fast float %5319, %5307
  %5323 = fadd fast float %5320, %5308
  %5324 = fmul fast float %5188, %5171
  %5325 = fmul fast float %5324, %5305
  %5326 = fmul fast float %5188, %5172
  %5327 = fmul fast float %5326, %5305
  %5328 = fmul fast float %5188, %5173
  %5329 = fmul fast float %5328, %5305
  %5330 = fmul fast float %5324, %5321
  %5331 = fmul fast float %5326, %5322
  %5332 = fmul fast float %5328, %5323
  %5333 = fadd fast float %5325, %5063
  %5334 = fmul fast float %5333, %3695
  %5335 = fadd fast float %5327, %5064
  %5336 = fmul fast float %5335, %3695
  %5337 = fadd fast float %5329, %5065
  %5338 = fmul fast float %5337, %3695
  %5339 = fadd fast float %5330, %5106
  %5340 = fmul fast float %5339, %3695
  %5341 = fadd fast float %5331, %5109
  %5342 = fmul fast float %5341, %3695
  %5343 = fadd fast float %5332, %5112
  %5344 = fmul fast float %5343, %3695
  br label %5345

; <label>:5345                                    ; preds = %5299, %5163, %5056
  %5346 = phi float [ %5107, %5056 ], [ %5107, %5163 ], [ %5340, %5299 ]
  %5347 = phi float [ %5110, %5056 ], [ %5110, %5163 ], [ %5342, %5299 ]
  %5348 = phi float [ %5113, %5056 ], [ %5113, %5163 ], [ %5344, %5299 ]
  %5349 = phi float [ %5102, %5056 ], [ %5102, %5163 ], [ %5334, %5299 ]
  %5350 = phi float [ %5103, %5056 ], [ %5103, %5163 ], [ %5336, %5299 ]
  %5351 = phi float [ %5104, %5056 ], [ %5104, %5163 ], [ %5338, %5299 ]
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 0
  %5354 = icmp eq i32 %5353, 0
  br i1 %5354, label %5789, label %5355

; <label>:5355                                    ; preds = %5345
  %5356 = fptoui float %76 to i32
  %5357 = fptoui float %77 to i32
  %5358 = lshr i32 %5356, 4
  %5359 = lshr i32 %5357, 4
  %5360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5361 = extractvalue %dx.types.CBufRet.i32 %5360, 0
  %5362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5359, i32 %5361, i32 %5358)  ; UMad(a,b,c)
  %5363 = add nsw i32 %5353, -1
  %5364 = call i32 @dx.op.binary.i32(i32 37, i32 %5363, i32 0)  ; IMax(a,b)
  %5365 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5366 = fptoui float %5365 to i32
  %5367 = lshr i32 %5366, 5
  %5368 = call i32 @dx.op.binary.i32(i32 40, i32 %5367, i32 8191)  ; UMin(a,b)
  %5369 = shl i32 %5368, 2
  %5370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5369, i32 undef)  ; BufferLoad(srv,index,wot)
  %5371 = extractvalue %dx.types.ResRet.i32 %5370, 0
  %5372 = lshr i32 %5371, 16
  %5373 = and i32 %5371, 65535
  %5374 = lshr i32 %5371, 21
  %5375 = lshr i32 %5373, 5
  %5376 = call i32 @dx.op.binary.i32(i32 40, i32 %5375, i32 %5364)  ; UMin(a,b)
  %5377 = icmp ugt i32 %5374, %5376
  br i1 %5377, label %5789, label %5378

; <label>:5378                                    ; preds = %5355
  br label %5379

; <label>:5379                                    ; preds = %5779, %5378
  %5380 = phi i32 [ %5786, %5779 ], [ %5374, %5378 ]
  %5381 = phi float [ %5780, %5779 ], [ %5346, %5378 ]
  %5382 = phi float [ %5781, %5779 ], [ %5347, %5378 ]
  %5383 = phi float [ %5782, %5779 ], [ %5348, %5378 ]
  %5384 = phi float [ %5783, %5779 ], [ %5349, %5378 ]
  %5385 = phi float [ %5784, %5779 ], [ %5350, %5378 ]
  %5386 = phi float [ %5785, %5779 ], [ %5351, %5378 ]
  %5387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.i32 %5387, 0
  %5389 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5362, i32 %5388, i32 %5380)  ; UMad(a,b,c)
  %5390 = shl i32 %5389, 2
  %5391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.i32 %5391, 0
  %5393 = shl i32 %5380, 5
  %5394 = sub nsw i32 %5372, %5393
  %5395 = call i32 @dx.op.binary.i32(i32 37, i32 %5394, i32 0)  ; IMax(a,b)
  %5396 = call i32 @dx.op.binary.i32(i32 38, i32 %5395, i32 31)  ; IMin(a,b)
  %5397 = sub nsw i32 1, %5372
  %5398 = add nsw i32 %5397, %5373
  %5399 = call i32 @dx.op.binary.i32(i32 37, i32 %5398, i32 0)  ; IMax(a,b)
  %5400 = call i32 @dx.op.binary.i32(i32 38, i32 %5399, i32 32)  ; IMin(a,b)
  %5401 = and i32 %5400, 31
  %5402 = shl i32 -1, %5401
  %5403 = xor i32 %5402, -1
  %5404 = and i32 %5396, 31
  %5405 = shl i32 %5403, %5404
  %5406 = icmp eq i32 %5400, 32
  %5407 = select i1 %5406, i32 -1, i32 %5405
  %5408 = and i32 %5407, %5392
  %5409 = icmp eq i32 %5408, 0
  br i1 %5409, label %5779, label %5410

; <label>:5410                                    ; preds = %5379
  br label %5411

; <label>:5411                                    ; preds = %5491, %5410
  %5412 = phi i32 [ %5423, %5491 ], [ %5408, %5410 ]
  %5413 = phi float [ %5492, %5491 ], [ %5381, %5410 ]
  %5414 = phi float [ %5493, %5491 ], [ %5382, %5410 ]
  %5415 = phi float [ %5494, %5491 ], [ %5383, %5410 ]
  %5416 = phi float [ %5495, %5491 ], [ %5384, %5410 ]
  %5417 = phi float [ %5496, %5491 ], [ %5385, %5410 ]
  %5418 = phi float [ %5497, %5491 ], [ %5386, %5410 ]
  %5419 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5412)  ; FirstbitLo(value)
  %5420 = add i32 %5419, %5393
  %5421 = and i32 %5419, 31
  %5422 = shl i32 1, %5421
  %5423 = xor i32 %5422, %5412
  %5424 = mul i32 %5420, 112
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = or i32 %5424, 12
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = add i32 %5424, 44
  %5433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5432, i32 undef)  ; BufferLoad(srv,index,wot)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = add i32 %5424, 48
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.ResRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.ResRet.f32 %5436, 2
  %5440 = add i32 %5424, 80
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = select i1 %202, float %5442, float %5426
  %5446 = select i1 %202, float %5444, float %5427
  %5447 = select i1 %202, float %5443, float %5428
  %5448 = fsub fast float %5437, %163
  %5449 = fsub fast float %5438, %164
  %5450 = fsub fast float %5439, %165
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.unary.f32(i32 24, float %5451)  ; Sqrt(value)
  %5453 = fdiv fast float 1.000000e+00, %5452
  %5454 = fmul fast float %5453, %5448
  %5455 = fmul fast float %5453, %5449
  %5456 = fmul fast float %5453, %5450
  %5457 = fadd fast float %5452, %5431
  %5458 = fdiv fast float 1.000000e+00, %5457
  %5459 = fmul float %5434, %5458
  %5460 = fmul float %5459, %5459
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = and i32 %5422, %5408
  %5463 = icmp eq i32 %5462, 0
  br i1 %5463, label %5486, label %5464, !dx.controlflow.hints !75

; <label>:5464                                    ; preds = %5411
  %5465 = lshr i32 %5356, 5
  %5466 = lshr i32 %5357, 5
  %5467 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5465, i32 %5466, i32 %5420, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5468 = extractvalue %dx.types.ResRet.i32 %5467, 0
  %5469 = and i32 %5468, 3
  %5470 = icmp eq i32 %5469, 0
  %5471 = select i1 %5470, float 1.000000e+00, float 0.000000e+00
  %5472 = icmp eq i32 %5469, 3
  br i1 %5472, label %5473, label %5486

; <label>:5473                                    ; preds = %5464
  %5474 = lshr i32 %5468, 10
  %5475 = and i32 %5474, 8160
  %5476 = and i32 %5357, 31
  %5477 = or i32 %5475, %5476
  %5478 = lshr i32 %5468, 1
  %5479 = and i32 %5478, 16352
  %5480 = and i32 %5356, 31
  %5481 = or i32 %5479, %5480
  %5482 = lshr i32 %5468, 23
  %5483 = and i32 %5482, 255
  %5484 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5481, i32 %5477, i32 %5483, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  br label %5486

; <label>:5486                                    ; preds = %5473, %5464, %5411
  %5487 = phi float [ %5485, %5473 ], [ %5471, %5464 ], [ 0.000000e+00, %5411 ]
  %5488 = call float @dx.op.binary.f32(i32 36, float %5487, float %5487)  ; FMin(a,b)
  %5489 = call float @dx.op.binary.f32(i32 36, float %5487, float %5488)  ; FMin(a,b)
  %5490 = fcmp fast ogt float %5489, 0.000000e+00
  br i1 %5490, label %5499, label %5491, !dx.controlflow.hints !76

; <label>:5491                                    ; preds = %5735, %5486
  %5492 = phi float [ %5413, %5486 ], [ %5775, %5735 ]
  %5493 = phi float [ %5414, %5486 ], [ %5776, %5735 ]
  %5494 = phi float [ %5415, %5486 ], [ %5777, %5735 ]
  %5495 = phi float [ %5416, %5486 ], [ %5769, %5735 ]
  %5496 = phi float [ %5417, %5486 ], [ %5770, %5735 ]
  %5497 = phi float [ %5418, %5486 ], [ %5771, %5735 ]
  %5498 = icmp eq i32 %5412, %5422
  br i1 %5498, label %5778, label %5411

; <label>:5499                                    ; preds = %5486
  %5500 = fmul fast float %5487, %5445
  %5501 = fmul fast float %5487, %5446
  %5502 = fmul fast float %5487, %5447
  %5503 = fsub fast float %5439, %4099
  %5504 = fcmp fast ogt float %5503, 0.000000e+00
  %5505 = fsub fast float %165, %4099
  %5506 = fcmp fast ogt float %5505, 0.000000e+00
  %5507 = xor i1 %5506, %5504
  %5508 = fsub fast float %4099, %5439
  %5509 = fmul fast float %5508, 2.000000e+00
  %5510 = fadd fast float %5509, %5439
  %5511 = select i1 %5507, float %5439, float %5510
  %5512 = fsub fast float %5511, %165
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5512, float %5448, float %5449, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call float @dx.op.unary.f32(i32 25, float %5513)  ; Rsqrt(value)
  %5515 = fmul fast float %5514, %5448
  %5516 = fmul fast float %5514, %5449
  %5517 = fmul fast float %5514, %5512
  %5518 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5515, float %5516, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fdiv fast float 1.000000e+00, %5519
  %5521 = fmul fast float %5520, %5518
  %5522 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5505, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fcmp fast ogt float %5522, 0.000000e+00
  %5524 = fcmp fast olt float %5522, 0.000000e+00
  %5525 = zext i1 %5523 to i32
  %5526 = zext i1 %5524 to i32
  %5527 = sub nsw i32 %5525, %5526
  %5528 = sitofp i32 %5527 to float
  %5529 = fsub fast float %5511, %4099
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5529, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fcmp fast ogt float %5530, 0.000000e+00
  %5532 = fcmp fast olt float %5530, 0.000000e+00
  %5533 = zext i1 %5531 to i32
  %5534 = zext i1 %5532 to i32
  %5535 = sub nsw i32 %5533, %5534
  %5536 = sitofp i32 %5535 to float
  %5537 = fcmp fast une float %5528, %5536
  br i1 %5537, label %5538, label %5548

; <label>:5538                                    ; preds = %5499
  %5539 = fmul fast float %5521, %5517
  %5540 = fmul fast float %5521, %5516
  %5541 = fmul fast float %5521, %5515
  %5542 = fmul fast float %5541, %5541
  %5543 = fmul fast float %5540, %5540
  %5544 = fadd fast float %5542, %5543
  %5545 = fmul fast float %5539, %5539
  %5546 = fadd fast float %5544, %5545
  %5547 = call float @dx.op.unary.f32(i32 24, float %5546)  ; Sqrt(value)
  br label %5560

; <label>:5548                                    ; preds = %5499
  %5549 = icmp slt i32 %5527, 0
  br i1 %5549, label %5550, label %5560

; <label>:5550                                    ; preds = %5548
  %5551 = fsub fast float %163, %5437
  %5552 = fsub fast float %164, %5438
  %5553 = fsub fast float %165, %5511
  %5554 = fmul fast float %5551, %5551
  %5555 = fmul fast float %5552, %5552
  %5556 = fadd fast float %5554, %5555
  %5557 = fmul fast float %5553, %5553
  %5558 = fadd fast float %5556, %5557
  %5559 = call float @dx.op.unary.f32(i32 24, float %5558)  ; Sqrt(value)
  br label %5560

; <label>:5560                                    ; preds = %5550, %5548, %5538
  %5561 = phi float [ %5547, %5538 ], [ %5559, %5550 ], [ 0.000000e+00, %5548 ]
  %5562 = and i1 %5506, %5504
  %5563 = fsub fast float -0.000000e+00, %5561
  %5564 = select i1 %5562, float -0.000000e+00, float %5563
  %5565 = fmul fast float %4100, 0x3FF7154760000000
  %5566 = fmul fast float %5565, %5564
  %5567 = fmul fast float %4101, 0x3FF7154760000000
  %5568 = fmul fast float %5567, %5564
  %5569 = fmul fast float %4102, 0x3FF7154760000000
  %5570 = fmul fast float %5569, %5564
  %5571 = call float @dx.op.unary.f32(i32 21, float %5566)  ; Exp(value)
  %5572 = call float @dx.op.unary.f32(i32 21, float %5568)  ; Exp(value)
  %5573 = call float @dx.op.unary.f32(i32 21, float %5570)  ; Exp(value)
  %5574 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5575 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5577 = fmul fast float %5500, %5574
  %5578 = fmul fast float %5501, %5575
  %5579 = fmul fast float %5502, %5576
  %5580 = fsub fast float %5454, %4891
  %5581 = fsub fast float %5455, %4890
  %5582 = fsub fast float %5456, %4889
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.unary.f32(i32 25, float %5583)  ; Rsqrt(value)
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5584, %5581
  %5587 = fmul fast float %5584, %5582
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %4898, float %4899, float %4900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4887, float %4886, float %5585, float %5586, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5591 = fmul fast float %5590, %5461
  %5592 = fmul fast float %5590, %5590
  %5593 = fmul fast float %5592, %5114
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fmul fast float %5591, %5594
  %5596 = bitcast float %5451 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = sub nsw i32 1597463007, %5597
  %5599 = bitcast i32 %5598 to float
  %5600 = fmul fast float %5599, %5448
  %5601 = fmul fast float %5599, %5449
  %5602 = fmul fast float %5599, %5450
  %5603 = fsub fast float %5600, %4891
  %5604 = fsub fast float %5601, %4890
  %5605 = fsub fast float %5602, %4889
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5603, %5607
  %5609 = fmul fast float %5604, %5607
  %5610 = fmul fast float %5605, %5607
  %5611 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, %5611
  %5613 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5614 = fsub fast float 1.000000e+00, %4901
  %5615 = call float @dx.op.binary.f32(i32 35, float %5614, float 0x3F847AE140000000)  ; FMax(a,b)
  %5616 = fmul fast float %5615, %5615
  %5617 = fmul fast float %5616, %5616
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = fmul fast float %4905, %4905
  %5620 = fmul fast float %5619, %5618
  %5621 = fadd fast float %5620, %5617
  %5622 = bitcast float %5621 to i32
  %5623 = ashr i32 %5622, 1
  %5624 = add nsw i32 %5623, 532487669
  %5625 = bitcast i32 %5624 to float
  %5626 = fadd fast float %5625, %4905
  %5627 = fmul fast float %5617, %5612
  %5628 = fsub fast float 1.000000e+00, %5612
  %5629 = fadd fast float %5628, %5627
  %5630 = fmul fast float %5613, %5613
  %5631 = fmul fast float %5630, %5618
  %5632 = fadd fast float %5631, %5617
  %5633 = bitcast float %5632 to i32
  %5634 = ashr i32 %5633, 1
  %5635 = add nsw i32 %5634, 532487669
  %5636 = bitcast i32 %5635 to float
  %5637 = fadd fast float %5636, %5613
  %5638 = fmul fast float %5629, %5629
  %5639 = fmul fast float %5638, %5626
  %5640 = fmul fast float %5639, %5637
  %5641 = fdiv fast float 1.000000e+00, %5640
  %5642 = bitcast float %5617 to i32
  %5643 = sitofp i32 %5642 to float
  %5644 = fmul fast float %5643, 0x3FE7F73180000000
  %5645 = fadd fast float %5644, 0x41AFE27C40000000
  %5646 = fptosi float %5645 to i32
  %5647 = bitcast i32 %5646 to float
  %5648 = fmul fast float %5434, 0x3FD80E9D60000000
  %5649 = fmul fast float %5648, %5599
  %5650 = fadd fast float %5647, %5649
  %5651 = bitcast float %5650 to i32
  %5652 = sub nsw i32 2129859010, %5651
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5617, %5641
  %5655 = fmul fast float %5654, %5647
  %5656 = fmul fast float %5655, %5653
  %5657 = call float @dx.op.unary.f32(i32 6, float %5589)  ; FAbs(value)
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = bitcast float %5658 to i32
  %5660 = sitofp i32 %5659 to float
  %5661 = fmul fast float %5660, 5.000000e+00
  %5662 = fadd fast float %5661, 0xC1EFBF8940000000
  %5663 = fptosi float %5662 to i32
  %5664 = bitcast i32 %5663 to float
  %5665 = fsub fast float 1.000000e+00, %4895
  %5666 = fsub fast float 1.000000e+00, %4896
  %5667 = fsub fast float 1.000000e+00, %4903
  %5668 = fmul fast float %5664, %5665
  %5669 = fmul fast float %5664, %5666
  %5670 = fmul fast float %5664, %5667
  %5671 = fadd fast float %5668, %4895
  %5672 = fadd fast float %5669, %4896
  %5673 = fadd fast float %5670, %4903
  br i1 %5029, label %5674, label %5697

; <label>:5674                                    ; preds = %5560
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3698, float %5657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = fadd fast float %5676, -5.000000e-01
  %5680 = fadd fast float %5677, -5.000000e-01
  %5681 = fadd fast float %5678, -5.000000e-01
  %5682 = fmul fast float %4895, 4.000000e+00
  %5683 = fmul fast float %5682, %5665
  %5684 = fmul fast float %5683, %5679
  %5685 = fmul fast float %4896, 4.000000e+00
  %5686 = fmul fast float %5685, %5666
  %5687 = fmul fast float %5686, %5680
  %5688 = fmul fast float %4903, 4.000000e+00
  %5689 = fmul fast float %5688, %5667
  %5690 = fmul fast float %5689, %5681
  %5691 = fadd fast float %5684, %5671
  %5692 = fadd fast float %5687, %5672
  %5693 = fadd fast float %5690, %5673
  %5694 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5695 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5696 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  br label %5697

; <label>:5697                                    ; preds = %5674, %5560
  %5698 = phi float [ %5694, %5674 ], [ %5671, %5560 ]
  %5699 = phi float [ %5695, %5674 ], [ %5672, %5560 ]
  %5700 = phi float [ %5696, %5674 ], [ %5673, %5560 ]
  %5701 = fmul fast float %5588, 9.843750e-01
  %5702 = fadd fast float %5701, 7.812500e-03
  %5703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5702, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5704 = extractvalue %dx.types.ResRet.f32 %5703, 2
  %5705 = extractvalue %dx.types.ResRet.f32 %5703, 3
  %5706 = fmul fast float %5704, %4895
  %5707 = fmul fast float %5704, %4896
  %5708 = fmul fast float %5704, %4903
  %5709 = fadd fast float %5706, %5705
  %5710 = fadd fast float %5707, %5705
  %5711 = fadd fast float %5708, %5705
  br i1 %5029, label %5712, label %5735

; <label>:5712                                    ; preds = %5697
  %5713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3698, float %5588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fadd fast float %5715, -5.000000e-01
  %5719 = fadd fast float %5716, -5.000000e-01
  %5720 = fmul fast float %4895, 4.000000e+00
  %5721 = fmul fast float %5720, %5665
  %5722 = fmul fast float %5721, %5717
  %5723 = fmul fast float %4896, 4.000000e+00
  %5724 = fmul fast float %5723, %5666
  %5725 = fmul fast float %5724, %5718
  %5726 = fmul fast float %4903, 4.000000e+00
  %5727 = fmul fast float %5726, %5667
  %5728 = fmul fast float %5727, %5719
  %5729 = fadd fast float %5722, %5709
  %5730 = fadd fast float %5725, %5710
  %5731 = fadd fast float %5728, %5711
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5734 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  br label %5735

; <label>:5735                                    ; preds = %5712, %5697
  %5736 = phi float [ %5732, %5712 ], [ %5709, %5697 ]
  %5737 = phi float [ %5733, %5712 ], [ %5710, %5697 ]
  %5738 = phi float [ %5734, %5712 ], [ %5711, %5697 ]
  %5739 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5736, float %5739)  ; FMax(a,b)
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5698, %5656
  %5743 = fmul fast float %5699, %5656
  %5744 = fmul fast float %5700, %5656
  %5745 = fsub fast float 1.000000e+00, %5589
  %5746 = bitcast float %5745 to i32
  %5747 = sitofp i32 %5746 to float
  %5748 = fmul fast float %5747, 5.000000e+00
  %5749 = fadd fast float %5748, 0xC1EFBF8940000000
  %5750 = fptosi float %5749 to i32
  %5751 = bitcast i32 %5750 to float
  %5752 = fmul fast float %5751, %3699
  %5753 = fmul fast float %5741, %5752
  %5754 = fmul fast float %5753, %5079
  %5755 = fmul fast float %5753, %5080
  %5756 = fmul fast float %5753, %5081
  %5757 = fadd fast float %5754, %5742
  %5758 = fadd fast float %5755, %5743
  %5759 = fadd fast float %5756, %5744
  %5760 = fmul fast float %5577, %3695
  %5761 = fmul fast float %5760, %5595
  %5762 = fmul fast float %5761, %5741
  %5763 = fmul fast float %5578, %3695
  %5764 = fmul fast float %5763, %5595
  %5765 = fmul fast float %5764, %5741
  %5766 = fmul fast float %5579, %3695
  %5767 = fmul fast float %5766, %5595
  %5768 = fmul fast float %5767, %5741
  %5769 = fadd fast float %5762, %5416
  %5770 = fadd fast float %5765, %5417
  %5771 = fadd fast float %5768, %5418
  %5772 = fmul fast float %5761, %5757
  %5773 = fmul fast float %5764, %5758
  %5774 = fmul fast float %5767, %5759
  %5775 = fadd fast float %5772, %5413
  %5776 = fadd fast float %5773, %5414
  %5777 = fadd fast float %5774, %5415
  br label %5491

; <label>:5778                                    ; preds = %5491
  br label %5779

; <label>:5779                                    ; preds = %5778, %5379
  %5780 = phi float [ %5381, %5379 ], [ %5492, %5778 ]
  %5781 = phi float [ %5382, %5379 ], [ %5493, %5778 ]
  %5782 = phi float [ %5383, %5379 ], [ %5494, %5778 ]
  %5783 = phi float [ %5384, %5379 ], [ %5495, %5778 ]
  %5784 = phi float [ %5385, %5379 ], [ %5496, %5778 ]
  %5785 = phi float [ %5386, %5379 ], [ %5497, %5778 ]
  %5786 = add i32 %5380, 1
  %5787 = icmp ugt i32 %5786, %5376
  br i1 %5787, label %5788, label %5379

; <label>:5788                                    ; preds = %5779
  br label %5789

; <label>:5789                                    ; preds = %5788, %5355, %5345
  %5790 = phi float [ %5346, %5345 ], [ %5346, %5355 ], [ %5780, %5788 ]
  %5791 = phi float [ %5347, %5345 ], [ %5347, %5355 ], [ %5781, %5788 ]
  %5792 = phi float [ %5348, %5345 ], [ %5348, %5355 ], [ %5782, %5788 ]
  %5793 = phi float [ %5349, %5345 ], [ %5349, %5355 ], [ %5783, %5788 ]
  %5794 = phi float [ %5350, %5345 ], [ %5350, %5355 ], [ %5784, %5788 ]
  %5795 = phi float [ %5351, %5345 ], [ %5351, %5355 ], [ %5785, %5788 ]
  %5796 = call float @dx.op.unary.f32(i32 24, float %4892)  ; Sqrt(value)
  %5797 = call float @dx.op.unary.f32(i32 24, float %4893)  ; Sqrt(value)
  %5798 = call float @dx.op.unary.f32(i32 24, float %4894)  ; Sqrt(value)
  %5799 = fmul fast float %5796, %5793
  %5800 = fmul fast float %5797, %5794
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  br i1 %202, label %5803, label %5823

; <label>:5803                                    ; preds = %5789
  %5804 = fadd fast float %5795, %3701
  %5805 = fmul fast float %5804, %3702
  %5806 = fsub fast float 1.000000e+00, %3702
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 3
  %5810 = fmul fast float %5809, %5807
  %5811 = fadd fast float %5810, %5805
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = fmul fast float %5813, %5085
  %5815 = fsub fast float %5811, %5814
  %5816 = fadd fast float %5800, %5799
  %5817 = fmul fast float %5802, %5816
  %5818 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5819 = fsub fast float %5815, %5818
  %5820 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5821 = fmul fast float %5819, %5820
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  br label %5839

; <label>:5823                                    ; preds = %5789
  %5824 = fmul fast float %5798, %5795
  %5825 = fmul fast float %5802, %5799
  %5826 = fmul fast float %5802, %5800
  %5827 = fmul fast float %5824, %5802
  %5828 = add i32 %32, 356
  %5829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.i32 %5829, 0
  %5831 = and i32 %5830, 32
  %5832 = icmp eq i32 %5831, 0
  br i1 %5832, label %5839, label %5833

; <label>:5833                                    ; preds = %5823
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fmul fast float %5835, 0x3FE99999A0000000
  %5837 = fadd fast float %5835, %5825
  %5838 = fadd fast float %5836, %5827
  br label %5839

; <label>:5839                                    ; preds = %5833, %5823, %5803
  %5840 = phi float [ %5817, %5803 ], [ %5837, %5833 ], [ %5825, %5823 ]
  %5841 = phi float [ %5822, %5803 ], [ %5826, %5833 ], [ %5826, %5823 ]
  %5842 = phi float [ 1.000000e+00, %5803 ], [ %5838, %5833 ], [ %5827, %5823 ]
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = fmul fast float %5844, %5791
  %5846 = fmul fast float %5844, %5792
  %5847 = fadd fast float %5791, %5790
  %5848 = select i1 %202, float %5847, float %5790
  %5849 = fmul float %5848, %5844
  %5850 = select i1 %202, float 0.000000e+00, float %5845
  %5851 = select i1 %202, float 0.000000e+00, float %5846
  %5852 = fmul fast float %5840, %5796
  %5853 = fmul fast float %5841, %5797
  %5854 = fmul fast float %5842, %5798
  %5855 = fadd fast float %5849, %5852
  %5856 = fadd fast float %5850, %5853
  %5857 = fadd fast float %5851, %5854
  %5858 = select i1 %202, float %5841, float %5856
  %5859 = select i1 %202, float %5842, float %5857
  %5860 = call float @dx.op.binary.f32(i32 36, float %5855, float 3.225500e+04)  ; FMin(a,b)
  %5861 = call float @dx.op.binary.f32(i32 36, float %5858, float 3.225500e+04)  ; FMin(a,b)
  %5862 = call float @dx.op.binary.f32(i32 36, float %5859, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5860)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5861)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5862)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

