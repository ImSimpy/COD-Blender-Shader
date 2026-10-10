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
; shader hash: b1ed7ad34fa96aa0a4d13f267e878852
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
  %396 = add i32 %32, 496
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
  br i1 %449, label %939, label %450

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
  %577 = add i32 %32, 464
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
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 14336
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %924, label %899

; <label>:899                                     ; preds = %891
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 4096
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %924, label %904

; <label>:904                                     ; preds = %899
  %905 = and i32 %901, 1048576
  %906 = icmp ne i32 %905, 0
  %907 = add i32 %32, 480
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = add i32 %909, 0
  %911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %911, %dx.types.Handle %73, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %913 = extractvalue %dx.types.ResRet.f32 %912, 2
  %914 = select i1 %906, float 1.000000e+00, float %913
  %915 = add i32 %32, 164
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %917, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = fmul fast float %919, %914
  %923 = fadd fast float %922, %921
  br label %924

; <label>:924                                     ; preds = %904, %899, %891
  %925 = phi float [ %923, %904 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %891 ]
  %926 = add i32 %32, 96
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = and i32 %928, 255
  %930 = uitofp i32 %929 to float
  %931 = lshr i32 %928, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = fmul fast float %933, %934
  %936 = fadd fast float %935, %930
  %937 = fmul fast float %936, 0x3F70101020000000
  %938 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  br label %939

; <label>:939                                     ; preds = %924, %435
  %940 = phi float [ 0.000000e+00, %435 ], [ %845, %924 ]
  %941 = phi float [ 0.000000e+00, %435 ], [ %846, %924 ]
  %942 = phi float [ 0.000000e+00, %435 ], [ %892, %924 ]
  %943 = phi float [ 0.000000e+00, %435 ], [ %893, %924 ]
  %944 = phi float [ 0.000000e+00, %435 ], [ %894, %924 ]
  %945 = phi float [ 0.000000e+00, %435 ], [ %764, %924 ]
  %946 = phi float [ 0.000000e+00, %435 ], [ %765, %924 ]
  %947 = phi float [ 0.000000e+00, %435 ], [ %766, %924 ]
  %948 = phi float [ 0.000000e+00, %435 ], [ %750, %924 ]
  %949 = phi float [ 0.000000e+00, %435 ], [ 1.000000e+00, %924 ]
  %950 = phi float [ 0.000000e+00, %435 ], [ %844, %924 ]
  %951 = phi float [ 0.000000e+00, %435 ], [ %847, %924 ]
  %952 = phi float [ 0.000000e+00, %435 ], [ %925, %924 ]
  %953 = phi float [ 0.000000e+00, %435 ], [ %938, %924 ]
  br i1 %386, label %1721, label %954

; <label>:954                                     ; preds = %939
  %955 = icmp ult i32 %441, 2
  %956 = add i32 %32, 40
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = add i32 %32, 44
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = or i32 %961, %958
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %1721, label %964

; <label>:964                                     ; preds = %954
  %965 = and i32 %958, 262144
  %966 = icmp ne i32 %965, 0
  %967 = select i1 %966, float %37, float 1.000000e+00
  %968 = select i1 %966, float %38, float 0.000000e+00
  %969 = select i1 %966, float %39, float 0.000000e+00
  %970 = select i1 %966, float %40, float 1.000000e+00
  %971 = select i1 %966, float %41, float %64
  %972 = select i1 %966, float %42, float %65
  %973 = add i32 %32, 300
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 16
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = fmul fast float %977, 0x3F50624DE0000000
  %979 = add i32 %32, 104
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = lshr i32 %981, 16
  %983 = and i32 %982, 255
  %984 = lshr i32 %981, 24
  %985 = add i32 %32, 308
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = lshr i32 %987, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = add i32 %32, 48
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 22
  %996 = shl nuw nsw i32 %995, 5
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = shl i32 %994, 4
  %999 = and i32 %998, 32752
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = lshr i32 %994, 7
  %1002 = and i32 %1001, 32752
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1006 = fmul fast float %1005, 1.000000e+03
  %1007 = fmul fast float %296, %1006
  %1008 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1009 = fadd fast float %1008, %286
  %1010 = fmul fast float %297, %1006
  %1011 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1012 = fadd fast float %1011, %288
  %1013 = fmul fast float %978, %1006
  %1014 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1015 = fmul fast float %1014, 0x401921FB60000000
  %1016 = fadd fast float %1015, %997
  %1017 = call float @dx.op.unary.f32(i32 13, float %1016)  ; Sin(value)
  %1018 = call float @dx.op.unary.f32(i32 12, float %1016)  ; Cos(value)
  %1019 = fsub fast float -0.000000e+00, %1017
  %1020 = fadd fast float %971, -5.000000e-01
  %1021 = fadd fast float %972, -5.000000e-01
  %1022 = fmul fast float %989, %1020
  %1023 = fmul fast float %991, %1021
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fmul fast float %1000, %1024
  %1027 = fmul fast float %1003, %1025
  %1028 = fmul fast float %1018, %1026
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1027, float %1028)  ; FMad(a,b,c)
  %1030 = fmul fast float %1017, %1026
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %1027, float %1030)  ; FMad(a,b,c)
  %1032 = fadd fast float %1009, %1029
  %1033 = fadd fast float %1012, %1031
  %1034 = icmp ugt i32 %983, 1
  %1035 = icmp ugt i32 %981, 33554431
  %1036 = or i1 %1035, %1034
  br i1 %1036, label %1037, label %1062

; <label>:1037                                    ; preds = %964
  %1038 = add i32 %32, 244
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = lshr i32 %1040, 16
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = fmul fast float %1005, %1042
  %1044 = call float @dx.op.unary.f32(i32 22, float %1043)  ; Frc(value)
  %1045 = mul nuw nsw i32 %983, %984
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1044, %1046
  %1048 = call float @dx.op.unary.f32(i32 27, float %1047)  ; Round_ni(value)
  %1049 = fptoui float %1048 to i32
  %1050 = urem i32 %1049, %983
  %1051 = udiv i32 %1049, %984
  %1052 = call float @dx.op.unary.f32(i32 22, float %1032)  ; Frc(value)
  %1053 = call float @dx.op.unary.f32(i32 22, float %1033)  ; Frc(value)
  %1054 = uitofp i32 %1050 to float
  %1055 = uitofp i32 %1051 to float
  %1056 = fadd fast float %1052, %1054
  %1057 = fadd fast float %1053, %1055
  %1058 = uitofp i32 %983 to float
  %1059 = uitofp i32 %984 to float
  %1060 = fdiv fast float %1056, %1058
  %1061 = fdiv fast float %1057, %1059
  br label %1062

; <label>:1062                                    ; preds = %1037, %964
  %1063 = phi float [ %1060, %1037 ], [ %1032, %964 ]
  %1064 = phi float [ %1061, %1037 ], [ %1033, %964 ]
  %1065 = and i32 %958, 256
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1113, label %1067

; <label>:1067                                    ; preds = %1062
  %1068 = add i32 %32, 444
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %73, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = add i32 %32, 116
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = shl i32 %1077, 4
  %1079 = and i32 %1078, 32752
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = lshr i32 %1077, 7
  %1082 = and i32 %1081, 32752
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = fsub fast float 1.000000e+00, %438
  %1085 = call float @dx.op.binary.f32(i32 35, float %1084, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1086 = bitcast float %438 to i32
  %1087 = sitofp i32 %1086 to float
  %1088 = fadd fast float %1087, 0xC1CFBF8940000000
  %1089 = fmul fast float %1083, %1088
  %1090 = fadd fast float %1089, 0x41CFBF8940000000
  %1091 = fptosi float %1090 to i32
  %1092 = bitcast i32 %1091 to float
  %1093 = bitcast float %1085 to i32
  %1094 = sitofp i32 %1093 to float
  %1095 = fadd fast float %1094, 0xC1CFBF8940000000
  %1096 = fmul fast float %1095, %1083
  %1097 = fadd fast float %1096, 0x41CFBF8940000000
  %1098 = fptosi float %1097 to i32
  %1099 = bitcast i32 %1098 to float
  %1100 = fmul fast float %1092, %1080
  %1101 = fmul fast float %1099, %1080
  %1102 = fsub fast float %1085, %1100
  %1103 = fadd fast float %1101, %1085
  %1104 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1105 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1106 = fsub fast float %1074, %1104
  %1107 = fsub fast float %1105, %1104
  %1108 = bitcast float %1107 to i32
  %1109 = sub nsw i32 2129859010, %1108
  %1110 = bitcast i32 %1109 to float
  %1111 = fmul fast float %1110, %1106
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  br label %1113

; <label>:1113                                    ; preds = %1067, %1062
  %1114 = phi float [ %1112, %1067 ], [ %438, %1062 ]
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 128
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1135, label %1119

; <label>:1119                                    ; preds = %1113
  %1120 = add i32 %32, 428
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %73, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 524288
  %1130 = icmp ne i32 %1129, 0
  %1131 = fcmp fast ogt float %1126, 0x3FE0101020000000
  %1132 = select i1 %1131, float 1.000000e+00, float 0.000000e+00
  %1133 = select i1 %1130, float %1132, float %1126
  %1134 = fmul fast float %1133, %1114
  br label %1135

; <label>:1135                                    ; preds = %1119, %1113
  %1136 = phi float [ %1134, %1119 ], [ %1114, %1113 ]
  %1137 = fcmp fast ult float %1136, 0x3F70101020000000
  br i1 %1137, label %1721, label %1138

; <label>:1138                                    ; preds = %1135
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 16
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1341, label %1143

; <label>:1143                                    ; preds = %1138
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %32, 380
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1150, %dx.types.Handle %72, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = extractvalue %dx.types.ResRet.f32 %1151, 3
  %1156 = and i32 %1145, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = lshr i32 %1145, 8
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1155, %1157
  %1162 = fadd fast float %1161, %1160
  %1163 = fmul fast float %1162, 0x3F70101000000000
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 512
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1176, label %1168

; <label>:1168                                    ; preds = %1143
  %1169 = add i32 %32, 468
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %1171, 0
  %1173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1173, %dx.types.Handle %73, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  br label %1176

; <label>:1176                                    ; preds = %1168, %1143
  %1177 = phi float [ %1175, %1168 ], [ 1.000000e+00, %1143 ]
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 33554432
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1288, label %1182

; <label>:1182                                    ; preds = %1176
  %1183 = add i32 %32, 240
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 65535
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = lshr i32 %1185, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = add i32 %32, 244
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 65535
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1211 = add i32 %32, 236
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 24
  %1215 = uitofp i32 %1214 to float
  %1216 = fmul fast float %1215, 0x3F70101020000000
  %1217 = and i32 %1213, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1218, 0x3F70101020000000
  %1220 = lshr i32 %1213, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1222, 0x3F70101020000000
  %1224 = lshr i32 %1213, 16
  %1225 = and i32 %1224, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = bitcast float %1152 to i32
  %1229 = ashr i32 %1228, 1
  %1230 = sub nsw i32 1597463174, %1229
  %1231 = bitcast i32 %1230 to float
  %1232 = fmul fast float %1152, 5.000000e-01
  %1233 = fmul fast float %1231, %1231
  %1234 = fmul fast float %1233, %1232
  %1235 = fsub fast float 1.500000e+00, %1234
  %1236 = fmul fast float %1231, %1152
  %1237 = fmul fast float %1236, %1235
  %1238 = bitcast float %1153 to i32
  %1239 = ashr i32 %1238, 1
  %1240 = sub nsw i32 1597463174, %1239
  %1241 = bitcast i32 %1240 to float
  %1242 = fmul fast float %1153, 5.000000e-01
  %1243 = fmul fast float %1241, %1241
  %1244 = fmul fast float %1243, %1242
  %1245 = fsub fast float 1.500000e+00, %1244
  %1246 = fmul fast float %1241, %1153
  %1247 = fmul fast float %1246, %1245
  %1248 = bitcast float %1154 to i32
  %1249 = ashr i32 %1248, 1
  %1250 = sub nsw i32 1597463174, %1249
  %1251 = bitcast i32 %1250 to float
  %1252 = fmul fast float %1154, 5.000000e-01
  %1253 = fmul fast float %1251, %1251
  %1254 = fmul fast float %1253, %1252
  %1255 = fsub fast float 1.500000e+00, %1254
  %1256 = fmul fast float %1251, %1154
  %1257 = fmul fast float %1256, %1255
  %1258 = fsub fast float %1237, %1219
  %1259 = fsub fast float %1247, %1223
  %1260 = fsub fast float %1257, %1227
  %1261 = fmul fast float %1258, %1187
  %1262 = fmul fast float %1259, %1189
  %1263 = fmul fast float %1260, %1194
  %1264 = fadd fast float %1261, %1202
  %1265 = fadd fast float %1262, %1206
  %1266 = fadd fast float %1263, %1210
  %1267 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1270 = fmul fast float %1267, %1267
  %1271 = fmul fast float %1268, %1268
  %1272 = fmul fast float %1269, %1269
  %1273 = fsub fast float %1270, %1152
  %1274 = fsub fast float %1271, %1153
  %1275 = fsub fast float %1272, %1154
  %1276 = fmul fast float %1273, %1177
  %1277 = fmul fast float %1274, %1177
  %1278 = fmul fast float %1275, %1177
  %1279 = fadd fast float %1276, %1152
  %1280 = fadd fast float %1277, %1153
  %1281 = fadd fast float %1278, %1154
  %1282 = fadd fast float %1199, %1163
  %1283 = fsub fast float %1282, %1216
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fsub fast float %1284, %1163
  %1286 = fmul fast float %1285, %1177
  %1287 = fadd fast float %1286, %1163
  br label %1341

; <label>:1288                                    ; preds = %1176
  %1289 = and i32 %1179, 134217728
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1325, label %1291

; <label>:1291                                    ; preds = %1288
  %1292 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1293 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %1294 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %1295 = fadd fast float %1292, -5.000000e-01
  %1296 = fadd fast float %1293, -5.000000e-01
  %1297 = fadd fast float %1294, -5.000000e-01
  %1298 = fmul fast float %1295, %1177
  %1299 = fmul fast float %1296, %1177
  %1300 = fmul fast float %1297, %1177
  %1301 = fadd fast float %1298, 5.000000e-01
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fadd fast float %1300, 5.000000e-01
  %1304 = call float @dx.op.unary.f32(i32 24, float %1152)  ; Sqrt(value)
  %1305 = call float @dx.op.unary.f32(i32 24, float %1153)  ; Sqrt(value)
  %1306 = call float @dx.op.unary.f32(i32 24, float %1154)  ; Sqrt(value)
  %1307 = fmul fast float %1301, 2.000000e+00
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1308, %1304
  %1310 = fadd fast float %1309, %1307
  %1311 = fmul fast float %1310, %1304
  %1312 = fmul fast float %1302, 2.000000e+00
  %1313 = fsub fast float 1.000000e+00, %1312
  %1314 = fmul fast float %1313, %1305
  %1315 = fadd fast float %1314, %1312
  %1316 = fmul fast float %1315, %1305
  %1317 = fmul fast float %1303, 2.000000e+00
  %1318 = fsub fast float 1.000000e+00, %1317
  %1319 = fmul fast float %1318, %1306
  %1320 = fadd fast float %1319, %1317
  %1321 = fmul fast float %1320, %1306
  %1322 = fmul fast float %1311, %1311
  %1323 = fmul fast float %1316, %1316
  %1324 = fmul fast float %1321, %1321
  br label %1341

; <label>:1325                                    ; preds = %1288
  %1326 = fmul fast float %273, %273
  %1327 = fmul fast float %277, %277
  %1328 = fmul fast float %281, %281
  %1329 = fadd fast float %1326, -1.000000e+00
  %1330 = fadd fast float %1327, -1.000000e+00
  %1331 = fadd fast float %1328, -1.000000e+00
  %1332 = fmul fast float %1177, %1329
  %1333 = fmul fast float %1177, %1330
  %1334 = fmul fast float %1177, %1331
  %1335 = fadd fast float %1332, 1.000000e+00
  %1336 = fadd fast float %1333, 1.000000e+00
  %1337 = fadd fast float %1334, 1.000000e+00
  %1338 = fmul fast float %1335, %1152
  %1339 = fmul fast float %1336, %1153
  %1340 = fmul fast float %1337, %1154
  br label %1341

; <label>:1341                                    ; preds = %1325, %1291, %1182, %1138
  %1342 = phi float [ %1287, %1182 ], [ %1163, %1291 ], [ %1163, %1325 ], [ 0x3FA23C0BE0000000, %1138 ]
  %1343 = phi float [ %1279, %1182 ], [ %1322, %1291 ], [ %1338, %1325 ], [ 1.000000e+00, %1138 ]
  %1344 = phi float [ %1280, %1182 ], [ %1323, %1291 ], [ %1339, %1325 ], [ 1.000000e+00, %1138 ]
  %1345 = phi float [ %1281, %1182 ], [ %1324, %1291 ], [ %1340, %1325 ], [ 1.000000e+00, %1138 ]
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 1
  %1348 = and i32 %1347, 1
  %1349 = icmp ne i32 %1348, 0
  %1350 = add i32 %32, 356
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 32
  %1354 = icmp ne i32 %1353, 0
  %1355 = and i1 %1349, %1354
  %1356 = select i1 %1355, float 1.000000e+00, float %1343
  %1357 = select i1 %1355, float 0x3FD3333340000000, float %1344
  %1358 = select i1 %1355, float 0x3FD3333340000000, float %1345
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 32
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1435, label %1363

; <label>:1363                                    ; preds = %1341
  %1364 = add i32 %32, 108
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = add i32 %32, 396
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %72, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = extractvalue %dx.types.ResRet.f32 %1372, 3
  %1377 = and i32 %1366, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = lshr i32 %1366, 8
  %1380 = and i32 %1379, 255
  %1381 = uitofp i32 %1380 to float
  %1382 = lshr i32 %1366, 16
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101000000000
  %1386 = fmul fast float %1373, %1378
  %1387 = fadd fast float %1386, %1381
  %1388 = fmul fast float %1387, 0x3F70101000000000
  %1389 = fadd fast float %1374, -5.000000e-01
  %1390 = fadd fast float %1376, -5.000000e-01
  %1391 = fmul fast float %1389, %1385
  %1392 = fmul fast float %1390, %1385
  %1393 = fadd fast float %1391, 5.000000e-01
  %1394 = fadd fast float %1392, 5.000000e-01
  %1395 = fmul fast float %1393, 2.000000e+00
  %1396 = fadd fast float %1395, -1.000000e+00
  %1397 = fmul fast float %1394, 2.000000e+00
  %1398 = fadd fast float %1397, -1.000000e+00
  %1399 = fadd fast float %1396, %1398
  %1400 = fmul fast float %1399, 5.000000e-01
  %1401 = fsub fast float %1396, %1398
  %1402 = fmul fast float %1401, 5.000000e-01
  %1403 = call float @dx.op.unary.f32(i32 6, float %1400)  ; FAbs(value)
  %1404 = fsub fast float 1.000000e+00, %1403
  %1405 = call float @dx.op.unary.f32(i32 6, float %1402)  ; FAbs(value)
  %1406 = fsub fast float %1404, %1405
  %1407 = call float @dx.op.dot3.f32(i32 55, float %1400, float %1402, float %1406, float %1400, float %1402, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1408 = call float @dx.op.unary.f32(i32 25, float %1407)  ; Rsqrt(value)
  %1409 = fmul fast float %1400, %1408
  %1410 = fmul fast float %1402, %1408
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 67108864
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1431, label %1415

; <label>:1415                                    ; preds = %1363
  %1416 = add i32 %32, 296
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 65535
  %1420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1419)  ; LegacyF16ToF32(value)
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 65535
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = lshr i32 %1418, 16
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = fsub fast float %1388, %1426
  %1428 = fmul fast float %1427, %1420
  %1429 = fadd fast float %1428, %1424
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  br label %1431

; <label>:1431                                    ; preds = %1415, %1363
  %1432 = phi float [ %1430, %1415 ], [ %1388, %1363 ]
  %1433 = call float @dx.op.dot2.f32(i32 54, float %1409, float %1410, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  %1434 = call float @dx.op.dot2.f32(i32 54, float %1409, float %1410, float %969, float %970)  ; Dot2(ax,ay,bx,by)
  br label %1435

; <label>:1435                                    ; preds = %1431, %1341
  %1436 = phi float [ %1432, %1431 ], [ 0x3FD6666660000000, %1341 ]
  %1437 = phi float [ %1433, %1431 ], [ 0.000000e+00, %1341 ]
  %1438 = phi float [ %1434, %1431 ], [ 0.000000e+00, %1341 ]
  %1439 = phi float [ %1375, %1431 ], [ 1.000000e+00, %1341 ]
  %1440 = add i32 %32, 176
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = lshr i32 %1442, 22
  %1444 = shl nuw nsw i32 %1443, 5
  %1445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1444)  ; LegacyF16ToF32(value)
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 64
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1483, label %1450

; <label>:1450                                    ; preds = %1435
  %1451 = add i32 %32, 412
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 131072
  %1459 = icmp eq i32 %1458, 0
  %1460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %72, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = fmul fast float %1461, %261
  %1465 = fmul fast float %1462, %264
  %1466 = fmul fast float %1463, %267
  br i1 %1459, label %1473, label %1467

; <label>:1467                                    ; preds = %1450
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.f32 %1468, 0
  %1470 = fmul fast float %1469, %1464
  %1471 = fmul fast float %1469, %1465
  %1472 = fmul fast float %1469, %1466
  br label %1473

; <label>:1473                                    ; preds = %1467, %1450
  %1474 = phi float [ %1470, %1467 ], [ %1464, %1450 ]
  %1475 = phi float [ %1471, %1467 ], [ %1465, %1450 ]
  %1476 = phi float [ %1472, %1467 ], [ %1466, %1450 ]
  %1477 = fmul fast float %1474, %1445
  %1478 = select i1 %202, float %1477, float %1474
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1475, float %1476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = select i1 %202, float 0.000000e+00, float %1474
  %1481 = select i1 %202, float %1479, float %1475
  %1482 = select i1 %202, float 0.000000e+00, float %1476
  br label %1483

; <label>:1483                                    ; preds = %1473, %1435
  %1484 = phi float [ %1480, %1473 ], [ 0.000000e+00, %1435 ]
  %1485 = phi float [ %1481, %1473 ], [ 0.000000e+00, %1435 ]
  %1486 = phi float [ %1482, %1473 ], [ 0.000000e+00, %1435 ]
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 14336
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1516, label %1491

; <label>:1491                                    ; preds = %1483
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 4096
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1516, label %1496

; <label>:1496                                    ; preds = %1491
  %1497 = and i32 %1493, 1048576
  %1498 = icmp ne i32 %1497, 0
  %1499 = add i32 %32, 484
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1503, %dx.types.Handle %73, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 2
  %1506 = select i1 %1498, float 1.000000e+00, float %1505
  %1507 = add i32 %32, 180
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 65535
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = lshr i32 %1509, 16
  %1513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1512)  ; LegacyF16ToF32(value)
  %1514 = fmul fast float %1511, %1506
  %1515 = fadd fast float %1514, %1513
  br label %1516

; <label>:1516                                    ; preds = %1496, %1491, %1483
  %1517 = phi float [ %1515, %1496 ], [ 0.000000e+00, %1491 ], [ 0.000000e+00, %1483 ]
  %1518 = add i32 %32, 112
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 255
  %1522 = uitofp i32 %1521 to float
  %1523 = lshr i32 %1520, 8
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1356, float %1357, float %1358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = fmul fast float %1525, %1526
  %1528 = fadd fast float %1527, %1522
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  br i1 %955, label %1531, label %1539

; <label>:1531                                    ; preds = %1516
  %1532 = fsub fast float 1.000000e+00, %1136
  %1533 = fmul fast float %1532, %945
  %1534 = fmul fast float %1532, %946
  %1535 = fmul fast float %1532, %947
  %1536 = fmul fast float %1532, %942
  %1537 = fmul fast float %1532, %943
  %1538 = fmul fast float %1532, %944
  br label %1539

; <label>:1539                                    ; preds = %1531, %1516
  %1540 = phi float [ %1536, %1531 ], [ %942, %1516 ]
  %1541 = phi float [ %1537, %1531 ], [ %943, %1516 ]
  %1542 = phi float [ %1538, %1531 ], [ %944, %1516 ]
  %1543 = phi float [ %1533, %1531 ], [ %945, %1516 ]
  %1544 = phi float [ %1534, %1531 ], [ %946, %1516 ]
  %1545 = phi float [ %1535, %1531 ], [ %947, %1516 ]
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 3
  %1549 = icmp eq i32 %1548, 3
  br i1 %1549, label %1628, label %1550

; <label>:1550                                    ; preds = %1539
  %1551 = and i32 %1547, 16
  %1552 = icmp ne i32 %1551, 0
  %1553 = select i1 %1552, float %1136, float 0.000000e+00
  %1554 = icmp eq i32 %1548, 0
  br i1 %1554, label %1555, label %1583

; <label>:1555                                    ; preds = %1550
  %1556 = and i32 %1547, 64
  %1557 = icmp ne i32 %1556, 0
  %1558 = select i1 %1557, float %1136, float 0.000000e+00
  %1559 = fsub fast float %1356, %1543
  %1560 = fsub fast float %1357, %1544
  %1561 = fsub fast float %1358, %1545
  %1562 = fmul fast float %1553, %1559
  %1563 = fmul fast float %1553, %1560
  %1564 = fmul fast float %1553, %1561
  %1565 = fadd fast float %1562, %1543
  %1566 = fadd fast float %1563, %1544
  %1567 = fadd fast float %1564, %1545
  %1568 = fsub fast float %1342, %948
  %1569 = fmul fast float %1553, %1568
  %1570 = fadd fast float %1569, %948
  %1571 = fsub fast float %1484, %1540
  %1572 = fsub fast float %1485, %1541
  %1573 = fsub fast float %1486, %1542
  %1574 = fmul fast float %1558, %1571
  %1575 = fmul fast float %1558, %1572
  %1576 = fmul fast float %1558, %1573
  %1577 = fadd fast float %1574, %1540
  %1578 = fadd fast float %1575, %1541
  %1579 = fadd fast float %1576, %1542
  %1580 = fsub fast float %1530, %953
  %1581 = fmul fast float %1553, %1580
  %1582 = fadd fast float %1581, %953
  br label %1628

; <label>:1583                                    ; preds = %1550
  %1584 = icmp eq i32 %1548, 1
  br i1 %1584, label %1585, label %1598

; <label>:1585                                    ; preds = %1583
  %1586 = fadd fast float %1356, -1.000000e+00
  %1587 = fadd fast float %1357, -1.000000e+00
  %1588 = fadd fast float %1358, -1.000000e+00
  %1589 = fmul fast float %1553, %1586
  %1590 = fmul fast float %1553, %1587
  %1591 = fmul fast float %1553, %1588
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fmul fast float %1592, %1543
  %1596 = fmul fast float %1593, %1544
  %1597 = fmul fast float %1594, %1545
  br label %1628

; <label>:1598                                    ; preds = %1583
  %1599 = icmp eq i32 %1548, 2
  br i1 %1599, label %1600, label %1628

; <label>:1600                                    ; preds = %1598
  %1601 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fmul fast float %1604, %1553
  %1608 = fmul fast float %1605, %1553
  %1609 = fmul fast float %1606, %1553
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1543
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1543
  %1618 = fmul fast float %1611, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1544
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1544
  %1623 = fmul fast float %1612, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1545
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1545
  br label %1628

; <label>:1628                                    ; preds = %1600, %1598, %1585, %1555, %1539
  %1629 = phi float [ %1540, %1539 ], [ %1540, %1600 ], [ %1540, %1598 ], [ %1540, %1585 ], [ %1577, %1555 ]
  %1630 = phi float [ %1541, %1539 ], [ %1541, %1600 ], [ %1541, %1598 ], [ %1541, %1585 ], [ %1578, %1555 ]
  %1631 = phi float [ %1542, %1539 ], [ %1542, %1600 ], [ %1542, %1598 ], [ %1542, %1585 ], [ %1579, %1555 ]
  %1632 = phi float [ %1543, %1539 ], [ %1617, %1600 ], [ %1543, %1598 ], [ %1595, %1585 ], [ %1565, %1555 ]
  %1633 = phi float [ %1544, %1539 ], [ %1622, %1600 ], [ %1544, %1598 ], [ %1596, %1585 ], [ %1566, %1555 ]
  %1634 = phi float [ %1545, %1539 ], [ %1627, %1600 ], [ %1545, %1598 ], [ %1597, %1585 ], [ %1567, %1555 ]
  %1635 = phi float [ %948, %1539 ], [ %948, %1600 ], [ %948, %1598 ], [ %948, %1585 ], [ %1570, %1555 ]
  %1636 = phi float [ %953, %1539 ], [ %953, %1600 ], [ %953, %1598 ], [ %953, %1585 ], [ %1582, %1555 ]
  %1637 = and i32 %1547, 12
  %1638 = icmp eq i32 %1637, 12
  br i1 %1638, label %1721, label %1639

; <label>:1639                                    ; preds = %1628
  %1640 = and i32 %1547, 2097184
  %1641 = icmp eq i32 %1640, 2097184
  %1642 = select i1 %1641, float %1136, float 0.000000e+00
  %1643 = and i32 %1547, 4194336
  %1644 = icmp eq i32 %1643, 4194336
  %1645 = select i1 %1644, float %1136, float 0.000000e+00
  %1646 = and i32 %1547, 8388640
  %1647 = icmp eq i32 %1646, 8388640
  %1648 = select i1 %1647, float %1136, float 0.000000e+00
  %1649 = and i32 %1547, 4096
  %1650 = icmp ne i32 %1649, 0
  %1651 = select i1 %1650, float %1136, float 0.000000e+00
  %1652 = icmp eq i32 %1637, 0
  br i1 %1652, label %1653, label %1669

; <label>:1653                                    ; preds = %1639
  %1654 = fsub fast float %1437, %940
  %1655 = fsub fast float %1438, %941
  %1656 = fmul fast float %1642, %1654
  %1657 = fmul fast float %1642, %1655
  %1658 = fadd fast float %1656, %940
  %1659 = fadd fast float %1657, %941
  %1660 = fsub fast float %1439, %951
  %1661 = fmul fast float %1645, %1660
  %1662 = fadd fast float %1661, %951
  %1663 = fsub fast float %1436, %950
  %1664 = fmul fast float %1648, %1663
  %1665 = fadd fast float %1664, %950
  %1666 = fsub fast float %1517, %952
  %1667 = fmul fast float %1651, %1666
  %1668 = fadd fast float %1667, %952
  br label %1721

; <label>:1669                                    ; preds = %1639
  %1670 = icmp eq i32 %1637, 4
  br i1 %1670, label %1671, label %1705

; <label>:1671                                    ; preds = %1669
  %1672 = fmul fast float %1642, %1437
  %1673 = fmul fast float %1642, %1438
  %1674 = fadd fast float %1672, %940
  %1675 = fadd fast float %1673, %941
  %1676 = call float @dx.op.binary.f32(i32 36, float %951, float %1439)  ; FMin(a,b)
  %1677 = fsub fast float %1676, %951
  %1678 = fmul fast float %1677, %1645
  %1679 = fadd fast float %1678, %951
  %1680 = fadd fast float %1436, %950
  %1681 = fmul fast float %1680, 0x3FF337FAE0000000
  %1682 = fmul fast float %950, %950
  %1683 = fmul fast float %1436, %1436
  %1684 = fadd fast float %1683, %1682
  %1685 = fmul fast float %1684, 0x3FE5152B00000000
  %1686 = fmul fast float %950, 0xBFCC1F85E0000000
  %1687 = fmul fast float %1686, %1436
  %1688 = fadd fast float %1687, 0xBFE1363700000000
  %1689 = fadd fast float %1688, %1681
  %1690 = fsub fast float %1689, %1685
  %1691 = fmul fast float %1680, 0x3FBA6F0D00000000
  %1692 = fmul fast float %1684, 0x3FD0432880000000
  %1693 = fmul fast float %950, 0xBFEF110800000000
  %1694 = fmul fast float %1693, %1436
  %1695 = fadd fast float %1694, 1.000000e+00
  %1696 = fsub fast float %1695, %1691
  %1697 = fadd fast float %1696, %1692
  %1698 = fdiv fast float %1690, %1697
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float %1699, %950
  %1701 = fmul fast float %1700, %1648
  %1702 = fadd fast float %1701, %950
  %1703 = fmul fast float %1651, %1517
  %1704 = fadd fast float %1703, %952
  br label %1721

; <label>:1705                                    ; preds = %1669
  %1706 = icmp eq i32 %1637, 8
  br i1 %1706, label %1707, label %1721

; <label>:1707                                    ; preds = %1705
  %1708 = fmul fast float %1642, %1437
  %1709 = fmul fast float %1642, %1438
  %1710 = fadd fast float %1708, %940
  %1711 = fadd fast float %1709, %941
  %1712 = call float @dx.op.binary.f32(i32 36, float %951, float %1439)  ; FMin(a,b)
  %1713 = fsub fast float %1712, %951
  %1714 = fmul fast float %1713, %1645
  %1715 = fadd fast float %1714, %951
  %1716 = fsub fast float %1436, %950
  %1717 = fmul fast float %1648, %1716
  %1718 = fadd fast float %1717, %950
  %1719 = fmul fast float %1651, %1517
  %1720 = fadd fast float %1719, %952
  br label %1721

; <label>:1721                                    ; preds = %1707, %1705, %1671, %1653, %1628, %1135, %954, %939
  %1722 = phi float [ %940, %1628 ], [ %940, %1135 ], [ %940, %939 ], [ %1710, %1707 ], [ %940, %1705 ], [ %1674, %1671 ], [ %1658, %1653 ], [ %940, %954 ]
  %1723 = phi float [ %941, %1628 ], [ %941, %1135 ], [ %941, %939 ], [ %1711, %1707 ], [ %941, %1705 ], [ %1675, %1671 ], [ %1659, %1653 ], [ %941, %954 ]
  %1724 = phi float [ %1629, %1628 ], [ %942, %1135 ], [ %942, %939 ], [ %1629, %1707 ], [ %1629, %1705 ], [ %1629, %1671 ], [ %1629, %1653 ], [ %942, %954 ]
  %1725 = phi float [ %1630, %1628 ], [ %943, %1135 ], [ %943, %939 ], [ %1630, %1707 ], [ %1630, %1705 ], [ %1630, %1671 ], [ %1630, %1653 ], [ %943, %954 ]
  %1726 = phi float [ %1631, %1628 ], [ %944, %1135 ], [ %944, %939 ], [ %1631, %1707 ], [ %1631, %1705 ], [ %1631, %1671 ], [ %1631, %1653 ], [ %944, %954 ]
  %1727 = phi float [ %1632, %1628 ], [ %945, %1135 ], [ %945, %939 ], [ %1632, %1707 ], [ %1632, %1705 ], [ %1632, %1671 ], [ %1632, %1653 ], [ %945, %954 ]
  %1728 = phi float [ %1633, %1628 ], [ %946, %1135 ], [ %946, %939 ], [ %1633, %1707 ], [ %1633, %1705 ], [ %1633, %1671 ], [ %1633, %1653 ], [ %946, %954 ]
  %1729 = phi float [ %1634, %1628 ], [ %947, %1135 ], [ %947, %939 ], [ %1634, %1707 ], [ %1634, %1705 ], [ %1634, %1671 ], [ %1634, %1653 ], [ %947, %954 ]
  %1730 = phi float [ %1635, %1628 ], [ %948, %1135 ], [ %948, %939 ], [ %1635, %1707 ], [ %1635, %1705 ], [ %1635, %1671 ], [ %1635, %1653 ], [ %948, %954 ]
  %1731 = phi float [ %950, %1628 ], [ %950, %1135 ], [ %950, %939 ], [ %1718, %1707 ], [ %950, %1705 ], [ %1702, %1671 ], [ %1665, %1653 ], [ %950, %954 ]
  %1732 = phi float [ %951, %1628 ], [ %951, %1135 ], [ %951, %939 ], [ %1715, %1707 ], [ %951, %1705 ], [ %1679, %1671 ], [ %1662, %1653 ], [ %951, %954 ]
  %1733 = phi float [ %952, %1628 ], [ %952, %1135 ], [ %952, %939 ], [ %1720, %1707 ], [ %952, %1705 ], [ %1704, %1671 ], [ %1668, %1653 ], [ %952, %954 ]
  %1734 = phi float [ %1636, %1628 ], [ %953, %1135 ], [ %953, %939 ], [ %1636, %1707 ], [ %1636, %1705 ], [ %1636, %1671 ], [ %1636, %1653 ], [ %953, %954 ]
  br i1 %388, label %2502, label %1735

; <label>:1735                                    ; preds = %1721
  %1736 = icmp ult i32 %441, 3
  %1737 = add i32 %32, 56
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = add i32 %32, 60
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = or i32 %1742, %1739
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %2502, label %1745

; <label>:1745                                    ; preds = %1735
  %1746 = and i32 %1739, 262144
  %1747 = icmp ne i32 %1746, 0
  %1748 = select i1 %1747, float %37, float 1.000000e+00
  %1749 = select i1 %1747, float %38, float 0.000000e+00
  %1750 = select i1 %1747, float %39, float 0.000000e+00
  %1751 = select i1 %1747, float %40, float 1.000000e+00
  %1752 = select i1 %1747, float %41, float %64
  %1753 = select i1 %1747, float %42, float %65
  %1754 = add i32 %32, 316
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = lshr i32 %1756, 16
  %1758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1757)  ; LegacyF16ToF32(value)
  %1759 = fmul fast float %1758, 0x3F50624DE0000000
  %1760 = add i32 %32, 120
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 16
  %1764 = and i32 %1763, 255
  %1765 = lshr i32 %1762, 24
  %1766 = add i32 %32, 324
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 65535
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = lshr i32 %1768, 16
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = add i32 %32, 64
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = lshr i32 %1775, 22
  %1777 = shl nuw nsw i32 %1776, 5
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = shl i32 %1775, 4
  %1780 = and i32 %1779, 32752
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1775, 7
  %1783 = and i32 %1782, 32752
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1787 = fmul fast float %1786, 1.000000e+03
  %1788 = fmul fast float %338, %1787
  %1789 = call float @dx.op.unary.f32(i32 22, float %1788)  ; Frc(value)
  %1790 = fadd fast float %1789, %328
  %1791 = fmul fast float %339, %1787
  %1792 = call float @dx.op.unary.f32(i32 22, float %1791)  ; Frc(value)
  %1793 = fadd fast float %1792, %330
  %1794 = fmul fast float %1759, %1787
  %1795 = call float @dx.op.unary.f32(i32 22, float %1794)  ; Frc(value)
  %1796 = fmul fast float %1795, 0x401921FB60000000
  %1797 = fadd fast float %1796, %1778
  %1798 = call float @dx.op.unary.f32(i32 13, float %1797)  ; Sin(value)
  %1799 = call float @dx.op.unary.f32(i32 12, float %1797)  ; Cos(value)
  %1800 = fsub fast float -0.000000e+00, %1798
  %1801 = fadd fast float %1752, -5.000000e-01
  %1802 = fadd fast float %1753, -5.000000e-01
  %1803 = fmul fast float %1770, %1801
  %1804 = fmul fast float %1772, %1802
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fmul fast float %1781, %1805
  %1808 = fmul fast float %1784, %1806
  %1809 = fmul fast float %1799, %1807
  %1810 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1808, float %1809)  ; FMad(a,b,c)
  %1811 = fmul fast float %1798, %1807
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1808, float %1811)  ; FMad(a,b,c)
  %1813 = fadd fast float %1790, %1810
  %1814 = fadd fast float %1793, %1812
  %1815 = icmp ugt i32 %1764, 1
  %1816 = icmp ugt i32 %1762, 33554431
  %1817 = or i1 %1816, %1815
  br i1 %1817, label %1818, label %1843

; <label>:1818                                    ; preds = %1745
  %1819 = add i32 %32, 260
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = lshr i32 %1821, 16
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = fmul fast float %1786, %1823
  %1825 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1826 = mul nuw nsw i32 %1764, %1765
  %1827 = uitofp i32 %1826 to float
  %1828 = fmul fast float %1825, %1827
  %1829 = call float @dx.op.unary.f32(i32 27, float %1828)  ; Round_ni(value)
  %1830 = fptoui float %1829 to i32
  %1831 = urem i32 %1830, %1764
  %1832 = udiv i32 %1830, %1765
  %1833 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1834 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1835 = uitofp i32 %1831 to float
  %1836 = uitofp i32 %1832 to float
  %1837 = fadd fast float %1833, %1835
  %1838 = fadd fast float %1834, %1836
  %1839 = uitofp i32 %1764 to float
  %1840 = uitofp i32 %1765 to float
  %1841 = fdiv fast float %1837, %1839
  %1842 = fdiv fast float %1838, %1840
  br label %1843

; <label>:1843                                    ; preds = %1818, %1745
  %1844 = phi float [ %1841, %1818 ], [ %1813, %1745 ]
  %1845 = phi float [ %1842, %1818 ], [ %1814, %1745 ]
  %1846 = and i32 %1739, 256
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1894, label %1848

; <label>:1848                                    ; preds = %1843
  %1849 = add i32 %32, 448
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %73, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = add i32 %32, 132
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = shl i32 %1858, 4
  %1860 = and i32 %1859, 32752
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = lshr i32 %1858, 7
  %1863 = and i32 %1862, 32752
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = fsub fast float 1.000000e+00, %437
  %1866 = call float @dx.op.binary.f32(i32 35, float %1865, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1867 = bitcast float %437 to i32
  %1868 = sitofp i32 %1867 to float
  %1869 = fadd fast float %1868, 0xC1CFBF8940000000
  %1870 = fmul fast float %1864, %1869
  %1871 = fadd fast float %1870, 0x41CFBF8940000000
  %1872 = fptosi float %1871 to i32
  %1873 = bitcast i32 %1872 to float
  %1874 = bitcast float %1866 to i32
  %1875 = sitofp i32 %1874 to float
  %1876 = fadd fast float %1875, 0xC1CFBF8940000000
  %1877 = fmul fast float %1876, %1864
  %1878 = fadd fast float %1877, 0x41CFBF8940000000
  %1879 = fptosi float %1878 to i32
  %1880 = bitcast i32 %1879 to float
  %1881 = fmul fast float %1873, %1861
  %1882 = fmul fast float %1880, %1861
  %1883 = fsub fast float %1866, %1881
  %1884 = fadd fast float %1882, %1866
  %1885 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1886 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1887 = fsub fast float %1855, %1885
  %1888 = fsub fast float %1886, %1885
  %1889 = bitcast float %1888 to i32
  %1890 = sub nsw i32 2129859010, %1889
  %1891 = bitcast i32 %1890 to float
  %1892 = fmul fast float %1891, %1887
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  br label %1894

; <label>:1894                                    ; preds = %1848, %1843
  %1895 = phi float [ %1893, %1848 ], [ %437, %1843 ]
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 128
  %1899 = icmp eq i32 %1898, 0
  br i1 %1899, label %1916, label %1900

; <label>:1900                                    ; preds = %1894
  %1901 = add i32 %32, 432
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = add i32 %1903, 0
  %1905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1905, %dx.types.Handle %73, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 524288
  %1911 = icmp ne i32 %1910, 0
  %1912 = fcmp fast ogt float %1907, 0x3FE0101020000000
  %1913 = select i1 %1912, float 1.000000e+00, float 0.000000e+00
  %1914 = select i1 %1911, float %1913, float %1907
  %1915 = fmul fast float %1914, %1895
  br label %1916

; <label>:1916                                    ; preds = %1900, %1894
  %1917 = phi float [ %1915, %1900 ], [ %1895, %1894 ]
  %1918 = fcmp fast ult float %1917, 0x3F70101020000000
  br i1 %1918, label %2502, label %1919

; <label>:1919                                    ; preds = %1916
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 16
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %2122, label %1924

; <label>:1924                                    ; preds = %1919
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = add i32 %32, 384
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = add i32 %1929, 0
  %1931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1931, %dx.types.Handle %72, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = extractvalue %dx.types.ResRet.f32 %1932, 3
  %1937 = and i32 %1926, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = lshr i32 %1926, 8
  %1940 = and i32 %1939, 255
  %1941 = uitofp i32 %1940 to float
  %1942 = fmul fast float %1936, %1938
  %1943 = fadd fast float %1942, %1941
  %1944 = fmul fast float %1943, 0x3F70101000000000
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 512
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1957, label %1949

; <label>:1949                                    ; preds = %1924
  %1950 = add i32 %32, 472
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = add i32 %1952, 0
  %1954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1954, %dx.types.Handle %73, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  br label %1957

; <label>:1957                                    ; preds = %1949, %1924
  %1958 = phi float [ %1956, %1949 ], [ 1.000000e+00, %1924 ]
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 33554432
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %2069, label %1963

; <label>:1963                                    ; preds = %1957
  %1964 = add i32 %32, 256
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 65535
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = lshr i32 %1966, 16
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = add i32 %32, 260
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 65535
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = lshr i32 %1977, 24
  %1979 = uitofp i32 %1978 to float
  %1980 = fmul fast float %1979, 0x3F70101020000000
  %1981 = and i32 %1977, 255
  %1982 = uitofp i32 %1981 to float
  %1983 = fmul fast float %1982, 0x3F70101020000000
  %1984 = lshr i32 %1977, 8
  %1985 = and i32 %1984, 255
  %1986 = uitofp i32 %1985 to float
  %1987 = fmul fast float %1986, 0x3F70101020000000
  %1988 = lshr i32 %1977, 16
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = fmul fast float %1990, 0x3F70101020000000
  %1992 = add i32 %32, 252
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 24
  %1996 = uitofp i32 %1995 to float
  %1997 = fmul fast float %1996, 0x3F70101020000000
  %1998 = and i32 %1994, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F70101020000000
  %2001 = lshr i32 %1994, 8
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = fmul fast float %2003, 0x3F70101020000000
  %2005 = lshr i32 %1994, 16
  %2006 = and i32 %2005, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = fmul fast float %2007, 0x3F70101020000000
  %2009 = bitcast float %1933 to i32
  %2010 = ashr i32 %2009, 1
  %2011 = sub nsw i32 1597463174, %2010
  %2012 = bitcast i32 %2011 to float
  %2013 = fmul fast float %1933, 5.000000e-01
  %2014 = fmul fast float %2012, %2012
  %2015 = fmul fast float %2014, %2013
  %2016 = fsub fast float 1.500000e+00, %2015
  %2017 = fmul fast float %2012, %1933
  %2018 = fmul fast float %2017, %2016
  %2019 = bitcast float %1934 to i32
  %2020 = ashr i32 %2019, 1
  %2021 = sub nsw i32 1597463174, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %1934, 5.000000e-01
  %2024 = fmul fast float %2022, %2022
  %2025 = fmul fast float %2024, %2023
  %2026 = fsub fast float 1.500000e+00, %2025
  %2027 = fmul fast float %2022, %1934
  %2028 = fmul fast float %2027, %2026
  %2029 = bitcast float %1935 to i32
  %2030 = ashr i32 %2029, 1
  %2031 = sub nsw i32 1597463174, %2030
  %2032 = bitcast i32 %2031 to float
  %2033 = fmul fast float %1935, 5.000000e-01
  %2034 = fmul fast float %2032, %2032
  %2035 = fmul fast float %2034, %2033
  %2036 = fsub fast float 1.500000e+00, %2035
  %2037 = fmul fast float %2032, %1935
  %2038 = fmul fast float %2037, %2036
  %2039 = fsub fast float %2018, %2000
  %2040 = fsub fast float %2028, %2004
  %2041 = fsub fast float %2038, %2008
  %2042 = fmul fast float %2039, %1968
  %2043 = fmul fast float %2040, %1970
  %2044 = fmul fast float %2041, %1975
  %2045 = fadd fast float %2042, %1983
  %2046 = fadd fast float %2043, %1987
  %2047 = fadd fast float %2044, %1991
  %2048 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2051 = fmul fast float %2048, %2048
  %2052 = fmul fast float %2049, %2049
  %2053 = fmul fast float %2050, %2050
  %2054 = fsub fast float %2051, %1933
  %2055 = fsub fast float %2052, %1934
  %2056 = fsub fast float %2053, %1935
  %2057 = fmul fast float %2054, %1958
  %2058 = fmul fast float %2055, %1958
  %2059 = fmul fast float %2056, %1958
  %2060 = fadd fast float %2057, %1933
  %2061 = fadd fast float %2058, %1934
  %2062 = fadd fast float %2059, %1935
  %2063 = fadd fast float %1980, %1944
  %2064 = fsub fast float %2063, %1997
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2066 = fsub fast float %2065, %1944
  %2067 = fmul fast float %2066, %1958
  %2068 = fadd fast float %2067, %1944
  br label %2122

; <label>:2069                                    ; preds = %1957
  %2070 = and i32 %1960, 134217728
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2106, label %2072

; <label>:2072                                    ; preds = %2069
  %2073 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2074 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %2075 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %2076 = fadd fast float %2073, -5.000000e-01
  %2077 = fadd fast float %2074, -5.000000e-01
  %2078 = fadd fast float %2075, -5.000000e-01
  %2079 = fmul fast float %2076, %1958
  %2080 = fmul fast float %2077, %1958
  %2081 = fmul fast float %2078, %1958
  %2082 = fadd fast float %2079, 5.000000e-01
  %2083 = fadd fast float %2080, 5.000000e-01
  %2084 = fadd fast float %2081, 5.000000e-01
  %2085 = call float @dx.op.unary.f32(i32 24, float %1933)  ; Sqrt(value)
  %2086 = call float @dx.op.unary.f32(i32 24, float %1934)  ; Sqrt(value)
  %2087 = call float @dx.op.unary.f32(i32 24, float %1935)  ; Sqrt(value)
  %2088 = fmul fast float %2082, 2.000000e+00
  %2089 = fsub fast float 1.000000e+00, %2088
  %2090 = fmul fast float %2089, %2085
  %2091 = fadd fast float %2090, %2088
  %2092 = fmul fast float %2091, %2085
  %2093 = fmul fast float %2083, 2.000000e+00
  %2094 = fsub fast float 1.000000e+00, %2093
  %2095 = fmul fast float %2094, %2086
  %2096 = fadd fast float %2095, %2093
  %2097 = fmul fast float %2096, %2086
  %2098 = fmul fast float %2084, 2.000000e+00
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = fmul fast float %2099, %2087
  %2101 = fadd fast float %2100, %2098
  %2102 = fmul fast float %2101, %2087
  %2103 = fmul fast float %2092, %2092
  %2104 = fmul fast float %2097, %2097
  %2105 = fmul fast float %2102, %2102
  br label %2122

; <label>:2106                                    ; preds = %2069
  %2107 = fmul fast float %315, %315
  %2108 = fmul fast float %319, %319
  %2109 = fmul fast float %323, %323
  %2110 = fadd fast float %2107, -1.000000e+00
  %2111 = fadd fast float %2108, -1.000000e+00
  %2112 = fadd fast float %2109, -1.000000e+00
  %2113 = fmul fast float %1958, %2110
  %2114 = fmul fast float %1958, %2111
  %2115 = fmul fast float %1958, %2112
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fadd fast float %2115, 1.000000e+00
  %2119 = fmul fast float %2116, %1933
  %2120 = fmul fast float %2117, %1934
  %2121 = fmul fast float %2118, %1935
  br label %2122

; <label>:2122                                    ; preds = %2106, %2072, %1963, %1919
  %2123 = phi float [ %2068, %1963 ], [ %1944, %2072 ], [ %1944, %2106 ], [ 0x3FA23C0BE0000000, %1919 ]
  %2124 = phi float [ %2060, %1963 ], [ %2103, %2072 ], [ %2119, %2106 ], [ 1.000000e+00, %1919 ]
  %2125 = phi float [ %2061, %1963 ], [ %2104, %2072 ], [ %2120, %2106 ], [ 1.000000e+00, %1919 ]
  %2126 = phi float [ %2062, %1963 ], [ %2105, %2072 ], [ %2121, %2106 ], [ 1.000000e+00, %1919 ]
  %2127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.i32 %2127, 1
  %2129 = and i32 %2128, 1
  %2130 = icmp ne i32 %2129, 0
  %2131 = add i32 %32, 356
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 32
  %2135 = icmp ne i32 %2134, 0
  %2136 = and i1 %2130, %2135
  %2137 = select i1 %2136, float 1.000000e+00, float %2124
  %2138 = select i1 %2136, float 0x3FD3333340000000, float %2125
  %2139 = select i1 %2136, float 0x3FD3333340000000, float %2126
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = and i32 %2141, 32
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2216, label %2144

; <label>:2144                                    ; preds = %2122
  %2145 = add i32 %32, 124
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = add i32 %32, 400
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = add i32 %2150, 0
  %2152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2152, %dx.types.Handle %72, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.ResRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2153, 2
  %2157 = extractvalue %dx.types.ResRet.f32 %2153, 3
  %2158 = and i32 %2147, 255
  %2159 = uitofp i32 %2158 to float
  %2160 = lshr i32 %2147, 8
  %2161 = and i32 %2160, 255
  %2162 = uitofp i32 %2161 to float
  %2163 = lshr i32 %2147, 16
  %2164 = and i32 %2163, 255
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2165, 0x3F70101000000000
  %2167 = fmul fast float %2154, %2159
  %2168 = fadd fast float %2167, %2162
  %2169 = fmul fast float %2168, 0x3F70101000000000
  %2170 = fadd fast float %2155, -5.000000e-01
  %2171 = fadd fast float %2157, -5.000000e-01
  %2172 = fmul fast float %2170, %2166
  %2173 = fmul fast float %2171, %2166
  %2174 = fadd fast float %2172, 5.000000e-01
  %2175 = fadd fast float %2173, 5.000000e-01
  %2176 = fmul fast float %2174, 2.000000e+00
  %2177 = fadd fast float %2176, -1.000000e+00
  %2178 = fmul fast float %2175, 2.000000e+00
  %2179 = fadd fast float %2178, -1.000000e+00
  %2180 = fadd fast float %2177, %2179
  %2181 = fmul fast float %2180, 5.000000e-01
  %2182 = fsub fast float %2177, %2179
  %2183 = fmul fast float %2182, 5.000000e-01
  %2184 = call float @dx.op.unary.f32(i32 6, float %2181)  ; FAbs(value)
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = call float @dx.op.unary.f32(i32 6, float %2183)  ; FAbs(value)
  %2187 = fsub fast float %2185, %2186
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2181, float %2183, float %2187, float %2181, float %2183, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.unary.f32(i32 25, float %2188)  ; Rsqrt(value)
  %2190 = fmul fast float %2181, %2189
  %2191 = fmul fast float %2183, %2189
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = and i32 %2193, 67108864
  %2195 = icmp eq i32 %2194, 0
  br i1 %2195, label %2212, label %2196

; <label>:2196                                    ; preds = %2144
  %2197 = add i32 %32, 312
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 65535
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 65535
  %2205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2204)  ; LegacyF16ToF32(value)
  %2206 = lshr i32 %2199, 16
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = fsub fast float %2169, %2207
  %2209 = fmul fast float %2208, %2201
  %2210 = fadd fast float %2209, %2205
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  br label %2212

; <label>:2212                                    ; preds = %2196, %2144
  %2213 = phi float [ %2211, %2196 ], [ %2169, %2144 ]
  %2214 = call float @dx.op.dot2.f32(i32 54, float %2190, float %2191, float %1748, float %1749)  ; Dot2(ax,ay,bx,by)
  %2215 = call float @dx.op.dot2.f32(i32 54, float %2190, float %2191, float %1750, float %1751)  ; Dot2(ax,ay,bx,by)
  br label %2216

; <label>:2216                                    ; preds = %2212, %2122
  %2217 = phi float [ %2213, %2212 ], [ 0x3FD6666660000000, %2122 ]
  %2218 = phi float [ %2214, %2212 ], [ 0.000000e+00, %2122 ]
  %2219 = phi float [ %2215, %2212 ], [ 0.000000e+00, %2122 ]
  %2220 = phi float [ %2156, %2212 ], [ 1.000000e+00, %2122 ]
  %2221 = add i32 %32, 192
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = lshr i32 %2223, 22
  %2225 = shl nuw nsw i32 %2224, 5
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 64
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %2264, label %2231

; <label>:2231                                    ; preds = %2216
  %2232 = add i32 %32, 416
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = add i32 %2234, 0
  %2236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 131072
  %2240 = icmp eq i32 %2239, 0
  %2241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2236, %dx.types.Handle %72, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2245 = fmul fast float %2242, %303
  %2246 = fmul fast float %2243, %306
  %2247 = fmul fast float %2244, %309
  br i1 %2240, label %2254, label %2248

; <label>:2248                                    ; preds = %2231
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = fmul fast float %2250, %2245
  %2252 = fmul fast float %2250, %2246
  %2253 = fmul fast float %2250, %2247
  br label %2254

; <label>:2254                                    ; preds = %2248, %2231
  %2255 = phi float [ %2251, %2248 ], [ %2245, %2231 ]
  %2256 = phi float [ %2252, %2248 ], [ %2246, %2231 ]
  %2257 = phi float [ %2253, %2248 ], [ %2247, %2231 ]
  %2258 = fmul fast float %2255, %2226
  %2259 = select i1 %202, float %2258, float %2255
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2256, float %2257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = select i1 %202, float 0.000000e+00, float %2255
  %2262 = select i1 %202, float %2260, float %2256
  %2263 = select i1 %202, float 0.000000e+00, float %2257
  br label %2264

; <label>:2264                                    ; preds = %2254, %2216
  %2265 = phi float [ %2261, %2254 ], [ 0.000000e+00, %2216 ]
  %2266 = phi float [ %2262, %2254 ], [ 0.000000e+00, %2216 ]
  %2267 = phi float [ %2263, %2254 ], [ 0.000000e+00, %2216 ]
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 14336
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2297, label %2272

; <label>:2272                                    ; preds = %2264
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 4096
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2297, label %2277

; <label>:2277                                    ; preds = %2272
  %2278 = and i32 %2274, 1048576
  %2279 = icmp ne i32 %2278, 0
  %2280 = add i32 %32, 488
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = add i32 %2282, 0
  %2284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2284, %dx.types.Handle %73, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 2
  %2287 = select i1 %2279, float 1.000000e+00, float %2286
  %2288 = add i32 %32, 196
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = and i32 %2290, 65535
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = lshr i32 %2290, 16
  %2294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2293)  ; LegacyF16ToF32(value)
  %2295 = fmul fast float %2292, %2287
  %2296 = fadd fast float %2295, %2294
  br label %2297

; <label>:2297                                    ; preds = %2277, %2272, %2264
  %2298 = phi float [ %2296, %2277 ], [ 0.000000e+00, %2272 ], [ 0.000000e+00, %2264 ]
  %2299 = add i32 %32, 128
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = lshr i32 %2301, 8
  %2305 = and i32 %2304, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %2139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = fmul fast float %2306, %2307
  %2309 = fadd fast float %2308, %2303
  %2310 = fmul fast float %2309, 0x3F70101020000000
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  br i1 %1736, label %2312, label %2320

; <label>:2312                                    ; preds = %2297
  %2313 = fsub fast float 1.000000e+00, %1917
  %2314 = fmul fast float %2313, %1727
  %2315 = fmul fast float %2313, %1728
  %2316 = fmul fast float %2313, %1729
  %2317 = fmul fast float %2313, %1724
  %2318 = fmul fast float %2313, %1725
  %2319 = fmul fast float %2313, %1726
  br label %2320

; <label>:2320                                    ; preds = %2312, %2297
  %2321 = phi float [ %2317, %2312 ], [ %1724, %2297 ]
  %2322 = phi float [ %2318, %2312 ], [ %1725, %2297 ]
  %2323 = phi float [ %2319, %2312 ], [ %1726, %2297 ]
  %2324 = phi float [ %2314, %2312 ], [ %1727, %2297 ]
  %2325 = phi float [ %2315, %2312 ], [ %1728, %2297 ]
  %2326 = phi float [ %2316, %2312 ], [ %1729, %2297 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 3
  %2330 = icmp eq i32 %2329, 3
  br i1 %2330, label %2409, label %2331

; <label>:2331                                    ; preds = %2320
  %2332 = and i32 %2328, 16
  %2333 = icmp ne i32 %2332, 0
  %2334 = select i1 %2333, float %1917, float 0.000000e+00
  %2335 = icmp eq i32 %2329, 0
  br i1 %2335, label %2336, label %2364

; <label>:2336                                    ; preds = %2331
  %2337 = and i32 %2328, 64
  %2338 = icmp ne i32 %2337, 0
  %2339 = select i1 %2338, float %1917, float 0.000000e+00
  %2340 = fsub fast float %2137, %2324
  %2341 = fsub fast float %2138, %2325
  %2342 = fsub fast float %2139, %2326
  %2343 = fmul fast float %2334, %2340
  %2344 = fmul fast float %2334, %2341
  %2345 = fmul fast float %2334, %2342
  %2346 = fadd fast float %2343, %2324
  %2347 = fadd fast float %2344, %2325
  %2348 = fadd fast float %2345, %2326
  %2349 = fsub fast float %2123, %1730
  %2350 = fmul fast float %2334, %2349
  %2351 = fadd fast float %2350, %1730
  %2352 = fsub fast float %2265, %2321
  %2353 = fsub fast float %2266, %2322
  %2354 = fsub fast float %2267, %2323
  %2355 = fmul fast float %2339, %2352
  %2356 = fmul fast float %2339, %2353
  %2357 = fmul fast float %2339, %2354
  %2358 = fadd fast float %2355, %2321
  %2359 = fadd fast float %2356, %2322
  %2360 = fadd fast float %2357, %2323
  %2361 = fsub fast float %2311, %1734
  %2362 = fmul fast float %2334, %2361
  %2363 = fadd fast float %2362, %1734
  br label %2409

; <label>:2364                                    ; preds = %2331
  %2365 = icmp eq i32 %2329, 1
  br i1 %2365, label %2366, label %2379

; <label>:2366                                    ; preds = %2364
  %2367 = fadd fast float %2137, -1.000000e+00
  %2368 = fadd fast float %2138, -1.000000e+00
  %2369 = fadd fast float %2139, -1.000000e+00
  %2370 = fmul fast float %2334, %2367
  %2371 = fmul fast float %2334, %2368
  %2372 = fmul fast float %2334, %2369
  %2373 = fadd fast float %2370, 1.000000e+00
  %2374 = fadd fast float %2371, 1.000000e+00
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fmul fast float %2373, %2324
  %2377 = fmul fast float %2374, %2325
  %2378 = fmul fast float %2375, %2326
  br label %2409

; <label>:2379                                    ; preds = %2364
  %2380 = icmp eq i32 %2329, 2
  br i1 %2380, label %2381, label %2409

; <label>:2381                                    ; preds = %2379
  %2382 = call float @dx.op.unary.f32(i32 24, float %2137)  ; Sqrt(value)
  %2383 = call float @dx.op.unary.f32(i32 24, float %2138)  ; Sqrt(value)
  %2384 = call float @dx.op.unary.f32(i32 24, float %2139)  ; Sqrt(value)
  %2385 = fadd fast float %2382, -5.000000e-01
  %2386 = fadd fast float %2383, -5.000000e-01
  %2387 = fadd fast float %2384, -5.000000e-01
  %2388 = fmul fast float %2385, %2334
  %2389 = fmul fast float %2386, %2334
  %2390 = fmul fast float %2387, %2334
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = fadd fast float %2389, 5.000000e-01
  %2393 = fadd fast float %2390, 5.000000e-01
  %2394 = fmul fast float %2391, 2.000000e+00
  %2395 = fsub fast float 1.000000e+00, %2394
  %2396 = fmul fast float %2395, %2324
  %2397 = fadd fast float %2396, %2394
  %2398 = fmul fast float %2397, %2324
  %2399 = fmul fast float %2392, 2.000000e+00
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2400, %2325
  %2402 = fadd fast float %2401, %2399
  %2403 = fmul fast float %2402, %2325
  %2404 = fmul fast float %2393, 2.000000e+00
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2405, %2326
  %2407 = fadd fast float %2406, %2404
  %2408 = fmul fast float %2407, %2326
  br label %2409

; <label>:2409                                    ; preds = %2381, %2379, %2366, %2336, %2320
  %2410 = phi float [ %2321, %2320 ], [ %2321, %2381 ], [ %2321, %2379 ], [ %2321, %2366 ], [ %2358, %2336 ]
  %2411 = phi float [ %2322, %2320 ], [ %2322, %2381 ], [ %2322, %2379 ], [ %2322, %2366 ], [ %2359, %2336 ]
  %2412 = phi float [ %2323, %2320 ], [ %2323, %2381 ], [ %2323, %2379 ], [ %2323, %2366 ], [ %2360, %2336 ]
  %2413 = phi float [ %2324, %2320 ], [ %2398, %2381 ], [ %2324, %2379 ], [ %2376, %2366 ], [ %2346, %2336 ]
  %2414 = phi float [ %2325, %2320 ], [ %2403, %2381 ], [ %2325, %2379 ], [ %2377, %2366 ], [ %2347, %2336 ]
  %2415 = phi float [ %2326, %2320 ], [ %2408, %2381 ], [ %2326, %2379 ], [ %2378, %2366 ], [ %2348, %2336 ]
  %2416 = phi float [ %1730, %2320 ], [ %1730, %2381 ], [ %1730, %2379 ], [ %1730, %2366 ], [ %2351, %2336 ]
  %2417 = phi float [ %1734, %2320 ], [ %1734, %2381 ], [ %1734, %2379 ], [ %1734, %2366 ], [ %2363, %2336 ]
  %2418 = and i32 %2328, 12
  %2419 = icmp eq i32 %2418, 12
  br i1 %2419, label %2502, label %2420

; <label>:2420                                    ; preds = %2409
  %2421 = and i32 %2328, 2097184
  %2422 = icmp eq i32 %2421, 2097184
  %2423 = select i1 %2422, float %1917, float 0.000000e+00
  %2424 = and i32 %2328, 4194336
  %2425 = icmp eq i32 %2424, 4194336
  %2426 = select i1 %2425, float %1917, float 0.000000e+00
  %2427 = and i32 %2328, 8388640
  %2428 = icmp eq i32 %2427, 8388640
  %2429 = select i1 %2428, float %1917, float 0.000000e+00
  %2430 = and i32 %2328, 4096
  %2431 = icmp ne i32 %2430, 0
  %2432 = select i1 %2431, float %1917, float 0.000000e+00
  %2433 = icmp eq i32 %2418, 0
  br i1 %2433, label %2434, label %2450

; <label>:2434                                    ; preds = %2420
  %2435 = fsub fast float %2218, %1722
  %2436 = fsub fast float %2219, %1723
  %2437 = fmul fast float %2423, %2435
  %2438 = fmul fast float %2423, %2436
  %2439 = fadd fast float %2437, %1722
  %2440 = fadd fast float %2438, %1723
  %2441 = fsub fast float %2220, %1732
  %2442 = fmul fast float %2426, %2441
  %2443 = fadd fast float %2442, %1732
  %2444 = fsub fast float %2217, %1731
  %2445 = fmul fast float %2429, %2444
  %2446 = fadd fast float %2445, %1731
  %2447 = fsub fast float %2298, %1733
  %2448 = fmul fast float %2432, %2447
  %2449 = fadd fast float %2448, %1733
  br label %2502

; <label>:2450                                    ; preds = %2420
  %2451 = icmp eq i32 %2418, 4
  br i1 %2451, label %2452, label %2486

; <label>:2452                                    ; preds = %2450
  %2453 = fmul fast float %2423, %2218
  %2454 = fmul fast float %2423, %2219
  %2455 = fadd fast float %2453, %1722
  %2456 = fadd fast float %2454, %1723
  %2457 = call float @dx.op.binary.f32(i32 36, float %1732, float %2220)  ; FMin(a,b)
  %2458 = fsub fast float %2457, %1732
  %2459 = fmul fast float %2458, %2426
  %2460 = fadd fast float %2459, %1732
  %2461 = fadd fast float %2217, %1731
  %2462 = fmul fast float %2461, 0x3FF337FAE0000000
  %2463 = fmul fast float %1731, %1731
  %2464 = fmul fast float %2217, %2217
  %2465 = fadd fast float %2464, %2463
  %2466 = fmul fast float %2465, 0x3FE5152B00000000
  %2467 = fmul fast float %1731, 0xBFCC1F85E0000000
  %2468 = fmul fast float %2467, %2217
  %2469 = fadd fast float %2468, 0xBFE1363700000000
  %2470 = fadd fast float %2469, %2462
  %2471 = fsub fast float %2470, %2466
  %2472 = fmul fast float %2461, 0x3FBA6F0D00000000
  %2473 = fmul fast float %2465, 0x3FD0432880000000
  %2474 = fmul fast float %1731, 0xBFEF110800000000
  %2475 = fmul fast float %2474, %2217
  %2476 = fadd fast float %2475, 1.000000e+00
  %2477 = fsub fast float %2476, %2472
  %2478 = fadd fast float %2477, %2473
  %2479 = fdiv fast float %2471, %2478
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fsub fast float %2480, %1731
  %2482 = fmul fast float %2481, %2429
  %2483 = fadd fast float %2482, %1731
  %2484 = fmul fast float %2432, %2298
  %2485 = fadd fast float %2484, %1733
  br label %2502

; <label>:2486                                    ; preds = %2450
  %2487 = icmp eq i32 %2418, 8
  br i1 %2487, label %2488, label %2502

; <label>:2488                                    ; preds = %2486
  %2489 = fmul fast float %2423, %2218
  %2490 = fmul fast float %2423, %2219
  %2491 = fadd fast float %2489, %1722
  %2492 = fadd fast float %2490, %1723
  %2493 = call float @dx.op.binary.f32(i32 36, float %1732, float %2220)  ; FMin(a,b)
  %2494 = fsub fast float %2493, %1732
  %2495 = fmul fast float %2494, %2426
  %2496 = fadd fast float %2495, %1732
  %2497 = fsub fast float %2217, %1731
  %2498 = fmul fast float %2429, %2497
  %2499 = fadd fast float %2498, %1731
  %2500 = fmul fast float %2432, %2298
  %2501 = fadd fast float %2500, %1733
  br label %2502

; <label>:2502                                    ; preds = %2488, %2486, %2452, %2434, %2409, %1916, %1735, %1721
  %2503 = phi float [ %1722, %2409 ], [ %1722, %1916 ], [ %1722, %1721 ], [ %2491, %2488 ], [ %1722, %2486 ], [ %2455, %2452 ], [ %2439, %2434 ], [ %1722, %1735 ]
  %2504 = phi float [ %1723, %2409 ], [ %1723, %1916 ], [ %1723, %1721 ], [ %2492, %2488 ], [ %1723, %2486 ], [ %2456, %2452 ], [ %2440, %2434 ], [ %1723, %1735 ]
  %2505 = phi float [ %2410, %2409 ], [ %1724, %1916 ], [ %1724, %1721 ], [ %2410, %2488 ], [ %2410, %2486 ], [ %2410, %2452 ], [ %2410, %2434 ], [ %1724, %1735 ]
  %2506 = phi float [ %2411, %2409 ], [ %1725, %1916 ], [ %1725, %1721 ], [ %2411, %2488 ], [ %2411, %2486 ], [ %2411, %2452 ], [ %2411, %2434 ], [ %1725, %1735 ]
  %2507 = phi float [ %2412, %2409 ], [ %1726, %1916 ], [ %1726, %1721 ], [ %2412, %2488 ], [ %2412, %2486 ], [ %2412, %2452 ], [ %2412, %2434 ], [ %1726, %1735 ]
  %2508 = phi float [ %2413, %2409 ], [ %1727, %1916 ], [ %1727, %1721 ], [ %2413, %2488 ], [ %2413, %2486 ], [ %2413, %2452 ], [ %2413, %2434 ], [ %1727, %1735 ]
  %2509 = phi float [ %2414, %2409 ], [ %1728, %1916 ], [ %1728, %1721 ], [ %2414, %2488 ], [ %2414, %2486 ], [ %2414, %2452 ], [ %2414, %2434 ], [ %1728, %1735 ]
  %2510 = phi float [ %2415, %2409 ], [ %1729, %1916 ], [ %1729, %1721 ], [ %2415, %2488 ], [ %2415, %2486 ], [ %2415, %2452 ], [ %2415, %2434 ], [ %1729, %1735 ]
  %2511 = phi float [ %2416, %2409 ], [ %1730, %1916 ], [ %1730, %1721 ], [ %2416, %2488 ], [ %2416, %2486 ], [ %2416, %2452 ], [ %2416, %2434 ], [ %1730, %1735 ]
  %2512 = phi float [ %1731, %2409 ], [ %1731, %1916 ], [ %1731, %1721 ], [ %2499, %2488 ], [ %1731, %2486 ], [ %2483, %2452 ], [ %2446, %2434 ], [ %1731, %1735 ]
  %2513 = phi float [ %1732, %2409 ], [ %1732, %1916 ], [ %1732, %1721 ], [ %2496, %2488 ], [ %1732, %2486 ], [ %2460, %2452 ], [ %2443, %2434 ], [ %1732, %1735 ]
  %2514 = phi float [ %1733, %2409 ], [ %1733, %1916 ], [ %1733, %1721 ], [ %2501, %2488 ], [ %1733, %2486 ], [ %2485, %2452 ], [ %2449, %2434 ], [ %1733, %1735 ]
  %2515 = phi float [ %2417, %2409 ], [ %1734, %1916 ], [ %1734, %1721 ], [ %2417, %2488 ], [ %2417, %2486 ], [ %2417, %2452 ], [ %2417, %2434 ], [ %1734, %1735 ]
  br i1 %390, label %3283, label %2516

; <label>:2516                                    ; preds = %2502
  %2517 = icmp ult i32 %441, 4
  %2518 = add i32 %32, 72
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %32, 76
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = or i32 %2523, %2520
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %3283, label %2526

; <label>:2526                                    ; preds = %2516
  %2527 = and i32 %2520, 262144
  %2528 = icmp ne i32 %2527, 0
  %2529 = select i1 %2528, float %37, float 1.000000e+00
  %2530 = select i1 %2528, float %38, float 0.000000e+00
  %2531 = select i1 %2528, float %39, float 0.000000e+00
  %2532 = select i1 %2528, float %40, float 1.000000e+00
  %2533 = select i1 %2528, float %41, float %64
  %2534 = select i1 %2528, float %42, float %65
  %2535 = add i32 %32, 332
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = lshr i32 %2537, 16
  %2539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2538)  ; LegacyF16ToF32(value)
  %2540 = fmul fast float %2539, 0x3F50624DE0000000
  %2541 = add i32 %32, 136
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = lshr i32 %2543, 16
  %2545 = and i32 %2544, 255
  %2546 = lshr i32 %2543, 24
  %2547 = add i32 %32, 340
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 65535
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = lshr i32 %2549, 16
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = add i32 %32, 80
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = lshr i32 %2556, 22
  %2558 = shl nuw nsw i32 %2557, 5
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = shl i32 %2556, 4
  %2561 = and i32 %2560, 32752
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = lshr i32 %2556, 7
  %2564 = and i32 %2563, 32752
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 3
  %2568 = fmul fast float %2567, 1.000000e+03
  %2569 = fmul fast float %380, %2568
  %2570 = call float @dx.op.unary.f32(i32 22, float %2569)  ; Frc(value)
  %2571 = fadd fast float %2570, %370
  %2572 = fmul fast float %381, %2568
  %2573 = call float @dx.op.unary.f32(i32 22, float %2572)  ; Frc(value)
  %2574 = fadd fast float %2573, %372
  %2575 = fmul fast float %2540, %2568
  %2576 = call float @dx.op.unary.f32(i32 22, float %2575)  ; Frc(value)
  %2577 = fmul fast float %2576, 0x401921FB60000000
  %2578 = fadd fast float %2577, %2559
  %2579 = call float @dx.op.unary.f32(i32 13, float %2578)  ; Sin(value)
  %2580 = call float @dx.op.unary.f32(i32 12, float %2578)  ; Cos(value)
  %2581 = fsub fast float -0.000000e+00, %2579
  %2582 = fadd fast float %2533, -5.000000e-01
  %2583 = fadd fast float %2534, -5.000000e-01
  %2584 = fmul fast float %2551, %2582
  %2585 = fmul fast float %2553, %2583
  %2586 = fadd fast float %2584, 5.000000e-01
  %2587 = fadd fast float %2585, 5.000000e-01
  %2588 = fmul fast float %2562, %2586
  %2589 = fmul fast float %2565, %2587
  %2590 = fmul fast float %2580, %2588
  %2591 = call float @dx.op.tertiary.f32(i32 46, float %2581, float %2589, float %2590)  ; FMad(a,b,c)
  %2592 = fmul fast float %2579, %2588
  %2593 = call float @dx.op.tertiary.f32(i32 46, float %2580, float %2589, float %2592)  ; FMad(a,b,c)
  %2594 = fadd fast float %2571, %2591
  %2595 = fadd fast float %2574, %2593
  %2596 = icmp ugt i32 %2545, 1
  %2597 = icmp ugt i32 %2543, 33554431
  %2598 = or i1 %2597, %2596
  br i1 %2598, label %2599, label %2624

; <label>:2599                                    ; preds = %2526
  %2600 = add i32 %32, 276
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 16
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = fmul fast float %2567, %2604
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = mul nuw nsw i32 %2545, %2546
  %2608 = uitofp i32 %2607 to float
  %2609 = fmul fast float %2606, %2608
  %2610 = call float @dx.op.unary.f32(i32 27, float %2609)  ; Round_ni(value)
  %2611 = fptoui float %2610 to i32
  %2612 = urem i32 %2611, %2545
  %2613 = udiv i32 %2611, %2546
  %2614 = call float @dx.op.unary.f32(i32 22, float %2594)  ; Frc(value)
  %2615 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2616 = uitofp i32 %2612 to float
  %2617 = uitofp i32 %2613 to float
  %2618 = fadd fast float %2614, %2616
  %2619 = fadd fast float %2615, %2617
  %2620 = uitofp i32 %2545 to float
  %2621 = uitofp i32 %2546 to float
  %2622 = fdiv fast float %2618, %2620
  %2623 = fdiv fast float %2619, %2621
  br label %2624

; <label>:2624                                    ; preds = %2599, %2526
  %2625 = phi float [ %2622, %2599 ], [ %2594, %2526 ]
  %2626 = phi float [ %2623, %2599 ], [ %2595, %2526 ]
  %2627 = and i32 %2520, 256
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2675, label %2629

; <label>:2629                                    ; preds = %2624
  %2630 = add i32 %32, 452
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = add i32 %2632, 0
  %2634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2634, %dx.types.Handle %73, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = add i32 %32, 148
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = shl i32 %2639, 4
  %2641 = and i32 %2640, 32752
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = lshr i32 %2639, 7
  %2644 = and i32 %2643, 32752
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = fsub fast float 1.000000e+00, %436
  %2647 = call float @dx.op.binary.f32(i32 35, float %2646, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2648 = bitcast float %436 to i32
  %2649 = sitofp i32 %2648 to float
  %2650 = fadd fast float %2649, 0xC1CFBF8940000000
  %2651 = fmul fast float %2645, %2650
  %2652 = fadd fast float %2651, 0x41CFBF8940000000
  %2653 = fptosi float %2652 to i32
  %2654 = bitcast i32 %2653 to float
  %2655 = bitcast float %2647 to i32
  %2656 = sitofp i32 %2655 to float
  %2657 = fadd fast float %2656, 0xC1CFBF8940000000
  %2658 = fmul fast float %2657, %2645
  %2659 = fadd fast float %2658, 0x41CFBF8940000000
  %2660 = fptosi float %2659 to i32
  %2661 = bitcast i32 %2660 to float
  %2662 = fmul fast float %2654, %2642
  %2663 = fmul fast float %2661, %2642
  %2664 = fsub fast float %2647, %2662
  %2665 = fadd fast float %2663, %2647
  %2666 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  %2667 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2668 = fsub fast float %2636, %2666
  %2669 = fsub fast float %2667, %2666
  %2670 = bitcast float %2669 to i32
  %2671 = sub nsw i32 2129859010, %2670
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2672, %2668
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  br label %2675

; <label>:2675                                    ; preds = %2629, %2624
  %2676 = phi float [ %2674, %2629 ], [ %436, %2624 ]
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 128
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2697, label %2681

; <label>:2681                                    ; preds = %2675
  %2682 = add i32 %32, 436
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = add i32 %2684, 0
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2686, %dx.types.Handle %73, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = and i32 %2690, 524288
  %2692 = icmp ne i32 %2691, 0
  %2693 = fcmp fast ogt float %2688, 0x3FE0101020000000
  %2694 = select i1 %2693, float 1.000000e+00, float 0.000000e+00
  %2695 = select i1 %2692, float %2694, float %2688
  %2696 = fmul fast float %2695, %2676
  br label %2697

; <label>:2697                                    ; preds = %2681, %2675
  %2698 = phi float [ %2696, %2681 ], [ %2676, %2675 ]
  %2699 = fcmp fast ult float %2698, 0x3F70101020000000
  br i1 %2699, label %3283, label %2700

; <label>:2700                                    ; preds = %2697
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 16
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2903, label %2705

; <label>:2705                                    ; preds = %2700
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = add i32 %32, 388
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = add i32 %2710, 0
  %2712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2712, %dx.types.Handle %72, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = extractvalue %dx.types.ResRet.f32 %2713, 3
  %2718 = and i32 %2707, 255
  %2719 = uitofp i32 %2718 to float
  %2720 = lshr i32 %2707, 8
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2717, %2719
  %2724 = fadd fast float %2723, %2722
  %2725 = fmul fast float %2724, 0x3F70101000000000
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, 512
  %2729 = icmp eq i32 %2728, 0
  br i1 %2729, label %2738, label %2730

; <label>:2730                                    ; preds = %2705
  %2731 = add i32 %32, 476
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = add i32 %2733, 0
  %2735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2735, %dx.types.Handle %73, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  br label %2738

; <label>:2738                                    ; preds = %2730, %2705
  %2739 = phi float [ %2737, %2730 ], [ 1.000000e+00, %2705 ]
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 33554432
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2850, label %2744

; <label>:2744                                    ; preds = %2738
  %2745 = add i32 %32, 272
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 65535
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = lshr i32 %2747, 16
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = add i32 %32, 276
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = and i32 %2754, 65535
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = lshr i32 %2758, 24
  %2760 = uitofp i32 %2759 to float
  %2761 = fmul fast float %2760, 0x3F70101020000000
  %2762 = and i32 %2758, 255
  %2763 = uitofp i32 %2762 to float
  %2764 = fmul fast float %2763, 0x3F70101020000000
  %2765 = lshr i32 %2758, 8
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = fmul fast float %2767, 0x3F70101020000000
  %2769 = lshr i32 %2758, 16
  %2770 = and i32 %2769, 255
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = add i32 %32, 268
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = lshr i32 %2775, 24
  %2777 = uitofp i32 %2776 to float
  %2778 = fmul fast float %2777, 0x3F70101020000000
  %2779 = and i32 %2775, 255
  %2780 = uitofp i32 %2779 to float
  %2781 = fmul fast float %2780, 0x3F70101020000000
  %2782 = lshr i32 %2775, 8
  %2783 = and i32 %2782, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = lshr i32 %2775, 16
  %2787 = and i32 %2786, 255
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = bitcast float %2714 to i32
  %2791 = ashr i32 %2790, 1
  %2792 = sub nsw i32 1597463174, %2791
  %2793 = bitcast i32 %2792 to float
  %2794 = fmul fast float %2714, 5.000000e-01
  %2795 = fmul fast float %2793, %2793
  %2796 = fmul fast float %2795, %2794
  %2797 = fsub fast float 1.500000e+00, %2796
  %2798 = fmul fast float %2793, %2714
  %2799 = fmul fast float %2798, %2797
  %2800 = bitcast float %2715 to i32
  %2801 = ashr i32 %2800, 1
  %2802 = sub nsw i32 1597463174, %2801
  %2803 = bitcast i32 %2802 to float
  %2804 = fmul fast float %2715, 5.000000e-01
  %2805 = fmul fast float %2803, %2803
  %2806 = fmul fast float %2805, %2804
  %2807 = fsub fast float 1.500000e+00, %2806
  %2808 = fmul fast float %2803, %2715
  %2809 = fmul fast float %2808, %2807
  %2810 = bitcast float %2716 to i32
  %2811 = ashr i32 %2810, 1
  %2812 = sub nsw i32 1597463174, %2811
  %2813 = bitcast i32 %2812 to float
  %2814 = fmul fast float %2716, 5.000000e-01
  %2815 = fmul fast float %2813, %2813
  %2816 = fmul fast float %2815, %2814
  %2817 = fsub fast float 1.500000e+00, %2816
  %2818 = fmul fast float %2813, %2716
  %2819 = fmul fast float %2818, %2817
  %2820 = fsub fast float %2799, %2781
  %2821 = fsub fast float %2809, %2785
  %2822 = fsub fast float %2819, %2789
  %2823 = fmul fast float %2820, %2749
  %2824 = fmul fast float %2821, %2751
  %2825 = fmul fast float %2822, %2756
  %2826 = fadd fast float %2823, %2764
  %2827 = fadd fast float %2824, %2768
  %2828 = fadd fast float %2825, %2772
  %2829 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2830 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2832 = fmul fast float %2829, %2829
  %2833 = fmul fast float %2830, %2830
  %2834 = fmul fast float %2831, %2831
  %2835 = fsub fast float %2832, %2714
  %2836 = fsub fast float %2833, %2715
  %2837 = fsub fast float %2834, %2716
  %2838 = fmul fast float %2835, %2739
  %2839 = fmul fast float %2836, %2739
  %2840 = fmul fast float %2837, %2739
  %2841 = fadd fast float %2838, %2714
  %2842 = fadd fast float %2839, %2715
  %2843 = fadd fast float %2840, %2716
  %2844 = fadd fast float %2761, %2725
  %2845 = fsub fast float %2844, %2778
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = fsub fast float %2846, %2725
  %2848 = fmul fast float %2847, %2739
  %2849 = fadd fast float %2848, %2725
  br label %2903

; <label>:2850                                    ; preds = %2738
  %2851 = and i32 %2741, 134217728
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2887, label %2853

; <label>:2853                                    ; preds = %2850
  %2854 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %2855 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %2856 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2857 = fadd fast float %2854, -5.000000e-01
  %2858 = fadd fast float %2855, -5.000000e-01
  %2859 = fadd fast float %2856, -5.000000e-01
  %2860 = fmul fast float %2857, %2739
  %2861 = fmul fast float %2858, %2739
  %2862 = fmul fast float %2859, %2739
  %2863 = fadd fast float %2860, 5.000000e-01
  %2864 = fadd fast float %2861, 5.000000e-01
  %2865 = fadd fast float %2862, 5.000000e-01
  %2866 = call float @dx.op.unary.f32(i32 24, float %2714)  ; Sqrt(value)
  %2867 = call float @dx.op.unary.f32(i32 24, float %2715)  ; Sqrt(value)
  %2868 = call float @dx.op.unary.f32(i32 24, float %2716)  ; Sqrt(value)
  %2869 = fmul fast float %2863, 2.000000e+00
  %2870 = fsub fast float 1.000000e+00, %2869
  %2871 = fmul fast float %2870, %2866
  %2872 = fadd fast float %2871, %2869
  %2873 = fmul fast float %2872, %2866
  %2874 = fmul fast float %2864, 2.000000e+00
  %2875 = fsub fast float 1.000000e+00, %2874
  %2876 = fmul fast float %2875, %2867
  %2877 = fadd fast float %2876, %2874
  %2878 = fmul fast float %2877, %2867
  %2879 = fmul fast float %2865, 2.000000e+00
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = fmul fast float %2880, %2868
  %2882 = fadd fast float %2881, %2879
  %2883 = fmul fast float %2882, %2868
  %2884 = fmul fast float %2873, %2873
  %2885 = fmul fast float %2878, %2878
  %2886 = fmul fast float %2883, %2883
  br label %2903

; <label>:2887                                    ; preds = %2850
  %2888 = fmul fast float %357, %357
  %2889 = fmul fast float %361, %361
  %2890 = fmul fast float %365, %365
  %2891 = fadd fast float %2888, -1.000000e+00
  %2892 = fadd fast float %2889, -1.000000e+00
  %2893 = fadd fast float %2890, -1.000000e+00
  %2894 = fmul fast float %2739, %2891
  %2895 = fmul fast float %2739, %2892
  %2896 = fmul fast float %2739, %2893
  %2897 = fadd fast float %2894, 1.000000e+00
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fmul fast float %2897, %2714
  %2901 = fmul fast float %2898, %2715
  %2902 = fmul fast float %2899, %2716
  br label %2903

; <label>:2903                                    ; preds = %2887, %2853, %2744, %2700
  %2904 = phi float [ %2849, %2744 ], [ %2725, %2853 ], [ %2725, %2887 ], [ 0x3FA23C0BE0000000, %2700 ]
  %2905 = phi float [ %2841, %2744 ], [ %2884, %2853 ], [ %2900, %2887 ], [ 1.000000e+00, %2700 ]
  %2906 = phi float [ %2842, %2744 ], [ %2885, %2853 ], [ %2901, %2887 ], [ 1.000000e+00, %2700 ]
  %2907 = phi float [ %2843, %2744 ], [ %2886, %2853 ], [ %2902, %2887 ], [ 1.000000e+00, %2700 ]
  %2908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.i32 %2908, 1
  %2910 = and i32 %2909, 1
  %2911 = icmp ne i32 %2910, 0
  %2912 = add i32 %32, 356
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 32
  %2916 = icmp ne i32 %2915, 0
  %2917 = and i1 %2911, %2916
  %2918 = select i1 %2917, float 1.000000e+00, float %2905
  %2919 = select i1 %2917, float 0x3FD3333340000000, float %2906
  %2920 = select i1 %2917, float 0x3FD3333340000000, float %2907
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 32
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2997, label %2925

; <label>:2925                                    ; preds = %2903
  %2926 = add i32 %32, 140
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %32, 404
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %72, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.ResRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.ResRet.f32 %2934, 2
  %2938 = extractvalue %dx.types.ResRet.f32 %2934, 3
  %2939 = and i32 %2928, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = lshr i32 %2928, 8
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = lshr i32 %2928, 16
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2946, 0x3F70101000000000
  %2948 = fmul fast float %2935, %2940
  %2949 = fadd fast float %2948, %2943
  %2950 = fmul fast float %2949, 0x3F70101000000000
  %2951 = fadd fast float %2936, -5.000000e-01
  %2952 = fadd fast float %2938, -5.000000e-01
  %2953 = fmul fast float %2951, %2947
  %2954 = fmul fast float %2952, %2947
  %2955 = fadd fast float %2953, 5.000000e-01
  %2956 = fadd fast float %2954, 5.000000e-01
  %2957 = fmul fast float %2955, 2.000000e+00
  %2958 = fadd fast float %2957, -1.000000e+00
  %2959 = fmul fast float %2956, 2.000000e+00
  %2960 = fadd fast float %2959, -1.000000e+00
  %2961 = fadd fast float %2958, %2960
  %2962 = fmul fast float %2961, 5.000000e-01
  %2963 = fsub fast float %2958, %2960
  %2964 = fmul fast float %2963, 5.000000e-01
  %2965 = call float @dx.op.unary.f32(i32 6, float %2962)  ; FAbs(value)
  %2966 = fsub fast float 1.000000e+00, %2965
  %2967 = call float @dx.op.unary.f32(i32 6, float %2964)  ; FAbs(value)
  %2968 = fsub fast float %2966, %2967
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2962, float %2964, float %2968, float %2962, float %2964, float %2968)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = call float @dx.op.unary.f32(i32 25, float %2969)  ; Rsqrt(value)
  %2971 = fmul fast float %2962, %2970
  %2972 = fmul fast float %2964, %2970
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 67108864
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %2993, label %2977

; <label>:2977                                    ; preds = %2925
  %2978 = add i32 %32, 328
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 65535
  %2982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2981)  ; LegacyF16ToF32(value)
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 65535
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = lshr i32 %2980, 16
  %2988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2987)  ; LegacyF16ToF32(value)
  %2989 = fsub fast float %2950, %2988
  %2990 = fmul fast float %2989, %2982
  %2991 = fadd fast float %2990, %2986
  %2992 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  br label %2993

; <label>:2993                                    ; preds = %2977, %2925
  %2994 = phi float [ %2992, %2977 ], [ %2950, %2925 ]
  %2995 = call float @dx.op.dot2.f32(i32 54, float %2971, float %2972, float %2529, float %2530)  ; Dot2(ax,ay,bx,by)
  %2996 = call float @dx.op.dot2.f32(i32 54, float %2971, float %2972, float %2531, float %2532)  ; Dot2(ax,ay,bx,by)
  br label %2997

; <label>:2997                                    ; preds = %2993, %2903
  %2998 = phi float [ %2994, %2993 ], [ 0x3FD6666660000000, %2903 ]
  %2999 = phi float [ %2995, %2993 ], [ 0.000000e+00, %2903 ]
  %3000 = phi float [ %2996, %2993 ], [ 0.000000e+00, %2903 ]
  %3001 = phi float [ %2937, %2993 ], [ 1.000000e+00, %2903 ]
  %3002 = add i32 %32, 208
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = lshr i32 %3004, 22
  %3006 = shl nuw nsw i32 %3005, 5
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 64
  %3011 = icmp eq i32 %3010, 0
  br i1 %3011, label %3045, label %3012

; <label>:3012                                    ; preds = %2997
  %3013 = add i32 %32, 420
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = add i32 %3015, 0
  %3017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 131072
  %3021 = icmp eq i32 %3020, 0
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3017, %dx.types.Handle %72, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fmul fast float %3023, %345
  %3027 = fmul fast float %3024, %348
  %3028 = fmul fast float %3025, %351
  br i1 %3021, label %3035, label %3029

; <label>:3029                                    ; preds = %3012
  %3030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.f32 %3030, 0
  %3032 = fmul fast float %3031, %3026
  %3033 = fmul fast float %3031, %3027
  %3034 = fmul fast float %3031, %3028
  br label %3035

; <label>:3035                                    ; preds = %3029, %3012
  %3036 = phi float [ %3032, %3029 ], [ %3026, %3012 ]
  %3037 = phi float [ %3033, %3029 ], [ %3027, %3012 ]
  %3038 = phi float [ %3034, %3029 ], [ %3028, %3012 ]
  %3039 = fmul fast float %3036, %3007
  %3040 = select i1 %202, float %3039, float %3036
  %3041 = call float @dx.op.dot3.f32(i32 55, float %3040, float %3037, float %3038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = select i1 %202, float 0.000000e+00, float %3036
  %3043 = select i1 %202, float %3041, float %3037
  %3044 = select i1 %202, float 0.000000e+00, float %3038
  br label %3045

; <label>:3045                                    ; preds = %3035, %2997
  %3046 = phi float [ %3042, %3035 ], [ 0.000000e+00, %2997 ]
  %3047 = phi float [ %3043, %3035 ], [ 0.000000e+00, %2997 ]
  %3048 = phi float [ %3044, %3035 ], [ 0.000000e+00, %2997 ]
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 14336
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3078, label %3053

; <label>:3053                                    ; preds = %3045
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 4096
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3078, label %3058

; <label>:3058                                    ; preds = %3053
  %3059 = and i32 %3055, 1048576
  %3060 = icmp ne i32 %3059, 0
  %3061 = add i32 %32, 492
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %3063, 0
  %3065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3065, %dx.types.Handle %73, float %2625, float %2626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3068 = select i1 %3060, float 1.000000e+00, float %3067
  %3069 = add i32 %32, 212
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = and i32 %3071, 65535
  %3073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3072)  ; LegacyF16ToF32(value)
  %3074 = lshr i32 %3071, 16
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = fmul fast float %3073, %3068
  %3077 = fadd fast float %3076, %3075
  br label %3078

; <label>:3078                                    ; preds = %3058, %3053, %3045
  %3079 = phi float [ %3077, %3058 ], [ 0.000000e+00, %3053 ], [ 0.000000e+00, %3045 ]
  %3080 = add i32 %32, 144
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 255
  %3084 = uitofp i32 %3083 to float
  %3085 = lshr i32 %3082, 8
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = call float @dx.op.dot3.f32(i32 55, float %2918, float %2919, float %2920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = fmul fast float %3087, %3088
  %3090 = fadd fast float %3089, %3084
  %3091 = fmul fast float %3090, 0x3F70101020000000
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  br i1 %2517, label %3093, label %3101

; <label>:3093                                    ; preds = %3078
  %3094 = fsub fast float 1.000000e+00, %2698
  %3095 = fmul fast float %3094, %2508
  %3096 = fmul fast float %3094, %2509
  %3097 = fmul fast float %3094, %2510
  %3098 = fmul fast float %3094, %2505
  %3099 = fmul fast float %3094, %2506
  %3100 = fmul fast float %3094, %2507
  br label %3101

; <label>:3101                                    ; preds = %3093, %3078
  %3102 = phi float [ %3098, %3093 ], [ %2505, %3078 ]
  %3103 = phi float [ %3099, %3093 ], [ %2506, %3078 ]
  %3104 = phi float [ %3100, %3093 ], [ %2507, %3078 ]
  %3105 = phi float [ %3095, %3093 ], [ %2508, %3078 ]
  %3106 = phi float [ %3096, %3093 ], [ %2509, %3078 ]
  %3107 = phi float [ %3097, %3093 ], [ %2510, %3078 ]
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 3
  %3111 = icmp eq i32 %3110, 3
  br i1 %3111, label %3190, label %3112

; <label>:3112                                    ; preds = %3101
  %3113 = and i32 %3109, 16
  %3114 = icmp ne i32 %3113, 0
  %3115 = select i1 %3114, float %2698, float 0.000000e+00
  %3116 = icmp eq i32 %3110, 0
  br i1 %3116, label %3117, label %3145

; <label>:3117                                    ; preds = %3112
  %3118 = and i32 %3109, 64
  %3119 = icmp ne i32 %3118, 0
  %3120 = select i1 %3119, float %2698, float 0.000000e+00
  %3121 = fsub fast float %2918, %3105
  %3122 = fsub fast float %2919, %3106
  %3123 = fsub fast float %2920, %3107
  %3124 = fmul fast float %3115, %3121
  %3125 = fmul fast float %3115, %3122
  %3126 = fmul fast float %3115, %3123
  %3127 = fadd fast float %3124, %3105
  %3128 = fadd fast float %3125, %3106
  %3129 = fadd fast float %3126, %3107
  %3130 = fsub fast float %2904, %2511
  %3131 = fmul fast float %3115, %3130
  %3132 = fadd fast float %3131, %2511
  %3133 = fsub fast float %3046, %3102
  %3134 = fsub fast float %3047, %3103
  %3135 = fsub fast float %3048, %3104
  %3136 = fmul fast float %3120, %3133
  %3137 = fmul fast float %3120, %3134
  %3138 = fmul fast float %3120, %3135
  %3139 = fadd fast float %3136, %3102
  %3140 = fadd fast float %3137, %3103
  %3141 = fadd fast float %3138, %3104
  %3142 = fsub fast float %3092, %2515
  %3143 = fmul fast float %3115, %3142
  %3144 = fadd fast float %3143, %2515
  br label %3190

; <label>:3145                                    ; preds = %3112
  %3146 = icmp eq i32 %3110, 1
  br i1 %3146, label %3147, label %3160

; <label>:3147                                    ; preds = %3145
  %3148 = fadd fast float %2918, -1.000000e+00
  %3149 = fadd fast float %2919, -1.000000e+00
  %3150 = fadd fast float %2920, -1.000000e+00
  %3151 = fmul fast float %3115, %3148
  %3152 = fmul fast float %3115, %3149
  %3153 = fmul fast float %3115, %3150
  %3154 = fadd fast float %3151, 1.000000e+00
  %3155 = fadd fast float %3152, 1.000000e+00
  %3156 = fadd fast float %3153, 1.000000e+00
  %3157 = fmul fast float %3154, %3105
  %3158 = fmul fast float %3155, %3106
  %3159 = fmul fast float %3156, %3107
  br label %3190

; <label>:3160                                    ; preds = %3145
  %3161 = icmp eq i32 %3110, 2
  br i1 %3161, label %3162, label %3190

; <label>:3162                                    ; preds = %3160
  %3163 = call float @dx.op.unary.f32(i32 24, float %2918)  ; Sqrt(value)
  %3164 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %3165 = call float @dx.op.unary.f32(i32 24, float %2920)  ; Sqrt(value)
  %3166 = fadd fast float %3163, -5.000000e-01
  %3167 = fadd fast float %3164, -5.000000e-01
  %3168 = fadd fast float %3165, -5.000000e-01
  %3169 = fmul fast float %3166, %3115
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3115
  %3172 = fadd fast float %3169, 5.000000e-01
  %3173 = fadd fast float %3170, 5.000000e-01
  %3174 = fadd fast float %3171, 5.000000e-01
  %3175 = fmul fast float %3172, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3105
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3105
  %3180 = fmul fast float %3173, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3106
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3106
  %3185 = fmul fast float %3174, 2.000000e+00
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3186, %3107
  %3188 = fadd fast float %3187, %3185
  %3189 = fmul fast float %3188, %3107
  br label %3190

; <label>:3190                                    ; preds = %3162, %3160, %3147, %3117, %3101
  %3191 = phi float [ %3102, %3101 ], [ %3102, %3162 ], [ %3102, %3160 ], [ %3102, %3147 ], [ %3139, %3117 ]
  %3192 = phi float [ %3103, %3101 ], [ %3103, %3162 ], [ %3103, %3160 ], [ %3103, %3147 ], [ %3140, %3117 ]
  %3193 = phi float [ %3104, %3101 ], [ %3104, %3162 ], [ %3104, %3160 ], [ %3104, %3147 ], [ %3141, %3117 ]
  %3194 = phi float [ %3105, %3101 ], [ %3179, %3162 ], [ %3105, %3160 ], [ %3157, %3147 ], [ %3127, %3117 ]
  %3195 = phi float [ %3106, %3101 ], [ %3184, %3162 ], [ %3106, %3160 ], [ %3158, %3147 ], [ %3128, %3117 ]
  %3196 = phi float [ %3107, %3101 ], [ %3189, %3162 ], [ %3107, %3160 ], [ %3159, %3147 ], [ %3129, %3117 ]
  %3197 = phi float [ %2511, %3101 ], [ %2511, %3162 ], [ %2511, %3160 ], [ %2511, %3147 ], [ %3132, %3117 ]
  %3198 = phi float [ %2515, %3101 ], [ %2515, %3162 ], [ %2515, %3160 ], [ %2515, %3147 ], [ %3144, %3117 ]
  %3199 = and i32 %3109, 12
  %3200 = icmp eq i32 %3199, 12
  br i1 %3200, label %3283, label %3201

; <label>:3201                                    ; preds = %3190
  %3202 = and i32 %3109, 2097184
  %3203 = icmp eq i32 %3202, 2097184
  %3204 = select i1 %3203, float %2698, float 0.000000e+00
  %3205 = and i32 %3109, 4194336
  %3206 = icmp eq i32 %3205, 4194336
  %3207 = select i1 %3206, float %2698, float 0.000000e+00
  %3208 = and i32 %3109, 8388640
  %3209 = icmp eq i32 %3208, 8388640
  %3210 = select i1 %3209, float %2698, float 0.000000e+00
  %3211 = and i32 %3109, 4096
  %3212 = icmp ne i32 %3211, 0
  %3213 = select i1 %3212, float %2698, float 0.000000e+00
  %3214 = icmp eq i32 %3199, 0
  br i1 %3214, label %3215, label %3231

; <label>:3215                                    ; preds = %3201
  %3216 = fsub fast float %2999, %2503
  %3217 = fsub fast float %3000, %2504
  %3218 = fmul fast float %3204, %3216
  %3219 = fmul fast float %3204, %3217
  %3220 = fadd fast float %3218, %2503
  %3221 = fadd fast float %3219, %2504
  %3222 = fsub fast float %3001, %2513
  %3223 = fmul fast float %3207, %3222
  %3224 = fadd fast float %3223, %2513
  %3225 = fsub fast float %2998, %2512
  %3226 = fmul fast float %3210, %3225
  %3227 = fadd fast float %3226, %2512
  %3228 = fsub fast float %3079, %2514
  %3229 = fmul fast float %3213, %3228
  %3230 = fadd fast float %3229, %2514
  br label %3283

; <label>:3231                                    ; preds = %3201
  %3232 = icmp eq i32 %3199, 4
  br i1 %3232, label %3233, label %3267

; <label>:3233                                    ; preds = %3231
  %3234 = fmul fast float %3204, %2999
  %3235 = fmul fast float %3204, %3000
  %3236 = fadd fast float %3234, %2503
  %3237 = fadd fast float %3235, %2504
  %3238 = call float @dx.op.binary.f32(i32 36, float %2513, float %3001)  ; FMin(a,b)
  %3239 = fsub fast float %3238, %2513
  %3240 = fmul fast float %3239, %3207
  %3241 = fadd fast float %3240, %2513
  %3242 = fadd fast float %2998, %2512
  %3243 = fmul fast float %3242, 0x3FF337FAE0000000
  %3244 = fmul fast float %2512, %2512
  %3245 = fmul fast float %2998, %2998
  %3246 = fadd fast float %3245, %3244
  %3247 = fmul fast float %3246, 0x3FE5152B00000000
  %3248 = fmul fast float %2512, 0xBFCC1F85E0000000
  %3249 = fmul fast float %3248, %2998
  %3250 = fadd fast float %3249, 0xBFE1363700000000
  %3251 = fadd fast float %3250, %3243
  %3252 = fsub fast float %3251, %3247
  %3253 = fmul fast float %3242, 0x3FBA6F0D00000000
  %3254 = fmul fast float %3246, 0x3FD0432880000000
  %3255 = fmul fast float %2512, 0xBFEF110800000000
  %3256 = fmul fast float %3255, %2998
  %3257 = fadd fast float %3256, 1.000000e+00
  %3258 = fsub fast float %3257, %3253
  %3259 = fadd fast float %3258, %3254
  %3260 = fdiv fast float %3252, %3259
  %3261 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  %3262 = fsub fast float %3261, %2512
  %3263 = fmul fast float %3262, %3210
  %3264 = fadd fast float %3263, %2512
  %3265 = fmul fast float %3213, %3079
  %3266 = fadd fast float %3265, %2514
  br label %3283

; <label>:3267                                    ; preds = %3231
  %3268 = icmp eq i32 %3199, 8
  br i1 %3268, label %3269, label %3283

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3204, %2999
  %3271 = fmul fast float %3204, %3000
  %3272 = fadd fast float %3270, %2503
  %3273 = fadd fast float %3271, %2504
  %3274 = call float @dx.op.binary.f32(i32 36, float %2513, float %3001)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2513
  %3276 = fmul fast float %3275, %3207
  %3277 = fadd fast float %3276, %2513
  %3278 = fsub fast float %2998, %2512
  %3279 = fmul fast float %3210, %3278
  %3280 = fadd fast float %3279, %2512
  %3281 = fmul fast float %3213, %3079
  %3282 = fadd fast float %3281, %2514
  br label %3283

; <label>:3283                                    ; preds = %3269, %3267, %3233, %3215, %3190, %2697, %2516, %2502
  %3284 = phi float [ %2503, %3190 ], [ %2503, %2697 ], [ %2503, %2502 ], [ %2503, %2516 ], [ %3220, %3215 ], [ %3236, %3233 ], [ %2503, %3267 ], [ %3272, %3269 ]
  %3285 = phi float [ %2504, %3190 ], [ %2504, %2697 ], [ %2504, %2502 ], [ %2504, %2516 ], [ %3221, %3215 ], [ %3237, %3233 ], [ %2504, %3267 ], [ %3273, %3269 ]
  %3286 = phi float [ %3191, %3190 ], [ %2505, %2697 ], [ %2505, %2502 ], [ %2505, %2516 ], [ %3191, %3215 ], [ %3191, %3233 ], [ %3191, %3267 ], [ %3191, %3269 ]
  %3287 = phi float [ %3192, %3190 ], [ %2506, %2697 ], [ %2506, %2502 ], [ %2506, %2516 ], [ %3192, %3215 ], [ %3192, %3233 ], [ %3192, %3267 ], [ %3192, %3269 ]
  %3288 = phi float [ %3193, %3190 ], [ %2507, %2697 ], [ %2507, %2502 ], [ %2507, %2516 ], [ %3193, %3215 ], [ %3193, %3233 ], [ %3193, %3267 ], [ %3193, %3269 ]
  %3289 = phi float [ %3194, %3190 ], [ %2508, %2697 ], [ %2508, %2502 ], [ %2508, %2516 ], [ %3194, %3215 ], [ %3194, %3233 ], [ %3194, %3267 ], [ %3194, %3269 ]
  %3290 = phi float [ %3195, %3190 ], [ %2509, %2697 ], [ %2509, %2502 ], [ %2509, %2516 ], [ %3195, %3215 ], [ %3195, %3233 ], [ %3195, %3267 ], [ %3195, %3269 ]
  %3291 = phi float [ %3196, %3190 ], [ %2510, %2697 ], [ %2510, %2502 ], [ %2510, %2516 ], [ %3196, %3215 ], [ %3196, %3233 ], [ %3196, %3267 ], [ %3196, %3269 ]
  %3292 = phi float [ %3197, %3190 ], [ %2511, %2697 ], [ %2511, %2502 ], [ %2511, %2516 ], [ %3197, %3215 ], [ %3197, %3233 ], [ %3197, %3267 ], [ %3197, %3269 ]
  %3293 = phi float [ %2512, %3190 ], [ %2512, %2697 ], [ %2512, %2502 ], [ %2512, %2516 ], [ %3227, %3215 ], [ %3264, %3233 ], [ %2512, %3267 ], [ %3280, %3269 ]
  %3294 = phi float [ %2513, %3190 ], [ %2513, %2697 ], [ %2513, %2502 ], [ %2513, %2516 ], [ %3224, %3215 ], [ %3241, %3233 ], [ %2513, %3267 ], [ %3277, %3269 ]
  %3295 = phi float [ %2514, %3190 ], [ %2514, %2697 ], [ %2514, %2502 ], [ %2514, %2516 ], [ %3230, %3215 ], [ %3266, %3233 ], [ %2514, %3267 ], [ %3282, %3269 ]
  %3296 = phi float [ %3198, %3190 ], [ %2515, %2697 ], [ %2515, %2502 ], [ %2515, %2516 ], [ %3198, %3215 ], [ %3198, %3233 ], [ %3198, %3267 ], [ %3198, %3269 ]
  %3297 = add i32 %32, 456
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = add i32 %3299, 0
  %3301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3301, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = add i32 %32, 360
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.i32 %3305, 1
  %3308 = bitcast i32 %3306 to float
  %3309 = bitcast i32 %3307 to float
  %3310 = fcmp fast oge float %3308, 0.000000e+00
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = select i1 %3310, float %3308, float %3312
  %3314 = add i32 %32, 460
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = add i32 %3316, 0
  %3318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3318, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = fmul fast float %3320, %3309
  %3322 = fadd fast float %3321, %3313
  %3323 = call float @dx.op.dot2.f32(i32 54, float %3284, float %3285, float %3284, float %3285)  ; Dot2(ax,ay,bx,by)
  %3324 = fmul fast float %3323, 0x3FE3333340000000
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = call float @dx.op.dot3.f32(i32 55, float %3284, float %3285, float %3325, float %3284, float %3285, float %3325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3327 = call float @dx.op.unary.f32(i32 25, float %3326)  ; Rsqrt(value)
  %3328 = fmul fast float %3327, %3284
  %3329 = fmul fast float %3327, %3285
  %3330 = fmul fast float %3325, %3327
  %3331 = fmul fast float %3330, %83
  %3332 = fmul fast float %3330, %84
  %3333 = fmul fast float %3330, %85
  %3334 = fmul fast float %3328, %57
  %3335 = fmul fast float %3328, %58
  %3336 = fmul fast float %3328, %59
  %3337 = fadd fast float %3331, %3334
  %3338 = fadd fast float %3332, %3335
  %3339 = fadd fast float %3333, %3336
  %3340 = fmul fast float %95, %3329
  %3341 = fmul fast float %96, %3329
  %3342 = fmul fast float %97, %3329
  %3343 = fadd fast float %3337, %3340
  %3344 = fadd fast float %3338, %3341
  %3345 = fadd fast float %3339, %3342
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3344, float %3345, float %3343, float %3344, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = call float @dx.op.unary.f32(i32 25, float %3346)  ; Rsqrt(value)
  %3348 = fmul fast float %3343, %3347
  %3349 = fmul fast float %3344, %3347
  %3350 = fmul fast float %3345, %3347
  %3351 = icmp eq i32 %33, 65535
  br i1 %3351, label %3866, label %3352

; <label>:3352                                    ; preds = %3283
  %3353 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3354 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3355 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3356 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3357 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3358 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3359 = fadd fast float %3353, %34
  %3360 = fadd fast float %3354, %35
  %3361 = fadd fast float %3355, %36
  %3362 = fadd fast float %3356, %34
  %3363 = fadd fast float %3357, %35
  %3364 = fadd fast float %3358, %36
  %3365 = mul i32 %33, 48
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = add i32 %3365, 16
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = add i32 %3365, 32
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = extractvalue %dx.types.ResRet.f32 %3376, 3
  %3381 = bitcast float %3380 to i32
  %3382 = fmul fast float %3367, %34
  %3383 = fmul fast float %3368, %35
  %3384 = fmul fast float %3369, %36
  %3385 = fsub fast float %3382, %3372
  %3386 = fsub fast float %3383, %3373
  %3387 = fsub fast float %3384, %3374
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3390 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3391 = fmul fast float %3388, %3377
  %3392 = fmul fast float %3389, %3378
  %3393 = fmul fast float %3390, %3379
  %3394 = fadd fast float %3377, -1.000000e+00
  %3395 = fadd fast float %3378, -1.000000e+00
  %3396 = fadd fast float %3379, -1.000000e+00
  %3397 = call float @dx.op.unary.f32(i32 27, float %3391)  ; Round_ni(value)
  %3398 = call float @dx.op.unary.f32(i32 27, float %3392)  ; Round_ni(value)
  %3399 = call float @dx.op.unary.f32(i32 27, float %3393)  ; Round_ni(value)
  %3400 = call float @dx.op.binary.f32(i32 36, float %3397, float %3394)  ; FMin(a,b)
  %3401 = call float @dx.op.binary.f32(i32 36, float %3398, float %3395)  ; FMin(a,b)
  %3402 = call float @dx.op.binary.f32(i32 36, float %3399, float %3396)  ; FMin(a,b)
  %3403 = fmul fast float %3402, %3378
  %3404 = fadd fast float %3403, %3401
  %3405 = fmul fast float %3404, %3377
  %3406 = fadd fast float %3405, %3400
  %3407 = fptosi float %3406 to i32
  %3408 = add nsw i32 %3407, %3381
  %3409 = shl nsw i32 %3408, 2
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = lshr i32 %3411, 16
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3835, label %3414

; <label>:3414                                    ; preds = %3352
  br label %3415

; <label>:3415                                    ; preds = %3536, %3414
  %3416 = phi i32 [ %3438, %3536 ], [ %3412, %3414 ]
  %3417 = phi float [ %3537, %3536 ], [ 0.000000e+00, %3414 ]
  %3418 = phi float [ %3538, %3536 ], [ %3322, %3414 ]
  %3419 = phi float [ %3539, %3536 ], [ %3296, %3414 ]
  %3420 = phi float [ %3540, %3536 ], [ 0.000000e+00, %3414 ]
  %3421 = phi float [ %3541, %3536 ], [ %3295, %3414 ]
  %3422 = phi float [ %3542, %3536 ], [ %3286, %3414 ]
  %3423 = phi float [ %3543, %3536 ], [ %3287, %3414 ]
  %3424 = phi float [ %3544, %3536 ], [ %3288, %3414 ]
  %3425 = phi float [ %3545, %3536 ], [ %3348, %3414 ]
  %3426 = phi float [ %3546, %3536 ], [ %3349, %3414 ]
  %3427 = phi float [ %3547, %3536 ], [ %3350, %3414 ]
  %3428 = phi float [ %3548, %3536 ], [ %3294, %3414 ]
  %3429 = phi float [ %3549, %3536 ], [ %3293, %3414 ]
  %3430 = phi float [ %3550, %3536 ], [ 0.000000e+00, %3414 ]
  %3431 = phi float [ %3551, %3536 ], [ %3292, %3414 ]
  %3432 = phi float [ %3552, %3536 ], [ %3289, %3414 ]
  %3433 = phi float [ %3553, %3536 ], [ %3290, %3414 ]
  %3434 = phi float [ %3554, %3536 ], [ %3291, %3414 ]
  %3435 = shl nuw nsw i32 %3416, 2
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = lshr i32 %3437, 16
  %3439 = shl i32 %3437, 8
  %3440 = and i32 %3439, 16776960
  %3441 = or i32 %3440, 48
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = or i32 %3440, 64
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.i32 %3447, 1
  %3450 = or i32 %3440, 80
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3454 = or i32 %3440, 96
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3460 = or i32 %3440, 112
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3463 = or i32 %3440, 128
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = or i32 %3440, 144
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = or i32 %3440, 160
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = or i32 %3440, 192
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = or i32 %3440, 208
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = or i32 %3440, 248
  %3488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3497 = or i32 %3440, 16
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3504 = or i32 %3440, 32
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = call float @dx.op.dot4.f32(i32 56, float %3506, float %3507, float %3508, float %3509, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3511 = call float @dx.op.unary.f32(i32 27, float %3496)  ; Round_ni(value)
  %3512 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3513 = call float @dx.op.unary.f32(i32 27, float %3503)  ; Round_ni(value)
  %3514 = call float @dx.op.unary.f32(i32 6, float %3513)  ; FAbs(value)
  %3515 = call float @dx.op.unary.f32(i32 6, float %3510)  ; FAbs(value)
  %3516 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3517 = fadd fast float %3514, %3512
  %3518 = fadd fast float %3517, %3516
  %3519 = fcmp fast oeq float %3518, 0.000000e+00
  %3520 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %3359, float %3360, float %3361, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3521 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %3359, float %3360, float %3361, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3522 = call float @dx.op.dot4.f32(i32 56, float %3492, float %3493, float %3494, float %3495, float %3362, float %3363, float %3364, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3523 = call float @dx.op.dot4.f32(i32 56, float %3499, float %3500, float %3501, float %3502, float %3362, float %3363, float %3364, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3524 = fsub fast float %3520, %3496
  %3525 = fsub fast float %3522, %3496
  %3526 = fsub fast float %3521, %3503
  %3527 = fsub fast float %3523, %3503
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3445, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 2
  %3531 = fadd fast float %3530, %3528
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3534 = fcmp fast ogt float %3532, %3533
  %3535 = and i1 %3519, %3534
  br i1 %3535, label %3556, label %3536

; <label>:3536                                    ; preds = %3821, %3639, %3556, %3415
  %3537 = phi float [ %3417, %3556 ], [ %3642, %3639 ], [ %3642, %3821 ], [ %3417, %3415 ]
  %3538 = phi float [ %3418, %3556 ], [ %3418, %3639 ], [ %3796, %3821 ], [ %3418, %3415 ]
  %3539 = phi float [ %3419, %3556 ], [ %3419, %3639 ], [ %3794, %3821 ], [ %3419, %3415 ]
  %3540 = phi float [ %3420, %3556 ], [ %3420, %3639 ], [ %3766, %3821 ], [ %3420, %3415 ]
  %3541 = phi float [ %3421, %3556 ], [ %3421, %3639 ], [ %3764, %3821 ], [ %3421, %3415 ]
  %3542 = phi float [ %3422, %3556 ], [ %3422, %3639 ], [ %3831, %3821 ], [ %3422, %3415 ]
  %3543 = phi float [ %3423, %3556 ], [ %3423, %3639 ], [ %3832, %3821 ], [ %3423, %3415 ]
  %3544 = phi float [ %3424, %3556 ], [ %3424, %3639 ], [ %3833, %3821 ], [ %3424, %3415 ]
  %3545 = phi float [ %3425, %3556 ], [ %3425, %3639 ], [ %3745, %3821 ], [ %3425, %3415 ]
  %3546 = phi float [ %3426, %3556 ], [ %3426, %3639 ], [ %3746, %3821 ], [ %3426, %3415 ]
  %3547 = phi float [ %3427, %3556 ], [ %3427, %3639 ], [ %3747, %3821 ], [ %3427, %3415 ]
  %3548 = phi float [ %3428, %3556 ], [ %3428, %3639 ], [ %3774, %3821 ], [ %3428, %3415 ]
  %3549 = phi float [ %3429, %3556 ], [ %3429, %3639 ], [ %3771, %3821 ], [ %3429, %3415 ]
  %3550 = phi float [ %3430, %3556 ], [ %3430, %3639 ], [ %3768, %3821 ], [ %3430, %3415 ]
  %3551 = phi float [ %3431, %3556 ], [ %3431, %3639 ], [ %3762, %3821 ], [ %3431, %3415 ]
  %3552 = phi float [ %3432, %3556 ], [ %3432, %3639 ], [ %3757, %3821 ], [ %3432, %3415 ]
  %3553 = phi float [ %3433, %3556 ], [ %3433, %3639 ], [ %3758, %3821 ], [ %3433, %3415 ]
  %3554 = phi float [ %3434, %3556 ], [ %3434, %3639 ], [ %3759, %3821 ], [ %3434, %3415 ]
  %3555 = icmp eq i32 %3438, 0
  br i1 %3555, label %3834, label %3415

; <label>:3556                                    ; preds = %3415
  %3557 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3558 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3559 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3560 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3561 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3562 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3563 = extractvalue %dx.types.ResRet.i32 %3447, 3
  %3564 = extractvalue %dx.types.ResRet.i32 %3447, 2
  %3565 = bitcast float %3557 to i32
  %3566 = add i32 %3563, 0
  %3567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3566, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3567, %dx.types.Handle %3568, float %3496, float %3503, float undef, float undef, i32 0, i32 0, i32 undef, float %3524, float %3526, float undef, float %3525, float %3527, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = fmul fast float %3570, %3562
  %3572 = fadd fast float %3571, %3561
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = fmul fast float %3496, %3456
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3503, float %3574)  ; FMad(a,b,c)
  %3576 = fadd fast float %3575, %3560
  %3577 = fmul fast float %3496, %3458
  %3578 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3503, float %3577)  ; FMad(a,b,c)
  %3579 = fadd fast float %3578, %3559
  %3580 = fmul fast float %3524, %3456
  %3581 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3526, float %3580)  ; FMad(a,b,c)
  %3582 = fmul fast float %3524, %3458
  %3583 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3526, float %3582)  ; FMad(a,b,c)
  %3584 = fmul fast float %3525, %3456
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3527, float %3584)  ; FMad(a,b,c)
  %3586 = fmul fast float %3525, %3458
  %3587 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3527, float %3586)  ; FMad(a,b,c)
  %3588 = add i32 %3564, 0
  %3589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3588, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3590 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3589, %dx.types.Handle %3568, float %3576, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float %3581, float %3583, float undef, float %3585, float %3587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = and i32 %3565, 1024
  %3593 = icmp ne i32 %3592, 0
  %3594 = fcmp fast ogt float %3591, 0x3FE0101020000000
  %3595 = uitofp i1 %3594 to float
  %3596 = select i1 %3593, float %3595, float %3591
  %3597 = and i32 %3565, 8192
  %3598 = icmp ne i32 %3597, 0
  %3599 = select i1 %3598, float %3558, float 1.000000e+00
  %3600 = fmul fast float %3496, 2.000000e+00
  %3601 = fadd fast float %3600, -1.000000e+00
  %3602 = call float @dx.op.unary.f32(i32 6, float %3601)  ; FAbs(value)
  %3603 = fmul fast float %3602, %3489
  %3604 = fsub fast float %3603, %3489
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fmul fast float %3503, 2.000000e+00
  %3607 = fadd fast float %3606, -1.000000e+00
  %3608 = call float @dx.op.unary.f32(i32 6, float %3607)  ; FAbs(value)
  %3609 = fmul fast float %3608, %3490
  %3610 = fsub fast float %3609, %3490
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3612 = fmul fast float %3515, %3452
  %3613 = fsub fast float %3612, %3452
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3573, %3599
  %3616 = fmul fast float %3615, %3570
  %3617 = fmul fast float %3616, %3605
  %3618 = fmul fast float %3617, %3596
  %3619 = fmul fast float %3618, %3611
  %3620 = fmul fast float %3619, %3614
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3624 = fsub fast float %3532, %3623
  %3625 = fmul fast float %3624, %3622
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fmul fast float %3620, %3453
  %3628 = fadd fast float %3620, %3453
  %3629 = fmul fast float %3628, %3462
  %3630 = fsub fast float %3629, %3462
  %3631 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3632 = and i32 %3565, 128
  %3633 = icmp ne i32 %3632, 0
  %3634 = select i1 %3633, float %3631, float %3627
  %3635 = fmul fast float %3634, %3626
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = fcmp fast ugt float %3635, %3637
  br i1 %3638, label %3639, label %3536

; <label>:3639                                    ; preds = %3556
  %3640 = select i1 %3598, float %3635, float 0.000000e+00
  %3641 = fadd fast float %3640, %3417
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  br i1 %3598, label %3536, label %3643

; <label>:3643                                    ; preds = %3639
  %3644 = and i32 %3565, 4
  %3645 = and i32 %3565, 8
  %3646 = add i32 %3448, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3646, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3647, %dx.types.Handle %3648, float %3576, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float %3581, float %3583, float undef, float %3585, float %3587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = bitcast float %3474 to i32
  %3655 = and i32 %3654, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = lshr i32 %3654, 8
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = fmul fast float %3653, %3656
  %3661 = fadd fast float %3660, %3659
  %3662 = fmul fast float %3661, 0x3F70101000000000
  %3663 = add i32 %3449, 0
  %3664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3663, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3665 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3664, %dx.types.Handle %3648, float %3576, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float %3581, float %3583, float undef, float %3585, float %3587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3669 = extractvalue %dx.types.ResRet.f32 %3665, 3
  %3670 = bitcast float %3468 to i32
  %3671 = and i32 %3670, 255
  %3672 = uitofp i32 %3671 to float
  %3673 = lshr i32 %3670, 8
  %3674 = and i32 %3673, 255
  %3675 = uitofp i32 %3674 to float
  %3676 = lshr i32 %3670, 16
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = fmul fast float %3678, 0x3F70101000000000
  %3680 = fmul fast float %3666, %3672
  %3681 = fadd fast float %3680, %3675
  %3682 = fmul fast float %3681, 0x3F70101000000000
  %3683 = fadd fast float %3667, -5.000000e-01
  %3684 = fadd fast float %3669, -5.000000e-01
  %3685 = fmul fast float %3683, %3679
  %3686 = fmul fast float %3684, %3679
  %3687 = fadd fast float %3685, 5.000000e-01
  %3688 = fadd fast float %3686, 5.000000e-01
  %3689 = fmul fast float %3650, %3477
  %3690 = fmul fast float %3651, %3478
  %3691 = fmul fast float %3652, %3479
  %3692 = fmul fast float %3687, 2.000000e+00
  %3693 = fadd fast float %3692, -1.000000e+00
  %3694 = fmul fast float %3688, 2.000000e+00
  %3695 = fadd fast float %3694, -1.000000e+00
  %3696 = fadd fast float %3693, %3695
  %3697 = fmul fast float %3696, 5.000000e-01
  %3698 = fsub fast float %3693, %3695
  %3699 = fmul fast float %3698, 5.000000e-01
  %3700 = call float @dx.op.unary.f32(i32 6, float %3697)  ; FAbs(value)
  %3701 = fsub fast float 1.000000e+00, %3700
  %3702 = call float @dx.op.unary.f32(i32 6, float %3699)  ; FAbs(value)
  %3703 = fsub fast float %3701, %3702
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3697, float %3699, float %3703, float %3697, float %3699, float %3703)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call float @dx.op.unary.f32(i32 25, float %3704)  ; Rsqrt(value)
  %3706 = fmul fast float %3697, %3705
  %3707 = fmul fast float %3699, %3705
  %3708 = fmul fast float %3705, %3703
  %3709 = fmul fast float %3708, %3443
  %3710 = fmul fast float %3708, %3444
  %3711 = fmul fast float %3708, %3445
  %3712 = fmul fast float %3706, %3465
  %3713 = fmul fast float %3706, %3466
  %3714 = fmul fast float %3706, %3467
  %3715 = fadd fast float %3712, %3709
  %3716 = fadd fast float %3713, %3710
  %3717 = fadd fast float %3714, %3711
  %3718 = fmul fast float %3707, %3471
  %3719 = fmul fast float %3707, %3472
  %3720 = fmul fast float %3707, %3473
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = call float @dx.op.dot3.f32(i32 55, float %3721, float %3722, float %3723, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = call float @dx.op.unary.f32(i32 25, float %3724)  ; Rsqrt(value)
  %3726 = fmul fast float %3721, %3725
  %3727 = fmul fast float %3722, %3725
  %3728 = fmul fast float %3723, %3725
  %3729 = icmp ne i32 %3645, 0
  %3730 = select i1 %3729, float 1.000000e+00, float 0.000000e+00
  %3731 = fmul fast float %3635, %3730
  %3732 = and i32 %3565, 1
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3734, label %3738

; <label>:3734                                    ; preds = %3643
  %3735 = fsub fast float %3726, %3425
  %3736 = fsub fast float %3727, %3426
  %3737 = fsub fast float %3728, %3427
  br label %3738

; <label>:3738                                    ; preds = %3734, %3643
  %3739 = phi float [ %3735, %3734 ], [ %3726, %3643 ]
  %3740 = phi float [ %3736, %3734 ], [ %3727, %3643 ]
  %3741 = phi float [ %3737, %3734 ], [ %3728, %3643 ]
  %3742 = fmul float %3741, %3731
  %3743 = fmul float %3740, %3731
  %3744 = fmul float %3739, %3731
  %3745 = fadd fast float %3744, %3425
  %3746 = fadd fast float %3743, %3426
  %3747 = fadd fast float %3742, %3427
  %3748 = icmp ne i32 %3644, 0
  %3749 = select i1 %3748, float 1.000000e+00, float 0.000000e+00
  %3750 = fmul fast float %3635, %3749
  %3751 = fsub fast float %3689, %3432
  %3752 = fsub fast float %3690, %3433
  %3753 = fsub fast float %3691, %3434
  %3754 = fmul fast float %3751, %3750
  %3755 = fmul fast float %3752, %3750
  %3756 = fmul fast float %3753, %3750
  %3757 = fadd fast float %3754, %3432
  %3758 = fadd fast float %3755, %3433
  %3759 = fadd fast float %3756, %3434
  %3760 = fsub fast float %3662, %3431
  %3761 = fmul fast float %3760, %3750
  %3762 = fadd fast float %3761, %3431
  %3763 = fmul fast float %3750, %3421
  %3764 = fsub fast float %3421, %3763
  %3765 = fmul fast float %3750, %3420
  %3766 = fsub fast float %3420, %3765
  %3767 = fadd fast float %3635, %3430
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = fsub fast float %3682, %3429
  %3770 = fmul fast float %3769, %3731
  %3771 = fadd fast float %3770, %3429
  %3772 = fsub fast float %3668, %3428
  %3773 = fmul fast float %3772, %3731
  %3774 = fadd fast float %3773, %3428
  %3775 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3690, float %3691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.CBufRet.f32 %3776, 1
  %3779 = fmul fast float %3778, %3775
  %3780 = fadd fast float %3779, %3777
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = bitcast float %3480 to i32
  %3783 = and i32 %3782, 65535
  %3784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3783)  ; LegacyF16ToF32(value)
  %3785 = lshr i32 %3782, 16
  %3786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3785)  ; LegacyF16ToF32(value)
  %3787 = fcmp fast oge float %3784, 0.000000e+00
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = select i1 %3787, float %3784, float %3789
  %3791 = fadd fast float %3790, %3786
  %3792 = fsub fast float %3781, %3419
  %3793 = fmul fast float %3792, %3635
  %3794 = fadd fast float %3793, %3419
  %3795 = fmul fast float %3791, %3635
  %3796 = call float @dx.op.binary.f32(i32 35, float %3418, float %3795)  ; FMax(a,b)
  %3797 = and i32 %3565, 16
  %3798 = icmp eq i32 %3797, 0
  br i1 %3798, label %3821, label %3799

; <label>:3799                                    ; preds = %3738
  %3800 = bitcast float %3486 to i32
  %3801 = add i32 %3483, 0
  %3802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3802, %dx.types.Handle %3648, float %3576, float %3579, float undef, float undef, i32 0, i32 0, i32 undef, float %3581, float %3583, float undef, float %3585, float %3587, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = and i32 %3800, 65535
  %3808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3807)  ; LegacyF16ToF32(value)
  %3809 = fmul fast float %3804, %3477
  %3810 = fmul fast float %3805, %3478
  %3811 = fmul fast float %3806, %3479
  %3812 = and i32 %3565, 16384
  %3813 = icmp ne i32 %3812, 0
  %3814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.f32 %3814, 0
  %3816 = select i1 %3813, float %3815, float 1.000000e+00
  %3817 = fmul fast float %3816, %3808
  %3818 = fmul fast float %3809, %3817
  %3819 = fmul fast float %3810, %3817
  %3820 = fmul fast float %3811, %3817
  br label %3821

; <label>:3821                                    ; preds = %3799, %3738
  %3822 = phi float [ %3818, %3799 ], [ 0.000000e+00, %3738 ]
  %3823 = phi float [ %3819, %3799 ], [ 0.000000e+00, %3738 ]
  %3824 = phi float [ %3820, %3799 ], [ 0.000000e+00, %3738 ]
  %3825 = fsub fast float %3822, %3422
  %3826 = fsub fast float %3823, %3423
  %3827 = fsub fast float %3824, %3424
  %3828 = fmul fast float %3825, %3635
  %3829 = fmul fast float %3826, %3635
  %3830 = fmul fast float %3827, %3635
  %3831 = fadd fast float %3828, %3422
  %3832 = fadd fast float %3829, %3423
  %3833 = fadd fast float %3830, %3424
  br label %3536

; <label>:3834                                    ; preds = %3536
  br label %3835

; <label>:3835                                    ; preds = %3834, %3352
  %3836 = phi float [ 0.000000e+00, %3352 ], [ %3537, %3834 ]
  %3837 = phi float [ %3322, %3352 ], [ %3538, %3834 ]
  %3838 = phi float [ %3296, %3352 ], [ %3539, %3834 ]
  %3839 = phi float [ 0.000000e+00, %3352 ], [ %3540, %3834 ]
  %3840 = phi float [ %3295, %3352 ], [ %3541, %3834 ]
  %3841 = phi float [ %3286, %3352 ], [ %3542, %3834 ]
  %3842 = phi float [ %3287, %3352 ], [ %3543, %3834 ]
  %3843 = phi float [ %3288, %3352 ], [ %3544, %3834 ]
  %3844 = phi float [ %3348, %3352 ], [ %3545, %3834 ]
  %3845 = phi float [ %3349, %3352 ], [ %3546, %3834 ]
  %3846 = phi float [ %3350, %3352 ], [ %3547, %3834 ]
  %3847 = phi float [ %3294, %3352 ], [ %3548, %3834 ]
  %3848 = phi float [ %3293, %3352 ], [ %3549, %3834 ]
  %3849 = phi float [ 0.000000e+00, %3352 ], [ %3550, %3834 ]
  %3850 = phi float [ %3292, %3352 ], [ %3551, %3834 ]
  %3851 = phi float [ %3289, %3352 ], [ %3552, %3834 ]
  %3852 = phi float [ %3290, %3352 ], [ %3553, %3834 ]
  %3853 = phi float [ %3291, %3352 ], [ %3554, %3834 ]
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3846, float %3844, float %3845, float %3846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = call float @dx.op.unary.f32(i32 25, float %3854)  ; Rsqrt(value)
  %3856 = fmul fast float %3855, %3844
  %3857 = fmul fast float %3855, %3845
  %3858 = fmul fast float %3855, %3846
  %3859 = fadd fast float %3849, %949
  %3860 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3861 = call float @dx.op.dot3.f32(i32 55, float %3856, float %3857, float %3858, float %3856, float %3857, float %3858)  ; Dot3(ax,ay,az,bx,by,bz)
  %3862 = call float @dx.op.unary.f32(i32 25, float %3861)  ; Rsqrt(value)
  %3863 = fmul fast float %3862, %3856
  %3864 = fmul fast float %3862, %3857
  %3865 = fmul fast float %3862, %3858
  br label %3866

; <label>:3866                                    ; preds = %3835, %3283
  %3867 = phi float [ %3863, %3835 ], [ %3348, %3283 ]
  %3868 = phi float [ %3864, %3835 ], [ %3349, %3283 ]
  %3869 = phi float [ %3865, %3835 ], [ %3350, %3283 ]
  %3870 = phi float [ %3841, %3835 ], [ %3286, %3283 ]
  %3871 = phi float [ %3842, %3835 ], [ %3287, %3283 ]
  %3872 = phi float [ %3843, %3835 ], [ %3288, %3283 ]
  %3873 = phi float [ %3851, %3835 ], [ %3289, %3283 ]
  %3874 = phi float [ %3852, %3835 ], [ %3290, %3283 ]
  %3875 = phi float [ %3853, %3835 ], [ %3291, %3283 ]
  %3876 = phi float [ %3850, %3835 ], [ %3292, %3283 ]
  %3877 = phi float [ %3860, %3835 ], [ %949, %3283 ]
  %3878 = phi float [ %3848, %3835 ], [ %3293, %3283 ]
  %3879 = phi float [ %3847, %3835 ], [ %3294, %3283 ]
  %3880 = phi float [ %3840, %3835 ], [ %3295, %3283 ]
  %3881 = phi float [ %3839, %3835 ], [ 0.000000e+00, %3283 ]
  %3882 = phi float [ %3836, %3835 ], [ 0.000000e+00, %3283 ]
  %3883 = phi float [ %3837, %3835 ], [ %3322, %3283 ]
  %3884 = phi float [ %3838, %3835 ], [ %3296, %3283 ]
  %3885 = fadd fast float %3876, 0xBFB99999A0000000
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = fmul fast float %3886, 0x3FF1C71C80000000
  %3888 = call float @dx.op.binary.f32(i32 36, float %3876, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3889 = fsub fast float 1.000000e+00, %3887
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fmul fast float %3890, %3873
  %3892 = fmul fast float %3890, %3874
  %3893 = fmul fast float %3890, %3875
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3896 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3897 = fmul fast float %3887, %3873
  %3898 = fmul fast float %3887, %3874
  %3899 = fmul fast float %3887, %3875
  %3900 = fadd fast float %3897, %3888
  %3901 = fadd fast float %3898, %3888
  %3902 = fadd fast float %3899, %3888
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3907 = fadd fast float %3873, %3303
  %3908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.i32 %3908, 3
  %3910 = and i32 %3909, 8
  %3911 = icmp ne i32 %3910, 0
  %3912 = call float @dx.op.binary.f32(i32 35, float %3894, float %3907)  ; FMax(a,b)
  %3913 = call float @dx.op.binary.f32(i32 35, float %3895, float %3907)  ; FMax(a,b)
  %3914 = call float @dx.op.binary.f32(i32 35, float %3896, float %3907)  ; FMax(a,b)
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = select i1 %202, float %3907, float %3894
  %3917 = select i1 %202, float %3915, float %3895
  %3918 = select i1 %202, float 1.000000e+00, float %3896
  %3919 = select i1 %3911, float %3912, float %3916
  %3920 = select i1 %3911, float %3913, float %3917
  %3921 = select i1 %3911, float %3914, float %3918
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = fadd fast float %3923, %163
  %3927 = fadd fast float %3924, %164
  %3928 = fadd fast float %3925, %165
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = fsub fast float %3926, %3930
  %3933 = fsub fast float %3927, %3931
  %3934 = fmul fast float %3932, %3932
  %3935 = fmul fast float %3933, %3933
  %3936 = fadd fast float %3934, %3935
  %3937 = call float @dx.op.unary.f32(i32 24, float %3936)  ; Sqrt(value)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3939 = fcmp fast olt float %3937, %3938
  br i1 %3939, label %3940, label %4007

; <label>:3940                                    ; preds = %3866
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3951 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3952 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3953 = fadd fast float %3950, %3926
  %3954 = fadd fast float %3951, %3927
  %3955 = fadd fast float %3952, %3928
  %3956 = fmul fast float %3953, %3942
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3944, float %3956)  ; FMad(a,b,c)
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3946, float %3957)  ; FMad(a,b,c)
  %3959 = fmul fast float %3953, %3947
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3948, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fsub fast float %3958, %3950
  %3963 = fsub fast float %3961, %3951
  %3964 = fsub fast float %3962, %3930
  %3965 = fadd fast float %3964, %3938
  %3966 = fsub fast float %3963, %3931
  %3967 = fadd fast float %3966, %3938
  %3968 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3969 = fmul fast float %3965, %3968
  %3970 = fmul fast float %3967, %3968
  %3971 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3972 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3973 = fsub fast float 1.000000e+00, %3971
  %3974 = fsub fast float 1.000000e+00, %3972
  %3975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3973, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = fcmp fast ugt float %3976, 0.000000e+00
  br i1 %3977, label %3978, label %4281

; <label>:3978                                    ; preds = %3940
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3981 = fmul fast float %3980, %3976
  %3982 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3983 = fadd fast float %3982, %3981
  %3984 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3985 = fadd fast float %3983, %3952
  %3986 = fmul fast float %3958, %3946
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3949, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3985, float %3984, float %3987)  ; FMad(a,b,c)
  %3989 = fsub fast float %3988, %3952
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 2
  %3992 = fsub fast float %3989, %3991
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3973, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.ResRet.f32 %3993, 2
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3973, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %4001 = fadd fast float %3998, %3994
  %4002 = fmul fast float %4001, 0x3F847AE140000000
  %4003 = fadd fast float %3999, %3995
  %4004 = fmul fast float %4003, 0x3F847AE140000000
  %4005 = fadd fast float %4000, %3996
  %4006 = fmul fast float %4005, 0x3F847AE140000000
  br label %4281

; <label>:4007                                    ; preds = %3866
  %4008 = and i32 %181, 1
  %4009 = icmp eq i32 %4008, 0
  br i1 %4009, label %4281, label %4010

; <label>:4010                                    ; preds = %4007
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4018 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4019 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4020 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4021 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4022 = extractvalue %dx.types.CBufRet.f32 %4015, 3
  %4023 = fadd fast float %4020, %3926
  %4024 = fadd fast float %4021, %3927
  %4025 = fadd fast float %4022, %3928
  %4026 = fmul fast float %4023, %4012
  %4027 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4014, float %4026)  ; FMad(a,b,c)
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %4016, float %4027)  ; FMad(a,b,c)
  %4029 = fmul fast float %4023, %4017
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4018, float %4029)  ; FMad(a,b,c)
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %4019, float %4030)  ; FMad(a,b,c)
  %4032 = fsub fast float %4028, %4020
  %4033 = fsub fast float %4031, %4021
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4034, 2
  %4038 = extractvalue %dx.types.CBufRet.f32 %4034, 3
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.i32 %4041, 0
  %4043 = extractvalue %dx.types.CBufRet.i32 %4041, 1
  %4044 = udiv i32 %4043, %4042
  %4045 = fsub fast float %4032, %4035
  %4046 = fsub fast float %4033, %4036
  %4047 = call float @dx.op.binary.f32(i32 35, float %4045, float 0.000000e+00)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 35, float %4046, float 0.000000e+00)  ; FMax(a,b)
  %4049 = call float @dx.op.binary.f32(i32 36, float %4047, float %4037)  ; FMin(a,b)
  %4050 = call float @dx.op.binary.f32(i32 36, float %4048, float %4038)  ; FMin(a,b)
  %4051 = add i32 %4042, -1
  %4052 = add i32 %4044, -1
  %4053 = fmul fast float %4049, %4040
  %4054 = fmul fast float %4050, %4040
  %4055 = fptoui float %4053 to i32
  %4056 = fptoui float %4054 to i32
  %4057 = call i32 @dx.op.binary.i32(i32 40, i32 %4055, i32 %4051)  ; UMin(a,b)
  %4058 = call i32 @dx.op.binary.i32(i32 40, i32 %4056, i32 %4052)  ; UMin(a,b)
  %4059 = mul i32 %4058, %4042
  %4060 = add i32 %4059, %4057
  %4061 = shl i32 %4060, 2
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = icmp eq i32 %4063, -1
  br i1 %4064, label %4281, label %4065

; <label>:4065                                    ; preds = %4010
  %4066 = mul i32 %4063, 148
  %4067 = add i32 %4066, 4
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = add i32 %4066, 8
  %4071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = add i32 %4066, 36
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = add i32 %4066, 60
  %4077 = add i32 %4066, 92
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = add i32 %4066, 116
  %4081 = fsub fast float %4032, %4069
  %4082 = fsub fast float %4033, %4072
  %4083 = fmul fast float %4040, %4081
  %4084 = fmul fast float %4040, %4082
  %4085 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4086 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4087 = fsub fast float 1.000000e+00, %4086
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4090 = call float @dx.op.unary.f32(i32 83, float %4085)  ; DerivCoarseX(value)
  %4091 = call float @dx.op.unary.f32(i32 83, float %4087)  ; DerivCoarseX(value)
  %4092 = call float @dx.op.unary.f32(i32 84, float %4085)  ; DerivCoarseY(value)
  %4093 = call float @dx.op.unary.f32(i32 84, float %4087)  ; DerivCoarseY(value)
  %4094 = fmul fast float %4090, %4089
  %4095 = fmul fast float %4091, %4089
  %4096 = fmul fast float %4092, %4089
  %4097 = fmul fast float %4093, %4089
  %4098 = call float @dx.op.dot2.f32(i32 54, float %4096, float %4097, float %4096, float %4097)  ; Dot2(ax,ay,bx,by)
  %4099 = call float @dx.op.dot2.f32(i32 54, float %4094, float %4095, float %4094, float %4095)  ; Dot2(ax,ay,bx,by)
  %4100 = call float @dx.op.binary.f32(i32 35, float %4099, float %4098)  ; FMax(a,b)
  %4101 = call float @dx.op.unary.f32(i32 23, float %4100)  ; Log(value)
  %4102 = fmul fast float %4101, 5.000000e-01
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4105 = fadd fast float %4104, %4102
  %4106 = call float @dx.op.binary.f32(i32 35, float %4105, float 0.000000e+00)  ; FMax(a,b)
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4109 = fadd fast float %4108, %4106
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4112 = fadd fast float %4109, %4111
  %4113 = add i32 %4079, 0
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4113, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4114, i32 0)  ; GetDimensions(handle,mipLevel)
  %4116 = extractvalue %dx.types.Dimensions %4115, 0
  %4117 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4116)  ; FirstbitLo(value)
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.i32 %4118, 1
  %4120 = sub nsw i32 %4119, %4117
  %4121 = sitofp i32 %4120 to float
  %4122 = fsub fast float %4112, %4121
  %4123 = call float @dx.op.binary.f32(i32 35, float %4122, float 0.000000e+00)  ; FMax(a,b)
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4114, %dx.types.Handle %27, float %4085, float %4087, float %4075, float undef, i32 0, i32 0, i32 undef, float %4123)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = fcmp ule float %4125, 0x3FE0101020000000
  %4127 = extractvalue %dx.types.CBufRet.i32 %4118, 0
  %4128 = and i32 %4127, 128
  %4129 = icmp ne i32 %4128, 0
  %4130 = and i1 %4126, %4129
  br i1 %4130, label %4281, label %4131

; <label>:4131                                    ; preds = %4065
  %4132 = add i32 %4066, 20
  %4133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = add i32 %4066, 24
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4066, 40
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = add i32 %4066, 96
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 2
  %4146 = fmul fast float %4145, %4085
  %4147 = fmul fast float %4145, %4087
  %4148 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4149 = fadd fast float %4146, %4148
  %4150 = fadd fast float %4147, %4148
  %4151 = add i32 %4143, 0
  %4152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4153 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4152, i32 0)  ; GetDimensions(handle,mipLevel)
  %4154 = extractvalue %dx.types.Dimensions %4153, 0
  %4155 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4154)  ; FirstbitLo(value)
  %4156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.i32 %4156, 1
  %4158 = sub nsw i32 %4157, %4155
  %4159 = sitofp i32 %4158 to float
  %4160 = fsub fast float %4109, %4159
  %4161 = call float @dx.op.binary.f32(i32 35, float %4160, float 0.000000e+00)  ; FMax(a,b)
  %4162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4152, %dx.types.Handle %27, float %4149, float %4150, float %4140, float undef, i32 0, i32 0, i32 undef, float %4161)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = fmul fast float %4163, %4134
  %4165 = fadd fast float %4164, %4137
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4174 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4175 = fadd fast float %4171, %4032
  %4176 = fadd fast float %4173, %4033
  %4177 = fadd fast float %4165, %4174
  %4178 = fmul fast float %4175, %4167
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4168, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4169, float %4179)  ; FMad(a,b,c)
  %4181 = fsub fast float %4180, %4174
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 2
  %4184 = fsub fast float %4181, %4183
  %4185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.i32 %4185, 0
  %4187 = call i32 @dx.op.binary.i32(i32 40, i32 %4063, i32 %4186)  ; UMin(a,b)
  %4188 = mul i32 %4187, 36
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = add i32 %4188, 4
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = fmul fast float %4193, %4085
  %4195 = fmul fast float %4193, %4087
  %4196 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4197 = fadd fast float %4194, %4196
  %4198 = fadd fast float %4195, %4196
  %4199 = icmp eq i32 %4190, 0
  br i1 %4199, label %4268, label %4200

; <label>:4200                                    ; preds = %4131
  br label %4201

; <label>:4201                                    ; preds = %4258, %4200
  %4202 = phi float [ %4259, %4258 ], [ 0.000000e+00, %4200 ]
  %4203 = phi float [ %4260, %4258 ], [ 0.000000e+00, %4200 ]
  %4204 = phi float [ %4261, %4258 ], [ 0.000000e+00, %4200 ]
  %4205 = phi float [ %4262, %4258 ], [ 0.000000e+00, %4200 ]
  %4206 = phi float [ %4263, %4258 ], [ 0.000000e+00, %4200 ]
  %4207 = phi float [ %4264, %4258 ], [ 0.000000e+00, %4200 ]
  %4208 = phi i32 [ %4265, %4258 ], [ 0, %4200 ]
  %4209 = shl i32 %4208, 2
  %4210 = add i32 %4076, %4209
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = add i32 %4080, %4209
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = add i32 %4215, 0
  %4217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4217, i32 0)  ; GetDimensions(handle,mipLevel)
  %4219 = extractvalue %dx.types.Dimensions %4218, 0
  %4220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4219)  ; FirstbitLo(value)
  %4221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.i32 %4221, 1
  %4223 = sub nsw i32 %4222, %4220
  %4224 = sitofp i32 %4223 to float
  %4225 = fsub fast float %4109, %4224
  %4226 = call float @dx.op.binary.f32(i32 35, float %4225, float 0.000000e+00)  ; FMax(a,b)
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4217, %dx.types.Handle %27, float %4197, float %4198, float %4212, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = fcmp fast ogt float %4228, 0.000000e+00
  br i1 %4229, label %4230, label %4258

; <label>:4230                                    ; preds = %4201
  %4231 = add i32 %4191, %4209
  %4232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.i32 %4232, 0
  %4234 = and i32 %4233, 32767
  %4235 = mul nuw nsw i32 %4234, 928
  %4236 = add nuw nsw i32 %4235, 48
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = add nuw nsw i32 %4235, 60
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4242, 2
  %4246 = fmul fast float %4238, %4228
  %4247 = fmul fast float %4239, %4228
  %4248 = fmul fast float %4240, %4228
  %4249 = fadd fast float %4246, %4202
  %4250 = fadd fast float %4247, %4203
  %4251 = fadd fast float %4248, %4204
  %4252 = fmul fast float %4243, %4228
  %4253 = fmul fast float %4244, %4228
  %4254 = fmul fast float %4245, %4228
  %4255 = fadd fast float %4252, %4205
  %4256 = fadd fast float %4253, %4206
  %4257 = fadd fast float %4254, %4207
  br label %4258

; <label>:4258                                    ; preds = %4230, %4201
  %4259 = phi float [ %4249, %4230 ], [ %4202, %4201 ]
  %4260 = phi float [ %4250, %4230 ], [ %4203, %4201 ]
  %4261 = phi float [ %4251, %4230 ], [ %4204, %4201 ]
  %4262 = phi float [ %4255, %4230 ], [ %4205, %4201 ]
  %4263 = phi float [ %4256, %4230 ], [ %4206, %4201 ]
  %4264 = phi float [ %4257, %4230 ], [ %4207, %4201 ]
  %4265 = add nuw i32 %4208, 1
  %4266 = icmp eq i32 %4265, %4190
  br i1 %4266, label %4267, label %4201

; <label>:4267                                    ; preds = %4258
  br label %4268

; <label>:4268                                    ; preds = %4267, %4131
  %4269 = phi float [ 0.000000e+00, %4131 ], [ %4259, %4267 ]
  %4270 = phi float [ 0.000000e+00, %4131 ], [ %4260, %4267 ]
  %4271 = phi float [ 0.000000e+00, %4131 ], [ %4261, %4267 ]
  %4272 = phi float [ 0.000000e+00, %4131 ], [ %4262, %4267 ]
  %4273 = phi float [ 0.000000e+00, %4131 ], [ %4263, %4267 ]
  %4274 = phi float [ 0.000000e+00, %4131 ], [ %4264, %4267 ]
  %4275 = fadd fast float %4272, %4269
  %4276 = fmul fast float %4275, 0x3F847AE140000000
  %4277 = fadd fast float %4273, %4270
  %4278 = fmul fast float %4277, 0x3F847AE140000000
  %4279 = fadd fast float %4274, %4271
  %4280 = fmul fast float %4279, 0x3F847AE140000000
  br label %4281

; <label>:4281                                    ; preds = %4268, %4065, %4010, %4007, %3978, %3940
  %4282 = phi float [ %3992, %3978 ], [ -1.310720e+05, %3940 ], [ %4184, %4268 ], [ -1.310720e+05, %4010 ], [ -1.310720e+05, %4065 ], [ -1.310720e+05, %4007 ]
  %4283 = phi float [ %4002, %3978 ], [ 0.000000e+00, %3940 ], [ %4276, %4268 ], [ 0.000000e+00, %4010 ], [ 0.000000e+00, %4065 ], [ 0.000000e+00, %4007 ]
  %4284 = phi float [ %4004, %3978 ], [ 0.000000e+00, %3940 ], [ %4278, %4268 ], [ 0.000000e+00, %4010 ], [ 0.000000e+00, %4065 ], [ 0.000000e+00, %4007 ]
  %4285 = phi float [ %4006, %3978 ], [ 0.000000e+00, %3940 ], [ %4280, %4268 ], [ 0.000000e+00, %4010 ], [ 0.000000e+00, %4065 ], [ 0.000000e+00, %4007 ]
  %4286 = phi i1 [ true, %3978 ], [ false, %3940 ], [ true, %4268 ], [ false, %4010 ], [ false, %4065 ], [ false, %4007 ]
  %4287 = and i32 %181, 3
  %4288 = icmp eq i32 %4287, 1
  %4289 = select i1 %4288, float 1.000000e+00, float 0.000000e+00
  %4290 = fsub fast float %4282, %165
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = select i1 %4286, float %4291, float 1.000000e+00
  %4293 = fmul fast float %4292, %4289
  %4294 = icmp eq i32 %4287, 3
  %4295 = select i1 %4294, float 1.000000e+00, float %4293
  %4296 = call float @dx.op.binary.f32(i32 35, float %3882, float %4295)  ; FMax(a,b)
  %4297 = fcmp fast olt float %4295, 1.000000e+00
  %4298 = fcmp uge float %47, 0.000000e+00
  %4299 = and i1 %4298, %4297
  br i1 %4299, label %4300, label %4310

; <label>:4300                                    ; preds = %4281
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = fadd fast float %4302, %4296
  %4306 = fcmp ule float %46, 0.000000e+00
  %4307 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4308 = select i1 %4306, float %4307, float 1.000000e+00
  %4309 = fmul fast float %4308, %4304
  br label %4310

; <label>:4310                                    ; preds = %4300, %4281
  %4311 = phi float [ %4305, %4300 ], [ %4296, %4281 ]
  %4312 = phi float [ %4303, %4300 ], [ 0.000000e+00, %4281 ]
  %4313 = phi float [ %4309, %4300 ], [ 0.000000e+00, %4281 ]
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = fcmp fast une float %4315, 0.000000e+00
  %4318 = fcmp fast une float %4316, 0.000000e+00
  %4319 = or i1 %4317, %4318
  br i1 %4319, label %4320, label %4879

; <label>:4320                                    ; preds = %4310
  br i1 %4317, label %4321, label %4594

; <label>:4321                                    ; preds = %4320
  %4322 = call float @dx.op.unary.f32(i32 23, float %3879)  ; Log(value)
  %4323 = fmul fast float %4322, 4.000000e+00
  %4324 = call float @dx.op.unary.f32(i32 21, float %4323)  ; Exp(value)
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = fmul fast float %4326, %34
  %4328 = fmul fast float %4326, %35
  %4329 = fmul fast float %4326, %36
  %4330 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4331 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4332 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4333 = call float @dx.op.unary.f32(i32 23, float %4330)  ; Log(value)
  %4334 = call float @dx.op.unary.f32(i32 23, float %4331)  ; Log(value)
  %4335 = call float @dx.op.unary.f32(i32 23, float %4332)  ; Log(value)
  %4336 = fmul fast float %4333, 4.000000e+00
  %4337 = fmul fast float %4334, 4.000000e+00
  %4338 = fmul fast float %4335, 4.000000e+00
  %4339 = call float @dx.op.unary.f32(i32 21, float %4336)  ; Exp(value)
  %4340 = call float @dx.op.unary.f32(i32 21, float %4337)  ; Exp(value)
  %4341 = call float @dx.op.unary.f32(i32 21, float %4338)  ; Exp(value)
  %4342 = fadd fast float %4340, %4339
  %4343 = fadd fast float %4342, %4341
  %4344 = fdiv fast float 1.000000e+00, %4343
  %4345 = fmul fast float %4344, %4339
  %4346 = fcmp fast ogt float %43, 0.000000e+00
  %4347 = fcmp fast ogt float %44, 0.000000e+00
  %4348 = fcmp fast ogt float %45, 0.000000e+00
  %4349 = fcmp fast olt float %43, 0.000000e+00
  %4350 = fcmp fast olt float %44, 0.000000e+00
  %4351 = fcmp fast olt float %45, 0.000000e+00
  %4352 = zext i1 %4346 to i32
  %4353 = zext i1 %4347 to i32
  %4354 = zext i1 %4348 to i32
  %4355 = zext i1 %4349 to i32
  %4356 = zext i1 %4350 to i32
  %4357 = zext i1 %4351 to i32
  %4358 = sub nsw i32 %4352, %4355
  %4359 = sub nsw i32 %4353, %4356
  %4360 = sub nsw i32 %4354, %4357
  %4361 = call float @dx.op.unary.f32(i32 83, float %4327)  ; DerivCoarseX(value)
  %4362 = call float @dx.op.unary.f32(i32 83, float %4328)  ; DerivCoarseX(value)
  %4363 = call float @dx.op.unary.f32(i32 83, float %4329)  ; DerivCoarseX(value)
  %4364 = call float @dx.op.unary.f32(i32 84, float %4327)  ; DerivCoarseY(value)
  %4365 = call float @dx.op.unary.f32(i32 84, float %4328)  ; DerivCoarseY(value)
  %4366 = call float @dx.op.unary.f32(i32 84, float %4329)  ; DerivCoarseY(value)
  %4367 = fcmp fast ole float %213, %4345
  %4368 = fmul fast float %4344, %4342
  %4369 = fcmp fast ole float %213, %4368
  %4370 = select i1 %4369, float %4329, float %4327
  %4371 = select i1 %4369, float %4327, float %4328
  %4372 = select i1 %4367, float %4328, float %4370
  %4373 = select i1 %4367, float %4329, float %4371
  %4374 = select i1 %4369, float %4363, float %4361
  %4375 = select i1 %4369, float %4361, float %4362
  %4376 = select i1 %4367, float %4362, float %4374
  %4377 = select i1 %4367, float %4363, float %4375
  %4378 = select i1 %4369, float %4366, float %4364
  %4379 = select i1 %4369, float %4364, float %4365
  %4380 = select i1 %4367, float %4365, float %4378
  %4381 = select i1 %4367, float %4366, float %4379
  %4382 = call float @dx.op.unary.f32(i32 27, float %4372)  ; Round_ni(value)
  %4383 = call float @dx.op.unary.f32(i32 27, float %4373)  ; Round_ni(value)
  %4384 = fptosi float %4382 to i32
  %4385 = fptosi float %4383 to i32
  %4386 = xor i32 %4385, %4384
  %4387 = sitofp i32 %4386 to float
  %4388 = fptosi float %4387 to i32
  %4389 = sitofp i32 %4388 to float
  %4390 = fmul fast float %4389, 0x3FE3C6EF40000000
  %4391 = frem fast float %4382, 2.560000e+02
  %4392 = frem fast float %4383, 2.560000e+02
  %4393 = fptoui float %4391 to i32
  %4394 = fptoui float %4392 to i32
  %4395 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4393, i32 %4394, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = fadd fast float %4396, %4390
  %4400 = fadd fast float %4397, %4390
  %4401 = fadd fast float %4398, %4390
  %4402 = call float @dx.op.unary.f32(i32 22, float %4399)  ; Frc(value)
  %4403 = call float @dx.op.unary.f32(i32 22, float %4400)  ; Frc(value)
  %4404 = call float @dx.op.unary.f32(i32 22, float %4401)  ; Frc(value)
  %4405 = fmul fast float %4404, 0x401921FB60000000
  %4406 = call float @dx.op.unary.f32(i32 13, float %4405)  ; Sin(value)
  %4407 = call float @dx.op.unary.f32(i32 12, float %4405)  ; Cos(value)
  %4408 = fsub fast float -0.000000e+00, %4407
  %4409 = fmul fast float %4407, %4372
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4406, float %4373, float %4409)  ; FMad(a,b,c)
  %4411 = fmul fast float %4406, %4372
  %4412 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4373, float %4411)  ; FMad(a,b,c)
  %4413 = fadd fast float %4410, %4402
  %4414 = fadd fast float %4412, %4403
  %4415 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4416 = bitcast float %4415 to i32
  %4417 = icmp eq i32 %4416, 0
  br i1 %4417, label %4456, label %4418

; <label>:4418                                    ; preds = %4321
  %4419 = add i32 %4416, 0
  %4420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4420, %dx.types.Handle %73, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4376, float %4377, float undef, float %4380, float %4381, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4426 = fsub fast float 1.000000e+00, %4315
  %4427 = call float @dx.op.binary.f32(i32 35, float %4426, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4428 = bitcast float %4315 to i32
  %4429 = sitofp i32 %4428 to float
  %4430 = fadd fast float %4429, 0xC1CFBF8940000000
  %4431 = fmul fast float %4425, %4430
  %4432 = fadd fast float %4431, 0x41CFBF8940000000
  %4433 = fptosi float %4432 to i32
  %4434 = bitcast i32 %4433 to float
  %4435 = bitcast float %4427 to i32
  %4436 = sitofp i32 %4435 to float
  %4437 = fadd fast float %4436, 0xC1CFBF8940000000
  %4438 = fmul fast float %4437, %4425
  %4439 = fadd fast float %4438, 0x41CFBF8940000000
  %4440 = fptosi float %4439 to i32
  %4441 = bitcast i32 %4440 to float
  %4442 = fmul fast float %4434, %4424
  %4443 = fmul fast float %4441, %4424
  %4444 = fsub fast float %4427, %4442
  %4445 = fadd fast float %4443, %4427
  %4446 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4448 = fsub fast float %4422, %4446
  %4449 = fsub fast float %4447, %4446
  %4450 = bitcast float %4449 to i32
  %4451 = sub nsw i32 2129859010, %4450
  %4452 = bitcast i32 %4451 to float
  %4453 = fmul fast float %4452, %4448
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fcmp fast olt float %4454, 0x3F70101020000000
  br i1 %4455, label %4594, label %4456

; <label>:4456                                    ; preds = %4418, %4321
  %4457 = phi float [ %4454, %4418 ], [ %4315, %4321 ]
  %4458 = fmul fast float %4457, %4324
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 1
  %4461 = extractvalue %dx.types.CBufRet.i32 %4459, 0
  %4462 = add i32 %4461, 0
  %4463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4463, %dx.types.Handle %72, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4376, float %4377, float undef, float %4380, float %4381, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = and i32 %4460, 255
  %4470 = uitofp i32 %4469 to float
  %4471 = lshr i32 %4460, 8
  %4472 = and i32 %4471, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = fmul fast float %4468, %4470
  %4475 = fadd fast float %4474, %4473
  %4476 = fmul fast float %4475, 0x3F70101000000000
  %4477 = fadd fast float %4476, 0xBFB99999A0000000
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4478, 0x3FF1C71C80000000
  %4480 = call float @dx.op.binary.f32(i32 36, float %4476, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4481 = fsub fast float 1.000000e+00, %4479
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, %4465
  %4484 = fmul fast float %4482, %4466
  %4485 = fmul fast float %4482, %4467
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = fmul fast float %4479, %4465
  %4490 = fmul fast float %4479, %4466
  %4491 = fmul fast float %4479, %4467
  %4492 = fadd fast float %4489, %4480
  %4493 = fadd fast float %4490, %4480
  %4494 = fadd fast float %4491, %4480
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.i32 %4498, 3
  %4500 = extractvalue %dx.types.CBufRet.i32 %4498, 2
  %4501 = add i32 %4500, 0
  %4502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4502, %dx.types.Handle %72, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float %4376, float %4377, float undef, float %4380, float %4381, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = extractvalue %dx.types.ResRet.f32 %4503, 3
  %4508 = and i32 %4499, 255
  %4509 = uitofp i32 %4508 to float
  %4510 = lshr i32 %4499, 8
  %4511 = and i32 %4510, 255
  %4512 = uitofp i32 %4511 to float
  %4513 = lshr i32 %4499, 16
  %4514 = and i32 %4513, 255
  %4515 = uitofp i32 %4514 to float
  %4516 = fmul fast float %4515, 0x3F70101000000000
  %4517 = fmul fast float %4504, %4509
  %4518 = fadd fast float %4517, %4512
  %4519 = fmul fast float %4518, 0x3F70101000000000
  %4520 = fadd fast float %4505, -5.000000e-01
  %4521 = fadd fast float %4507, -5.000000e-01
  %4522 = fmul fast float %4520, %4516
  %4523 = fmul fast float %4521, %4516
  %4524 = fadd fast float %4522, 5.000000e-01
  %4525 = fadd fast float %4523, 5.000000e-01
  %4526 = fmul fast float %4524, 2.000000e+00
  %4527 = fadd fast float %4526, -1.000000e+00
  %4528 = fmul fast float %4525, 2.000000e+00
  %4529 = fadd fast float %4528, -1.000000e+00
  %4530 = fadd fast float %4527, %4529
  %4531 = fmul fast float %4530, 5.000000e-01
  %4532 = fsub fast float %4527, %4529
  %4533 = fmul fast float %4532, 5.000000e-01
  %4534 = call float @dx.op.unary.f32(i32 6, float %4531)  ; FAbs(value)
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = call float @dx.op.unary.f32(i32 6, float %4533)  ; FAbs(value)
  %4537 = fsub fast float %4535, %4536
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4533, float %4537, float %4531, float %4533, float %4537)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.unary.f32(i32 25, float %4538)  ; Rsqrt(value)
  %4540 = fmul fast float %4531, %4539
  %4541 = fmul fast float %4533, %4539
  %4542 = select i1 %4369, i32 %4359, i32 %4360
  %4543 = select i1 %4367, i32 %4358, i32 %4542
  %4544 = sitofp i32 %4543 to float
  %4545 = fmul fast float %4537, %4544
  %4546 = fmul fast float %4545, %4539
  %4547 = select i1 %4369, float %4546, float %4541
  %4548 = select i1 %4369, float %4541, float %4546
  %4549 = select i1 %4367, float %4546, float %4540
  %4550 = select i1 %4367, float %4541, float %4547
  %4551 = select i1 %4367, float %4540, float %4548
  %4552 = fsub fast float %4486, %3919
  %4553 = fsub fast float %4487, %3920
  %4554 = fsub fast float %4488, %3921
  %4555 = fmul fast float %4552, %4458
  %4556 = fmul fast float %4553, %4458
  %4557 = fmul fast float %4554, %4458
  %4558 = fadd fast float %4555, %3919
  %4559 = fadd fast float %4556, %3920
  %4560 = fadd fast float %4557, %3921
  %4561 = fsub fast float %4495, %3903
  %4562 = fsub fast float %4496, %3904
  %4563 = fsub fast float %4497, %3905
  %4564 = fmul fast float %4561, %4458
  %4565 = fmul fast float %4562, %4458
  %4566 = fmul fast float %4563, %4458
  %4567 = fadd fast float %4564, %3903
  %4568 = fadd fast float %4565, %3904
  %4569 = fadd fast float %4566, %3905
  %4570 = fadd fast float %4549, %3867
  %4571 = fadd fast float %4550, %3868
  %4572 = fadd fast float %4551, %3869
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = call float @dx.op.unary.f32(i32 25, float %4573)  ; Rsqrt(value)
  %4575 = fmul fast float %4570, %4574
  %4576 = fmul fast float %4571, %4574
  %4577 = fmul fast float %4572, %4574
  %4578 = fsub fast float %4575, %3867
  %4579 = fsub fast float %4576, %3868
  %4580 = fsub fast float %4577, %3869
  %4581 = fmul fast float %4578, %4458
  %4582 = fmul fast float %4579, %4458
  %4583 = fmul fast float %4580, %4458
  %4584 = fadd fast float %4581, %3867
  %4585 = fadd fast float %4582, %3868
  %4586 = fadd fast float %4583, %3869
  %4587 = call float @dx.op.binary.f32(i32 36, float %3879, float %4506)  ; FMin(a,b)
  %4588 = fsub fast float %4587, %3879
  %4589 = fmul fast float %4588, %4458
  %4590 = fadd fast float %4589, %3879
  %4591 = fsub fast float %4519, %3906
  %4592 = fmul fast float %4591, %4458
  %4593 = fadd fast float %4592, %3906
  br label %4594

; <label>:4594                                    ; preds = %4456, %4418, %4320
  %4595 = phi float [ %4567, %4456 ], [ %3903, %4418 ], [ %3903, %4320 ]
  %4596 = phi float [ %4568, %4456 ], [ %3904, %4418 ], [ %3904, %4320 ]
  %4597 = phi float [ %4569, %4456 ], [ %3905, %4418 ], [ %3905, %4320 ]
  %4598 = phi float [ %4558, %4456 ], [ %3919, %4418 ], [ %3919, %4320 ]
  %4599 = phi float [ %4559, %4456 ], [ %3920, %4418 ], [ %3920, %4320 ]
  %4600 = phi float [ %4560, %4456 ], [ %3921, %4418 ], [ %3921, %4320 ]
  %4601 = phi float [ %4584, %4456 ], [ %3867, %4418 ], [ %3867, %4320 ]
  %4602 = phi float [ %4585, %4456 ], [ %3868, %4418 ], [ %3868, %4320 ]
  %4603 = phi float [ %4586, %4456 ], [ %3869, %4418 ], [ %3869, %4320 ]
  %4604 = phi float [ %4593, %4456 ], [ %3906, %4418 ], [ %3906, %4320 ]
  %4605 = phi float [ %4590, %4456 ], [ %3879, %4418 ], [ %3879, %4320 ]
  br i1 %4318, label %4606, label %4879

; <label>:4606                                    ; preds = %4594
  %4607 = call float @dx.op.unary.f32(i32 23, float %4605)  ; Log(value)
  %4608 = fmul fast float %4607, 4.000000e+00
  %4609 = call float @dx.op.unary.f32(i32 21, float %4608)  ; Exp(value)
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = fmul fast float %4611, %34
  %4613 = fmul fast float %4611, %35
  %4614 = fmul fast float %4611, %36
  %4615 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 23, float %4615)  ; Log(value)
  %4619 = call float @dx.op.unary.f32(i32 23, float %4616)  ; Log(value)
  %4620 = call float @dx.op.unary.f32(i32 23, float %4617)  ; Log(value)
  %4621 = fmul fast float %4618, 4.000000e+00
  %4622 = fmul fast float %4619, 4.000000e+00
  %4623 = fmul fast float %4620, 4.000000e+00
  %4624 = call float @dx.op.unary.f32(i32 21, float %4621)  ; Exp(value)
  %4625 = call float @dx.op.unary.f32(i32 21, float %4622)  ; Exp(value)
  %4626 = call float @dx.op.unary.f32(i32 21, float %4623)  ; Exp(value)
  %4627 = fadd fast float %4625, %4624
  %4628 = fadd fast float %4627, %4626
  %4629 = fdiv fast float 1.000000e+00, %4628
  %4630 = fmul fast float %4629, %4624
  %4631 = fcmp fast ogt float %43, 0.000000e+00
  %4632 = fcmp fast ogt float %44, 0.000000e+00
  %4633 = fcmp fast ogt float %45, 0.000000e+00
  %4634 = fcmp fast olt float %43, 0.000000e+00
  %4635 = fcmp fast olt float %44, 0.000000e+00
  %4636 = fcmp fast olt float %45, 0.000000e+00
  %4637 = zext i1 %4631 to i32
  %4638 = zext i1 %4632 to i32
  %4639 = zext i1 %4633 to i32
  %4640 = zext i1 %4634 to i32
  %4641 = zext i1 %4635 to i32
  %4642 = zext i1 %4636 to i32
  %4643 = sub nsw i32 %4637, %4640
  %4644 = sub nsw i32 %4638, %4641
  %4645 = sub nsw i32 %4639, %4642
  %4646 = call float @dx.op.unary.f32(i32 83, float %4612)  ; DerivCoarseX(value)
  %4647 = call float @dx.op.unary.f32(i32 83, float %4613)  ; DerivCoarseX(value)
  %4648 = call float @dx.op.unary.f32(i32 83, float %4614)  ; DerivCoarseX(value)
  %4649 = call float @dx.op.unary.f32(i32 84, float %4612)  ; DerivCoarseY(value)
  %4650 = call float @dx.op.unary.f32(i32 84, float %4613)  ; DerivCoarseY(value)
  %4651 = call float @dx.op.unary.f32(i32 84, float %4614)  ; DerivCoarseY(value)
  %4652 = fcmp fast ole float %213, %4630
  %4653 = fmul fast float %4629, %4627
  %4654 = fcmp fast ole float %213, %4653
  %4655 = select i1 %4654, float %4614, float %4612
  %4656 = select i1 %4654, float %4612, float %4613
  %4657 = select i1 %4652, float %4613, float %4655
  %4658 = select i1 %4652, float %4614, float %4656
  %4659 = select i1 %4654, float %4648, float %4646
  %4660 = select i1 %4654, float %4646, float %4647
  %4661 = select i1 %4652, float %4647, float %4659
  %4662 = select i1 %4652, float %4648, float %4660
  %4663 = select i1 %4654, float %4651, float %4649
  %4664 = select i1 %4654, float %4649, float %4650
  %4665 = select i1 %4652, float %4650, float %4663
  %4666 = select i1 %4652, float %4651, float %4664
  %4667 = call float @dx.op.unary.f32(i32 27, float %4657)  ; Round_ni(value)
  %4668 = call float @dx.op.unary.f32(i32 27, float %4658)  ; Round_ni(value)
  %4669 = fptosi float %4667 to i32
  %4670 = fptosi float %4668 to i32
  %4671 = xor i32 %4670, %4669
  %4672 = sitofp i32 %4671 to float
  %4673 = fptosi float %4672 to i32
  %4674 = sitofp i32 %4673 to float
  %4675 = fmul fast float %4674, 0x3FE3C6EF40000000
  %4676 = frem fast float %4667, 2.560000e+02
  %4677 = frem fast float %4668, 2.560000e+02
  %4678 = fptoui float %4676 to i32
  %4679 = fptoui float %4677 to i32
  %4680 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4678, i32 %4679, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = fadd fast float %4681, %4675
  %4685 = fadd fast float %4682, %4675
  %4686 = fadd fast float %4683, %4675
  %4687 = call float @dx.op.unary.f32(i32 22, float %4684)  ; Frc(value)
  %4688 = call float @dx.op.unary.f32(i32 22, float %4685)  ; Frc(value)
  %4689 = call float @dx.op.unary.f32(i32 22, float %4686)  ; Frc(value)
  %4690 = fmul fast float %4689, 0x401921FB60000000
  %4691 = call float @dx.op.unary.f32(i32 13, float %4690)  ; Sin(value)
  %4692 = call float @dx.op.unary.f32(i32 12, float %4690)  ; Cos(value)
  %4693 = fsub fast float -0.000000e+00, %4692
  %4694 = fmul fast float %4692, %4657
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4691, float %4658, float %4694)  ; FMad(a,b,c)
  %4696 = fmul fast float %4691, %4657
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4693, float %4658, float %4696)  ; FMad(a,b,c)
  %4698 = fadd fast float %4695, %4687
  %4699 = fadd fast float %4697, %4688
  %4700 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4701 = bitcast float %4700 to i32
  %4702 = icmp eq i32 %4701, 0
  br i1 %4702, label %4741, label %4703

; <label>:4703                                    ; preds = %4606
  %4704 = add i32 %4701, 0
  %4705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4706 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4705, %dx.types.Handle %73, float %4698, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float %4661, float %4662, float undef, float %4665, float %4666, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4711 = fsub fast float 1.000000e+00, %4316
  %4712 = call float @dx.op.binary.f32(i32 35, float %4711, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4713 = bitcast float %4316 to i32
  %4714 = sitofp i32 %4713 to float
  %4715 = fadd fast float %4714, 0xC1CFBF8940000000
  %4716 = fmul fast float %4710, %4715
  %4717 = fadd fast float %4716, 0x41CFBF8940000000
  %4718 = fptosi float %4717 to i32
  %4719 = bitcast i32 %4718 to float
  %4720 = bitcast float %4712 to i32
  %4721 = sitofp i32 %4720 to float
  %4722 = fadd fast float %4721, 0xC1CFBF8940000000
  %4723 = fmul fast float %4722, %4710
  %4724 = fadd fast float %4723, 0x41CFBF8940000000
  %4725 = fptosi float %4724 to i32
  %4726 = bitcast i32 %4725 to float
  %4727 = fmul fast float %4719, %4709
  %4728 = fmul fast float %4726, %4709
  %4729 = fsub fast float %4712, %4727
  %4730 = fadd fast float %4728, %4712
  %4731 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4733 = fsub fast float %4707, %4731
  %4734 = fsub fast float %4732, %4731
  %4735 = bitcast float %4734 to i32
  %4736 = sub nsw i32 2129859010, %4735
  %4737 = bitcast i32 %4736 to float
  %4738 = fmul fast float %4737, %4733
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fcmp fast olt float %4739, 0x3F70101020000000
  br i1 %4740, label %4879, label %4741

; <label>:4741                                    ; preds = %4703, %4606
  %4742 = phi float [ %4739, %4703 ], [ %4316, %4606 ]
  %4743 = fmul fast float %4742, %4609
  %4744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.i32 %4744, 1
  %4746 = extractvalue %dx.types.CBufRet.i32 %4744, 0
  %4747 = add i32 %4746, 0
  %4748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4749 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4748, %dx.types.Handle %72, float %4698, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float %4661, float %4662, float undef, float %4665, float %4666, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4750 = extractvalue %dx.types.ResRet.f32 %4749, 0
  %4751 = extractvalue %dx.types.ResRet.f32 %4749, 1
  %4752 = extractvalue %dx.types.ResRet.f32 %4749, 2
  %4753 = extractvalue %dx.types.ResRet.f32 %4749, 3
  %4754 = and i32 %4745, 255
  %4755 = uitofp i32 %4754 to float
  %4756 = lshr i32 %4745, 8
  %4757 = and i32 %4756, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = fmul fast float %4753, %4755
  %4760 = fadd fast float %4759, %4758
  %4761 = fmul fast float %4760, 0x3F70101000000000
  %4762 = fadd fast float %4761, 0xBFB99999A0000000
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = fmul fast float %4763, 0x3FF1C71C80000000
  %4765 = call float @dx.op.binary.f32(i32 36, float %4761, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4766 = fsub fast float 1.000000e+00, %4764
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4767, %4750
  %4769 = fmul fast float %4767, %4751
  %4770 = fmul fast float %4767, %4752
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = fmul fast float %4764, %4750
  %4775 = fmul fast float %4764, %4751
  %4776 = fmul fast float %4764, %4752
  %4777 = fadd fast float %4774, %4765
  %4778 = fadd fast float %4775, %4765
  %4779 = fadd fast float %4776, %4765
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.i32 %4783, 3
  %4785 = extractvalue %dx.types.CBufRet.i32 %4783, 2
  %4786 = add i32 %4785, 0
  %4787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4787, %dx.types.Handle %72, float %4698, float %4699, float undef, float undef, i32 0, i32 0, i32 undef, float %4661, float %4662, float undef, float %4665, float %4666, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = extractvalue %dx.types.ResRet.f32 %4788, 3
  %4793 = and i32 %4784, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = lshr i32 %4784, 8
  %4796 = and i32 %4795, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = lshr i32 %4784, 16
  %4799 = and i32 %4798, 255
  %4800 = uitofp i32 %4799 to float
  %4801 = fmul fast float %4800, 0x3F70101000000000
  %4802 = fmul fast float %4789, %4794
  %4803 = fadd fast float %4802, %4797
  %4804 = fmul fast float %4803, 0x3F70101000000000
  %4805 = fadd fast float %4790, -5.000000e-01
  %4806 = fadd fast float %4792, -5.000000e-01
  %4807 = fmul fast float %4805, %4801
  %4808 = fmul fast float %4806, %4801
  %4809 = fadd fast float %4807, 5.000000e-01
  %4810 = fadd fast float %4808, 5.000000e-01
  %4811 = fmul fast float %4809, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fmul fast float %4810, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = fadd fast float %4812, %4814
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = fsub fast float %4812, %4814
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = call float @dx.op.unary.f32(i32 6, float %4818)  ; FAbs(value)
  %4822 = fsub fast float %4820, %4821
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4818, float %4822, float %4816, float %4818, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 25, float %4823)  ; Rsqrt(value)
  %4825 = fmul fast float %4816, %4824
  %4826 = fmul fast float %4818, %4824
  %4827 = select i1 %4654, i32 %4644, i32 %4645
  %4828 = select i1 %4652, i32 %4643, i32 %4827
  %4829 = sitofp i32 %4828 to float
  %4830 = fmul fast float %4822, %4829
  %4831 = fmul fast float %4830, %4824
  %4832 = select i1 %4654, float %4831, float %4826
  %4833 = select i1 %4654, float %4826, float %4831
  %4834 = select i1 %4652, float %4831, float %4825
  %4835 = select i1 %4652, float %4826, float %4832
  %4836 = select i1 %4652, float %4825, float %4833
  %4837 = fsub fast float %4771, %4598
  %4838 = fsub fast float %4772, %4599
  %4839 = fsub fast float %4773, %4600
  %4840 = fmul fast float %4837, %4743
  %4841 = fmul fast float %4838, %4743
  %4842 = fmul fast float %4839, %4743
  %4843 = fadd fast float %4840, %4598
  %4844 = fadd fast float %4841, %4599
  %4845 = fadd fast float %4842, %4600
  %4846 = fsub fast float %4780, %4595
  %4847 = fsub fast float %4781, %4596
  %4848 = fsub fast float %4782, %4597
  %4849 = fmul fast float %4846, %4743
  %4850 = fmul fast float %4847, %4743
  %4851 = fmul fast float %4848, %4743
  %4852 = fadd fast float %4849, %4595
  %4853 = fadd fast float %4850, %4596
  %4854 = fadd fast float %4851, %4597
  %4855 = fadd fast float %4834, %4601
  %4856 = fadd fast float %4835, %4602
  %4857 = fadd fast float %4836, %4603
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4855, float %4856, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 25, float %4858)  ; Rsqrt(value)
  %4860 = fmul fast float %4855, %4859
  %4861 = fmul fast float %4856, %4859
  %4862 = fmul fast float %4857, %4859
  %4863 = fsub fast float %4860, %4601
  %4864 = fsub fast float %4861, %4602
  %4865 = fsub fast float %4862, %4603
  %4866 = fmul fast float %4863, %4743
  %4867 = fmul fast float %4864, %4743
  %4868 = fmul fast float %4865, %4743
  %4869 = fadd fast float %4866, %4601
  %4870 = fadd fast float %4867, %4602
  %4871 = fadd fast float %4868, %4603
  %4872 = call float @dx.op.binary.f32(i32 36, float %4605, float %4791)  ; FMin(a,b)
  %4873 = fsub fast float %4872, %4605
  %4874 = fmul fast float %4873, %4743
  %4875 = fadd fast float %4874, %4605
  %4876 = fsub fast float %4804, %4604
  %4877 = fmul fast float %4876, %4743
  %4878 = fadd fast float %4877, %4604
  br label %4879

; <label>:4879                                    ; preds = %4741, %4703, %4594, %4310
  %4880 = phi float [ %4852, %4741 ], [ %4595, %4703 ], [ %4595, %4594 ], [ %3903, %4310 ]
  %4881 = phi float [ %4853, %4741 ], [ %4596, %4703 ], [ %4596, %4594 ], [ %3904, %4310 ]
  %4882 = phi float [ %4854, %4741 ], [ %4597, %4703 ], [ %4597, %4594 ], [ %3905, %4310 ]
  %4883 = phi float [ %4843, %4741 ], [ %4598, %4703 ], [ %4598, %4594 ], [ %3919, %4310 ]
  %4884 = phi float [ %4844, %4741 ], [ %4599, %4703 ], [ %4599, %4594 ], [ %3920, %4310 ]
  %4885 = phi float [ %4845, %4741 ], [ %4600, %4703 ], [ %4600, %4594 ], [ %3921, %4310 ]
  %4886 = phi float [ %4869, %4741 ], [ %4601, %4703 ], [ %4601, %4594 ], [ %3867, %4310 ]
  %4887 = phi float [ %4870, %4741 ], [ %4602, %4703 ], [ %4602, %4594 ], [ %3868, %4310 ]
  %4888 = phi float [ %4871, %4741 ], [ %4603, %4703 ], [ %4603, %4594 ], [ %3869, %4310 ]
  %4889 = phi float [ %4878, %4741 ], [ %4604, %4703 ], [ %4604, %4594 ], [ %3906, %4310 ]
  %4890 = phi float [ %4875, %4741 ], [ %4605, %4703 ], [ %4605, %4594 ], [ %3879, %4310 ]
  %4891 = fcmp fast une float %4314, 0.000000e+00
  %4892 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = call float @dx.op.unary.f32(i32 25, float %4892)  ; Rsqrt(value)
  br i1 %4891, label %4901, label %4894

; <label>:4894                                    ; preds = %4879
  %4895 = fmul fast float %4893, %163
  %4896 = fmul fast float %4893, %164
  %4897 = fmul fast float %4893, %165
  %4898 = fsub fast float -0.000000e+00, %4895
  %4899 = fsub fast float -0.000000e+00, %4896
  %4900 = fsub fast float -0.000000e+00, %4897
  br label %5068

; <label>:4901                                    ; preds = %4879
  %4902 = fmul fast float %163, %4893
  %4903 = fsub fast float -0.000000e+00, %4902
  %4904 = fmul fast float %164, %4893
  %4905 = fsub fast float -0.000000e+00, %4904
  %4906 = fmul fast float %165, %4893
  %4907 = fsub fast float -0.000000e+00, %4906
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4905, float %4907, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = fmul fast float %4314, 2.500000e+00
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fmul fast float %4314, 0x4013FFFFE0000000
  %4912 = fadd fast float %4911, 0xBFFFFFFFE0000000
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = fmul fast float %4314, 0x4004000020000000
  %4915 = fadd fast float %4914, 0xBFF8000040000000
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = fmul fast float %3885, 1.000000e+01
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fmul fast float %4918, 2.000000e+00
  %4920 = fsub fast float 3.000000e+00, %4919
  %4921 = fmul fast float %4918, %4918
  %4922 = fmul fast float %4921, %4920
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = fsub fast float 0x3FE3333340000000, %4889
  %4925 = fmul fast float %4924, 0x400AAAAAA0000000
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4923, %4926
  %4928 = fmul fast float %4883, 0x3FEA2B8620000000
  %4929 = fmul fast float %4884, 0x3FEA2B8620000000
  %4930 = fmul fast float %4885, 0x3FEA2B8620000000
  %4931 = fadd fast float %4928, 0x3FC81DFBA0000000
  %4932 = fmul fast float %4931, %4883
  %4933 = fadd fast float %4932, 0x3F910E6020000000
  %4934 = fadd fast float %4929, 0x3FC81DFBA0000000
  %4935 = fmul fast float %4934, %4884
  %4936 = fadd fast float %4935, 0x3F910E6020000000
  %4937 = fadd fast float %4930, 0x3FC81DFBA0000000
  %4938 = fmul fast float %4937, %4885
  %4939 = fadd fast float %4938, 0x3F910E6020000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4943 = fsub fast float %4940, %4883
  %4944 = fsub fast float %4941, %4884
  %4945 = fsub fast float %4942, %4885
  %4946 = fmul fast float %4943, %4910
  %4947 = fmul fast float %4946, %4927
  %4948 = fmul fast float %4944, %4910
  %4949 = fmul fast float %4948, %4927
  %4950 = fmul fast float %4945, %4910
  %4951 = fmul fast float %4950, %4927
  %4952 = fadd fast float %4947, %4883
  %4953 = fadd fast float %4949, %4884
  %4954 = fadd fast float %4951, %4885
  %4955 = fmul fast float %4890, %4890
  %4956 = fmul fast float %4955, %4955
  %4957 = fadd fast float %4913, 1.000000e+00
  %4958 = fsub fast float %4957, %4927
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = fsub fast float 1.000000e+00, %4956
  %4963 = call float @dx.op.binary.f32(i32 36, float %4959, float %4962)  ; FMin(a,b)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4963, float %4964)  ; FMax(a,b)
  %4966 = fadd fast float %4961, 0xBFE4CCCCC0000000
  %4967 = fmul fast float %4966, 0x4006DB6DA0000000
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, 2.000000e+00
  %4970 = fsub fast float 3.000000e+00, %4969
  %4971 = bitcast float %4880 to i32
  %4972 = ashr i32 %4971, 1
  %4973 = add nsw i32 %4972, 532487669
  %4974 = bitcast i32 %4973 to float
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, 2.000000e+00
  %4980 = bitcast float %4881 to i32
  %4981 = ashr i32 %4980, 1
  %4982 = add nsw i32 %4981, 532487669
  %4983 = bitcast i32 %4982 to float
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4987, 2.000000e+00
  %4989 = bitcast float %4882 to i32
  %4990 = ashr i32 %4989, 1
  %4991 = add nsw i32 %4990, 532487669
  %4992 = bitcast i32 %4991 to float
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, 2.000000e+00
  %4998 = fsub fast float 0x4002A9FBE0000000, %4979
  %4999 = fadd fast float %4979, 0x3FD54FDF00000000
  %5000 = bitcast float %4999 to i32
  %5001 = sub nsw i32 2129859010, %5000
  %5002 = bitcast i32 %5001 to float
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %5003, %5003
  %5005 = fsub fast float 0x4002A9FBE0000000, %4988
  %5006 = fadd fast float %4988, 0x3FD54FDF00000000
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = fmul fast float %5009, %5005
  %5011 = fmul fast float %5010, %5010
  %5012 = fsub fast float 0x4002A9FBE0000000, %4997
  %5013 = fadd fast float %4997, 0x3FD54FDF00000000
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fmul fast float %5016, %5012
  %5018 = fmul fast float %5017, %5017
  %5019 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5004)  ; FMax(a,b)
  %5020 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5011)  ; FMax(a,b)
  %5021 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5018)  ; FMax(a,b)
  %5022 = fsub fast float 1.000000e+00, %4908
  %5023 = fadd fast float %5022, %4923
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fsub fast float 1.000000e+00, %4295
  %5026 = fmul fast float %4965, %5025
  %5027 = fmul fast float %4968, %4968
  %5028 = fmul fast float %5027, %5026
  %5029 = fmul fast float %5028, %4970
  %5030 = fmul fast float %5025, 0xBFE99999A0000000
  %5031 = fmul fast float %5030, %4910
  %5032 = fmul fast float %5031, %4927
  %5033 = fadd fast float %5032, 1.000000e+00
  %5034 = fadd fast float %4889, -1.000000e+00
  %5035 = fmul fast float %5033, %5034
  %5036 = fadd fast float %5035, 1.000000e+00
  %5037 = fsub fast float %5019, %4880
  %5038 = fsub fast float %5020, %4881
  %5039 = fsub fast float %5021, %4882
  %5040 = fmul fast float %5029, %5037
  %5041 = fmul fast float %5029, %5038
  %5042 = fmul fast float %5029, %5039
  %5043 = fadd fast float %5040, %4880
  %5044 = fadd fast float %5041, %4881
  %5045 = fadd fast float %5042, %4882
  %5046 = fsub fast float %83, %4886
  %5047 = fsub fast float %84, %4887
  %5048 = fsub fast float %85, %4888
  %5049 = fmul fast float %5029, %5046
  %5050 = fmul fast float %5029, %5047
  %5051 = fmul fast float %5029, %5048
  %5052 = fadd fast float %5049, %4886
  %5053 = fadd fast float %5050, %4887
  %5054 = fadd fast float %5051, %4888
  %5055 = fmul fast float %5029, %5024
  %5056 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = fmul fast float %5055, %5057
  %5059 = fadd fast float %5058, %5056
  %5060 = fsub fast float 1.000000e+00, %4890
  %5061 = fmul fast float %5029, %5060
  %5062 = fadd fast float %5061, %4890
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5053, float %5054, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = call float @dx.op.unary.f32(i32 25, float %5063)  ; Rsqrt(value)
  %5065 = fmul fast float %5052, %5064
  %5066 = fmul fast float %5053, %5064
  %5067 = fmul fast float %5054, %5064
  br label %5068

; <label>:5068                                    ; preds = %4901, %4894
  %5069 = phi float [ %4900, %4894 ], [ %4907, %4901 ]
  %5070 = phi float [ %4899, %4894 ], [ %4905, %4901 ]
  %5071 = phi float [ %4898, %4894 ], [ %4903, %4901 ]
  %5072 = phi float [ %4897, %4894 ], [ %4906, %4901 ]
  %5073 = phi float [ %4896, %4894 ], [ %4904, %4901 ]
  %5074 = phi float [ %4895, %4894 ], [ %4902, %4901 ]
  %5075 = phi float [ %4880, %4894 ], [ %5043, %4901 ]
  %5076 = phi float [ %4881, %4894 ], [ %5044, %4901 ]
  %5077 = phi float [ %4882, %4894 ], [ %5045, %4901 ]
  %5078 = phi float [ %4883, %4894 ], [ %4952, %4901 ]
  %5079 = phi float [ %4884, %4894 ], [ %4953, %4901 ]
  %5080 = phi float [ %4885, %4894 ], [ %4954, %4901 ]
  %5081 = phi float [ %4886, %4894 ], [ %5065, %4901 ]
  %5082 = phi float [ %4887, %4894 ], [ %5066, %4901 ]
  %5083 = phi float [ %4888, %4894 ], [ %5067, %4901 ]
  %5084 = phi float [ %4889, %4894 ], [ %5059, %4901 ]
  %5085 = phi float [ %4890, %4894 ], [ %5062, %4901 ]
  %5086 = select i1 %202, float 0.000000e+00, float %5077
  %5087 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5071, float %5070, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5073, float %5072, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = fmul fast float %5089, 2.000000e+00
  %5091 = fmul fast float %5090, %5081
  %5092 = fmul fast float %5090, %5082
  %5093 = fmul fast float %5090, %5083
  %5094 = fsub fast float %5074, %5091
  %5095 = fsub fast float %5073, %5092
  %5096 = fsub fast float %5072, %5093
  %5097 = call float @dx.op.binary.f32(i32 36, float %5085, float 1.000000e+00)  ; FMin(a,b)
  %5098 = fsub fast float 1.000000e+00, %5085
  %5099 = bitcast float %5098 to i32
  %5100 = sub nsw i32 2129859010, %5099
  %5101 = fsub fast float 1.000000e+00, %53
  %5102 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5102, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5104 = fdiv fast float %5101, %5103
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5106, 5.000000e-01
  %5108 = fadd fast float %5107, 5.000000e-01
  %5109 = fmul fast float %5108, %53
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5111, %5104
  %5113 = fadd fast float %5109, %5112
  %5114 = fsub fast float 5.000000e-01, %5107
  %5115 = fmul fast float %5114, %5078
  %5116 = fmul fast float %5114, %5079
  %5117 = fmul fast float %5114, %5080
  %5118 = fadd fast float %5113, %5115
  %5119 = fadd fast float %5113, %5116
  %5120 = fadd fast float %5113, %5117
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 5.000000e-01
  %5124 = fadd fast float %5123, 5.000000e-01
  %5125 = fmul fast float %5124, %53
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fmul fast float %5127, %5104
  %5129 = fadd fast float %5125, %5128
  %5130 = fsub fast float 5.000000e-01, %5123
  %5131 = fmul fast float %5130, %5078
  %5132 = fmul fast float %5130, %5079
  %5133 = fmul fast float %5130, %5080
  %5134 = fadd fast float %5129, %5131
  %5135 = fadd fast float %5129, %5132
  %5136 = fadd fast float %5129, %5133
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = call float @dx.op.binary.f32(i32 36, float %5078, float %5138)  ; FMin(a,b)
  %5140 = fsub fast float 1.000000e+00, %5097
  %5141 = fmul fast float %5139, %5140
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %5079, float %5138)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5140
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = call float @dx.op.binary.f32(i32 36, float %5080, float %5138)  ; FMin(a,b)
  %5153 = fmul fast float %5152, %5140
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = bitcast float %5154 to i32
  %5156 = sub nsw i32 2129859010, %5155
  %5157 = bitcast i32 %5156 to float
  %5158 = fmul fast float %5097, %54
  %5159 = fmul fast float %5158, %5118
  %5160 = fmul fast float %5159, %5145
  %5161 = fmul fast float %5097, %55
  %5162 = fmul fast float %5161, %5119
  %5163 = fmul fast float %5162, %5151
  %5164 = fmul fast float %5097, %56
  %5165 = fmul fast float %5164, %5120
  %5166 = fmul fast float %5165, %5157
  %5167 = call float @dx.op.binary.f32(i32 36, float %5075, float %5138)  ; FMin(a,b)
  %5168 = fmul fast float %5167, %5140
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = bitcast float %5169 to i32
  %5171 = sub nsw i32 2129859010, %5170
  %5172 = bitcast i32 %5171 to float
  %5173 = call float @dx.op.binary.f32(i32 36, float %5076, float %5138)  ; FMin(a,b)
  %5174 = fmul fast float %5173, %5140
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = call float @dx.op.binary.f32(i32 36, float %5086, float %5138)  ; FMin(a,b)
  %5180 = fmul fast float %5179, %5140
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = bitcast float %5181 to i32
  %5183 = sub nsw i32 2129859010, %5182
  %5184 = bitcast i32 %5183 to float
  %5185 = fmul fast float %5158, %5134
  %5186 = fmul fast float %5185, %5172
  %5187 = fmul fast float %5161, %5135
  %5188 = fmul fast float %5187, %5178
  %5189 = fmul fast float %5164, %5136
  %5190 = fmul fast float %5189, %5184
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5163, float %5166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = select i1 %202, float 0.000000e+00, float %5160
  %5193 = select i1 %202, float %5191, float %5163
  %5194 = select i1 %202, float 0.000000e+00, float %5166
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5186, float %5188, float %5190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = select i1 %202, float 0.000000e+00, float %5186
  %5197 = select i1 %202, float %5195, float %5188
  %5198 = select i1 %202, float 0.000000e+00, float %5190
  %5199 = fmul fast float %5088, 9.843750e-01
  %5200 = fmul fast float %5084, 9.843750e-01
  %5201 = fadd fast float %5199, 7.812500e-03
  %5202 = fadd fast float %5200, 7.812500e-03
  %5203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5201, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 3
  %5206 = fmul fast float %5204, %5075
  %5207 = fmul fast float %5204, %5076
  %5208 = fmul fast float %5204, %5086
  %5209 = fadd fast float %5206, %5205
  %5210 = fadd fast float %5207, %5205
  %5211 = fadd fast float %5208, %5205
  %5212 = fcmp fast ogt float %3880, 0.000000e+00
  br i1 %5212, label %5213, label %5239

; <label>:5213                                    ; preds = %5068
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3880, float %5088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = fadd fast float %5215, -5.000000e-01
  %5219 = fadd fast float %5216, -5.000000e-01
  %5220 = fadd fast float %5217, -5.000000e-01
  %5221 = fsub fast float 1.000000e+00, %5075
  %5222 = fsub fast float 1.000000e+00, %5076
  %5223 = fsub fast float 1.000000e+00, %5086
  %5224 = fmul fast float %5075, 4.000000e+00
  %5225 = fmul fast float %5224, %5221
  %5226 = fmul fast float %5225, %5218
  %5227 = fmul fast float %5076, 4.000000e+00
  %5228 = fmul fast float %5227, %5222
  %5229 = fmul fast float %5228, %5219
  %5230 = fmul fast float %5086, 4.000000e+00
  %5231 = fmul fast float %5230, %5223
  %5232 = fmul fast float %5231, %5220
  %5233 = fadd fast float %5226, %5209
  %5234 = fadd fast float %5229, %5210
  %5235 = fadd fast float %5232, %5211
  %5236 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  br label %5239

; <label>:5239                                    ; preds = %5213, %5068
  %5240 = phi float [ %5236, %5213 ], [ %5209, %5068 ]
  %5241 = phi float [ %5237, %5213 ], [ %5210, %5068 ]
  %5242 = phi float [ %5238, %5213 ], [ %5211, %5068 ]
  %5243 = call float @dx.op.binary.f32(i32 35, float %5241, float %5242)  ; FMax(a,b)
  %5244 = call float @dx.op.binary.f32(i32 35, float %5240, float %5243)  ; FMax(a,b)
  %5245 = fsub fast float 1.000000e+00, %5244
  %5246 = fmul fast float %5245, %5192
  %5247 = fmul fast float %5245, %5193
  %5248 = fmul fast float %5245, %5194
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = fcmp fast ogt float %5249, 0x3E7FF19E20000000
  %5251 = fdiv fast float 1.000000e+00, %5249
  %5252 = select i1 %5250, float %5251, float 0.000000e+00
  %5253 = fmul fast float %5252, %5078
  %5254 = fmul fast float %5252, %5079
  %5255 = fmul fast float %5252, %5080
  %5256 = fadd fast float %5253, -1.000000e+00
  %5257 = fadd fast float %5254, -1.000000e+00
  %5258 = fadd fast float %5255, -1.000000e+00
  %5259 = fmul fast float %5256, 5.000000e-01
  %5260 = fmul fast float %5257, 5.000000e-01
  %5261 = fmul fast float %5258, 5.000000e-01
  %5262 = fadd fast float %5259, 1.000000e+00
  %5263 = fadd fast float %5260, 1.000000e+00
  %5264 = fadd fast float %5261, 1.000000e+00
  %5265 = fmul fast float %5240, %5196
  %5266 = fmul fast float %5241, %5197
  %5267 = fmul fast float %5242, %5198
  %5268 = fsub fast float 1.000000e+00, %5088
  %5269 = bitcast float %5268 to i32
  %5270 = sitofp i32 %5269 to float
  %5271 = fmul fast float %5270, 5.000000e+00
  %5272 = fadd fast float %5271, 0xC1EFBF8940000000
  %5273 = fptosi float %5272 to i32
  %5274 = bitcast i32 %5273 to float
  %5275 = fmul fast float %5274, %3881
  %5276 = fmul fast float %5192, %5275
  %5277 = fmul fast float %5276, %5245
  %5278 = fmul fast float %5277, %5262
  %5279 = fmul fast float %5193, %5275
  %5280 = fmul fast float %5279, %5245
  %5281 = fmul fast float %5280, %5263
  %5282 = fmul fast float %5194, %5275
  %5283 = fmul fast float %5282, %5245
  %5284 = fmul fast float %5283, %5264
  %5285 = fmul fast float %5246, %3877
  %5286 = fmul fast float %5247, %3877
  %5287 = fmul fast float %5248, %3877
  %5288 = fadd fast float %5265, %3870
  %5289 = fadd fast float %5288, %5278
  %5290 = fmul fast float %5289, %3877
  %5291 = fadd fast float %5266, %3871
  %5292 = fadd fast float %5291, %5281
  %5293 = fmul fast float %5292, %3877
  %5294 = fadd fast float %5267, %3872
  %5295 = fadd fast float %5294, %5284
  %5296 = fmul fast float %5295, %3877
  %5297 = bitcast i32 %5100 to float
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5300 = fcmp fast oeq float %5299, 0.000000e+00
  br i1 %5300, label %5528, label %5301

; <label>:5301                                    ; preds = %5239
  %5302 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5308, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = select i1 %202, float %5310, float %5306
  %5314 = select i1 %202, float %5312, float %5307
  %5315 = select i1 %202, float %5311, float %5308
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5318 = fcmp fast une float %5317, 0.000000e+00
  br i1 %5318, label %5319, label %5336

; <label>:5319                                    ; preds = %5301
  %5320 = fptoui float %76 to i32
  %5321 = fptoui float %77 to i32
  %5322 = lshr i32 %5320, 4
  %5323 = lshr i32 %5321, 4
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = fptoui float %5325 to i32
  %5327 = add i32 %5326, 15
  %5328 = lshr i32 %5327, 4
  %5329 = mul i32 %5328, %5323
  %5330 = add i32 %5329, %5322
  %5331 = shl i32 %5330, 3
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5331, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = and i32 %5333, -268435456
  %5335 = icmp eq i32 %5334, -1342177280
  br i1 %5335, label %5346, label %5336

; <label>:5336                                    ; preds = %5319, %5301
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5339 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5340 = fmul fast float %5338, %76
  %5341 = fmul fast float %5339, %77
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5340, float %5341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.ResRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.ResRet.f32 %5342, 2
  br label %5346

; <label>:5346                                    ; preds = %5336, %5319
  %5347 = phi float [ %5343, %5336 ], [ 0.000000e+00, %5319 ]
  %5348 = phi float [ %5344, %5336 ], [ 0.000000e+00, %5319 ]
  %5349 = phi float [ %5345, %5336 ], [ 0.000000e+00, %5319 ]
  %5350 = call float @dx.op.binary.f32(i32 36, float %5348, float %5349)  ; FMin(a,b)
  %5351 = call float @dx.op.binary.f32(i32 36, float %5347, float %5350)  ; FMin(a,b)
  %5352 = fcmp fast ogt float %5351, 0.000000e+00
  br i1 %5352, label %5353, label %5528, !dx.controlflow.hints !74

; <label>:5353                                    ; preds = %5346
  %5354 = fmul fast float %5347, %5313
  %5355 = fmul fast float %5348, %5314
  %5356 = fmul fast float %5349, %5315
  %5357 = fsub fast float %5302, %5074
  %5358 = fsub fast float %5303, %5073
  %5359 = fsub fast float %5304, %5072
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5357, float %5358, float %5359, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = call float @dx.op.unary.f32(i32 25, float %5360)  ; Rsqrt(value)
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %5361, %5358
  %5364 = fmul fast float %5361, %5359
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5070, float %5069, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5368 = fmul fast float %5367, %5367
  %5369 = fmul fast float %5368, %5297
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fmul fast float %5370, %5367
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = fmul fast float %5372, %5372
  %5374 = call float @dx.op.unary.f32(i32 6, float %5365)  ; FAbs(value)
  %5375 = fsub fast float 1.000000e+00, %5084
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0x3F847AE140000000)  ; FMax(a,b)
  %5377 = fmul fast float %5376, %5376
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = fmul fast float %5088, %5088
  %5381 = fmul fast float %5380, %5379
  %5382 = fadd fast float %5381, %5378
  %5383 = bitcast float %5382 to i32
  %5384 = ashr i32 %5383, 1
  %5385 = add nsw i32 %5384, 532487669
  %5386 = bitcast i32 %5385 to float
  %5387 = fadd fast float %5386, %5088
  %5388 = fmul fast float %5378, %5373
  %5389 = fsub fast float 1.000000e+00, %5373
  %5390 = fadd fast float %5389, %5388
  %5391 = fmul fast float %5374, %5374
  %5392 = fmul fast float %5391, %5379
  %5393 = fadd fast float %5392, %5378
  %5394 = bitcast float %5393 to i32
  %5395 = ashr i32 %5394, 1
  %5396 = add nsw i32 %5395, 532487669
  %5397 = bitcast i32 %5396 to float
  %5398 = fadd fast float %5397, %5374
  %5399 = fmul fast float %5390, %5390
  %5400 = fmul fast float %5399, %5387
  %5401 = fmul fast float %5400, %5398
  %5402 = fdiv fast float 0x3FF0A00000000000, %5401
  %5403 = fmul fast float %5402, %5378
  %5404 = call float @dx.op.unary.f32(i32 6, float %5366)  ; FAbs(value)
  %5405 = fsub fast float 1.000000e+00, %5404
  %5406 = bitcast float %5405 to i32
  %5407 = sitofp i32 %5406 to float
  %5408 = fmul fast float %5407, 5.000000e+00
  %5409 = fadd fast float %5408, 0xC1EFBF8940000000
  %5410 = fptosi float %5409 to i32
  %5411 = bitcast i32 %5410 to float
  %5412 = fsub fast float 1.000000e+00, %5075
  %5413 = fsub fast float 1.000000e+00, %5076
  %5414 = fsub fast float 1.000000e+00, %5086
  %5415 = fmul fast float %5411, %5412
  %5416 = fmul fast float %5411, %5413
  %5417 = fmul fast float %5411, %5414
  %5418 = fadd fast float %5415, %5075
  %5419 = fadd fast float %5416, %5076
  %5420 = fadd fast float %5417, %5086
  br i1 %5212, label %5421, label %5444

; <label>:5421                                    ; preds = %5353
  %5422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3880, float %5404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.ResRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.ResRet.f32 %5422, 2
  %5426 = fadd fast float %5423, -5.000000e-01
  %5427 = fadd fast float %5424, -5.000000e-01
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fmul fast float %5075, 4.000000e+00
  %5430 = fmul fast float %5429, %5412
  %5431 = fmul fast float %5430, %5426
  %5432 = fmul fast float %5076, 4.000000e+00
  %5433 = fmul fast float %5432, %5413
  %5434 = fmul fast float %5433, %5427
  %5435 = fmul fast float %5086, 4.000000e+00
  %5436 = fmul fast float %5435, %5414
  %5437 = fmul fast float %5436, %5428
  %5438 = fadd fast float %5431, %5418
  %5439 = fadd fast float %5434, %5419
  %5440 = fadd fast float %5437, %5420
  %5441 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5442 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  br label %5444

; <label>:5444                                    ; preds = %5421, %5353
  %5445 = phi float [ %5441, %5421 ], [ %5418, %5353 ]
  %5446 = phi float [ %5442, %5421 ], [ %5419, %5353 ]
  %5447 = phi float [ %5443, %5421 ], [ %5420, %5353 ]
  %5448 = fmul fast float %5365, 9.843750e-01
  %5449 = fadd fast float %5448, 7.812500e-03
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5449, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 3
  %5453 = fmul fast float %5451, %5075
  %5454 = fmul fast float %5451, %5076
  %5455 = fmul fast float %5451, %5086
  %5456 = fadd fast float %5453, %5452
  %5457 = fadd fast float %5454, %5452
  %5458 = fadd fast float %5455, %5452
  br i1 %5212, label %5459, label %5482

; <label>:5459                                    ; preds = %5444
  %5460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3880, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fadd fast float %5463, -5.000000e-01
  %5467 = fmul fast float %5075, 4.000000e+00
  %5468 = fmul fast float %5467, %5412
  %5469 = fmul fast float %5468, %5464
  %5470 = fmul fast float %5076, 4.000000e+00
  %5471 = fmul fast float %5470, %5413
  %5472 = fmul fast float %5471, %5465
  %5473 = fmul fast float %5086, 4.000000e+00
  %5474 = fmul fast float %5473, %5414
  %5475 = fmul fast float %5474, %5466
  %5476 = fadd fast float %5469, %5456
  %5477 = fadd fast float %5472, %5457
  %5478 = fadd fast float %5475, %5458
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  br label %5482

; <label>:5482                                    ; preds = %5459, %5444
  %5483 = phi float [ %5479, %5459 ], [ %5456, %5444 ]
  %5484 = phi float [ %5480, %5459 ], [ %5457, %5444 ]
  %5485 = phi float [ %5481, %5459 ], [ %5458, %5444 ]
  %5486 = call float @dx.op.binary.f32(i32 35, float %5484, float %5485)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5483, float %5486)  ; FMax(a,b)
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = fmul fast float %5445, %5403
  %5490 = fmul fast float %5446, %5403
  %5491 = fmul fast float %5447, %5403
  %5492 = fsub fast float 1.000000e+00, %5366
  %5493 = bitcast float %5492 to i32
  %5494 = sitofp i32 %5493 to float
  %5495 = fmul fast float %5494, 5.000000e+00
  %5496 = fadd fast float %5495, 0xC1EFBF8940000000
  %5497 = fptosi float %5496 to i32
  %5498 = bitcast i32 %5497 to float
  %5499 = fmul fast float %5498, %3881
  %5500 = fmul fast float %5488, %5499
  %5501 = fmul fast float %5500, %5262
  %5502 = fmul fast float %5500, %5263
  %5503 = fmul fast float %5500, %5264
  %5504 = fadd fast float %5501, %5489
  %5505 = fadd fast float %5502, %5490
  %5506 = fadd fast float %5503, %5491
  %5507 = fmul fast float %5371, %5354
  %5508 = fmul fast float %5507, %5488
  %5509 = fmul fast float %5371, %5355
  %5510 = fmul fast float %5509, %5488
  %5511 = fmul fast float %5371, %5356
  %5512 = fmul fast float %5511, %5488
  %5513 = fmul fast float %5507, %5504
  %5514 = fmul fast float %5509, %5505
  %5515 = fmul fast float %5511, %5506
  %5516 = fadd fast float %5508, %5246
  %5517 = fmul fast float %5516, %3877
  %5518 = fadd fast float %5510, %5247
  %5519 = fmul fast float %5518, %3877
  %5520 = fadd fast float %5512, %5248
  %5521 = fmul fast float %5520, %3877
  %5522 = fadd fast float %5513, %5289
  %5523 = fmul fast float %5522, %3877
  %5524 = fadd fast float %5514, %5292
  %5525 = fmul fast float %5524, %3877
  %5526 = fadd fast float %5515, %5295
  %5527 = fmul fast float %5526, %3877
  br label %5528

; <label>:5528                                    ; preds = %5482, %5346, %5239
  %5529 = phi float [ %5290, %5239 ], [ %5290, %5346 ], [ %5523, %5482 ]
  %5530 = phi float [ %5293, %5239 ], [ %5293, %5346 ], [ %5525, %5482 ]
  %5531 = phi float [ %5296, %5239 ], [ %5296, %5346 ], [ %5527, %5482 ]
  %5532 = phi float [ %5285, %5239 ], [ %5285, %5346 ], [ %5517, %5482 ]
  %5533 = phi float [ %5286, %5239 ], [ %5286, %5346 ], [ %5519, %5482 ]
  %5534 = phi float [ %5287, %5239 ], [ %5287, %5346 ], [ %5521, %5482 ]
  %5535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.i32 %5535, 0
  %5537 = icmp eq i32 %5536, 0
  br i1 %5537, label %5972, label %5538

; <label>:5538                                    ; preds = %5528
  %5539 = fptoui float %76 to i32
  %5540 = fptoui float %77 to i32
  %5541 = lshr i32 %5539, 4
  %5542 = lshr i32 %5540, 4
  %5543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.i32 %5543, 0
  %5545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5542, i32 %5544, i32 %5541)  ; UMad(a,b,c)
  %5546 = add nsw i32 %5536, -1
  %5547 = call i32 @dx.op.binary.i32(i32 37, i32 %5546, i32 0)  ; IMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5549 = fptoui float %5548 to i32
  %5550 = lshr i32 %5549, 5
  %5551 = call i32 @dx.op.binary.i32(i32 40, i32 %5550, i32 8191)  ; UMin(a,b)
  %5552 = shl i32 %5551, 2
  %5553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5552, i32 undef)  ; BufferLoad(srv,index,wot)
  %5554 = extractvalue %dx.types.ResRet.i32 %5553, 0
  %5555 = lshr i32 %5554, 16
  %5556 = and i32 %5554, 65535
  %5557 = lshr i32 %5554, 21
  %5558 = lshr i32 %5556, 5
  %5559 = call i32 @dx.op.binary.i32(i32 40, i32 %5558, i32 %5547)  ; UMin(a,b)
  %5560 = icmp ugt i32 %5557, %5559
  br i1 %5560, label %5972, label %5561

; <label>:5561                                    ; preds = %5538
  br label %5562

; <label>:5562                                    ; preds = %5962, %5561
  %5563 = phi i32 [ %5969, %5962 ], [ %5557, %5561 ]
  %5564 = phi float [ %5963, %5962 ], [ %5529, %5561 ]
  %5565 = phi float [ %5964, %5962 ], [ %5530, %5561 ]
  %5566 = phi float [ %5965, %5962 ], [ %5531, %5561 ]
  %5567 = phi float [ %5966, %5962 ], [ %5532, %5561 ]
  %5568 = phi float [ %5967, %5962 ], [ %5533, %5561 ]
  %5569 = phi float [ %5968, %5962 ], [ %5534, %5561 ]
  %5570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.i32 %5570, 0
  %5572 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5545, i32 %5571, i32 %5563)  ; UMad(a,b,c)
  %5573 = shl i32 %5572, 2
  %5574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.i32 %5574, 0
  %5576 = shl i32 %5563, 5
  %5577 = sub nsw i32 %5555, %5576
  %5578 = call i32 @dx.op.binary.i32(i32 37, i32 %5577, i32 0)  ; IMax(a,b)
  %5579 = call i32 @dx.op.binary.i32(i32 38, i32 %5578, i32 31)  ; IMin(a,b)
  %5580 = sub nsw i32 1, %5555
  %5581 = add nsw i32 %5580, %5556
  %5582 = call i32 @dx.op.binary.i32(i32 37, i32 %5581, i32 0)  ; IMax(a,b)
  %5583 = call i32 @dx.op.binary.i32(i32 38, i32 %5582, i32 32)  ; IMin(a,b)
  %5584 = and i32 %5583, 31
  %5585 = shl i32 -1, %5584
  %5586 = xor i32 %5585, -1
  %5587 = and i32 %5579, 31
  %5588 = shl i32 %5586, %5587
  %5589 = icmp eq i32 %5583, 32
  %5590 = select i1 %5589, i32 -1, i32 %5588
  %5591 = and i32 %5590, %5575
  %5592 = icmp eq i32 %5591, 0
  br i1 %5592, label %5962, label %5593

; <label>:5593                                    ; preds = %5562
  br label %5594

; <label>:5594                                    ; preds = %5674, %5593
  %5595 = phi i32 [ %5606, %5674 ], [ %5591, %5593 ]
  %5596 = phi float [ %5675, %5674 ], [ %5564, %5593 ]
  %5597 = phi float [ %5676, %5674 ], [ %5565, %5593 ]
  %5598 = phi float [ %5677, %5674 ], [ %5566, %5593 ]
  %5599 = phi float [ %5678, %5674 ], [ %5567, %5593 ]
  %5600 = phi float [ %5679, %5674 ], [ %5568, %5593 ]
  %5601 = phi float [ %5680, %5674 ], [ %5569, %5593 ]
  %5602 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5595)  ; FirstbitLo(value)
  %5603 = add i32 %5602, %5576
  %5604 = and i32 %5602, 31
  %5605 = shl i32 1, %5604
  %5606 = xor i32 %5605, %5595
  %5607 = mul i32 %5603, 112
  %5608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5607, i32 undef)  ; BufferLoad(srv,index,wot)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = or i32 %5607, 12
  %5613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  %5615 = add i32 %5607, 44
  %5616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5615, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = add i32 %5607, 48
  %5619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5618, i32 undef)  ; BufferLoad(srv,index,wot)
  %5620 = extractvalue %dx.types.ResRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.ResRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.ResRet.f32 %5619, 2
  %5623 = add i32 %5607, 80
  %5624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5623, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.f32 %5624, 1
  %5626 = extractvalue %dx.types.ResRet.f32 %5624, 2
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = select i1 %202, float %5625, float %5609
  %5629 = select i1 %202, float %5627, float %5610
  %5630 = select i1 %202, float %5626, float %5611
  %5631 = fsub fast float %5620, %163
  %5632 = fsub fast float %5621, %164
  %5633 = fsub fast float %5622, %165
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.unary.f32(i32 24, float %5634)  ; Sqrt(value)
  %5636 = fdiv fast float 1.000000e+00, %5635
  %5637 = fmul fast float %5636, %5631
  %5638 = fmul fast float %5636, %5632
  %5639 = fmul fast float %5636, %5633
  %5640 = fadd fast float %5635, %5614
  %5641 = fdiv fast float 1.000000e+00, %5640
  %5642 = fmul float %5617, %5641
  %5643 = fmul float %5642, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = and i32 %5605, %5591
  %5646 = icmp eq i32 %5645, 0
  br i1 %5646, label %5669, label %5647, !dx.controlflow.hints !75

; <label>:5647                                    ; preds = %5594
  %5648 = lshr i32 %5539, 5
  %5649 = lshr i32 %5540, 5
  %5650 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5648, i32 %5649, i32 %5603, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5651 = extractvalue %dx.types.ResRet.i32 %5650, 0
  %5652 = and i32 %5651, 3
  %5653 = icmp eq i32 %5652, 0
  %5654 = select i1 %5653, float 1.000000e+00, float 0.000000e+00
  %5655 = icmp eq i32 %5652, 3
  br i1 %5655, label %5656, label %5669

; <label>:5656                                    ; preds = %5647
  %5657 = lshr i32 %5651, 10
  %5658 = and i32 %5657, 8160
  %5659 = and i32 %5540, 31
  %5660 = or i32 %5658, %5659
  %5661 = lshr i32 %5651, 1
  %5662 = and i32 %5661, 16352
  %5663 = and i32 %5539, 31
  %5664 = or i32 %5662, %5663
  %5665 = lshr i32 %5651, 23
  %5666 = and i32 %5665, 255
  %5667 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5664, i32 %5660, i32 %5666, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5668 = extractvalue %dx.types.ResRet.f32 %5667, 0
  br label %5669

; <label>:5669                                    ; preds = %5656, %5647, %5594
  %5670 = phi float [ %5668, %5656 ], [ %5654, %5647 ], [ 0.000000e+00, %5594 ]
  %5671 = call float @dx.op.binary.f32(i32 36, float %5670, float %5670)  ; FMin(a,b)
  %5672 = call float @dx.op.binary.f32(i32 36, float %5670, float %5671)  ; FMin(a,b)
  %5673 = fcmp fast ogt float %5672, 0.000000e+00
  br i1 %5673, label %5682, label %5674, !dx.controlflow.hints !76

; <label>:5674                                    ; preds = %5918, %5669
  %5675 = phi float [ %5596, %5669 ], [ %5958, %5918 ]
  %5676 = phi float [ %5597, %5669 ], [ %5959, %5918 ]
  %5677 = phi float [ %5598, %5669 ], [ %5960, %5918 ]
  %5678 = phi float [ %5599, %5669 ], [ %5952, %5918 ]
  %5679 = phi float [ %5600, %5669 ], [ %5953, %5918 ]
  %5680 = phi float [ %5601, %5669 ], [ %5954, %5918 ]
  %5681 = icmp eq i32 %5595, %5605
  br i1 %5681, label %5961, label %5594

; <label>:5682                                    ; preds = %5669
  %5683 = fmul fast float %5670, %5628
  %5684 = fmul fast float %5670, %5629
  %5685 = fmul fast float %5670, %5630
  %5686 = fsub fast float %5622, %4282
  %5687 = fcmp fast ogt float %5686, 0.000000e+00
  %5688 = fsub fast float %165, %4282
  %5689 = fcmp fast ogt float %5688, 0.000000e+00
  %5690 = xor i1 %5689, %5687
  %5691 = fsub fast float %4282, %5622
  %5692 = fmul fast float %5691, 2.000000e+00
  %5693 = fadd fast float %5692, %5622
  %5694 = select i1 %5690, float %5622, float %5693
  %5695 = fsub fast float %5694, %165
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5695, float %5631, float %5632, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = call float @dx.op.unary.f32(i32 25, float %5696)  ; Rsqrt(value)
  %5698 = fmul fast float %5697, %5631
  %5699 = fmul fast float %5697, %5632
  %5700 = fmul fast float %5697, %5695
  %5701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4290)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = fdiv fast float 1.000000e+00, %5702
  %5704 = fmul fast float %5703, %5701
  %5705 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5688, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = fcmp fast ogt float %5705, 0.000000e+00
  %5707 = fcmp fast olt float %5705, 0.000000e+00
  %5708 = zext i1 %5706 to i32
  %5709 = zext i1 %5707 to i32
  %5710 = sub nsw i32 %5708, %5709
  %5711 = sitofp i32 %5710 to float
  %5712 = fsub fast float %5694, %4282
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5712, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = fcmp fast ogt float %5713, 0.000000e+00
  %5715 = fcmp fast olt float %5713, 0.000000e+00
  %5716 = zext i1 %5714 to i32
  %5717 = zext i1 %5715 to i32
  %5718 = sub nsw i32 %5716, %5717
  %5719 = sitofp i32 %5718 to float
  %5720 = fcmp fast une float %5711, %5719
  br i1 %5720, label %5721, label %5731

; <label>:5721                                    ; preds = %5682
  %5722 = fmul fast float %5704, %5700
  %5723 = fmul fast float %5704, %5699
  %5724 = fmul fast float %5704, %5698
  %5725 = fmul fast float %5724, %5724
  %5726 = fmul fast float %5723, %5723
  %5727 = fadd fast float %5725, %5726
  %5728 = fmul fast float %5722, %5722
  %5729 = fadd fast float %5727, %5728
  %5730 = call float @dx.op.unary.f32(i32 24, float %5729)  ; Sqrt(value)
  br label %5743

; <label>:5731                                    ; preds = %5682
  %5732 = icmp slt i32 %5710, 0
  br i1 %5732, label %5733, label %5743

; <label>:5733                                    ; preds = %5731
  %5734 = fsub fast float %163, %5620
  %5735 = fsub fast float %164, %5621
  %5736 = fsub fast float %165, %5694
  %5737 = fmul fast float %5734, %5734
  %5738 = fmul fast float %5735, %5735
  %5739 = fadd fast float %5737, %5738
  %5740 = fmul fast float %5736, %5736
  %5741 = fadd fast float %5739, %5740
  %5742 = call float @dx.op.unary.f32(i32 24, float %5741)  ; Sqrt(value)
  br label %5743

; <label>:5743                                    ; preds = %5733, %5731, %5721
  %5744 = phi float [ %5730, %5721 ], [ %5742, %5733 ], [ 0.000000e+00, %5731 ]
  %5745 = and i1 %5689, %5687
  %5746 = fsub fast float -0.000000e+00, %5744
  %5747 = select i1 %5745, float -0.000000e+00, float %5746
  %5748 = fmul fast float %4283, 0x3FF7154760000000
  %5749 = fmul fast float %5748, %5747
  %5750 = fmul fast float %4284, 0x3FF7154760000000
  %5751 = fmul fast float %5750, %5747
  %5752 = fmul fast float %4285, 0x3FF7154760000000
  %5753 = fmul fast float %5752, %5747
  %5754 = call float @dx.op.unary.f32(i32 21, float %5749)  ; Exp(value)
  %5755 = call float @dx.op.unary.f32(i32 21, float %5751)  ; Exp(value)
  %5756 = call float @dx.op.unary.f32(i32 21, float %5753)  ; Exp(value)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = fmul fast float %5683, %5757
  %5761 = fmul fast float %5684, %5758
  %5762 = fmul fast float %5685, %5759
  %5763 = fsub fast float %5637, %5074
  %5764 = fsub fast float %5638, %5073
  %5765 = fsub fast float %5639, %5072
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = call float @dx.op.unary.f32(i32 25, float %5766)  ; Rsqrt(value)
  %5768 = fmul fast float %5767, %5763
  %5769 = fmul fast float %5767, %5764
  %5770 = fmul fast float %5767, %5765
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5070, float %5069, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5774 = fmul fast float %5773, %5644
  %5775 = fmul fast float %5773, %5773
  %5776 = fmul fast float %5775, %5297
  %5777 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5778 = fmul fast float %5774, %5777
  %5779 = bitcast float %5634 to i32
  %5780 = ashr i32 %5779, 1
  %5781 = sub nsw i32 1597463007, %5780
  %5782 = bitcast i32 %5781 to float
  %5783 = fmul fast float %5782, %5631
  %5784 = fmul fast float %5782, %5632
  %5785 = fmul fast float %5782, %5633
  %5786 = fsub fast float %5783, %5074
  %5787 = fsub fast float %5784, %5073
  %5788 = fsub fast float %5785, %5072
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 25, float %5789)  ; Rsqrt(value)
  %5791 = fmul fast float %5786, %5790
  %5792 = fmul fast float %5787, %5790
  %5793 = fmul fast float %5788, %5790
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5791, float %5792, float %5793)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = fmul fast float %5794, %5794
  %5796 = call float @dx.op.unary.f32(i32 6, float %5771)  ; FAbs(value)
  %5797 = fsub fast float 1.000000e+00, %5084
  %5798 = call float @dx.op.binary.f32(i32 35, float %5797, float 0x3F847AE140000000)  ; FMax(a,b)
  %5799 = fmul fast float %5798, %5798
  %5800 = fmul fast float %5799, %5799
  %5801 = fsub fast float 1.000000e+00, %5800
  %5802 = fmul fast float %5088, %5088
  %5803 = fmul fast float %5802, %5801
  %5804 = fadd fast float %5803, %5800
  %5805 = bitcast float %5804 to i32
  %5806 = ashr i32 %5805, 1
  %5807 = add nsw i32 %5806, 532487669
  %5808 = bitcast i32 %5807 to float
  %5809 = fadd fast float %5808, %5088
  %5810 = fmul fast float %5800, %5795
  %5811 = fsub fast float 1.000000e+00, %5795
  %5812 = fadd fast float %5811, %5810
  %5813 = fmul fast float %5796, %5796
  %5814 = fmul fast float %5813, %5801
  %5815 = fadd fast float %5814, %5800
  %5816 = bitcast float %5815 to i32
  %5817 = ashr i32 %5816, 1
  %5818 = add nsw i32 %5817, 532487669
  %5819 = bitcast i32 %5818 to float
  %5820 = fadd fast float %5819, %5796
  %5821 = fmul fast float %5812, %5812
  %5822 = fmul fast float %5821, %5809
  %5823 = fmul fast float %5822, %5820
  %5824 = fdiv fast float 1.000000e+00, %5823
  %5825 = bitcast float %5800 to i32
  %5826 = sitofp i32 %5825 to float
  %5827 = fmul fast float %5826, 0x3FE7F73180000000
  %5828 = fadd fast float %5827, 0x41AFE27C40000000
  %5829 = fptosi float %5828 to i32
  %5830 = bitcast i32 %5829 to float
  %5831 = fmul fast float %5617, 0x3FD80E9D60000000
  %5832 = fmul fast float %5831, %5782
  %5833 = fadd fast float %5830, %5832
  %5834 = bitcast float %5833 to i32
  %5835 = sub nsw i32 2129859010, %5834
  %5836 = bitcast i32 %5835 to float
  %5837 = fmul fast float %5800, %5824
  %5838 = fmul fast float %5837, %5830
  %5839 = fmul fast float %5838, %5836
  %5840 = call float @dx.op.unary.f32(i32 6, float %5772)  ; FAbs(value)
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = bitcast float %5841 to i32
  %5843 = sitofp i32 %5842 to float
  %5844 = fmul fast float %5843, 5.000000e+00
  %5845 = fadd fast float %5844, 0xC1EFBF8940000000
  %5846 = fptosi float %5845 to i32
  %5847 = bitcast i32 %5846 to float
  %5848 = fsub fast float 1.000000e+00, %5075
  %5849 = fsub fast float 1.000000e+00, %5076
  %5850 = fsub fast float 1.000000e+00, %5086
  %5851 = fmul fast float %5847, %5848
  %5852 = fmul fast float %5847, %5849
  %5853 = fmul fast float %5847, %5850
  %5854 = fadd fast float %5851, %5075
  %5855 = fadd fast float %5852, %5076
  %5856 = fadd fast float %5853, %5086
  br i1 %5212, label %5857, label %5880

; <label>:5857                                    ; preds = %5743
  %5858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3880, float %5840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = fadd fast float %5859, -5.000000e-01
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fadd fast float %5861, -5.000000e-01
  %5865 = fmul fast float %5075, 4.000000e+00
  %5866 = fmul fast float %5865, %5848
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %5076, 4.000000e+00
  %5869 = fmul fast float %5868, %5849
  %5870 = fmul fast float %5869, %5863
  %5871 = fmul fast float %5086, 4.000000e+00
  %5872 = fmul fast float %5871, %5850
  %5873 = fmul fast float %5872, %5864
  %5874 = fadd fast float %5867, %5854
  %5875 = fadd fast float %5870, %5855
  %5876 = fadd fast float %5873, %5856
  %5877 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  br label %5880

; <label>:5880                                    ; preds = %5857, %5743
  %5881 = phi float [ %5877, %5857 ], [ %5854, %5743 ]
  %5882 = phi float [ %5878, %5857 ], [ %5855, %5743 ]
  %5883 = phi float [ %5879, %5857 ], [ %5856, %5743 ]
  %5884 = fmul fast float %5771, 9.843750e-01
  %5885 = fadd fast float %5884, 7.812500e-03
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5885, float %5202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 3
  %5889 = fmul fast float %5887, %5075
  %5890 = fmul fast float %5887, %5076
  %5891 = fmul fast float %5887, %5086
  %5892 = fadd fast float %5889, %5888
  %5893 = fadd fast float %5890, %5888
  %5894 = fadd fast float %5891, %5888
  br i1 %5212, label %5895, label %5918

; <label>:5895                                    ; preds = %5880
  %5896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3880, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = fadd fast float %5897, -5.000000e-01
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fmul fast float %5075, 4.000000e+00
  %5904 = fmul fast float %5903, %5848
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %5076, 4.000000e+00
  %5907 = fmul fast float %5906, %5849
  %5908 = fmul fast float %5907, %5901
  %5909 = fmul fast float %5086, 4.000000e+00
  %5910 = fmul fast float %5909, %5850
  %5911 = fmul fast float %5910, %5902
  %5912 = fadd fast float %5905, %5892
  %5913 = fadd fast float %5908, %5893
  %5914 = fadd fast float %5911, %5894
  %5915 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  br label %5918

; <label>:5918                                    ; preds = %5895, %5880
  %5919 = phi float [ %5915, %5895 ], [ %5892, %5880 ]
  %5920 = phi float [ %5916, %5895 ], [ %5893, %5880 ]
  %5921 = phi float [ %5917, %5895 ], [ %5894, %5880 ]
  %5922 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5919, float %5922)  ; FMax(a,b)
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = fmul fast float %5881, %5839
  %5926 = fmul fast float %5882, %5839
  %5927 = fmul fast float %5883, %5839
  %5928 = fsub fast float 1.000000e+00, %5772
  %5929 = bitcast float %5928 to i32
  %5930 = sitofp i32 %5929 to float
  %5931 = fmul fast float %5930, 5.000000e+00
  %5932 = fadd fast float %5931, 0xC1EFBF8940000000
  %5933 = fptosi float %5932 to i32
  %5934 = bitcast i32 %5933 to float
  %5935 = fmul fast float %5934, %3881
  %5936 = fmul fast float %5924, %5935
  %5937 = fmul fast float %5936, %5262
  %5938 = fmul fast float %5936, %5263
  %5939 = fmul fast float %5936, %5264
  %5940 = fadd fast float %5937, %5925
  %5941 = fadd fast float %5938, %5926
  %5942 = fadd fast float %5939, %5927
  %5943 = fmul fast float %5760, %3877
  %5944 = fmul fast float %5943, %5778
  %5945 = fmul fast float %5944, %5924
  %5946 = fmul fast float %5761, %3877
  %5947 = fmul fast float %5946, %5778
  %5948 = fmul fast float %5947, %5924
  %5949 = fmul fast float %5762, %3877
  %5950 = fmul fast float %5949, %5778
  %5951 = fmul fast float %5950, %5924
  %5952 = fadd fast float %5945, %5599
  %5953 = fadd fast float %5948, %5600
  %5954 = fadd fast float %5951, %5601
  %5955 = fmul fast float %5944, %5940
  %5956 = fmul fast float %5947, %5941
  %5957 = fmul fast float %5950, %5942
  %5958 = fadd fast float %5955, %5596
  %5959 = fadd fast float %5956, %5597
  %5960 = fadd fast float %5957, %5598
  br label %5674

; <label>:5961                                    ; preds = %5674
  br label %5962

; <label>:5962                                    ; preds = %5961, %5562
  %5963 = phi float [ %5564, %5562 ], [ %5675, %5961 ]
  %5964 = phi float [ %5565, %5562 ], [ %5676, %5961 ]
  %5965 = phi float [ %5566, %5562 ], [ %5677, %5961 ]
  %5966 = phi float [ %5567, %5562 ], [ %5678, %5961 ]
  %5967 = phi float [ %5568, %5562 ], [ %5679, %5961 ]
  %5968 = phi float [ %5569, %5562 ], [ %5680, %5961 ]
  %5969 = add i32 %5563, 1
  %5970 = icmp ugt i32 %5969, %5559
  br i1 %5970, label %5971, label %5562

; <label>:5971                                    ; preds = %5962
  br label %5972

; <label>:5972                                    ; preds = %5971, %5538, %5528
  %5973 = phi float [ %5529, %5528 ], [ %5529, %5538 ], [ %5963, %5971 ]
  %5974 = phi float [ %5530, %5528 ], [ %5530, %5538 ], [ %5964, %5971 ]
  %5975 = phi float [ %5531, %5528 ], [ %5531, %5538 ], [ %5965, %5971 ]
  %5976 = phi float [ %5532, %5528 ], [ %5532, %5538 ], [ %5966, %5971 ]
  %5977 = phi float [ %5533, %5528 ], [ %5533, %5538 ], [ %5967, %5971 ]
  %5978 = phi float [ %5534, %5528 ], [ %5534, %5538 ], [ %5968, %5971 ]
  %5979 = call float @dx.op.unary.f32(i32 24, float %5078)  ; Sqrt(value)
  %5980 = call float @dx.op.unary.f32(i32 24, float %5079)  ; Sqrt(value)
  %5981 = call float @dx.op.unary.f32(i32 24, float %5080)  ; Sqrt(value)
  %5982 = fmul fast float %5979, %5976
  %5983 = fmul fast float %5980, %5977
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  br i1 %202, label %5986, label %6006

; <label>:5986                                    ; preds = %5972
  %5987 = fadd fast float %5978, %3883
  %5988 = fmul fast float %5987, %3884
  %5989 = fsub fast float 1.000000e+00, %3884
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %5993 = fmul fast float %5992, %5990
  %5994 = fadd fast float %5993, %5988
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = fmul fast float %5996, %5268
  %5998 = fsub fast float %5994, %5997
  %5999 = fadd fast float %5983, %5982
  %6000 = fmul fast float %5985, %5999
  %6001 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %6002 = fsub fast float %5998, %6001
  %6003 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %6004 = fmul fast float %6002, %6003
  %6005 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  br label %6022

; <label>:6006                                    ; preds = %5972
  %6007 = fmul fast float %5981, %5978
  %6008 = fmul fast float %5985, %5982
  %6009 = fmul fast float %5985, %5983
  %6010 = fmul fast float %6007, %5985
  %6011 = add i32 %32, 356
  %6012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.i32 %6012, 0
  %6014 = and i32 %6013, 32
  %6015 = icmp eq i32 %6014, 0
  br i1 %6015, label %6022, label %6016

; <label>:6016                                    ; preds = %6006
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = fmul fast float %6018, 0x3FE99999A0000000
  %6020 = fadd fast float %6018, %6008
  %6021 = fadd fast float %6019, %6010
  br label %6022

; <label>:6022                                    ; preds = %6016, %6006, %5986
  %6023 = phi float [ %6000, %5986 ], [ %6020, %6016 ], [ %6008, %6006 ]
  %6024 = phi float [ %6005, %5986 ], [ %6009, %6016 ], [ %6009, %6006 ]
  %6025 = phi float [ 1.000000e+00, %5986 ], [ %6021, %6016 ], [ %6010, %6006 ]
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = fmul fast float %6027, %5974
  %6029 = fmul fast float %6027, %5975
  %6030 = fadd fast float %5974, %5973
  %6031 = select i1 %202, float %6030, float %5973
  %6032 = fmul float %6031, %6027
  %6033 = select i1 %202, float 0.000000e+00, float %6028
  %6034 = select i1 %202, float 0.000000e+00, float %6029
  %6035 = fmul fast float %6023, %5979
  %6036 = fmul fast float %6024, %5980
  %6037 = fmul fast float %6025, %5981
  %6038 = fadd fast float %6032, %6035
  %6039 = fadd fast float %6033, %6036
  %6040 = fadd fast float %6034, %6037
  %6041 = select i1 %202, float %6024, float %6039
  %6042 = select i1 %202, float %6025, float %6040
  %6043 = call float @dx.op.binary.f32(i32 36, float %6038, float 3.225500e+04)  ; FMin(a,b)
  %6044 = call float @dx.op.binary.f32(i32 36, float %6041, float 3.225500e+04)  ; FMin(a,b)
  %6045 = call float @dx.op.binary.f32(i32 36, float %6042, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6043)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6044)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6045)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

