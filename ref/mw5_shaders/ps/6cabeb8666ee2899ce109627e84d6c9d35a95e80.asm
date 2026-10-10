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
; shader hash: b90b5adff7d95252e5868b4429ef8bbf
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
  %396 = add i32 %32, 488
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
  %577 = add i32 %32, 456
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
  %911 = phi float [ 0.000000e+00, %435 ], [ %892, %891 ]
  %912 = phi float [ 0.000000e+00, %435 ], [ %893, %891 ]
  %913 = phi float [ 0.000000e+00, %435 ], [ %894, %891 ]
  %914 = phi float [ 0.000000e+00, %435 ], [ %764, %891 ]
  %915 = phi float [ 0.000000e+00, %435 ], [ %765, %891 ]
  %916 = phi float [ 0.000000e+00, %435 ], [ %766, %891 ]
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
  %1137 = add i32 %32, 460
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
  %1470 = fmul fast float %1469, %914
  %1471 = fmul fast float %1469, %915
  %1472 = fmul fast float %1469, %916
  %1473 = fmul fast float %1469, %911
  %1474 = fmul fast float %1469, %912
  %1475 = fmul fast float %1469, %913
  br label %1476

; <label>:1476                                    ; preds = %1468, %1451
  %1477 = phi float [ %1473, %1468 ], [ %911, %1451 ]
  %1478 = phi float [ %1474, %1468 ], [ %912, %1451 ]
  %1479 = phi float [ %1475, %1468 ], [ %913, %1451 ]
  %1480 = phi float [ %1470, %1468 ], [ %914, %1451 ]
  %1481 = phi float [ %1471, %1468 ], [ %915, %1451 ]
  %1482 = phi float [ %1472, %1468 ], [ %916, %1451 ]
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
  %1496 = fsub fast float %1324, %1480
  %1497 = fsub fast float %1325, %1481
  %1498 = fsub fast float %1326, %1482
  %1499 = fmul fast float %1490, %1496
  %1500 = fmul fast float %1490, %1497
  %1501 = fmul fast float %1490, %1498
  %1502 = fadd fast float %1499, %1480
  %1503 = fadd fast float %1500, %1481
  %1504 = fadd fast float %1501, %1482
  %1505 = fsub fast float %1310, %917
  %1506 = fmul fast float %1490, %1505
  %1507 = fadd fast float %1506, %917
  %1508 = fsub fast float %1452, %1477
  %1509 = fsub fast float %1453, %1478
  %1510 = fsub fast float %1454, %1479
  %1511 = fmul fast float %1495, %1508
  %1512 = fmul fast float %1495, %1509
  %1513 = fmul fast float %1495, %1510
  %1514 = fadd fast float %1511, %1477
  %1515 = fadd fast float %1512, %1478
  %1516 = fadd fast float %1513, %1479
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
  %1532 = fmul fast float %1529, %1480
  %1533 = fmul fast float %1530, %1481
  %1534 = fmul fast float %1531, %1482
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
  %1552 = fmul fast float %1551, %1480
  %1553 = fadd fast float %1552, %1550
  %1554 = fmul fast float %1553, %1480
  %1555 = fmul fast float %1548, 2.000000e+00
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, %1481
  %1558 = fadd fast float %1557, %1555
  %1559 = fmul fast float %1558, %1481
  %1560 = fmul fast float %1549, 2.000000e+00
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = fmul fast float %1561, %1482
  %1563 = fadd fast float %1562, %1560
  %1564 = fmul fast float %1563, %1482
  br label %1565

; <label>:1565                                    ; preds = %1537, %1535, %1522, %1492, %1476
  %1566 = phi float [ %1477, %1476 ], [ %1477, %1537 ], [ %1477, %1535 ], [ %1477, %1522 ], [ %1514, %1492 ]
  %1567 = phi float [ %1478, %1476 ], [ %1478, %1537 ], [ %1478, %1535 ], [ %1478, %1522 ], [ %1515, %1492 ]
  %1568 = phi float [ %1479, %1476 ], [ %1479, %1537 ], [ %1479, %1535 ], [ %1479, %1522 ], [ %1516, %1492 ]
  %1569 = phi float [ %1480, %1476 ], [ %1554, %1537 ], [ %1480, %1535 ], [ %1532, %1522 ], [ %1502, %1492 ]
  %1570 = phi float [ %1481, %1476 ], [ %1559, %1537 ], [ %1481, %1535 ], [ %1533, %1522 ], [ %1503, %1492 ]
  %1571 = phi float [ %1482, %1476 ], [ %1564, %1537 ], [ %1482, %1535 ], [ %1534, %1522 ], [ %1504, %1492 ]
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
  %1876 = add i32 %32, 464
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
  %2209 = fmul fast float %2208, %1654
  %2210 = fmul fast float %2208, %1655
  %2211 = fmul fast float %2208, %1656
  %2212 = fmul fast float %2208, %1651
  %2213 = fmul fast float %2208, %1652
  %2214 = fmul fast float %2208, %1653
  br label %2215

; <label>:2215                                    ; preds = %2207, %2190
  %2216 = phi float [ %2212, %2207 ], [ %1651, %2190 ]
  %2217 = phi float [ %2213, %2207 ], [ %1652, %2190 ]
  %2218 = phi float [ %2214, %2207 ], [ %1653, %2190 ]
  %2219 = phi float [ %2209, %2207 ], [ %1654, %2190 ]
  %2220 = phi float [ %2210, %2207 ], [ %1655, %2190 ]
  %2221 = phi float [ %2211, %2207 ], [ %1656, %2190 ]
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
  %2235 = fsub fast float %2063, %2219
  %2236 = fsub fast float %2064, %2220
  %2237 = fsub fast float %2065, %2221
  %2238 = fmul fast float %2229, %2235
  %2239 = fmul fast float %2229, %2236
  %2240 = fmul fast float %2229, %2237
  %2241 = fadd fast float %2238, %2219
  %2242 = fadd fast float %2239, %2220
  %2243 = fadd fast float %2240, %2221
  %2244 = fsub fast float %2049, %1657
  %2245 = fmul fast float %2229, %2244
  %2246 = fadd fast float %2245, %1657
  %2247 = fsub fast float %2191, %2216
  %2248 = fsub fast float %2192, %2217
  %2249 = fsub fast float %2193, %2218
  %2250 = fmul fast float %2234, %2247
  %2251 = fmul fast float %2234, %2248
  %2252 = fmul fast float %2234, %2249
  %2253 = fadd fast float %2250, %2216
  %2254 = fadd fast float %2251, %2217
  %2255 = fadd fast float %2252, %2218
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
  %2271 = fmul fast float %2268, %2219
  %2272 = fmul fast float %2269, %2220
  %2273 = fmul fast float %2270, %2221
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
  %2291 = fmul fast float %2290, %2219
  %2292 = fadd fast float %2291, %2289
  %2293 = fmul fast float %2292, %2219
  %2294 = fmul fast float %2287, 2.000000e+00
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = fmul fast float %2295, %2220
  %2297 = fadd fast float %2296, %2294
  %2298 = fmul fast float %2297, %2220
  %2299 = fmul fast float %2288, 2.000000e+00
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2300, %2221
  %2302 = fadd fast float %2301, %2299
  %2303 = fmul fast float %2302, %2221
  br label %2304

; <label>:2304                                    ; preds = %2276, %2274, %2261, %2231, %2215
  %2305 = phi float [ %2216, %2215 ], [ %2216, %2276 ], [ %2216, %2274 ], [ %2216, %2261 ], [ %2253, %2231 ]
  %2306 = phi float [ %2217, %2215 ], [ %2217, %2276 ], [ %2217, %2274 ], [ %2217, %2261 ], [ %2254, %2231 ]
  %2307 = phi float [ %2218, %2215 ], [ %2218, %2276 ], [ %2218, %2274 ], [ %2218, %2261 ], [ %2255, %2231 ]
  %2308 = phi float [ %2219, %2215 ], [ %2293, %2276 ], [ %2219, %2274 ], [ %2271, %2261 ], [ %2241, %2231 ]
  %2309 = phi float [ %2220, %2215 ], [ %2298, %2276 ], [ %2220, %2274 ], [ %2272, %2261 ], [ %2242, %2231 ]
  %2310 = phi float [ %2221, %2215 ], [ %2303, %2276 ], [ %2221, %2274 ], [ %2273, %2261 ], [ %2243, %2231 ]
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
  %2615 = add i32 %32, 468
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
  %2948 = fmul fast float %2947, %2393
  %2949 = fmul fast float %2947, %2394
  %2950 = fmul fast float %2947, %2395
  %2951 = fmul fast float %2947, %2390
  %2952 = fmul fast float %2947, %2391
  %2953 = fmul fast float %2947, %2392
  br label %2954

; <label>:2954                                    ; preds = %2946, %2929
  %2955 = phi float [ %2951, %2946 ], [ %2390, %2929 ]
  %2956 = phi float [ %2952, %2946 ], [ %2391, %2929 ]
  %2957 = phi float [ %2953, %2946 ], [ %2392, %2929 ]
  %2958 = phi float [ %2948, %2946 ], [ %2393, %2929 ]
  %2959 = phi float [ %2949, %2946 ], [ %2394, %2929 ]
  %2960 = phi float [ %2950, %2946 ], [ %2395, %2929 ]
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
  %2974 = fsub fast float %2802, %2958
  %2975 = fsub fast float %2803, %2959
  %2976 = fsub fast float %2804, %2960
  %2977 = fmul fast float %2968, %2974
  %2978 = fmul fast float %2968, %2975
  %2979 = fmul fast float %2968, %2976
  %2980 = fadd fast float %2977, %2958
  %2981 = fadd fast float %2978, %2959
  %2982 = fadd fast float %2979, %2960
  %2983 = fsub fast float %2788, %2396
  %2984 = fmul fast float %2968, %2983
  %2985 = fadd fast float %2984, %2396
  %2986 = fsub fast float %2930, %2955
  %2987 = fsub fast float %2931, %2956
  %2988 = fsub fast float %2932, %2957
  %2989 = fmul fast float %2973, %2986
  %2990 = fmul fast float %2973, %2987
  %2991 = fmul fast float %2973, %2988
  %2992 = fadd fast float %2989, %2955
  %2993 = fadd fast float %2990, %2956
  %2994 = fadd fast float %2991, %2957
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
  %3010 = fmul fast float %3007, %2958
  %3011 = fmul fast float %3008, %2959
  %3012 = fmul fast float %3009, %2960
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
  %3030 = fmul fast float %3029, %2958
  %3031 = fadd fast float %3030, %3028
  %3032 = fmul fast float %3031, %2958
  %3033 = fmul fast float %3026, 2.000000e+00
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = fmul fast float %3034, %2959
  %3036 = fadd fast float %3035, %3033
  %3037 = fmul fast float %3036, %2959
  %3038 = fmul fast float %3027, 2.000000e+00
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = fmul fast float %3039, %2960
  %3041 = fadd fast float %3040, %3038
  %3042 = fmul fast float %3041, %2960
  br label %3043

; <label>:3043                                    ; preds = %3015, %3013, %3000, %2970, %2954
  %3044 = phi float [ %2955, %2954 ], [ %2955, %3015 ], [ %2955, %3013 ], [ %2955, %3000 ], [ %2992, %2970 ]
  %3045 = phi float [ %2956, %2954 ], [ %2956, %3015 ], [ %2956, %3013 ], [ %2956, %3000 ], [ %2993, %2970 ]
  %3046 = phi float [ %2957, %2954 ], [ %2957, %3015 ], [ %2957, %3013 ], [ %2957, %3000 ], [ %2994, %2970 ]
  %3047 = phi float [ %2958, %2954 ], [ %3032, %3015 ], [ %2958, %3013 ], [ %3010, %3000 ], [ %2980, %2970 ]
  %3048 = phi float [ %2959, %2954 ], [ %3037, %3015 ], [ %2959, %3013 ], [ %3011, %3000 ], [ %2981, %2970 ]
  %3049 = phi float [ %2960, %2954 ], [ %3042, %3015 ], [ %2960, %3013 ], [ %3012, %3000 ], [ %2982, %2970 ]
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
  %3139 = add i32 %32, 360
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = bitcast i32 %3141 to float
  %3143 = fcmp fast oge float %3142, 0.000000e+00
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = select i1 %3143, float %3142, float %3145
  %3147 = call float @dx.op.dot2.f32(i32 54, float %3127, float %3128, float %3127, float %3128)  ; Dot2(ax,ay,bx,by)
  %3148 = fmul fast float %3147, 0x3FE3333340000000
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3149, float %3127, float %3128, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3151 = call float @dx.op.unary.f32(i32 25, float %3150)  ; Rsqrt(value)
  %3152 = fmul fast float %3151, %3127
  %3153 = fmul fast float %3151, %3128
  %3154 = fmul fast float %3149, %3151
  %3155 = fmul fast float %3154, %83
  %3156 = fmul fast float %3154, %84
  %3157 = fmul fast float %3154, %85
  %3158 = fmul fast float %3152, %57
  %3159 = fmul fast float %3152, %58
  %3160 = fmul fast float %3152, %59
  %3161 = fadd fast float %3155, %3158
  %3162 = fadd fast float %3156, %3159
  %3163 = fadd fast float %3157, %3160
  %3164 = fmul fast float %95, %3153
  %3165 = fmul fast float %96, %3153
  %3166 = fmul fast float %97, %3153
  %3167 = fadd fast float %3161, %3164
  %3168 = fadd fast float %3162, %3165
  %3169 = fadd fast float %3163, %3166
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3167, float %3168, float %3169, float %3167, float %3168, float %3169)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = call float @dx.op.unary.f32(i32 25, float %3170)  ; Rsqrt(value)
  %3172 = fmul fast float %3167, %3171
  %3173 = fmul fast float %3168, %3171
  %3174 = fmul fast float %3169, %3171
  %3175 = icmp eq i32 %33, 65535
  br i1 %3175, label %3694, label %3176

; <label>:3176                                    ; preds = %3126
  %3177 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3178 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3179 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3180 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3181 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3182 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3183 = fadd fast float %3177, %34
  %3184 = fadd fast float %3178, %35
  %3185 = fadd fast float %3179, %36
  %3186 = fadd fast float %3180, %34
  %3187 = fadd fast float %3181, %35
  %3188 = fadd fast float %3182, %36
  %3189 = mul i32 %33, 48
  %3190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.ResRet.f32 %3190, 1
  %3193 = extractvalue %dx.types.ResRet.f32 %3190, 2
  %3194 = add i32 %3189, 16
  %3195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = add i32 %3189, 32
  %3200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.ResRet.f32 %3200, 3
  %3205 = bitcast float %3204 to i32
  %3206 = fmul fast float %3191, %34
  %3207 = fmul fast float %3192, %35
  %3208 = fmul fast float %3193, %36
  %3209 = fsub fast float %3206, %3196
  %3210 = fsub fast float %3207, %3197
  %3211 = fsub fast float %3208, %3198
  %3212 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3213 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3215 = fmul fast float %3212, %3201
  %3216 = fmul fast float %3213, %3202
  %3217 = fmul fast float %3214, %3203
  %3218 = fadd fast float %3201, -1.000000e+00
  %3219 = fadd fast float %3202, -1.000000e+00
  %3220 = fadd fast float %3203, -1.000000e+00
  %3221 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3222 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3223 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3224 = call float @dx.op.binary.f32(i32 36, float %3221, float %3218)  ; FMin(a,b)
  %3225 = call float @dx.op.binary.f32(i32 36, float %3222, float %3219)  ; FMin(a,b)
  %3226 = call float @dx.op.binary.f32(i32 36, float %3223, float %3220)  ; FMin(a,b)
  %3227 = fmul fast float %3226, %3202
  %3228 = fadd fast float %3227, %3225
  %3229 = fmul fast float %3228, %3201
  %3230 = fadd fast float %3229, %3224
  %3231 = fptosi float %3230 to i32
  %3232 = add nsw i32 %3231, %3205
  %3233 = shl nsw i32 %3232, 2
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = lshr i32 %3235, 16
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3662, label %3238

; <label>:3238                                    ; preds = %3176
  br label %3239

; <label>:3239                                    ; preds = %3361, %3238
  %3240 = phi i32 [ %3263, %3361 ], [ %3236, %3238 ]
  %3241 = phi float [ %3362, %3361 ], [ 0.000000e+00, %3238 ]
  %3242 = phi float [ %3363, %3361 ], [ %918, %3238 ]
  %3243 = phi float [ %3364, %3361 ], [ %3146, %3238 ]
  %3244 = phi float [ %3365, %3361 ], [ %3138, %3238 ]
  %3245 = phi float [ %3366, %3361 ], [ 0.000000e+00, %3238 ]
  %3246 = phi float [ %3367, %3361 ], [ 0.000000e+00, %3238 ]
  %3247 = phi float [ %3368, %3361 ], [ %3129, %3238 ]
  %3248 = phi float [ %3369, %3361 ], [ %3130, %3238 ]
  %3249 = phi float [ %3370, %3361 ], [ %3131, %3238 ]
  %3250 = phi float [ %3371, %3361 ], [ %3172, %3238 ]
  %3251 = phi float [ %3372, %3361 ], [ %3173, %3238 ]
  %3252 = phi float [ %3373, %3361 ], [ %3174, %3238 ]
  %3253 = phi float [ %3374, %3361 ], [ %3137, %3238 ]
  %3254 = phi float [ %3375, %3361 ], [ %3136, %3238 ]
  %3255 = phi float [ %3376, %3361 ], [ 0.000000e+00, %3238 ]
  %3256 = phi float [ %3377, %3361 ], [ %3135, %3238 ]
  %3257 = phi float [ %3378, %3361 ], [ %3132, %3238 ]
  %3258 = phi float [ %3379, %3361 ], [ %3133, %3238 ]
  %3259 = phi float [ %3380, %3361 ], [ %3134, %3238 ]
  %3260 = shl nuw nsw i32 %3240, 2
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = lshr i32 %3262, 16
  %3264 = shl i32 %3262, 8
  %3265 = and i32 %3264, 16776960
  %3266 = or i32 %3265, 48
  %3267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = or i32 %3265, 64
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.i32 %3272, 1
  %3275 = or i32 %3265, 80
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 3
  %3279 = or i32 %3265, 96
  %3280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3285 = or i32 %3265, 112
  %3286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.f32 %3286, 2
  %3288 = or i32 %3265, 128
  %3289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = extractvalue %dx.types.ResRet.f32 %3289, 3
  %3294 = or i32 %3265, 144
  %3295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.ResRet.f32 %3295, 3
  %3300 = or i32 %3265, 160
  %3301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3305 = extractvalue %dx.types.ResRet.f32 %3301, 3
  %3306 = or i32 %3265, 192
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = or i32 %3265, 208
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = or i32 %3265, 248
  %3313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = extractvalue %dx.types.ResRet.f32 %3316, 3
  %3321 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3322 = or i32 %3265, 16
  %3323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = extractvalue %dx.types.ResRet.f32 %3323, 3
  %3328 = call float @dx.op.dot4.f32(i32 56, float %3324, float %3325, float %3326, float %3327, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3329 = or i32 %3265, 32
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = extractvalue %dx.types.ResRet.f32 %3330, 3
  %3335 = call float @dx.op.dot4.f32(i32 56, float %3331, float %3332, float %3333, float %3334, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3336 = call float @dx.op.unary.f32(i32 27, float %3321)  ; Round_ni(value)
  %3337 = call float @dx.op.unary.f32(i32 6, float %3336)  ; FAbs(value)
  %3338 = call float @dx.op.unary.f32(i32 27, float %3328)  ; Round_ni(value)
  %3339 = call float @dx.op.unary.f32(i32 6, float %3338)  ; FAbs(value)
  %3340 = call float @dx.op.unary.f32(i32 6, float %3335)  ; FAbs(value)
  %3341 = call float @dx.op.unary.f32(i32 27, float %3340)  ; Round_ni(value)
  %3342 = fadd fast float %3339, %3337
  %3343 = fadd fast float %3342, %3341
  %3344 = fcmp fast oeq float %3343, 0.000000e+00
  %3345 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3346 = call float @dx.op.dot4.f32(i32 56, float %3324, float %3325, float %3326, float %3327, float %3183, float %3184, float %3185, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3347 = call float @dx.op.dot4.f32(i32 56, float %3317, float %3318, float %3319, float %3320, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3348 = call float @dx.op.dot4.f32(i32 56, float %3324, float %3325, float %3326, float %3327, float %3186, float %3187, float %3188, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3349 = fsub fast float %3345, %3321
  %3350 = fsub fast float %3347, %3321
  %3351 = fsub fast float %3346, %3328
  %3352 = fsub fast float %3348, %3328
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3269, float %3270, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3356 = fadd fast float %3355, %3353
  %3357 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3359 = fcmp fast ogt float %3357, %3358
  %3360 = and i1 %3344, %3359
  br i1 %3360, label %3382, label %3361

; <label>:3361                                    ; preds = %3648, %3465, %3382, %3239
  %3362 = phi float [ %3241, %3382 ], [ %3468, %3465 ], [ %3468, %3648 ], [ %3241, %3239 ]
  %3363 = phi float [ %3242, %3382 ], [ %3242, %3465 ], [ %3623, %3648 ], [ %3242, %3239 ]
  %3364 = phi float [ %3243, %3382 ], [ %3243, %3465 ], [ %3622, %3648 ], [ %3243, %3239 ]
  %3365 = phi float [ %3244, %3382 ], [ %3244, %3465 ], [ %3620, %3648 ], [ %3244, %3239 ]
  %3366 = phi float [ %3245, %3382 ], [ %3245, %3465 ], [ %3592, %3648 ], [ %3245, %3239 ]
  %3367 = phi float [ %3246, %3382 ], [ %3246, %3465 ], [ %3590, %3648 ], [ %3246, %3239 ]
  %3368 = phi float [ %3247, %3382 ], [ %3247, %3465 ], [ %3658, %3648 ], [ %3247, %3239 ]
  %3369 = phi float [ %3248, %3382 ], [ %3248, %3465 ], [ %3659, %3648 ], [ %3248, %3239 ]
  %3370 = phi float [ %3249, %3382 ], [ %3249, %3465 ], [ %3660, %3648 ], [ %3249, %3239 ]
  %3371 = phi float [ %3250, %3382 ], [ %3250, %3465 ], [ %3571, %3648 ], [ %3250, %3239 ]
  %3372 = phi float [ %3251, %3382 ], [ %3251, %3465 ], [ %3572, %3648 ], [ %3251, %3239 ]
  %3373 = phi float [ %3252, %3382 ], [ %3252, %3465 ], [ %3573, %3648 ], [ %3252, %3239 ]
  %3374 = phi float [ %3253, %3382 ], [ %3253, %3465 ], [ %3600, %3648 ], [ %3253, %3239 ]
  %3375 = phi float [ %3254, %3382 ], [ %3254, %3465 ], [ %3597, %3648 ], [ %3254, %3239 ]
  %3376 = phi float [ %3255, %3382 ], [ %3255, %3465 ], [ %3594, %3648 ], [ %3255, %3239 ]
  %3377 = phi float [ %3256, %3382 ], [ %3256, %3465 ], [ %3588, %3648 ], [ %3256, %3239 ]
  %3378 = phi float [ %3257, %3382 ], [ %3257, %3465 ], [ %3583, %3648 ], [ %3257, %3239 ]
  %3379 = phi float [ %3258, %3382 ], [ %3258, %3465 ], [ %3584, %3648 ], [ %3258, %3239 ]
  %3380 = phi float [ %3259, %3382 ], [ %3259, %3465 ], [ %3585, %3648 ], [ %3259, %3239 ]
  %3381 = icmp eq i32 %3263, 0
  br i1 %3381, label %3661, label %3239

; <label>:3382                                    ; preds = %3239
  %3383 = extractvalue %dx.types.ResRet.f32 %3267, 3
  %3384 = extractvalue %dx.types.ResRet.f32 %3286, 3
  %3385 = extractvalue %dx.types.ResRet.f32 %3286, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3286, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3389 = extractvalue %dx.types.ResRet.i32 %3272, 3
  %3390 = extractvalue %dx.types.ResRet.i32 %3272, 2
  %3391 = bitcast float %3383 to i32
  %3392 = add i32 %3389, 0
  %3393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3393, %dx.types.Handle %3394, float %3321, float %3328, float undef, float undef, i32 0, i32 0, i32 undef, float %3349, float %3351, float undef, float %3350, float %3352, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = fmul fast float %3396, %3388
  %3398 = fadd fast float %3397, %3387
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3400 = fmul fast float %3321, %3281
  %3401 = call float @dx.op.tertiary.f32(i32 46, float %3282, float %3328, float %3400)  ; FMad(a,b,c)
  %3402 = fadd fast float %3401, %3386
  %3403 = fmul fast float %3321, %3283
  %3404 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3328, float %3403)  ; FMad(a,b,c)
  %3405 = fadd fast float %3404, %3385
  %3406 = fmul fast float %3349, %3281
  %3407 = call float @dx.op.tertiary.f32(i32 46, float %3282, float %3351, float %3406)  ; FMad(a,b,c)
  %3408 = fmul fast float %3349, %3283
  %3409 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3351, float %3408)  ; FMad(a,b,c)
  %3410 = fmul fast float %3350, %3281
  %3411 = call float @dx.op.tertiary.f32(i32 46, float %3282, float %3352, float %3410)  ; FMad(a,b,c)
  %3412 = fmul fast float %3350, %3283
  %3413 = call float @dx.op.tertiary.f32(i32 46, float %3284, float %3352, float %3412)  ; FMad(a,b,c)
  %3414 = add i32 %3390, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3414, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3415, %dx.types.Handle %3394, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = and i32 %3391, 1024
  %3419 = icmp ne i32 %3418, 0
  %3420 = fcmp fast ogt float %3417, 0x3FE0101020000000
  %3421 = uitofp i1 %3420 to float
  %3422 = select i1 %3419, float %3421, float %3417
  %3423 = and i32 %3391, 8192
  %3424 = icmp ne i32 %3423, 0
  %3425 = select i1 %3424, float %3384, float 1.000000e+00
  %3426 = fmul fast float %3321, 2.000000e+00
  %3427 = fadd fast float %3426, -1.000000e+00
  %3428 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3429 = fmul fast float %3428, %3314
  %3430 = fsub fast float %3429, %3314
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3432 = fmul fast float %3328, 2.000000e+00
  %3433 = fadd fast float %3432, -1.000000e+00
  %3434 = call float @dx.op.unary.f32(i32 6, float %3433)  ; FAbs(value)
  %3435 = fmul fast float %3434, %3315
  %3436 = fsub fast float %3435, %3315
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fmul fast float %3340, %3277
  %3439 = fsub fast float %3438, %3277
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = fmul fast float %3399, %3425
  %3442 = fmul fast float %3441, %3396
  %3443 = fmul fast float %3442, %3431
  %3444 = fmul fast float %3443, %3422
  %3445 = fmul fast float %3444, %3437
  %3446 = fmul fast float %3445, %3440
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 1
  %3449 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3450 = fsub fast float %3357, %3449
  %3451 = fmul fast float %3450, %3448
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fmul fast float %3446, %3278
  %3454 = fadd fast float %3446, %3278
  %3455 = fmul fast float %3454, %3287
  %3456 = fsub fast float %3455, %3287
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = and i32 %3391, 128
  %3459 = icmp ne i32 %3458, 0
  %3460 = select i1 %3459, float %3457, float %3453
  %3461 = fmul fast float %3460, %3452
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = fcmp fast ugt float %3461, %3463
  br i1 %3464, label %3465, label %3361

; <label>:3465                                    ; preds = %3382
  %3466 = select i1 %3424, float %3461, float 0.000000e+00
  %3467 = fadd fast float %3466, %3241
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  br i1 %3424, label %3361, label %3469

; <label>:3469                                    ; preds = %3465
  %3470 = and i32 %3391, 4
  %3471 = and i32 %3391, 8
  %3472 = add i32 %3273, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3473, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3480 = bitcast float %3299 to i32
  %3481 = and i32 %3480, 255
  %3482 = uitofp i32 %3481 to float
  %3483 = lshr i32 %3480, 8
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3479, %3482
  %3487 = fadd fast float %3486, %3485
  %3488 = fmul fast float %3487, 0x3F70101000000000
  %3489 = add i32 %3274, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3489, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3490, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = bitcast float %3293 to i32
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = lshr i32 %3496, 8
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = lshr i32 %3496, 16
  %3503 = and i32 %3502, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = fmul fast float %3504, 0x3F70101000000000
  %3506 = fmul fast float %3492, %3498
  %3507 = fadd fast float %3506, %3501
  %3508 = fmul fast float %3507, 0x3F70101000000000
  %3509 = fadd fast float %3493, -5.000000e-01
  %3510 = fadd fast float %3495, -5.000000e-01
  %3511 = fmul fast float %3509, %3505
  %3512 = fmul fast float %3510, %3505
  %3513 = fadd fast float %3511, 5.000000e-01
  %3514 = fadd fast float %3512, 5.000000e-01
  %3515 = fmul fast float %3476, %3302
  %3516 = fmul fast float %3477, %3303
  %3517 = fmul fast float %3478, %3304
  %3518 = fmul fast float %3513, 2.000000e+00
  %3519 = fadd fast float %3518, -1.000000e+00
  %3520 = fmul fast float %3514, 2.000000e+00
  %3521 = fadd fast float %3520, -1.000000e+00
  %3522 = fadd fast float %3519, %3521
  %3523 = fmul fast float %3522, 5.000000e-01
  %3524 = fsub fast float %3519, %3521
  %3525 = fmul fast float %3524, 5.000000e-01
  %3526 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = call float @dx.op.unary.f32(i32 6, float %3525)  ; FAbs(value)
  %3529 = fsub fast float %3527, %3528
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3523, float %3525, float %3529, float %3523, float %3525, float %3529)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = call float @dx.op.unary.f32(i32 25, float %3530)  ; Rsqrt(value)
  %3532 = fmul fast float %3523, %3531
  %3533 = fmul fast float %3525, %3531
  %3534 = fmul fast float %3531, %3529
  %3535 = fmul fast float %3534, %3268
  %3536 = fmul fast float %3534, %3269
  %3537 = fmul fast float %3534, %3270
  %3538 = fmul fast float %3532, %3290
  %3539 = fmul fast float %3532, %3291
  %3540 = fmul fast float %3532, %3292
  %3541 = fadd fast float %3538, %3535
  %3542 = fadd fast float %3539, %3536
  %3543 = fadd fast float %3540, %3537
  %3544 = fmul fast float %3533, %3296
  %3545 = fmul fast float %3533, %3297
  %3546 = fmul fast float %3533, %3298
  %3547 = fadd fast float %3541, %3544
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = call float @dx.op.dot3.f32(i32 55, float %3547, float %3548, float %3549, float %3547, float %3548, float %3549)  ; Dot3(ax,ay,az,bx,by,bz)
  %3551 = call float @dx.op.unary.f32(i32 25, float %3550)  ; Rsqrt(value)
  %3552 = fmul fast float %3547, %3551
  %3553 = fmul fast float %3548, %3551
  %3554 = fmul fast float %3549, %3551
  %3555 = icmp ne i32 %3471, 0
  %3556 = select i1 %3555, float 1.000000e+00, float 0.000000e+00
  %3557 = fmul fast float %3461, %3556
  %3558 = and i32 %3391, 1
  %3559 = icmp eq i32 %3558, 0
  br i1 %3559, label %3560, label %3564

; <label>:3560                                    ; preds = %3469
  %3561 = fsub fast float %3552, %3250
  %3562 = fsub fast float %3553, %3251
  %3563 = fsub fast float %3554, %3252
  br label %3564

; <label>:3564                                    ; preds = %3560, %3469
  %3565 = phi float [ %3561, %3560 ], [ %3552, %3469 ]
  %3566 = phi float [ %3562, %3560 ], [ %3553, %3469 ]
  %3567 = phi float [ %3563, %3560 ], [ %3554, %3469 ]
  %3568 = fmul float %3567, %3557
  %3569 = fmul float %3566, %3557
  %3570 = fmul float %3565, %3557
  %3571 = fadd fast float %3570, %3250
  %3572 = fadd fast float %3569, %3251
  %3573 = fadd fast float %3568, %3252
  %3574 = icmp ne i32 %3470, 0
  %3575 = select i1 %3574, float 1.000000e+00, float 0.000000e+00
  %3576 = fmul fast float %3461, %3575
  %3577 = fsub fast float %3515, %3257
  %3578 = fsub fast float %3516, %3258
  %3579 = fsub fast float %3517, %3259
  %3580 = fmul fast float %3577, %3576
  %3581 = fmul fast float %3578, %3576
  %3582 = fmul fast float %3579, %3576
  %3583 = fadd fast float %3580, %3257
  %3584 = fadd fast float %3581, %3258
  %3585 = fadd fast float %3582, %3259
  %3586 = fsub fast float %3488, %3256
  %3587 = fmul fast float %3586, %3576
  %3588 = fadd fast float %3587, %3256
  %3589 = fmul fast float %3576, %3246
  %3590 = fsub fast float %3246, %3589
  %3591 = fmul fast float %3576, %3245
  %3592 = fsub fast float %3245, %3591
  %3593 = fadd fast float %3461, %3255
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fsub fast float %3508, %3254
  %3596 = fmul fast float %3595, %3557
  %3597 = fadd fast float %3596, %3254
  %3598 = fsub fast float %3494, %3253
  %3599 = fmul fast float %3598, %3557
  %3600 = fadd fast float %3599, %3253
  %3601 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3516, float %3517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.CBufRet.f32 %3602, 1
  %3605 = fmul fast float %3604, %3601
  %3606 = fadd fast float %3605, %3603
  %3607 = call float @dx.op.unary.f32(i32 7, float %3606)  ; Saturate(value)
  %3608 = bitcast float %3305 to i32
  %3609 = and i32 %3608, 65535
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = lshr i32 %3608, 16
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = fcmp fast oge float %3610, 0.000000e+00
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = select i1 %3613, float %3610, float %3615
  %3617 = fadd fast float %3616, %3612
  %3618 = fsub fast float %3607, %3244
  %3619 = fmul fast float %3618, %3461
  %3620 = fadd fast float %3619, %3244
  %3621 = fmul fast float %3617, %3461
  %3622 = call float @dx.op.binary.f32(i32 35, float %3243, float %3621)  ; FMax(a,b)
  %3623 = call float @dx.op.binary.f32(i32 35, float %3242, float %3461)  ; FMax(a,b)
  %3624 = and i32 %3391, 16
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %3648, label %3626

; <label>:3626                                    ; preds = %3564
  %3627 = bitcast float %3311 to i32
  %3628 = add i32 %3308, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3629, %dx.types.Handle %3474, float %3402, float %3405, float undef, float undef, i32 0, i32 0, i32 undef, float %3407, float %3409, float undef, float %3411, float %3413, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = and i32 %3627, 65535
  %3635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3634)  ; LegacyF16ToF32(value)
  %3636 = fmul fast float %3631, %3302
  %3637 = fmul fast float %3632, %3303
  %3638 = fmul fast float %3633, %3304
  %3639 = and i32 %3391, 16384
  %3640 = icmp ne i32 %3639, 0
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = select i1 %3640, float %3642, float 1.000000e+00
  %3644 = fmul fast float %3643, %3635
  %3645 = fmul fast float %3636, %3644
  %3646 = fmul fast float %3637, %3644
  %3647 = fmul fast float %3638, %3644
  br label %3648

; <label>:3648                                    ; preds = %3626, %3564
  %3649 = phi float [ %3645, %3626 ], [ 0.000000e+00, %3564 ]
  %3650 = phi float [ %3646, %3626 ], [ 0.000000e+00, %3564 ]
  %3651 = phi float [ %3647, %3626 ], [ 0.000000e+00, %3564 ]
  %3652 = fsub fast float %3649, %3247
  %3653 = fsub fast float %3650, %3248
  %3654 = fsub fast float %3651, %3249
  %3655 = fmul fast float %3652, %3461
  %3656 = fmul fast float %3653, %3461
  %3657 = fmul fast float %3654, %3461
  %3658 = fadd fast float %3655, %3247
  %3659 = fadd fast float %3656, %3248
  %3660 = fadd fast float %3657, %3249
  br label %3361

; <label>:3661                                    ; preds = %3361
  br label %3662

; <label>:3662                                    ; preds = %3661, %3176
  %3663 = phi float [ 0.000000e+00, %3176 ], [ %3362, %3661 ]
  %3664 = phi float [ %918, %3176 ], [ %3363, %3661 ]
  %3665 = phi float [ %3146, %3176 ], [ %3364, %3661 ]
  %3666 = phi float [ %3138, %3176 ], [ %3365, %3661 ]
  %3667 = phi float [ 0.000000e+00, %3176 ], [ %3366, %3661 ]
  %3668 = phi float [ 0.000000e+00, %3176 ], [ %3367, %3661 ]
  %3669 = phi float [ %3129, %3176 ], [ %3368, %3661 ]
  %3670 = phi float [ %3130, %3176 ], [ %3369, %3661 ]
  %3671 = phi float [ %3131, %3176 ], [ %3370, %3661 ]
  %3672 = phi float [ %3172, %3176 ], [ %3371, %3661 ]
  %3673 = phi float [ %3173, %3176 ], [ %3372, %3661 ]
  %3674 = phi float [ %3174, %3176 ], [ %3373, %3661 ]
  %3675 = phi float [ %3137, %3176 ], [ %3374, %3661 ]
  %3676 = phi float [ %3136, %3176 ], [ %3375, %3661 ]
  %3677 = phi float [ 0.000000e+00, %3176 ], [ %3376, %3661 ]
  %3678 = phi float [ %3135, %3176 ], [ %3377, %3661 ]
  %3679 = phi float [ %3132, %3176 ], [ %3378, %3661 ]
  %3680 = phi float [ %3133, %3176 ], [ %3379, %3661 ]
  %3681 = phi float [ %3134, %3176 ], [ %3380, %3661 ]
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3672, float %3673, float %3674, float %3672, float %3673, float %3674)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.unary.f32(i32 25, float %3682)  ; Rsqrt(value)
  %3684 = fmul fast float %3683, %3672
  %3685 = fmul fast float %3683, %3673
  %3686 = fmul fast float %3683, %3674
  %3687 = fadd fast float %3677, %918
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call float @dx.op.unary.f32(i32 25, float %3689)  ; Rsqrt(value)
  %3691 = fmul fast float %3690, %3684
  %3692 = fmul fast float %3690, %3685
  %3693 = fmul fast float %3690, %3686
  br label %3694

; <label>:3694                                    ; preds = %3662, %3126
  %3695 = phi float [ %3691, %3662 ], [ %3172, %3126 ]
  %3696 = phi float [ %3692, %3662 ], [ %3173, %3126 ]
  %3697 = phi float [ %3693, %3662 ], [ %3174, %3126 ]
  %3698 = phi float [ %3669, %3662 ], [ %3129, %3126 ]
  %3699 = phi float [ %3670, %3662 ], [ %3130, %3126 ]
  %3700 = phi float [ %3671, %3662 ], [ %3131, %3126 ]
  %3701 = phi float [ %3679, %3662 ], [ %3132, %3126 ]
  %3702 = phi float [ %3680, %3662 ], [ %3133, %3126 ]
  %3703 = phi float [ %3681, %3662 ], [ %3134, %3126 ]
  %3704 = phi float [ %3678, %3662 ], [ %3135, %3126 ]
  %3705 = phi float [ %3688, %3662 ], [ %918, %3126 ]
  %3706 = phi float [ %3676, %3662 ], [ %3136, %3126 ]
  %3707 = phi float [ %3675, %3662 ], [ %3137, %3126 ]
  %3708 = phi float [ %3668, %3662 ], [ 0.000000e+00, %3126 ]
  %3709 = phi float [ %3667, %3662 ], [ 0.000000e+00, %3126 ]
  %3710 = phi float [ %3663, %3662 ], [ 0.000000e+00, %3126 ]
  %3711 = phi float [ %3665, %3662 ], [ %3146, %3126 ]
  %3712 = phi float [ %3664, %3662 ], [ %918, %3126 ]
  %3713 = phi float [ %3666, %3662 ], [ %3138, %3126 ]
  %3714 = fadd fast float %3704, 0xBFB99999A0000000
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = fmul fast float %3715, 0x3FF1C71C80000000
  %3717 = call float @dx.op.binary.f32(i32 36, float %3704, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3718 = fsub fast float 1.000000e+00, %3716
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fmul fast float %3719, %3701
  %3721 = fmul fast float %3719, %3702
  %3722 = fmul fast float %3719, %3703
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = fmul fast float %3716, %3701
  %3727 = fmul fast float %3716, %3702
  %3728 = fmul fast float %3716, %3703
  %3729 = fadd fast float %3726, %3717
  %3730 = fadd fast float %3727, %3717
  %3731 = fadd fast float %3728, %3717
  %3732 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3733 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3734 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3735 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.i32 %3736, 3
  %3738 = and i32 %3737, 8
  %3739 = icmp ne i32 %3738, 0
  %3740 = call float @dx.op.binary.f32(i32 35, float %3723, float %3701)  ; FMax(a,b)
  %3741 = call float @dx.op.binary.f32(i32 35, float %3724, float %3701)  ; FMax(a,b)
  %3742 = call float @dx.op.binary.f32(i32 35, float %3725, float %3701)  ; FMax(a,b)
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3723, float %3724, float %3725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = select i1 %202, float %3701, float %3723
  %3745 = select i1 %202, float %3743, float %3724
  %3746 = select i1 %202, float 1.000000e+00, float %3725
  %3747 = select i1 %3739, float %3740, float %3744
  %3748 = select i1 %3739, float %3741, float %3745
  %3749 = select i1 %3739, float %3742, float %3746
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3754 = fadd fast float %3751, %163
  %3755 = fadd fast float %3752, %164
  %3756 = fadd fast float %3753, %165
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.CBufRet.f32 %3757, 1
  %3760 = fsub fast float %3754, %3758
  %3761 = fsub fast float %3755, %3759
  %3762 = fmul fast float %3760, %3760
  %3763 = fmul fast float %3761, %3761
  %3764 = fadd fast float %3762, %3763
  %3765 = call float @dx.op.unary.f32(i32 24, float %3764)  ; Sqrt(value)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3757, 2
  %3767 = fcmp fast olt float %3765, %3766
  br i1 %3767, label %3768, label %3835

; <label>:3768                                    ; preds = %3694
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3777 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3779 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3780 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3781 = fadd fast float %3778, %3754
  %3782 = fadd fast float %3779, %3755
  %3783 = fadd fast float %3780, %3756
  %3784 = fmul fast float %3781, %3770
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3772, float %3784)  ; FMad(a,b,c)
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3783, float %3774, float %3785)  ; FMad(a,b,c)
  %3787 = fmul fast float %3781, %3775
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3782, float %3776, float %3787)  ; FMad(a,b,c)
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3783, float %3777, float %3788)  ; FMad(a,b,c)
  %3790 = fsub fast float %3786, %3778
  %3791 = fsub fast float %3789, %3779
  %3792 = fsub fast float %3790, %3758
  %3793 = fadd fast float %3792, %3766
  %3794 = fsub fast float %3791, %3759
  %3795 = fadd fast float %3794, %3766
  %3796 = extractvalue %dx.types.CBufRet.f32 %3757, 3
  %3797 = fmul fast float %3793, %3796
  %3798 = fmul fast float %3795, %3796
  %3799 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3800 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3801 = fsub fast float 1.000000e+00, %3799
  %3802 = fsub fast float 1.000000e+00, %3800
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3801, float %3802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = fcmp fast ugt float %3804, 0.000000e+00
  br i1 %3805, label %3806, label %4109

; <label>:3806                                    ; preds = %3768
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3809 = fmul fast float %3808, %3804
  %3810 = extractvalue %dx.types.CBufRet.f32 %3807, 3
  %3811 = fadd fast float %3810, %3809
  %3812 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3813 = fadd fast float %3811, %3780
  %3814 = fmul fast float %3786, %3774
  %3815 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3777, float %3814)  ; FMad(a,b,c)
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3813, float %3812, float %3815)  ; FMad(a,b,c)
  %3817 = fsub fast float %3816, %3780
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3820 = fsub fast float %3817, %3819
  %3821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3801, float %3802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3801, float %3802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = fadd fast float %3826, %3822
  %3830 = fmul fast float %3829, 0x3F847AE140000000
  %3831 = fadd fast float %3827, %3823
  %3832 = fmul fast float %3831, 0x3F847AE140000000
  %3833 = fadd fast float %3828, %3824
  %3834 = fmul fast float %3833, 0x3F847AE140000000
  br label %4109

; <label>:3835                                    ; preds = %3694
  %3836 = and i32 %181, 1
  %3837 = icmp eq i32 %3836, 0
  br i1 %3837, label %4109, label %3838

; <label>:3838                                    ; preds = %3835
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3846 = extractvalue %dx.types.CBufRet.f32 %3841, 1
  %3847 = extractvalue %dx.types.CBufRet.f32 %3843, 1
  %3848 = extractvalue %dx.types.CBufRet.f32 %3839, 3
  %3849 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3850 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3851 = fadd fast float %3848, %3754
  %3852 = fadd fast float %3849, %3755
  %3853 = fadd fast float %3850, %3756
  %3854 = fmul fast float %3851, %3840
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3842, float %3854)  ; FMad(a,b,c)
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3844, float %3855)  ; FMad(a,b,c)
  %3857 = fmul fast float %3851, %3845
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3846, float %3857)  ; FMad(a,b,c)
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3847, float %3858)  ; FMad(a,b,c)
  %3860 = fsub fast float %3856, %3848
  %3861 = fsub fast float %3859, %3849
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.CBufRet.f32 %3862, 3
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 3
  %3869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.i32 %3869, 0
  %3871 = extractvalue %dx.types.CBufRet.i32 %3869, 1
  %3872 = udiv i32 %3871, %3870
  %3873 = fsub fast float %3860, %3863
  %3874 = fsub fast float %3861, %3864
  %3875 = call float @dx.op.binary.f32(i32 35, float %3873, float 0.000000e+00)  ; FMax(a,b)
  %3876 = call float @dx.op.binary.f32(i32 35, float %3874, float 0.000000e+00)  ; FMax(a,b)
  %3877 = call float @dx.op.binary.f32(i32 36, float %3875, float %3865)  ; FMin(a,b)
  %3878 = call float @dx.op.binary.f32(i32 36, float %3876, float %3866)  ; FMin(a,b)
  %3879 = add i32 %3870, -1
  %3880 = add i32 %3872, -1
  %3881 = fmul fast float %3877, %3868
  %3882 = fmul fast float %3878, %3868
  %3883 = fptoui float %3881 to i32
  %3884 = fptoui float %3882 to i32
  %3885 = call i32 @dx.op.binary.i32(i32 40, i32 %3883, i32 %3879)  ; UMin(a,b)
  %3886 = call i32 @dx.op.binary.i32(i32 40, i32 %3884, i32 %3880)  ; UMin(a,b)
  %3887 = mul i32 %3886, %3870
  %3888 = add i32 %3887, %3885
  %3889 = shl i32 %3888, 2
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = icmp eq i32 %3891, -1
  br i1 %3892, label %4109, label %3893

; <label>:3893                                    ; preds = %3838
  %3894 = mul i32 %3891, 148
  %3895 = add i32 %3894, 4
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = add i32 %3894, 8
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = add i32 %3894, 36
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = add i32 %3894, 60
  %3905 = add i32 %3894, 92
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = add i32 %3894, 116
  %3909 = fsub fast float %3860, %3897
  %3910 = fsub fast float %3861, %3900
  %3911 = fmul fast float %3868, %3909
  %3912 = fmul fast float %3868, %3910
  %3913 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3915 = fsub fast float 1.000000e+00, %3914
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 2
  %3918 = call float @dx.op.unary.f32(i32 83, float %3913)  ; DerivCoarseX(value)
  %3919 = call float @dx.op.unary.f32(i32 83, float %3915)  ; DerivCoarseX(value)
  %3920 = call float @dx.op.unary.f32(i32 84, float %3913)  ; DerivCoarseY(value)
  %3921 = call float @dx.op.unary.f32(i32 84, float %3915)  ; DerivCoarseY(value)
  %3922 = fmul fast float %3918, %3917
  %3923 = fmul fast float %3919, %3917
  %3924 = fmul fast float %3920, %3917
  %3925 = fmul fast float %3921, %3917
  %3926 = call float @dx.op.dot2.f32(i32 54, float %3924, float %3925, float %3924, float %3925)  ; Dot2(ax,ay,bx,by)
  %3927 = call float @dx.op.dot2.f32(i32 54, float %3922, float %3923, float %3922, float %3923)  ; Dot2(ax,ay,bx,by)
  %3928 = call float @dx.op.binary.f32(i32 35, float %3927, float %3926)  ; FMax(a,b)
  %3929 = call float @dx.op.unary.f32(i32 23, float %3928)  ; Log(value)
  %3930 = fmul fast float %3929, 5.000000e-01
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3933 = fadd fast float %3932, %3930
  %3934 = call float @dx.op.binary.f32(i32 35, float %3933, float 0.000000e+00)  ; FMax(a,b)
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3937 = fadd fast float %3936, %3934
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3940 = fadd fast float %3937, %3939
  %3941 = add i32 %3907, 0
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3942, i32 0)  ; GetDimensions(handle,mipLevel)
  %3944 = extractvalue %dx.types.Dimensions %3943, 0
  %3945 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3944)  ; FirstbitLo(value)
  %3946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.i32 %3946, 1
  %3948 = sub nsw i32 %3947, %3945
  %3949 = sitofp i32 %3948 to float
  %3950 = fsub fast float %3940, %3949
  %3951 = call float @dx.op.binary.f32(i32 35, float %3950, float 0.000000e+00)  ; FMax(a,b)
  %3952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3942, %dx.types.Handle %27, float %3913, float %3915, float %3903, float undef, i32 0, i32 0, i32 undef, float %3951)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 0
  %3954 = fcmp ule float %3953, 0x3FE0101020000000
  %3955 = extractvalue %dx.types.CBufRet.i32 %3946, 0
  %3956 = and i32 %3955, 128
  %3957 = icmp ne i32 %3956, 0
  %3958 = and i1 %3954, %3957
  br i1 %3958, label %4109, label %3959

; <label>:3959                                    ; preds = %3893
  %3960 = add i32 %3894, 20
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = add i32 %3894, 24
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = add i32 %3894, 40
  %3967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3966, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = add i32 %3894, 96
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 2
  %3974 = fmul fast float %3973, %3913
  %3975 = fmul fast float %3973, %3915
  %3976 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3977 = fadd fast float %3974, %3976
  %3978 = fadd fast float %3975, %3976
  %3979 = add i32 %3971, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3980, i32 0)  ; GetDimensions(handle,mipLevel)
  %3982 = extractvalue %dx.types.Dimensions %3981, 0
  %3983 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3982)  ; FirstbitLo(value)
  %3984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.i32 %3984, 1
  %3986 = sub nsw i32 %3985, %3983
  %3987 = sitofp i32 %3986 to float
  %3988 = fsub fast float %3937, %3987
  %3989 = call float @dx.op.binary.f32(i32 35, float %3988, float 0.000000e+00)  ; FMax(a,b)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3980, %dx.types.Handle %27, float %3977, float %3978, float %3968, float undef, i32 0, i32 0, i32 undef, float %3989)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = fmul fast float %3991, %3962
  %3993 = fadd fast float %3992, %3965
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 3
  %4002 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %4003 = fadd fast float %3999, %3860
  %4004 = fadd fast float %4001, %3861
  %4005 = fadd fast float %3993, %4002
  %4006 = fmul fast float %4003, %3995
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %3996, float %4006)  ; FMad(a,b,c)
  %4008 = call float @dx.op.tertiary.f32(i32 46, float %4005, float %3997, float %4007)  ; FMad(a,b,c)
  %4009 = fsub fast float %4008, %4002
  %4010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4010, 2
  %4012 = fsub fast float %4009, %4011
  %4013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.i32 %4013, 0
  %4015 = call i32 @dx.op.binary.i32(i32 40, i32 %3891, i32 %4014)  ; UMin(a,b)
  %4016 = mul i32 %4015, 36
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = add i32 %4016, 4
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = fmul fast float %4021, %3913
  %4023 = fmul fast float %4021, %3915
  %4024 = extractvalue %dx.types.CBufRet.f32 %4020, 1
  %4025 = fadd fast float %4022, %4024
  %4026 = fadd fast float %4023, %4024
  %4027 = icmp eq i32 %4018, 0
  br i1 %4027, label %4096, label %4028

; <label>:4028                                    ; preds = %3959
  br label %4029

; <label>:4029                                    ; preds = %4086, %4028
  %4030 = phi float [ %4087, %4086 ], [ 0.000000e+00, %4028 ]
  %4031 = phi float [ %4088, %4086 ], [ 0.000000e+00, %4028 ]
  %4032 = phi float [ %4089, %4086 ], [ 0.000000e+00, %4028 ]
  %4033 = phi float [ %4090, %4086 ], [ 0.000000e+00, %4028 ]
  %4034 = phi float [ %4091, %4086 ], [ 0.000000e+00, %4028 ]
  %4035 = phi float [ %4092, %4086 ], [ 0.000000e+00, %4028 ]
  %4036 = phi i32 [ %4093, %4086 ], [ 0, %4028 ]
  %4037 = shl i32 %4036, 2
  %4038 = add i32 %3904, %4037
  %4039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = add i32 %3908, %4037
  %4042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.i32 %4042, 0
  %4044 = add i32 %4043, 0
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4044, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4045, i32 0)  ; GetDimensions(handle,mipLevel)
  %4047 = extractvalue %dx.types.Dimensions %4046, 0
  %4048 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4047)  ; FirstbitLo(value)
  %4049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.i32 %4049, 1
  %4051 = sub nsw i32 %4050, %4048
  %4052 = sitofp i32 %4051 to float
  %4053 = fsub fast float %3937, %4052
  %4054 = call float @dx.op.binary.f32(i32 35, float %4053, float 0.000000e+00)  ; FMax(a,b)
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4045, %dx.types.Handle %27, float %4025, float %4026, float %4040, float undef, i32 0, i32 0, i32 undef, float %4054)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = fcmp fast ogt float %4056, 0.000000e+00
  br i1 %4057, label %4058, label %4086

; <label>:4058                                    ; preds = %4029
  %4059 = add i32 %4019, %4037
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4059, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = and i32 %4061, 32767
  %4063 = mul nuw nsw i32 %4062, 928
  %4064 = add nuw nsw i32 %4063, 48
  %4065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = add nuw nsw i32 %4063, 60
  %4070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4069, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.ResRet.f32 %4070, 1
  %4073 = extractvalue %dx.types.ResRet.f32 %4070, 2
  %4074 = fmul fast float %4066, %4056
  %4075 = fmul fast float %4067, %4056
  %4076 = fmul fast float %4068, %4056
  %4077 = fadd fast float %4074, %4030
  %4078 = fadd fast float %4075, %4031
  %4079 = fadd fast float %4076, %4032
  %4080 = fmul fast float %4071, %4056
  %4081 = fmul fast float %4072, %4056
  %4082 = fmul fast float %4073, %4056
  %4083 = fadd fast float %4080, %4033
  %4084 = fadd fast float %4081, %4034
  %4085 = fadd fast float %4082, %4035
  br label %4086

; <label>:4086                                    ; preds = %4058, %4029
  %4087 = phi float [ %4077, %4058 ], [ %4030, %4029 ]
  %4088 = phi float [ %4078, %4058 ], [ %4031, %4029 ]
  %4089 = phi float [ %4079, %4058 ], [ %4032, %4029 ]
  %4090 = phi float [ %4083, %4058 ], [ %4033, %4029 ]
  %4091 = phi float [ %4084, %4058 ], [ %4034, %4029 ]
  %4092 = phi float [ %4085, %4058 ], [ %4035, %4029 ]
  %4093 = add nuw i32 %4036, 1
  %4094 = icmp eq i32 %4093, %4018
  br i1 %4094, label %4095, label %4029

; <label>:4095                                    ; preds = %4086
  br label %4096

; <label>:4096                                    ; preds = %4095, %3959
  %4097 = phi float [ 0.000000e+00, %3959 ], [ %4087, %4095 ]
  %4098 = phi float [ 0.000000e+00, %3959 ], [ %4088, %4095 ]
  %4099 = phi float [ 0.000000e+00, %3959 ], [ %4089, %4095 ]
  %4100 = phi float [ 0.000000e+00, %3959 ], [ %4090, %4095 ]
  %4101 = phi float [ 0.000000e+00, %3959 ], [ %4091, %4095 ]
  %4102 = phi float [ 0.000000e+00, %3959 ], [ %4092, %4095 ]
  %4103 = fadd fast float %4100, %4097
  %4104 = fmul fast float %4103, 0x3F847AE140000000
  %4105 = fadd fast float %4101, %4098
  %4106 = fmul fast float %4105, 0x3F847AE140000000
  %4107 = fadd fast float %4102, %4099
  %4108 = fmul fast float %4107, 0x3F847AE140000000
  br label %4109

; <label>:4109                                    ; preds = %4096, %3893, %3838, %3835, %3806, %3768
  %4110 = phi float [ %3820, %3806 ], [ -1.310720e+05, %3768 ], [ %4012, %4096 ], [ -1.310720e+05, %3838 ], [ -1.310720e+05, %3893 ], [ -1.310720e+05, %3835 ]
  %4111 = phi float [ %3830, %3806 ], [ 0.000000e+00, %3768 ], [ %4104, %4096 ], [ 0.000000e+00, %3838 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3835 ]
  %4112 = phi float [ %3832, %3806 ], [ 0.000000e+00, %3768 ], [ %4106, %4096 ], [ 0.000000e+00, %3838 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3835 ]
  %4113 = phi float [ %3834, %3806 ], [ 0.000000e+00, %3768 ], [ %4108, %4096 ], [ 0.000000e+00, %3838 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3835 ]
  %4114 = phi i1 [ true, %3806 ], [ false, %3768 ], [ true, %4096 ], [ false, %3838 ], [ false, %3893 ], [ false, %3835 ]
  %4115 = and i32 %181, 3
  %4116 = icmp eq i32 %4115, 1
  %4117 = select i1 %4116, float 1.000000e+00, float 0.000000e+00
  %4118 = fsub fast float %4110, %165
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = select i1 %4114, float %4119, float 1.000000e+00
  %4121 = fmul fast float %4120, %4117
  %4122 = icmp eq i32 %4115, 3
  %4123 = select i1 %4122, float 1.000000e+00, float %4121
  %4124 = call float @dx.op.binary.f32(i32 35, float %3710, float %4123)  ; FMax(a,b)
  %4125 = fcmp fast olt float %4123, 1.000000e+00
  %4126 = fcmp uge float %47, 0.000000e+00
  %4127 = and i1 %4126, %4125
  br i1 %4127, label %4128, label %4138

; <label>:4128                                    ; preds = %4109
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = fadd fast float %4130, %4124
  %4134 = fcmp ule float %46, 0.000000e+00
  %4135 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = select i1 %4134, float %4135, float 1.000000e+00
  %4137 = fmul fast float %4136, %4132
  br label %4138

; <label>:4138                                    ; preds = %4128, %4109
  %4139 = phi float [ %4133, %4128 ], [ %4124, %4109 ]
  %4140 = phi float [ %4131, %4128 ], [ 0.000000e+00, %4109 ]
  %4141 = phi float [ %4137, %4128 ], [ 0.000000e+00, %4109 ]
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4145 = fcmp fast une float %4143, 0.000000e+00
  %4146 = fcmp fast une float %4144, 0.000000e+00
  %4147 = or i1 %4145, %4146
  br i1 %4147, label %4148, label %4707

; <label>:4148                                    ; preds = %4138
  br i1 %4145, label %4149, label %4422

; <label>:4149                                    ; preds = %4148
  %4150 = call float @dx.op.unary.f32(i32 23, float %3707)  ; Log(value)
  %4151 = fmul fast float %4150, 4.000000e+00
  %4152 = call float @dx.op.unary.f32(i32 21, float %4151)  ; Exp(value)
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = fmul fast float %4154, %34
  %4156 = fmul fast float %4154, %35
  %4157 = fmul fast float %4154, %36
  %4158 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4159 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4160 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4161 = call float @dx.op.unary.f32(i32 23, float %4158)  ; Log(value)
  %4162 = call float @dx.op.unary.f32(i32 23, float %4159)  ; Log(value)
  %4163 = call float @dx.op.unary.f32(i32 23, float %4160)  ; Log(value)
  %4164 = fmul fast float %4161, 4.000000e+00
  %4165 = fmul fast float %4162, 4.000000e+00
  %4166 = fmul fast float %4163, 4.000000e+00
  %4167 = call float @dx.op.unary.f32(i32 21, float %4164)  ; Exp(value)
  %4168 = call float @dx.op.unary.f32(i32 21, float %4165)  ; Exp(value)
  %4169 = call float @dx.op.unary.f32(i32 21, float %4166)  ; Exp(value)
  %4170 = fadd fast float %4168, %4167
  %4171 = fadd fast float %4170, %4169
  %4172 = fdiv fast float 1.000000e+00, %4171
  %4173 = fmul fast float %4172, %4167
  %4174 = fcmp fast ogt float %43, 0.000000e+00
  %4175 = fcmp fast ogt float %44, 0.000000e+00
  %4176 = fcmp fast ogt float %45, 0.000000e+00
  %4177 = fcmp fast olt float %43, 0.000000e+00
  %4178 = fcmp fast olt float %44, 0.000000e+00
  %4179 = fcmp fast olt float %45, 0.000000e+00
  %4180 = zext i1 %4174 to i32
  %4181 = zext i1 %4175 to i32
  %4182 = zext i1 %4176 to i32
  %4183 = zext i1 %4177 to i32
  %4184 = zext i1 %4178 to i32
  %4185 = zext i1 %4179 to i32
  %4186 = sub nsw i32 %4180, %4183
  %4187 = sub nsw i32 %4181, %4184
  %4188 = sub nsw i32 %4182, %4185
  %4189 = call float @dx.op.unary.f32(i32 83, float %4155)  ; DerivCoarseX(value)
  %4190 = call float @dx.op.unary.f32(i32 83, float %4156)  ; DerivCoarseX(value)
  %4191 = call float @dx.op.unary.f32(i32 83, float %4157)  ; DerivCoarseX(value)
  %4192 = call float @dx.op.unary.f32(i32 84, float %4155)  ; DerivCoarseY(value)
  %4193 = call float @dx.op.unary.f32(i32 84, float %4156)  ; DerivCoarseY(value)
  %4194 = call float @dx.op.unary.f32(i32 84, float %4157)  ; DerivCoarseY(value)
  %4195 = fcmp fast ole float %213, %4173
  %4196 = fmul fast float %4172, %4170
  %4197 = fcmp fast ole float %213, %4196
  %4198 = select i1 %4197, float %4157, float %4155
  %4199 = select i1 %4197, float %4155, float %4156
  %4200 = select i1 %4195, float %4156, float %4198
  %4201 = select i1 %4195, float %4157, float %4199
  %4202 = select i1 %4197, float %4191, float %4189
  %4203 = select i1 %4197, float %4189, float %4190
  %4204 = select i1 %4195, float %4190, float %4202
  %4205 = select i1 %4195, float %4191, float %4203
  %4206 = select i1 %4197, float %4194, float %4192
  %4207 = select i1 %4197, float %4192, float %4193
  %4208 = select i1 %4195, float %4193, float %4206
  %4209 = select i1 %4195, float %4194, float %4207
  %4210 = call float @dx.op.unary.f32(i32 27, float %4200)  ; Round_ni(value)
  %4211 = call float @dx.op.unary.f32(i32 27, float %4201)  ; Round_ni(value)
  %4212 = fptosi float %4210 to i32
  %4213 = fptosi float %4211 to i32
  %4214 = xor i32 %4213, %4212
  %4215 = sitofp i32 %4214 to float
  %4216 = fptosi float %4215 to i32
  %4217 = sitofp i32 %4216 to float
  %4218 = fmul fast float %4217, 0x3FE3C6EF40000000
  %4219 = frem fast float %4210, 2.560000e+02
  %4220 = frem fast float %4211, 2.560000e+02
  %4221 = fptoui float %4219 to i32
  %4222 = fptoui float %4220 to i32
  %4223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4221, i32 %4222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4227 = fadd fast float %4224, %4218
  %4228 = fadd fast float %4225, %4218
  %4229 = fadd fast float %4226, %4218
  %4230 = call float @dx.op.unary.f32(i32 22, float %4227)  ; Frc(value)
  %4231 = call float @dx.op.unary.f32(i32 22, float %4228)  ; Frc(value)
  %4232 = call float @dx.op.unary.f32(i32 22, float %4229)  ; Frc(value)
  %4233 = fmul fast float %4232, 0x401921FB60000000
  %4234 = call float @dx.op.unary.f32(i32 13, float %4233)  ; Sin(value)
  %4235 = call float @dx.op.unary.f32(i32 12, float %4233)  ; Cos(value)
  %4236 = fsub fast float -0.000000e+00, %4235
  %4237 = fmul fast float %4235, %4200
  %4238 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4201, float %4237)  ; FMad(a,b,c)
  %4239 = fmul fast float %4234, %4200
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4236, float %4201, float %4239)  ; FMad(a,b,c)
  %4241 = fadd fast float %4238, %4230
  %4242 = fadd fast float %4240, %4231
  %4243 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4244 = bitcast float %4243 to i32
  %4245 = icmp eq i32 %4244, 0
  br i1 %4245, label %4284, label %4246

; <label>:4246                                    ; preds = %4149
  %4247 = add i32 %4244, 0
  %4248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4248, %dx.types.Handle %73, float %4241, float %4242, float undef, float undef, i32 0, i32 0, i32 undef, float %4204, float %4205, float undef, float %4208, float %4209, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 1
  %4253 = extractvalue %dx.types.CBufRet.f32 %4251, 2
  %4254 = fsub fast float 1.000000e+00, %4143
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4256 = bitcast float %4143 to i32
  %4257 = sitofp i32 %4256 to float
  %4258 = fadd fast float %4257, 0xC1CFBF8940000000
  %4259 = fmul fast float %4253, %4258
  %4260 = fadd fast float %4259, 0x41CFBF8940000000
  %4261 = fptosi float %4260 to i32
  %4262 = bitcast i32 %4261 to float
  %4263 = bitcast float %4255 to i32
  %4264 = sitofp i32 %4263 to float
  %4265 = fadd fast float %4264, 0xC1CFBF8940000000
  %4266 = fmul fast float %4265, %4253
  %4267 = fadd fast float %4266, 0x41CFBF8940000000
  %4268 = fptosi float %4267 to i32
  %4269 = bitcast i32 %4268 to float
  %4270 = fmul fast float %4262, %4252
  %4271 = fmul fast float %4269, %4252
  %4272 = fsub fast float %4255, %4270
  %4273 = fadd fast float %4271, %4255
  %4274 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4276 = fsub fast float %4250, %4274
  %4277 = fsub fast float %4275, %4274
  %4278 = bitcast float %4277 to i32
  %4279 = sub nsw i32 2129859010, %4278
  %4280 = bitcast i32 %4279 to float
  %4281 = fmul fast float %4280, %4276
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fcmp fast olt float %4282, 0x3F70101020000000
  br i1 %4283, label %4422, label %4284

; <label>:4284                                    ; preds = %4246, %4149
  %4285 = phi float [ %4282, %4246 ], [ %4143, %4149 ]
  %4286 = fmul fast float %4285, %4152
  %4287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.i32 %4287, 1
  %4289 = extractvalue %dx.types.CBufRet.i32 %4287, 0
  %4290 = add i32 %4289, 0
  %4291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4292 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4291, %dx.types.Handle %72, float %4241, float %4242, float undef, float undef, i32 0, i32 0, i32 undef, float %4204, float %4205, float undef, float %4208, float %4209, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = extractvalue %dx.types.ResRet.f32 %4292, 3
  %4297 = and i32 %4288, 255
  %4298 = uitofp i32 %4297 to float
  %4299 = lshr i32 %4288, 8
  %4300 = and i32 %4299, 255
  %4301 = uitofp i32 %4300 to float
  %4302 = fmul fast float %4296, %4298
  %4303 = fadd fast float %4302, %4301
  %4304 = fmul fast float %4303, 0x3F70101000000000
  %4305 = fadd fast float %4304, 0xBFB99999A0000000
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = fmul fast float %4306, 0x3FF1C71C80000000
  %4308 = call float @dx.op.binary.f32(i32 36, float %4304, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4309 = fsub fast float 1.000000e+00, %4307
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fmul fast float %4310, %4293
  %4312 = fmul fast float %4310, %4294
  %4313 = fmul fast float %4310, %4295
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = fmul fast float %4307, %4293
  %4318 = fmul fast float %4307, %4294
  %4319 = fmul fast float %4307, %4295
  %4320 = fadd fast float %4317, %4308
  %4321 = fadd fast float %4318, %4308
  %4322 = fadd fast float %4319, %4308
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.i32 %4326, 3
  %4328 = extractvalue %dx.types.CBufRet.i32 %4326, 2
  %4329 = add i32 %4328, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4330, %dx.types.Handle %72, float %4241, float %4242, float undef, float undef, i32 0, i32 0, i32 undef, float %4204, float %4205, float undef, float %4208, float %4209, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4335 = extractvalue %dx.types.ResRet.f32 %4331, 3
  %4336 = and i32 %4327, 255
  %4337 = uitofp i32 %4336 to float
  %4338 = lshr i32 %4327, 8
  %4339 = and i32 %4338, 255
  %4340 = uitofp i32 %4339 to float
  %4341 = lshr i32 %4327, 16
  %4342 = and i32 %4341, 255
  %4343 = uitofp i32 %4342 to float
  %4344 = fmul fast float %4343, 0x3F70101000000000
  %4345 = fmul fast float %4332, %4337
  %4346 = fadd fast float %4345, %4340
  %4347 = fmul fast float %4346, 0x3F70101000000000
  %4348 = fadd fast float %4333, -5.000000e-01
  %4349 = fadd fast float %4335, -5.000000e-01
  %4350 = fmul fast float %4348, %4344
  %4351 = fmul fast float %4349, %4344
  %4352 = fadd fast float %4350, 5.000000e-01
  %4353 = fadd fast float %4351, 5.000000e-01
  %4354 = fmul fast float %4352, 2.000000e+00
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = fmul fast float %4353, 2.000000e+00
  %4357 = fadd fast float %4356, -1.000000e+00
  %4358 = fadd fast float %4355, %4357
  %4359 = fmul fast float %4358, 5.000000e-01
  %4360 = fsub fast float %4355, %4357
  %4361 = fmul fast float %4360, 5.000000e-01
  %4362 = call float @dx.op.unary.f32(i32 6, float %4359)  ; FAbs(value)
  %4363 = fsub fast float 1.000000e+00, %4362
  %4364 = call float @dx.op.unary.f32(i32 6, float %4361)  ; FAbs(value)
  %4365 = fsub fast float %4363, %4364
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4359, float %4361, float %4365, float %4359, float %4361, float %4365)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = call float @dx.op.unary.f32(i32 25, float %4366)  ; Rsqrt(value)
  %4368 = fmul fast float %4359, %4367
  %4369 = fmul fast float %4361, %4367
  %4370 = select i1 %4197, i32 %4187, i32 %4188
  %4371 = select i1 %4195, i32 %4186, i32 %4370
  %4372 = sitofp i32 %4371 to float
  %4373 = fmul fast float %4365, %4372
  %4374 = fmul fast float %4373, %4367
  %4375 = select i1 %4197, float %4374, float %4369
  %4376 = select i1 %4197, float %4369, float %4374
  %4377 = select i1 %4195, float %4374, float %4368
  %4378 = select i1 %4195, float %4369, float %4375
  %4379 = select i1 %4195, float %4368, float %4376
  %4380 = fsub fast float %4314, %3747
  %4381 = fsub fast float %4315, %3748
  %4382 = fsub fast float %4316, %3749
  %4383 = fmul fast float %4380, %4286
  %4384 = fmul fast float %4381, %4286
  %4385 = fmul fast float %4382, %4286
  %4386 = fadd fast float %4383, %3747
  %4387 = fadd fast float %4384, %3748
  %4388 = fadd fast float %4385, %3749
  %4389 = fsub fast float %4323, %3732
  %4390 = fsub fast float %4324, %3733
  %4391 = fsub fast float %4325, %3734
  %4392 = fmul fast float %4389, %4286
  %4393 = fmul fast float %4390, %4286
  %4394 = fmul fast float %4391, %4286
  %4395 = fadd fast float %4392, %3732
  %4396 = fadd fast float %4393, %3733
  %4397 = fadd fast float %4394, %3734
  %4398 = fadd fast float %4377, %3695
  %4399 = fadd fast float %4378, %3696
  %4400 = fadd fast float %4379, %3697
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4398, float %4399, float %4400, float %4398, float %4399, float %4400)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4398, %4402
  %4404 = fmul fast float %4399, %4402
  %4405 = fmul fast float %4400, %4402
  %4406 = fsub fast float %4403, %3695
  %4407 = fsub fast float %4404, %3696
  %4408 = fsub fast float %4405, %3697
  %4409 = fmul fast float %4406, %4286
  %4410 = fmul fast float %4407, %4286
  %4411 = fmul fast float %4408, %4286
  %4412 = fadd fast float %4409, %3695
  %4413 = fadd fast float %4410, %3696
  %4414 = fadd fast float %4411, %3697
  %4415 = call float @dx.op.binary.f32(i32 36, float %3707, float %4334)  ; FMin(a,b)
  %4416 = fsub fast float %4415, %3707
  %4417 = fmul fast float %4416, %4286
  %4418 = fadd fast float %4417, %3707
  %4419 = fsub fast float %4347, %3735
  %4420 = fmul fast float %4419, %4286
  %4421 = fadd fast float %4420, %3735
  br label %4422

; <label>:4422                                    ; preds = %4284, %4246, %4148
  %4423 = phi float [ %4412, %4284 ], [ %3695, %4246 ], [ %3695, %4148 ]
  %4424 = phi float [ %4413, %4284 ], [ %3696, %4246 ], [ %3696, %4148 ]
  %4425 = phi float [ %4414, %4284 ], [ %3697, %4246 ], [ %3697, %4148 ]
  %4426 = phi float [ %4395, %4284 ], [ %3732, %4246 ], [ %3732, %4148 ]
  %4427 = phi float [ %4396, %4284 ], [ %3733, %4246 ], [ %3733, %4148 ]
  %4428 = phi float [ %4397, %4284 ], [ %3734, %4246 ], [ %3734, %4148 ]
  %4429 = phi float [ %4386, %4284 ], [ %3747, %4246 ], [ %3747, %4148 ]
  %4430 = phi float [ %4387, %4284 ], [ %3748, %4246 ], [ %3748, %4148 ]
  %4431 = phi float [ %4388, %4284 ], [ %3749, %4246 ], [ %3749, %4148 ]
  %4432 = phi float [ %4421, %4284 ], [ %3735, %4246 ], [ %3735, %4148 ]
  %4433 = phi float [ %4418, %4284 ], [ %3707, %4246 ], [ %3707, %4148 ]
  br i1 %4146, label %4434, label %4707

; <label>:4434                                    ; preds = %4422
  %4435 = call float @dx.op.unary.f32(i32 23, float %4433)  ; Log(value)
  %4436 = fmul fast float %4435, 4.000000e+00
  %4437 = call float @dx.op.unary.f32(i32 21, float %4436)  ; Exp(value)
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = fmul fast float %4439, %34
  %4441 = fmul fast float %4439, %35
  %4442 = fmul fast float %4439, %36
  %4443 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4444 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4445 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4446 = call float @dx.op.unary.f32(i32 23, float %4443)  ; Log(value)
  %4447 = call float @dx.op.unary.f32(i32 23, float %4444)  ; Log(value)
  %4448 = call float @dx.op.unary.f32(i32 23, float %4445)  ; Log(value)
  %4449 = fmul fast float %4446, 4.000000e+00
  %4450 = fmul fast float %4447, 4.000000e+00
  %4451 = fmul fast float %4448, 4.000000e+00
  %4452 = call float @dx.op.unary.f32(i32 21, float %4449)  ; Exp(value)
  %4453 = call float @dx.op.unary.f32(i32 21, float %4450)  ; Exp(value)
  %4454 = call float @dx.op.unary.f32(i32 21, float %4451)  ; Exp(value)
  %4455 = fadd fast float %4453, %4452
  %4456 = fadd fast float %4455, %4454
  %4457 = fdiv fast float 1.000000e+00, %4456
  %4458 = fmul fast float %4457, %4452
  %4459 = fcmp fast ogt float %43, 0.000000e+00
  %4460 = fcmp fast ogt float %44, 0.000000e+00
  %4461 = fcmp fast ogt float %45, 0.000000e+00
  %4462 = fcmp fast olt float %43, 0.000000e+00
  %4463 = fcmp fast olt float %44, 0.000000e+00
  %4464 = fcmp fast olt float %45, 0.000000e+00
  %4465 = zext i1 %4459 to i32
  %4466 = zext i1 %4460 to i32
  %4467 = zext i1 %4461 to i32
  %4468 = zext i1 %4462 to i32
  %4469 = zext i1 %4463 to i32
  %4470 = zext i1 %4464 to i32
  %4471 = sub nsw i32 %4465, %4468
  %4472 = sub nsw i32 %4466, %4469
  %4473 = sub nsw i32 %4467, %4470
  %4474 = call float @dx.op.unary.f32(i32 83, float %4440)  ; DerivCoarseX(value)
  %4475 = call float @dx.op.unary.f32(i32 83, float %4441)  ; DerivCoarseX(value)
  %4476 = call float @dx.op.unary.f32(i32 83, float %4442)  ; DerivCoarseX(value)
  %4477 = call float @dx.op.unary.f32(i32 84, float %4440)  ; DerivCoarseY(value)
  %4478 = call float @dx.op.unary.f32(i32 84, float %4441)  ; DerivCoarseY(value)
  %4479 = call float @dx.op.unary.f32(i32 84, float %4442)  ; DerivCoarseY(value)
  %4480 = fcmp fast ole float %213, %4458
  %4481 = fmul fast float %4457, %4455
  %4482 = fcmp fast ole float %213, %4481
  %4483 = select i1 %4482, float %4442, float %4440
  %4484 = select i1 %4482, float %4440, float %4441
  %4485 = select i1 %4480, float %4441, float %4483
  %4486 = select i1 %4480, float %4442, float %4484
  %4487 = select i1 %4482, float %4476, float %4474
  %4488 = select i1 %4482, float %4474, float %4475
  %4489 = select i1 %4480, float %4475, float %4487
  %4490 = select i1 %4480, float %4476, float %4488
  %4491 = select i1 %4482, float %4479, float %4477
  %4492 = select i1 %4482, float %4477, float %4478
  %4493 = select i1 %4480, float %4478, float %4491
  %4494 = select i1 %4480, float %4479, float %4492
  %4495 = call float @dx.op.unary.f32(i32 27, float %4485)  ; Round_ni(value)
  %4496 = call float @dx.op.unary.f32(i32 27, float %4486)  ; Round_ni(value)
  %4497 = fptosi float %4495 to i32
  %4498 = fptosi float %4496 to i32
  %4499 = xor i32 %4498, %4497
  %4500 = sitofp i32 %4499 to float
  %4501 = fptosi float %4500 to i32
  %4502 = sitofp i32 %4501 to float
  %4503 = fmul fast float %4502, 0x3FE3C6EF40000000
  %4504 = frem fast float %4495, 2.560000e+02
  %4505 = frem fast float %4496, 2.560000e+02
  %4506 = fptoui float %4504 to i32
  %4507 = fptoui float %4505 to i32
  %4508 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4506, i32 %4507, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.ResRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.ResRet.f32 %4508, 2
  %4512 = fadd fast float %4509, %4503
  %4513 = fadd fast float %4510, %4503
  %4514 = fadd fast float %4511, %4503
  %4515 = call float @dx.op.unary.f32(i32 22, float %4512)  ; Frc(value)
  %4516 = call float @dx.op.unary.f32(i32 22, float %4513)  ; Frc(value)
  %4517 = call float @dx.op.unary.f32(i32 22, float %4514)  ; Frc(value)
  %4518 = fmul fast float %4517, 0x401921FB60000000
  %4519 = call float @dx.op.unary.f32(i32 13, float %4518)  ; Sin(value)
  %4520 = call float @dx.op.unary.f32(i32 12, float %4518)  ; Cos(value)
  %4521 = fsub fast float -0.000000e+00, %4520
  %4522 = fmul fast float %4520, %4485
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4486, float %4522)  ; FMad(a,b,c)
  %4524 = fmul fast float %4519, %4485
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4486, float %4524)  ; FMad(a,b,c)
  %4526 = fadd fast float %4523, %4515
  %4527 = fadd fast float %4525, %4516
  %4528 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4529 = bitcast float %4528 to i32
  %4530 = icmp eq i32 %4529, 0
  br i1 %4530, label %4569, label %4531

; <label>:4531                                    ; preds = %4434
  %4532 = add i32 %4529, 0
  %4533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4533, %dx.types.Handle %73, float %4526, float %4527, float undef, float undef, i32 0, i32 0, i32 undef, float %4489, float %4490, float undef, float %4493, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4539 = fsub fast float 1.000000e+00, %4144
  %4540 = call float @dx.op.binary.f32(i32 35, float %4539, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4541 = bitcast float %4144 to i32
  %4542 = sitofp i32 %4541 to float
  %4543 = fadd fast float %4542, 0xC1CFBF8940000000
  %4544 = fmul fast float %4538, %4543
  %4545 = fadd fast float %4544, 0x41CFBF8940000000
  %4546 = fptosi float %4545 to i32
  %4547 = bitcast i32 %4546 to float
  %4548 = bitcast float %4540 to i32
  %4549 = sitofp i32 %4548 to float
  %4550 = fadd fast float %4549, 0xC1CFBF8940000000
  %4551 = fmul fast float %4550, %4538
  %4552 = fadd fast float %4551, 0x41CFBF8940000000
  %4553 = fptosi float %4552 to i32
  %4554 = bitcast i32 %4553 to float
  %4555 = fmul fast float %4547, %4537
  %4556 = fmul fast float %4554, %4537
  %4557 = fsub fast float %4540, %4555
  %4558 = fadd fast float %4556, %4540
  %4559 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4561 = fsub fast float %4535, %4559
  %4562 = fsub fast float %4560, %4559
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, %4561
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = fcmp fast olt float %4567, 0x3F70101020000000
  br i1 %4568, label %4707, label %4569

; <label>:4569                                    ; preds = %4531, %4434
  %4570 = phi float [ %4567, %4531 ], [ %4144, %4434 ]
  %4571 = fmul fast float %4570, %4437
  %4572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.i32 %4572, 1
  %4574 = extractvalue %dx.types.CBufRet.i32 %4572, 0
  %4575 = add i32 %4574, 0
  %4576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4576, %dx.types.Handle %72, float %4526, float %4527, float undef, float undef, i32 0, i32 0, i32 undef, float %4489, float %4490, float undef, float %4493, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = and i32 %4573, 255
  %4583 = uitofp i32 %4582 to float
  %4584 = lshr i32 %4573, 8
  %4585 = and i32 %4584, 255
  %4586 = uitofp i32 %4585 to float
  %4587 = fmul fast float %4581, %4583
  %4588 = fadd fast float %4587, %4586
  %4589 = fmul fast float %4588, 0x3F70101000000000
  %4590 = fadd fast float %4589, 0xBFB99999A0000000
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = fmul fast float %4591, 0x3FF1C71C80000000
  %4593 = call float @dx.op.binary.f32(i32 36, float %4589, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4594 = fsub fast float 1.000000e+00, %4592
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4595, %4578
  %4597 = fmul fast float %4595, %4579
  %4598 = fmul fast float %4595, %4580
  %4599 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4602 = fmul fast float %4592, %4578
  %4603 = fmul fast float %4592, %4579
  %4604 = fmul fast float %4592, %4580
  %4605 = fadd fast float %4602, %4593
  %4606 = fadd fast float %4603, %4593
  %4607 = fadd fast float %4604, %4593
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.i32 %4611, 3
  %4613 = extractvalue %dx.types.CBufRet.i32 %4611, 2
  %4614 = add i32 %4613, 0
  %4615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4615, %dx.types.Handle %72, float %4526, float %4527, float undef, float undef, i32 0, i32 0, i32 undef, float %4489, float %4490, float undef, float %4493, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = and i32 %4612, 255
  %4622 = uitofp i32 %4621 to float
  %4623 = lshr i32 %4612, 8
  %4624 = and i32 %4623, 255
  %4625 = uitofp i32 %4624 to float
  %4626 = lshr i32 %4612, 16
  %4627 = and i32 %4626, 255
  %4628 = uitofp i32 %4627 to float
  %4629 = fmul fast float %4628, 0x3F70101000000000
  %4630 = fmul fast float %4617, %4622
  %4631 = fadd fast float %4630, %4625
  %4632 = fmul fast float %4631, 0x3F70101000000000
  %4633 = fadd fast float %4618, -5.000000e-01
  %4634 = fadd fast float %4620, -5.000000e-01
  %4635 = fmul fast float %4633, %4629
  %4636 = fmul fast float %4634, %4629
  %4637 = fadd fast float %4635, 5.000000e-01
  %4638 = fadd fast float %4636, 5.000000e-01
  %4639 = fmul fast float %4637, 2.000000e+00
  %4640 = fadd fast float %4639, -1.000000e+00
  %4641 = fmul fast float %4638, 2.000000e+00
  %4642 = fadd fast float %4641, -1.000000e+00
  %4643 = fadd fast float %4640, %4642
  %4644 = fmul fast float %4643, 5.000000e-01
  %4645 = fsub fast float %4640, %4642
  %4646 = fmul fast float %4645, 5.000000e-01
  %4647 = call float @dx.op.unary.f32(i32 6, float %4644)  ; FAbs(value)
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = call float @dx.op.unary.f32(i32 6, float %4646)  ; FAbs(value)
  %4650 = fsub fast float %4648, %4649
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4646, float %4650, float %4644, float %4646, float %4650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call float @dx.op.unary.f32(i32 25, float %4651)  ; Rsqrt(value)
  %4653 = fmul fast float %4644, %4652
  %4654 = fmul fast float %4646, %4652
  %4655 = select i1 %4482, i32 %4472, i32 %4473
  %4656 = select i1 %4480, i32 %4471, i32 %4655
  %4657 = sitofp i32 %4656 to float
  %4658 = fmul fast float %4650, %4657
  %4659 = fmul fast float %4658, %4652
  %4660 = select i1 %4482, float %4659, float %4654
  %4661 = select i1 %4482, float %4654, float %4659
  %4662 = select i1 %4480, float %4659, float %4653
  %4663 = select i1 %4480, float %4654, float %4660
  %4664 = select i1 %4480, float %4653, float %4661
  %4665 = fsub fast float %4599, %4429
  %4666 = fsub fast float %4600, %4430
  %4667 = fsub fast float %4601, %4431
  %4668 = fmul fast float %4665, %4571
  %4669 = fmul fast float %4666, %4571
  %4670 = fmul fast float %4667, %4571
  %4671 = fadd fast float %4668, %4429
  %4672 = fadd fast float %4669, %4430
  %4673 = fadd fast float %4670, %4431
  %4674 = fsub fast float %4608, %4426
  %4675 = fsub fast float %4609, %4427
  %4676 = fsub fast float %4610, %4428
  %4677 = fmul fast float %4674, %4571
  %4678 = fmul fast float %4675, %4571
  %4679 = fmul fast float %4676, %4571
  %4680 = fadd fast float %4677, %4426
  %4681 = fadd fast float %4678, %4427
  %4682 = fadd fast float %4679, %4428
  %4683 = fadd fast float %4662, %4423
  %4684 = fadd fast float %4663, %4424
  %4685 = fadd fast float %4664, %4425
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %4683, float %4684, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 25, float %4686)  ; Rsqrt(value)
  %4688 = fmul fast float %4683, %4687
  %4689 = fmul fast float %4684, %4687
  %4690 = fmul fast float %4685, %4687
  %4691 = fsub fast float %4688, %4423
  %4692 = fsub fast float %4689, %4424
  %4693 = fsub fast float %4690, %4425
  %4694 = fmul fast float %4691, %4571
  %4695 = fmul fast float %4692, %4571
  %4696 = fmul fast float %4693, %4571
  %4697 = fadd fast float %4694, %4423
  %4698 = fadd fast float %4695, %4424
  %4699 = fadd fast float %4696, %4425
  %4700 = call float @dx.op.binary.f32(i32 36, float %4433, float %4619)  ; FMin(a,b)
  %4701 = fsub fast float %4700, %4433
  %4702 = fmul fast float %4701, %4571
  %4703 = fadd fast float %4702, %4433
  %4704 = fsub fast float %4632, %4432
  %4705 = fmul fast float %4704, %4571
  %4706 = fadd fast float %4705, %4432
  br label %4707

; <label>:4707                                    ; preds = %4569, %4531, %4422, %4138
  %4708 = phi float [ %4697, %4569 ], [ %4423, %4531 ], [ %4423, %4422 ], [ %3695, %4138 ]
  %4709 = phi float [ %4698, %4569 ], [ %4424, %4531 ], [ %4424, %4422 ], [ %3696, %4138 ]
  %4710 = phi float [ %4699, %4569 ], [ %4425, %4531 ], [ %4425, %4422 ], [ %3697, %4138 ]
  %4711 = phi float [ %4680, %4569 ], [ %4426, %4531 ], [ %4426, %4422 ], [ %3732, %4138 ]
  %4712 = phi float [ %4681, %4569 ], [ %4427, %4531 ], [ %4427, %4422 ], [ %3733, %4138 ]
  %4713 = phi float [ %4682, %4569 ], [ %4428, %4531 ], [ %4428, %4422 ], [ %3734, %4138 ]
  %4714 = phi float [ %4671, %4569 ], [ %4429, %4531 ], [ %4429, %4422 ], [ %3747, %4138 ]
  %4715 = phi float [ %4672, %4569 ], [ %4430, %4531 ], [ %4430, %4422 ], [ %3748, %4138 ]
  %4716 = phi float [ %4673, %4569 ], [ %4431, %4531 ], [ %4431, %4422 ], [ %3749, %4138 ]
  %4717 = phi float [ %4706, %4569 ], [ %4432, %4531 ], [ %4432, %4422 ], [ %3735, %4138 ]
  %4718 = phi float [ %4703, %4569 ], [ %4433, %4531 ], [ %4433, %4422 ], [ %3707, %4138 ]
  %4719 = fcmp fast une float %4142, 0.000000e+00
  %4720 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = call float @dx.op.unary.f32(i32 25, float %4720)  ; Rsqrt(value)
  br i1 %4719, label %4729, label %4722

; <label>:4722                                    ; preds = %4707
  %4723 = fmul fast float %4721, %163
  %4724 = fmul fast float %4721, %164
  %4725 = fmul fast float %4721, %165
  %4726 = fsub fast float -0.000000e+00, %4723
  %4727 = fsub fast float -0.000000e+00, %4724
  %4728 = fsub fast float -0.000000e+00, %4725
  br label %4896

; <label>:4729                                    ; preds = %4707
  %4730 = fmul fast float %163, %4721
  %4731 = fsub fast float -0.000000e+00, %4730
  %4732 = fmul fast float %164, %4721
  %4733 = fsub fast float -0.000000e+00, %4732
  %4734 = fmul fast float %165, %4721
  %4735 = fsub fast float -0.000000e+00, %4734
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4733, float %4735, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = fmul fast float %4142, 2.500000e+00
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4142, 0x4013FFFFE0000000
  %4740 = fadd fast float %4739, 0xBFFFFFFFE0000000
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = fmul fast float %4142, 0x4004000020000000
  %4743 = fadd fast float %4742, 0xBFF8000040000000
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %3714, 1.000000e+01
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4746, 2.000000e+00
  %4748 = fsub fast float 3.000000e+00, %4747
  %4749 = fmul fast float %4746, %4746
  %4750 = fmul fast float %4749, %4748
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = fsub fast float 0x3FE3333340000000, %4717
  %4753 = fmul fast float %4752, 0x400AAAAAA0000000
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4751, %4754
  %4756 = fmul fast float %4714, 0x3FEA2B8620000000
  %4757 = fmul fast float %4715, 0x3FEA2B8620000000
  %4758 = fmul fast float %4716, 0x3FEA2B8620000000
  %4759 = fadd fast float %4756, 0x3FC81DFBA0000000
  %4760 = fmul fast float %4759, %4714
  %4761 = fadd fast float %4760, 0x3F910E6020000000
  %4762 = fadd fast float %4757, 0x3FC81DFBA0000000
  %4763 = fmul fast float %4762, %4715
  %4764 = fadd fast float %4763, 0x3F910E6020000000
  %4765 = fadd fast float %4758, 0x3FC81DFBA0000000
  %4766 = fmul fast float %4765, %4716
  %4767 = fadd fast float %4766, 0x3F910E6020000000
  %4768 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = fsub fast float %4768, %4714
  %4772 = fsub fast float %4769, %4715
  %4773 = fsub fast float %4770, %4716
  %4774 = fmul fast float %4771, %4738
  %4775 = fmul fast float %4774, %4755
  %4776 = fmul fast float %4772, %4738
  %4777 = fmul fast float %4776, %4755
  %4778 = fmul fast float %4773, %4738
  %4779 = fmul fast float %4778, %4755
  %4780 = fadd fast float %4775, %4714
  %4781 = fadd fast float %4777, %4715
  %4782 = fadd fast float %4779, %4716
  %4783 = fmul fast float %4718, %4718
  %4784 = fmul fast float %4783, %4783
  %4785 = fadd fast float %4741, 1.000000e+00
  %4786 = fsub fast float %4785, %4755
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fsub fast float 1.000000e+00, %4784
  %4791 = call float @dx.op.binary.f32(i32 36, float %4787, float %4790)  ; FMin(a,b)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4793 = call float @dx.op.binary.f32(i32 35, float %4791, float %4792)  ; FMax(a,b)
  %4794 = fadd fast float %4789, 0xBFE4CCCCC0000000
  %4795 = fmul fast float %4794, 0x4006DB6DA0000000
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = fmul fast float %4796, 2.000000e+00
  %4798 = fsub fast float 3.000000e+00, %4797
  %4799 = bitcast float %4711 to i32
  %4800 = ashr i32 %4799, 1
  %4801 = add nsw i32 %4800, 532487669
  %4802 = bitcast i32 %4801 to float
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = bitcast float %4803 to i32
  %4805 = sub nsw i32 2129859010, %4804
  %4806 = bitcast i32 %4805 to float
  %4807 = fmul fast float %4806, 2.000000e+00
  %4808 = bitcast float %4712 to i32
  %4809 = ashr i32 %4808, 1
  %4810 = add nsw i32 %4809, 532487669
  %4811 = bitcast i32 %4810 to float
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4815, 2.000000e+00
  %4817 = bitcast float %4713 to i32
  %4818 = ashr i32 %4817, 1
  %4819 = add nsw i32 %4818, 532487669
  %4820 = bitcast i32 %4819 to float
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = fmul fast float %4824, 2.000000e+00
  %4826 = fsub fast float 0x4002A9FBE0000000, %4807
  %4827 = fadd fast float %4807, 0x3FD54FDF00000000
  %4828 = bitcast float %4827 to i32
  %4829 = sub nsw i32 2129859010, %4828
  %4830 = bitcast i32 %4829 to float
  %4831 = fmul fast float %4830, %4826
  %4832 = fmul fast float %4831, %4831
  %4833 = fsub fast float 0x4002A9FBE0000000, %4816
  %4834 = fadd fast float %4816, 0x3FD54FDF00000000
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = fmul fast float %4837, %4833
  %4839 = fmul fast float %4838, %4838
  %4840 = fsub fast float 0x4002A9FBE0000000, %4825
  %4841 = fadd fast float %4825, 0x3FD54FDF00000000
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4844, %4840
  %4846 = fmul fast float %4845, %4845
  %4847 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4832)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4839)  ; FMax(a,b)
  %4849 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4846)  ; FMax(a,b)
  %4850 = fsub fast float 1.000000e+00, %4736
  %4851 = fadd fast float %4850, %4751
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4123
  %4854 = fmul fast float %4793, %4853
  %4855 = fmul fast float %4796, %4796
  %4856 = fmul fast float %4855, %4854
  %4857 = fmul fast float %4856, %4798
  %4858 = fmul fast float %4853, 0xBFE99999A0000000
  %4859 = fmul fast float %4858, %4738
  %4860 = fmul fast float %4859, %4755
  %4861 = fadd fast float %4860, 1.000000e+00
  %4862 = fadd fast float %4717, -1.000000e+00
  %4863 = fmul fast float %4861, %4862
  %4864 = fadd fast float %4863, 1.000000e+00
  %4865 = fsub fast float %4847, %4711
  %4866 = fsub fast float %4848, %4712
  %4867 = fsub fast float %4849, %4713
  %4868 = fmul fast float %4857, %4865
  %4869 = fmul fast float %4857, %4866
  %4870 = fmul fast float %4857, %4867
  %4871 = fadd fast float %4868, %4711
  %4872 = fadd fast float %4869, %4712
  %4873 = fadd fast float %4870, %4713
  %4874 = fsub fast float %83, %4708
  %4875 = fsub fast float %84, %4709
  %4876 = fsub fast float %85, %4710
  %4877 = fmul fast float %4857, %4874
  %4878 = fmul fast float %4857, %4875
  %4879 = fmul fast float %4857, %4876
  %4880 = fadd fast float %4877, %4708
  %4881 = fadd fast float %4878, %4709
  %4882 = fadd fast float %4879, %4710
  %4883 = fmul fast float %4857, %4852
  %4884 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = fmul fast float %4883, %4885
  %4887 = fadd fast float %4886, %4884
  %4888 = fsub fast float 1.000000e+00, %4718
  %4889 = fmul fast float %4857, %4888
  %4890 = fadd fast float %4889, %4718
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4882, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 25, float %4891)  ; Rsqrt(value)
  %4893 = fmul fast float %4880, %4892
  %4894 = fmul fast float %4881, %4892
  %4895 = fmul fast float %4882, %4892
  br label %4896

; <label>:4896                                    ; preds = %4729, %4722
  %4897 = phi float [ %4728, %4722 ], [ %4735, %4729 ]
  %4898 = phi float [ %4727, %4722 ], [ %4733, %4729 ]
  %4899 = phi float [ %4726, %4722 ], [ %4731, %4729 ]
  %4900 = phi float [ %4725, %4722 ], [ %4734, %4729 ]
  %4901 = phi float [ %4724, %4722 ], [ %4732, %4729 ]
  %4902 = phi float [ %4723, %4722 ], [ %4730, %4729 ]
  %4903 = phi float [ %4708, %4722 ], [ %4893, %4729 ]
  %4904 = phi float [ %4709, %4722 ], [ %4894, %4729 ]
  %4905 = phi float [ %4710, %4722 ], [ %4895, %4729 ]
  %4906 = phi float [ %4711, %4722 ], [ %4871, %4729 ]
  %4907 = phi float [ %4712, %4722 ], [ %4872, %4729 ]
  %4908 = phi float [ %4713, %4722 ], [ %4873, %4729 ]
  %4909 = phi float [ %4714, %4722 ], [ %4780, %4729 ]
  %4910 = phi float [ %4715, %4722 ], [ %4781, %4729 ]
  %4911 = phi float [ %4716, %4722 ], [ %4782, %4729 ]
  %4912 = phi float [ %4717, %4722 ], [ %4887, %4729 ]
  %4913 = phi float [ %4718, %4722 ], [ %4890, %4729 ]
  %4914 = select i1 %202, float 0.000000e+00, float %4908
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %4899, float %4898, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4901, float %4900, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = fmul fast float %4917, 2.000000e+00
  %4919 = fmul fast float %4918, %4903
  %4920 = fmul fast float %4918, %4904
  %4921 = fmul fast float %4918, %4905
  %4922 = fsub fast float %4902, %4919
  %4923 = fsub fast float %4901, %4920
  %4924 = fsub fast float %4900, %4921
  %4925 = call float @dx.op.binary.f32(i32 36, float %4913, float 1.000000e+00)  ; FMin(a,b)
  %4926 = fsub fast float 1.000000e+00, %4913
  %4927 = bitcast float %4926 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = fsub fast float 1.000000e+00, %53
  %4930 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4930, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4932 = fdiv fast float %4929, %4931
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %4934, 5.000000e-01
  %4936 = fadd fast float %4935, 5.000000e-01
  %4937 = fmul fast float %4936, %53
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, %4932
  %4941 = fadd fast float %4937, %4940
  %4942 = fsub fast float 5.000000e-01, %4935
  %4943 = fmul fast float %4942, %4909
  %4944 = fmul fast float %4942, %4910
  %4945 = fmul fast float %4942, %4911
  %4946 = fadd fast float %4941, %4943
  %4947 = fadd fast float %4941, %4944
  %4948 = fadd fast float %4941, %4945
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fmul fast float %4950, 5.000000e-01
  %4952 = fadd fast float %4951, 5.000000e-01
  %4953 = fmul fast float %4952, %53
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fmul fast float %4955, %4932
  %4957 = fadd fast float %4953, %4956
  %4958 = fsub fast float 5.000000e-01, %4951
  %4959 = fmul fast float %4958, %4909
  %4960 = fmul fast float %4958, %4910
  %4961 = fmul fast float %4958, %4911
  %4962 = fadd fast float %4957, %4959
  %4963 = fadd fast float %4957, %4960
  %4964 = fadd fast float %4957, %4961
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = call float @dx.op.binary.f32(i32 36, float %4909, float %4966)  ; FMin(a,b)
  %4968 = fsub fast float 1.000000e+00, %4925
  %4969 = fmul fast float %4967, %4968
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = bitcast float %4970 to i32
  %4972 = sub nsw i32 2129859010, %4971
  %4973 = bitcast i32 %4972 to float
  %4974 = call float @dx.op.binary.f32(i32 36, float %4910, float %4966)  ; FMin(a,b)
  %4975 = fmul fast float %4974, %4968
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = bitcast float %4976 to i32
  %4978 = sub nsw i32 2129859010, %4977
  %4979 = bitcast i32 %4978 to float
  %4980 = call float @dx.op.binary.f32(i32 36, float %4911, float %4966)  ; FMin(a,b)
  %4981 = fmul fast float %4980, %4968
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = bitcast float %4982 to i32
  %4984 = sub nsw i32 2129859010, %4983
  %4985 = bitcast i32 %4984 to float
  %4986 = fmul fast float %4925, %54
  %4987 = fmul fast float %4986, %4946
  %4988 = fmul fast float %4987, %4973
  %4989 = fmul fast float %4925, %55
  %4990 = fmul fast float %4989, %4947
  %4991 = fmul fast float %4990, %4979
  %4992 = fmul fast float %4925, %56
  %4993 = fmul fast float %4992, %4948
  %4994 = fmul fast float %4993, %4985
  %4995 = call float @dx.op.binary.f32(i32 36, float %4906, float %4966)  ; FMin(a,b)
  %4996 = fmul fast float %4995, %4968
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = call float @dx.op.binary.f32(i32 36, float %4907, float %4966)  ; FMin(a,b)
  %5002 = fmul fast float %5001, %4968
  %5003 = fsub fast float 1.000000e+00, %5002
  %5004 = bitcast float %5003 to i32
  %5005 = sub nsw i32 2129859010, %5004
  %5006 = bitcast i32 %5005 to float
  %5007 = call float @dx.op.binary.f32(i32 36, float %4914, float %4966)  ; FMin(a,b)
  %5008 = fmul fast float %5007, %4968
  %5009 = fsub fast float 1.000000e+00, %5008
  %5010 = bitcast float %5009 to i32
  %5011 = sub nsw i32 2129859010, %5010
  %5012 = bitcast i32 %5011 to float
  %5013 = fmul fast float %4986, %4962
  %5014 = fmul fast float %5013, %5000
  %5015 = fmul fast float %4989, %4963
  %5016 = fmul fast float %5015, %5006
  %5017 = fmul fast float %4992, %4964
  %5018 = fmul fast float %5017, %5012
  %5019 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4991, float %4994, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = select i1 %202, float 0.000000e+00, float %4988
  %5021 = select i1 %202, float %5019, float %4991
  %5022 = select i1 %202, float 0.000000e+00, float %4994
  %5023 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5016, float %5018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = select i1 %202, float 0.000000e+00, float %5014
  %5025 = select i1 %202, float %5023, float %5016
  %5026 = select i1 %202, float 0.000000e+00, float %5018
  %5027 = fmul fast float %4916, 9.843750e-01
  %5028 = fmul fast float %4912, 9.843750e-01
  %5029 = fadd fast float %5027, 7.812500e-03
  %5030 = fadd fast float %5028, 7.812500e-03
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5029, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 3
  %5034 = fmul fast float %5032, %4906
  %5035 = fmul fast float %5032, %4907
  %5036 = fmul fast float %5032, %4914
  %5037 = fadd fast float %5034, %5033
  %5038 = fadd fast float %5035, %5033
  %5039 = fadd fast float %5036, %5033
  %5040 = fcmp fast ogt float %3708, 0.000000e+00
  br i1 %5040, label %5041, label %5067

; <label>:5041                                    ; preds = %4896
  %5042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3708, float %4916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = fadd fast float %5043, -5.000000e-01
  %5047 = fadd fast float %5044, -5.000000e-01
  %5048 = fadd fast float %5045, -5.000000e-01
  %5049 = fsub fast float 1.000000e+00, %4906
  %5050 = fsub fast float 1.000000e+00, %4907
  %5051 = fsub fast float 1.000000e+00, %4914
  %5052 = fmul fast float %4906, 4.000000e+00
  %5053 = fmul fast float %5052, %5049
  %5054 = fmul fast float %5053, %5046
  %5055 = fmul fast float %4907, 4.000000e+00
  %5056 = fmul fast float %5055, %5050
  %5057 = fmul fast float %5056, %5047
  %5058 = fmul fast float %4914, 4.000000e+00
  %5059 = fmul fast float %5058, %5051
  %5060 = fmul fast float %5059, %5048
  %5061 = fadd fast float %5054, %5037
  %5062 = fadd fast float %5057, %5038
  %5063 = fadd fast float %5060, %5039
  %5064 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5065 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5066 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  br label %5067

; <label>:5067                                    ; preds = %5041, %4896
  %5068 = phi float [ %5064, %5041 ], [ %5037, %4896 ]
  %5069 = phi float [ %5065, %5041 ], [ %5038, %4896 ]
  %5070 = phi float [ %5066, %5041 ], [ %5039, %4896 ]
  %5071 = call float @dx.op.binary.f32(i32 35, float %5069, float %5070)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float %5068, float %5071)  ; FMax(a,b)
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = fmul fast float %5073, %5020
  %5075 = fmul fast float %5073, %5021
  %5076 = fmul fast float %5073, %5022
  %5077 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4910, float %4911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fcmp fast ogt float %5077, 0x3E7FF19E20000000
  %5079 = fdiv fast float 1.000000e+00, %5077
  %5080 = select i1 %5078, float %5079, float 0.000000e+00
  %5081 = fmul fast float %5080, %4909
  %5082 = fmul fast float %5080, %4910
  %5083 = fmul fast float %5080, %4911
  %5084 = fadd fast float %5081, -1.000000e+00
  %5085 = fadd fast float %5082, -1.000000e+00
  %5086 = fadd fast float %5083, -1.000000e+00
  %5087 = fmul fast float %5084, 5.000000e-01
  %5088 = fmul fast float %5085, 5.000000e-01
  %5089 = fmul fast float %5086, 5.000000e-01
  %5090 = fadd fast float %5087, 1.000000e+00
  %5091 = fadd fast float %5088, 1.000000e+00
  %5092 = fadd fast float %5089, 1.000000e+00
  %5093 = fmul fast float %5068, %5024
  %5094 = fmul fast float %5069, %5025
  %5095 = fmul fast float %5070, %5026
  %5096 = fsub fast float 1.000000e+00, %4916
  %5097 = bitcast float %5096 to i32
  %5098 = sitofp i32 %5097 to float
  %5099 = fmul fast float %5098, 5.000000e+00
  %5100 = fadd fast float %5099, 0xC1EFBF8940000000
  %5101 = fptosi float %5100 to i32
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5102, %3709
  %5104 = fmul fast float %5020, %5103
  %5105 = fmul fast float %5104, %5073
  %5106 = fmul fast float %5105, %5090
  %5107 = fmul fast float %5021, %5103
  %5108 = fmul fast float %5107, %5073
  %5109 = fmul fast float %5108, %5091
  %5110 = fmul fast float %5022, %5103
  %5111 = fmul fast float %5110, %5073
  %5112 = fmul fast float %5111, %5092
  %5113 = fmul fast float %5074, %3705
  %5114 = fmul fast float %5075, %3705
  %5115 = fmul fast float %5076, %3705
  %5116 = fadd fast float %5093, %3698
  %5117 = fadd fast float %5116, %5106
  %5118 = fmul fast float %5117, %3705
  %5119 = fadd fast float %5094, %3699
  %5120 = fadd fast float %5119, %5109
  %5121 = fmul fast float %5120, %3705
  %5122 = fadd fast float %5095, %3700
  %5123 = fadd fast float %5122, %5112
  %5124 = fmul fast float %5123, %3705
  %5125 = bitcast i32 %4928 to float
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5128 = fcmp fast oeq float %5127, 0.000000e+00
  br i1 %5128, label %5356, label %5129

; <label>:5129                                    ; preds = %5067
  %5130 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5131 = extractvalue %dx.types.CBufRet.f32 %5126, 1
  %5132 = extractvalue %dx.types.CBufRet.f32 %5126, 2
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = select i1 %202, float %5138, float %5134
  %5142 = select i1 %202, float %5140, float %5135
  %5143 = select i1 %202, float %5139, float %5136
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5146 = fcmp fast une float %5145, 0.000000e+00
  br i1 %5146, label %5147, label %5164

; <label>:5147                                    ; preds = %5129
  %5148 = fptoui float %76 to i32
  %5149 = fptoui float %77 to i32
  %5150 = lshr i32 %5148, 4
  %5151 = lshr i32 %5149, 4
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5154 = fptoui float %5153 to i32
  %5155 = add i32 %5154, 15
  %5156 = lshr i32 %5155, 4
  %5157 = mul i32 %5156, %5151
  %5158 = add i32 %5157, %5150
  %5159 = shl i32 %5158, 3
  %5160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5159, i32 undef)  ; BufferLoad(srv,index,wot)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = and i32 %5161, -268435456
  %5163 = icmp eq i32 %5162, -1342177280
  br i1 %5163, label %5174, label %5164

; <label>:5164                                    ; preds = %5147, %5129
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 2
  %5167 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5168 = fmul fast float %5166, %76
  %5169 = fmul fast float %5167, %77
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5168, float %5169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  br label %5174

; <label>:5174                                    ; preds = %5164, %5147
  %5175 = phi float [ %5171, %5164 ], [ 0.000000e+00, %5147 ]
  %5176 = phi float [ %5172, %5164 ], [ 0.000000e+00, %5147 ]
  %5177 = phi float [ %5173, %5164 ], [ 0.000000e+00, %5147 ]
  %5178 = call float @dx.op.binary.f32(i32 36, float %5176, float %5177)  ; FMin(a,b)
  %5179 = call float @dx.op.binary.f32(i32 36, float %5175, float %5178)  ; FMin(a,b)
  %5180 = fcmp fast ogt float %5179, 0.000000e+00
  br i1 %5180, label %5181, label %5356, !dx.controlflow.hints !74

; <label>:5181                                    ; preds = %5174
  %5182 = fmul fast float %5175, %5141
  %5183 = fmul fast float %5176, %5142
  %5184 = fmul fast float %5177, %5143
  %5185 = fsub fast float %5130, %4902
  %5186 = fsub fast float %5131, %4901
  %5187 = fsub fast float %5132, %4900
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5189, %5185
  %5191 = fmul fast float %5189, %5186
  %5192 = fmul fast float %5189, %5187
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4898, float %4897, float %5190, float %5191, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5196 = fmul fast float %5195, %5195
  %5197 = fmul fast float %5196, %5125
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, %5195
  %5200 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %5190, float %5191, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fmul fast float %5200, %5200
  %5202 = call float @dx.op.unary.f32(i32 6, float %5193)  ; FAbs(value)
  %5203 = fsub fast float 1.000000e+00, %4912
  %5204 = call float @dx.op.binary.f32(i32 35, float %5203, float 0x3F847AE140000000)  ; FMax(a,b)
  %5205 = fmul fast float %5204, %5204
  %5206 = fmul fast float %5205, %5205
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = fmul fast float %4916, %4916
  %5209 = fmul fast float %5208, %5207
  %5210 = fadd fast float %5209, %5206
  %5211 = bitcast float %5210 to i32
  %5212 = ashr i32 %5211, 1
  %5213 = add nsw i32 %5212, 532487669
  %5214 = bitcast i32 %5213 to float
  %5215 = fadd fast float %5214, %4916
  %5216 = fmul fast float %5206, %5201
  %5217 = fsub fast float 1.000000e+00, %5201
  %5218 = fadd fast float %5217, %5216
  %5219 = fmul fast float %5202, %5202
  %5220 = fmul fast float %5219, %5207
  %5221 = fadd fast float %5220, %5206
  %5222 = bitcast float %5221 to i32
  %5223 = ashr i32 %5222, 1
  %5224 = add nsw i32 %5223, 532487669
  %5225 = bitcast i32 %5224 to float
  %5226 = fadd fast float %5225, %5202
  %5227 = fmul fast float %5218, %5218
  %5228 = fmul fast float %5227, %5215
  %5229 = fmul fast float %5228, %5226
  %5230 = fdiv fast float 0x3FF0A00000000000, %5229
  %5231 = fmul fast float %5230, %5206
  %5232 = call float @dx.op.unary.f32(i32 6, float %5194)  ; FAbs(value)
  %5233 = fsub fast float 1.000000e+00, %5232
  %5234 = bitcast float %5233 to i32
  %5235 = sitofp i32 %5234 to float
  %5236 = fmul fast float %5235, 5.000000e+00
  %5237 = fadd fast float %5236, 0xC1EFBF8940000000
  %5238 = fptosi float %5237 to i32
  %5239 = bitcast i32 %5238 to float
  %5240 = fsub fast float 1.000000e+00, %4906
  %5241 = fsub fast float 1.000000e+00, %4907
  %5242 = fsub fast float 1.000000e+00, %4914
  %5243 = fmul fast float %5239, %5240
  %5244 = fmul fast float %5239, %5241
  %5245 = fmul fast float %5239, %5242
  %5246 = fadd fast float %5243, %4906
  %5247 = fadd fast float %5244, %4907
  %5248 = fadd fast float %5245, %4914
  br i1 %5040, label %5249, label %5272

; <label>:5249                                    ; preds = %5181
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3708, float %5232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5254 = fadd fast float %5251, -5.000000e-01
  %5255 = fadd fast float %5252, -5.000000e-01
  %5256 = fadd fast float %5253, -5.000000e-01
  %5257 = fmul fast float %4906, 4.000000e+00
  %5258 = fmul fast float %5257, %5240
  %5259 = fmul fast float %5258, %5254
  %5260 = fmul fast float %4907, 4.000000e+00
  %5261 = fmul fast float %5260, %5241
  %5262 = fmul fast float %5261, %5255
  %5263 = fmul fast float %4914, 4.000000e+00
  %5264 = fmul fast float %5263, %5242
  %5265 = fmul fast float %5264, %5256
  %5266 = fadd fast float %5259, %5246
  %5267 = fadd fast float %5262, %5247
  %5268 = fadd fast float %5265, %5248
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  br label %5272

; <label>:5272                                    ; preds = %5249, %5181
  %5273 = phi float [ %5269, %5249 ], [ %5246, %5181 ]
  %5274 = phi float [ %5270, %5249 ], [ %5247, %5181 ]
  %5275 = phi float [ %5271, %5249 ], [ %5248, %5181 ]
  %5276 = fmul fast float %5193, 9.843750e-01
  %5277 = fadd fast float %5276, 7.812500e-03
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5277, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 3
  %5281 = fmul fast float %5279, %4906
  %5282 = fmul fast float %5279, %4907
  %5283 = fmul fast float %5279, %4914
  %5284 = fadd fast float %5281, %5280
  %5285 = fadd fast float %5282, %5280
  %5286 = fadd fast float %5283, %5280
  br i1 %5040, label %5287, label %5310

; <label>:5287                                    ; preds = %5272
  %5288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3708, float %5193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = fadd fast float %5289, -5.000000e-01
  %5293 = fadd fast float %5290, -5.000000e-01
  %5294 = fadd fast float %5291, -5.000000e-01
  %5295 = fmul fast float %4906, 4.000000e+00
  %5296 = fmul fast float %5295, %5240
  %5297 = fmul fast float %5296, %5292
  %5298 = fmul fast float %4907, 4.000000e+00
  %5299 = fmul fast float %5298, %5241
  %5300 = fmul fast float %5299, %5293
  %5301 = fmul fast float %4914, 4.000000e+00
  %5302 = fmul fast float %5301, %5242
  %5303 = fmul fast float %5302, %5294
  %5304 = fadd fast float %5297, %5284
  %5305 = fadd fast float %5300, %5285
  %5306 = fadd fast float %5303, %5286
  %5307 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  br label %5310

; <label>:5310                                    ; preds = %5287, %5272
  %5311 = phi float [ %5307, %5287 ], [ %5284, %5272 ]
  %5312 = phi float [ %5308, %5287 ], [ %5285, %5272 ]
  %5313 = phi float [ %5309, %5287 ], [ %5286, %5272 ]
  %5314 = call float @dx.op.binary.f32(i32 35, float %5312, float %5313)  ; FMax(a,b)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5311, float %5314)  ; FMax(a,b)
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = fmul fast float %5273, %5231
  %5318 = fmul fast float %5274, %5231
  %5319 = fmul fast float %5275, %5231
  %5320 = fsub fast float 1.000000e+00, %5194
  %5321 = bitcast float %5320 to i32
  %5322 = sitofp i32 %5321 to float
  %5323 = fmul fast float %5322, 5.000000e+00
  %5324 = fadd fast float %5323, 0xC1EFBF8940000000
  %5325 = fptosi float %5324 to i32
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, %3709
  %5328 = fmul fast float %5316, %5327
  %5329 = fmul fast float %5328, %5090
  %5330 = fmul fast float %5328, %5091
  %5331 = fmul fast float %5328, %5092
  %5332 = fadd fast float %5329, %5317
  %5333 = fadd fast float %5330, %5318
  %5334 = fadd fast float %5331, %5319
  %5335 = fmul fast float %5199, %5182
  %5336 = fmul fast float %5335, %5316
  %5337 = fmul fast float %5199, %5183
  %5338 = fmul fast float %5337, %5316
  %5339 = fmul fast float %5199, %5184
  %5340 = fmul fast float %5339, %5316
  %5341 = fmul fast float %5335, %5332
  %5342 = fmul fast float %5337, %5333
  %5343 = fmul fast float %5339, %5334
  %5344 = fadd fast float %5336, %5074
  %5345 = fmul fast float %5344, %3705
  %5346 = fadd fast float %5338, %5075
  %5347 = fmul fast float %5346, %3705
  %5348 = fadd fast float %5340, %5076
  %5349 = fmul fast float %5348, %3705
  %5350 = fadd fast float %5341, %5117
  %5351 = fmul fast float %5350, %3705
  %5352 = fadd fast float %5342, %5120
  %5353 = fmul fast float %5352, %3705
  %5354 = fadd fast float %5343, %5123
  %5355 = fmul fast float %5354, %3705
  br label %5356

; <label>:5356                                    ; preds = %5310, %5174, %5067
  %5357 = phi float [ %5118, %5067 ], [ %5118, %5174 ], [ %5351, %5310 ]
  %5358 = phi float [ %5121, %5067 ], [ %5121, %5174 ], [ %5353, %5310 ]
  %5359 = phi float [ %5124, %5067 ], [ %5124, %5174 ], [ %5355, %5310 ]
  %5360 = phi float [ %5113, %5067 ], [ %5113, %5174 ], [ %5345, %5310 ]
  %5361 = phi float [ %5114, %5067 ], [ %5114, %5174 ], [ %5347, %5310 ]
  %5362 = phi float [ %5115, %5067 ], [ %5115, %5174 ], [ %5349, %5310 ]
  %5363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.i32 %5363, 0
  %5365 = icmp eq i32 %5364, 0
  br i1 %5365, label %5800, label %5366

; <label>:5366                                    ; preds = %5356
  %5367 = fptoui float %76 to i32
  %5368 = fptoui float %77 to i32
  %5369 = lshr i32 %5367, 4
  %5370 = lshr i32 %5368, 4
  %5371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.i32 %5371, 0
  %5373 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5370, i32 %5372, i32 %5369)  ; UMad(a,b,c)
  %5374 = add nsw i32 %5364, -1
  %5375 = call i32 @dx.op.binary.i32(i32 37, i32 %5374, i32 0)  ; IMax(a,b)
  %5376 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5377 = fptoui float %5376 to i32
  %5378 = lshr i32 %5377, 5
  %5379 = call i32 @dx.op.binary.i32(i32 40, i32 %5378, i32 8191)  ; UMin(a,b)
  %5380 = shl i32 %5379, 2
  %5381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.i32 %5381, 0
  %5383 = lshr i32 %5382, 16
  %5384 = and i32 %5382, 65535
  %5385 = lshr i32 %5382, 21
  %5386 = lshr i32 %5384, 5
  %5387 = call i32 @dx.op.binary.i32(i32 40, i32 %5386, i32 %5375)  ; UMin(a,b)
  %5388 = icmp ugt i32 %5385, %5387
  br i1 %5388, label %5800, label %5389

; <label>:5389                                    ; preds = %5366
  br label %5390

; <label>:5390                                    ; preds = %5790, %5389
  %5391 = phi i32 [ %5797, %5790 ], [ %5385, %5389 ]
  %5392 = phi float [ %5791, %5790 ], [ %5357, %5389 ]
  %5393 = phi float [ %5792, %5790 ], [ %5358, %5389 ]
  %5394 = phi float [ %5793, %5790 ], [ %5359, %5389 ]
  %5395 = phi float [ %5794, %5790 ], [ %5360, %5389 ]
  %5396 = phi float [ %5795, %5790 ], [ %5361, %5389 ]
  %5397 = phi float [ %5796, %5790 ], [ %5362, %5389 ]
  %5398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.i32 %5398, 0
  %5400 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5373, i32 %5399, i32 %5391)  ; UMad(a,b,c)
  %5401 = shl i32 %5400, 2
  %5402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.i32 %5402, 0
  %5404 = shl i32 %5391, 5
  %5405 = sub nsw i32 %5383, %5404
  %5406 = call i32 @dx.op.binary.i32(i32 37, i32 %5405, i32 0)  ; IMax(a,b)
  %5407 = call i32 @dx.op.binary.i32(i32 38, i32 %5406, i32 31)  ; IMin(a,b)
  %5408 = sub nsw i32 1, %5383
  %5409 = add nsw i32 %5408, %5384
  %5410 = call i32 @dx.op.binary.i32(i32 37, i32 %5409, i32 0)  ; IMax(a,b)
  %5411 = call i32 @dx.op.binary.i32(i32 38, i32 %5410, i32 32)  ; IMin(a,b)
  %5412 = and i32 %5411, 31
  %5413 = shl i32 -1, %5412
  %5414 = xor i32 %5413, -1
  %5415 = and i32 %5407, 31
  %5416 = shl i32 %5414, %5415
  %5417 = icmp eq i32 %5411, 32
  %5418 = select i1 %5417, i32 -1, i32 %5416
  %5419 = and i32 %5418, %5403
  %5420 = icmp eq i32 %5419, 0
  br i1 %5420, label %5790, label %5421

; <label>:5421                                    ; preds = %5390
  br label %5422

; <label>:5422                                    ; preds = %5502, %5421
  %5423 = phi i32 [ %5434, %5502 ], [ %5419, %5421 ]
  %5424 = phi float [ %5503, %5502 ], [ %5392, %5421 ]
  %5425 = phi float [ %5504, %5502 ], [ %5393, %5421 ]
  %5426 = phi float [ %5505, %5502 ], [ %5394, %5421 ]
  %5427 = phi float [ %5506, %5502 ], [ %5395, %5421 ]
  %5428 = phi float [ %5507, %5502 ], [ %5396, %5421 ]
  %5429 = phi float [ %5508, %5502 ], [ %5397, %5421 ]
  %5430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5423)  ; FirstbitLo(value)
  %5431 = add i32 %5430, %5404
  %5432 = and i32 %5430, 31
  %5433 = shl i32 1, %5432
  %5434 = xor i32 %5433, %5423
  %5435 = mul i32 %5431, 112
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.ResRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.ResRet.f32 %5436, 2
  %5440 = or i32 %5435, 12
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = add i32 %5435, 44
  %5444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = add i32 %5435, 48
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = add i32 %5435, 80
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = select i1 %202, float %5453, float %5437
  %5457 = select i1 %202, float %5455, float %5438
  %5458 = select i1 %202, float %5454, float %5439
  %5459 = fsub fast float %5448, %163
  %5460 = fsub fast float %5449, %164
  %5461 = fsub fast float %5450, %165
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 24, float %5462)  ; Sqrt(value)
  %5464 = fdiv fast float 1.000000e+00, %5463
  %5465 = fmul fast float %5464, %5459
  %5466 = fmul fast float %5464, %5460
  %5467 = fmul fast float %5464, %5461
  %5468 = fadd fast float %5463, %5442
  %5469 = fdiv fast float 1.000000e+00, %5468
  %5470 = fmul float %5445, %5469
  %5471 = fmul float %5470, %5470
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = and i32 %5433, %5419
  %5474 = icmp eq i32 %5473, 0
  br i1 %5474, label %5497, label %5475, !dx.controlflow.hints !75

; <label>:5475                                    ; preds = %5422
  %5476 = lshr i32 %5367, 5
  %5477 = lshr i32 %5368, 5
  %5478 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5476, i32 %5477, i32 %5431, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5479 = extractvalue %dx.types.ResRet.i32 %5478, 0
  %5480 = and i32 %5479, 3
  %5481 = icmp eq i32 %5480, 0
  %5482 = select i1 %5481, float 1.000000e+00, float 0.000000e+00
  %5483 = icmp eq i32 %5480, 3
  br i1 %5483, label %5484, label %5497

; <label>:5484                                    ; preds = %5475
  %5485 = lshr i32 %5479, 10
  %5486 = and i32 %5485, 8160
  %5487 = and i32 %5368, 31
  %5488 = or i32 %5486, %5487
  %5489 = lshr i32 %5479, 1
  %5490 = and i32 %5489, 16352
  %5491 = and i32 %5367, 31
  %5492 = or i32 %5490, %5491
  %5493 = lshr i32 %5479, 23
  %5494 = and i32 %5493, 255
  %5495 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5492, i32 %5488, i32 %5494, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5496 = extractvalue %dx.types.ResRet.f32 %5495, 0
  br label %5497

; <label>:5497                                    ; preds = %5484, %5475, %5422
  %5498 = phi float [ %5496, %5484 ], [ %5482, %5475 ], [ 0.000000e+00, %5422 ]
  %5499 = call float @dx.op.binary.f32(i32 36, float %5498, float %5498)  ; FMin(a,b)
  %5500 = call float @dx.op.binary.f32(i32 36, float %5498, float %5499)  ; FMin(a,b)
  %5501 = fcmp fast ogt float %5500, 0.000000e+00
  br i1 %5501, label %5510, label %5502, !dx.controlflow.hints !76

; <label>:5502                                    ; preds = %5746, %5497
  %5503 = phi float [ %5424, %5497 ], [ %5786, %5746 ]
  %5504 = phi float [ %5425, %5497 ], [ %5787, %5746 ]
  %5505 = phi float [ %5426, %5497 ], [ %5788, %5746 ]
  %5506 = phi float [ %5427, %5497 ], [ %5780, %5746 ]
  %5507 = phi float [ %5428, %5497 ], [ %5781, %5746 ]
  %5508 = phi float [ %5429, %5497 ], [ %5782, %5746 ]
  %5509 = icmp eq i32 %5423, %5433
  br i1 %5509, label %5789, label %5422

; <label>:5510                                    ; preds = %5497
  %5511 = fmul fast float %5498, %5456
  %5512 = fmul fast float %5498, %5457
  %5513 = fmul fast float %5498, %5458
  %5514 = fsub fast float %5450, %4110
  %5515 = fcmp fast ogt float %5514, 0.000000e+00
  %5516 = fsub fast float %165, %4110
  %5517 = fcmp fast ogt float %5516, 0.000000e+00
  %5518 = xor i1 %5517, %5515
  %5519 = fsub fast float %4110, %5450
  %5520 = fmul fast float %5519, 2.000000e+00
  %5521 = fadd fast float %5520, %5450
  %5522 = select i1 %5518, float %5450, float %5521
  %5523 = fsub fast float %5522, %165
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5523, float %5459, float %5460, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = call float @dx.op.unary.f32(i32 25, float %5524)  ; Rsqrt(value)
  %5526 = fmul fast float %5525, %5459
  %5527 = fmul fast float %5525, %5460
  %5528 = fmul fast float %5525, %5523
  %5529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fdiv fast float 1.000000e+00, %5530
  %5532 = fmul fast float %5531, %5529
  %5533 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5516, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fcmp fast ogt float %5533, 0.000000e+00
  %5535 = fcmp fast olt float %5533, 0.000000e+00
  %5536 = zext i1 %5534 to i32
  %5537 = zext i1 %5535 to i32
  %5538 = sub nsw i32 %5536, %5537
  %5539 = sitofp i32 %5538 to float
  %5540 = fsub fast float %5522, %4110
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5540, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fcmp fast ogt float %5541, 0.000000e+00
  %5543 = fcmp fast olt float %5541, 0.000000e+00
  %5544 = zext i1 %5542 to i32
  %5545 = zext i1 %5543 to i32
  %5546 = sub nsw i32 %5544, %5545
  %5547 = sitofp i32 %5546 to float
  %5548 = fcmp fast une float %5539, %5547
  br i1 %5548, label %5549, label %5559

; <label>:5549                                    ; preds = %5510
  %5550 = fmul fast float %5532, %5528
  %5551 = fmul fast float %5532, %5527
  %5552 = fmul fast float %5532, %5526
  %5553 = fmul fast float %5552, %5552
  %5554 = fmul fast float %5551, %5551
  %5555 = fadd fast float %5553, %5554
  %5556 = fmul fast float %5550, %5550
  %5557 = fadd fast float %5555, %5556
  %5558 = call float @dx.op.unary.f32(i32 24, float %5557)  ; Sqrt(value)
  br label %5571

; <label>:5559                                    ; preds = %5510
  %5560 = icmp slt i32 %5538, 0
  br i1 %5560, label %5561, label %5571

; <label>:5561                                    ; preds = %5559
  %5562 = fsub fast float %163, %5448
  %5563 = fsub fast float %164, %5449
  %5564 = fsub fast float %165, %5522
  %5565 = fmul fast float %5562, %5562
  %5566 = fmul fast float %5563, %5563
  %5567 = fadd fast float %5565, %5566
  %5568 = fmul fast float %5564, %5564
  %5569 = fadd fast float %5567, %5568
  %5570 = call float @dx.op.unary.f32(i32 24, float %5569)  ; Sqrt(value)
  br label %5571

; <label>:5571                                    ; preds = %5561, %5559, %5549
  %5572 = phi float [ %5558, %5549 ], [ %5570, %5561 ], [ 0.000000e+00, %5559 ]
  %5573 = and i1 %5517, %5515
  %5574 = fsub fast float -0.000000e+00, %5572
  %5575 = select i1 %5573, float -0.000000e+00, float %5574
  %5576 = fmul fast float %4111, 0x3FF7154760000000
  %5577 = fmul fast float %5576, %5575
  %5578 = fmul fast float %4112, 0x3FF7154760000000
  %5579 = fmul fast float %5578, %5575
  %5580 = fmul fast float %4113, 0x3FF7154760000000
  %5581 = fmul fast float %5580, %5575
  %5582 = call float @dx.op.unary.f32(i32 21, float %5577)  ; Exp(value)
  %5583 = call float @dx.op.unary.f32(i32 21, float %5579)  ; Exp(value)
  %5584 = call float @dx.op.unary.f32(i32 21, float %5581)  ; Exp(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5588 = fmul fast float %5511, %5585
  %5589 = fmul fast float %5512, %5586
  %5590 = fmul fast float %5513, %5587
  %5591 = fsub fast float %5465, %4902
  %5592 = fsub fast float %5466, %4901
  %5593 = fsub fast float %5467, %4900
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %5591, float %5592, float %5593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 25, float %5594)  ; Rsqrt(value)
  %5596 = fmul fast float %5595, %5591
  %5597 = fmul fast float %5595, %5592
  %5598 = fmul fast float %5595, %5593
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %4903, float %4904, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4898, float %4897, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5602 = fmul fast float %5601, %5472
  %5603 = fmul fast float %5601, %5601
  %5604 = fmul fast float %5603, %5125
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5602, %5605
  %5607 = bitcast float %5462 to i32
  %5608 = ashr i32 %5607, 1
  %5609 = sub nsw i32 1597463007, %5608
  %5610 = bitcast i32 %5609 to float
  %5611 = fmul fast float %5610, %5459
  %5612 = fmul fast float %5610, %5460
  %5613 = fmul fast float %5610, %5461
  %5614 = fsub fast float %5611, %4902
  %5615 = fsub fast float %5612, %4901
  %5616 = fsub fast float %5613, %4900
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = call float @dx.op.unary.f32(i32 25, float %5617)  ; Rsqrt(value)
  %5619 = fmul fast float %5614, %5618
  %5620 = fmul fast float %5615, %5618
  %5621 = fmul fast float %5616, %5618
  %5622 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4904, float %4905, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fmul fast float %5622, %5622
  %5624 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5625 = fsub fast float 1.000000e+00, %4912
  %5626 = call float @dx.op.binary.f32(i32 35, float %5625, float 0x3F847AE140000000)  ; FMax(a,b)
  %5627 = fmul fast float %5626, %5626
  %5628 = fmul fast float %5627, %5627
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %4916, %4916
  %5631 = fmul fast float %5630, %5629
  %5632 = fadd fast float %5631, %5628
  %5633 = bitcast float %5632 to i32
  %5634 = ashr i32 %5633, 1
  %5635 = add nsw i32 %5634, 532487669
  %5636 = bitcast i32 %5635 to float
  %5637 = fadd fast float %5636, %4916
  %5638 = fmul fast float %5628, %5623
  %5639 = fsub fast float 1.000000e+00, %5623
  %5640 = fadd fast float %5639, %5638
  %5641 = fmul fast float %5624, %5624
  %5642 = fmul fast float %5641, %5629
  %5643 = fadd fast float %5642, %5628
  %5644 = bitcast float %5643 to i32
  %5645 = ashr i32 %5644, 1
  %5646 = add nsw i32 %5645, 532487669
  %5647 = bitcast i32 %5646 to float
  %5648 = fadd fast float %5647, %5624
  %5649 = fmul fast float %5640, %5640
  %5650 = fmul fast float %5649, %5637
  %5651 = fmul fast float %5650, %5648
  %5652 = fdiv fast float 1.000000e+00, %5651
  %5653 = bitcast float %5628 to i32
  %5654 = sitofp i32 %5653 to float
  %5655 = fmul fast float %5654, 0x3FE7F73180000000
  %5656 = fadd fast float %5655, 0x41AFE27C40000000
  %5657 = fptosi float %5656 to i32
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5445, 0x3FD80E9D60000000
  %5660 = fmul fast float %5659, %5610
  %5661 = fadd fast float %5658, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5628, %5652
  %5666 = fmul fast float %5665, %5658
  %5667 = fmul fast float %5666, %5664
  %5668 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = bitcast float %5669 to i32
  %5671 = sitofp i32 %5670 to float
  %5672 = fmul fast float %5671, 5.000000e+00
  %5673 = fadd fast float %5672, 0xC1EFBF8940000000
  %5674 = fptosi float %5673 to i32
  %5675 = bitcast i32 %5674 to float
  %5676 = fsub fast float 1.000000e+00, %4906
  %5677 = fsub fast float 1.000000e+00, %4907
  %5678 = fsub fast float 1.000000e+00, %4914
  %5679 = fmul fast float %5675, %5676
  %5680 = fmul fast float %5675, %5677
  %5681 = fmul fast float %5675, %5678
  %5682 = fadd fast float %5679, %4906
  %5683 = fadd fast float %5680, %4907
  %5684 = fadd fast float %5681, %4914
  br i1 %5040, label %5685, label %5708

; <label>:5685                                    ; preds = %5571
  %5686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3708, float %5668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5690 = fadd fast float %5687, -5.000000e-01
  %5691 = fadd fast float %5688, -5.000000e-01
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fmul fast float %4906, 4.000000e+00
  %5694 = fmul fast float %5693, %5676
  %5695 = fmul fast float %5694, %5690
  %5696 = fmul fast float %4907, 4.000000e+00
  %5697 = fmul fast float %5696, %5677
  %5698 = fmul fast float %5697, %5691
  %5699 = fmul fast float %4914, 4.000000e+00
  %5700 = fmul fast float %5699, %5678
  %5701 = fmul fast float %5700, %5692
  %5702 = fadd fast float %5695, %5682
  %5703 = fadd fast float %5698, %5683
  %5704 = fadd fast float %5701, %5684
  %5705 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5706 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  br label %5708

; <label>:5708                                    ; preds = %5685, %5571
  %5709 = phi float [ %5705, %5685 ], [ %5682, %5571 ]
  %5710 = phi float [ %5706, %5685 ], [ %5683, %5571 ]
  %5711 = phi float [ %5707, %5685 ], [ %5684, %5571 ]
  %5712 = fmul fast float %5599, 9.843750e-01
  %5713 = fadd fast float %5712, 7.812500e-03
  %5714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5713, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5715 = extractvalue %dx.types.ResRet.f32 %5714, 2
  %5716 = extractvalue %dx.types.ResRet.f32 %5714, 3
  %5717 = fmul fast float %5715, %4906
  %5718 = fmul fast float %5715, %4907
  %5719 = fmul fast float %5715, %4914
  %5720 = fadd fast float %5717, %5716
  %5721 = fadd fast float %5718, %5716
  %5722 = fadd fast float %5719, %5716
  br i1 %5040, label %5723, label %5746

; <label>:5723                                    ; preds = %5708
  %5724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3708, float %5599, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5725 = extractvalue %dx.types.ResRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.ResRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.ResRet.f32 %5724, 2
  %5728 = fadd fast float %5725, -5.000000e-01
  %5729 = fadd fast float %5726, -5.000000e-01
  %5730 = fadd fast float %5727, -5.000000e-01
  %5731 = fmul fast float %4906, 4.000000e+00
  %5732 = fmul fast float %5731, %5676
  %5733 = fmul fast float %5732, %5728
  %5734 = fmul fast float %4907, 4.000000e+00
  %5735 = fmul fast float %5734, %5677
  %5736 = fmul fast float %5735, %5729
  %5737 = fmul fast float %4914, 4.000000e+00
  %5738 = fmul fast float %5737, %5678
  %5739 = fmul fast float %5738, %5730
  %5740 = fadd fast float %5733, %5720
  %5741 = fadd fast float %5736, %5721
  %5742 = fadd fast float %5739, %5722
  %5743 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5744 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5745 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  br label %5746

; <label>:5746                                    ; preds = %5723, %5708
  %5747 = phi float [ %5743, %5723 ], [ %5720, %5708 ]
  %5748 = phi float [ %5744, %5723 ], [ %5721, %5708 ]
  %5749 = phi float [ %5745, %5723 ], [ %5722, %5708 ]
  %5750 = call float @dx.op.binary.f32(i32 35, float %5748, float %5749)  ; FMax(a,b)
  %5751 = call float @dx.op.binary.f32(i32 35, float %5747, float %5750)  ; FMax(a,b)
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5709, %5667
  %5754 = fmul fast float %5710, %5667
  %5755 = fmul fast float %5711, %5667
  %5756 = fsub fast float 1.000000e+00, %5600
  %5757 = bitcast float %5756 to i32
  %5758 = sitofp i32 %5757 to float
  %5759 = fmul fast float %5758, 5.000000e+00
  %5760 = fadd fast float %5759, 0xC1EFBF8940000000
  %5761 = fptosi float %5760 to i32
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5762, %3709
  %5764 = fmul fast float %5752, %5763
  %5765 = fmul fast float %5764, %5090
  %5766 = fmul fast float %5764, %5091
  %5767 = fmul fast float %5764, %5092
  %5768 = fadd fast float %5765, %5753
  %5769 = fadd fast float %5766, %5754
  %5770 = fadd fast float %5767, %5755
  %5771 = fmul fast float %5588, %3705
  %5772 = fmul fast float %5771, %5606
  %5773 = fmul fast float %5772, %5752
  %5774 = fmul fast float %5589, %3705
  %5775 = fmul fast float %5774, %5606
  %5776 = fmul fast float %5775, %5752
  %5777 = fmul fast float %5590, %3705
  %5778 = fmul fast float %5777, %5606
  %5779 = fmul fast float %5778, %5752
  %5780 = fadd fast float %5773, %5427
  %5781 = fadd fast float %5776, %5428
  %5782 = fadd fast float %5779, %5429
  %5783 = fmul fast float %5772, %5768
  %5784 = fmul fast float %5775, %5769
  %5785 = fmul fast float %5778, %5770
  %5786 = fadd fast float %5783, %5424
  %5787 = fadd fast float %5784, %5425
  %5788 = fadd fast float %5785, %5426
  br label %5502

; <label>:5789                                    ; preds = %5502
  br label %5790

; <label>:5790                                    ; preds = %5789, %5390
  %5791 = phi float [ %5392, %5390 ], [ %5503, %5789 ]
  %5792 = phi float [ %5393, %5390 ], [ %5504, %5789 ]
  %5793 = phi float [ %5394, %5390 ], [ %5505, %5789 ]
  %5794 = phi float [ %5395, %5390 ], [ %5506, %5789 ]
  %5795 = phi float [ %5396, %5390 ], [ %5507, %5789 ]
  %5796 = phi float [ %5397, %5390 ], [ %5508, %5789 ]
  %5797 = add i32 %5391, 1
  %5798 = icmp ugt i32 %5797, %5387
  br i1 %5798, label %5799, label %5390

; <label>:5799                                    ; preds = %5790
  br label %5800

; <label>:5800                                    ; preds = %5799, %5366, %5356
  %5801 = phi float [ %5357, %5356 ], [ %5357, %5366 ], [ %5791, %5799 ]
  %5802 = phi float [ %5358, %5356 ], [ %5358, %5366 ], [ %5792, %5799 ]
  %5803 = phi float [ %5359, %5356 ], [ %5359, %5366 ], [ %5793, %5799 ]
  %5804 = phi float [ %5360, %5356 ], [ %5360, %5366 ], [ %5794, %5799 ]
  %5805 = phi float [ %5361, %5356 ], [ %5361, %5366 ], [ %5795, %5799 ]
  %5806 = phi float [ %5362, %5356 ], [ %5362, %5366 ], [ %5796, %5799 ]
  %5807 = call float @dx.op.unary.f32(i32 24, float %4909)  ; Sqrt(value)
  %5808 = call float @dx.op.unary.f32(i32 24, float %4910)  ; Sqrt(value)
  %5809 = call float @dx.op.unary.f32(i32 24, float %4911)  ; Sqrt(value)
  %5810 = fmul fast float %5807, %5804
  %5811 = fmul fast float %5808, %5805
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  br i1 %202, label %5814, label %5843

; <label>:5814                                    ; preds = %5800
  %5815 = fadd fast float %5806, %3711
  %5816 = fmul fast float %5815, %3713
  %5817 = fsub fast float 1.000000e+00, %3713
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5821 = fmul fast float %5820, %5818
  %5822 = fadd fast float %5821, %5816
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = fmul fast float %5824, %5096
  %5826 = fsub fast float %5822, %5825
  %5827 = fadd fast float %5811, %5810
  %5828 = fmul fast float %5813, %5827
  %5829 = extractvalue %dx.types.CBufRet.f32 %5819, 1
  %5830 = fsub fast float %5826, %5829
  %5831 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5832 = fmul fast float %5830, %5831
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fsub fast float %5833, %5835
  %5837 = fmul fast float %5836, 1.000000e+01
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = fadd fast float %3712, -1.000000e+00
  %5840 = fmul fast float %5838, %5839
  %5841 = fadd fast float %5840, 1.000000e+00
  %5842 = fmul fast float %5841, %5833
  br label %5859

; <label>:5843                                    ; preds = %5800
  %5844 = fmul fast float %5809, %5806
  %5845 = fmul fast float %5813, %5810
  %5846 = fmul fast float %5813, %5811
  %5847 = fmul fast float %5844, %5813
  %5848 = add i32 %32, 356
  %5849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.i32 %5849, 0
  %5851 = and i32 %5850, 32
  %5852 = icmp eq i32 %5851, 0
  br i1 %5852, label %5859, label %5853

; <label>:5853                                    ; preds = %5843
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = fmul fast float %5855, 0x3FE99999A0000000
  %5857 = fadd fast float %5855, %5845
  %5858 = fadd fast float %5856, %5847
  br label %5859

; <label>:5859                                    ; preds = %5853, %5843, %5814
  %5860 = phi float [ %5828, %5814 ], [ %5857, %5853 ], [ %5845, %5843 ]
  %5861 = phi float [ %5842, %5814 ], [ %5846, %5853 ], [ %5846, %5843 ]
  %5862 = phi float [ %5841, %5814 ], [ %5858, %5853 ], [ %5847, %5843 ]
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = fmul fast float %5864, %5802
  %5866 = fmul fast float %5864, %5803
  %5867 = fadd fast float %5802, %5801
  %5868 = select i1 %202, float %5867, float %5801
  %5869 = fmul float %5868, %5864
  %5870 = select i1 %202, float 0.000000e+00, float %5865
  %5871 = select i1 %202, float 0.000000e+00, float %5866
  %5872 = fmul fast float %5860, %5807
  %5873 = fmul fast float %5861, %5808
  %5874 = fmul fast float %5862, %5809
  %5875 = fadd fast float %5869, %5872
  %5876 = fadd fast float %5870, %5873
  %5877 = fadd fast float %5871, %5874
  %5878 = select i1 %202, float %5861, float %5876
  %5879 = select i1 %202, float %5862, float %5877
  %5880 = call float @dx.op.binary.f32(i32 36, float %5875, float 3.225500e+04)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 36, float %5878, float 3.225500e+04)  ; FMin(a,b)
  %5882 = call float @dx.op.binary.f32(i32 36, float %5879, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5881)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5882)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

