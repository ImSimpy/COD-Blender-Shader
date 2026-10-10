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
; shader hash: 7c03acab7b821e4d84c7e312901282f6
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
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = fmul fast float %2833, %2817
  %2835 = fmul fast float %2833, %2818
  %2836 = fmul fast float %2833, %2819
  %2837 = call float @dx.op.dot2.f32(i32 54, float %2815, float %2816, float %2815, float %2816)  ; Dot2(ax,ay,bx,by)
  %2838 = fmul fast float %2837, 0x3FE3333340000000
  %2839 = fsub fast float 1.000000e+00, %2838
  %2840 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2839, float %2815, float %2816, float %2839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2841 = call float @dx.op.unary.f32(i32 25, float %2840)  ; Rsqrt(value)
  %2842 = fmul fast float %2841, %2815
  %2843 = fmul fast float %2841, %2816
  %2844 = fmul fast float %2839, %2841
  %2845 = fmul fast float %2844, %84
  %2846 = fmul fast float %2844, %85
  %2847 = fmul fast float %2844, %86
  %2848 = fmul fast float %2842, %58
  %2849 = fmul fast float %2842, %59
  %2850 = fmul fast float %2842, %60
  %2851 = fadd fast float %2845, %2848
  %2852 = fadd fast float %2846, %2849
  %2853 = fadd fast float %2847, %2850
  %2854 = fmul fast float %96, %2843
  %2855 = fmul fast float %97, %2843
  %2856 = fmul fast float %98, %2843
  %2857 = fadd fast float %2851, %2854
  %2858 = fadd fast float %2852, %2855
  %2859 = fadd fast float %2853, %2856
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2857, float %2858, float %2859, float %2857, float %2858, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = call float @dx.op.unary.f32(i32 25, float %2860)  ; Rsqrt(value)
  %2862 = fmul fast float %2857, %2861
  %2863 = fmul fast float %2858, %2861
  %2864 = fmul fast float %2859, %2861
  %2865 = icmp eq i32 %34, 65535
  br i1 %2865, label %3380, label %2866

; <label>:2866                                    ; preds = %2814
  %2867 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %2868 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %2869 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %2870 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %2871 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %2872 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %2873 = fadd fast float %2867, %35
  %2874 = fadd fast float %2868, %36
  %2875 = fadd fast float %2869, %37
  %2876 = fadd fast float %2870, %35
  %2877 = fadd fast float %2871, %36
  %2878 = fadd fast float %2872, %37
  %2879 = mul i32 %34, 48
  %2880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = add i32 %2879, 16
  %2885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = add i32 %2879, 32
  %2890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = bitcast float %2894 to i32
  %2896 = fmul fast float %2881, %35
  %2897 = fmul fast float %2882, %36
  %2898 = fmul fast float %2883, %37
  %2899 = fsub fast float %2896, %2886
  %2900 = fsub fast float %2897, %2887
  %2901 = fsub fast float %2898, %2888
  %2902 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2903 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2904 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2905 = fmul fast float %2902, %2891
  %2906 = fmul fast float %2903, %2892
  %2907 = fmul fast float %2904, %2893
  %2908 = fadd fast float %2891, -1.000000e+00
  %2909 = fadd fast float %2892, -1.000000e+00
  %2910 = fadd fast float %2893, -1.000000e+00
  %2911 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2912 = call float @dx.op.unary.f32(i32 27, float %2906)  ; Round_ni(value)
  %2913 = call float @dx.op.unary.f32(i32 27, float %2907)  ; Round_ni(value)
  %2914 = call float @dx.op.binary.f32(i32 36, float %2911, float %2908)  ; FMin(a,b)
  %2915 = call float @dx.op.binary.f32(i32 36, float %2912, float %2909)  ; FMin(a,b)
  %2916 = call float @dx.op.binary.f32(i32 36, float %2913, float %2910)  ; FMin(a,b)
  %2917 = fmul fast float %2916, %2892
  %2918 = fadd fast float %2917, %2915
  %2919 = fmul fast float %2918, %2891
  %2920 = fadd fast float %2919, %2914
  %2921 = fptosi float %2920 to i32
  %2922 = add nsw i32 %2921, %2895
  %2923 = shl nsw i32 %2922, 2
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = lshr i32 %2925, 16
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %3349, label %2928

; <label>:2928                                    ; preds = %2866
  br label %2929

; <label>:2929                                    ; preds = %3050, %2928
  %2930 = phi i32 [ %2952, %3050 ], [ %2926, %2928 ]
  %2931 = phi float [ %3051, %3050 ], [ 0.000000e+00, %2928 ]
  %2932 = phi float [ %3052, %3050 ], [ %2824, %2928 ]
  %2933 = phi float [ %3053, %3050 ], [ %2822, %2928 ]
  %2934 = phi float [ %3054, %3050 ], [ 0.000000e+00, %2928 ]
  %2935 = phi float [ %3055, %3050 ], [ 0.000000e+00, %2928 ]
  %2936 = phi float [ %3056, %3050 ], [ %2834, %2928 ]
  %2937 = phi float [ %3057, %3050 ], [ %2835, %2928 ]
  %2938 = phi float [ %3058, %3050 ], [ %2836, %2928 ]
  %2939 = phi float [ %3059, %3050 ], [ %2862, %2928 ]
  %2940 = phi float [ %3060, %3050 ], [ %2863, %2928 ]
  %2941 = phi float [ %3061, %3050 ], [ %2864, %2928 ]
  %2942 = phi float [ %3062, %3050 ], [ %2821, %2928 ]
  %2943 = phi float [ %3063, %3050 ], [ %2820, %2928 ]
  %2944 = phi float [ %3064, %3050 ], [ 0.000000e+00, %2928 ]
  %2945 = phi float [ %3065, %3050 ], [ 0x3FA23C0BE0000000, %2928 ]
  %2946 = phi float [ %3066, %3050 ], [ %2829, %2928 ]
  %2947 = phi float [ %3067, %3050 ], [ %2830, %2928 ]
  %2948 = phi float [ %3068, %3050 ], [ %2831, %2928 ]
  %2949 = shl nuw nsw i32 %2930, 2
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = lshr i32 %2951, 16
  %2953 = shl i32 %2951, 8
  %2954 = and i32 %2953, 16776960
  %2955 = or i32 %2954, 48
  %2956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.ResRet.f32 %2956, 2
  %2960 = or i32 %2954, 64
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.i32 %2961, 1
  %2964 = or i32 %2954, 80
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 3
  %2968 = or i32 %2954, 96
  %2969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = extractvalue %dx.types.ResRet.f32 %2969, 3
  %2974 = or i32 %2954, 112
  %2975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2977 = or i32 %2954, 128
  %2978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = extractvalue %dx.types.ResRet.f32 %2978, 3
  %2983 = or i32 %2954, 144
  %2984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = extractvalue %dx.types.ResRet.f32 %2984, 3
  %2989 = or i32 %2954, 160
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = extractvalue %dx.types.ResRet.f32 %2990, 3
  %2995 = or i32 %2954, 192
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = or i32 %2954, 208
  %2999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = or i32 %2954, 248
  %3002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = extractvalue %dx.types.ResRet.f32 %3005, 3
  %3010 = call float @dx.op.dot4.f32(i32 56, float %3006, float %3007, float %3008, float %3009, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3011 = or i32 %2954, 16
  %3012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = extractvalue %dx.types.ResRet.f32 %3012, 3
  %3017 = call float @dx.op.dot4.f32(i32 56, float %3013, float %3014, float %3015, float %3016, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3018 = or i32 %2954, 32
  %3019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.ResRet.f32 %3019, 1
  %3022 = extractvalue %dx.types.ResRet.f32 %3019, 2
  %3023 = extractvalue %dx.types.ResRet.f32 %3019, 3
  %3024 = call float @dx.op.dot4.f32(i32 56, float %3020, float %3021, float %3022, float %3023, float %35, float %36, float %37, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3025 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3026 = call float @dx.op.unary.f32(i32 6, float %3025)  ; FAbs(value)
  %3027 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3028 = call float @dx.op.unary.f32(i32 6, float %3027)  ; FAbs(value)
  %3029 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3030 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3031 = fadd fast float %3028, %3026
  %3032 = fadd fast float %3031, %3030
  %3033 = fcmp fast oeq float %3032, 0.000000e+00
  %3034 = call float @dx.op.dot4.f32(i32 56, float %3006, float %3007, float %3008, float %3009, float %2873, float %2874, float %2875, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3035 = call float @dx.op.dot4.f32(i32 56, float %3013, float %3014, float %3015, float %3016, float %2873, float %2874, float %2875, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3036 = call float @dx.op.dot4.f32(i32 56, float %3006, float %3007, float %3008, float %3009, float %2876, float %2877, float %2878, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3037 = call float @dx.op.dot4.f32(i32 56, float %3013, float %3014, float %3015, float %3016, float %2876, float %2877, float %2878, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3038 = fsub fast float %3034, %3010
  %3039 = fsub fast float %3036, %3010
  %3040 = fsub fast float %3035, %3017
  %3041 = fsub fast float %3037, %3017
  %3042 = call float @dx.op.dot3.f32(i32 55, float %2957, float %2958, float %2959, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 2
  %3045 = fadd fast float %3044, %3042
  %3046 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3048 = fcmp fast ogt float %3046, %3047
  %3049 = and i1 %3033, %3048
  br i1 %3049, label %3070, label %3050

; <label>:3050                                    ; preds = %3335, %3153, %3070, %2929
  %3051 = phi float [ %2931, %3070 ], [ %3156, %3153 ], [ %3156, %3335 ], [ %2931, %2929 ]
  %3052 = phi float [ %2932, %3070 ], [ %2932, %3153 ], [ %3310, %3335 ], [ %2932, %2929 ]
  %3053 = phi float [ %2933, %3070 ], [ %2933, %3153 ], [ %3308, %3335 ], [ %2933, %2929 ]
  %3054 = phi float [ %2934, %3070 ], [ %2934, %3153 ], [ %3280, %3335 ], [ %2934, %2929 ]
  %3055 = phi float [ %2935, %3070 ], [ %2935, %3153 ], [ %3278, %3335 ], [ %2935, %2929 ]
  %3056 = phi float [ %2936, %3070 ], [ %2936, %3153 ], [ %3345, %3335 ], [ %2936, %2929 ]
  %3057 = phi float [ %2937, %3070 ], [ %2937, %3153 ], [ %3346, %3335 ], [ %2937, %2929 ]
  %3058 = phi float [ %2938, %3070 ], [ %2938, %3153 ], [ %3347, %3335 ], [ %2938, %2929 ]
  %3059 = phi float [ %2939, %3070 ], [ %2939, %3153 ], [ %3259, %3335 ], [ %2939, %2929 ]
  %3060 = phi float [ %2940, %3070 ], [ %2940, %3153 ], [ %3260, %3335 ], [ %2940, %2929 ]
  %3061 = phi float [ %2941, %3070 ], [ %2941, %3153 ], [ %3261, %3335 ], [ %2941, %2929 ]
  %3062 = phi float [ %2942, %3070 ], [ %2942, %3153 ], [ %3288, %3335 ], [ %2942, %2929 ]
  %3063 = phi float [ %2943, %3070 ], [ %2943, %3153 ], [ %3285, %3335 ], [ %2943, %2929 ]
  %3064 = phi float [ %2944, %3070 ], [ %2944, %3153 ], [ %3282, %3335 ], [ %2944, %2929 ]
  %3065 = phi float [ %2945, %3070 ], [ %2945, %3153 ], [ %3276, %3335 ], [ %2945, %2929 ]
  %3066 = phi float [ %2946, %3070 ], [ %2946, %3153 ], [ %3271, %3335 ], [ %2946, %2929 ]
  %3067 = phi float [ %2947, %3070 ], [ %2947, %3153 ], [ %3272, %3335 ], [ %2947, %2929 ]
  %3068 = phi float [ %2948, %3070 ], [ %2948, %3153 ], [ %3273, %3335 ], [ %2948, %2929 ]
  %3069 = icmp eq i32 %2952, 0
  br i1 %3069, label %3348, label %2929

; <label>:3070                                    ; preds = %2929
  %3071 = extractvalue %dx.types.ResRet.f32 %2956, 3
  %3072 = extractvalue %dx.types.ResRet.f32 %2975, 3
  %3073 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %3074 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %3075 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %3076 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %3077 = extractvalue %dx.types.ResRet.i32 %2961, 3
  %3078 = extractvalue %dx.types.ResRet.i32 %2961, 2
  %3079 = bitcast float %3071 to i32
  %3080 = add i32 %3077, 0
  %3081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3080, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3083 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3081, %dx.types.Handle %3082, float %3010, float %3017, float undef, float undef, i32 0, i32 0, i32 undef, float %3038, float %3040, float undef, float %3039, float %3041, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = fmul fast float %3084, %3076
  %3086 = fadd fast float %3085, %3075
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = fmul fast float %3010, %2970
  %3089 = call float @dx.op.tertiary.f32(i32 46, float %2971, float %3017, float %3088)  ; FMad(a,b,c)
  %3090 = fadd fast float %3089, %3074
  %3091 = fmul fast float %3010, %2972
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %2973, float %3017, float %3091)  ; FMad(a,b,c)
  %3093 = fadd fast float %3092, %3073
  %3094 = fmul fast float %3038, %2970
  %3095 = call float @dx.op.tertiary.f32(i32 46, float %2971, float %3040, float %3094)  ; FMad(a,b,c)
  %3096 = fmul fast float %3038, %2972
  %3097 = call float @dx.op.tertiary.f32(i32 46, float %2973, float %3040, float %3096)  ; FMad(a,b,c)
  %3098 = fmul fast float %3039, %2970
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %2971, float %3041, float %3098)  ; FMad(a,b,c)
  %3100 = fmul fast float %3039, %2972
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %2973, float %3041, float %3100)  ; FMad(a,b,c)
  %3102 = add i32 %3078, 0
  %3103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3102, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3103, %dx.types.Handle %3082, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = and i32 %3079, 1024
  %3107 = icmp ne i32 %3106, 0
  %3108 = fcmp fast ogt float %3105, 0x3FE0101020000000
  %3109 = uitofp i1 %3108 to float
  %3110 = select i1 %3107, float %3109, float %3105
  %3111 = and i32 %3079, 8192
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %3072, float 1.000000e+00
  %3114 = fmul fast float %3010, 2.000000e+00
  %3115 = fadd fast float %3114, -1.000000e+00
  %3116 = call float @dx.op.unary.f32(i32 6, float %3115)  ; FAbs(value)
  %3117 = fmul fast float %3116, %3003
  %3118 = fsub fast float %3117, %3003
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3120 = fmul fast float %3017, 2.000000e+00
  %3121 = fadd fast float %3120, -1.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 6, float %3121)  ; FAbs(value)
  %3123 = fmul fast float %3122, %3004
  %3124 = fsub fast float %3123, %3004
  %3125 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3126 = fmul fast float %3029, %2966
  %3127 = fsub fast float %3126, %2966
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = fmul fast float %3087, %3113
  %3130 = fmul fast float %3129, %3084
  %3131 = fmul fast float %3130, %3119
  %3132 = fmul fast float %3131, %3110
  %3133 = fmul fast float %3132, %3125
  %3134 = fmul fast float %3133, %3128
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3138 = fsub fast float %3046, %3137
  %3139 = fmul fast float %3138, %3136
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = fmul fast float %3134, %2967
  %3142 = fadd fast float %3134, %2967
  %3143 = fmul fast float %3142, %2976
  %3144 = fsub fast float %3143, %2976
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = and i32 %3079, 128
  %3147 = icmp ne i32 %3146, 0
  %3148 = select i1 %3147, float %3145, float %3141
  %3149 = fmul fast float %3148, %3140
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = fcmp fast ugt float %3149, %3151
  br i1 %3152, label %3153, label %3050

; <label>:3153                                    ; preds = %3070
  %3154 = select i1 %3112, float %3149, float 0.000000e+00
  %3155 = fadd fast float %3154, %2931
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br i1 %3112, label %3050, label %3157

; <label>:3157                                    ; preds = %3153
  %3158 = and i32 %3079, 4
  %3159 = and i32 %3079, 8
  %3160 = add i32 %2962, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3161, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = extractvalue %dx.types.ResRet.f32 %3163, 3
  %3168 = bitcast float %2988 to i32
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = lshr i32 %3168, 8
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3167, %3170
  %3175 = fadd fast float %3174, %3173
  %3176 = fmul fast float %3175, 0x3F70101000000000
  %3177 = add i32 %2963, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3178, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.ResRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.ResRet.f32 %3179, 2
  %3183 = extractvalue %dx.types.ResRet.f32 %3179, 3
  %3184 = bitcast float %2982 to i32
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = lshr i32 %3184, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = lshr i32 %3184, 16
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101000000000
  %3194 = fmul fast float %3180, %3186
  %3195 = fadd fast float %3194, %3189
  %3196 = fmul fast float %3195, 0x3F70101000000000
  %3197 = fadd fast float %3181, -5.000000e-01
  %3198 = fadd fast float %3183, -5.000000e-01
  %3199 = fmul fast float %3197, %3193
  %3200 = fmul fast float %3198, %3193
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fadd fast float %3200, 5.000000e-01
  %3203 = fmul fast float %3164, %2991
  %3204 = fmul fast float %3165, %2992
  %3205 = fmul fast float %3166, %2993
  %3206 = fmul fast float %3201, 2.000000e+00
  %3207 = fadd fast float %3206, -1.000000e+00
  %3208 = fmul fast float %3202, 2.000000e+00
  %3209 = fadd fast float %3208, -1.000000e+00
  %3210 = fadd fast float %3207, %3209
  %3211 = fmul fast float %3210, 5.000000e-01
  %3212 = fsub fast float %3207, %3209
  %3213 = fmul fast float %3212, 5.000000e-01
  %3214 = call float @dx.op.unary.f32(i32 6, float %3211)  ; FAbs(value)
  %3215 = fsub fast float 1.000000e+00, %3214
  %3216 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3217 = fsub fast float %3215, %3216
  %3218 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3213, float %3217, float %3211, float %3213, float %3217)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = call float @dx.op.unary.f32(i32 25, float %3218)  ; Rsqrt(value)
  %3220 = fmul fast float %3211, %3219
  %3221 = fmul fast float %3213, %3219
  %3222 = fmul fast float %3219, %3217
  %3223 = fmul fast float %3222, %2957
  %3224 = fmul fast float %3222, %2958
  %3225 = fmul fast float %3222, %2959
  %3226 = fmul fast float %3220, %2979
  %3227 = fmul fast float %3220, %2980
  %3228 = fmul fast float %3220, %2981
  %3229 = fadd fast float %3226, %3223
  %3230 = fadd fast float %3227, %3224
  %3231 = fadd fast float %3228, %3225
  %3232 = fmul fast float %3221, %2985
  %3233 = fmul fast float %3221, %2986
  %3234 = fmul fast float %3221, %2987
  %3235 = fadd fast float %3229, %3232
  %3236 = fadd fast float %3230, %3233
  %3237 = fadd fast float %3231, %3234
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float %3235, float %3236, float %3237)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.unary.f32(i32 25, float %3238)  ; Rsqrt(value)
  %3240 = fmul fast float %3235, %3239
  %3241 = fmul fast float %3236, %3239
  %3242 = fmul fast float %3237, %3239
  %3243 = icmp ne i32 %3159, 0
  %3244 = select i1 %3243, float 1.000000e+00, float 0.000000e+00
  %3245 = fmul fast float %3149, %3244
  %3246 = and i32 %3079, 1
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3248, label %3252

; <label>:3248                                    ; preds = %3157
  %3249 = fsub fast float %3240, %2939
  %3250 = fsub fast float %3241, %2940
  %3251 = fsub fast float %3242, %2941
  br label %3252

; <label>:3252                                    ; preds = %3248, %3157
  %3253 = phi float [ %3249, %3248 ], [ %3240, %3157 ]
  %3254 = phi float [ %3250, %3248 ], [ %3241, %3157 ]
  %3255 = phi float [ %3251, %3248 ], [ %3242, %3157 ]
  %3256 = fmul float %3255, %3245
  %3257 = fmul float %3254, %3245
  %3258 = fmul float %3253, %3245
  %3259 = fadd fast float %3258, %2939
  %3260 = fadd fast float %3257, %2940
  %3261 = fadd fast float %3256, %2941
  %3262 = icmp ne i32 %3158, 0
  %3263 = select i1 %3262, float 1.000000e+00, float 0.000000e+00
  %3264 = fmul fast float %3149, %3263
  %3265 = fsub fast float %3203, %2946
  %3266 = fsub fast float %3204, %2947
  %3267 = fsub fast float %3205, %2948
  %3268 = fmul fast float %3265, %3264
  %3269 = fmul fast float %3266, %3264
  %3270 = fmul fast float %3267, %3264
  %3271 = fadd fast float %3268, %2946
  %3272 = fadd fast float %3269, %2947
  %3273 = fadd fast float %3270, %2948
  %3274 = fsub fast float %3176, %2945
  %3275 = fmul fast float %3274, %3264
  %3276 = fadd fast float %3275, %2945
  %3277 = fmul fast float %3264, %2935
  %3278 = fsub fast float %2935, %3277
  %3279 = fmul fast float %3264, %2934
  %3280 = fsub fast float %2934, %3279
  %3281 = fadd fast float %3149, %2944
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fsub fast float %3196, %2943
  %3284 = fmul fast float %3283, %3245
  %3285 = fadd fast float %3284, %2943
  %3286 = fsub fast float %3182, %2942
  %3287 = fmul fast float %3286, %3245
  %3288 = fadd fast float %3287, %2942
  %3289 = call float @dx.op.dot3.f32(i32 55, float %3203, float %3204, float %3205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3293 = fmul fast float %3292, %3289
  %3294 = fadd fast float %3293, %3291
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = bitcast float %2994 to i32
  %3297 = and i32 %3296, 65535
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = lshr i32 %3296, 16
  %3300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3299)  ; LegacyF16ToF32(value)
  %3301 = fcmp fast oge float %3298, 0.000000e+00
  %3302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.f32 %3302, 0
  %3304 = select i1 %3301, float %3298, float %3303
  %3305 = fadd fast float %3304, %3300
  %3306 = fsub fast float %3295, %2933
  %3307 = fmul fast float %3306, %3149
  %3308 = fadd fast float %3307, %2933
  %3309 = fmul fast float %3305, %3149
  %3310 = call float @dx.op.binary.f32(i32 35, float %2932, float %3309)  ; FMax(a,b)
  %3311 = and i32 %3079, 16
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3335, label %3313

; <label>:3313                                    ; preds = %3252
  %3314 = bitcast float %3000 to i32
  %3315 = add i32 %2997, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3315, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3316, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = and i32 %3314, 65535
  %3322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3321)  ; LegacyF16ToF32(value)
  %3323 = fmul fast float %3318, %2991
  %3324 = fmul fast float %3319, %2992
  %3325 = fmul fast float %3320, %2993
  %3326 = and i32 %3079, 16384
  %3327 = icmp ne i32 %3326, 0
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 0
  %3330 = select i1 %3327, float %3329, float 1.000000e+00
  %3331 = fmul fast float %3330, %3322
  %3332 = fmul fast float %3323, %3331
  %3333 = fmul fast float %3324, %3331
  %3334 = fmul fast float %3325, %3331
  br label %3335

; <label>:3335                                    ; preds = %3313, %3252
  %3336 = phi float [ %3332, %3313 ], [ 0.000000e+00, %3252 ]
  %3337 = phi float [ %3333, %3313 ], [ 0.000000e+00, %3252 ]
  %3338 = phi float [ %3334, %3313 ], [ 0.000000e+00, %3252 ]
  %3339 = fsub fast float %3336, %2936
  %3340 = fsub fast float %3337, %2937
  %3341 = fsub fast float %3338, %2938
  %3342 = fmul fast float %3339, %3149
  %3343 = fmul fast float %3340, %3149
  %3344 = fmul fast float %3341, %3149
  %3345 = fadd fast float %3342, %2936
  %3346 = fadd fast float %3343, %2937
  %3347 = fadd fast float %3344, %2938
  br label %3050

; <label>:3348                                    ; preds = %3050
  br label %3349

; <label>:3349                                    ; preds = %3348, %2866
  %3350 = phi float [ 0.000000e+00, %2866 ], [ %3051, %3348 ]
  %3351 = phi float [ %2824, %2866 ], [ %3052, %3348 ]
  %3352 = phi float [ %2822, %2866 ], [ %3053, %3348 ]
  %3353 = phi float [ 0.000000e+00, %2866 ], [ %3054, %3348 ]
  %3354 = phi float [ 0.000000e+00, %2866 ], [ %3055, %3348 ]
  %3355 = phi float [ %2834, %2866 ], [ %3056, %3348 ]
  %3356 = phi float [ %2835, %2866 ], [ %3057, %3348 ]
  %3357 = phi float [ %2836, %2866 ], [ %3058, %3348 ]
  %3358 = phi float [ %2862, %2866 ], [ %3059, %3348 ]
  %3359 = phi float [ %2863, %2866 ], [ %3060, %3348 ]
  %3360 = phi float [ %2864, %2866 ], [ %3061, %3348 ]
  %3361 = phi float [ %2821, %2866 ], [ %3062, %3348 ]
  %3362 = phi float [ %2820, %2866 ], [ %3063, %3348 ]
  %3363 = phi float [ 0.000000e+00, %2866 ], [ %3064, %3348 ]
  %3364 = phi float [ 0x3FA23C0BE0000000, %2866 ], [ %3065, %3348 ]
  %3365 = phi float [ %2829, %2866 ], [ %3066, %3348 ]
  %3366 = phi float [ %2830, %2866 ], [ %3067, %3348 ]
  %3367 = phi float [ %2831, %2866 ], [ %3068, %3348 ]
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float %3358, float %3359, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call float @dx.op.unary.f32(i32 25, float %3368)  ; Rsqrt(value)
  %3370 = fmul fast float %3369, %3358
  %3371 = fmul fast float %3369, %3359
  %3372 = fmul fast float %3369, %3360
  %3373 = fadd fast float %3363, %893
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float %3370, float %3371, float %3372)  ; Dot3(ax,ay,az,bx,by,bz)
  %3376 = call float @dx.op.unary.f32(i32 25, float %3375)  ; Rsqrt(value)
  %3377 = fmul fast float %3376, %3370
  %3378 = fmul fast float %3376, %3371
  %3379 = fmul fast float %3376, %3372
  br label %3380

; <label>:3380                                    ; preds = %3349, %2814
  %3381 = phi float [ %3377, %3349 ], [ %2862, %2814 ]
  %3382 = phi float [ %3378, %3349 ], [ %2863, %2814 ]
  %3383 = phi float [ %3379, %3349 ], [ %2864, %2814 ]
  %3384 = phi float [ %3365, %3349 ], [ %2829, %2814 ]
  %3385 = phi float [ %3366, %3349 ], [ %2830, %2814 ]
  %3386 = phi float [ %3367, %3349 ], [ %2831, %2814 ]
  %3387 = phi float [ %3355, %3349 ], [ %2834, %2814 ]
  %3388 = phi float [ %3356, %3349 ], [ %2835, %2814 ]
  %3389 = phi float [ %3357, %3349 ], [ %2836, %2814 ]
  %3390 = phi float [ %3364, %3349 ], [ 0x3FA23C0BE0000000, %2814 ]
  %3391 = phi float [ %3374, %3349 ], [ %893, %2814 ]
  %3392 = phi float [ %3362, %3349 ], [ %2820, %2814 ]
  %3393 = phi float [ %3361, %3349 ], [ %2821, %2814 ]
  %3394 = phi float [ %3354, %3349 ], [ 0.000000e+00, %2814 ]
  %3395 = phi float [ %3353, %3349 ], [ 0.000000e+00, %2814 ]
  %3396 = phi float [ %3350, %3349 ], [ 0.000000e+00, %2814 ]
  %3397 = phi float [ %3351, %3349 ], [ %2824, %2814 ]
  %3398 = phi float [ %3352, %3349 ], [ %2822, %2814 ]
  %3399 = fadd fast float %3390, 0xBFB99999A0000000
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = fmul fast float %3400, 0x3FF1C71C80000000
  %3402 = call float @dx.op.binary.f32(i32 36, float %3390, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3403 = fsub fast float 1.000000e+00, %3401
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3405 = fmul fast float %3404, %3384
  %3406 = fmul fast float %3404, %3385
  %3407 = fmul fast float %3404, %3386
  %3408 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3409 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = fmul fast float %3401, %3384
  %3412 = fmul fast float %3401, %3385
  %3413 = fmul fast float %3401, %3386
  %3414 = fadd fast float %3411, %3402
  %3415 = fadd fast float %3412, %3402
  %3416 = fadd fast float %3413, %3402
  %3417 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3418 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3419 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3420 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.i32 %3421, 3
  %3423 = and i32 %3422, 8
  %3424 = icmp ne i32 %3423, 0
  %3425 = call float @dx.op.binary.f32(i32 35, float %3408, float %3384)  ; FMax(a,b)
  %3426 = call float @dx.op.binary.f32(i32 35, float %3409, float %3384)  ; FMax(a,b)
  %3427 = call float @dx.op.binary.f32(i32 35, float %3410, float %3384)  ; FMax(a,b)
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3409, float %3410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = select i1 %203, float %3384, float %3408
  %3430 = select i1 %203, float %3428, float %3409
  %3431 = select i1 %203, float 1.000000e+00, float %3410
  %3432 = select i1 %3424, float %3425, float %3429
  %3433 = select i1 %3424, float %3426, float %3430
  %3434 = select i1 %3424, float %3427, float %3431
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.CBufRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.CBufRet.f32 %3435, 2
  %3439 = fadd fast float %3436, %164
  %3440 = fadd fast float %3437, %165
  %3441 = fadd fast float %3438, %166
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.CBufRet.f32 %3442, 1
  %3445 = fsub fast float %3439, %3443
  %3446 = fsub fast float %3440, %3444
  %3447 = fmul fast float %3445, %3445
  %3448 = fmul fast float %3446, %3446
  %3449 = fadd fast float %3447, %3448
  %3450 = call float @dx.op.unary.f32(i32 24, float %3449)  ; Sqrt(value)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3452 = fcmp fast olt float %3450, %3451
  br i1 %3452, label %3453, label %3520

; <label>:3453                                    ; preds = %3380
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3461 = extractvalue %dx.types.CBufRet.f32 %3456, 1
  %3462 = extractvalue %dx.types.CBufRet.f32 %3458, 1
  %3463 = extractvalue %dx.types.CBufRet.f32 %3454, 3
  %3464 = extractvalue %dx.types.CBufRet.f32 %3456, 3
  %3465 = extractvalue %dx.types.CBufRet.f32 %3458, 3
  %3466 = fadd fast float %3463, %3439
  %3467 = fadd fast float %3464, %3440
  %3468 = fadd fast float %3465, %3441
  %3469 = fmul fast float %3466, %3455
  %3470 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3457, float %3469)  ; FMad(a,b,c)
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3459, float %3470)  ; FMad(a,b,c)
  %3472 = fmul fast float %3466, %3460
  %3473 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3461, float %3472)  ; FMad(a,b,c)
  %3474 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3462, float %3473)  ; FMad(a,b,c)
  %3475 = fsub fast float %3471, %3463
  %3476 = fsub fast float %3474, %3464
  %3477 = fsub fast float %3475, %3443
  %3478 = fadd fast float %3477, %3451
  %3479 = fsub fast float %3476, %3444
  %3480 = fadd fast float %3479, %3451
  %3481 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3482 = fmul fast float %3478, %3481
  %3483 = fmul fast float %3480, %3481
  %3484 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3485 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3486 = fsub fast float 1.000000e+00, %3484
  %3487 = fsub fast float 1.000000e+00, %3485
  %3488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = fcmp fast ugt float %3489, 0.000000e+00
  br i1 %3490, label %3491, label %3794

; <label>:3491                                    ; preds = %3453
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 2
  %3494 = fmul fast float %3493, %3489
  %3495 = extractvalue %dx.types.CBufRet.f32 %3492, 3
  %3496 = fadd fast float %3495, %3494
  %3497 = extractvalue %dx.types.CBufRet.f32 %3458, 2
  %3498 = fadd fast float %3496, %3465
  %3499 = fmul fast float %3471, %3459
  %3500 = call float @dx.op.tertiary.f32(i32 46, float %3474, float %3462, float %3499)  ; FMad(a,b,c)
  %3501 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3497, float %3500)  ; FMad(a,b,c)
  %3502 = fsub fast float %3501, %3465
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 2
  %3505 = fsub fast float %3502, %3504
  %3506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = fadd fast float %3511, %3507
  %3515 = fmul fast float %3514, 0x3F847AE140000000
  %3516 = fadd fast float %3512, %3508
  %3517 = fmul fast float %3516, 0x3F847AE140000000
  %3518 = fadd fast float %3513, %3509
  %3519 = fmul fast float %3518, 0x3F847AE140000000
  br label %3794

; <label>:3520                                    ; preds = %3380
  %3521 = and i32 %182, 1
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3794, label %3523

; <label>:3523                                    ; preds = %3520
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 0
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.CBufRet.f32 %3524, 1
  %3531 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3532 = extractvalue %dx.types.CBufRet.f32 %3528, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3534 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3535 = extractvalue %dx.types.CBufRet.f32 %3528, 3
  %3536 = fadd fast float %3533, %3439
  %3537 = fadd fast float %3534, %3440
  %3538 = fadd fast float %3535, %3441
  %3539 = fmul fast float %3536, %3525
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3527, float %3539)  ; FMad(a,b,c)
  %3541 = call float @dx.op.tertiary.f32(i32 46, float %3538, float %3529, float %3540)  ; FMad(a,b,c)
  %3542 = fmul fast float %3536, %3530
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3531, float %3542)  ; FMad(a,b,c)
  %3544 = call float @dx.op.tertiary.f32(i32 46, float %3538, float %3532, float %3543)  ; FMad(a,b,c)
  %3545 = fsub fast float %3541, %3533
  %3546 = fsub fast float %3544, %3534
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.CBufRet.f32 %3547, 2
  %3551 = extractvalue %dx.types.CBufRet.f32 %3547, 3
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 3
  %3554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.i32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.i32 %3554, 1
  %3557 = udiv i32 %3556, %3555
  %3558 = fsub fast float %3545, %3548
  %3559 = fsub fast float %3546, %3549
  %3560 = call float @dx.op.binary.f32(i32 35, float %3558, float 0.000000e+00)  ; FMax(a,b)
  %3561 = call float @dx.op.binary.f32(i32 35, float %3559, float 0.000000e+00)  ; FMax(a,b)
  %3562 = call float @dx.op.binary.f32(i32 36, float %3560, float %3550)  ; FMin(a,b)
  %3563 = call float @dx.op.binary.f32(i32 36, float %3561, float %3551)  ; FMin(a,b)
  %3564 = add i32 %3555, -1
  %3565 = add i32 %3557, -1
  %3566 = fmul fast float %3562, %3553
  %3567 = fmul fast float %3563, %3553
  %3568 = fptoui float %3566 to i32
  %3569 = fptoui float %3567 to i32
  %3570 = call i32 @dx.op.binary.i32(i32 40, i32 %3568, i32 %3564)  ; UMin(a,b)
  %3571 = call i32 @dx.op.binary.i32(i32 40, i32 %3569, i32 %3565)  ; UMin(a,b)
  %3572 = mul i32 %3571, %3555
  %3573 = add i32 %3572, %3570
  %3574 = shl i32 %3573, 2
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = icmp eq i32 %3576, -1
  br i1 %3577, label %3794, label %3578

; <label>:3578                                    ; preds = %3523
  %3579 = mul i32 %3576, 148
  %3580 = add i32 %3579, 4
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = add i32 %3579, 8
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = add i32 %3579, 36
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = add i32 %3579, 60
  %3590 = add i32 %3579, 92
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = add i32 %3579, 116
  %3594 = fsub fast float %3545, %3582
  %3595 = fsub fast float %3546, %3585
  %3596 = fmul fast float %3553, %3594
  %3597 = fmul fast float %3553, %3595
  %3598 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3599 = call float @dx.op.unary.f32(i32 7, float %3597)  ; Saturate(value)
  %3600 = fsub fast float 1.000000e+00, %3599
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3603 = call float @dx.op.unary.f32(i32 83, float %3598)  ; DerivCoarseX(value)
  %3604 = call float @dx.op.unary.f32(i32 83, float %3600)  ; DerivCoarseX(value)
  %3605 = call float @dx.op.unary.f32(i32 84, float %3598)  ; DerivCoarseY(value)
  %3606 = call float @dx.op.unary.f32(i32 84, float %3600)  ; DerivCoarseY(value)
  %3607 = fmul fast float %3603, %3602
  %3608 = fmul fast float %3604, %3602
  %3609 = fmul fast float %3605, %3602
  %3610 = fmul fast float %3606, %3602
  %3611 = call float @dx.op.dot2.f32(i32 54, float %3609, float %3610, float %3609, float %3610)  ; Dot2(ax,ay,bx,by)
  %3612 = call float @dx.op.dot2.f32(i32 54, float %3607, float %3608, float %3607, float %3608)  ; Dot2(ax,ay,bx,by)
  %3613 = call float @dx.op.binary.f32(i32 35, float %3612, float %3611)  ; FMax(a,b)
  %3614 = call float @dx.op.unary.f32(i32 23, float %3613)  ; Log(value)
  %3615 = fmul fast float %3614, 5.000000e-01
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3618 = fadd fast float %3617, %3615
  %3619 = call float @dx.op.binary.f32(i32 35, float %3618, float 0.000000e+00)  ; FMax(a,b)
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3622 = fadd fast float %3621, %3619
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 3
  %3625 = fadd fast float %3622, %3624
  %3626 = add i32 %3592, 0
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3626, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3627, i32 0)  ; GetDimensions(handle,mipLevel)
  %3629 = extractvalue %dx.types.Dimensions %3628, 0
  %3630 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3629)  ; FirstbitLo(value)
  %3631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.i32 %3631, 1
  %3633 = sub nsw i32 %3632, %3630
  %3634 = sitofp i32 %3633 to float
  %3635 = fsub fast float %3625, %3634
  %3636 = call float @dx.op.binary.f32(i32 35, float %3635, float 0.000000e+00)  ; FMax(a,b)
  %3637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3627, %dx.types.Handle %28, float %3598, float %3600, float %3588, float undef, i32 0, i32 0, i32 undef, float %3636)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = fcmp ule float %3638, 0x3FE0101020000000
  %3640 = extractvalue %dx.types.CBufRet.i32 %3631, 0
  %3641 = and i32 %3640, 128
  %3642 = icmp ne i32 %3641, 0
  %3643 = and i1 %3639, %3642
  br i1 %3643, label %3794, label %3644

; <label>:3644                                    ; preds = %3578
  %3645 = add i32 %3579, 20
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = add i32 %3579, 24
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = add i32 %3579, 40
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = add i32 %3579, 96
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3659 = fmul fast float %3658, %3598
  %3660 = fmul fast float %3658, %3600
  %3661 = extractvalue %dx.types.CBufRet.f32 %3657, 3
  %3662 = fadd fast float %3659, %3661
  %3663 = fadd fast float %3660, %3661
  %3664 = add i32 %3656, 0
  %3665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3664, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3666 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3665, i32 0)  ; GetDimensions(handle,mipLevel)
  %3667 = extractvalue %dx.types.Dimensions %3666, 0
  %3668 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3667)  ; FirstbitLo(value)
  %3669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.i32 %3669, 1
  %3671 = sub nsw i32 %3670, %3668
  %3672 = sitofp i32 %3671 to float
  %3673 = fsub fast float %3622, %3672
  %3674 = call float @dx.op.binary.f32(i32 35, float %3673, float 0.000000e+00)  ; FMax(a,b)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3665, %dx.types.Handle %28, float %3662, float %3663, float %3653, float undef, i32 0, i32 0, i32 undef, float %3674)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = fmul fast float %3676, %3647
  %3678 = fadd fast float %3677, %3650
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3687 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3688 = fadd fast float %3684, %3545
  %3689 = fadd fast float %3686, %3546
  %3690 = fadd fast float %3678, %3687
  %3691 = fmul fast float %3688, %3680
  %3692 = call float @dx.op.tertiary.f32(i32 46, float %3689, float %3681, float %3691)  ; FMad(a,b,c)
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3682, float %3692)  ; FMad(a,b,c)
  %3694 = fsub fast float %3693, %3687
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 2
  %3697 = fsub fast float %3694, %3696
  %3698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.i32 %3698, 0
  %3700 = call i32 @dx.op.binary.i32(i32 40, i32 %3576, i32 %3699)  ; UMin(a,b)
  %3701 = mul i32 %3700, 36
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = add i32 %3701, 4
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 0
  %3707 = fmul fast float %3706, %3598
  %3708 = fmul fast float %3706, %3600
  %3709 = extractvalue %dx.types.CBufRet.f32 %3705, 1
  %3710 = fadd fast float %3707, %3709
  %3711 = fadd fast float %3708, %3709
  %3712 = icmp eq i32 %3703, 0
  br i1 %3712, label %3781, label %3713

; <label>:3713                                    ; preds = %3644
  br label %3714

; <label>:3714                                    ; preds = %3771, %3713
  %3715 = phi float [ %3772, %3771 ], [ 0.000000e+00, %3713 ]
  %3716 = phi float [ %3773, %3771 ], [ 0.000000e+00, %3713 ]
  %3717 = phi float [ %3774, %3771 ], [ 0.000000e+00, %3713 ]
  %3718 = phi float [ %3775, %3771 ], [ 0.000000e+00, %3713 ]
  %3719 = phi float [ %3776, %3771 ], [ 0.000000e+00, %3713 ]
  %3720 = phi float [ %3777, %3771 ], [ 0.000000e+00, %3713 ]
  %3721 = phi i32 [ %3778, %3771 ], [ 0, %3713 ]
  %3722 = shl i32 %3721, 2
  %3723 = add i32 %3589, %3722
  %3724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.f32 %3724, 0
  %3726 = add i32 %3593, %3722
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = add i32 %3728, 0
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3729, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3730, i32 0)  ; GetDimensions(handle,mipLevel)
  %3732 = extractvalue %dx.types.Dimensions %3731, 0
  %3733 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3732)  ; FirstbitLo(value)
  %3734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.i32 %3734, 1
  %3736 = sub nsw i32 %3735, %3733
  %3737 = sitofp i32 %3736 to float
  %3738 = fsub fast float %3622, %3737
  %3739 = call float @dx.op.binary.f32(i32 35, float %3738, float 0.000000e+00)  ; FMax(a,b)
  %3740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3730, %dx.types.Handle %28, float %3710, float %3711, float %3725, float undef, i32 0, i32 0, i32 undef, float %3739)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = fcmp fast ogt float %3741, 0.000000e+00
  br i1 %3742, label %3743, label %3771

; <label>:3743                                    ; preds = %3714
  %3744 = add i32 %3704, %3722
  %3745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.i32 %3745, 0
  %3747 = and i32 %3746, 32767
  %3748 = mul nuw nsw i32 %3747, 928
  %3749 = add nuw nsw i32 %3748, 48
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = add nuw nsw i32 %3748, 60
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = fmul fast float %3751, %3741
  %3760 = fmul fast float %3752, %3741
  %3761 = fmul fast float %3753, %3741
  %3762 = fadd fast float %3759, %3715
  %3763 = fadd fast float %3760, %3716
  %3764 = fadd fast float %3761, %3717
  %3765 = fmul fast float %3756, %3741
  %3766 = fmul fast float %3757, %3741
  %3767 = fmul fast float %3758, %3741
  %3768 = fadd fast float %3765, %3718
  %3769 = fadd fast float %3766, %3719
  %3770 = fadd fast float %3767, %3720
  br label %3771

; <label>:3771                                    ; preds = %3743, %3714
  %3772 = phi float [ %3762, %3743 ], [ %3715, %3714 ]
  %3773 = phi float [ %3763, %3743 ], [ %3716, %3714 ]
  %3774 = phi float [ %3764, %3743 ], [ %3717, %3714 ]
  %3775 = phi float [ %3768, %3743 ], [ %3718, %3714 ]
  %3776 = phi float [ %3769, %3743 ], [ %3719, %3714 ]
  %3777 = phi float [ %3770, %3743 ], [ %3720, %3714 ]
  %3778 = add nuw i32 %3721, 1
  %3779 = icmp eq i32 %3778, %3703
  br i1 %3779, label %3780, label %3714

; <label>:3780                                    ; preds = %3771
  br label %3781

; <label>:3781                                    ; preds = %3780, %3644
  %3782 = phi float [ 0.000000e+00, %3644 ], [ %3772, %3780 ]
  %3783 = phi float [ 0.000000e+00, %3644 ], [ %3773, %3780 ]
  %3784 = phi float [ 0.000000e+00, %3644 ], [ %3774, %3780 ]
  %3785 = phi float [ 0.000000e+00, %3644 ], [ %3775, %3780 ]
  %3786 = phi float [ 0.000000e+00, %3644 ], [ %3776, %3780 ]
  %3787 = phi float [ 0.000000e+00, %3644 ], [ %3777, %3780 ]
  %3788 = fadd fast float %3785, %3782
  %3789 = fmul fast float %3788, 0x3F847AE140000000
  %3790 = fadd fast float %3786, %3783
  %3791 = fmul fast float %3790, 0x3F847AE140000000
  %3792 = fadd fast float %3787, %3784
  %3793 = fmul fast float %3792, 0x3F847AE140000000
  br label %3794

; <label>:3794                                    ; preds = %3781, %3578, %3523, %3520, %3491, %3453
  %3795 = phi float [ %3505, %3491 ], [ -1.310720e+05, %3453 ], [ %3697, %3781 ], [ -1.310720e+05, %3523 ], [ -1.310720e+05, %3578 ], [ -1.310720e+05, %3520 ]
  %3796 = phi float [ %3515, %3491 ], [ 0.000000e+00, %3453 ], [ %3789, %3781 ], [ 0.000000e+00, %3523 ], [ 0.000000e+00, %3578 ], [ 0.000000e+00, %3520 ]
  %3797 = phi float [ %3517, %3491 ], [ 0.000000e+00, %3453 ], [ %3791, %3781 ], [ 0.000000e+00, %3523 ], [ 0.000000e+00, %3578 ], [ 0.000000e+00, %3520 ]
  %3798 = phi float [ %3519, %3491 ], [ 0.000000e+00, %3453 ], [ %3793, %3781 ], [ 0.000000e+00, %3523 ], [ 0.000000e+00, %3578 ], [ 0.000000e+00, %3520 ]
  %3799 = phi i1 [ true, %3491 ], [ false, %3453 ], [ true, %3781 ], [ false, %3523 ], [ false, %3578 ], [ false, %3520 ]
  %3800 = and i32 %182, 3
  %3801 = icmp eq i32 %3800, 1
  %3802 = select i1 %3801, float 1.000000e+00, float 0.000000e+00
  %3803 = fsub fast float %3795, %166
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = select i1 %3799, float %3804, float 1.000000e+00
  %3806 = fmul fast float %3805, %3802
  %3807 = icmp eq i32 %3800, 3
  %3808 = select i1 %3807, float 1.000000e+00, float %3806
  %3809 = call float @dx.op.binary.f32(i32 35, float %3396, float %3808)  ; FMax(a,b)
  %3810 = fcmp fast olt float %3808, 1.000000e+00
  %3811 = fcmp uge float %48, 0.000000e+00
  %3812 = and i1 %3811, %3810
  br i1 %3812, label %3813, label %3823

; <label>:3813                                    ; preds = %3794
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %28, float %48, float %49, float %50, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = fadd fast float %3815, %3809
  %3819 = fcmp ule float %47, 0.000000e+00
  %3820 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = select i1 %3819, float %3820, float 1.000000e+00
  %3822 = fmul fast float %3821, %3817
  br label %3823

; <label>:3823                                    ; preds = %3813, %3794
  %3824 = phi float [ %3818, %3813 ], [ %3809, %3794 ]
  %3825 = phi float [ %3816, %3813 ], [ 0.000000e+00, %3794 ]
  %3826 = phi float [ %3822, %3813 ], [ 0.000000e+00, %3794 ]
  %3827 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = fcmp fast une float %3828, 0.000000e+00
  %3831 = fcmp fast une float %3829, 0.000000e+00
  %3832 = or i1 %3830, %3831
  br i1 %3832, label %3833, label %4392

; <label>:3833                                    ; preds = %3823
  br i1 %3830, label %3834, label %4107

; <label>:3834                                    ; preds = %3833
  %3835 = call float @dx.op.unary.f32(i32 23, float %3393)  ; Log(value)
  %3836 = fmul fast float %3835, 4.000000e+00
  %3837 = call float @dx.op.unary.f32(i32 21, float %3836)  ; Exp(value)
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 0
  %3840 = fmul fast float %3839, %35
  %3841 = fmul fast float %3839, %36
  %3842 = fmul fast float %3839, %37
  %3843 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %3844 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %3845 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %3846 = call float @dx.op.unary.f32(i32 23, float %3843)  ; Log(value)
  %3847 = call float @dx.op.unary.f32(i32 23, float %3844)  ; Log(value)
  %3848 = call float @dx.op.unary.f32(i32 23, float %3845)  ; Log(value)
  %3849 = fmul fast float %3846, 4.000000e+00
  %3850 = fmul fast float %3847, 4.000000e+00
  %3851 = fmul fast float %3848, 4.000000e+00
  %3852 = call float @dx.op.unary.f32(i32 21, float %3849)  ; Exp(value)
  %3853 = call float @dx.op.unary.f32(i32 21, float %3850)  ; Exp(value)
  %3854 = call float @dx.op.unary.f32(i32 21, float %3851)  ; Exp(value)
  %3855 = fadd fast float %3853, %3852
  %3856 = fadd fast float %3855, %3854
  %3857 = fdiv fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3852
  %3859 = fcmp fast ogt float %44, 0.000000e+00
  %3860 = fcmp fast ogt float %45, 0.000000e+00
  %3861 = fcmp fast ogt float %46, 0.000000e+00
  %3862 = fcmp fast olt float %44, 0.000000e+00
  %3863 = fcmp fast olt float %45, 0.000000e+00
  %3864 = fcmp fast olt float %46, 0.000000e+00
  %3865 = zext i1 %3859 to i32
  %3866 = zext i1 %3860 to i32
  %3867 = zext i1 %3861 to i32
  %3868 = zext i1 %3862 to i32
  %3869 = zext i1 %3863 to i32
  %3870 = zext i1 %3864 to i32
  %3871 = sub nsw i32 %3865, %3868
  %3872 = sub nsw i32 %3866, %3869
  %3873 = sub nsw i32 %3867, %3870
  %3874 = call float @dx.op.unary.f32(i32 83, float %3840)  ; DerivCoarseX(value)
  %3875 = call float @dx.op.unary.f32(i32 83, float %3841)  ; DerivCoarseX(value)
  %3876 = call float @dx.op.unary.f32(i32 83, float %3842)  ; DerivCoarseX(value)
  %3877 = call float @dx.op.unary.f32(i32 84, float %3840)  ; DerivCoarseY(value)
  %3878 = call float @dx.op.unary.f32(i32 84, float %3841)  ; DerivCoarseY(value)
  %3879 = call float @dx.op.unary.f32(i32 84, float %3842)  ; DerivCoarseY(value)
  %3880 = fcmp fast ole float %214, %3858
  %3881 = fmul fast float %3857, %3855
  %3882 = fcmp fast ole float %214, %3881
  %3883 = select i1 %3882, float %3842, float %3840
  %3884 = select i1 %3882, float %3840, float %3841
  %3885 = select i1 %3880, float %3841, float %3883
  %3886 = select i1 %3880, float %3842, float %3884
  %3887 = select i1 %3882, float %3876, float %3874
  %3888 = select i1 %3882, float %3874, float %3875
  %3889 = select i1 %3880, float %3875, float %3887
  %3890 = select i1 %3880, float %3876, float %3888
  %3891 = select i1 %3882, float %3879, float %3877
  %3892 = select i1 %3882, float %3877, float %3878
  %3893 = select i1 %3880, float %3878, float %3891
  %3894 = select i1 %3880, float %3879, float %3892
  %3895 = call float @dx.op.unary.f32(i32 27, float %3885)  ; Round_ni(value)
  %3896 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3897 = fptosi float %3895 to i32
  %3898 = fptosi float %3896 to i32
  %3899 = xor i32 %3898, %3897
  %3900 = sitofp i32 %3899 to float
  %3901 = fptosi float %3900 to i32
  %3902 = sitofp i32 %3901 to float
  %3903 = fmul fast float %3902, 0x3FE3C6EF40000000
  %3904 = frem fast float %3895, 2.560000e+02
  %3905 = frem fast float %3896, 2.560000e+02
  %3906 = fptoui float %3904 to i32
  %3907 = fptoui float %3905 to i32
  %3908 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3906, i32 %3907, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = fadd fast float %3909, %3903
  %3913 = fadd fast float %3910, %3903
  %3914 = fadd fast float %3911, %3903
  %3915 = call float @dx.op.unary.f32(i32 22, float %3912)  ; Frc(value)
  %3916 = call float @dx.op.unary.f32(i32 22, float %3913)  ; Frc(value)
  %3917 = call float @dx.op.unary.f32(i32 22, float %3914)  ; Frc(value)
  %3918 = fmul fast float %3917, 0x401921FB60000000
  %3919 = call float @dx.op.unary.f32(i32 13, float %3918)  ; Sin(value)
  %3920 = call float @dx.op.unary.f32(i32 12, float %3918)  ; Cos(value)
  %3921 = fsub fast float -0.000000e+00, %3920
  %3922 = fmul fast float %3920, %3885
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3886, float %3922)  ; FMad(a,b,c)
  %3924 = fmul fast float %3919, %3885
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3886, float %3924)  ; FMad(a,b,c)
  %3926 = fadd fast float %3923, %3915
  %3927 = fadd fast float %3925, %3916
  %3928 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3929 = bitcast float %3928 to i32
  %3930 = icmp eq i32 %3929, 0
  br i1 %3930, label %3969, label %3931

; <label>:3931                                    ; preds = %3834
  %3932 = add i32 %3929, 0
  %3933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3934 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3933, %dx.types.Handle %74, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3939 = fsub fast float 1.000000e+00, %3828
  %3940 = call float @dx.op.binary.f32(i32 35, float %3939, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3941 = bitcast float %3828 to i32
  %3942 = sitofp i32 %3941 to float
  %3943 = fadd fast float %3942, 0xC1CFBF8940000000
  %3944 = fmul fast float %3938, %3943
  %3945 = fadd fast float %3944, 0x41CFBF8940000000
  %3946 = fptosi float %3945 to i32
  %3947 = bitcast i32 %3946 to float
  %3948 = bitcast float %3940 to i32
  %3949 = sitofp i32 %3948 to float
  %3950 = fadd fast float %3949, 0xC1CFBF8940000000
  %3951 = fmul fast float %3950, %3938
  %3952 = fadd fast float %3951, 0x41CFBF8940000000
  %3953 = fptosi float %3952 to i32
  %3954 = bitcast i32 %3953 to float
  %3955 = fmul fast float %3947, %3937
  %3956 = fmul fast float %3954, %3937
  %3957 = fsub fast float %3940, %3955
  %3958 = fadd fast float %3956, %3940
  %3959 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3961 = fsub fast float %3935, %3959
  %3962 = fsub fast float %3960, %3959
  %3963 = bitcast float %3962 to i32
  %3964 = sub nsw i32 2129859010, %3963
  %3965 = bitcast i32 %3964 to float
  %3966 = fmul fast float %3965, %3961
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fcmp fast olt float %3967, 0x3F70101020000000
  br i1 %3968, label %4107, label %3969

; <label>:3969                                    ; preds = %3931, %3834
  %3970 = phi float [ %3967, %3931 ], [ %3828, %3834 ]
  %3971 = fmul fast float %3970, %3837
  %3972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.i32 %3972, 1
  %3974 = extractvalue %dx.types.CBufRet.i32 %3972, 0
  %3975 = add i32 %3974, 0
  %3976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3976, %dx.types.Handle %73, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = extractvalue %dx.types.ResRet.f32 %3977, 3
  %3982 = and i32 %3973, 255
  %3983 = uitofp i32 %3982 to float
  %3984 = lshr i32 %3973, 8
  %3985 = and i32 %3984, 255
  %3986 = uitofp i32 %3985 to float
  %3987 = fmul fast float %3981, %3983
  %3988 = fadd fast float %3987, %3986
  %3989 = fmul fast float %3988, 0x3F70101000000000
  %3990 = fadd fast float %3989, 0xBFB99999A0000000
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3991, 0x3FF1C71C80000000
  %3993 = call float @dx.op.binary.f32(i32 36, float %3989, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3994 = fsub fast float 1.000000e+00, %3992
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3995, %3978
  %3997 = fmul fast float %3995, %3979
  %3998 = fmul fast float %3995, %3980
  %3999 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %4000 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4001 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4002 = fmul fast float %3992, %3978
  %4003 = fmul fast float %3992, %3979
  %4004 = fmul fast float %3992, %3980
  %4005 = fadd fast float %4002, %3993
  %4006 = fadd fast float %4003, %3993
  %4007 = fadd fast float %4004, %3993
  %4008 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4009 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4010 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.i32 %4011, 3
  %4013 = extractvalue %dx.types.CBufRet.i32 %4011, 2
  %4014 = add i32 %4013, 0
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4015, %dx.types.Handle %73, float %3926, float %3927, float undef, float undef, i32 0, i32 0, i32 undef, float %3889, float %3890, float undef, float %3893, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = and i32 %4012, 255
  %4022 = uitofp i32 %4021 to float
  %4023 = lshr i32 %4012, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = lshr i32 %4012, 16
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101000000000
  %4030 = fmul fast float %4017, %4022
  %4031 = fadd fast float %4030, %4025
  %4032 = fmul fast float %4031, 0x3F70101000000000
  %4033 = fadd fast float %4018, -5.000000e-01
  %4034 = fadd fast float %4020, -5.000000e-01
  %4035 = fmul fast float %4033, %4029
  %4036 = fmul fast float %4034, %4029
  %4037 = fadd fast float %4035, 5.000000e-01
  %4038 = fadd fast float %4036, 5.000000e-01
  %4039 = fmul fast float %4037, 2.000000e+00
  %4040 = fadd fast float %4039, -1.000000e+00
  %4041 = fmul fast float %4038, 2.000000e+00
  %4042 = fadd fast float %4041, -1.000000e+00
  %4043 = fadd fast float %4040, %4042
  %4044 = fmul fast float %4043, 5.000000e-01
  %4045 = fsub fast float %4040, %4042
  %4046 = fmul fast float %4045, 5.000000e-01
  %4047 = call float @dx.op.unary.f32(i32 6, float %4044)  ; FAbs(value)
  %4048 = fsub fast float 1.000000e+00, %4047
  %4049 = call float @dx.op.unary.f32(i32 6, float %4046)  ; FAbs(value)
  %4050 = fsub fast float %4048, %4049
  %4051 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4046, float %4050, float %4044, float %4046, float %4050)  ; Dot3(ax,ay,az,bx,by,bz)
  %4052 = call float @dx.op.unary.f32(i32 25, float %4051)  ; Rsqrt(value)
  %4053 = fmul fast float %4044, %4052
  %4054 = fmul fast float %4046, %4052
  %4055 = select i1 %3882, i32 %3872, i32 %3873
  %4056 = select i1 %3880, i32 %3871, i32 %4055
  %4057 = sitofp i32 %4056 to float
  %4058 = fmul fast float %4050, %4057
  %4059 = fmul fast float %4058, %4052
  %4060 = select i1 %3882, float %4059, float %4054
  %4061 = select i1 %3882, float %4054, float %4059
  %4062 = select i1 %3880, float %4059, float %4053
  %4063 = select i1 %3880, float %4054, float %4060
  %4064 = select i1 %3880, float %4053, float %4061
  %4065 = fsub fast float %3999, %3432
  %4066 = fsub fast float %4000, %3433
  %4067 = fsub fast float %4001, %3434
  %4068 = fmul fast float %4065, %3971
  %4069 = fmul fast float %4066, %3971
  %4070 = fmul fast float %4067, %3971
  %4071 = fadd fast float %4068, %3432
  %4072 = fadd fast float %4069, %3433
  %4073 = fadd fast float %4070, %3434
  %4074 = fsub fast float %4008, %3417
  %4075 = fsub fast float %4009, %3418
  %4076 = fsub fast float %4010, %3419
  %4077 = fmul fast float %4074, %3971
  %4078 = fmul fast float %4075, %3971
  %4079 = fmul fast float %4076, %3971
  %4080 = fadd fast float %4077, %3417
  %4081 = fadd fast float %4078, %3418
  %4082 = fadd fast float %4079, %3419
  %4083 = fadd fast float %4062, %3381
  %4084 = fadd fast float %4063, %3382
  %4085 = fadd fast float %4064, %3383
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4083, float %4084, float %4085)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = call float @dx.op.unary.f32(i32 25, float %4086)  ; Rsqrt(value)
  %4088 = fmul fast float %4083, %4087
  %4089 = fmul fast float %4084, %4087
  %4090 = fmul fast float %4085, %4087
  %4091 = fsub fast float %4088, %3381
  %4092 = fsub fast float %4089, %3382
  %4093 = fsub fast float %4090, %3383
  %4094 = fmul fast float %4091, %3971
  %4095 = fmul fast float %4092, %3971
  %4096 = fmul fast float %4093, %3971
  %4097 = fadd fast float %4094, %3381
  %4098 = fadd fast float %4095, %3382
  %4099 = fadd fast float %4096, %3383
  %4100 = call float @dx.op.binary.f32(i32 36, float %3393, float %4019)  ; FMin(a,b)
  %4101 = fsub fast float %4100, %3393
  %4102 = fmul fast float %4101, %3971
  %4103 = fadd fast float %4102, %3393
  %4104 = fsub fast float %4032, %3420
  %4105 = fmul fast float %4104, %3971
  %4106 = fadd fast float %4105, %3420
  br label %4107

; <label>:4107                                    ; preds = %3969, %3931, %3833
  %4108 = phi float [ %4071, %3969 ], [ %3432, %3931 ], [ %3432, %3833 ]
  %4109 = phi float [ %4072, %3969 ], [ %3433, %3931 ], [ %3433, %3833 ]
  %4110 = phi float [ %4073, %3969 ], [ %3434, %3931 ], [ %3434, %3833 ]
  %4111 = phi float [ %4097, %3969 ], [ %3381, %3931 ], [ %3381, %3833 ]
  %4112 = phi float [ %4098, %3969 ], [ %3382, %3931 ], [ %3382, %3833 ]
  %4113 = phi float [ %4099, %3969 ], [ %3383, %3931 ], [ %3383, %3833 ]
  %4114 = phi float [ %4080, %3969 ], [ %3417, %3931 ], [ %3417, %3833 ]
  %4115 = phi float [ %4081, %3969 ], [ %3418, %3931 ], [ %3418, %3833 ]
  %4116 = phi float [ %4082, %3969 ], [ %3419, %3931 ], [ %3419, %3833 ]
  %4117 = phi float [ %4106, %3969 ], [ %3420, %3931 ], [ %3420, %3833 ]
  %4118 = phi float [ %4103, %3969 ], [ %3393, %3931 ], [ %3393, %3833 ]
  br i1 %3831, label %4119, label %4392

; <label>:4119                                    ; preds = %4107
  %4120 = call float @dx.op.unary.f32(i32 23, float %4118)  ; Log(value)
  %4121 = fmul fast float %4120, 4.000000e+00
  %4122 = call float @dx.op.unary.f32(i32 21, float %4121)  ; Exp(value)
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = fmul fast float %4124, %35
  %4126 = fmul fast float %4124, %36
  %4127 = fmul fast float %4124, %37
  %4128 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4129 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4130 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4131 = call float @dx.op.unary.f32(i32 23, float %4128)  ; Log(value)
  %4132 = call float @dx.op.unary.f32(i32 23, float %4129)  ; Log(value)
  %4133 = call float @dx.op.unary.f32(i32 23, float %4130)  ; Log(value)
  %4134 = fmul fast float %4131, 4.000000e+00
  %4135 = fmul fast float %4132, 4.000000e+00
  %4136 = fmul fast float %4133, 4.000000e+00
  %4137 = call float @dx.op.unary.f32(i32 21, float %4134)  ; Exp(value)
  %4138 = call float @dx.op.unary.f32(i32 21, float %4135)  ; Exp(value)
  %4139 = call float @dx.op.unary.f32(i32 21, float %4136)  ; Exp(value)
  %4140 = fadd fast float %4138, %4137
  %4141 = fadd fast float %4140, %4139
  %4142 = fdiv fast float 1.000000e+00, %4141
  %4143 = fmul fast float %4142, %4137
  %4144 = fcmp fast ogt float %44, 0.000000e+00
  %4145 = fcmp fast ogt float %45, 0.000000e+00
  %4146 = fcmp fast ogt float %46, 0.000000e+00
  %4147 = fcmp fast olt float %44, 0.000000e+00
  %4148 = fcmp fast olt float %45, 0.000000e+00
  %4149 = fcmp fast olt float %46, 0.000000e+00
  %4150 = zext i1 %4144 to i32
  %4151 = zext i1 %4145 to i32
  %4152 = zext i1 %4146 to i32
  %4153 = zext i1 %4147 to i32
  %4154 = zext i1 %4148 to i32
  %4155 = zext i1 %4149 to i32
  %4156 = sub nsw i32 %4150, %4153
  %4157 = sub nsw i32 %4151, %4154
  %4158 = sub nsw i32 %4152, %4155
  %4159 = call float @dx.op.unary.f32(i32 83, float %4125)  ; DerivCoarseX(value)
  %4160 = call float @dx.op.unary.f32(i32 83, float %4126)  ; DerivCoarseX(value)
  %4161 = call float @dx.op.unary.f32(i32 83, float %4127)  ; DerivCoarseX(value)
  %4162 = call float @dx.op.unary.f32(i32 84, float %4125)  ; DerivCoarseY(value)
  %4163 = call float @dx.op.unary.f32(i32 84, float %4126)  ; DerivCoarseY(value)
  %4164 = call float @dx.op.unary.f32(i32 84, float %4127)  ; DerivCoarseY(value)
  %4165 = fcmp fast ole float %214, %4143
  %4166 = fmul fast float %4142, %4140
  %4167 = fcmp fast ole float %214, %4166
  %4168 = select i1 %4167, float %4127, float %4125
  %4169 = select i1 %4167, float %4125, float %4126
  %4170 = select i1 %4165, float %4126, float %4168
  %4171 = select i1 %4165, float %4127, float %4169
  %4172 = select i1 %4167, float %4161, float %4159
  %4173 = select i1 %4167, float %4159, float %4160
  %4174 = select i1 %4165, float %4160, float %4172
  %4175 = select i1 %4165, float %4161, float %4173
  %4176 = select i1 %4167, float %4164, float %4162
  %4177 = select i1 %4167, float %4162, float %4163
  %4178 = select i1 %4165, float %4163, float %4176
  %4179 = select i1 %4165, float %4164, float %4177
  %4180 = call float @dx.op.unary.f32(i32 27, float %4170)  ; Round_ni(value)
  %4181 = call float @dx.op.unary.f32(i32 27, float %4171)  ; Round_ni(value)
  %4182 = fptosi float %4180 to i32
  %4183 = fptosi float %4181 to i32
  %4184 = xor i32 %4183, %4182
  %4185 = sitofp i32 %4184 to float
  %4186 = fptosi float %4185 to i32
  %4187 = sitofp i32 %4186 to float
  %4188 = fmul fast float %4187, 0x3FE3C6EF40000000
  %4189 = frem fast float %4180, 2.560000e+02
  %4190 = frem fast float %4181, 2.560000e+02
  %4191 = fptoui float %4189 to i32
  %4192 = fptoui float %4190 to i32
  %4193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %4191, i32 %4192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = fadd fast float %4194, %4188
  %4198 = fadd fast float %4195, %4188
  %4199 = fadd fast float %4196, %4188
  %4200 = call float @dx.op.unary.f32(i32 22, float %4197)  ; Frc(value)
  %4201 = call float @dx.op.unary.f32(i32 22, float %4198)  ; Frc(value)
  %4202 = call float @dx.op.unary.f32(i32 22, float %4199)  ; Frc(value)
  %4203 = fmul fast float %4202, 0x401921FB60000000
  %4204 = call float @dx.op.unary.f32(i32 13, float %4203)  ; Sin(value)
  %4205 = call float @dx.op.unary.f32(i32 12, float %4203)  ; Cos(value)
  %4206 = fsub fast float -0.000000e+00, %4205
  %4207 = fmul fast float %4205, %4170
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4171, float %4207)  ; FMad(a,b,c)
  %4209 = fmul fast float %4204, %4170
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4206, float %4171, float %4209)  ; FMad(a,b,c)
  %4211 = fadd fast float %4208, %4200
  %4212 = fadd fast float %4210, %4201
  %4213 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4214 = bitcast float %4213 to i32
  %4215 = icmp eq i32 %4214, 0
  br i1 %4215, label %4254, label %4216

; <label>:4216                                    ; preds = %4119
  %4217 = add i32 %4214, 0
  %4218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4218, %dx.types.Handle %74, float %4211, float %4212, float undef, float undef, i32 0, i32 0, i32 undef, float %4174, float %4175, float undef, float %4178, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4223 = extractvalue %dx.types.CBufRet.f32 %4221, 2
  %4224 = fsub fast float 1.000000e+00, %3829
  %4225 = call float @dx.op.binary.f32(i32 35, float %4224, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4226 = bitcast float %3829 to i32
  %4227 = sitofp i32 %4226 to float
  %4228 = fadd fast float %4227, 0xC1CFBF8940000000
  %4229 = fmul fast float %4223, %4228
  %4230 = fadd fast float %4229, 0x41CFBF8940000000
  %4231 = fptosi float %4230 to i32
  %4232 = bitcast i32 %4231 to float
  %4233 = bitcast float %4225 to i32
  %4234 = sitofp i32 %4233 to float
  %4235 = fadd fast float %4234, 0xC1CFBF8940000000
  %4236 = fmul fast float %4235, %4223
  %4237 = fadd fast float %4236, 0x41CFBF8940000000
  %4238 = fptosi float %4237 to i32
  %4239 = bitcast i32 %4238 to float
  %4240 = fmul fast float %4232, %4222
  %4241 = fmul fast float %4239, %4222
  %4242 = fsub fast float %4225, %4240
  %4243 = fadd fast float %4241, %4225
  %4244 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4246 = fsub fast float %4220, %4244
  %4247 = fsub fast float %4245, %4244
  %4248 = bitcast float %4247 to i32
  %4249 = sub nsw i32 2129859010, %4248
  %4250 = bitcast i32 %4249 to float
  %4251 = fmul fast float %4250, %4246
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fcmp fast olt float %4252, 0x3F70101020000000
  br i1 %4253, label %4392, label %4254

; <label>:4254                                    ; preds = %4216, %4119
  %4255 = phi float [ %4252, %4216 ], [ %3829, %4119 ]
  %4256 = fmul fast float %4255, %4122
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 1
  %4259 = extractvalue %dx.types.CBufRet.i32 %4257, 0
  %4260 = add i32 %4259, 0
  %4261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4262 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4261, %dx.types.Handle %73, float %4211, float %4212, float undef, float undef, i32 0, i32 0, i32 undef, float %4174, float %4175, float undef, float %4178, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = extractvalue %dx.types.ResRet.f32 %4262, 3
  %4267 = and i32 %4258, 255
  %4268 = uitofp i32 %4267 to float
  %4269 = lshr i32 %4258, 8
  %4270 = and i32 %4269, 255
  %4271 = uitofp i32 %4270 to float
  %4272 = fmul fast float %4266, %4268
  %4273 = fadd fast float %4272, %4271
  %4274 = fmul fast float %4273, 0x3F70101000000000
  %4275 = fadd fast float %4274, 0xBFB99999A0000000
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = fmul fast float %4276, 0x3FF1C71C80000000
  %4278 = call float @dx.op.binary.f32(i32 36, float %4274, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4279 = fsub fast float 1.000000e+00, %4277
  %4280 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4281 = fmul fast float %4280, %4263
  %4282 = fmul fast float %4280, %4264
  %4283 = fmul fast float %4280, %4265
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = fmul fast float %4277, %4263
  %4288 = fmul fast float %4277, %4264
  %4289 = fmul fast float %4277, %4265
  %4290 = fadd fast float %4287, %4278
  %4291 = fadd fast float %4288, %4278
  %4292 = fadd fast float %4289, %4278
  %4293 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.i32 %4296, 3
  %4298 = extractvalue %dx.types.CBufRet.i32 %4296, 2
  %4299 = add i32 %4298, 0
  %4300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4300, %dx.types.Handle %73, float %4211, float %4212, float undef, float undef, i32 0, i32 0, i32 undef, float %4174, float %4175, float undef, float %4178, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = extractvalue %dx.types.ResRet.f32 %4301, 3
  %4306 = and i32 %4297, 255
  %4307 = uitofp i32 %4306 to float
  %4308 = lshr i32 %4297, 8
  %4309 = and i32 %4308, 255
  %4310 = uitofp i32 %4309 to float
  %4311 = lshr i32 %4297, 16
  %4312 = and i32 %4311, 255
  %4313 = uitofp i32 %4312 to float
  %4314 = fmul fast float %4313, 0x3F70101000000000
  %4315 = fmul fast float %4302, %4307
  %4316 = fadd fast float %4315, %4310
  %4317 = fmul fast float %4316, 0x3F70101000000000
  %4318 = fadd fast float %4303, -5.000000e-01
  %4319 = fadd fast float %4305, -5.000000e-01
  %4320 = fmul fast float %4318, %4314
  %4321 = fmul fast float %4319, %4314
  %4322 = fadd fast float %4320, 5.000000e-01
  %4323 = fadd fast float %4321, 5.000000e-01
  %4324 = fmul fast float %4322, 2.000000e+00
  %4325 = fadd fast float %4324, -1.000000e+00
  %4326 = fmul fast float %4323, 2.000000e+00
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = fadd fast float %4325, %4327
  %4329 = fmul fast float %4328, 5.000000e-01
  %4330 = fsub fast float %4325, %4327
  %4331 = fmul fast float %4330, 5.000000e-01
  %4332 = call float @dx.op.unary.f32(i32 6, float %4329)  ; FAbs(value)
  %4333 = fsub fast float 1.000000e+00, %4332
  %4334 = call float @dx.op.unary.f32(i32 6, float %4331)  ; FAbs(value)
  %4335 = fsub fast float %4333, %4334
  %4336 = call float @dx.op.dot3.f32(i32 55, float %4329, float %4331, float %4335, float %4329, float %4331, float %4335)  ; Dot3(ax,ay,az,bx,by,bz)
  %4337 = call float @dx.op.unary.f32(i32 25, float %4336)  ; Rsqrt(value)
  %4338 = fmul fast float %4329, %4337
  %4339 = fmul fast float %4331, %4337
  %4340 = select i1 %4167, i32 %4157, i32 %4158
  %4341 = select i1 %4165, i32 %4156, i32 %4340
  %4342 = sitofp i32 %4341 to float
  %4343 = fmul fast float %4335, %4342
  %4344 = fmul fast float %4343, %4337
  %4345 = select i1 %4167, float %4344, float %4339
  %4346 = select i1 %4167, float %4339, float %4344
  %4347 = select i1 %4165, float %4344, float %4338
  %4348 = select i1 %4165, float %4339, float %4345
  %4349 = select i1 %4165, float %4338, float %4346
  %4350 = fsub fast float %4284, %4108
  %4351 = fsub fast float %4285, %4109
  %4352 = fsub fast float %4286, %4110
  %4353 = fmul fast float %4350, %4256
  %4354 = fmul fast float %4351, %4256
  %4355 = fmul fast float %4352, %4256
  %4356 = fadd fast float %4353, %4108
  %4357 = fadd fast float %4354, %4109
  %4358 = fadd fast float %4355, %4110
  %4359 = fsub fast float %4293, %4114
  %4360 = fsub fast float %4294, %4115
  %4361 = fsub fast float %4295, %4116
  %4362 = fmul fast float %4359, %4256
  %4363 = fmul fast float %4360, %4256
  %4364 = fmul fast float %4361, %4256
  %4365 = fadd fast float %4362, %4114
  %4366 = fadd fast float %4363, %4115
  %4367 = fadd fast float %4364, %4116
  %4368 = fadd fast float %4347, %4111
  %4369 = fadd fast float %4348, %4112
  %4370 = fadd fast float %4349, %4113
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4369, float %4370, float %4368, float %4369, float %4370)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = call float @dx.op.unary.f32(i32 25, float %4371)  ; Rsqrt(value)
  %4373 = fmul fast float %4368, %4372
  %4374 = fmul fast float %4369, %4372
  %4375 = fmul fast float %4370, %4372
  %4376 = fsub fast float %4373, %4111
  %4377 = fsub fast float %4374, %4112
  %4378 = fsub fast float %4375, %4113
  %4379 = fmul fast float %4376, %4256
  %4380 = fmul fast float %4377, %4256
  %4381 = fmul fast float %4378, %4256
  %4382 = fadd fast float %4379, %4111
  %4383 = fadd fast float %4380, %4112
  %4384 = fadd fast float %4381, %4113
  %4385 = call float @dx.op.binary.f32(i32 36, float %4118, float %4304)  ; FMin(a,b)
  %4386 = fsub fast float %4385, %4118
  %4387 = fmul fast float %4386, %4256
  %4388 = fadd fast float %4387, %4118
  %4389 = fsub fast float %4317, %4117
  %4390 = fmul fast float %4389, %4256
  %4391 = fadd fast float %4390, %4117
  br label %4392

; <label>:4392                                    ; preds = %4254, %4216, %4107, %3823
  %4393 = phi float [ %4356, %4254 ], [ %4108, %4216 ], [ %4108, %4107 ], [ %3432, %3823 ]
  %4394 = phi float [ %4357, %4254 ], [ %4109, %4216 ], [ %4109, %4107 ], [ %3433, %3823 ]
  %4395 = phi float [ %4358, %4254 ], [ %4110, %4216 ], [ %4110, %4107 ], [ %3434, %3823 ]
  %4396 = phi float [ %4382, %4254 ], [ %4111, %4216 ], [ %4111, %4107 ], [ %3381, %3823 ]
  %4397 = phi float [ %4383, %4254 ], [ %4112, %4216 ], [ %4112, %4107 ], [ %3382, %3823 ]
  %4398 = phi float [ %4384, %4254 ], [ %4113, %4216 ], [ %4113, %4107 ], [ %3383, %3823 ]
  %4399 = phi float [ %4365, %4254 ], [ %4114, %4216 ], [ %4114, %4107 ], [ %3417, %3823 ]
  %4400 = phi float [ %4366, %4254 ], [ %4115, %4216 ], [ %4115, %4107 ], [ %3418, %3823 ]
  %4401 = phi float [ %4367, %4254 ], [ %4116, %4216 ], [ %4116, %4107 ], [ %3419, %3823 ]
  %4402 = phi float [ %4391, %4254 ], [ %4117, %4216 ], [ %4117, %4107 ], [ %3420, %3823 ]
  %4403 = phi float [ %4388, %4254 ], [ %4118, %4216 ], [ %4118, %4107 ], [ %3393, %3823 ]
  %4404 = fcmp fast une float %3827, 0.000000e+00
  %4405 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4406 = call float @dx.op.unary.f32(i32 25, float %4405)  ; Rsqrt(value)
  br i1 %4404, label %4414, label %4407

; <label>:4407                                    ; preds = %4392
  %4408 = fmul fast float %4406, %164
  %4409 = fmul fast float %4406, %165
  %4410 = fmul fast float %4406, %166
  %4411 = fsub fast float -0.000000e+00, %4408
  %4412 = fsub fast float -0.000000e+00, %4409
  %4413 = fsub fast float -0.000000e+00, %4410
  br label %4581

; <label>:4414                                    ; preds = %4392
  %4415 = fmul fast float %164, %4406
  %4416 = fsub fast float -0.000000e+00, %4415
  %4417 = fmul fast float %165, %4406
  %4418 = fsub fast float -0.000000e+00, %4417
  %4419 = fmul fast float %166, %4406
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4418, float %4420, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = fmul fast float %3827, 2.500000e+00
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = fmul fast float %3827, 0x4013FFFFE0000000
  %4425 = fadd fast float %4424, 0xBFFFFFFFE0000000
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %3827, 0x4004000020000000
  %4428 = fadd fast float %4427, 0xBFF8000040000000
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fmul fast float %3399, 1.000000e+01
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = fmul fast float %4431, 2.000000e+00
  %4433 = fsub fast float 3.000000e+00, %4432
  %4434 = fmul fast float %4431, %4431
  %4435 = fmul fast float %4434, %4433
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = fsub fast float 0x3FE3333340000000, %4402
  %4438 = fmul fast float %4437, 0x400AAAAAA0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4436, %4439
  %4441 = fmul fast float %4393, 0x3FEA2B8620000000
  %4442 = fmul fast float %4394, 0x3FEA2B8620000000
  %4443 = fmul fast float %4395, 0x3FEA2B8620000000
  %4444 = fadd fast float %4441, 0x3FC81DFBA0000000
  %4445 = fmul fast float %4444, %4393
  %4446 = fadd fast float %4445, 0x3F910E6020000000
  %4447 = fadd fast float %4442, 0x3FC81DFBA0000000
  %4448 = fmul fast float %4447, %4394
  %4449 = fadd fast float %4448, 0x3F910E6020000000
  %4450 = fadd fast float %4443, 0x3FC81DFBA0000000
  %4451 = fmul fast float %4450, %4395
  %4452 = fadd fast float %4451, 0x3F910E6020000000
  %4453 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = fsub fast float %4453, %4393
  %4457 = fsub fast float %4454, %4394
  %4458 = fsub fast float %4455, %4395
  %4459 = fmul fast float %4456, %4423
  %4460 = fmul fast float %4459, %4440
  %4461 = fmul fast float %4457, %4423
  %4462 = fmul fast float %4461, %4440
  %4463 = fmul fast float %4458, %4423
  %4464 = fmul fast float %4463, %4440
  %4465 = fadd fast float %4460, %4393
  %4466 = fadd fast float %4462, %4394
  %4467 = fadd fast float %4464, %4395
  %4468 = fmul fast float %4403, %4403
  %4469 = fmul fast float %4468, %4468
  %4470 = fadd fast float %4426, 1.000000e+00
  %4471 = fsub fast float %4470, %4440
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fsub fast float 1.000000e+00, %4469
  %4476 = call float @dx.op.binary.f32(i32 36, float %4472, float %4475)  ; FMin(a,b)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4476, float %4477)  ; FMax(a,b)
  %4479 = fadd fast float %4474, 0xBFE4CCCCC0000000
  %4480 = fmul fast float %4479, 0x4006DB6DA0000000
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, 2.000000e+00
  %4483 = fsub fast float 3.000000e+00, %4482
  %4484 = bitcast float %4399 to i32
  %4485 = ashr i32 %4484, 1
  %4486 = add nsw i32 %4485, 532487669
  %4487 = bitcast i32 %4486 to float
  %4488 = fsub fast float 1.000000e+00, %4487
  %4489 = bitcast float %4488 to i32
  %4490 = sub nsw i32 2129859010, %4489
  %4491 = bitcast i32 %4490 to float
  %4492 = fmul fast float %4491, 2.000000e+00
  %4493 = bitcast float %4400 to i32
  %4494 = ashr i32 %4493, 1
  %4495 = add nsw i32 %4494, 532487669
  %4496 = bitcast i32 %4495 to float
  %4497 = fsub fast float 1.000000e+00, %4496
  %4498 = bitcast float %4497 to i32
  %4499 = sub nsw i32 2129859010, %4498
  %4500 = bitcast i32 %4499 to float
  %4501 = fmul fast float %4500, 2.000000e+00
  %4502 = bitcast float %4401 to i32
  %4503 = ashr i32 %4502, 1
  %4504 = add nsw i32 %4503, 532487669
  %4505 = bitcast i32 %4504 to float
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = bitcast float %4506 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = fmul fast float %4509, 2.000000e+00
  %4511 = fsub fast float 0x4002A9FBE0000000, %4492
  %4512 = fadd fast float %4492, 0x3FD54FDF00000000
  %4513 = bitcast float %4512 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, %4511
  %4517 = fmul fast float %4516, %4516
  %4518 = fsub fast float 0x4002A9FBE0000000, %4501
  %4519 = fadd fast float %4501, 0x3FD54FDF00000000
  %4520 = bitcast float %4519 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = fmul fast float %4522, %4518
  %4524 = fmul fast float %4523, %4523
  %4525 = fsub fast float 0x4002A9FBE0000000, %4510
  %4526 = fadd fast float %4510, 0x3FD54FDF00000000
  %4527 = bitcast float %4526 to i32
  %4528 = sub nsw i32 2129859010, %4527
  %4529 = bitcast i32 %4528 to float
  %4530 = fmul fast float %4529, %4525
  %4531 = fmul fast float %4530, %4530
  %4532 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4517)  ; FMax(a,b)
  %4533 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4524)  ; FMax(a,b)
  %4534 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4531)  ; FMax(a,b)
  %4535 = fsub fast float 1.000000e+00, %4421
  %4536 = fadd fast float %4535, %4436
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fsub fast float 1.000000e+00, %3808
  %4539 = fmul fast float %4478, %4538
  %4540 = fmul fast float %4481, %4481
  %4541 = fmul fast float %4540, %4539
  %4542 = fmul fast float %4541, %4483
  %4543 = fmul fast float %4538, 0xBFE99999A0000000
  %4544 = fmul fast float %4543, %4423
  %4545 = fmul fast float %4544, %4440
  %4546 = fadd fast float %4545, 1.000000e+00
  %4547 = fadd fast float %4402, -1.000000e+00
  %4548 = fmul fast float %4546, %4547
  %4549 = fadd fast float %4548, 1.000000e+00
  %4550 = fsub fast float %4532, %4399
  %4551 = fsub fast float %4533, %4400
  %4552 = fsub fast float %4534, %4401
  %4553 = fmul fast float %4542, %4550
  %4554 = fmul fast float %4542, %4551
  %4555 = fmul fast float %4542, %4552
  %4556 = fadd fast float %4553, %4399
  %4557 = fadd fast float %4554, %4400
  %4558 = fadd fast float %4555, %4401
  %4559 = fsub fast float %84, %4396
  %4560 = fsub fast float %85, %4397
  %4561 = fsub fast float %86, %4398
  %4562 = fmul fast float %4542, %4559
  %4563 = fmul fast float %4542, %4560
  %4564 = fmul fast float %4542, %4561
  %4565 = fadd fast float %4562, %4396
  %4566 = fadd fast float %4563, %4397
  %4567 = fadd fast float %4564, %4398
  %4568 = fmul fast float %4542, %4537
  %4569 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = fmul fast float %4568, %4570
  %4572 = fadd fast float %4571, %4569
  %4573 = fsub fast float 1.000000e+00, %4403
  %4574 = fmul fast float %4542, %4573
  %4575 = fadd fast float %4574, %4403
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.unary.f32(i32 25, float %4576)  ; Rsqrt(value)
  %4578 = fmul fast float %4565, %4577
  %4579 = fmul fast float %4566, %4577
  %4580 = fmul fast float %4567, %4577
  br label %4581

; <label>:4581                                    ; preds = %4414, %4407
  %4582 = phi float [ %4413, %4407 ], [ %4420, %4414 ]
  %4583 = phi float [ %4412, %4407 ], [ %4418, %4414 ]
  %4584 = phi float [ %4411, %4407 ], [ %4416, %4414 ]
  %4585 = phi float [ %4410, %4407 ], [ %4419, %4414 ]
  %4586 = phi float [ %4409, %4407 ], [ %4417, %4414 ]
  %4587 = phi float [ %4408, %4407 ], [ %4415, %4414 ]
  %4588 = phi float [ %4393, %4407 ], [ %4465, %4414 ]
  %4589 = phi float [ %4394, %4407 ], [ %4466, %4414 ]
  %4590 = phi float [ %4395, %4407 ], [ %4467, %4414 ]
  %4591 = phi float [ %4396, %4407 ], [ %4578, %4414 ]
  %4592 = phi float [ %4397, %4407 ], [ %4579, %4414 ]
  %4593 = phi float [ %4398, %4407 ], [ %4580, %4414 ]
  %4594 = phi float [ %4399, %4407 ], [ %4556, %4414 ]
  %4595 = phi float [ %4400, %4407 ], [ %4557, %4414 ]
  %4596 = phi float [ %4401, %4407 ], [ %4558, %4414 ]
  %4597 = phi float [ %4402, %4407 ], [ %4572, %4414 ]
  %4598 = phi float [ %4403, %4407 ], [ %4575, %4414 ]
  %4599 = select i1 %203, float 0.000000e+00, float %4596
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4584, float %4583, float %4582)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4586, float %4585, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = fmul fast float %4602, 2.000000e+00
  %4604 = fmul fast float %4603, %4591
  %4605 = fmul fast float %4603, %4592
  %4606 = fmul fast float %4603, %4593
  %4607 = fsub fast float %4587, %4604
  %4608 = fsub fast float %4586, %4605
  %4609 = fsub fast float %4585, %4606
  %4610 = call float @dx.op.binary.f32(i32 36, float %4598, float 1.000000e+00)  ; FMin(a,b)
  %4611 = fsub fast float 1.000000e+00, %4598
  %4612 = bitcast float %4611 to i32
  %4613 = sub nsw i32 2129859010, %4612
  %4614 = fsub fast float 1.000000e+00, %54
  %4615 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.binary.f32(i32 35, float %4615, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4617 = fdiv fast float %4614, %4616
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4619, 5.000000e-01
  %4621 = fadd fast float %4620, 5.000000e-01
  %4622 = fmul fast float %4621, %54
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4624, %4617
  %4626 = fadd fast float %4622, %4625
  %4627 = fsub fast float 5.000000e-01, %4620
  %4628 = fmul fast float %4627, %4588
  %4629 = fmul fast float %4627, %4589
  %4630 = fmul fast float %4627, %4590
  %4631 = fadd fast float %4626, %4628
  %4632 = fadd fast float %4626, %4629
  %4633 = fadd fast float %4626, %4630
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, 5.000000e-01
  %4637 = fadd fast float %4636, 5.000000e-01
  %4638 = fmul fast float %4637, %54
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4640, %4617
  %4642 = fadd fast float %4638, %4641
  %4643 = fsub fast float 5.000000e-01, %4636
  %4644 = fmul fast float %4643, %4588
  %4645 = fmul fast float %4643, %4589
  %4646 = fmul fast float %4643, %4590
  %4647 = fadd fast float %4642, %4644
  %4648 = fadd fast float %4642, %4645
  %4649 = fadd fast float %4642, %4646
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = call float @dx.op.binary.f32(i32 36, float %4588, float %4651)  ; FMin(a,b)
  %4653 = fsub fast float 1.000000e+00, %4610
  %4654 = fmul fast float %4652, %4653
  %4655 = fsub fast float 1.000000e+00, %4654
  %4656 = bitcast float %4655 to i32
  %4657 = sub nsw i32 2129859010, %4656
  %4658 = bitcast i32 %4657 to float
  %4659 = call float @dx.op.binary.f32(i32 36, float %4589, float %4651)  ; FMin(a,b)
  %4660 = fmul fast float %4659, %4653
  %4661 = fsub fast float 1.000000e+00, %4660
  %4662 = bitcast float %4661 to i32
  %4663 = sub nsw i32 2129859010, %4662
  %4664 = bitcast i32 %4663 to float
  %4665 = call float @dx.op.binary.f32(i32 36, float %4590, float %4651)  ; FMin(a,b)
  %4666 = fmul fast float %4665, %4653
  %4667 = fsub fast float 1.000000e+00, %4666
  %4668 = bitcast float %4667 to i32
  %4669 = sub nsw i32 2129859010, %4668
  %4670 = bitcast i32 %4669 to float
  %4671 = fmul fast float %4610, %55
  %4672 = fmul fast float %4671, %4631
  %4673 = fmul fast float %4672, %4658
  %4674 = fmul fast float %4610, %56
  %4675 = fmul fast float %4674, %4632
  %4676 = fmul fast float %4675, %4664
  %4677 = fmul fast float %4610, %57
  %4678 = fmul fast float %4677, %4633
  %4679 = fmul fast float %4678, %4670
  %4680 = call float @dx.op.binary.f32(i32 36, float %4594, float %4651)  ; FMin(a,b)
  %4681 = fmul fast float %4680, %4653
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = call float @dx.op.binary.f32(i32 36, float %4595, float %4651)  ; FMin(a,b)
  %4687 = fmul fast float %4686, %4653
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = call float @dx.op.binary.f32(i32 36, float %4599, float %4651)  ; FMin(a,b)
  %4693 = fmul fast float %4692, %4653
  %4694 = fsub fast float 1.000000e+00, %4693
  %4695 = bitcast float %4694 to i32
  %4696 = sub nsw i32 2129859010, %4695
  %4697 = bitcast i32 %4696 to float
  %4698 = fmul fast float %4671, %4647
  %4699 = fmul fast float %4698, %4685
  %4700 = fmul fast float %4674, %4648
  %4701 = fmul fast float %4700, %4691
  %4702 = fmul fast float %4677, %4649
  %4703 = fmul fast float %4702, %4697
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4676, float %4679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = select i1 %203, float 0.000000e+00, float %4673
  %4706 = select i1 %203, float %4704, float %4676
  %4707 = select i1 %203, float 0.000000e+00, float %4679
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4701, float %4703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = select i1 %203, float 0.000000e+00, float %4699
  %4710 = select i1 %203, float %4708, float %4701
  %4711 = select i1 %203, float 0.000000e+00, float %4703
  %4712 = fmul fast float %4601, 9.843750e-01
  %4713 = fmul fast float %4597, 9.843750e-01
  %4714 = fadd fast float %4712, 7.812500e-03
  %4715 = fadd fast float %4713, 7.812500e-03
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4714, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 2
  %4718 = extractvalue %dx.types.ResRet.f32 %4716, 3
  %4719 = fmul fast float %4717, %4594
  %4720 = fmul fast float %4717, %4595
  %4721 = fmul fast float %4717, %4599
  %4722 = fadd fast float %4719, %4718
  %4723 = fadd fast float %4720, %4718
  %4724 = fadd fast float %4721, %4718
  %4725 = fcmp fast ogt float %3394, 0.000000e+00
  br i1 %4725, label %4726, label %4752

; <label>:4726                                    ; preds = %4581
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3394, float %4601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = extractvalue %dx.types.ResRet.f32 %4727, 1
  %4730 = extractvalue %dx.types.ResRet.f32 %4727, 2
  %4731 = fadd fast float %4728, -5.000000e-01
  %4732 = fadd fast float %4729, -5.000000e-01
  %4733 = fadd fast float %4730, -5.000000e-01
  %4734 = fsub fast float 1.000000e+00, %4594
  %4735 = fsub fast float 1.000000e+00, %4595
  %4736 = fsub fast float 1.000000e+00, %4599
  %4737 = fmul fast float %4594, 4.000000e+00
  %4738 = fmul fast float %4737, %4734
  %4739 = fmul fast float %4738, %4731
  %4740 = fmul fast float %4595, 4.000000e+00
  %4741 = fmul fast float %4740, %4735
  %4742 = fmul fast float %4741, %4732
  %4743 = fmul fast float %4599, 4.000000e+00
  %4744 = fmul fast float %4743, %4736
  %4745 = fmul fast float %4744, %4733
  %4746 = fadd fast float %4739, %4722
  %4747 = fadd fast float %4742, %4723
  %4748 = fadd fast float %4745, %4724
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  br label %4752

; <label>:4752                                    ; preds = %4726, %4581
  %4753 = phi float [ %4749, %4726 ], [ %4722, %4581 ]
  %4754 = phi float [ %4750, %4726 ], [ %4723, %4581 ]
  %4755 = phi float [ %4751, %4726 ], [ %4724, %4581 ]
  %4756 = call float @dx.op.binary.f32(i32 35, float %4754, float %4755)  ; FMax(a,b)
  %4757 = call float @dx.op.binary.f32(i32 35, float %4753, float %4756)  ; FMax(a,b)
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = fmul fast float %4758, %4705
  %4760 = fmul fast float %4758, %4706
  %4761 = fmul fast float %4758, %4707
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4588, float %4589, float %4590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = fcmp fast ogt float %4762, 0x3E7FF19E20000000
  %4764 = fdiv fast float 1.000000e+00, %4762
  %4765 = select i1 %4763, float %4764, float 0.000000e+00
  %4766 = fmul fast float %4765, %4588
  %4767 = fmul fast float %4765, %4589
  %4768 = fmul fast float %4765, %4590
  %4769 = fadd fast float %4766, -1.000000e+00
  %4770 = fadd fast float %4767, -1.000000e+00
  %4771 = fadd fast float %4768, -1.000000e+00
  %4772 = fmul fast float %4769, 5.000000e-01
  %4773 = fmul fast float %4770, 5.000000e-01
  %4774 = fmul fast float %4771, 5.000000e-01
  %4775 = fadd fast float %4772, 1.000000e+00
  %4776 = fadd fast float %4773, 1.000000e+00
  %4777 = fadd fast float %4774, 1.000000e+00
  %4778 = fmul fast float %4753, %4709
  %4779 = fmul fast float %4754, %4710
  %4780 = fmul fast float %4755, %4711
  %4781 = fsub fast float 1.000000e+00, %4601
  %4782 = bitcast float %4781 to i32
  %4783 = sitofp i32 %4782 to float
  %4784 = fmul fast float %4783, 5.000000e+00
  %4785 = fadd fast float %4784, 0xC1EFBF8940000000
  %4786 = fptosi float %4785 to i32
  %4787 = bitcast i32 %4786 to float
  %4788 = fmul fast float %4787, %3395
  %4789 = fmul fast float %4705, %4788
  %4790 = fmul fast float %4789, %4758
  %4791 = fmul fast float %4790, %4775
  %4792 = fmul fast float %4706, %4788
  %4793 = fmul fast float %4792, %4758
  %4794 = fmul fast float %4793, %4776
  %4795 = fmul fast float %4707, %4788
  %4796 = fmul fast float %4795, %4758
  %4797 = fmul fast float %4796, %4777
  %4798 = fmul fast float %4759, %3391
  %4799 = fmul fast float %4760, %3391
  %4800 = fmul fast float %4761, %3391
  %4801 = fadd fast float %4778, %3387
  %4802 = fadd fast float %4801, %4791
  %4803 = fmul fast float %4802, %3391
  %4804 = fadd fast float %4779, %3388
  %4805 = fadd fast float %4804, %4794
  %4806 = fmul fast float %4805, %3391
  %4807 = fadd fast float %4780, %3389
  %4808 = fadd fast float %4807, %4797
  %4809 = fmul fast float %4808, %3391
  %4810 = bitcast i32 %4613 to float
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 3
  %4813 = fcmp fast oeq float %4812, 0.000000e+00
  br i1 %4813, label %5041, label %4814

; <label>:4814                                    ; preds = %4752
  %4815 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4816 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4817 = extractvalue %dx.types.CBufRet.f32 %4811, 2
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.CBufRet.f32 %4818, 2
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4820, float %4821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = select i1 %203, float %4823, float %4819
  %4827 = select i1 %203, float %4825, float %4820
  %4828 = select i1 %203, float %4824, float %4821
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 1
  %4831 = fcmp fast une float %4830, 0.000000e+00
  br i1 %4831, label %4832, label %4849

; <label>:4832                                    ; preds = %4814
  %4833 = fptoui float %77 to i32
  %4834 = fptoui float %78 to i32
  %4835 = lshr i32 %4833, 4
  %4836 = lshr i32 %4834, 4
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = fptoui float %4838 to i32
  %4840 = add i32 %4839, 15
  %4841 = lshr i32 %4840, 4
  %4842 = mul i32 %4841, %4836
  %4843 = add i32 %4842, %4835
  %4844 = shl i32 %4843, 3
  %4845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.i32 %4845, 0
  %4847 = and i32 %4846, -268435456
  %4848 = icmp eq i32 %4847, -1342177280
  br i1 %4848, label %4859, label %4849

; <label>:4849                                    ; preds = %4832, %4814
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4853 = fmul fast float %4851, %77
  %4854 = fmul fast float %4852, %78
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %30, float %4853, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.ResRet.f32 %4855, 2
  br label %4859

; <label>:4859                                    ; preds = %4849, %4832
  %4860 = phi float [ %4856, %4849 ], [ 0.000000e+00, %4832 ]
  %4861 = phi float [ %4857, %4849 ], [ 0.000000e+00, %4832 ]
  %4862 = phi float [ %4858, %4849 ], [ 0.000000e+00, %4832 ]
  %4863 = call float @dx.op.binary.f32(i32 36, float %4861, float %4862)  ; FMin(a,b)
  %4864 = call float @dx.op.binary.f32(i32 36, float %4860, float %4863)  ; FMin(a,b)
  %4865 = fcmp fast ogt float %4864, 0.000000e+00
  br i1 %4865, label %4866, label %5041, !dx.controlflow.hints !75

; <label>:4866                                    ; preds = %4859
  %4867 = fmul fast float %4860, %4826
  %4868 = fmul fast float %4861, %4827
  %4869 = fmul fast float %4862, %4828
  %4870 = fsub fast float %4815, %4587
  %4871 = fsub fast float %4816, %4586
  %4872 = fsub fast float %4817, %4585
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4871, float %4872, float %4870, float %4871, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.unary.f32(i32 25, float %4873)  ; Rsqrt(value)
  %4875 = fmul fast float %4874, %4870
  %4876 = fmul fast float %4874, %4871
  %4877 = fmul fast float %4874, %4872
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4816, float %4817, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4583, float %4582, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4881 = fmul fast float %4880, %4880
  %4882 = fmul fast float %4881, %4810
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4883, %4880
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = fmul fast float %4885, %4885
  %4887 = call float @dx.op.unary.f32(i32 6, float %4878)  ; FAbs(value)
  %4888 = fsub fast float 1.000000e+00, %4597
  %4889 = call float @dx.op.binary.f32(i32 35, float %4888, float 0x3F847AE140000000)  ; FMax(a,b)
  %4890 = fmul fast float %4889, %4889
  %4891 = fmul fast float %4890, %4890
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = fmul fast float %4601, %4601
  %4894 = fmul fast float %4893, %4892
  %4895 = fadd fast float %4894, %4891
  %4896 = bitcast float %4895 to i32
  %4897 = ashr i32 %4896, 1
  %4898 = add nsw i32 %4897, 532487669
  %4899 = bitcast i32 %4898 to float
  %4900 = fadd fast float %4899, %4601
  %4901 = fmul fast float %4891, %4886
  %4902 = fsub fast float 1.000000e+00, %4886
  %4903 = fadd fast float %4902, %4901
  %4904 = fmul fast float %4887, %4887
  %4905 = fmul fast float %4904, %4892
  %4906 = fadd fast float %4905, %4891
  %4907 = bitcast float %4906 to i32
  %4908 = ashr i32 %4907, 1
  %4909 = add nsw i32 %4908, 532487669
  %4910 = bitcast i32 %4909 to float
  %4911 = fadd fast float %4910, %4887
  %4912 = fmul fast float %4903, %4903
  %4913 = fmul fast float %4912, %4900
  %4914 = fmul fast float %4913, %4911
  %4915 = fdiv fast float 0x3FF0A00000000000, %4914
  %4916 = fmul fast float %4915, %4891
  %4917 = call float @dx.op.unary.f32(i32 6, float %4879)  ; FAbs(value)
  %4918 = fsub fast float 1.000000e+00, %4917
  %4919 = bitcast float %4918 to i32
  %4920 = sitofp i32 %4919 to float
  %4921 = fmul fast float %4920, 5.000000e+00
  %4922 = fadd fast float %4921, 0xC1EFBF8940000000
  %4923 = fptosi float %4922 to i32
  %4924 = bitcast i32 %4923 to float
  %4925 = fsub fast float 1.000000e+00, %4594
  %4926 = fsub fast float 1.000000e+00, %4595
  %4927 = fsub fast float 1.000000e+00, %4599
  %4928 = fmul fast float %4924, %4925
  %4929 = fmul fast float %4924, %4926
  %4930 = fmul fast float %4924, %4927
  %4931 = fadd fast float %4928, %4594
  %4932 = fadd fast float %4929, %4595
  %4933 = fadd fast float %4930, %4599
  br i1 %4725, label %4934, label %4957

; <label>:4934                                    ; preds = %4866
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3394, float %4917, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4939 = fadd fast float %4936, -5.000000e-01
  %4940 = fadd fast float %4937, -5.000000e-01
  %4941 = fadd fast float %4938, -5.000000e-01
  %4942 = fmul fast float %4594, 4.000000e+00
  %4943 = fmul fast float %4942, %4925
  %4944 = fmul fast float %4943, %4939
  %4945 = fmul fast float %4595, 4.000000e+00
  %4946 = fmul fast float %4945, %4926
  %4947 = fmul fast float %4946, %4940
  %4948 = fmul fast float %4599, 4.000000e+00
  %4949 = fmul fast float %4948, %4927
  %4950 = fmul fast float %4949, %4941
  %4951 = fadd fast float %4944, %4931
  %4952 = fadd fast float %4947, %4932
  %4953 = fadd fast float %4950, %4933
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  br label %4957

; <label>:4957                                    ; preds = %4934, %4866
  %4958 = phi float [ %4954, %4934 ], [ %4931, %4866 ]
  %4959 = phi float [ %4955, %4934 ], [ %4932, %4866 ]
  %4960 = phi float [ %4956, %4934 ], [ %4933, %4866 ]
  %4961 = fmul fast float %4878, 9.843750e-01
  %4962 = fadd fast float %4961, 7.812500e-03
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4962, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 2
  %4965 = extractvalue %dx.types.ResRet.f32 %4963, 3
  %4966 = fmul fast float %4964, %4594
  %4967 = fmul fast float %4964, %4595
  %4968 = fmul fast float %4964, %4599
  %4969 = fadd fast float %4966, %4965
  %4970 = fadd fast float %4967, %4965
  %4971 = fadd fast float %4968, %4965
  br i1 %4725, label %4972, label %4995

; <label>:4972                                    ; preds = %4957
  %4973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3394, float %4878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.ResRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.ResRet.f32 %4973, 2
  %4977 = fadd fast float %4974, -5.000000e-01
  %4978 = fadd fast float %4975, -5.000000e-01
  %4979 = fadd fast float %4976, -5.000000e-01
  %4980 = fmul fast float %4594, 4.000000e+00
  %4981 = fmul fast float %4980, %4925
  %4982 = fmul fast float %4981, %4977
  %4983 = fmul fast float %4595, 4.000000e+00
  %4984 = fmul fast float %4983, %4926
  %4985 = fmul fast float %4984, %4978
  %4986 = fmul fast float %4599, 4.000000e+00
  %4987 = fmul fast float %4986, %4927
  %4988 = fmul fast float %4987, %4979
  %4989 = fadd fast float %4982, %4969
  %4990 = fadd fast float %4985, %4970
  %4991 = fadd fast float %4988, %4971
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  br label %4995

; <label>:4995                                    ; preds = %4972, %4957
  %4996 = phi float [ %4992, %4972 ], [ %4969, %4957 ]
  %4997 = phi float [ %4993, %4972 ], [ %4970, %4957 ]
  %4998 = phi float [ %4994, %4972 ], [ %4971, %4957 ]
  %4999 = call float @dx.op.binary.f32(i32 35, float %4997, float %4998)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4996, float %4999)  ; FMax(a,b)
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = fmul fast float %4958, %4916
  %5003 = fmul fast float %4959, %4916
  %5004 = fmul fast float %4960, %4916
  %5005 = fsub fast float 1.000000e+00, %4879
  %5006 = bitcast float %5005 to i32
  %5007 = sitofp i32 %5006 to float
  %5008 = fmul fast float %5007, 5.000000e+00
  %5009 = fadd fast float %5008, 0xC1EFBF8940000000
  %5010 = fptosi float %5009 to i32
  %5011 = bitcast i32 %5010 to float
  %5012 = fmul fast float %5011, %3395
  %5013 = fmul fast float %5001, %5012
  %5014 = fmul fast float %5013, %4775
  %5015 = fmul fast float %5013, %4776
  %5016 = fmul fast float %5013, %4777
  %5017 = fadd fast float %5014, %5002
  %5018 = fadd fast float %5015, %5003
  %5019 = fadd fast float %5016, %5004
  %5020 = fmul fast float %4884, %4867
  %5021 = fmul fast float %5020, %5001
  %5022 = fmul fast float %4884, %4868
  %5023 = fmul fast float %5022, %5001
  %5024 = fmul fast float %4884, %4869
  %5025 = fmul fast float %5024, %5001
  %5026 = fmul fast float %5020, %5017
  %5027 = fmul fast float %5022, %5018
  %5028 = fmul fast float %5024, %5019
  %5029 = fadd fast float %5021, %4759
  %5030 = fmul fast float %5029, %3391
  %5031 = fadd fast float %5023, %4760
  %5032 = fmul fast float %5031, %3391
  %5033 = fadd fast float %5025, %4761
  %5034 = fmul fast float %5033, %3391
  %5035 = fadd fast float %5026, %4802
  %5036 = fmul fast float %5035, %3391
  %5037 = fadd fast float %5027, %4805
  %5038 = fmul fast float %5037, %3391
  %5039 = fadd fast float %5028, %4808
  %5040 = fmul fast float %5039, %3391
  br label %5041

; <label>:5041                                    ; preds = %4995, %4859, %4752
  %5042 = phi float [ %4803, %4752 ], [ %4803, %4859 ], [ %5036, %4995 ]
  %5043 = phi float [ %4806, %4752 ], [ %4806, %4859 ], [ %5038, %4995 ]
  %5044 = phi float [ %4809, %4752 ], [ %4809, %4859 ], [ %5040, %4995 ]
  %5045 = phi float [ %4798, %4752 ], [ %4798, %4859 ], [ %5030, %4995 ]
  %5046 = phi float [ %4799, %4752 ], [ %4799, %4859 ], [ %5032, %4995 ]
  %5047 = phi float [ %4800, %4752 ], [ %4800, %4859 ], [ %5034, %4995 ]
  %5048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.i32 %5048, 0
  %5050 = icmp eq i32 %5049, 0
  br i1 %5050, label %5485, label %5051

; <label>:5051                                    ; preds = %5041
  %5052 = fptoui float %77 to i32
  %5053 = fptoui float %78 to i32
  %5054 = lshr i32 %5052, 4
  %5055 = lshr i32 %5053, 4
  %5056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.i32 %5056, 0
  %5058 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5055, i32 %5057, i32 %5054)  ; UMad(a,b,c)
  %5059 = add nsw i32 %5049, -1
  %5060 = call i32 @dx.op.binary.i32(i32 37, i32 %5059, i32 0)  ; IMax(a,b)
  %5061 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5062 = fptoui float %5061 to i32
  %5063 = lshr i32 %5062, 5
  %5064 = call i32 @dx.op.binary.i32(i32 40, i32 %5063, i32 8191)  ; UMin(a,b)
  %5065 = shl i32 %5064, 2
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = lshr i32 %5067, 16
  %5069 = and i32 %5067, 65535
  %5070 = lshr i32 %5067, 21
  %5071 = lshr i32 %5069, 5
  %5072 = call i32 @dx.op.binary.i32(i32 40, i32 %5071, i32 %5060)  ; UMin(a,b)
  %5073 = icmp ugt i32 %5070, %5072
  br i1 %5073, label %5485, label %5074

; <label>:5074                                    ; preds = %5051
  br label %5075

; <label>:5075                                    ; preds = %5475, %5074
  %5076 = phi i32 [ %5482, %5475 ], [ %5070, %5074 ]
  %5077 = phi float [ %5476, %5475 ], [ %5042, %5074 ]
  %5078 = phi float [ %5477, %5475 ], [ %5043, %5074 ]
  %5079 = phi float [ %5478, %5475 ], [ %5044, %5074 ]
  %5080 = phi float [ %5479, %5475 ], [ %5045, %5074 ]
  %5081 = phi float [ %5480, %5475 ], [ %5046, %5074 ]
  %5082 = phi float [ %5481, %5475 ], [ %5047, %5074 ]
  %5083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.i32 %5083, 0
  %5085 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5058, i32 %5084, i32 %5076)  ; UMad(a,b,c)
  %5086 = shl i32 %5085, 2
  %5087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.i32 %5087, 0
  %5089 = shl i32 %5076, 5
  %5090 = sub nsw i32 %5068, %5089
  %5091 = call i32 @dx.op.binary.i32(i32 37, i32 %5090, i32 0)  ; IMax(a,b)
  %5092 = call i32 @dx.op.binary.i32(i32 38, i32 %5091, i32 31)  ; IMin(a,b)
  %5093 = sub nsw i32 1, %5068
  %5094 = add nsw i32 %5093, %5069
  %5095 = call i32 @dx.op.binary.i32(i32 37, i32 %5094, i32 0)  ; IMax(a,b)
  %5096 = call i32 @dx.op.binary.i32(i32 38, i32 %5095, i32 32)  ; IMin(a,b)
  %5097 = and i32 %5096, 31
  %5098 = shl i32 -1, %5097
  %5099 = xor i32 %5098, -1
  %5100 = and i32 %5092, 31
  %5101 = shl i32 %5099, %5100
  %5102 = icmp eq i32 %5096, 32
  %5103 = select i1 %5102, i32 -1, i32 %5101
  %5104 = and i32 %5103, %5088
  %5105 = icmp eq i32 %5104, 0
  br i1 %5105, label %5475, label %5106

; <label>:5106                                    ; preds = %5075
  br label %5107

; <label>:5107                                    ; preds = %5187, %5106
  %5108 = phi i32 [ %5119, %5187 ], [ %5104, %5106 ]
  %5109 = phi float [ %5188, %5187 ], [ %5077, %5106 ]
  %5110 = phi float [ %5189, %5187 ], [ %5078, %5106 ]
  %5111 = phi float [ %5190, %5187 ], [ %5079, %5106 ]
  %5112 = phi float [ %5191, %5187 ], [ %5080, %5106 ]
  %5113 = phi float [ %5192, %5187 ], [ %5081, %5106 ]
  %5114 = phi float [ %5193, %5187 ], [ %5082, %5106 ]
  %5115 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5108)  ; FirstbitLo(value)
  %5116 = add i32 %5115, %5089
  %5117 = and i32 %5115, 31
  %5118 = shl i32 1, %5117
  %5119 = xor i32 %5118, %5108
  %5120 = mul i32 %5116, 112
  %5121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5120, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.ResRet.f32 %5121, 2
  %5125 = or i32 %5120, 12
  %5126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5125, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = add i32 %5120, 44
  %5129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5128, i32 undef)  ; BufferLoad(srv,index,wot)
  %5130 = extractvalue %dx.types.ResRet.f32 %5129, 0
  %5131 = add i32 %5120, 48
  %5132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5131, i32 undef)  ; BufferLoad(srv,index,wot)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.ResRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.ResRet.f32 %5132, 2
  %5136 = add i32 %5120, 80
  %5137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 1
  %5139 = extractvalue %dx.types.ResRet.f32 %5137, 2
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = select i1 %203, float %5138, float %5122
  %5142 = select i1 %203, float %5140, float %5123
  %5143 = select i1 %203, float %5139, float %5124
  %5144 = fsub fast float %5133, %164
  %5145 = fsub fast float %5134, %165
  %5146 = fsub fast float %5135, %166
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float %5144, float %5145, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.unary.f32(i32 24, float %5147)  ; Sqrt(value)
  %5149 = fdiv fast float 1.000000e+00, %5148
  %5150 = fmul fast float %5149, %5144
  %5151 = fmul fast float %5149, %5145
  %5152 = fmul fast float %5149, %5146
  %5153 = fadd fast float %5148, %5127
  %5154 = fdiv fast float 1.000000e+00, %5153
  %5155 = fmul float %5130, %5154
  %5156 = fmul float %5155, %5155
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = and i32 %5118, %5104
  %5159 = icmp eq i32 %5158, 0
  br i1 %5159, label %5182, label %5160, !dx.controlflow.hints !76

; <label>:5160                                    ; preds = %5107
  %5161 = lshr i32 %5052, 5
  %5162 = lshr i32 %5053, 5
  %5163 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5161, i32 %5162, i32 %5116, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5164 = extractvalue %dx.types.ResRet.i32 %5163, 0
  %5165 = and i32 %5164, 3
  %5166 = icmp eq i32 %5165, 0
  %5167 = select i1 %5166, float 1.000000e+00, float 0.000000e+00
  %5168 = icmp eq i32 %5165, 3
  br i1 %5168, label %5169, label %5182

; <label>:5169                                    ; preds = %5160
  %5170 = lshr i32 %5164, 10
  %5171 = and i32 %5170, 8160
  %5172 = and i32 %5053, 31
  %5173 = or i32 %5171, %5172
  %5174 = lshr i32 %5164, 1
  %5175 = and i32 %5174, 16352
  %5176 = and i32 %5052, 31
  %5177 = or i32 %5175, %5176
  %5178 = lshr i32 %5164, 23
  %5179 = and i32 %5178, 255
  %5180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5177, i32 %5173, i32 %5179, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  br label %5182

; <label>:5182                                    ; preds = %5169, %5160, %5107
  %5183 = phi float [ %5181, %5169 ], [ %5167, %5160 ], [ 0.000000e+00, %5107 ]
  %5184 = call float @dx.op.binary.f32(i32 36, float %5183, float %5183)  ; FMin(a,b)
  %5185 = call float @dx.op.binary.f32(i32 36, float %5183, float %5184)  ; FMin(a,b)
  %5186 = fcmp fast ogt float %5185, 0.000000e+00
  br i1 %5186, label %5195, label %5187, !dx.controlflow.hints !77

; <label>:5187                                    ; preds = %5431, %5182
  %5188 = phi float [ %5109, %5182 ], [ %5471, %5431 ]
  %5189 = phi float [ %5110, %5182 ], [ %5472, %5431 ]
  %5190 = phi float [ %5111, %5182 ], [ %5473, %5431 ]
  %5191 = phi float [ %5112, %5182 ], [ %5465, %5431 ]
  %5192 = phi float [ %5113, %5182 ], [ %5466, %5431 ]
  %5193 = phi float [ %5114, %5182 ], [ %5467, %5431 ]
  %5194 = icmp eq i32 %5108, %5118
  br i1 %5194, label %5474, label %5107

; <label>:5195                                    ; preds = %5182
  %5196 = fmul fast float %5183, %5141
  %5197 = fmul fast float %5183, %5142
  %5198 = fmul fast float %5183, %5143
  %5199 = fsub fast float %5135, %3795
  %5200 = fcmp fast ogt float %5199, 0.000000e+00
  %5201 = fsub fast float %166, %3795
  %5202 = fcmp fast ogt float %5201, 0.000000e+00
  %5203 = xor i1 %5202, %5200
  %5204 = fsub fast float %3795, %5135
  %5205 = fmul fast float %5204, 2.000000e+00
  %5206 = fadd fast float %5205, %5135
  %5207 = select i1 %5203, float %5135, float %5206
  %5208 = fsub fast float %5207, %166
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5208, float %5144, float %5145, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.unary.f32(i32 25, float %5209)  ; Rsqrt(value)
  %5211 = fmul fast float %5210, %5144
  %5212 = fmul fast float %5210, %5145
  %5213 = fmul fast float %5210, %5208
  %5214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5211, float %5212, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = fdiv fast float 1.000000e+00, %5215
  %5217 = fmul fast float %5216, %5214
  %5218 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5201, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = fcmp fast ogt float %5218, 0.000000e+00
  %5220 = fcmp fast olt float %5218, 0.000000e+00
  %5221 = zext i1 %5219 to i32
  %5222 = zext i1 %5220 to i32
  %5223 = sub nsw i32 %5221, %5222
  %5224 = sitofp i32 %5223 to float
  %5225 = fsub fast float %5207, %3795
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5225, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = fcmp fast ogt float %5226, 0.000000e+00
  %5228 = fcmp fast olt float %5226, 0.000000e+00
  %5229 = zext i1 %5227 to i32
  %5230 = zext i1 %5228 to i32
  %5231 = sub nsw i32 %5229, %5230
  %5232 = sitofp i32 %5231 to float
  %5233 = fcmp fast une float %5224, %5232
  br i1 %5233, label %5234, label %5244

; <label>:5234                                    ; preds = %5195
  %5235 = fmul fast float %5217, %5213
  %5236 = fmul fast float %5217, %5212
  %5237 = fmul fast float %5217, %5211
  %5238 = fmul fast float %5237, %5237
  %5239 = fmul fast float %5236, %5236
  %5240 = fadd fast float %5238, %5239
  %5241 = fmul fast float %5235, %5235
  %5242 = fadd fast float %5240, %5241
  %5243 = call float @dx.op.unary.f32(i32 24, float %5242)  ; Sqrt(value)
  br label %5256

; <label>:5244                                    ; preds = %5195
  %5245 = icmp slt i32 %5223, 0
  br i1 %5245, label %5246, label %5256

; <label>:5246                                    ; preds = %5244
  %5247 = fsub fast float %164, %5133
  %5248 = fsub fast float %165, %5134
  %5249 = fsub fast float %166, %5207
  %5250 = fmul fast float %5247, %5247
  %5251 = fmul fast float %5248, %5248
  %5252 = fadd fast float %5250, %5251
  %5253 = fmul fast float %5249, %5249
  %5254 = fadd fast float %5252, %5253
  %5255 = call float @dx.op.unary.f32(i32 24, float %5254)  ; Sqrt(value)
  br label %5256

; <label>:5256                                    ; preds = %5246, %5244, %5234
  %5257 = phi float [ %5243, %5234 ], [ %5255, %5246 ], [ 0.000000e+00, %5244 ]
  %5258 = and i1 %5202, %5200
  %5259 = fsub fast float -0.000000e+00, %5257
  %5260 = select i1 %5258, float -0.000000e+00, float %5259
  %5261 = fmul fast float %3796, 0x3FF7154760000000
  %5262 = fmul fast float %5261, %5260
  %5263 = fmul fast float %3797, 0x3FF7154760000000
  %5264 = fmul fast float %5263, %5260
  %5265 = fmul fast float %3798, 0x3FF7154760000000
  %5266 = fmul fast float %5265, %5260
  %5267 = call float @dx.op.unary.f32(i32 21, float %5262)  ; Exp(value)
  %5268 = call float @dx.op.unary.f32(i32 21, float %5264)  ; Exp(value)
  %5269 = call float @dx.op.unary.f32(i32 21, float %5266)  ; Exp(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = fmul fast float %5196, %5270
  %5274 = fmul fast float %5197, %5271
  %5275 = fmul fast float %5198, %5272
  %5276 = fsub fast float %5150, %4587
  %5277 = fsub fast float %5151, %4586
  %5278 = fsub fast float %5152, %4585
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float %5276, float %5277, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.unary.f32(i32 25, float %5279)  ; Rsqrt(value)
  %5281 = fmul fast float %5280, %5276
  %5282 = fmul fast float %5280, %5277
  %5283 = fmul fast float %5280, %5278
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4583, float %4582, float %5281, float %5282, float %5283)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5287 = fmul fast float %5286, %5157
  %5288 = fmul fast float %5286, %5286
  %5289 = fmul fast float %5288, %4810
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = fmul fast float %5287, %5290
  %5292 = bitcast float %5147 to i32
  %5293 = ashr i32 %5292, 1
  %5294 = sub nsw i32 1597463007, %5293
  %5295 = bitcast i32 %5294 to float
  %5296 = fmul fast float %5295, %5144
  %5297 = fmul fast float %5295, %5145
  %5298 = fmul fast float %5295, %5146
  %5299 = fsub fast float %5296, %4587
  %5300 = fsub fast float %5297, %4586
  %5301 = fsub fast float %5298, %4585
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 25, float %5302)  ; Rsqrt(value)
  %5304 = fmul fast float %5299, %5303
  %5305 = fmul fast float %5300, %5303
  %5306 = fmul fast float %5301, %5303
  %5307 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = fmul fast float %5307, %5307
  %5309 = call float @dx.op.unary.f32(i32 6, float %5284)  ; FAbs(value)
  %5310 = fsub fast float 1.000000e+00, %4597
  %5311 = call float @dx.op.binary.f32(i32 35, float %5310, float 0x3F847AE140000000)  ; FMax(a,b)
  %5312 = fmul fast float %5311, %5311
  %5313 = fmul fast float %5312, %5312
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fmul fast float %4601, %4601
  %5316 = fmul fast float %5315, %5314
  %5317 = fadd fast float %5316, %5313
  %5318 = bitcast float %5317 to i32
  %5319 = ashr i32 %5318, 1
  %5320 = add nsw i32 %5319, 532487669
  %5321 = bitcast i32 %5320 to float
  %5322 = fadd fast float %5321, %4601
  %5323 = fmul fast float %5313, %5308
  %5324 = fsub fast float 1.000000e+00, %5308
  %5325 = fadd fast float %5324, %5323
  %5326 = fmul fast float %5309, %5309
  %5327 = fmul fast float %5326, %5314
  %5328 = fadd fast float %5327, %5313
  %5329 = bitcast float %5328 to i32
  %5330 = ashr i32 %5329, 1
  %5331 = add nsw i32 %5330, 532487669
  %5332 = bitcast i32 %5331 to float
  %5333 = fadd fast float %5332, %5309
  %5334 = fmul fast float %5325, %5325
  %5335 = fmul fast float %5334, %5322
  %5336 = fmul fast float %5335, %5333
  %5337 = fdiv fast float 1.000000e+00, %5336
  %5338 = bitcast float %5313 to i32
  %5339 = sitofp i32 %5338 to float
  %5340 = fmul fast float %5339, 0x3FE7F73180000000
  %5341 = fadd fast float %5340, 0x41AFE27C40000000
  %5342 = fptosi float %5341 to i32
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5130, 0x3FD80E9D60000000
  %5345 = fmul fast float %5344, %5295
  %5346 = fadd fast float %5343, %5345
  %5347 = bitcast float %5346 to i32
  %5348 = sub nsw i32 2129859010, %5347
  %5349 = bitcast i32 %5348 to float
  %5350 = fmul fast float %5313, %5337
  %5351 = fmul fast float %5350, %5343
  %5352 = fmul fast float %5351, %5349
  %5353 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5354 = fsub fast float 1.000000e+00, %5353
  %5355 = bitcast float %5354 to i32
  %5356 = sitofp i32 %5355 to float
  %5357 = fmul fast float %5356, 5.000000e+00
  %5358 = fadd fast float %5357, 0xC1EFBF8940000000
  %5359 = fptosi float %5358 to i32
  %5360 = bitcast i32 %5359 to float
  %5361 = fsub fast float 1.000000e+00, %4594
  %5362 = fsub fast float 1.000000e+00, %4595
  %5363 = fsub fast float 1.000000e+00, %4599
  %5364 = fmul fast float %5360, %5361
  %5365 = fmul fast float %5360, %5362
  %5366 = fmul fast float %5360, %5363
  %5367 = fadd fast float %5364, %4594
  %5368 = fadd fast float %5365, %4595
  %5369 = fadd fast float %5366, %4599
  br i1 %4725, label %5370, label %5393

; <label>:5370                                    ; preds = %5256
  %5371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3394, float %5353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.ResRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.ResRet.f32 %5371, 2
  %5375 = fadd fast float %5372, -5.000000e-01
  %5376 = fadd fast float %5373, -5.000000e-01
  %5377 = fadd fast float %5374, -5.000000e-01
  %5378 = fmul fast float %4594, 4.000000e+00
  %5379 = fmul fast float %5378, %5361
  %5380 = fmul fast float %5379, %5375
  %5381 = fmul fast float %4595, 4.000000e+00
  %5382 = fmul fast float %5381, %5362
  %5383 = fmul fast float %5382, %5376
  %5384 = fmul fast float %4599, 4.000000e+00
  %5385 = fmul fast float %5384, %5363
  %5386 = fmul fast float %5385, %5377
  %5387 = fadd fast float %5380, %5367
  %5388 = fadd fast float %5383, %5368
  %5389 = fadd fast float %5386, %5369
  %5390 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  br label %5393

; <label>:5393                                    ; preds = %5370, %5256
  %5394 = phi float [ %5390, %5370 ], [ %5367, %5256 ]
  %5395 = phi float [ %5391, %5370 ], [ %5368, %5256 ]
  %5396 = phi float [ %5392, %5370 ], [ %5369, %5256 ]
  %5397 = fmul fast float %5284, 9.843750e-01
  %5398 = fadd fast float %5397, 7.812500e-03
  %5399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5398, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 2
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 3
  %5402 = fmul fast float %5400, %4594
  %5403 = fmul fast float %5400, %4595
  %5404 = fmul fast float %5400, %4599
  %5405 = fadd fast float %5402, %5401
  %5406 = fadd fast float %5403, %5401
  %5407 = fadd fast float %5404, %5401
  br i1 %4725, label %5408, label %5431

; <label>:5408                                    ; preds = %5393
  %5409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %29, float %3394, float %5284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.ResRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.ResRet.f32 %5409, 2
  %5413 = fadd fast float %5410, -5.000000e-01
  %5414 = fadd fast float %5411, -5.000000e-01
  %5415 = fadd fast float %5412, -5.000000e-01
  %5416 = fmul fast float %4594, 4.000000e+00
  %5417 = fmul fast float %5416, %5361
  %5418 = fmul fast float %5417, %5413
  %5419 = fmul fast float %4595, 4.000000e+00
  %5420 = fmul fast float %5419, %5362
  %5421 = fmul fast float %5420, %5414
  %5422 = fmul fast float %4599, 4.000000e+00
  %5423 = fmul fast float %5422, %5363
  %5424 = fmul fast float %5423, %5415
  %5425 = fadd fast float %5418, %5405
  %5426 = fadd fast float %5421, %5406
  %5427 = fadd fast float %5424, %5407
  %5428 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5429 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5430 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  br label %5431

; <label>:5431                                    ; preds = %5408, %5393
  %5432 = phi float [ %5428, %5408 ], [ %5405, %5393 ]
  %5433 = phi float [ %5429, %5408 ], [ %5406, %5393 ]
  %5434 = phi float [ %5430, %5408 ], [ %5407, %5393 ]
  %5435 = call float @dx.op.binary.f32(i32 35, float %5433, float %5434)  ; FMax(a,b)
  %5436 = call float @dx.op.binary.f32(i32 35, float %5432, float %5435)  ; FMax(a,b)
  %5437 = fsub fast float 1.000000e+00, %5436
  %5438 = fmul fast float %5394, %5352
  %5439 = fmul fast float %5395, %5352
  %5440 = fmul fast float %5396, %5352
  %5441 = fsub fast float 1.000000e+00, %5285
  %5442 = bitcast float %5441 to i32
  %5443 = sitofp i32 %5442 to float
  %5444 = fmul fast float %5443, 5.000000e+00
  %5445 = fadd fast float %5444, 0xC1EFBF8940000000
  %5446 = fptosi float %5445 to i32
  %5447 = bitcast i32 %5446 to float
  %5448 = fmul fast float %5447, %3395
  %5449 = fmul fast float %5437, %5448
  %5450 = fmul fast float %5449, %4775
  %5451 = fmul fast float %5449, %4776
  %5452 = fmul fast float %5449, %4777
  %5453 = fadd fast float %5450, %5438
  %5454 = fadd fast float %5451, %5439
  %5455 = fadd fast float %5452, %5440
  %5456 = fmul fast float %5273, %3391
  %5457 = fmul fast float %5456, %5291
  %5458 = fmul fast float %5457, %5437
  %5459 = fmul fast float %5274, %3391
  %5460 = fmul fast float %5459, %5291
  %5461 = fmul fast float %5460, %5437
  %5462 = fmul fast float %5275, %3391
  %5463 = fmul fast float %5462, %5291
  %5464 = fmul fast float %5463, %5437
  %5465 = fadd fast float %5458, %5112
  %5466 = fadd fast float %5461, %5113
  %5467 = fadd fast float %5464, %5114
  %5468 = fmul fast float %5457, %5453
  %5469 = fmul fast float %5460, %5454
  %5470 = fmul fast float %5463, %5455
  %5471 = fadd fast float %5468, %5109
  %5472 = fadd fast float %5469, %5110
  %5473 = fadd fast float %5470, %5111
  br label %5187

; <label>:5474                                    ; preds = %5187
  br label %5475

; <label>:5475                                    ; preds = %5474, %5075
  %5476 = phi float [ %5077, %5075 ], [ %5188, %5474 ]
  %5477 = phi float [ %5078, %5075 ], [ %5189, %5474 ]
  %5478 = phi float [ %5079, %5075 ], [ %5190, %5474 ]
  %5479 = phi float [ %5080, %5075 ], [ %5191, %5474 ]
  %5480 = phi float [ %5081, %5075 ], [ %5192, %5474 ]
  %5481 = phi float [ %5082, %5075 ], [ %5193, %5474 ]
  %5482 = add i32 %5076, 1
  %5483 = icmp ugt i32 %5482, %5072
  br i1 %5483, label %5484, label %5075

; <label>:5484                                    ; preds = %5475
  br label %5485

; <label>:5485                                    ; preds = %5484, %5051, %5041
  %5486 = phi float [ %5042, %5041 ], [ %5042, %5051 ], [ %5476, %5484 ]
  %5487 = phi float [ %5043, %5041 ], [ %5043, %5051 ], [ %5477, %5484 ]
  %5488 = phi float [ %5044, %5041 ], [ %5044, %5051 ], [ %5478, %5484 ]
  %5489 = phi float [ %5045, %5041 ], [ %5045, %5051 ], [ %5479, %5484 ]
  %5490 = phi float [ %5046, %5041 ], [ %5046, %5051 ], [ %5480, %5484 ]
  %5491 = phi float [ %5047, %5041 ], [ %5047, %5051 ], [ %5481, %5484 ]
  %5492 = call float @dx.op.unary.f32(i32 24, float %4588)  ; Sqrt(value)
  %5493 = call float @dx.op.unary.f32(i32 24, float %4589)  ; Sqrt(value)
  %5494 = call float @dx.op.unary.f32(i32 24, float %4590)  ; Sqrt(value)
  %5495 = fmul fast float %5492, %5489
  %5496 = fmul fast float %5493, %5490
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  br i1 %203, label %5499, label %5519

; <label>:5499                                    ; preds = %5485
  %5500 = fadd fast float %5491, %3397
  %5501 = fmul fast float %5500, %3398
  %5502 = fsub fast float 1.000000e+00, %3398
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5506 = fmul fast float %5505, %5503
  %5507 = fadd fast float %5506, %5501
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5510 = fmul fast float %5509, %4781
  %5511 = fsub fast float %5507, %5510
  %5512 = fadd fast float %5496, %5495
  %5513 = fmul fast float %5498, %5512
  %5514 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5515 = fsub fast float %5511, %5514
  %5516 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5517 = fmul fast float %5515, %5516
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  br label %5535

; <label>:5519                                    ; preds = %5485
  %5520 = fmul fast float %5494, %5491
  %5521 = fmul fast float %5498, %5495
  %5522 = fmul fast float %5498, %5496
  %5523 = fmul fast float %5520, %5498
  %5524 = add i32 %33, 356
  %5525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.i32 %5525, 0
  %5527 = and i32 %5526, 32
  %5528 = icmp eq i32 %5527, 0
  br i1 %5528, label %5535, label %5529

; <label>:5529                                    ; preds = %5519
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 0
  %5532 = fmul fast float %5531, 0x3FE99999A0000000
  %5533 = fadd fast float %5531, %5521
  %5534 = fadd fast float %5532, %5523
  br label %5535

; <label>:5535                                    ; preds = %5529, %5519, %5499
  %5536 = phi float [ %5513, %5499 ], [ %5533, %5529 ], [ %5521, %5519 ]
  %5537 = phi float [ %5518, %5499 ], [ %5522, %5529 ], [ %5522, %5519 ]
  %5538 = phi float [ 1.000000e+00, %5499 ], [ %5534, %5529 ], [ %5523, %5519 ]
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = fmul fast float %5540, %5487
  %5542 = fmul fast float %5540, %5488
  %5543 = fadd fast float %5487, %5486
  %5544 = select i1 %203, float %5543, float %5486
  %5545 = fmul float %5544, %5540
  %5546 = select i1 %203, float 0.000000e+00, float %5541
  %5547 = select i1 %203, float 0.000000e+00, float %5542
  %5548 = fmul fast float %5536, %5492
  %5549 = fmul fast float %5537, %5493
  %5550 = fmul fast float %5538, %5494
  %5551 = fadd fast float %5545, %5548
  %5552 = fadd fast float %5546, %5549
  %5553 = fadd fast float %5547, %5550
  %5554 = select i1 %203, float %5537, float %5552
  %5555 = select i1 %203, float %5538, float %5553
  %5556 = call float @dx.op.binary.f32(i32 36, float %5551, float 3.225500e+04)  ; FMin(a,b)
  %5557 = call float @dx.op.binary.f32(i32 36, float %5554, float 3.225500e+04)  ; FMin(a,b)
  %5558 = call float @dx.op.binary.f32(i32 36, float %5555, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5556)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5557)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5558)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

