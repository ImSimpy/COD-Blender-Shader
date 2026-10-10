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
; shader hash: 921f60797f79fa208df8060e812f2c02
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
  %396 = add i32 %32, 492
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
  %577 = add i32 %32, 460
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
  %907 = add i32 %32, 476
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
  %1066 = add i32 %32, 444
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
  %1118 = add i32 %32, 428
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
  %1144 = add i32 %32, 380
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
  %1167 = add i32 %32, 464
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
  %1365 = add i32 %32, 396
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
  %1449 = add i32 %32, 412
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
  %1497 = add i32 %32, 480
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
  %1845 = add i32 %32, 448
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
  %1897 = add i32 %32, 432
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
  %1923 = add i32 %32, 384
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
  %1946 = add i32 %32, 468
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
  %2144 = add i32 %32, 400
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
  %2228 = add i32 %32, 416
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
  %2276 = add i32 %32, 484
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
  %2624 = add i32 %32, 452
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
  %2676 = add i32 %32, 436
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
  %2702 = add i32 %32, 388
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
  %2725 = add i32 %32, 472
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
  %2923 = add i32 %32, 404
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
  %3007 = add i32 %32, 420
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
  %3055 = add i32 %32, 488
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
  %3289 = add i32 %32, 360
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = extractvalue %dx.types.ResRet.i32 %3290, 1
  %3293 = bitcast i32 %3291 to float
  %3294 = bitcast i32 %3292 to float
  %3295 = fcmp fast oge float %3293, 0.000000e+00
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = select i1 %3295, float %3293, float %3297
  %3299 = add i32 %32, 456
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = add i32 %3301, 0
  %3303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3303, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = fmul fast float %3305, %3294
  %3307 = fadd fast float %3306, %3298
  %3308 = call float @dx.op.dot2.f32(i32 54, float %3276, float %3277, float %3276, float %3277)  ; Dot2(ax,ay,bx,by)
  %3309 = fmul fast float %3308, 0x3FE3333340000000
  %3310 = fsub fast float 1.000000e+00, %3309
  %3311 = call float @dx.op.dot3.f32(i32 55, float %3276, float %3277, float %3310, float %3276, float %3277, float %3310)  ; Dot3(ax,ay,az,bx,by,bz)
  %3312 = call float @dx.op.unary.f32(i32 25, float %3311)  ; Rsqrt(value)
  %3313 = fmul fast float %3312, %3276
  %3314 = fmul fast float %3312, %3277
  %3315 = fmul fast float %3310, %3312
  %3316 = fmul fast float %3315, %83
  %3317 = fmul fast float %3315, %84
  %3318 = fmul fast float %3315, %85
  %3319 = fmul fast float %3313, %57
  %3320 = fmul fast float %3313, %58
  %3321 = fmul fast float %3313, %59
  %3322 = fadd fast float %3316, %3319
  %3323 = fadd fast float %3317, %3320
  %3324 = fadd fast float %3318, %3321
  %3325 = fmul fast float %95, %3314
  %3326 = fmul fast float %96, %3314
  %3327 = fmul fast float %97, %3314
  %3328 = fadd fast float %3322, %3325
  %3329 = fadd fast float %3323, %3326
  %3330 = fadd fast float %3324, %3327
  %3331 = call float @dx.op.dot3.f32(i32 55, float %3328, float %3329, float %3330, float %3328, float %3329, float %3330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = call float @dx.op.unary.f32(i32 25, float %3331)  ; Rsqrt(value)
  %3333 = fmul fast float %3328, %3332
  %3334 = fmul fast float %3329, %3332
  %3335 = fmul fast float %3330, %3332
  %3336 = icmp eq i32 %33, 65535
  br i1 %3336, label %3851, label %3337

; <label>:3337                                    ; preds = %3275
  %3338 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3339 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3340 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3341 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3342 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3343 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3344 = fadd fast float %3338, %34
  %3345 = fadd fast float %3339, %35
  %3346 = fadd fast float %3340, %36
  %3347 = fadd fast float %3341, %34
  %3348 = fadd fast float %3342, %35
  %3349 = fadd fast float %3343, %36
  %3350 = mul i32 %33, 48
  %3351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = add i32 %3350, 16
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = add i32 %3350, 32
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3366 = bitcast float %3365 to i32
  %3367 = fmul fast float %3352, %34
  %3368 = fmul fast float %3353, %35
  %3369 = fmul fast float %3354, %36
  %3370 = fsub fast float %3367, %3357
  %3371 = fsub fast float %3368, %3358
  %3372 = fsub fast float %3369, %3359
  %3373 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3374 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3375 = call float @dx.op.unary.f32(i32 7, float %3372)  ; Saturate(value)
  %3376 = fmul fast float %3373, %3362
  %3377 = fmul fast float %3374, %3363
  %3378 = fmul fast float %3375, %3364
  %3379 = fadd fast float %3362, -1.000000e+00
  %3380 = fadd fast float %3363, -1.000000e+00
  %3381 = fadd fast float %3364, -1.000000e+00
  %3382 = call float @dx.op.unary.f32(i32 27, float %3376)  ; Round_ni(value)
  %3383 = call float @dx.op.unary.f32(i32 27, float %3377)  ; Round_ni(value)
  %3384 = call float @dx.op.unary.f32(i32 27, float %3378)  ; Round_ni(value)
  %3385 = call float @dx.op.binary.f32(i32 36, float %3382, float %3379)  ; FMin(a,b)
  %3386 = call float @dx.op.binary.f32(i32 36, float %3383, float %3380)  ; FMin(a,b)
  %3387 = call float @dx.op.binary.f32(i32 36, float %3384, float %3381)  ; FMin(a,b)
  %3388 = fmul fast float %3387, %3363
  %3389 = fadd fast float %3388, %3386
  %3390 = fmul fast float %3389, %3362
  %3391 = fadd fast float %3390, %3385
  %3392 = fptosi float %3391 to i32
  %3393 = add nsw i32 %3392, %3366
  %3394 = shl nsw i32 %3393, 2
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = lshr i32 %3396, 16
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3820, label %3399

; <label>:3399                                    ; preds = %3337
  br label %3400

; <label>:3400                                    ; preds = %3521, %3399
  %3401 = phi i32 [ %3423, %3521 ], [ %3397, %3399 ]
  %3402 = phi float [ %3522, %3521 ], [ 0.000000e+00, %3399 ]
  %3403 = phi float [ %3523, %3521 ], [ %3307, %3399 ]
  %3404 = phi float [ %3524, %3521 ], [ %3288, %3399 ]
  %3405 = phi float [ %3525, %3521 ], [ %3287, %3399 ]
  %3406 = phi float [ %3526, %3521 ], [ 0.000000e+00, %3399 ]
  %3407 = phi float [ %3527, %3521 ], [ %3281, %3399 ]
  %3408 = phi float [ %3528, %3521 ], [ %3282, %3399 ]
  %3409 = phi float [ %3529, %3521 ], [ %3283, %3399 ]
  %3410 = phi float [ %3530, %3521 ], [ %3333, %3399 ]
  %3411 = phi float [ %3531, %3521 ], [ %3334, %3399 ]
  %3412 = phi float [ %3532, %3521 ], [ %3335, %3399 ]
  %3413 = phi float [ %3533, %3521 ], [ %3286, %3399 ]
  %3414 = phi float [ %3534, %3521 ], [ %3285, %3399 ]
  %3415 = phi float [ %3535, %3521 ], [ 0.000000e+00, %3399 ]
  %3416 = phi float [ %3536, %3521 ], [ %3284, %3399 ]
  %3417 = phi float [ %3537, %3521 ], [ %3278, %3399 ]
  %3418 = phi float [ %3538, %3521 ], [ %3279, %3399 ]
  %3419 = phi float [ %3539, %3521 ], [ %3280, %3399 ]
  %3420 = shl nuw nsw i32 %3401, 2
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = lshr i32 %3422, 16
  %3424 = shl i32 %3422, 8
  %3425 = and i32 %3424, 16776960
  %3426 = or i32 %3425, 48
  %3427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = extractvalue %dx.types.ResRet.f32 %3427, 2
  %3431 = or i32 %3425, 64
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.i32 %3432, 1
  %3435 = or i32 %3425, 80
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 2
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 3
  %3439 = or i32 %3425, 96
  %3440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.f32 %3440, 0
  %3442 = extractvalue %dx.types.ResRet.f32 %3440, 1
  %3443 = extractvalue %dx.types.ResRet.f32 %3440, 2
  %3444 = extractvalue %dx.types.ResRet.f32 %3440, 3
  %3445 = or i32 %3425, 112
  %3446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3448 = or i32 %3425, 128
  %3449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.f32 %3449, 1
  %3452 = extractvalue %dx.types.ResRet.f32 %3449, 2
  %3453 = extractvalue %dx.types.ResRet.f32 %3449, 3
  %3454 = or i32 %3425, 144
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3460 = or i32 %3425, 160
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = or i32 %3425, 192
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = or i32 %3425, 208
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = or i32 %3425, 248
  %3473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = or i32 %3425, 16
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = call float @dx.op.dot4.f32(i32 56, float %3484, float %3485, float %3486, float %3487, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3489 = or i32 %3425, 32
  %3490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3493 = extractvalue %dx.types.ResRet.f32 %3490, 2
  %3494 = extractvalue %dx.types.ResRet.f32 %3490, 3
  %3495 = call float @dx.op.dot4.f32(i32 56, float %3491, float %3492, float %3493, float %3494, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3496 = call float @dx.op.unary.f32(i32 27, float %3481)  ; Round_ni(value)
  %3497 = call float @dx.op.unary.f32(i32 6, float %3496)  ; FAbs(value)
  %3498 = call float @dx.op.unary.f32(i32 27, float %3488)  ; Round_ni(value)
  %3499 = call float @dx.op.unary.f32(i32 6, float %3498)  ; FAbs(value)
  %3500 = call float @dx.op.unary.f32(i32 6, float %3495)  ; FAbs(value)
  %3501 = call float @dx.op.unary.f32(i32 27, float %3500)  ; Round_ni(value)
  %3502 = fadd fast float %3499, %3497
  %3503 = fadd fast float %3502, %3501
  %3504 = fcmp fast oeq float %3503, 0.000000e+00
  %3505 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3344, float %3345, float %3346, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3506 = call float @dx.op.dot4.f32(i32 56, float %3484, float %3485, float %3486, float %3487, float %3344, float %3345, float %3346, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3507 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3347, float %3348, float %3349, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3508 = call float @dx.op.dot4.f32(i32 56, float %3484, float %3485, float %3486, float %3487, float %3347, float %3348, float %3349, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3509 = fsub fast float %3505, %3481
  %3510 = fsub fast float %3507, %3481
  %3511 = fsub fast float %3506, %3488
  %3512 = fsub fast float %3508, %3488
  %3513 = call float @dx.op.dot3.f32(i32 55, float %3428, float %3429, float %3430, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3516 = fadd fast float %3515, %3513
  %3517 = call float @dx.op.unary.f32(i32 7, float %3516)  ; Saturate(value)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3519 = fcmp fast ogt float %3517, %3518
  %3520 = and i1 %3504, %3519
  br i1 %3520, label %3541, label %3521

; <label>:3521                                    ; preds = %3806, %3624, %3541, %3400
  %3522 = phi float [ %3402, %3541 ], [ %3627, %3624 ], [ %3627, %3806 ], [ %3402, %3400 ]
  %3523 = phi float [ %3403, %3541 ], [ %3403, %3624 ], [ %3781, %3806 ], [ %3403, %3400 ]
  %3524 = phi float [ %3404, %3541 ], [ %3404, %3624 ], [ %3779, %3806 ], [ %3404, %3400 ]
  %3525 = phi float [ %3405, %3541 ], [ %3405, %3624 ], [ %3751, %3806 ], [ %3405, %3400 ]
  %3526 = phi float [ %3406, %3541 ], [ %3406, %3624 ], [ %3749, %3806 ], [ %3406, %3400 ]
  %3527 = phi float [ %3407, %3541 ], [ %3407, %3624 ], [ %3816, %3806 ], [ %3407, %3400 ]
  %3528 = phi float [ %3408, %3541 ], [ %3408, %3624 ], [ %3817, %3806 ], [ %3408, %3400 ]
  %3529 = phi float [ %3409, %3541 ], [ %3409, %3624 ], [ %3818, %3806 ], [ %3409, %3400 ]
  %3530 = phi float [ %3410, %3541 ], [ %3410, %3624 ], [ %3730, %3806 ], [ %3410, %3400 ]
  %3531 = phi float [ %3411, %3541 ], [ %3411, %3624 ], [ %3731, %3806 ], [ %3411, %3400 ]
  %3532 = phi float [ %3412, %3541 ], [ %3412, %3624 ], [ %3732, %3806 ], [ %3412, %3400 ]
  %3533 = phi float [ %3413, %3541 ], [ %3413, %3624 ], [ %3759, %3806 ], [ %3413, %3400 ]
  %3534 = phi float [ %3414, %3541 ], [ %3414, %3624 ], [ %3756, %3806 ], [ %3414, %3400 ]
  %3535 = phi float [ %3415, %3541 ], [ %3415, %3624 ], [ %3753, %3806 ], [ %3415, %3400 ]
  %3536 = phi float [ %3416, %3541 ], [ %3416, %3624 ], [ %3747, %3806 ], [ %3416, %3400 ]
  %3537 = phi float [ %3417, %3541 ], [ %3417, %3624 ], [ %3742, %3806 ], [ %3417, %3400 ]
  %3538 = phi float [ %3418, %3541 ], [ %3418, %3624 ], [ %3743, %3806 ], [ %3418, %3400 ]
  %3539 = phi float [ %3419, %3541 ], [ %3419, %3624 ], [ %3744, %3806 ], [ %3419, %3400 ]
  %3540 = icmp eq i32 %3423, 0
  br i1 %3540, label %3819, label %3400

; <label>:3541                                    ; preds = %3400
  %3542 = extractvalue %dx.types.ResRet.f32 %3427, 3
  %3543 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3544 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3548 = extractvalue %dx.types.ResRet.i32 %3432, 3
  %3549 = extractvalue %dx.types.ResRet.i32 %3432, 2
  %3550 = bitcast float %3542 to i32
  %3551 = add i32 %3548, 0
  %3552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3551, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3554 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3552, %dx.types.Handle %3553, float %3481, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float %3509, float %3511, float undef, float %3510, float %3512, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = fmul fast float %3555, %3547
  %3557 = fadd fast float %3556, %3546
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fmul fast float %3481, %3441
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3442, float %3488, float %3559)  ; FMad(a,b,c)
  %3561 = fadd fast float %3560, %3545
  %3562 = fmul fast float %3481, %3443
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3488, float %3562)  ; FMad(a,b,c)
  %3564 = fadd fast float %3563, %3544
  %3565 = fmul fast float %3509, %3441
  %3566 = call float @dx.op.tertiary.f32(i32 46, float %3442, float %3511, float %3565)  ; FMad(a,b,c)
  %3567 = fmul fast float %3509, %3443
  %3568 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3511, float %3567)  ; FMad(a,b,c)
  %3569 = fmul fast float %3510, %3441
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3442, float %3512, float %3569)  ; FMad(a,b,c)
  %3571 = fmul fast float %3510, %3443
  %3572 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3512, float %3571)  ; FMad(a,b,c)
  %3573 = add i32 %3549, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3573, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3574, %dx.types.Handle %3553, float %3561, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3566, float %3568, float undef, float %3570, float %3572, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = and i32 %3550, 1024
  %3578 = icmp ne i32 %3577, 0
  %3579 = fcmp fast ogt float %3576, 0x3FE0101020000000
  %3580 = uitofp i1 %3579 to float
  %3581 = select i1 %3578, float %3580, float %3576
  %3582 = and i32 %3550, 8192
  %3583 = icmp ne i32 %3582, 0
  %3584 = select i1 %3583, float %3543, float 1.000000e+00
  %3585 = fmul fast float %3481, 2.000000e+00
  %3586 = fadd fast float %3585, -1.000000e+00
  %3587 = call float @dx.op.unary.f32(i32 6, float %3586)  ; FAbs(value)
  %3588 = fmul fast float %3587, %3474
  %3589 = fsub fast float %3588, %3474
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fmul fast float %3488, 2.000000e+00
  %3592 = fadd fast float %3591, -1.000000e+00
  %3593 = call float @dx.op.unary.f32(i32 6, float %3592)  ; FAbs(value)
  %3594 = fmul fast float %3593, %3475
  %3595 = fsub fast float %3594, %3475
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fmul fast float %3500, %3437
  %3598 = fsub fast float %3597, %3437
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3600 = fmul fast float %3558, %3584
  %3601 = fmul fast float %3600, %3555
  %3602 = fmul fast float %3601, %3590
  %3603 = fmul fast float %3602, %3581
  %3604 = fmul fast float %3603, %3596
  %3605 = fmul fast float %3604, %3599
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3609 = fsub fast float %3517, %3608
  %3610 = fmul fast float %3609, %3607
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3612 = fmul fast float %3605, %3438
  %3613 = fadd fast float %3605, %3438
  %3614 = fmul fast float %3613, %3447
  %3615 = fsub fast float %3614, %3447
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3617 = and i32 %3550, 128
  %3618 = icmp ne i32 %3617, 0
  %3619 = select i1 %3618, float %3616, float %3612
  %3620 = fmul fast float %3619, %3611
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = fcmp fast ugt float %3620, %3622
  br i1 %3623, label %3624, label %3521

; <label>:3624                                    ; preds = %3541
  %3625 = select i1 %3583, float %3620, float 0.000000e+00
  %3626 = fadd fast float %3625, %3402
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  br i1 %3583, label %3521, label %3628

; <label>:3628                                    ; preds = %3624
  %3629 = and i32 %3550, 4
  %3630 = and i32 %3550, 8
  %3631 = add i32 %3433, 0
  %3632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3631, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3634 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3632, %dx.types.Handle %3633, float %3561, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3566, float %3568, float undef, float %3570, float %3572, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = bitcast float %3459 to i32
  %3640 = and i32 %3639, 255
  %3641 = uitofp i32 %3640 to float
  %3642 = lshr i32 %3639, 8
  %3643 = and i32 %3642, 255
  %3644 = uitofp i32 %3643 to float
  %3645 = fmul fast float %3638, %3641
  %3646 = fadd fast float %3645, %3644
  %3647 = fmul fast float %3646, 0x3F70101000000000
  %3648 = add i32 %3434, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3648, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3649, %dx.types.Handle %3633, float %3561, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3566, float %3568, float undef, float %3570, float %3572, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = bitcast float %3453 to i32
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = lshr i32 %3655, 8
  %3659 = and i32 %3658, 255
  %3660 = uitofp i32 %3659 to float
  %3661 = lshr i32 %3655, 16
  %3662 = and i32 %3661, 255
  %3663 = uitofp i32 %3662 to float
  %3664 = fmul fast float %3663, 0x3F70101000000000
  %3665 = fmul fast float %3651, %3657
  %3666 = fadd fast float %3665, %3660
  %3667 = fmul fast float %3666, 0x3F70101000000000
  %3668 = fadd fast float %3652, -5.000000e-01
  %3669 = fadd fast float %3654, -5.000000e-01
  %3670 = fmul fast float %3668, %3664
  %3671 = fmul fast float %3669, %3664
  %3672 = fadd fast float %3670, 5.000000e-01
  %3673 = fadd fast float %3671, 5.000000e-01
  %3674 = fmul fast float %3635, %3462
  %3675 = fmul fast float %3636, %3463
  %3676 = fmul fast float %3637, %3464
  %3677 = fmul fast float %3672, 2.000000e+00
  %3678 = fadd fast float %3677, -1.000000e+00
  %3679 = fmul fast float %3673, 2.000000e+00
  %3680 = fadd fast float %3679, -1.000000e+00
  %3681 = fadd fast float %3678, %3680
  %3682 = fmul fast float %3681, 5.000000e-01
  %3683 = fsub fast float %3678, %3680
  %3684 = fmul fast float %3683, 5.000000e-01
  %3685 = call float @dx.op.unary.f32(i32 6, float %3682)  ; FAbs(value)
  %3686 = fsub fast float 1.000000e+00, %3685
  %3687 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3688 = fsub fast float %3686, %3687
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3682, float %3684, float %3688, float %3682, float %3684, float %3688)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call float @dx.op.unary.f32(i32 25, float %3689)  ; Rsqrt(value)
  %3691 = fmul fast float %3682, %3690
  %3692 = fmul fast float %3684, %3690
  %3693 = fmul fast float %3690, %3688
  %3694 = fmul fast float %3693, %3428
  %3695 = fmul fast float %3693, %3429
  %3696 = fmul fast float %3693, %3430
  %3697 = fmul fast float %3691, %3450
  %3698 = fmul fast float %3691, %3451
  %3699 = fmul fast float %3691, %3452
  %3700 = fadd fast float %3697, %3694
  %3701 = fadd fast float %3698, %3695
  %3702 = fadd fast float %3699, %3696
  %3703 = fmul fast float %3692, %3456
  %3704 = fmul fast float %3692, %3457
  %3705 = fmul fast float %3692, %3458
  %3706 = fadd fast float %3700, %3703
  %3707 = fadd fast float %3701, %3704
  %3708 = fadd fast float %3702, %3705
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3708, float %3706, float %3707, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 25, float %3709)  ; Rsqrt(value)
  %3711 = fmul fast float %3706, %3710
  %3712 = fmul fast float %3707, %3710
  %3713 = fmul fast float %3708, %3710
  %3714 = icmp ne i32 %3630, 0
  %3715 = select i1 %3714, float 1.000000e+00, float 0.000000e+00
  %3716 = fmul fast float %3620, %3715
  %3717 = and i32 %3550, 1
  %3718 = icmp eq i32 %3717, 0
  br i1 %3718, label %3719, label %3723

; <label>:3719                                    ; preds = %3628
  %3720 = fsub fast float %3711, %3410
  %3721 = fsub fast float %3712, %3411
  %3722 = fsub fast float %3713, %3412
  br label %3723

; <label>:3723                                    ; preds = %3719, %3628
  %3724 = phi float [ %3720, %3719 ], [ %3711, %3628 ]
  %3725 = phi float [ %3721, %3719 ], [ %3712, %3628 ]
  %3726 = phi float [ %3722, %3719 ], [ %3713, %3628 ]
  %3727 = fmul float %3726, %3716
  %3728 = fmul float %3725, %3716
  %3729 = fmul float %3724, %3716
  %3730 = fadd fast float %3729, %3410
  %3731 = fadd fast float %3728, %3411
  %3732 = fadd fast float %3727, %3412
  %3733 = icmp ne i32 %3629, 0
  %3734 = select i1 %3733, float 1.000000e+00, float 0.000000e+00
  %3735 = fmul fast float %3620, %3734
  %3736 = fsub fast float %3674, %3417
  %3737 = fsub fast float %3675, %3418
  %3738 = fsub fast float %3676, %3419
  %3739 = fmul fast float %3736, %3735
  %3740 = fmul fast float %3737, %3735
  %3741 = fmul fast float %3738, %3735
  %3742 = fadd fast float %3739, %3417
  %3743 = fadd fast float %3740, %3418
  %3744 = fadd fast float %3741, %3419
  %3745 = fsub fast float %3647, %3416
  %3746 = fmul fast float %3745, %3735
  %3747 = fadd fast float %3746, %3416
  %3748 = fmul fast float %3735, %3406
  %3749 = fsub fast float %3406, %3748
  %3750 = fmul fast float %3735, %3405
  %3751 = fsub fast float %3405, %3750
  %3752 = fadd fast float %3620, %3415
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fsub fast float %3667, %3414
  %3755 = fmul fast float %3754, %3716
  %3756 = fadd fast float %3755, %3414
  %3757 = fsub fast float %3653, %3413
  %3758 = fmul fast float %3757, %3716
  %3759 = fadd fast float %3758, %3413
  %3760 = call float @dx.op.dot3.f32(i32 55, float %3674, float %3675, float %3676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = fmul fast float %3763, %3760
  %3765 = fadd fast float %3764, %3762
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = bitcast float %3465 to i32
  %3768 = and i32 %3767, 65535
  %3769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3768)  ; LegacyF16ToF32(value)
  %3770 = lshr i32 %3767, 16
  %3771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3770)  ; LegacyF16ToF32(value)
  %3772 = fcmp fast oge float %3769, 0.000000e+00
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = select i1 %3772, float %3769, float %3774
  %3776 = fadd fast float %3775, %3771
  %3777 = fsub fast float %3766, %3404
  %3778 = fmul fast float %3777, %3620
  %3779 = fadd fast float %3778, %3404
  %3780 = fmul fast float %3776, %3620
  %3781 = call float @dx.op.binary.f32(i32 35, float %3403, float %3780)  ; FMax(a,b)
  %3782 = and i32 %3550, 16
  %3783 = icmp eq i32 %3782, 0
  br i1 %3783, label %3806, label %3784

; <label>:3784                                    ; preds = %3723
  %3785 = bitcast float %3471 to i32
  %3786 = add i32 %3468, 0
  %3787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3787, %dx.types.Handle %3633, float %3561, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3566, float %3568, float undef, float %3570, float %3572, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.ResRet.f32 %3788, 2
  %3792 = and i32 %3785, 65535
  %3793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3792)  ; LegacyF16ToF32(value)
  %3794 = fmul fast float %3789, %3462
  %3795 = fmul fast float %3790, %3463
  %3796 = fmul fast float %3791, %3464
  %3797 = and i32 %3550, 16384
  %3798 = icmp ne i32 %3797, 0
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = select i1 %3798, float %3800, float 1.000000e+00
  %3802 = fmul fast float %3801, %3793
  %3803 = fmul fast float %3794, %3802
  %3804 = fmul fast float %3795, %3802
  %3805 = fmul fast float %3796, %3802
  br label %3806

; <label>:3806                                    ; preds = %3784, %3723
  %3807 = phi float [ %3803, %3784 ], [ 0.000000e+00, %3723 ]
  %3808 = phi float [ %3804, %3784 ], [ 0.000000e+00, %3723 ]
  %3809 = phi float [ %3805, %3784 ], [ 0.000000e+00, %3723 ]
  %3810 = fsub fast float %3807, %3407
  %3811 = fsub fast float %3808, %3408
  %3812 = fsub fast float %3809, %3409
  %3813 = fmul fast float %3810, %3620
  %3814 = fmul fast float %3811, %3620
  %3815 = fmul fast float %3812, %3620
  %3816 = fadd fast float %3813, %3407
  %3817 = fadd fast float %3814, %3408
  %3818 = fadd fast float %3815, %3409
  br label %3521

; <label>:3819                                    ; preds = %3521
  br label %3820

; <label>:3820                                    ; preds = %3819, %3337
  %3821 = phi float [ 0.000000e+00, %3337 ], [ %3522, %3819 ]
  %3822 = phi float [ %3307, %3337 ], [ %3523, %3819 ]
  %3823 = phi float [ %3288, %3337 ], [ %3524, %3819 ]
  %3824 = phi float [ %3287, %3337 ], [ %3525, %3819 ]
  %3825 = phi float [ 0.000000e+00, %3337 ], [ %3526, %3819 ]
  %3826 = phi float [ %3281, %3337 ], [ %3527, %3819 ]
  %3827 = phi float [ %3282, %3337 ], [ %3528, %3819 ]
  %3828 = phi float [ %3283, %3337 ], [ %3529, %3819 ]
  %3829 = phi float [ %3333, %3337 ], [ %3530, %3819 ]
  %3830 = phi float [ %3334, %3337 ], [ %3531, %3819 ]
  %3831 = phi float [ %3335, %3337 ], [ %3532, %3819 ]
  %3832 = phi float [ %3286, %3337 ], [ %3533, %3819 ]
  %3833 = phi float [ %3285, %3337 ], [ %3534, %3819 ]
  %3834 = phi float [ 0.000000e+00, %3337 ], [ %3535, %3819 ]
  %3835 = phi float [ %3284, %3337 ], [ %3536, %3819 ]
  %3836 = phi float [ %3278, %3337 ], [ %3537, %3819 ]
  %3837 = phi float [ %3279, %3337 ], [ %3538, %3819 ]
  %3838 = phi float [ %3280, %3337 ], [ %3539, %3819 ]
  %3839 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3840 = call float @dx.op.unary.f32(i32 25, float %3839)  ; Rsqrt(value)
  %3841 = fmul fast float %3840, %3829
  %3842 = fmul fast float %3840, %3830
  %3843 = fmul fast float %3840, %3831
  %3844 = fadd fast float %3834, %947
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %3841, float %3842, float %3843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3847 = call float @dx.op.unary.f32(i32 25, float %3846)  ; Rsqrt(value)
  %3848 = fmul fast float %3847, %3841
  %3849 = fmul fast float %3847, %3842
  %3850 = fmul fast float %3847, %3843
  br label %3851

; <label>:3851                                    ; preds = %3820, %3275
  %3852 = phi float [ %3848, %3820 ], [ %3333, %3275 ]
  %3853 = phi float [ %3849, %3820 ], [ %3334, %3275 ]
  %3854 = phi float [ %3850, %3820 ], [ %3335, %3275 ]
  %3855 = phi float [ %3836, %3820 ], [ %3278, %3275 ]
  %3856 = phi float [ %3837, %3820 ], [ %3279, %3275 ]
  %3857 = phi float [ %3838, %3820 ], [ %3280, %3275 ]
  %3858 = phi float [ %3826, %3820 ], [ %3281, %3275 ]
  %3859 = phi float [ %3827, %3820 ], [ %3282, %3275 ]
  %3860 = phi float [ %3828, %3820 ], [ %3283, %3275 ]
  %3861 = phi float [ %3835, %3820 ], [ %3284, %3275 ]
  %3862 = phi float [ %3845, %3820 ], [ %947, %3275 ]
  %3863 = phi float [ %3833, %3820 ], [ %3285, %3275 ]
  %3864 = phi float [ %3832, %3820 ], [ %3286, %3275 ]
  %3865 = phi float [ %3825, %3820 ], [ 0.000000e+00, %3275 ]
  %3866 = phi float [ %3824, %3820 ], [ %3287, %3275 ]
  %3867 = phi float [ %3821, %3820 ], [ 0.000000e+00, %3275 ]
  %3868 = phi float [ %3822, %3820 ], [ %3307, %3275 ]
  %3869 = phi float [ %3823, %3820 ], [ %3288, %3275 ]
  %3870 = fadd fast float %3861, 0xBFB99999A0000000
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3871, 0x3FF1C71C80000000
  %3873 = call float @dx.op.binary.f32(i32 36, float %3861, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3874 = fsub fast float 1.000000e+00, %3872
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3875, %3855
  %3877 = fmul fast float %3875, %3856
  %3878 = fmul fast float %3875, %3857
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = fmul fast float %3872, %3855
  %3883 = fmul fast float %3872, %3856
  %3884 = fmul fast float %3872, %3857
  %3885 = fadd fast float %3882, %3873
  %3886 = fadd fast float %3883, %3873
  %3887 = fadd fast float %3884, %3873
  %3888 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3889 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3890 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.i32 %3892, 3
  %3894 = and i32 %3893, 8
  %3895 = icmp ne i32 %3894, 0
  %3896 = call float @dx.op.binary.f32(i32 35, float %3879, float %3855)  ; FMax(a,b)
  %3897 = call float @dx.op.binary.f32(i32 35, float %3880, float %3855)  ; FMax(a,b)
  %3898 = call float @dx.op.binary.f32(i32 35, float %3881, float %3855)  ; FMax(a,b)
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = select i1 %202, float %3855, float %3879
  %3901 = select i1 %202, float %3899, float %3880
  %3902 = select i1 %202, float 1.000000e+00, float %3881
  %3903 = select i1 %3895, float %3896, float %3900
  %3904 = select i1 %3895, float %3897, float %3901
  %3905 = select i1 %3895, float %3898, float %3902
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3910 = fadd fast float %3907, %163
  %3911 = fadd fast float %3908, %164
  %3912 = fadd fast float %3909, %165
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3916 = fsub fast float %3910, %3914
  %3917 = fsub fast float %3911, %3915
  %3918 = fmul fast float %3916, %3916
  %3919 = fmul fast float %3917, %3917
  %3920 = fadd fast float %3918, %3919
  %3921 = call float @dx.op.unary.f32(i32 24, float %3920)  ; Sqrt(value)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3913, 2
  %3923 = fcmp fast olt float %3921, %3922
  br i1 %3923, label %3924, label %3991

; <label>:3924                                    ; preds = %3851
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3925, 3
  %3935 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3936 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3937 = fadd fast float %3934, %3910
  %3938 = fadd fast float %3935, %3911
  %3939 = fadd fast float %3936, %3912
  %3940 = fmul fast float %3937, %3926
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %3928, float %3940)  ; FMad(a,b,c)
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3930, float %3941)  ; FMad(a,b,c)
  %3943 = fmul fast float %3937, %3931
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %3932, float %3943)  ; FMad(a,b,c)
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3933, float %3944)  ; FMad(a,b,c)
  %3946 = fsub fast float %3942, %3934
  %3947 = fsub fast float %3945, %3935
  %3948 = fsub fast float %3946, %3914
  %3949 = fadd fast float %3948, %3922
  %3950 = fsub fast float %3947, %3915
  %3951 = fadd fast float %3950, %3922
  %3952 = extractvalue %dx.types.CBufRet.f32 %3913, 3
  %3953 = fmul fast float %3949, %3952
  %3954 = fmul fast float %3951, %3952
  %3955 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3956 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3957 = fsub fast float 1.000000e+00, %3955
  %3958 = fsub fast float 1.000000e+00, %3956
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = fcmp fast ugt float %3960, 0.000000e+00
  br i1 %3961, label %3962, label %4265

; <label>:3962                                    ; preds = %3924
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3965 = fmul fast float %3964, %3960
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3967 = fadd fast float %3966, %3965
  %3968 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3969 = fadd fast float %3967, %3936
  %3970 = fmul fast float %3942, %3930
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3945, float %3933, float %3970)  ; FMad(a,b,c)
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3968, float %3971)  ; FMad(a,b,c)
  %3973 = fsub fast float %3972, %3936
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3976 = fsub fast float %3973, %3975
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %3957, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = fadd fast float %3982, %3978
  %3986 = fmul fast float %3985, 0x3F847AE140000000
  %3987 = fadd fast float %3983, %3979
  %3988 = fmul fast float %3987, 0x3F847AE140000000
  %3989 = fadd fast float %3984, %3980
  %3990 = fmul fast float %3989, 0x3F847AE140000000
  br label %4265

; <label>:3991                                    ; preds = %3851
  %3992 = and i32 %181, 1
  %3993 = icmp eq i32 %3992, 0
  br i1 %3993, label %4265, label %3994

; <label>:3994                                    ; preds = %3991
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4005 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4006 = extractvalue %dx.types.CBufRet.f32 %3999, 3
  %4007 = fadd fast float %4004, %3910
  %4008 = fadd fast float %4005, %3911
  %4009 = fadd fast float %4006, %3912
  %4010 = fmul fast float %4007, %3996
  %4011 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %3998, float %4010)  ; FMad(a,b,c)
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4000, float %4011)  ; FMad(a,b,c)
  %4013 = fmul fast float %4007, %4001
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %4002, float %4013)  ; FMad(a,b,c)
  %4015 = call float @dx.op.tertiary.f32(i32 46, float %4009, float %4003, float %4014)  ; FMad(a,b,c)
  %4016 = fsub fast float %4012, %4004
  %4017 = fsub fast float %4015, %4005
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.i32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.i32 %4025, 1
  %4028 = udiv i32 %4027, %4026
  %4029 = fsub fast float %4016, %4019
  %4030 = fsub fast float %4017, %4020
  %4031 = call float @dx.op.binary.f32(i32 35, float %4029, float 0.000000e+00)  ; FMax(a,b)
  %4032 = call float @dx.op.binary.f32(i32 35, float %4030, float 0.000000e+00)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 36, float %4031, float %4021)  ; FMin(a,b)
  %4034 = call float @dx.op.binary.f32(i32 36, float %4032, float %4022)  ; FMin(a,b)
  %4035 = add i32 %4026, -1
  %4036 = add i32 %4028, -1
  %4037 = fmul fast float %4033, %4024
  %4038 = fmul fast float %4034, %4024
  %4039 = fptoui float %4037 to i32
  %4040 = fptoui float %4038 to i32
  %4041 = call i32 @dx.op.binary.i32(i32 40, i32 %4039, i32 %4035)  ; UMin(a,b)
  %4042 = call i32 @dx.op.binary.i32(i32 40, i32 %4040, i32 %4036)  ; UMin(a,b)
  %4043 = mul i32 %4042, %4026
  %4044 = add i32 %4043, %4041
  %4045 = shl i32 %4044, 2
  %4046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.i32 %4046, 0
  %4048 = icmp eq i32 %4047, -1
  br i1 %4048, label %4265, label %4049

; <label>:4049                                    ; preds = %3994
  %4050 = mul i32 %4047, 148
  %4051 = add i32 %4050, 4
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = add i32 %4050, 8
  %4055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = add i32 %4050, 36
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = add i32 %4050, 60
  %4061 = add i32 %4050, 92
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = add i32 %4050, 116
  %4065 = fsub fast float %4016, %4053
  %4066 = fsub fast float %4017, %4056
  %4067 = fmul fast float %4024, %4065
  %4068 = fmul fast float %4024, %4066
  %4069 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4074 = call float @dx.op.unary.f32(i32 83, float %4069)  ; DerivCoarseX(value)
  %4075 = call float @dx.op.unary.f32(i32 83, float %4071)  ; DerivCoarseX(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %4069)  ; DerivCoarseY(value)
  %4077 = call float @dx.op.unary.f32(i32 84, float %4071)  ; DerivCoarseY(value)
  %4078 = fmul fast float %4074, %4073
  %4079 = fmul fast float %4075, %4073
  %4080 = fmul fast float %4076, %4073
  %4081 = fmul fast float %4077, %4073
  %4082 = call float @dx.op.dot2.f32(i32 54, float %4080, float %4081, float %4080, float %4081)  ; Dot2(ax,ay,bx,by)
  %4083 = call float @dx.op.dot2.f32(i32 54, float %4078, float %4079, float %4078, float %4079)  ; Dot2(ax,ay,bx,by)
  %4084 = call float @dx.op.binary.f32(i32 35, float %4083, float %4082)  ; FMax(a,b)
  %4085 = call float @dx.op.unary.f32(i32 23, float %4084)  ; Log(value)
  %4086 = fmul fast float %4085, 5.000000e-01
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4089 = fadd fast float %4088, %4086
  %4090 = call float @dx.op.binary.f32(i32 35, float %4089, float 0.000000e+00)  ; FMax(a,b)
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4093 = fadd fast float %4092, %4090
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4096 = fadd fast float %4093, %4095
  %4097 = add i32 %4063, 0
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4098, i32 0)  ; GetDimensions(handle,mipLevel)
  %4100 = extractvalue %dx.types.Dimensions %4099, 0
  %4101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4100)  ; FirstbitLo(value)
  %4102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.i32 %4102, 1
  %4104 = sub nsw i32 %4103, %4101
  %4105 = sitofp i32 %4104 to float
  %4106 = fsub fast float %4096, %4105
  %4107 = call float @dx.op.binary.f32(i32 35, float %4106, float 0.000000e+00)  ; FMax(a,b)
  %4108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4098, %dx.types.Handle %27, float %4069, float %4071, float %4059, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = fcmp ule float %4109, 0x3FE0101020000000
  %4111 = extractvalue %dx.types.CBufRet.i32 %4102, 0
  %4112 = and i32 %4111, 128
  %4113 = icmp ne i32 %4112, 0
  %4114 = and i1 %4110, %4113
  br i1 %4114, label %4265, label %4115

; <label>:4115                                    ; preds = %4049
  %4116 = add i32 %4050, 20
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = add i32 %4050, 24
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = add i32 %4050, 40
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = add i32 %4050, 96
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = fmul fast float %4129, %4069
  %4131 = fmul fast float %4129, %4071
  %4132 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4133 = fadd fast float %4130, %4132
  %4134 = fadd fast float %4131, %4132
  %4135 = add i32 %4127, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4136, i32 0)  ; GetDimensions(handle,mipLevel)
  %4138 = extractvalue %dx.types.Dimensions %4137, 0
  %4139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4138)  ; FirstbitLo(value)
  %4140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.i32 %4140, 1
  %4142 = sub nsw i32 %4141, %4139
  %4143 = sitofp i32 %4142 to float
  %4144 = fsub fast float %4093, %4143
  %4145 = call float @dx.op.binary.f32(i32 35, float %4144, float 0.000000e+00)  ; FMax(a,b)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4136, %dx.types.Handle %27, float %4133, float %4134, float %4124, float undef, i32 0, i32 0, i32 undef, float %4145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = fmul fast float %4147, %4118
  %4149 = fadd fast float %4148, %4121
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4158 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4159 = fadd fast float %4155, %4016
  %4160 = fadd fast float %4157, %4017
  %4161 = fadd fast float %4149, %4158
  %4162 = fmul fast float %4159, %4151
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4152, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4153, float %4163)  ; FMad(a,b,c)
  %4165 = fsub fast float %4164, %4158
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.i32 %4169, 0
  %4171 = call i32 @dx.op.binary.i32(i32 40, i32 %4047, i32 %4170)  ; UMin(a,b)
  %4172 = mul i32 %4171, 36
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = add i32 %4172, 4
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = fmul fast float %4177, %4069
  %4179 = fmul fast float %4177, %4071
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4181 = fadd fast float %4178, %4180
  %4182 = fadd fast float %4179, %4180
  %4183 = icmp eq i32 %4174, 0
  br i1 %4183, label %4252, label %4184

; <label>:4184                                    ; preds = %4115
  br label %4185

; <label>:4185                                    ; preds = %4242, %4184
  %4186 = phi float [ %4243, %4242 ], [ 0.000000e+00, %4184 ]
  %4187 = phi float [ %4244, %4242 ], [ 0.000000e+00, %4184 ]
  %4188 = phi float [ %4245, %4242 ], [ 0.000000e+00, %4184 ]
  %4189 = phi float [ %4246, %4242 ], [ 0.000000e+00, %4184 ]
  %4190 = phi float [ %4247, %4242 ], [ 0.000000e+00, %4184 ]
  %4191 = phi float [ %4248, %4242 ], [ 0.000000e+00, %4184 ]
  %4192 = phi i32 [ %4249, %4242 ], [ 0, %4184 ]
  %4193 = shl i32 %4192, 2
  %4194 = add i32 %4060, %4193
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = add i32 %4064, %4193
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = add i32 %4199, 0
  %4201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4200, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4201, i32 0)  ; GetDimensions(handle,mipLevel)
  %4203 = extractvalue %dx.types.Dimensions %4202, 0
  %4204 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4203)  ; FirstbitLo(value)
  %4205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.i32 %4205, 1
  %4207 = sub nsw i32 %4206, %4204
  %4208 = sitofp i32 %4207 to float
  %4209 = fsub fast float %4093, %4208
  %4210 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4201, %dx.types.Handle %27, float %4181, float %4182, float %4196, float undef, i32 0, i32 0, i32 undef, float %4210)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = fcmp fast ogt float %4212, 0.000000e+00
  br i1 %4213, label %4214, label %4242

; <label>:4214                                    ; preds = %4185
  %4215 = add i32 %4175, %4193
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = and i32 %4217, 32767
  %4219 = mul nuw nsw i32 %4218, 928
  %4220 = add nuw nsw i32 %4219, 48
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = add nuw nsw i32 %4219, 60
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = fmul fast float %4222, %4212
  %4231 = fmul fast float %4223, %4212
  %4232 = fmul fast float %4224, %4212
  %4233 = fadd fast float %4230, %4186
  %4234 = fadd fast float %4231, %4187
  %4235 = fadd fast float %4232, %4188
  %4236 = fmul fast float %4227, %4212
  %4237 = fmul fast float %4228, %4212
  %4238 = fmul fast float %4229, %4212
  %4239 = fadd fast float %4236, %4189
  %4240 = fadd fast float %4237, %4190
  %4241 = fadd fast float %4238, %4191
  br label %4242

; <label>:4242                                    ; preds = %4214, %4185
  %4243 = phi float [ %4233, %4214 ], [ %4186, %4185 ]
  %4244 = phi float [ %4234, %4214 ], [ %4187, %4185 ]
  %4245 = phi float [ %4235, %4214 ], [ %4188, %4185 ]
  %4246 = phi float [ %4239, %4214 ], [ %4189, %4185 ]
  %4247 = phi float [ %4240, %4214 ], [ %4190, %4185 ]
  %4248 = phi float [ %4241, %4214 ], [ %4191, %4185 ]
  %4249 = add nuw i32 %4192, 1
  %4250 = icmp eq i32 %4249, %4174
  br i1 %4250, label %4251, label %4185

; <label>:4251                                    ; preds = %4242
  br label %4252

; <label>:4252                                    ; preds = %4251, %4115
  %4253 = phi float [ 0.000000e+00, %4115 ], [ %4243, %4251 ]
  %4254 = phi float [ 0.000000e+00, %4115 ], [ %4244, %4251 ]
  %4255 = phi float [ 0.000000e+00, %4115 ], [ %4245, %4251 ]
  %4256 = phi float [ 0.000000e+00, %4115 ], [ %4246, %4251 ]
  %4257 = phi float [ 0.000000e+00, %4115 ], [ %4247, %4251 ]
  %4258 = phi float [ 0.000000e+00, %4115 ], [ %4248, %4251 ]
  %4259 = fadd fast float %4256, %4253
  %4260 = fmul fast float %4259, 0x3F847AE140000000
  %4261 = fadd fast float %4257, %4254
  %4262 = fmul fast float %4261, 0x3F847AE140000000
  %4263 = fadd fast float %4258, %4255
  %4264 = fmul fast float %4263, 0x3F847AE140000000
  br label %4265

; <label>:4265                                    ; preds = %4252, %4049, %3994, %3991, %3962, %3924
  %4266 = phi float [ %3976, %3962 ], [ -1.310720e+05, %3924 ], [ %4168, %4252 ], [ -1.310720e+05, %3994 ], [ -1.310720e+05, %4049 ], [ -1.310720e+05, %3991 ]
  %4267 = phi float [ %3986, %3962 ], [ 0.000000e+00, %3924 ], [ %4260, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4268 = phi float [ %3988, %3962 ], [ 0.000000e+00, %3924 ], [ %4262, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4269 = phi float [ %3990, %3962 ], [ 0.000000e+00, %3924 ], [ %4264, %4252 ], [ 0.000000e+00, %3994 ], [ 0.000000e+00, %4049 ], [ 0.000000e+00, %3991 ]
  %4270 = phi i1 [ true, %3962 ], [ false, %3924 ], [ true, %4252 ], [ false, %3994 ], [ false, %4049 ], [ false, %3991 ]
  %4271 = and i32 %181, 3
  %4272 = icmp eq i32 %4271, 1
  %4273 = select i1 %4272, float 1.000000e+00, float 0.000000e+00
  %4274 = fsub fast float %4266, %165
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = select i1 %4270, float %4275, float 1.000000e+00
  %4277 = fmul fast float %4276, %4273
  %4278 = icmp eq i32 %4271, 3
  %4279 = select i1 %4278, float 1.000000e+00, float %4277
  %4280 = call float @dx.op.binary.f32(i32 35, float %3867, float %4279)  ; FMax(a,b)
  %4281 = fcmp fast olt float %4279, 1.000000e+00
  %4282 = fcmp uge float %47, 0.000000e+00
  %4283 = and i1 %4282, %4281
  br i1 %4283, label %4284, label %4294

; <label>:4284                                    ; preds = %4265
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = fadd fast float %4286, %4280
  %4290 = fcmp ule float %46, 0.000000e+00
  %4291 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4292 = select i1 %4290, float %4291, float 1.000000e+00
  %4293 = fmul fast float %4292, %4288
  br label %4294

; <label>:4294                                    ; preds = %4284, %4265
  %4295 = phi float [ %4289, %4284 ], [ %4280, %4265 ]
  %4296 = phi float [ %4287, %4284 ], [ 0.000000e+00, %4265 ]
  %4297 = phi float [ %4293, %4284 ], [ 0.000000e+00, %4265 ]
  %4298 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4299 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = fcmp fast une float %4299, 0.000000e+00
  %4302 = fcmp fast une float %4300, 0.000000e+00
  %4303 = or i1 %4301, %4302
  br i1 %4303, label %4304, label %4863

; <label>:4304                                    ; preds = %4294
  br i1 %4301, label %4305, label %4578

; <label>:4305                                    ; preds = %4304
  %4306 = call float @dx.op.unary.f32(i32 23, float %3864)  ; Log(value)
  %4307 = fmul fast float %4306, 4.000000e+00
  %4308 = call float @dx.op.unary.f32(i32 21, float %4307)  ; Exp(value)
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = fmul fast float %4310, %34
  %4312 = fmul fast float %4310, %35
  %4313 = fmul fast float %4310, %36
  %4314 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4315 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4316 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4317 = call float @dx.op.unary.f32(i32 23, float %4314)  ; Log(value)
  %4318 = call float @dx.op.unary.f32(i32 23, float %4315)  ; Log(value)
  %4319 = call float @dx.op.unary.f32(i32 23, float %4316)  ; Log(value)
  %4320 = fmul fast float %4317, 4.000000e+00
  %4321 = fmul fast float %4318, 4.000000e+00
  %4322 = fmul fast float %4319, 4.000000e+00
  %4323 = call float @dx.op.unary.f32(i32 21, float %4320)  ; Exp(value)
  %4324 = call float @dx.op.unary.f32(i32 21, float %4321)  ; Exp(value)
  %4325 = call float @dx.op.unary.f32(i32 21, float %4322)  ; Exp(value)
  %4326 = fadd fast float %4324, %4323
  %4327 = fadd fast float %4326, %4325
  %4328 = fdiv fast float 1.000000e+00, %4327
  %4329 = fmul fast float %4328, %4323
  %4330 = fcmp fast ogt float %43, 0.000000e+00
  %4331 = fcmp fast ogt float %44, 0.000000e+00
  %4332 = fcmp fast ogt float %45, 0.000000e+00
  %4333 = fcmp fast olt float %43, 0.000000e+00
  %4334 = fcmp fast olt float %44, 0.000000e+00
  %4335 = fcmp fast olt float %45, 0.000000e+00
  %4336 = zext i1 %4330 to i32
  %4337 = zext i1 %4331 to i32
  %4338 = zext i1 %4332 to i32
  %4339 = zext i1 %4333 to i32
  %4340 = zext i1 %4334 to i32
  %4341 = zext i1 %4335 to i32
  %4342 = sub nsw i32 %4336, %4339
  %4343 = sub nsw i32 %4337, %4340
  %4344 = sub nsw i32 %4338, %4341
  %4345 = call float @dx.op.unary.f32(i32 83, float %4311)  ; DerivCoarseX(value)
  %4346 = call float @dx.op.unary.f32(i32 83, float %4312)  ; DerivCoarseX(value)
  %4347 = call float @dx.op.unary.f32(i32 83, float %4313)  ; DerivCoarseX(value)
  %4348 = call float @dx.op.unary.f32(i32 84, float %4311)  ; DerivCoarseY(value)
  %4349 = call float @dx.op.unary.f32(i32 84, float %4312)  ; DerivCoarseY(value)
  %4350 = call float @dx.op.unary.f32(i32 84, float %4313)  ; DerivCoarseY(value)
  %4351 = fcmp fast ole float %213, %4329
  %4352 = fmul fast float %4328, %4326
  %4353 = fcmp fast ole float %213, %4352
  %4354 = select i1 %4353, float %4313, float %4311
  %4355 = select i1 %4353, float %4311, float %4312
  %4356 = select i1 %4351, float %4312, float %4354
  %4357 = select i1 %4351, float %4313, float %4355
  %4358 = select i1 %4353, float %4347, float %4345
  %4359 = select i1 %4353, float %4345, float %4346
  %4360 = select i1 %4351, float %4346, float %4358
  %4361 = select i1 %4351, float %4347, float %4359
  %4362 = select i1 %4353, float %4350, float %4348
  %4363 = select i1 %4353, float %4348, float %4349
  %4364 = select i1 %4351, float %4349, float %4362
  %4365 = select i1 %4351, float %4350, float %4363
  %4366 = call float @dx.op.unary.f32(i32 27, float %4356)  ; Round_ni(value)
  %4367 = call float @dx.op.unary.f32(i32 27, float %4357)  ; Round_ni(value)
  %4368 = fptosi float %4366 to i32
  %4369 = fptosi float %4367 to i32
  %4370 = xor i32 %4369, %4368
  %4371 = sitofp i32 %4370 to float
  %4372 = fptosi float %4371 to i32
  %4373 = sitofp i32 %4372 to float
  %4374 = fmul fast float %4373, 0x3FE3C6EF40000000
  %4375 = frem fast float %4366, 2.560000e+02
  %4376 = frem fast float %4367, 2.560000e+02
  %4377 = fptoui float %4375 to i32
  %4378 = fptoui float %4376 to i32
  %4379 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4377, i32 %4378, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = fadd fast float %4380, %4374
  %4384 = fadd fast float %4381, %4374
  %4385 = fadd fast float %4382, %4374
  %4386 = call float @dx.op.unary.f32(i32 22, float %4383)  ; Frc(value)
  %4387 = call float @dx.op.unary.f32(i32 22, float %4384)  ; Frc(value)
  %4388 = call float @dx.op.unary.f32(i32 22, float %4385)  ; Frc(value)
  %4389 = fmul fast float %4388, 0x401921FB60000000
  %4390 = call float @dx.op.unary.f32(i32 13, float %4389)  ; Sin(value)
  %4391 = call float @dx.op.unary.f32(i32 12, float %4389)  ; Cos(value)
  %4392 = fsub fast float -0.000000e+00, %4391
  %4393 = fmul fast float %4391, %4356
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4357, float %4393)  ; FMad(a,b,c)
  %4395 = fmul fast float %4390, %4356
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4357, float %4395)  ; FMad(a,b,c)
  %4397 = fadd fast float %4394, %4386
  %4398 = fadd fast float %4396, %4387
  %4399 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4400 = bitcast float %4399 to i32
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4440, label %4402

; <label>:4402                                    ; preds = %4305
  %4403 = add i32 %4400, 0
  %4404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4404, %dx.types.Handle %73, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4410 = fsub fast float 1.000000e+00, %4299
  %4411 = call float @dx.op.binary.f32(i32 35, float %4410, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4412 = bitcast float %4299 to i32
  %4413 = sitofp i32 %4412 to float
  %4414 = fadd fast float %4413, 0xC1CFBF8940000000
  %4415 = fmul fast float %4409, %4414
  %4416 = fadd fast float %4415, 0x41CFBF8940000000
  %4417 = fptosi float %4416 to i32
  %4418 = bitcast i32 %4417 to float
  %4419 = bitcast float %4411 to i32
  %4420 = sitofp i32 %4419 to float
  %4421 = fadd fast float %4420, 0xC1CFBF8940000000
  %4422 = fmul fast float %4421, %4409
  %4423 = fadd fast float %4422, 0x41CFBF8940000000
  %4424 = fptosi float %4423 to i32
  %4425 = bitcast i32 %4424 to float
  %4426 = fmul fast float %4418, %4408
  %4427 = fmul fast float %4425, %4408
  %4428 = fsub fast float %4411, %4426
  %4429 = fadd fast float %4427, %4411
  %4430 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4432 = fsub fast float %4406, %4430
  %4433 = fsub fast float %4431, %4430
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4436, %4432
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fcmp fast olt float %4438, 0x3F70101020000000
  br i1 %4439, label %4578, label %4440

; <label>:4440                                    ; preds = %4402, %4305
  %4441 = phi float [ %4438, %4402 ], [ %4299, %4305 ]
  %4442 = fmul fast float %4441, %4308
  %4443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.i32 %4443, 1
  %4445 = extractvalue %dx.types.CBufRet.i32 %4443, 0
  %4446 = add i32 %4445, 0
  %4447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4447, %dx.types.Handle %72, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = extractvalue %dx.types.ResRet.f32 %4448, 3
  %4453 = and i32 %4444, 255
  %4454 = uitofp i32 %4453 to float
  %4455 = lshr i32 %4444, 8
  %4456 = and i32 %4455, 255
  %4457 = uitofp i32 %4456 to float
  %4458 = fmul fast float %4452, %4454
  %4459 = fadd fast float %4458, %4457
  %4460 = fmul fast float %4459, 0x3F70101000000000
  %4461 = fadd fast float %4460, 0xBFB99999A0000000
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, 0x3FF1C71C80000000
  %4464 = call float @dx.op.binary.f32(i32 36, float %4460, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4465 = fsub fast float 1.000000e+00, %4463
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4466, %4449
  %4468 = fmul fast float %4466, %4450
  %4469 = fmul fast float %4466, %4451
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = fmul fast float %4463, %4449
  %4474 = fmul fast float %4463, %4450
  %4475 = fmul fast float %4463, %4451
  %4476 = fadd fast float %4473, %4464
  %4477 = fadd fast float %4474, %4464
  %4478 = fadd fast float %4475, %4464
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.i32 %4482, 3
  %4484 = extractvalue %dx.types.CBufRet.i32 %4482, 2
  %4485 = add i32 %4484, 0
  %4486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4487 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4486, %dx.types.Handle %72, float %4397, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float %4360, float %4361, float undef, float %4364, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4488 = extractvalue %dx.types.ResRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.ResRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.ResRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.ResRet.f32 %4487, 3
  %4492 = and i32 %4483, 255
  %4493 = uitofp i32 %4492 to float
  %4494 = lshr i32 %4483, 8
  %4495 = and i32 %4494, 255
  %4496 = uitofp i32 %4495 to float
  %4497 = lshr i32 %4483, 16
  %4498 = and i32 %4497, 255
  %4499 = uitofp i32 %4498 to float
  %4500 = fmul fast float %4499, 0x3F70101000000000
  %4501 = fmul fast float %4488, %4493
  %4502 = fadd fast float %4501, %4496
  %4503 = fmul fast float %4502, 0x3F70101000000000
  %4504 = fadd fast float %4489, -5.000000e-01
  %4505 = fadd fast float %4491, -5.000000e-01
  %4506 = fmul fast float %4504, %4500
  %4507 = fmul fast float %4505, %4500
  %4508 = fadd fast float %4506, 5.000000e-01
  %4509 = fadd fast float %4507, 5.000000e-01
  %4510 = fmul fast float %4508, 2.000000e+00
  %4511 = fadd fast float %4510, -1.000000e+00
  %4512 = fmul fast float %4509, 2.000000e+00
  %4513 = fadd fast float %4512, -1.000000e+00
  %4514 = fadd fast float %4511, %4513
  %4515 = fmul fast float %4514, 5.000000e-01
  %4516 = fsub fast float %4511, %4513
  %4517 = fmul fast float %4516, 5.000000e-01
  %4518 = call float @dx.op.unary.f32(i32 6, float %4515)  ; FAbs(value)
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = call float @dx.op.unary.f32(i32 6, float %4517)  ; FAbs(value)
  %4521 = fsub fast float %4519, %4520
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4517, float %4521, float %4515, float %4517, float %4521)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 25, float %4522)  ; Rsqrt(value)
  %4524 = fmul fast float %4515, %4523
  %4525 = fmul fast float %4517, %4523
  %4526 = select i1 %4353, i32 %4343, i32 %4344
  %4527 = select i1 %4351, i32 %4342, i32 %4526
  %4528 = sitofp i32 %4527 to float
  %4529 = fmul fast float %4521, %4528
  %4530 = fmul fast float %4529, %4523
  %4531 = select i1 %4353, float %4530, float %4525
  %4532 = select i1 %4353, float %4525, float %4530
  %4533 = select i1 %4351, float %4530, float %4524
  %4534 = select i1 %4351, float %4525, float %4531
  %4535 = select i1 %4351, float %4524, float %4532
  %4536 = fsub fast float %4470, %3903
  %4537 = fsub fast float %4471, %3904
  %4538 = fsub fast float %4472, %3905
  %4539 = fmul fast float %4536, %4442
  %4540 = fmul fast float %4537, %4442
  %4541 = fmul fast float %4538, %4442
  %4542 = fadd fast float %4539, %3903
  %4543 = fadd fast float %4540, %3904
  %4544 = fadd fast float %4541, %3905
  %4545 = fsub fast float %4479, %3888
  %4546 = fsub fast float %4480, %3889
  %4547 = fsub fast float %4481, %3890
  %4548 = fmul fast float %4545, %4442
  %4549 = fmul fast float %4546, %4442
  %4550 = fmul fast float %4547, %4442
  %4551 = fadd fast float %4548, %3888
  %4552 = fadd fast float %4549, %3889
  %4553 = fadd fast float %4550, %3890
  %4554 = fadd fast float %4533, %3852
  %4555 = fadd fast float %4534, %3853
  %4556 = fadd fast float %4535, %3854
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = call float @dx.op.unary.f32(i32 25, float %4557)  ; Rsqrt(value)
  %4559 = fmul fast float %4554, %4558
  %4560 = fmul fast float %4555, %4558
  %4561 = fmul fast float %4556, %4558
  %4562 = fsub fast float %4559, %3852
  %4563 = fsub fast float %4560, %3853
  %4564 = fsub fast float %4561, %3854
  %4565 = fmul fast float %4562, %4442
  %4566 = fmul fast float %4563, %4442
  %4567 = fmul fast float %4564, %4442
  %4568 = fadd fast float %4565, %3852
  %4569 = fadd fast float %4566, %3853
  %4570 = fadd fast float %4567, %3854
  %4571 = call float @dx.op.binary.f32(i32 36, float %3864, float %4490)  ; FMin(a,b)
  %4572 = fsub fast float %4571, %3864
  %4573 = fmul fast float %4572, %4442
  %4574 = fadd fast float %4573, %3864
  %4575 = fsub fast float %4503, %3891
  %4576 = fmul fast float %4575, %4442
  %4577 = fadd fast float %4576, %3891
  br label %4578

; <label>:4578                                    ; preds = %4440, %4402, %4304
  %4579 = phi float [ %4542, %4440 ], [ %3903, %4402 ], [ %3903, %4304 ]
  %4580 = phi float [ %4543, %4440 ], [ %3904, %4402 ], [ %3904, %4304 ]
  %4581 = phi float [ %4544, %4440 ], [ %3905, %4402 ], [ %3905, %4304 ]
  %4582 = phi float [ %4551, %4440 ], [ %3888, %4402 ], [ %3888, %4304 ]
  %4583 = phi float [ %4552, %4440 ], [ %3889, %4402 ], [ %3889, %4304 ]
  %4584 = phi float [ %4553, %4440 ], [ %3890, %4402 ], [ %3890, %4304 ]
  %4585 = phi float [ %4568, %4440 ], [ %3852, %4402 ], [ %3852, %4304 ]
  %4586 = phi float [ %4569, %4440 ], [ %3853, %4402 ], [ %3853, %4304 ]
  %4587 = phi float [ %4570, %4440 ], [ %3854, %4402 ], [ %3854, %4304 ]
  %4588 = phi float [ %4577, %4440 ], [ %3891, %4402 ], [ %3891, %4304 ]
  %4589 = phi float [ %4574, %4440 ], [ %3864, %4402 ], [ %3864, %4304 ]
  br i1 %4302, label %4590, label %4863

; <label>:4590                                    ; preds = %4578
  %4591 = call float @dx.op.unary.f32(i32 23, float %4589)  ; Log(value)
  %4592 = fmul fast float %4591, 4.000000e+00
  %4593 = call float @dx.op.unary.f32(i32 21, float %4592)  ; Exp(value)
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = fmul fast float %4595, %34
  %4597 = fmul fast float %4595, %35
  %4598 = fmul fast float %4595, %36
  %4599 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4600 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4601 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4602 = call float @dx.op.unary.f32(i32 23, float %4599)  ; Log(value)
  %4603 = call float @dx.op.unary.f32(i32 23, float %4600)  ; Log(value)
  %4604 = call float @dx.op.unary.f32(i32 23, float %4601)  ; Log(value)
  %4605 = fmul fast float %4602, 4.000000e+00
  %4606 = fmul fast float %4603, 4.000000e+00
  %4607 = fmul fast float %4604, 4.000000e+00
  %4608 = call float @dx.op.unary.f32(i32 21, float %4605)  ; Exp(value)
  %4609 = call float @dx.op.unary.f32(i32 21, float %4606)  ; Exp(value)
  %4610 = call float @dx.op.unary.f32(i32 21, float %4607)  ; Exp(value)
  %4611 = fadd fast float %4609, %4608
  %4612 = fadd fast float %4611, %4610
  %4613 = fdiv fast float 1.000000e+00, %4612
  %4614 = fmul fast float %4613, %4608
  %4615 = fcmp fast ogt float %43, 0.000000e+00
  %4616 = fcmp fast ogt float %44, 0.000000e+00
  %4617 = fcmp fast ogt float %45, 0.000000e+00
  %4618 = fcmp fast olt float %43, 0.000000e+00
  %4619 = fcmp fast olt float %44, 0.000000e+00
  %4620 = fcmp fast olt float %45, 0.000000e+00
  %4621 = zext i1 %4615 to i32
  %4622 = zext i1 %4616 to i32
  %4623 = zext i1 %4617 to i32
  %4624 = zext i1 %4618 to i32
  %4625 = zext i1 %4619 to i32
  %4626 = zext i1 %4620 to i32
  %4627 = sub nsw i32 %4621, %4624
  %4628 = sub nsw i32 %4622, %4625
  %4629 = sub nsw i32 %4623, %4626
  %4630 = call float @dx.op.unary.f32(i32 83, float %4596)  ; DerivCoarseX(value)
  %4631 = call float @dx.op.unary.f32(i32 83, float %4597)  ; DerivCoarseX(value)
  %4632 = call float @dx.op.unary.f32(i32 83, float %4598)  ; DerivCoarseX(value)
  %4633 = call float @dx.op.unary.f32(i32 84, float %4596)  ; DerivCoarseY(value)
  %4634 = call float @dx.op.unary.f32(i32 84, float %4597)  ; DerivCoarseY(value)
  %4635 = call float @dx.op.unary.f32(i32 84, float %4598)  ; DerivCoarseY(value)
  %4636 = fcmp fast ole float %213, %4614
  %4637 = fmul fast float %4613, %4611
  %4638 = fcmp fast ole float %213, %4637
  %4639 = select i1 %4638, float %4598, float %4596
  %4640 = select i1 %4638, float %4596, float %4597
  %4641 = select i1 %4636, float %4597, float %4639
  %4642 = select i1 %4636, float %4598, float %4640
  %4643 = select i1 %4638, float %4632, float %4630
  %4644 = select i1 %4638, float %4630, float %4631
  %4645 = select i1 %4636, float %4631, float %4643
  %4646 = select i1 %4636, float %4632, float %4644
  %4647 = select i1 %4638, float %4635, float %4633
  %4648 = select i1 %4638, float %4633, float %4634
  %4649 = select i1 %4636, float %4634, float %4647
  %4650 = select i1 %4636, float %4635, float %4648
  %4651 = call float @dx.op.unary.f32(i32 27, float %4641)  ; Round_ni(value)
  %4652 = call float @dx.op.unary.f32(i32 27, float %4642)  ; Round_ni(value)
  %4653 = fptosi float %4651 to i32
  %4654 = fptosi float %4652 to i32
  %4655 = xor i32 %4654, %4653
  %4656 = sitofp i32 %4655 to float
  %4657 = fptosi float %4656 to i32
  %4658 = sitofp i32 %4657 to float
  %4659 = fmul fast float %4658, 0x3FE3C6EF40000000
  %4660 = frem fast float %4651, 2.560000e+02
  %4661 = frem fast float %4652, 2.560000e+02
  %4662 = fptoui float %4660 to i32
  %4663 = fptoui float %4661 to i32
  %4664 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4662, i32 %4663, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = fadd fast float %4665, %4659
  %4669 = fadd fast float %4666, %4659
  %4670 = fadd fast float %4667, %4659
  %4671 = call float @dx.op.unary.f32(i32 22, float %4668)  ; Frc(value)
  %4672 = call float @dx.op.unary.f32(i32 22, float %4669)  ; Frc(value)
  %4673 = call float @dx.op.unary.f32(i32 22, float %4670)  ; Frc(value)
  %4674 = fmul fast float %4673, 0x401921FB60000000
  %4675 = call float @dx.op.unary.f32(i32 13, float %4674)  ; Sin(value)
  %4676 = call float @dx.op.unary.f32(i32 12, float %4674)  ; Cos(value)
  %4677 = fsub fast float -0.000000e+00, %4676
  %4678 = fmul fast float %4676, %4641
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4675, float %4642, float %4678)  ; FMad(a,b,c)
  %4680 = fmul fast float %4675, %4641
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4677, float %4642, float %4680)  ; FMad(a,b,c)
  %4682 = fadd fast float %4679, %4671
  %4683 = fadd fast float %4681, %4672
  %4684 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4685 = bitcast float %4684 to i32
  %4686 = icmp eq i32 %4685, 0
  br i1 %4686, label %4725, label %4687

; <label>:4687                                    ; preds = %4590
  %4688 = add i32 %4685, 0
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4689, %dx.types.Handle %73, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 1
  %4694 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4695 = fsub fast float 1.000000e+00, %4300
  %4696 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4697 = bitcast float %4300 to i32
  %4698 = sitofp i32 %4697 to float
  %4699 = fadd fast float %4698, 0xC1CFBF8940000000
  %4700 = fmul fast float %4694, %4699
  %4701 = fadd fast float %4700, 0x41CFBF8940000000
  %4702 = fptosi float %4701 to i32
  %4703 = bitcast i32 %4702 to float
  %4704 = bitcast float %4696 to i32
  %4705 = sitofp i32 %4704 to float
  %4706 = fadd fast float %4705, 0xC1CFBF8940000000
  %4707 = fmul fast float %4706, %4694
  %4708 = fadd fast float %4707, 0x41CFBF8940000000
  %4709 = fptosi float %4708 to i32
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4703, %4693
  %4712 = fmul fast float %4710, %4693
  %4713 = fsub fast float %4696, %4711
  %4714 = fadd fast float %4712, %4696
  %4715 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4717 = fsub fast float %4691, %4715
  %4718 = fsub fast float %4716, %4715
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = fmul fast float %4721, %4717
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fcmp fast olt float %4723, 0x3F70101020000000
  br i1 %4724, label %4863, label %4725

; <label>:4725                                    ; preds = %4687, %4590
  %4726 = phi float [ %4723, %4687 ], [ %4300, %4590 ]
  %4727 = fmul fast float %4726, %4593
  %4728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.i32 %4728, 1
  %4730 = extractvalue %dx.types.CBufRet.i32 %4728, 0
  %4731 = add i32 %4730, 0
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4732, %dx.types.Handle %72, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.ResRet.f32 %4733, 3
  %4738 = and i32 %4729, 255
  %4739 = uitofp i32 %4738 to float
  %4740 = lshr i32 %4729, 8
  %4741 = and i32 %4740, 255
  %4742 = uitofp i32 %4741 to float
  %4743 = fmul fast float %4737, %4739
  %4744 = fadd fast float %4743, %4742
  %4745 = fmul fast float %4744, 0x3F70101000000000
  %4746 = fadd fast float %4745, 0xBFB99999A0000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4747, 0x3FF1C71C80000000
  %4749 = call float @dx.op.binary.f32(i32 36, float %4745, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4750 = fsub fast float 1.000000e+00, %4748
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, %4734
  %4753 = fmul fast float %4751, %4735
  %4754 = fmul fast float %4751, %4736
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = fmul fast float %4748, %4734
  %4759 = fmul fast float %4748, %4735
  %4760 = fmul fast float %4748, %4736
  %4761 = fadd fast float %4758, %4749
  %4762 = fadd fast float %4759, %4749
  %4763 = fadd fast float %4760, %4749
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.i32 %4767, 3
  %4769 = extractvalue %dx.types.CBufRet.i32 %4767, 2
  %4770 = add i32 %4769, 0
  %4771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4771, %dx.types.Handle %72, float %4682, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4646, float undef, float %4649, float %4650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = extractvalue %dx.types.ResRet.f32 %4772, 3
  %4777 = and i32 %4768, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = lshr i32 %4768, 8
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4768, 16
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = fmul fast float %4784, 0x3F70101000000000
  %4786 = fmul fast float %4773, %4778
  %4787 = fadd fast float %4786, %4781
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fadd fast float %4774, -5.000000e-01
  %4790 = fadd fast float %4776, -5.000000e-01
  %4791 = fmul fast float %4789, %4785
  %4792 = fmul fast float %4790, %4785
  %4793 = fadd fast float %4791, 5.000000e-01
  %4794 = fadd fast float %4792, 5.000000e-01
  %4795 = fmul fast float %4793, 2.000000e+00
  %4796 = fadd fast float %4795, -1.000000e+00
  %4797 = fmul fast float %4794, 2.000000e+00
  %4798 = fadd fast float %4797, -1.000000e+00
  %4799 = fadd fast float %4796, %4798
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = fsub fast float %4796, %4798
  %4802 = fmul fast float %4801, 5.000000e-01
  %4803 = call float @dx.op.unary.f32(i32 6, float %4800)  ; FAbs(value)
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4806 = fsub fast float %4804, %4805
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4802, float %4806, float %4800, float %4802, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4800, %4808
  %4810 = fmul fast float %4802, %4808
  %4811 = select i1 %4638, i32 %4628, i32 %4629
  %4812 = select i1 %4636, i32 %4627, i32 %4811
  %4813 = sitofp i32 %4812 to float
  %4814 = fmul fast float %4806, %4813
  %4815 = fmul fast float %4814, %4808
  %4816 = select i1 %4638, float %4815, float %4810
  %4817 = select i1 %4638, float %4810, float %4815
  %4818 = select i1 %4636, float %4815, float %4809
  %4819 = select i1 %4636, float %4810, float %4816
  %4820 = select i1 %4636, float %4809, float %4817
  %4821 = fsub fast float %4755, %4579
  %4822 = fsub fast float %4756, %4580
  %4823 = fsub fast float %4757, %4581
  %4824 = fmul fast float %4821, %4727
  %4825 = fmul fast float %4822, %4727
  %4826 = fmul fast float %4823, %4727
  %4827 = fadd fast float %4824, %4579
  %4828 = fadd fast float %4825, %4580
  %4829 = fadd fast float %4826, %4581
  %4830 = fsub fast float %4764, %4582
  %4831 = fsub fast float %4765, %4583
  %4832 = fsub fast float %4766, %4584
  %4833 = fmul fast float %4830, %4727
  %4834 = fmul fast float %4831, %4727
  %4835 = fmul fast float %4832, %4727
  %4836 = fadd fast float %4833, %4582
  %4837 = fadd fast float %4834, %4583
  %4838 = fadd fast float %4835, %4584
  %4839 = fadd fast float %4818, %4585
  %4840 = fadd fast float %4819, %4586
  %4841 = fadd fast float %4820, %4587
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4839, float %4840, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4839, %4843
  %4845 = fmul fast float %4840, %4843
  %4846 = fmul fast float %4841, %4843
  %4847 = fsub fast float %4844, %4585
  %4848 = fsub fast float %4845, %4586
  %4849 = fsub fast float %4846, %4587
  %4850 = fmul fast float %4847, %4727
  %4851 = fmul fast float %4848, %4727
  %4852 = fmul fast float %4849, %4727
  %4853 = fadd fast float %4850, %4585
  %4854 = fadd fast float %4851, %4586
  %4855 = fadd fast float %4852, %4587
  %4856 = call float @dx.op.binary.f32(i32 36, float %4589, float %4775)  ; FMin(a,b)
  %4857 = fsub fast float %4856, %4589
  %4858 = fmul fast float %4857, %4727
  %4859 = fadd fast float %4858, %4589
  %4860 = fsub fast float %4788, %4588
  %4861 = fmul fast float %4860, %4727
  %4862 = fadd fast float %4861, %4588
  br label %4863

; <label>:4863                                    ; preds = %4725, %4687, %4578, %4294
  %4864 = phi float [ %4827, %4725 ], [ %4579, %4687 ], [ %4579, %4578 ], [ %3903, %4294 ]
  %4865 = phi float [ %4828, %4725 ], [ %4580, %4687 ], [ %4580, %4578 ], [ %3904, %4294 ]
  %4866 = phi float [ %4829, %4725 ], [ %4581, %4687 ], [ %4581, %4578 ], [ %3905, %4294 ]
  %4867 = phi float [ %4836, %4725 ], [ %4582, %4687 ], [ %4582, %4578 ], [ %3888, %4294 ]
  %4868 = phi float [ %4837, %4725 ], [ %4583, %4687 ], [ %4583, %4578 ], [ %3889, %4294 ]
  %4869 = phi float [ %4838, %4725 ], [ %4584, %4687 ], [ %4584, %4578 ], [ %3890, %4294 ]
  %4870 = phi float [ %4853, %4725 ], [ %4585, %4687 ], [ %4585, %4578 ], [ %3852, %4294 ]
  %4871 = phi float [ %4854, %4725 ], [ %4586, %4687 ], [ %4586, %4578 ], [ %3853, %4294 ]
  %4872 = phi float [ %4855, %4725 ], [ %4587, %4687 ], [ %4587, %4578 ], [ %3854, %4294 ]
  %4873 = phi float [ %4862, %4725 ], [ %4588, %4687 ], [ %4588, %4578 ], [ %3891, %4294 ]
  %4874 = phi float [ %4859, %4725 ], [ %4589, %4687 ], [ %4589, %4578 ], [ %3864, %4294 ]
  %4875 = fcmp fast une float %4298, 0.000000e+00
  %4876 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 25, float %4876)  ; Rsqrt(value)
  br i1 %4875, label %4885, label %4878

; <label>:4878                                    ; preds = %4863
  %4879 = fmul fast float %4877, %163
  %4880 = fmul fast float %4877, %164
  %4881 = fmul fast float %4877, %165
  %4882 = fsub fast float -0.000000e+00, %4879
  %4883 = fsub fast float -0.000000e+00, %4880
  %4884 = fsub fast float -0.000000e+00, %4881
  br label %5052

; <label>:4885                                    ; preds = %4863
  %4886 = fmul fast float %163, %4877
  %4887 = fsub fast float -0.000000e+00, %4886
  %4888 = fmul fast float %164, %4877
  %4889 = fsub fast float -0.000000e+00, %4888
  %4890 = fmul fast float %165, %4877
  %4891 = fsub fast float -0.000000e+00, %4890
  %4892 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4889, float %4891, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = fmul fast float %4298, 2.500000e+00
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4298, 0x4013FFFFE0000000
  %4896 = fadd fast float %4895, 0xBFFFFFFFE0000000
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4298, 0x4004000020000000
  %4899 = fadd fast float %4898, 0xBFF8000040000000
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %3870, 1.000000e+01
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4902, 2.000000e+00
  %4904 = fsub fast float 3.000000e+00, %4903
  %4905 = fmul fast float %4902, %4902
  %4906 = fmul fast float %4905, %4904
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = fsub fast float 0x3FE3333340000000, %4873
  %4909 = fmul fast float %4908, 0x400AAAAAA0000000
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fmul fast float %4907, %4910
  %4912 = fmul fast float %4864, 0x3FEA2B8620000000
  %4913 = fmul fast float %4865, 0x3FEA2B8620000000
  %4914 = fmul fast float %4866, 0x3FEA2B8620000000
  %4915 = fadd fast float %4912, 0x3FC81DFBA0000000
  %4916 = fmul fast float %4915, %4864
  %4917 = fadd fast float %4916, 0x3F910E6020000000
  %4918 = fadd fast float %4913, 0x3FC81DFBA0000000
  %4919 = fmul fast float %4918, %4865
  %4920 = fadd fast float %4919, 0x3F910E6020000000
  %4921 = fadd fast float %4914, 0x3FC81DFBA0000000
  %4922 = fmul fast float %4921, %4866
  %4923 = fadd fast float %4922, 0x3F910E6020000000
  %4924 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4925 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4927 = fsub fast float %4924, %4864
  %4928 = fsub fast float %4925, %4865
  %4929 = fsub fast float %4926, %4866
  %4930 = fmul fast float %4927, %4894
  %4931 = fmul fast float %4930, %4911
  %4932 = fmul fast float %4928, %4894
  %4933 = fmul fast float %4932, %4911
  %4934 = fmul fast float %4929, %4894
  %4935 = fmul fast float %4934, %4911
  %4936 = fadd fast float %4931, %4864
  %4937 = fadd fast float %4933, %4865
  %4938 = fadd fast float %4935, %4866
  %4939 = fmul fast float %4874, %4874
  %4940 = fmul fast float %4939, %4939
  %4941 = fadd fast float %4897, 1.000000e+00
  %4942 = fsub fast float %4941, %4911
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fsub fast float 1.000000e+00, %4940
  %4947 = call float @dx.op.binary.f32(i32 36, float %4943, float %4946)  ; FMin(a,b)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4949 = call float @dx.op.binary.f32(i32 35, float %4947, float %4948)  ; FMax(a,b)
  %4950 = fadd fast float %4945, 0xBFE4CCCCC0000000
  %4951 = fmul fast float %4950, 0x4006DB6DA0000000
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = fmul fast float %4952, 2.000000e+00
  %4954 = fsub fast float 3.000000e+00, %4953
  %4955 = bitcast float %4867 to i32
  %4956 = ashr i32 %4955, 1
  %4957 = add nsw i32 %4956, 532487669
  %4958 = bitcast i32 %4957 to float
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = bitcast float %4868 to i32
  %4965 = ashr i32 %4964, 1
  %4966 = add nsw i32 %4965, 532487669
  %4967 = bitcast i32 %4966 to float
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = bitcast float %4968 to i32
  %4970 = sub nsw i32 2129859010, %4969
  %4971 = bitcast i32 %4970 to float
  %4972 = fmul fast float %4971, 2.000000e+00
  %4973 = bitcast float %4869 to i32
  %4974 = ashr i32 %4973, 1
  %4975 = add nsw i32 %4974, 532487669
  %4976 = bitcast i32 %4975 to float
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4980, 2.000000e+00
  %4982 = fsub fast float 0x4002A9FBE0000000, %4963
  %4983 = fadd fast float %4963, 0x3FD54FDF00000000
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = fmul fast float %4986, %4982
  %4988 = fmul fast float %4987, %4987
  %4989 = fsub fast float 0x4002A9FBE0000000, %4972
  %4990 = fadd fast float %4972, 0x3FD54FDF00000000
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, %4994
  %4996 = fsub fast float 0x4002A9FBE0000000, %4981
  %4997 = fadd fast float %4981, 0x3FD54FDF00000000
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %5001
  %5003 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4988)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4995)  ; FMax(a,b)
  %5005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5002)  ; FMax(a,b)
  %5006 = fsub fast float 1.000000e+00, %4892
  %5007 = fadd fast float %5006, %4907
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fsub fast float 1.000000e+00, %4279
  %5010 = fmul fast float %4949, %5009
  %5011 = fmul fast float %4952, %4952
  %5012 = fmul fast float %5011, %5010
  %5013 = fmul fast float %5012, %4954
  %5014 = fmul fast float %5009, 0xBFE99999A0000000
  %5015 = fmul fast float %5014, %4894
  %5016 = fmul fast float %5015, %4911
  %5017 = fadd fast float %5016, 1.000000e+00
  %5018 = fadd fast float %4873, -1.000000e+00
  %5019 = fmul fast float %5017, %5018
  %5020 = fadd fast float %5019, 1.000000e+00
  %5021 = fsub fast float %5003, %4867
  %5022 = fsub fast float %5004, %4868
  %5023 = fsub fast float %5005, %4869
  %5024 = fmul fast float %5013, %5021
  %5025 = fmul fast float %5013, %5022
  %5026 = fmul fast float %5013, %5023
  %5027 = fadd fast float %5024, %4867
  %5028 = fadd fast float %5025, %4868
  %5029 = fadd fast float %5026, %4869
  %5030 = fsub fast float %83, %4870
  %5031 = fsub fast float %84, %4871
  %5032 = fsub fast float %85, %4872
  %5033 = fmul fast float %5013, %5030
  %5034 = fmul fast float %5013, %5031
  %5035 = fmul fast float %5013, %5032
  %5036 = fadd fast float %5033, %4870
  %5037 = fadd fast float %5034, %4871
  %5038 = fadd fast float %5035, %4872
  %5039 = fmul fast float %5013, %5008
  %5040 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5039, %5041
  %5043 = fadd fast float %5042, %5040
  %5044 = fsub fast float 1.000000e+00, %4874
  %5045 = fmul fast float %5013, %5044
  %5046 = fadd fast float %5045, %4874
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 25, float %5047)  ; Rsqrt(value)
  %5049 = fmul fast float %5036, %5048
  %5050 = fmul fast float %5037, %5048
  %5051 = fmul fast float %5038, %5048
  br label %5052

; <label>:5052                                    ; preds = %4885, %4878
  %5053 = phi float [ %4884, %4878 ], [ %4891, %4885 ]
  %5054 = phi float [ %4883, %4878 ], [ %4889, %4885 ]
  %5055 = phi float [ %4882, %4878 ], [ %4887, %4885 ]
  %5056 = phi float [ %4881, %4878 ], [ %4890, %4885 ]
  %5057 = phi float [ %4880, %4878 ], [ %4888, %4885 ]
  %5058 = phi float [ %4879, %4878 ], [ %4886, %4885 ]
  %5059 = phi float [ %4864, %4878 ], [ %4936, %4885 ]
  %5060 = phi float [ %4865, %4878 ], [ %4937, %4885 ]
  %5061 = phi float [ %4866, %4878 ], [ %4938, %4885 ]
  %5062 = phi float [ %4867, %4878 ], [ %5027, %4885 ]
  %5063 = phi float [ %4868, %4878 ], [ %5028, %4885 ]
  %5064 = phi float [ %4869, %4878 ], [ %5029, %4885 ]
  %5065 = phi float [ %4870, %4878 ], [ %5049, %4885 ]
  %5066 = phi float [ %4871, %4878 ], [ %5050, %4885 ]
  %5067 = phi float [ %4872, %4878 ], [ %5051, %4885 ]
  %5068 = phi float [ %4873, %4878 ], [ %5043, %4885 ]
  %5069 = phi float [ %4874, %4878 ], [ %5046, %4885 ]
  %5070 = select i1 %202, float 0.000000e+00, float %5064
  %5071 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %5055, float %5054, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5057, float %5056, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = fmul fast float %5073, 2.000000e+00
  %5075 = fmul fast float %5074, %5065
  %5076 = fmul fast float %5074, %5066
  %5077 = fmul fast float %5074, %5067
  %5078 = fsub fast float %5058, %5075
  %5079 = fsub fast float %5057, %5076
  %5080 = fsub fast float %5056, %5077
  %5081 = call float @dx.op.binary.f32(i32 36, float %5069, float 1.000000e+00)  ; FMin(a,b)
  %5082 = fsub fast float 1.000000e+00, %5069
  %5083 = bitcast float %5082 to i32
  %5084 = sub nsw i32 2129859010, %5083
  %5085 = fsub fast float 1.000000e+00, %53
  %5086 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.binary.f32(i32 35, float %5086, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5088 = fdiv fast float %5085, %5087
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %5090, 5.000000e-01
  %5092 = fadd fast float %5091, 5.000000e-01
  %5093 = fmul fast float %5092, %53
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, %5088
  %5097 = fadd fast float %5093, %5096
  %5098 = fsub fast float 5.000000e-01, %5091
  %5099 = fmul fast float %5098, %5059
  %5100 = fmul fast float %5098, %5060
  %5101 = fmul fast float %5098, %5061
  %5102 = fadd fast float %5097, %5099
  %5103 = fadd fast float %5097, %5100
  %5104 = fadd fast float %5097, %5101
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5106, 5.000000e-01
  %5108 = fadd fast float %5107, 5.000000e-01
  %5109 = fmul fast float %5108, %53
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %103, float %104, float %105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5111, %5088
  %5113 = fadd fast float %5109, %5112
  %5114 = fsub fast float 5.000000e-01, %5107
  %5115 = fmul fast float %5114, %5059
  %5116 = fmul fast float %5114, %5060
  %5117 = fmul fast float %5114, %5061
  %5118 = fadd fast float %5113, %5115
  %5119 = fadd fast float %5113, %5116
  %5120 = fadd fast float %5113, %5117
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5123 = call float @dx.op.binary.f32(i32 36, float %5059, float %5122)  ; FMin(a,b)
  %5124 = fsub fast float 1.000000e+00, %5081
  %5125 = fmul fast float %5123, %5124
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = bitcast float %5126 to i32
  %5128 = sub nsw i32 2129859010, %5127
  %5129 = bitcast i32 %5128 to float
  %5130 = call float @dx.op.binary.f32(i32 36, float %5060, float %5122)  ; FMin(a,b)
  %5131 = fmul fast float %5130, %5124
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = bitcast float %5132 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = call float @dx.op.binary.f32(i32 36, float %5061, float %5122)  ; FMin(a,b)
  %5137 = fmul fast float %5136, %5124
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = bitcast i32 %5140 to float
  %5142 = fmul fast float %5081, %54
  %5143 = fmul fast float %5142, %5102
  %5144 = fmul fast float %5143, %5129
  %5145 = fmul fast float %5081, %55
  %5146 = fmul fast float %5145, %5103
  %5147 = fmul fast float %5146, %5135
  %5148 = fmul fast float %5081, %56
  %5149 = fmul fast float %5148, %5104
  %5150 = fmul fast float %5149, %5141
  %5151 = call float @dx.op.binary.f32(i32 36, float %5062, float %5122)  ; FMin(a,b)
  %5152 = fmul fast float %5151, %5124
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = call float @dx.op.binary.f32(i32 36, float %5063, float %5122)  ; FMin(a,b)
  %5158 = fmul fast float %5157, %5124
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = bitcast float %5159 to i32
  %5161 = sub nsw i32 2129859010, %5160
  %5162 = bitcast i32 %5161 to float
  %5163 = call float @dx.op.binary.f32(i32 36, float %5070, float %5122)  ; FMin(a,b)
  %5164 = fmul fast float %5163, %5124
  %5165 = fsub fast float 1.000000e+00, %5164
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = fmul fast float %5142, %5118
  %5170 = fmul fast float %5169, %5156
  %5171 = fmul fast float %5145, %5119
  %5172 = fmul fast float %5171, %5162
  %5173 = fmul fast float %5148, %5120
  %5174 = fmul fast float %5173, %5168
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5147, float %5150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = select i1 %202, float 0.000000e+00, float %5144
  %5177 = select i1 %202, float %5175, float %5147
  %5178 = select i1 %202, float 0.000000e+00, float %5150
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5172, float %5174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = select i1 %202, float 0.000000e+00, float %5170
  %5181 = select i1 %202, float %5179, float %5172
  %5182 = select i1 %202, float 0.000000e+00, float %5174
  %5183 = fmul fast float %5072, 9.843750e-01
  %5184 = fmul fast float %5068, 9.843750e-01
  %5185 = fadd fast float %5183, 7.812500e-03
  %5186 = fadd fast float %5184, 7.812500e-03
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 3
  %5190 = fmul fast float %5188, %5062
  %5191 = fmul fast float %5188, %5063
  %5192 = fmul fast float %5188, %5070
  %5193 = fadd fast float %5190, %5189
  %5194 = fadd fast float %5191, %5189
  %5195 = fadd fast float %5192, %5189
  %5196 = fcmp fast ogt float %3865, 0.000000e+00
  br i1 %5196, label %5197, label %5223

; <label>:5197                                    ; preds = %5052
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3865, float %5072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5202 = fadd fast float %5199, -5.000000e-01
  %5203 = fadd fast float %5200, -5.000000e-01
  %5204 = fadd fast float %5201, -5.000000e-01
  %5205 = fsub fast float 1.000000e+00, %5062
  %5206 = fsub fast float 1.000000e+00, %5063
  %5207 = fsub fast float 1.000000e+00, %5070
  %5208 = fmul fast float %5062, 4.000000e+00
  %5209 = fmul fast float %5208, %5205
  %5210 = fmul fast float %5209, %5202
  %5211 = fmul fast float %5063, 4.000000e+00
  %5212 = fmul fast float %5211, %5206
  %5213 = fmul fast float %5212, %5203
  %5214 = fmul fast float %5070, 4.000000e+00
  %5215 = fmul fast float %5214, %5207
  %5216 = fmul fast float %5215, %5204
  %5217 = fadd fast float %5210, %5193
  %5218 = fadd fast float %5213, %5194
  %5219 = fadd fast float %5216, %5195
  %5220 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5221 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5222 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  br label %5223

; <label>:5223                                    ; preds = %5197, %5052
  %5224 = phi float [ %5220, %5197 ], [ %5193, %5052 ]
  %5225 = phi float [ %5221, %5197 ], [ %5194, %5052 ]
  %5226 = phi float [ %5222, %5197 ], [ %5195, %5052 ]
  %5227 = call float @dx.op.binary.f32(i32 35, float %5225, float %5226)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float %5224, float %5227)  ; FMax(a,b)
  %5229 = fsub fast float 1.000000e+00, %5228
  %5230 = fmul fast float %5229, %5176
  %5231 = fmul fast float %5229, %5177
  %5232 = fmul fast float %5229, %5178
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = fcmp fast ogt float %5233, 0x3E7FF19E20000000
  %5235 = fdiv fast float 1.000000e+00, %5233
  %5236 = select i1 %5234, float %5235, float 0.000000e+00
  %5237 = fmul fast float %5236, %5059
  %5238 = fmul fast float %5236, %5060
  %5239 = fmul fast float %5236, %5061
  %5240 = fadd fast float %5237, -1.000000e+00
  %5241 = fadd fast float %5238, -1.000000e+00
  %5242 = fadd fast float %5239, -1.000000e+00
  %5243 = fmul fast float %5240, 5.000000e-01
  %5244 = fmul fast float %5241, 5.000000e-01
  %5245 = fmul fast float %5242, 5.000000e-01
  %5246 = fadd fast float %5243, 1.000000e+00
  %5247 = fadd fast float %5244, 1.000000e+00
  %5248 = fadd fast float %5245, 1.000000e+00
  %5249 = fmul fast float %5224, %5180
  %5250 = fmul fast float %5225, %5181
  %5251 = fmul fast float %5226, %5182
  %5252 = fsub fast float 1.000000e+00, %5072
  %5253 = bitcast float %5252 to i32
  %5254 = sitofp i32 %5253 to float
  %5255 = fmul fast float %5254, 5.000000e+00
  %5256 = fadd fast float %5255, 0xC1EFBF8940000000
  %5257 = fptosi float %5256 to i32
  %5258 = bitcast i32 %5257 to float
  %5259 = fmul fast float %5258, %3866
  %5260 = fmul fast float %5176, %5259
  %5261 = fmul fast float %5260, %5229
  %5262 = fmul fast float %5261, %5246
  %5263 = fmul fast float %5177, %5259
  %5264 = fmul fast float %5263, %5229
  %5265 = fmul fast float %5264, %5247
  %5266 = fmul fast float %5178, %5259
  %5267 = fmul fast float %5266, %5229
  %5268 = fmul fast float %5267, %5248
  %5269 = fmul fast float %5230, %3862
  %5270 = fmul fast float %5231, %3862
  %5271 = fmul fast float %5232, %3862
  %5272 = fadd fast float %5249, %3858
  %5273 = fadd fast float %5272, %5262
  %5274 = fmul fast float %5273, %3862
  %5275 = fadd fast float %5250, %3859
  %5276 = fadd fast float %5275, %5265
  %5277 = fmul fast float %5276, %3862
  %5278 = fadd fast float %5251, %3860
  %5279 = fadd fast float %5278, %5268
  %5280 = fmul fast float %5279, %3862
  %5281 = bitcast i32 %5084 to float
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 3
  %5284 = fcmp fast oeq float %5283, 0.000000e+00
  br i1 %5284, label %5512, label %5285

; <label>:5285                                    ; preds = %5223
  %5286 = extractvalue %dx.types.CBufRet.f32 %5282, 0
  %5287 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5288 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5290, float %5291, float %5292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = select i1 %202, float %5294, float %5290
  %5298 = select i1 %202, float %5296, float %5291
  %5299 = select i1 %202, float %5295, float %5292
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5302 = fcmp fast une float %5301, 0.000000e+00
  br i1 %5302, label %5303, label %5320

; <label>:5303                                    ; preds = %5285
  %5304 = fptoui float %76 to i32
  %5305 = fptoui float %77 to i32
  %5306 = lshr i32 %5304, 4
  %5307 = lshr i32 %5305, 4
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = fptoui float %5309 to i32
  %5311 = add i32 %5310, 15
  %5312 = lshr i32 %5311, 4
  %5313 = mul i32 %5312, %5307
  %5314 = add i32 %5313, %5306
  %5315 = shl i32 %5314, 3
  %5316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.i32 %5316, 0
  %5318 = and i32 %5317, -268435456
  %5319 = icmp eq i32 %5318, -1342177280
  br i1 %5319, label %5330, label %5320

; <label>:5320                                    ; preds = %5303, %5285
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 2
  %5323 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5324 = fmul fast float %5322, %76
  %5325 = fmul fast float %5323, %77
  %5326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5324, float %5325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.ResRet.f32 %5326, 2
  br label %5330

; <label>:5330                                    ; preds = %5320, %5303
  %5331 = phi float [ %5327, %5320 ], [ 0.000000e+00, %5303 ]
  %5332 = phi float [ %5328, %5320 ], [ 0.000000e+00, %5303 ]
  %5333 = phi float [ %5329, %5320 ], [ 0.000000e+00, %5303 ]
  %5334 = call float @dx.op.binary.f32(i32 36, float %5332, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.binary.f32(i32 36, float %5331, float %5334)  ; FMin(a,b)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5337, label %5512, !dx.controlflow.hints !74

; <label>:5337                                    ; preds = %5330
  %5338 = fmul fast float %5331, %5297
  %5339 = fmul fast float %5332, %5298
  %5340 = fmul fast float %5333, %5299
  %5341 = fsub fast float %5286, %5058
  %5342 = fsub fast float %5287, %5057
  %5343 = fsub fast float %5288, %5056
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 25, float %5344)  ; Rsqrt(value)
  %5346 = fmul fast float %5345, %5341
  %5347 = fmul fast float %5345, %5342
  %5348 = fmul fast float %5345, %5343
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5054, float %5053, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5352 = fmul fast float %5351, %5351
  %5353 = fmul fast float %5352, %5281
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fmul fast float %5354, %5351
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fmul fast float %5356, %5356
  %5358 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5359 = fsub fast float 1.000000e+00, %5068
  %5360 = call float @dx.op.binary.f32(i32 35, float %5359, float 0x3F847AE140000000)  ; FMax(a,b)
  %5361 = fmul fast float %5360, %5360
  %5362 = fmul fast float %5361, %5361
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5072, %5072
  %5365 = fmul fast float %5364, %5363
  %5366 = fadd fast float %5365, %5362
  %5367 = bitcast float %5366 to i32
  %5368 = ashr i32 %5367, 1
  %5369 = add nsw i32 %5368, 532487669
  %5370 = bitcast i32 %5369 to float
  %5371 = fadd fast float %5370, %5072
  %5372 = fmul fast float %5362, %5357
  %5373 = fsub fast float 1.000000e+00, %5357
  %5374 = fadd fast float %5373, %5372
  %5375 = fmul fast float %5358, %5358
  %5376 = fmul fast float %5375, %5363
  %5377 = fadd fast float %5376, %5362
  %5378 = bitcast float %5377 to i32
  %5379 = ashr i32 %5378, 1
  %5380 = add nsw i32 %5379, 532487669
  %5381 = bitcast i32 %5380 to float
  %5382 = fadd fast float %5381, %5358
  %5383 = fmul fast float %5374, %5374
  %5384 = fmul fast float %5383, %5371
  %5385 = fmul fast float %5384, %5382
  %5386 = fdiv fast float 0x3FF0A00000000000, %5385
  %5387 = fmul fast float %5386, %5362
  %5388 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5389 = fsub fast float 1.000000e+00, %5388
  %5390 = bitcast float %5389 to i32
  %5391 = sitofp i32 %5390 to float
  %5392 = fmul fast float %5391, 5.000000e+00
  %5393 = fadd fast float %5392, 0xC1EFBF8940000000
  %5394 = fptosi float %5393 to i32
  %5395 = bitcast i32 %5394 to float
  %5396 = fsub fast float 1.000000e+00, %5062
  %5397 = fsub fast float 1.000000e+00, %5063
  %5398 = fsub fast float 1.000000e+00, %5070
  %5399 = fmul fast float %5395, %5396
  %5400 = fmul fast float %5395, %5397
  %5401 = fmul fast float %5395, %5398
  %5402 = fadd fast float %5399, %5062
  %5403 = fadd fast float %5400, %5063
  %5404 = fadd fast float %5401, %5070
  br i1 %5196, label %5405, label %5428

; <label>:5405                                    ; preds = %5337
  %5406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3865, float %5388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = fadd fast float %5407, -5.000000e-01
  %5411 = fadd fast float %5408, -5.000000e-01
  %5412 = fadd fast float %5409, -5.000000e-01
  %5413 = fmul fast float %5062, 4.000000e+00
  %5414 = fmul fast float %5413, %5396
  %5415 = fmul fast float %5414, %5410
  %5416 = fmul fast float %5063, 4.000000e+00
  %5417 = fmul fast float %5416, %5397
  %5418 = fmul fast float %5417, %5411
  %5419 = fmul fast float %5070, 4.000000e+00
  %5420 = fmul fast float %5419, %5398
  %5421 = fmul fast float %5420, %5412
  %5422 = fadd fast float %5415, %5402
  %5423 = fadd fast float %5418, %5403
  %5424 = fadd fast float %5421, %5404
  %5425 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5426 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5427 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  br label %5428

; <label>:5428                                    ; preds = %5405, %5337
  %5429 = phi float [ %5425, %5405 ], [ %5402, %5337 ]
  %5430 = phi float [ %5426, %5405 ], [ %5403, %5337 ]
  %5431 = phi float [ %5427, %5405 ], [ %5404, %5337 ]
  %5432 = fmul fast float %5349, 9.843750e-01
  %5433 = fadd fast float %5432, 7.812500e-03
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5433, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 3
  %5437 = fmul fast float %5435, %5062
  %5438 = fmul fast float %5435, %5063
  %5439 = fmul fast float %5435, %5070
  %5440 = fadd fast float %5437, %5436
  %5441 = fadd fast float %5438, %5436
  %5442 = fadd fast float %5439, %5436
  br i1 %5196, label %5443, label %5466

; <label>:5443                                    ; preds = %5428
  %5444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3865, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.ResRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.ResRet.f32 %5444, 2
  %5448 = fadd fast float %5445, -5.000000e-01
  %5449 = fadd fast float %5446, -5.000000e-01
  %5450 = fadd fast float %5447, -5.000000e-01
  %5451 = fmul fast float %5062, 4.000000e+00
  %5452 = fmul fast float %5451, %5396
  %5453 = fmul fast float %5452, %5448
  %5454 = fmul fast float %5063, 4.000000e+00
  %5455 = fmul fast float %5454, %5397
  %5456 = fmul fast float %5455, %5449
  %5457 = fmul fast float %5070, 4.000000e+00
  %5458 = fmul fast float %5457, %5398
  %5459 = fmul fast float %5458, %5450
  %5460 = fadd fast float %5453, %5440
  %5461 = fadd fast float %5456, %5441
  %5462 = fadd fast float %5459, %5442
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  br label %5466

; <label>:5466                                    ; preds = %5443, %5428
  %5467 = phi float [ %5463, %5443 ], [ %5440, %5428 ]
  %5468 = phi float [ %5464, %5443 ], [ %5441, %5428 ]
  %5469 = phi float [ %5465, %5443 ], [ %5442, %5428 ]
  %5470 = call float @dx.op.binary.f32(i32 35, float %5468, float %5469)  ; FMax(a,b)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5467, float %5470)  ; FMax(a,b)
  %5472 = fsub fast float 1.000000e+00, %5471
  %5473 = fmul fast float %5429, %5387
  %5474 = fmul fast float %5430, %5387
  %5475 = fmul fast float %5431, %5387
  %5476 = fsub fast float 1.000000e+00, %5350
  %5477 = bitcast float %5476 to i32
  %5478 = sitofp i32 %5477 to float
  %5479 = fmul fast float %5478, 5.000000e+00
  %5480 = fadd fast float %5479, 0xC1EFBF8940000000
  %5481 = fptosi float %5480 to i32
  %5482 = bitcast i32 %5481 to float
  %5483 = fmul fast float %5482, %3866
  %5484 = fmul fast float %5472, %5483
  %5485 = fmul fast float %5484, %5246
  %5486 = fmul fast float %5484, %5247
  %5487 = fmul fast float %5484, %5248
  %5488 = fadd fast float %5485, %5473
  %5489 = fadd fast float %5486, %5474
  %5490 = fadd fast float %5487, %5475
  %5491 = fmul fast float %5355, %5338
  %5492 = fmul fast float %5491, %5472
  %5493 = fmul fast float %5355, %5339
  %5494 = fmul fast float %5493, %5472
  %5495 = fmul fast float %5355, %5340
  %5496 = fmul fast float %5495, %5472
  %5497 = fmul fast float %5491, %5488
  %5498 = fmul fast float %5493, %5489
  %5499 = fmul fast float %5495, %5490
  %5500 = fadd fast float %5492, %5230
  %5501 = fmul fast float %5500, %3862
  %5502 = fadd fast float %5494, %5231
  %5503 = fmul fast float %5502, %3862
  %5504 = fadd fast float %5496, %5232
  %5505 = fmul fast float %5504, %3862
  %5506 = fadd fast float %5497, %5273
  %5507 = fmul fast float %5506, %3862
  %5508 = fadd fast float %5498, %5276
  %5509 = fmul fast float %5508, %3862
  %5510 = fadd fast float %5499, %5279
  %5511 = fmul fast float %5510, %3862
  br label %5512

; <label>:5512                                    ; preds = %5466, %5330, %5223
  %5513 = phi float [ %5274, %5223 ], [ %5274, %5330 ], [ %5507, %5466 ]
  %5514 = phi float [ %5277, %5223 ], [ %5277, %5330 ], [ %5509, %5466 ]
  %5515 = phi float [ %5280, %5223 ], [ %5280, %5330 ], [ %5511, %5466 ]
  %5516 = phi float [ %5269, %5223 ], [ %5269, %5330 ], [ %5501, %5466 ]
  %5517 = phi float [ %5270, %5223 ], [ %5270, %5330 ], [ %5503, %5466 ]
  %5518 = phi float [ %5271, %5223 ], [ %5271, %5330 ], [ %5505, %5466 ]
  %5519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.i32 %5519, 0
  %5521 = icmp eq i32 %5520, 0
  br i1 %5521, label %5956, label %5522

; <label>:5522                                    ; preds = %5512
  %5523 = fptoui float %76 to i32
  %5524 = fptoui float %77 to i32
  %5525 = lshr i32 %5523, 4
  %5526 = lshr i32 %5524, 4
  %5527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.i32 %5527, 0
  %5529 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5526, i32 %5528, i32 %5525)  ; UMad(a,b,c)
  %5530 = add nsw i32 %5520, -1
  %5531 = call i32 @dx.op.binary.i32(i32 37, i32 %5530, i32 0)  ; IMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5533 = fptoui float %5532 to i32
  %5534 = lshr i32 %5533, 5
  %5535 = call i32 @dx.op.binary.i32(i32 40, i32 %5534, i32 8191)  ; UMin(a,b)
  %5536 = shl i32 %5535, 2
  %5537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5536, i32 undef)  ; BufferLoad(srv,index,wot)
  %5538 = extractvalue %dx.types.ResRet.i32 %5537, 0
  %5539 = lshr i32 %5538, 16
  %5540 = and i32 %5538, 65535
  %5541 = lshr i32 %5538, 21
  %5542 = lshr i32 %5540, 5
  %5543 = call i32 @dx.op.binary.i32(i32 40, i32 %5542, i32 %5531)  ; UMin(a,b)
  %5544 = icmp ugt i32 %5541, %5543
  br i1 %5544, label %5956, label %5545

; <label>:5545                                    ; preds = %5522
  br label %5546

; <label>:5546                                    ; preds = %5946, %5545
  %5547 = phi i32 [ %5953, %5946 ], [ %5541, %5545 ]
  %5548 = phi float [ %5947, %5946 ], [ %5513, %5545 ]
  %5549 = phi float [ %5948, %5946 ], [ %5514, %5545 ]
  %5550 = phi float [ %5949, %5946 ], [ %5515, %5545 ]
  %5551 = phi float [ %5950, %5946 ], [ %5516, %5545 ]
  %5552 = phi float [ %5951, %5946 ], [ %5517, %5545 ]
  %5553 = phi float [ %5952, %5946 ], [ %5518, %5545 ]
  %5554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.i32 %5554, 0
  %5556 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5529, i32 %5555, i32 %5547)  ; UMad(a,b,c)
  %5557 = shl i32 %5556, 2
  %5558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5557, i32 undef)  ; BufferLoad(srv,index,wot)
  %5559 = extractvalue %dx.types.ResRet.i32 %5558, 0
  %5560 = shl i32 %5547, 5
  %5561 = sub nsw i32 %5539, %5560
  %5562 = call i32 @dx.op.binary.i32(i32 37, i32 %5561, i32 0)  ; IMax(a,b)
  %5563 = call i32 @dx.op.binary.i32(i32 38, i32 %5562, i32 31)  ; IMin(a,b)
  %5564 = sub nsw i32 1, %5539
  %5565 = add nsw i32 %5564, %5540
  %5566 = call i32 @dx.op.binary.i32(i32 37, i32 %5565, i32 0)  ; IMax(a,b)
  %5567 = call i32 @dx.op.binary.i32(i32 38, i32 %5566, i32 32)  ; IMin(a,b)
  %5568 = and i32 %5567, 31
  %5569 = shl i32 -1, %5568
  %5570 = xor i32 %5569, -1
  %5571 = and i32 %5563, 31
  %5572 = shl i32 %5570, %5571
  %5573 = icmp eq i32 %5567, 32
  %5574 = select i1 %5573, i32 -1, i32 %5572
  %5575 = and i32 %5574, %5559
  %5576 = icmp eq i32 %5575, 0
  br i1 %5576, label %5946, label %5577

; <label>:5577                                    ; preds = %5546
  br label %5578

; <label>:5578                                    ; preds = %5658, %5577
  %5579 = phi i32 [ %5590, %5658 ], [ %5575, %5577 ]
  %5580 = phi float [ %5659, %5658 ], [ %5548, %5577 ]
  %5581 = phi float [ %5660, %5658 ], [ %5549, %5577 ]
  %5582 = phi float [ %5661, %5658 ], [ %5550, %5577 ]
  %5583 = phi float [ %5662, %5658 ], [ %5551, %5577 ]
  %5584 = phi float [ %5663, %5658 ], [ %5552, %5577 ]
  %5585 = phi float [ %5664, %5658 ], [ %5553, %5577 ]
  %5586 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5579)  ; FirstbitLo(value)
  %5587 = add i32 %5586, %5560
  %5588 = and i32 %5586, 31
  %5589 = shl i32 1, %5588
  %5590 = xor i32 %5589, %5579
  %5591 = mul i32 %5587, 112
  %5592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5591, i32 undef)  ; BufferLoad(srv,index,wot)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.f32 %5592, 2
  %5596 = or i32 %5591, 12
  %5597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5596, i32 undef)  ; BufferLoad(srv,index,wot)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = add i32 %5591, 44
  %5600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5599, i32 undef)  ; BufferLoad(srv,index,wot)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = add i32 %5591, 48
  %5603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5602, i32 undef)  ; BufferLoad(srv,index,wot)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.ResRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.ResRet.f32 %5603, 2
  %5607 = add i32 %5591, 80
  %5608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5607, i32 undef)  ; BufferLoad(srv,index,wot)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5594, float %5595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = select i1 %202, float %5609, float %5593
  %5613 = select i1 %202, float %5611, float %5594
  %5614 = select i1 %202, float %5610, float %5595
  %5615 = fsub fast float %5604, %163
  %5616 = fsub fast float %5605, %164
  %5617 = fsub fast float %5606, %165
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5617, float %5615, float %5616, float %5617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = call float @dx.op.unary.f32(i32 24, float %5618)  ; Sqrt(value)
  %5620 = fdiv fast float 1.000000e+00, %5619
  %5621 = fmul fast float %5620, %5615
  %5622 = fmul fast float %5620, %5616
  %5623 = fmul fast float %5620, %5617
  %5624 = fadd fast float %5619, %5598
  %5625 = fdiv fast float 1.000000e+00, %5624
  %5626 = fmul float %5601, %5625
  %5627 = fmul float %5626, %5626
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = and i32 %5589, %5575
  %5630 = icmp eq i32 %5629, 0
  br i1 %5630, label %5653, label %5631, !dx.controlflow.hints !75

; <label>:5631                                    ; preds = %5578
  %5632 = lshr i32 %5523, 5
  %5633 = lshr i32 %5524, 5
  %5634 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5632, i32 %5633, i32 %5587, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5635 = extractvalue %dx.types.ResRet.i32 %5634, 0
  %5636 = and i32 %5635, 3
  %5637 = icmp eq i32 %5636, 0
  %5638 = select i1 %5637, float 1.000000e+00, float 0.000000e+00
  %5639 = icmp eq i32 %5636, 3
  br i1 %5639, label %5640, label %5653

; <label>:5640                                    ; preds = %5631
  %5641 = lshr i32 %5635, 10
  %5642 = and i32 %5641, 8160
  %5643 = and i32 %5524, 31
  %5644 = or i32 %5642, %5643
  %5645 = lshr i32 %5635, 1
  %5646 = and i32 %5645, 16352
  %5647 = and i32 %5523, 31
  %5648 = or i32 %5646, %5647
  %5649 = lshr i32 %5635, 23
  %5650 = and i32 %5649, 255
  %5651 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %5648, i32 %5644, i32 %5650, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  br label %5653

; <label>:5653                                    ; preds = %5640, %5631, %5578
  %5654 = phi float [ %5652, %5640 ], [ %5638, %5631 ], [ 0.000000e+00, %5578 ]
  %5655 = call float @dx.op.binary.f32(i32 36, float %5654, float %5654)  ; FMin(a,b)
  %5656 = call float @dx.op.binary.f32(i32 36, float %5654, float %5655)  ; FMin(a,b)
  %5657 = fcmp fast ogt float %5656, 0.000000e+00
  br i1 %5657, label %5666, label %5658, !dx.controlflow.hints !76

; <label>:5658                                    ; preds = %5902, %5653
  %5659 = phi float [ %5580, %5653 ], [ %5942, %5902 ]
  %5660 = phi float [ %5581, %5653 ], [ %5943, %5902 ]
  %5661 = phi float [ %5582, %5653 ], [ %5944, %5902 ]
  %5662 = phi float [ %5583, %5653 ], [ %5936, %5902 ]
  %5663 = phi float [ %5584, %5653 ], [ %5937, %5902 ]
  %5664 = phi float [ %5585, %5653 ], [ %5938, %5902 ]
  %5665 = icmp eq i32 %5579, %5589
  br i1 %5665, label %5945, label %5578

; <label>:5666                                    ; preds = %5653
  %5667 = fmul fast float %5654, %5612
  %5668 = fmul fast float %5654, %5613
  %5669 = fmul fast float %5654, %5614
  %5670 = fsub fast float %5606, %4266
  %5671 = fcmp fast ogt float %5670, 0.000000e+00
  %5672 = fsub fast float %165, %4266
  %5673 = fcmp fast ogt float %5672, 0.000000e+00
  %5674 = xor i1 %5673, %5671
  %5675 = fsub fast float %4266, %5606
  %5676 = fmul fast float %5675, 2.000000e+00
  %5677 = fadd fast float %5676, %5606
  %5678 = select i1 %5674, float %5606, float %5677
  %5679 = fsub fast float %5678, %165
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5679, float %5615, float %5616, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.unary.f32(i32 25, float %5680)  ; Rsqrt(value)
  %5682 = fmul fast float %5681, %5615
  %5683 = fmul fast float %5681, %5616
  %5684 = fmul fast float %5681, %5679
  %5685 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4274)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5682, float %5683, float %5684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = fdiv fast float 1.000000e+00, %5686
  %5688 = fmul fast float %5687, %5685
  %5689 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5672, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fcmp fast ogt float %5689, 0.000000e+00
  %5691 = fcmp fast olt float %5689, 0.000000e+00
  %5692 = zext i1 %5690 to i32
  %5693 = zext i1 %5691 to i32
  %5694 = sub nsw i32 %5692, %5693
  %5695 = sitofp i32 %5694 to float
  %5696 = fsub fast float %5678, %4266
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5696, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fcmp fast ogt float %5697, 0.000000e+00
  %5699 = fcmp fast olt float %5697, 0.000000e+00
  %5700 = zext i1 %5698 to i32
  %5701 = zext i1 %5699 to i32
  %5702 = sub nsw i32 %5700, %5701
  %5703 = sitofp i32 %5702 to float
  %5704 = fcmp fast une float %5695, %5703
  br i1 %5704, label %5705, label %5715

; <label>:5705                                    ; preds = %5666
  %5706 = fmul fast float %5688, %5684
  %5707 = fmul fast float %5688, %5683
  %5708 = fmul fast float %5688, %5682
  %5709 = fmul fast float %5708, %5708
  %5710 = fmul fast float %5707, %5707
  %5711 = fadd fast float %5709, %5710
  %5712 = fmul fast float %5706, %5706
  %5713 = fadd fast float %5711, %5712
  %5714 = call float @dx.op.unary.f32(i32 24, float %5713)  ; Sqrt(value)
  br label %5727

; <label>:5715                                    ; preds = %5666
  %5716 = icmp slt i32 %5694, 0
  br i1 %5716, label %5717, label %5727

; <label>:5717                                    ; preds = %5715
  %5718 = fsub fast float %163, %5604
  %5719 = fsub fast float %164, %5605
  %5720 = fsub fast float %165, %5678
  %5721 = fmul fast float %5718, %5718
  %5722 = fmul fast float %5719, %5719
  %5723 = fadd fast float %5721, %5722
  %5724 = fmul fast float %5720, %5720
  %5725 = fadd fast float %5723, %5724
  %5726 = call float @dx.op.unary.f32(i32 24, float %5725)  ; Sqrt(value)
  br label %5727

; <label>:5727                                    ; preds = %5717, %5715, %5705
  %5728 = phi float [ %5714, %5705 ], [ %5726, %5717 ], [ 0.000000e+00, %5715 ]
  %5729 = and i1 %5673, %5671
  %5730 = fsub fast float -0.000000e+00, %5728
  %5731 = select i1 %5729, float -0.000000e+00, float %5730
  %5732 = fmul fast float %4267, 0x3FF7154760000000
  %5733 = fmul fast float %5732, %5731
  %5734 = fmul fast float %4268, 0x3FF7154760000000
  %5735 = fmul fast float %5734, %5731
  %5736 = fmul fast float %4269, 0x3FF7154760000000
  %5737 = fmul fast float %5736, %5731
  %5738 = call float @dx.op.unary.f32(i32 21, float %5733)  ; Exp(value)
  %5739 = call float @dx.op.unary.f32(i32 21, float %5735)  ; Exp(value)
  %5740 = call float @dx.op.unary.f32(i32 21, float %5737)  ; Exp(value)
  %5741 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5742 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5743 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5744 = fmul fast float %5667, %5741
  %5745 = fmul fast float %5668, %5742
  %5746 = fmul fast float %5669, %5743
  %5747 = fsub fast float %5621, %5058
  %5748 = fsub fast float %5622, %5057
  %5749 = fsub fast float %5623, %5056
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5751, %5747
  %5753 = fmul fast float %5751, %5748
  %5754 = fmul fast float %5751, %5749
  %5755 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5065, float %5066, float %5067)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5054, float %5053, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5758 = fmul fast float %5757, %5628
  %5759 = fmul fast float %5757, %5757
  %5760 = fmul fast float %5759, %5281
  %5761 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5762 = fmul fast float %5758, %5761
  %5763 = bitcast float %5618 to i32
  %5764 = ashr i32 %5763, 1
  %5765 = sub nsw i32 1597463007, %5764
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5766, %5615
  %5768 = fmul fast float %5766, %5616
  %5769 = fmul fast float %5766, %5617
  %5770 = fsub fast float %5767, %5058
  %5771 = fsub fast float %5768, %5057
  %5772 = fsub fast float %5769, %5056
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5771, float %5772, float %5770, float %5771, float %5772)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = call float @dx.op.unary.f32(i32 25, float %5773)  ; Rsqrt(value)
  %5775 = fmul fast float %5770, %5774
  %5776 = fmul fast float %5771, %5774
  %5777 = fmul fast float %5772, %5774
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float %5775, float %5776, float %5777)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = fmul fast float %5778, %5778
  %5780 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5781 = fsub fast float 1.000000e+00, %5068
  %5782 = call float @dx.op.binary.f32(i32 35, float %5781, float 0x3F847AE140000000)  ; FMax(a,b)
  %5783 = fmul fast float %5782, %5782
  %5784 = fmul fast float %5783, %5783
  %5785 = fsub fast float 1.000000e+00, %5784
  %5786 = fmul fast float %5072, %5072
  %5787 = fmul fast float %5786, %5785
  %5788 = fadd fast float %5787, %5784
  %5789 = bitcast float %5788 to i32
  %5790 = ashr i32 %5789, 1
  %5791 = add nsw i32 %5790, 532487669
  %5792 = bitcast i32 %5791 to float
  %5793 = fadd fast float %5792, %5072
  %5794 = fmul fast float %5784, %5779
  %5795 = fsub fast float 1.000000e+00, %5779
  %5796 = fadd fast float %5795, %5794
  %5797 = fmul fast float %5780, %5780
  %5798 = fmul fast float %5797, %5785
  %5799 = fadd fast float %5798, %5784
  %5800 = bitcast float %5799 to i32
  %5801 = ashr i32 %5800, 1
  %5802 = add nsw i32 %5801, 532487669
  %5803 = bitcast i32 %5802 to float
  %5804 = fadd fast float %5803, %5780
  %5805 = fmul fast float %5796, %5796
  %5806 = fmul fast float %5805, %5793
  %5807 = fmul fast float %5806, %5804
  %5808 = fdiv fast float 1.000000e+00, %5807
  %5809 = bitcast float %5784 to i32
  %5810 = sitofp i32 %5809 to float
  %5811 = fmul fast float %5810, 0x3FE7F73180000000
  %5812 = fadd fast float %5811, 0x41AFE27C40000000
  %5813 = fptosi float %5812 to i32
  %5814 = bitcast i32 %5813 to float
  %5815 = fmul fast float %5601, 0x3FD80E9D60000000
  %5816 = fmul fast float %5815, %5766
  %5817 = fadd fast float %5814, %5816
  %5818 = bitcast float %5817 to i32
  %5819 = sub nsw i32 2129859010, %5818
  %5820 = bitcast i32 %5819 to float
  %5821 = fmul fast float %5784, %5808
  %5822 = fmul fast float %5821, %5814
  %5823 = fmul fast float %5822, %5820
  %5824 = call float @dx.op.unary.f32(i32 6, float %5756)  ; FAbs(value)
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = bitcast float %5825 to i32
  %5827 = sitofp i32 %5826 to float
  %5828 = fmul fast float %5827, 5.000000e+00
  %5829 = fadd fast float %5828, 0xC1EFBF8940000000
  %5830 = fptosi float %5829 to i32
  %5831 = bitcast i32 %5830 to float
  %5832 = fsub fast float 1.000000e+00, %5062
  %5833 = fsub fast float 1.000000e+00, %5063
  %5834 = fsub fast float 1.000000e+00, %5070
  %5835 = fmul fast float %5831, %5832
  %5836 = fmul fast float %5831, %5833
  %5837 = fmul fast float %5831, %5834
  %5838 = fadd fast float %5835, %5062
  %5839 = fadd fast float %5836, %5063
  %5840 = fadd fast float %5837, %5070
  br i1 %5196, label %5841, label %5864

; <label>:5841                                    ; preds = %5727
  %5842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3865, float %5824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5846 = fadd fast float %5843, -5.000000e-01
  %5847 = fadd fast float %5844, -5.000000e-01
  %5848 = fadd fast float %5845, -5.000000e-01
  %5849 = fmul fast float %5062, 4.000000e+00
  %5850 = fmul fast float %5849, %5832
  %5851 = fmul fast float %5850, %5846
  %5852 = fmul fast float %5063, 4.000000e+00
  %5853 = fmul fast float %5852, %5833
  %5854 = fmul fast float %5853, %5847
  %5855 = fmul fast float %5070, 4.000000e+00
  %5856 = fmul fast float %5855, %5834
  %5857 = fmul fast float %5856, %5848
  %5858 = fadd fast float %5851, %5838
  %5859 = fadd fast float %5854, %5839
  %5860 = fadd fast float %5857, %5840
  %5861 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5862 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5863 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  br label %5864

; <label>:5864                                    ; preds = %5841, %5727
  %5865 = phi float [ %5861, %5841 ], [ %5838, %5727 ]
  %5866 = phi float [ %5862, %5841 ], [ %5839, %5727 ]
  %5867 = phi float [ %5863, %5841 ], [ %5840, %5727 ]
  %5868 = fmul fast float %5755, 9.843750e-01
  %5869 = fadd fast float %5868, 7.812500e-03
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5869, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 3
  %5873 = fmul fast float %5871, %5062
  %5874 = fmul fast float %5871, %5063
  %5875 = fmul fast float %5871, %5070
  %5876 = fadd fast float %5873, %5872
  %5877 = fadd fast float %5874, %5872
  %5878 = fadd fast float %5875, %5872
  br i1 %5196, label %5879, label %5902

; <label>:5879                                    ; preds = %5864
  %5880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %3865, float %5755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5884 = fadd fast float %5881, -5.000000e-01
  %5885 = fadd fast float %5882, -5.000000e-01
  %5886 = fadd fast float %5883, -5.000000e-01
  %5887 = fmul fast float %5062, 4.000000e+00
  %5888 = fmul fast float %5887, %5832
  %5889 = fmul fast float %5888, %5884
  %5890 = fmul fast float %5063, 4.000000e+00
  %5891 = fmul fast float %5890, %5833
  %5892 = fmul fast float %5891, %5885
  %5893 = fmul fast float %5070, 4.000000e+00
  %5894 = fmul fast float %5893, %5834
  %5895 = fmul fast float %5894, %5886
  %5896 = fadd fast float %5889, %5876
  %5897 = fadd fast float %5892, %5877
  %5898 = fadd fast float %5895, %5878
  %5899 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5900 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5901 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  br label %5902

; <label>:5902                                    ; preds = %5879, %5864
  %5903 = phi float [ %5899, %5879 ], [ %5876, %5864 ]
  %5904 = phi float [ %5900, %5879 ], [ %5877, %5864 ]
  %5905 = phi float [ %5901, %5879 ], [ %5878, %5864 ]
  %5906 = call float @dx.op.binary.f32(i32 35, float %5904, float %5905)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5903, float %5906)  ; FMax(a,b)
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = fmul fast float %5865, %5823
  %5910 = fmul fast float %5866, %5823
  %5911 = fmul fast float %5867, %5823
  %5912 = fsub fast float 1.000000e+00, %5756
  %5913 = bitcast float %5912 to i32
  %5914 = sitofp i32 %5913 to float
  %5915 = fmul fast float %5914, 5.000000e+00
  %5916 = fadd fast float %5915, 0xC1EFBF8940000000
  %5917 = fptosi float %5916 to i32
  %5918 = bitcast i32 %5917 to float
  %5919 = fmul fast float %5918, %3866
  %5920 = fmul fast float %5908, %5919
  %5921 = fmul fast float %5920, %5246
  %5922 = fmul fast float %5920, %5247
  %5923 = fmul fast float %5920, %5248
  %5924 = fadd fast float %5921, %5909
  %5925 = fadd fast float %5922, %5910
  %5926 = fadd fast float %5923, %5911
  %5927 = fmul fast float %5744, %3862
  %5928 = fmul fast float %5927, %5762
  %5929 = fmul fast float %5928, %5908
  %5930 = fmul fast float %5745, %3862
  %5931 = fmul fast float %5930, %5762
  %5932 = fmul fast float %5931, %5908
  %5933 = fmul fast float %5746, %3862
  %5934 = fmul fast float %5933, %5762
  %5935 = fmul fast float %5934, %5908
  %5936 = fadd fast float %5929, %5583
  %5937 = fadd fast float %5932, %5584
  %5938 = fadd fast float %5935, %5585
  %5939 = fmul fast float %5928, %5924
  %5940 = fmul fast float %5931, %5925
  %5941 = fmul fast float %5934, %5926
  %5942 = fadd fast float %5939, %5580
  %5943 = fadd fast float %5940, %5581
  %5944 = fadd fast float %5941, %5582
  br label %5658

; <label>:5945                                    ; preds = %5658
  br label %5946

; <label>:5946                                    ; preds = %5945, %5546
  %5947 = phi float [ %5548, %5546 ], [ %5659, %5945 ]
  %5948 = phi float [ %5549, %5546 ], [ %5660, %5945 ]
  %5949 = phi float [ %5550, %5546 ], [ %5661, %5945 ]
  %5950 = phi float [ %5551, %5546 ], [ %5662, %5945 ]
  %5951 = phi float [ %5552, %5546 ], [ %5663, %5945 ]
  %5952 = phi float [ %5553, %5546 ], [ %5664, %5945 ]
  %5953 = add i32 %5547, 1
  %5954 = icmp ugt i32 %5953, %5543
  br i1 %5954, label %5955, label %5546

; <label>:5955                                    ; preds = %5946
  br label %5956

; <label>:5956                                    ; preds = %5955, %5522, %5512
  %5957 = phi float [ %5513, %5512 ], [ %5513, %5522 ], [ %5947, %5955 ]
  %5958 = phi float [ %5514, %5512 ], [ %5514, %5522 ], [ %5948, %5955 ]
  %5959 = phi float [ %5515, %5512 ], [ %5515, %5522 ], [ %5949, %5955 ]
  %5960 = phi float [ %5516, %5512 ], [ %5516, %5522 ], [ %5950, %5955 ]
  %5961 = phi float [ %5517, %5512 ], [ %5517, %5522 ], [ %5951, %5955 ]
  %5962 = phi float [ %5518, %5512 ], [ %5518, %5522 ], [ %5952, %5955 ]
  %5963 = call float @dx.op.unary.f32(i32 24, float %5059)  ; Sqrt(value)
  %5964 = call float @dx.op.unary.f32(i32 24, float %5060)  ; Sqrt(value)
  %5965 = call float @dx.op.unary.f32(i32 24, float %5061)  ; Sqrt(value)
  %5966 = fmul fast float %5963, %5960
  %5967 = fmul fast float %5964, %5961
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  br i1 %202, label %5970, label %5990

; <label>:5970                                    ; preds = %5956
  %5971 = fadd fast float %5962, %3868
  %5972 = fmul fast float %5971, %3869
  %5973 = fsub fast float 1.000000e+00, %3869
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 3
  %5977 = fmul fast float %5976, %5974
  %5978 = fadd fast float %5977, %5972
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = fmul fast float %5980, %5252
  %5982 = fsub fast float %5978, %5981
  %5983 = fadd fast float %5967, %5966
  %5984 = fmul fast float %5969, %5983
  %5985 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5986 = fsub fast float %5982, %5985
  %5987 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %5988 = fmul fast float %5986, %5987
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  br label %6006

; <label>:5990                                    ; preds = %5956
  %5991 = fmul fast float %5965, %5962
  %5992 = fmul fast float %5969, %5966
  %5993 = fmul fast float %5969, %5967
  %5994 = fmul fast float %5991, %5969
  %5995 = add i32 %32, 356
  %5996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5995, i32 undef)  ; BufferLoad(srv,index,wot)
  %5997 = extractvalue %dx.types.ResRet.i32 %5996, 0
  %5998 = and i32 %5997, 32
  %5999 = icmp eq i32 %5998, 0
  br i1 %5999, label %6006, label %6000

; <label>:6000                                    ; preds = %5990
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = fmul fast float %6002, 0x3FE99999A0000000
  %6004 = fadd fast float %6002, %5992
  %6005 = fadd fast float %6003, %5994
  br label %6006

; <label>:6006                                    ; preds = %6000, %5990, %5970
  %6007 = phi float [ %5984, %5970 ], [ %6004, %6000 ], [ %5992, %5990 ]
  %6008 = phi float [ %5989, %5970 ], [ %5993, %6000 ], [ %5993, %5990 ]
  %6009 = phi float [ 1.000000e+00, %5970 ], [ %6005, %6000 ], [ %5994, %5990 ]
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = fmul fast float %6011, %5958
  %6013 = fmul fast float %6011, %5959
  %6014 = fadd fast float %5958, %5957
  %6015 = select i1 %202, float %6014, float %5957
  %6016 = fmul float %6015, %6011
  %6017 = select i1 %202, float 0.000000e+00, float %6012
  %6018 = select i1 %202, float 0.000000e+00, float %6013
  %6019 = fmul fast float %6007, %5963
  %6020 = fmul fast float %6008, %5964
  %6021 = fmul fast float %6009, %5965
  %6022 = fadd fast float %6016, %6019
  %6023 = fadd fast float %6017, %6020
  %6024 = fadd fast float %6018, %6021
  %6025 = select i1 %202, float %6008, float %6023
  %6026 = select i1 %202, float %6009, float %6024
  %6027 = call float @dx.op.binary.f32(i32 36, float %6022, float 3.225500e+04)  ; FMin(a,b)
  %6028 = call float @dx.op.binary.f32(i32 36, float %6025, float 3.225500e+04)  ; FMin(a,b)
  %6029 = call float @dx.op.binary.f32(i32 36, float %6026, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6027)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6028)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6029)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

