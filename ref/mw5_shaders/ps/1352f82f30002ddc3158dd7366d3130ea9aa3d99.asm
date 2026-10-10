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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; ENTITY_IDS               0   xy         13     NONE    uint   x   
; SV_IsFrontFace           0     z        13    FFACE    uint     z 
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0cee1f8c33b0bde99f60f5c177bca64e
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d     T10     t37,space2     1
;                                   texture     f32          2d     T11     t58,space2     1
;                                   texture     f32          2d     T12     t59,space2     1
;                                   texture     f32          2d     T13     t60,space2     1
;                                   texture    byte         r/o     T14     t45,space1     1
;                                   texture    byte         r/o     T15     t46,space1     1
;                                   texture    byte         r/o     T16     t47,space1     1
;                                   texture    byte         r/o     T17     t48,space1     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21     t68,space1     1
;                                   texture     f32          2d     T22      t0,space2     1
;                                   texture    byte         r/o     T23     t11,space1     1
;                                   texture    byte         r/o     T24     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = icmp ne i32 %28, 0
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %72
  %80 = fmul fast float %78, %73
  %81 = select i1 %29, float 1.000000e+00, float -1.000000e+00
  %82 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %64, %81
  %88 = fmul fast float %87, %86
  %89 = fmul fast float %65, %81
  %90 = fmul fast float %89, %86
  %91 = fmul fast float %66, %81
  %92 = fmul fast float %91, %86
  %93 = fmul fast float %65, %62
  %94 = fmul fast float %66, %61
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %66, %60
  %97 = fmul fast float %64, %62
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %64, %61
  %100 = fmul fast float %65, %60
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %95, %63
  %103 = fmul fast float %98, %63
  %104 = fmul fast float %101, %63
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fcmp fast une float %106, 0.000000e+00
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %79, 2.000000e+00
  %112 = fmul fast float %111, %109
  %113 = fmul fast float %80, 2.000000e+00
  %114 = fmul fast float %113, %110
  %115 = fsub fast float 1.000000e+00, %112
  %116 = fsub fast float 1.000000e+00, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = select i1 %107, float %118, float %122
  %126 = select i1 %107, float %119, float %123
  %127 = select i1 %107, float %120, float %124
  %128 = fmul fast float %125, %115
  %129 = fmul fast float %126, %115
  %130 = fmul fast float %127, %115
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = select i1 %107, float %132, float %136
  %140 = select i1 %107, float %133, float %137
  %141 = select i1 %107, float %134, float %138
  %142 = fmul fast float %139, %116
  %143 = fmul fast float %140, %116
  %144 = fmul fast float %141, %116
  %145 = fadd fast float %142, %128
  %146 = fadd fast float %143, %129
  %147 = fadd fast float %144, %130
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %107, float %149, float %153
  %157 = select i1 %107, float %150, float %154
  %158 = select i1 %107, float %151, float %155
  %159 = fadd fast float %145, %156
  %160 = fadd fast float %146, %157
  %161 = fadd fast float %147, %158
  %162 = fmul fast float %159, %74
  %163 = fmul fast float %160, %74
  %164 = fmul fast float %161, %74
  %165 = shl i32 %31, 5
  %166 = add i32 %165, 4194304
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = extractvalue %dx.types.ResRet.i32 %167, 1
  %170 = extractvalue %dx.types.ResRet.i32 %167, 2
  %171 = extractvalue %dx.types.ResRet.i32 %167, 3
  %172 = add i32 %165, 4194320
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = extractvalue %dx.types.ResRet.i32 %173, 1
  %176 = bitcast i32 %174 to float
  %177 = bitcast i32 %175 to float
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %181 = fmul fast float %179, %79
  %182 = fmul fast float %180, %80
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 114688
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float %181, float 0.000000e+00
  %188 = select i1 %186, float %182, float 0.000000e+00
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fmul fast float %190, 2.550000e+02
  %192 = fptoui float %191 to i32
  %193 = select i1 %186, i32 %192, i32 0
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 3
  %196 = and i32 %195, 3
  %197 = icmp ne i32 %196, 0
  %198 = and i32 %195, 4
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %197, %199
  br i1 %200, label %201, label %210

; <label>:201                                     ; preds = %0
  %202 = fmul fast float %110, %80
  %203 = fmul fast float %109, %79
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %203, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fsub fast float 1.000000e+00, %205
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fcmp fast olt float %206, %208
  br label %213

; <label>:210                                     ; preds = %0
  %211 = icmp eq i32 %198, 0
  %212 = and i1 %197, %211
  br label %213

; <label>:213                                     ; preds = %210, %201
  %214 = phi i1 [ %209, %201 ], [ %212, %210 ]
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, 0x3FE3C6EF40000000
  %218 = frem fast float %79, 2.560000e+02
  %219 = frem fast float %80, 2.560000e+02
  %220 = fptoui float %218 to i32
  %221 = fptoui float %219 to i32
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %220, i32 %221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fadd fast float %223, %217
  %225 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %226 = add i32 %30, 156
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = shl i32 %228, 4
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %228, 7
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %228, 22
  %236 = shl nuw nsw i32 %235, 5
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %30, 216
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %240, 8
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %240, 16
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = add i32 %30, 36
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %30, 288
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %261, 16
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = fmul fast float %263, 0x3F50624DE0000000
  %267 = fmul fast float %265, 0x3F50624DE0000000
  %268 = add i32 %30, 172
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = shl i32 %270, 4
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %270, 7
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %270, 22
  %278 = shl nuw nsw i32 %277, 5
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %30, 232
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %282, 8
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %282, 16
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = add i32 %30, 52
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %30, 304
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %305, 0x3F50624DE0000000
  %309 = fmul fast float %307, 0x3F50624DE0000000
  %310 = add i32 %30, 188
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = shl i32 %312, 4
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %312, 7
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %312, 22
  %320 = shl nuw nsw i32 %319, 5
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %30, 248
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %324, 8
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %324, 16
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = add i32 %30, 68
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = add i32 %30, 320
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = fmul fast float %347, 0x3F50624DE0000000
  %351 = fmul fast float %349, 0x3F50624DE0000000
  %352 = add i32 %30, 204
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = shl i32 %354, 4
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %354, 7
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %354, 22
  %362 = shl nuw nsw i32 %361, 5
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = add i32 %30, 264
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %366, 8
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %366, 16
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = add i32 %30, 84
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = add i32 %30, 336
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %387, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = fmul fast float %389, 0x3F50624DE0000000
  %393 = fmul fast float %391, 0x3F50624DE0000000
  %394 = add i32 %30, 348
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 32
  %398 = icmp eq i32 %397, 0
  %399 = and i32 %396, 64
  %400 = icmp eq i32 %399, 0
  %401 = and i32 %396, 128
  %402 = icmp eq i32 %401, 0
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 2
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %420, label %407

; <label>:407                                     ; preds = %213
  %408 = add i32 %30, 492
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = add i32 %410, 0
  %412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %412, %dx.types.Handle %76, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = fmul fast float %414, %69
  %418 = fmul fast float %415, %70
  %419 = fmul fast float %416, %71
  br label %420

; <label>:420                                     ; preds = %407, %213
  %421 = phi float [ %71, %213 ], [ %419, %407 ]
  %422 = phi float [ %70, %213 ], [ %418, %407 ]
  %423 = phi float [ %69, %213 ], [ %417, %407 ]
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 2
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %447, label %428

; <label>:428                                     ; preds = %420
  %429 = add i32 %30, 44
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %423, float 1.000000e+00
  %435 = add i32 %30, 60
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %422, float 1.000000e+00
  %441 = add i32 %30, 76
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %421, float 1.000000e+00
  br label %447

; <label>:447                                     ; preds = %428, %420
  %448 = phi float [ %421, %420 ], [ %446, %428 ]
  %449 = phi float [ %422, %420 ], [ %440, %428 ]
  %450 = phi float [ %423, %420 ], [ %434, %428 ]
  %451 = lshr i32 %425, 20
  %452 = and i32 %451, 3
  %453 = add nuw nsw i32 %452, 1
  %454 = add i32 %30, 24
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %30, 28
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = or i32 %459, %456
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %973, label %462

; <label>:462                                     ; preds = %447
  %463 = and i32 %456, 262144
  %464 = icmp ne i32 %463, 0
  %465 = select i1 %464, float %35, float 1.000000e+00
  %466 = select i1 %464, float %36, float 0.000000e+00
  %467 = select i1 %464, float %37, float 0.000000e+00
  %468 = select i1 %464, float %38, float 1.000000e+00
  %469 = select i1 %464, float %39, float %67
  %470 = select i1 %464, float %40, float %68
  %471 = add i32 %30, 284
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 16
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = fmul fast float %475, 0x3F50624DE0000000
  %477 = add i32 %30, 88
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = and i32 %480, 255
  %482 = lshr i32 %479, 24
  %483 = add i32 %30, 292
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 65535
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %485, 16
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = add i32 %30, 32
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = lshr i32 %492, 22
  %494 = shl nuw nsw i32 %493, 5
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = shl i32 %492, 4
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %492, 7
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 3
  %504 = fmul fast float %503, 1.000000e+03
  %505 = fmul fast float %266, %504
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = fadd fast float %506, %256
  %508 = fmul fast float %267, %504
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %258
  %511 = fmul fast float %476, %504
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fmul fast float %512, 0x401921FB60000000
  %514 = fadd fast float %513, %495
  %515 = call float @dx.op.unary.f32(i32 13, float %514)  ; Sin(value)
  %516 = call float @dx.op.unary.f32(i32 12, float %514)  ; Cos(value)
  %517 = fsub fast float -0.000000e+00, %515
  %518 = fadd fast float %469, -5.000000e-01
  %519 = fadd fast float %470, -5.000000e-01
  %520 = fmul fast float %487, %518
  %521 = fmul fast float %489, %519
  %522 = fadd fast float %520, 5.000000e-01
  %523 = fadd fast float %521, 5.000000e-01
  %524 = fmul fast float %498, %522
  %525 = fmul fast float %501, %523
  %526 = fmul fast float %516, %524
  %527 = call float @dx.op.tertiary.f32(i32 46, float %517, float %525, float %526)  ; FMad(a,b,c)
  %528 = fmul fast float %515, %524
  %529 = call float @dx.op.tertiary.f32(i32 46, float %516, float %525, float %528)  ; FMad(a,b,c)
  %530 = fadd fast float %507, %527
  %531 = fadd fast float %510, %529
  %532 = icmp ugt i32 %481, 1
  %533 = icmp ugt i32 %479, 33554431
  %534 = or i1 %533, %532
  br i1 %534, label %535, label %560

; <label>:535                                     ; preds = %462
  %536 = add i32 %30, 228
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = lshr i32 %538, 16
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = fmul fast float %503, %540
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = mul nuw nsw i32 %481, %482
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %542, %544
  %546 = call float @dx.op.unary.f32(i32 27, float %545)  ; Round_ni(value)
  %547 = fptoui float %546 to i32
  %548 = urem i32 %547, %481
  %549 = udiv i32 %547, %482
  %550 = call float @dx.op.unary.f32(i32 22, float %530)  ; Frc(value)
  %551 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %552 = uitofp i32 %548 to float
  %553 = uitofp i32 %549 to float
  %554 = fadd fast float %550, %552
  %555 = fadd fast float %551, %553
  %556 = uitofp i32 %481 to float
  %557 = uitofp i32 %482 to float
  %558 = fdiv fast float %554, %556
  %559 = fdiv fast float %555, %557
  br label %560

; <label>:560                                     ; preds = %535, %462
  %561 = phi float [ %558, %535 ], [ %530, %462 ]
  %562 = phi float [ %559, %535 ], [ %531, %462 ]
  %563 = and i32 %456, 16
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %761, label %565

; <label>:565                                     ; preds = %560
  %566 = add i32 %30, 376
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = add i32 %568, 0
  %570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %570, %dx.types.Handle %75, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = extractvalue %dx.types.ResRet.f32 %571, 3
  %576 = and i32 %479, 255
  %577 = uitofp i32 %576 to float
  %578 = lshr i32 %479, 8
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %575, %577
  %582 = fadd fast float %581, %580
  %583 = fmul fast float %582, 0x3F70101000000000
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 512
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %596, label %588

; <label>:588                                     ; preds = %565
  %589 = add i32 %30, 460
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %591, 0
  %593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %593, %dx.types.Handle %76, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  br label %596

; <label>:596                                     ; preds = %588, %565
  %597 = phi float [ %595, %588 ], [ 1.000000e+00, %565 ]
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 33554432
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %708, label %602

; <label>:602                                     ; preds = %596
  %603 = add i32 %30, 224
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %605, 16
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = add i32 %30, 228
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 24
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = and i32 %616, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = lshr i32 %616, 8
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %616, 16
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = add i32 %30, 220
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = lshr i32 %633, 24
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = and i32 %633, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = lshr i32 %633, 8
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %633, 16
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = bitcast float %572 to i32
  %649 = ashr i32 %648, 1
  %650 = sub nsw i32 1597463174, %649
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %572, 5.000000e-01
  %653 = fmul fast float %651, %651
  %654 = fmul fast float %653, %652
  %655 = fsub fast float 1.500000e+00, %654
  %656 = fmul fast float %651, %572
  %657 = fmul fast float %656, %655
  %658 = bitcast float %573 to i32
  %659 = ashr i32 %658, 1
  %660 = sub nsw i32 1597463174, %659
  %661 = bitcast i32 %660 to float
  %662 = fmul fast float %573, 5.000000e-01
  %663 = fmul fast float %661, %661
  %664 = fmul fast float %663, %662
  %665 = fsub fast float 1.500000e+00, %664
  %666 = fmul fast float %661, %573
  %667 = fmul fast float %666, %665
  %668 = bitcast float %574 to i32
  %669 = ashr i32 %668, 1
  %670 = sub nsw i32 1597463174, %669
  %671 = bitcast i32 %670 to float
  %672 = fmul fast float %574, 5.000000e-01
  %673 = fmul fast float %671, %671
  %674 = fmul fast float %673, %672
  %675 = fsub fast float 1.500000e+00, %674
  %676 = fmul fast float %671, %574
  %677 = fmul fast float %676, %675
  %678 = fsub fast float %657, %639
  %679 = fsub fast float %667, %643
  %680 = fsub fast float %677, %647
  %681 = fmul fast float %678, %607
  %682 = fmul fast float %679, %609
  %683 = fmul fast float %680, %614
  %684 = fadd fast float %681, %622
  %685 = fadd fast float %682, %626
  %686 = fadd fast float %683, %630
  %687 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %689 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %690 = fmul fast float %687, %687
  %691 = fmul fast float %688, %688
  %692 = fmul fast float %689, %689
  %693 = fsub fast float %690, %572
  %694 = fsub fast float %691, %573
  %695 = fsub fast float %692, %574
  %696 = fmul fast float %693, %597
  %697 = fmul fast float %694, %597
  %698 = fmul fast float %695, %597
  %699 = fadd fast float %696, %572
  %700 = fadd fast float %697, %573
  %701 = fadd fast float %698, %574
  %702 = fadd fast float %619, %583
  %703 = fsub fast float %702, %636
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = fsub fast float %704, %583
  %706 = fmul fast float %705, %597
  %707 = fadd fast float %706, %583
  br label %761

; <label>:708                                     ; preds = %596
  %709 = and i32 %599, 134217728
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %745, label %711

; <label>:711                                     ; preds = %708
  %712 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %713 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %715 = fadd fast float %712, -5.000000e-01
  %716 = fadd fast float %713, -5.000000e-01
  %717 = fadd fast float %714, -5.000000e-01
  %718 = fmul fast float %715, %597
  %719 = fmul fast float %716, %597
  %720 = fmul fast float %717, %597
  %721 = fadd fast float %718, 5.000000e-01
  %722 = fadd fast float %719, 5.000000e-01
  %723 = fadd fast float %720, 5.000000e-01
  %724 = call float @dx.op.unary.f32(i32 24, float %572)  ; Sqrt(value)
  %725 = call float @dx.op.unary.f32(i32 24, float %573)  ; Sqrt(value)
  %726 = call float @dx.op.unary.f32(i32 24, float %574)  ; Sqrt(value)
  %727 = fmul fast float %721, 2.000000e+00
  %728 = fsub fast float 1.000000e+00, %727
  %729 = fmul fast float %728, %724
  %730 = fadd fast float %729, %727
  %731 = fmul fast float %730, %724
  %732 = fmul fast float %722, 2.000000e+00
  %733 = fsub fast float 1.000000e+00, %732
  %734 = fmul fast float %733, %725
  %735 = fadd fast float %734, %732
  %736 = fmul fast float %735, %725
  %737 = fmul fast float %723, 2.000000e+00
  %738 = fsub fast float 1.000000e+00, %737
  %739 = fmul fast float %738, %726
  %740 = fadd fast float %739, %737
  %741 = fmul fast float %740, %726
  %742 = fmul fast float %731, %731
  %743 = fmul fast float %736, %736
  %744 = fmul fast float %741, %741
  br label %761

; <label>:745                                     ; preds = %708
  %746 = fmul fast float %243, %243
  %747 = fmul fast float %247, %247
  %748 = fmul fast float %251, %251
  %749 = fadd fast float %746, -1.000000e+00
  %750 = fadd fast float %747, -1.000000e+00
  %751 = fadd fast float %748, -1.000000e+00
  %752 = fmul fast float %597, %749
  %753 = fmul fast float %597, %750
  %754 = fmul fast float %597, %751
  %755 = fadd fast float %752, 1.000000e+00
  %756 = fadd fast float %753, 1.000000e+00
  %757 = fadd fast float %754, 1.000000e+00
  %758 = fmul fast float %755, %572
  %759 = fmul fast float %756, %573
  %760 = fmul fast float %757, %574
  br label %761

; <label>:761                                     ; preds = %745, %711, %602, %560
  %762 = phi float [ %707, %602 ], [ %583, %711 ], [ %583, %745 ], [ 0x3FA23C0BE0000000, %560 ]
  %763 = phi float [ %699, %602 ], [ %742, %711 ], [ %758, %745 ], [ 1.000000e+00, %560 ]
  %764 = phi float [ %700, %602 ], [ %743, %711 ], [ %759, %745 ], [ 1.000000e+00, %560 ]
  %765 = phi float [ %701, %602 ], [ %744, %711 ], [ %760, %745 ], [ 1.000000e+00, %560 ]
  %766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.i32 %766, 1
  %768 = and i32 %767, 1
  %769 = icmp ne i32 %768, 0
  %770 = add i32 %30, 356
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 32
  %774 = icmp ne i32 %773, 0
  %775 = and i1 %769, %774
  %776 = select i1 %775, float 1.000000e+00, float %763
  %777 = select i1 %775, float 0x3FD3333340000000, float %764
  %778 = select i1 %775, float 0x3FD3333340000000, float %765
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 32
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %855, label %783

; <label>:783                                     ; preds = %761
  %784 = add i32 %30, 92
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %30, 392
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %75, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = and i32 %786, 255
  %798 = uitofp i32 %797 to float
  %799 = lshr i32 %786, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %786, 16
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, 0x3F70101000000000
  %806 = fmul fast float %793, %798
  %807 = fadd fast float %806, %801
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fadd fast float %794, -5.000000e-01
  %810 = fadd fast float %796, -5.000000e-01
  %811 = fmul fast float %809, %805
  %812 = fmul fast float %810, %805
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fmul fast float %813, 2.000000e+00
  %816 = fadd fast float %815, -1.000000e+00
  %817 = fmul fast float %814, 2.000000e+00
  %818 = fadd fast float %817, -1.000000e+00
  %819 = fadd fast float %816, %818
  %820 = fmul fast float %819, 5.000000e-01
  %821 = fsub fast float %816, %818
  %822 = fmul fast float %821, 5.000000e-01
  %823 = call float @dx.op.unary.f32(i32 6, float %820)  ; FAbs(value)
  %824 = fsub fast float 1.000000e+00, %823
  %825 = call float @dx.op.unary.f32(i32 6, float %822)  ; FAbs(value)
  %826 = fsub fast float %824, %825
  %827 = call float @dx.op.dot3.f32(i32 55, float %820, float %822, float %826, float %820, float %822, float %826)  ; Dot3(ax,ay,az,bx,by,bz)
  %828 = call float @dx.op.unary.f32(i32 25, float %827)  ; Rsqrt(value)
  %829 = fmul fast float %820, %828
  %830 = fmul fast float %822, %828
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 67108864
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %851, label %835

; <label>:835                                     ; preds = %783
  %836 = add i32 %30, 280
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 65535
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 65535
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = lshr i32 %838, 16
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = fsub fast float %808, %846
  %848 = fmul fast float %847, %840
  %849 = fadd fast float %848, %844
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  br label %851

; <label>:851                                     ; preds = %835, %783
  %852 = phi float [ %850, %835 ], [ %808, %783 ]
  %853 = call float @dx.op.dot2.f32(i32 54, float %829, float %830, float %465, float %466)  ; Dot2(ax,ay,bx,by)
  %854 = call float @dx.op.dot2.f32(i32 54, float %829, float %830, float %467, float %468)  ; Dot2(ax,ay,bx,by)
  br label %855

; <label>:855                                     ; preds = %851, %761
  %856 = phi float [ %852, %851 ], [ 0x3FD6666660000000, %761 ]
  %857 = phi float [ %853, %851 ], [ 0.000000e+00, %761 ]
  %858 = phi float [ %854, %851 ], [ 0.000000e+00, %761 ]
  %859 = phi float [ %795, %851 ], [ 1.000000e+00, %761 ]
  %860 = add i32 %30, 160
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = lshr i32 %862, 22
  %864 = shl nuw nsw i32 %863, 5
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = and i32 %867, 64
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %903, label %870

; <label>:870                                     ; preds = %855
  %871 = add i32 %30, 408
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = add i32 %873, 0
  %875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, 131072
  %879 = icmp eq i32 %878, 0
  %880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %875, %dx.types.Handle %75, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = fmul fast float %881, %231
  %885 = fmul fast float %882, %234
  %886 = fmul fast float %883, %237
  br i1 %879, label %893, label %887

; <label>:887                                     ; preds = %870
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = fmul fast float %889, %884
  %891 = fmul fast float %889, %885
  %892 = fmul fast float %889, %886
  br label %893

; <label>:893                                     ; preds = %887, %870
  %894 = phi float [ %890, %887 ], [ %884, %870 ]
  %895 = phi float [ %891, %887 ], [ %885, %870 ]
  %896 = phi float [ %892, %887 ], [ %886, %870 ]
  %897 = fmul fast float %894, %865
  %898 = select i1 %214, float %897, float %894
  %899 = call float @dx.op.dot3.f32(i32 55, float %898, float %895, float %896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = select i1 %214, float 0.000000e+00, float %894
  %901 = select i1 %214, float %899, float %895
  %902 = select i1 %214, float 0.000000e+00, float %896
  br label %903

; <label>:903                                     ; preds = %893, %855
  %904 = phi float [ %900, %893 ], [ 0.000000e+00, %855 ]
  %905 = phi float [ %901, %893 ], [ 0.000000e+00, %855 ]
  %906 = phi float [ %902, %893 ], [ 0.000000e+00, %855 ]
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = and i32 %908, 10240
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %955, label %911

; <label>:911                                     ; preds = %903
  %912 = add i32 %30, 476
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %76, float %561, float %562, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 1
  %919 = extractvalue %dx.types.ResRet.f32 %917, 3
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 1048576
  %923 = icmp ne i32 %922, 0
  %924 = and i32 %921, 8192
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %941, label %926

; <label>:926                                     ; preds = %911
  %927 = extractvalue %dx.types.ResRet.f32 %917, 2
  %928 = select i1 %923, float %927, float %918
  %929 = extractvalue %dx.types.ResRet.f32 %917, 0
  %930 = select i1 %923, float %929, float %918
  %931 = add i32 %30, 96
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F80101020000000
  %938 = fmul fast float %937, %930
  %939 = fmul fast float %937, %918
  %940 = fmul fast float %937, %928
  br label %941

; <label>:941                                     ; preds = %926, %911
  %942 = phi float [ %938, %926 ], [ 0.000000e+00, %911 ]
  %943 = phi float [ %939, %926 ], [ 0.000000e+00, %911 ]
  %944 = phi float [ %940, %926 ], [ 0.000000e+00, %911 ]
  %945 = and i32 %921, 2048
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %955, label %947

; <label>:947                                     ; preds = %941
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = shl i32 %949, 4
  %951 = and i32 %950, 32752
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = fmul fast float %952, %919
  %954 = call float @dx.op.binary.f32(i32 35, float %953, float 0x3F70101020000000)  ; FMax(a,b)
  br label %955

; <label>:955                                     ; preds = %947, %941, %903
  %956 = phi float [ %942, %947 ], [ %942, %941 ], [ 0.000000e+00, %903 ]
  %957 = phi float [ %943, %947 ], [ %943, %941 ], [ 0.000000e+00, %903 ]
  %958 = phi float [ %944, %947 ], [ %944, %941 ], [ 0.000000e+00, %903 ]
  %959 = phi float [ %954, %947 ], [ 0x3F70101020000000, %941 ], [ 0x3F70101020000000, %903 ]
  %960 = add i32 %30, 96
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 255
  %964 = uitofp i32 %963 to float
  %965 = lshr i32 %962, 8
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = call float @dx.op.dot3.f32(i32 55, float %776, float %777, float %778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = fmul fast float %967, %968
  %970 = fadd fast float %969, %964
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  br label %973

; <label>:973                                     ; preds = %955, %447
  %974 = phi float [ 0.000000e+00, %447 ], [ %857, %955 ]
  %975 = phi float [ 0.000000e+00, %447 ], [ %858, %955 ]
  %976 = phi float [ 0.000000e+00, %447 ], [ %776, %955 ]
  %977 = phi float [ 0.000000e+00, %447 ], [ %777, %955 ]
  %978 = phi float [ 0.000000e+00, %447 ], [ %778, %955 ]
  %979 = phi float [ 0.000000e+00, %447 ], [ %904, %955 ]
  %980 = phi float [ 0.000000e+00, %447 ], [ %905, %955 ]
  %981 = phi float [ 0.000000e+00, %447 ], [ %906, %955 ]
  %982 = phi float [ 0.000000e+00, %447 ], [ %956, %955 ]
  %983 = phi float [ 0.000000e+00, %447 ], [ %957, %955 ]
  %984 = phi float [ 0.000000e+00, %447 ], [ %958, %955 ]
  %985 = phi float [ 0.000000e+00, %447 ], [ %762, %955 ]
  %986 = phi float [ 0.000000e+00, %447 ], [ 1.000000e+00, %955 ]
  %987 = phi float [ 0.000000e+00, %447 ], [ %856, %955 ]
  %988 = phi float [ 0.000000e+00, %447 ], [ %859, %955 ]
  %989 = phi float [ 0.000000e+00, %447 ], [ %959, %955 ]
  %990 = phi float [ 0.000000e+00, %447 ], [ %972, %955 ]
  br i1 %398, label %1804, label %991

; <label>:991                                     ; preds = %973
  %992 = icmp ult i32 %453, 2
  %993 = add i32 %30, 40
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %30, 44
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = or i32 %998, %995
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1804, label %1001

; <label>:1001                                    ; preds = %991
  %1002 = and i32 %995, 262144
  %1003 = icmp ne i32 %1002, 0
  %1004 = select i1 %1003, float %35, float 1.000000e+00
  %1005 = select i1 %1003, float %36, float 0.000000e+00
  %1006 = select i1 %1003, float %37, float 0.000000e+00
  %1007 = select i1 %1003, float %38, float 1.000000e+00
  %1008 = select i1 %1003, float %39, float %67
  %1009 = select i1 %1003, float %40, float %68
  %1010 = add i32 %30, 300
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = fmul fast float %1014, 0x3F50624DE0000000
  %1016 = add i32 %30, 104
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 16
  %1020 = and i32 %1019, 255
  %1021 = lshr i32 %1018, 24
  %1022 = add i32 %30, 308
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 65535
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1024, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = add i32 %30, 48
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = lshr i32 %1031, 22
  %1033 = shl nuw nsw i32 %1032, 5
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = shl i32 %1031, 4
  %1036 = and i32 %1035, 32752
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = lshr i32 %1031, 7
  %1039 = and i32 %1038, 32752
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 3
  %1043 = fmul fast float %1042, 1.000000e+03
  %1044 = fmul fast float %308, %1043
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = fadd fast float %1045, %298
  %1047 = fmul fast float %309, %1043
  %1048 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1049 = fadd fast float %1048, %300
  %1050 = fmul fast float %1015, %1043
  %1051 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1052 = fmul fast float %1051, 0x401921FB60000000
  %1053 = fadd fast float %1052, %1034
  %1054 = call float @dx.op.unary.f32(i32 13, float %1053)  ; Sin(value)
  %1055 = call float @dx.op.unary.f32(i32 12, float %1053)  ; Cos(value)
  %1056 = fsub fast float -0.000000e+00, %1054
  %1057 = fadd fast float %1008, -5.000000e-01
  %1058 = fadd fast float %1009, -5.000000e-01
  %1059 = fmul fast float %1026, %1057
  %1060 = fmul fast float %1028, %1058
  %1061 = fadd fast float %1059, 5.000000e-01
  %1062 = fadd fast float %1060, 5.000000e-01
  %1063 = fmul fast float %1037, %1061
  %1064 = fmul fast float %1040, %1062
  %1065 = fmul fast float %1055, %1063
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1064, float %1065)  ; FMad(a,b,c)
  %1067 = fmul fast float %1054, %1063
  %1068 = call float @dx.op.tertiary.f32(i32 46, float %1055, float %1064, float %1067)  ; FMad(a,b,c)
  %1069 = fadd fast float %1046, %1066
  %1070 = fadd fast float %1049, %1068
  %1071 = icmp ugt i32 %1020, 1
  %1072 = icmp ugt i32 %1018, 33554431
  %1073 = or i1 %1072, %1071
  br i1 %1073, label %1074, label %1099

; <label>:1074                                    ; preds = %1001
  %1075 = add i32 %30, 244
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = lshr i32 %1077, 16
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = fmul fast float %1042, %1079
  %1081 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1082 = mul nuw nsw i32 %1020, %1021
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1081, %1083
  %1085 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1086 = fptoui float %1085 to i32
  %1087 = urem i32 %1086, %1020
  %1088 = udiv i32 %1086, %1021
  %1089 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1091 = uitofp i32 %1087 to float
  %1092 = uitofp i32 %1088 to float
  %1093 = fadd fast float %1089, %1091
  %1094 = fadd fast float %1090, %1092
  %1095 = uitofp i32 %1020 to float
  %1096 = uitofp i32 %1021 to float
  %1097 = fdiv fast float %1093, %1095
  %1098 = fdiv fast float %1094, %1096
  br label %1099

; <label>:1099                                    ; preds = %1074, %1001
  %1100 = phi float [ %1097, %1074 ], [ %1069, %1001 ]
  %1101 = phi float [ %1098, %1074 ], [ %1070, %1001 ]
  %1102 = and i32 %995, 256
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1150, label %1104

; <label>:1104                                    ; preds = %1099
  %1105 = add i32 %30, 444
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %76, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = add i32 %30, 116
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = shl i32 %1114, 4
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = lshr i32 %1114, 7
  %1119 = and i32 %1118, 32752
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = fsub fast float 1.000000e+00, %450
  %1122 = call float @dx.op.binary.f32(i32 35, float %1121, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1123 = bitcast float %450 to i32
  %1124 = sitofp i32 %1123 to float
  %1125 = fadd fast float %1124, 0xC1CFBF8940000000
  %1126 = fmul fast float %1120, %1125
  %1127 = fadd fast float %1126, 0x41CFBF8940000000
  %1128 = fptosi float %1127 to i32
  %1129 = bitcast i32 %1128 to float
  %1130 = bitcast float %1122 to i32
  %1131 = sitofp i32 %1130 to float
  %1132 = fadd fast float %1131, 0xC1CFBF8940000000
  %1133 = fmul fast float %1132, %1120
  %1134 = fadd fast float %1133, 0x41CFBF8940000000
  %1135 = fptosi float %1134 to i32
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1129, %1117
  %1138 = fmul fast float %1136, %1117
  %1139 = fsub fast float %1122, %1137
  %1140 = fadd fast float %1138, %1122
  %1141 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1142 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1143 = fsub fast float %1111, %1141
  %1144 = fsub fast float %1142, %1141
  %1145 = bitcast float %1144 to i32
  %1146 = sub nsw i32 2129859010, %1145
  %1147 = bitcast i32 %1146 to float
  %1148 = fmul fast float %1147, %1143
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  br label %1150

; <label>:1150                                    ; preds = %1104, %1099
  %1151 = phi float [ %1149, %1104 ], [ %450, %1099 ]
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 128
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1172, label %1156

; <label>:1156                                    ; preds = %1150
  %1157 = add i32 %30, 428
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %1159, 0
  %1161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1161, %dx.types.Handle %76, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 524288
  %1167 = icmp ne i32 %1166, 0
  %1168 = fcmp fast ogt float %1163, 0x3FE0101020000000
  %1169 = select i1 %1168, float 1.000000e+00, float 0.000000e+00
  %1170 = select i1 %1167, float %1169, float %1163
  %1171 = fmul fast float %1170, %1151
  br label %1172

; <label>:1172                                    ; preds = %1156, %1150
  %1173 = phi float [ %1171, %1156 ], [ %1151, %1150 ]
  %1174 = fcmp fast ult float %1173, 0x3F70101020000000
  br i1 %1174, label %1804, label %1175

; <label>:1175                                    ; preds = %1172
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 16
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1378, label %1180

; <label>:1180                                    ; preds = %1175
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %30, 380
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %1185, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1187, %dx.types.Handle %75, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1193 = and i32 %1182, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = lshr i32 %1182, 8
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1192, %1194
  %1199 = fadd fast float %1198, %1197
  %1200 = fmul fast float %1199, 0x3F70101000000000
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 512
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1213, label %1205

; <label>:1205                                    ; preds = %1180
  %1206 = add i32 %30, 464
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %1208, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1210, %dx.types.Handle %76, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  br label %1213

; <label>:1213                                    ; preds = %1205, %1180
  %1214 = phi float [ %1212, %1205 ], [ 1.000000e+00, %1180 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 33554432
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1325, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %30, 240
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1222, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = add i32 %30, 244
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 24
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = and i32 %1233, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1233, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = lshr i32 %1233, 16
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = add i32 %30, 236
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = lshr i32 %1250, 24
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = and i32 %1250, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = lshr i32 %1250, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1250, 16
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = bitcast float %1189 to i32
  %1266 = ashr i32 %1265, 1
  %1267 = sub nsw i32 1597463174, %1266
  %1268 = bitcast i32 %1267 to float
  %1269 = fmul fast float %1189, 5.000000e-01
  %1270 = fmul fast float %1268, %1268
  %1271 = fmul fast float %1270, %1269
  %1272 = fsub fast float 1.500000e+00, %1271
  %1273 = fmul fast float %1268, %1189
  %1274 = fmul fast float %1273, %1272
  %1275 = bitcast float %1190 to i32
  %1276 = ashr i32 %1275, 1
  %1277 = sub nsw i32 1597463174, %1276
  %1278 = bitcast i32 %1277 to float
  %1279 = fmul fast float %1190, 5.000000e-01
  %1280 = fmul fast float %1278, %1278
  %1281 = fmul fast float %1280, %1279
  %1282 = fsub fast float 1.500000e+00, %1281
  %1283 = fmul fast float %1278, %1190
  %1284 = fmul fast float %1283, %1282
  %1285 = bitcast float %1191 to i32
  %1286 = ashr i32 %1285, 1
  %1287 = sub nsw i32 1597463174, %1286
  %1288 = bitcast i32 %1287 to float
  %1289 = fmul fast float %1191, 5.000000e-01
  %1290 = fmul fast float %1288, %1288
  %1291 = fmul fast float %1290, %1289
  %1292 = fsub fast float 1.500000e+00, %1291
  %1293 = fmul fast float %1288, %1191
  %1294 = fmul fast float %1293, %1292
  %1295 = fsub fast float %1274, %1256
  %1296 = fsub fast float %1284, %1260
  %1297 = fsub fast float %1294, %1264
  %1298 = fmul fast float %1295, %1224
  %1299 = fmul fast float %1296, %1226
  %1300 = fmul fast float %1297, %1231
  %1301 = fadd fast float %1298, %1239
  %1302 = fadd fast float %1299, %1243
  %1303 = fadd fast float %1300, %1247
  %1304 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1306 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1307 = fmul fast float %1304, %1304
  %1308 = fmul fast float %1305, %1305
  %1309 = fmul fast float %1306, %1306
  %1310 = fsub fast float %1307, %1189
  %1311 = fsub fast float %1308, %1190
  %1312 = fsub fast float %1309, %1191
  %1313 = fmul fast float %1310, %1214
  %1314 = fmul fast float %1311, %1214
  %1315 = fmul fast float %1312, %1214
  %1316 = fadd fast float %1313, %1189
  %1317 = fadd fast float %1314, %1190
  %1318 = fadd fast float %1315, %1191
  %1319 = fadd fast float %1236, %1200
  %1320 = fsub fast float %1319, %1253
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fsub fast float %1321, %1200
  %1323 = fmul fast float %1322, %1214
  %1324 = fadd fast float %1323, %1200
  br label %1378

; <label>:1325                                    ; preds = %1213
  %1326 = and i32 %1216, 134217728
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1362, label %1328

; <label>:1328                                    ; preds = %1325
  %1329 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1330 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1331 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1332 = fadd fast float %1329, -5.000000e-01
  %1333 = fadd fast float %1330, -5.000000e-01
  %1334 = fadd fast float %1331, -5.000000e-01
  %1335 = fmul fast float %1332, %1214
  %1336 = fmul fast float %1333, %1214
  %1337 = fmul fast float %1334, %1214
  %1338 = fadd fast float %1335, 5.000000e-01
  %1339 = fadd fast float %1336, 5.000000e-01
  %1340 = fadd fast float %1337, 5.000000e-01
  %1341 = call float @dx.op.unary.f32(i32 24, float %1189)  ; Sqrt(value)
  %1342 = call float @dx.op.unary.f32(i32 24, float %1190)  ; Sqrt(value)
  %1343 = call float @dx.op.unary.f32(i32 24, float %1191)  ; Sqrt(value)
  %1344 = fmul fast float %1338, 2.000000e+00
  %1345 = fsub fast float 1.000000e+00, %1344
  %1346 = fmul fast float %1345, %1341
  %1347 = fadd fast float %1346, %1344
  %1348 = fmul fast float %1347, %1341
  %1349 = fmul fast float %1339, 2.000000e+00
  %1350 = fsub fast float 1.000000e+00, %1349
  %1351 = fmul fast float %1350, %1342
  %1352 = fadd fast float %1351, %1349
  %1353 = fmul fast float %1352, %1342
  %1354 = fmul fast float %1340, 2.000000e+00
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = fmul fast float %1355, %1343
  %1357 = fadd fast float %1356, %1354
  %1358 = fmul fast float %1357, %1343
  %1359 = fmul fast float %1348, %1348
  %1360 = fmul fast float %1353, %1353
  %1361 = fmul fast float %1358, %1358
  br label %1378

; <label>:1362                                    ; preds = %1325
  %1363 = fmul fast float %285, %285
  %1364 = fmul fast float %289, %289
  %1365 = fmul fast float %293, %293
  %1366 = fadd fast float %1363, -1.000000e+00
  %1367 = fadd fast float %1364, -1.000000e+00
  %1368 = fadd fast float %1365, -1.000000e+00
  %1369 = fmul fast float %1214, %1366
  %1370 = fmul fast float %1214, %1367
  %1371 = fmul fast float %1214, %1368
  %1372 = fadd fast float %1369, 1.000000e+00
  %1373 = fadd fast float %1370, 1.000000e+00
  %1374 = fadd fast float %1371, 1.000000e+00
  %1375 = fmul fast float %1372, %1189
  %1376 = fmul fast float %1373, %1190
  %1377 = fmul fast float %1374, %1191
  br label %1378

; <label>:1378                                    ; preds = %1362, %1328, %1219, %1175
  %1379 = phi float [ %1324, %1219 ], [ %1200, %1328 ], [ %1200, %1362 ], [ 0x3FA23C0BE0000000, %1175 ]
  %1380 = phi float [ %1316, %1219 ], [ %1359, %1328 ], [ %1375, %1362 ], [ 1.000000e+00, %1175 ]
  %1381 = phi float [ %1317, %1219 ], [ %1360, %1328 ], [ %1376, %1362 ], [ 1.000000e+00, %1175 ]
  %1382 = phi float [ %1318, %1219 ], [ %1361, %1328 ], [ %1377, %1362 ], [ 1.000000e+00, %1175 ]
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 1
  %1385 = and i32 %1384, 1
  %1386 = icmp ne i32 %1385, 0
  %1387 = add i32 %30, 356
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 32
  %1391 = icmp ne i32 %1390, 0
  %1392 = and i1 %1386, %1391
  %1393 = select i1 %1392, float 1.000000e+00, float %1380
  %1394 = select i1 %1392, float 0x3FD3333340000000, float %1381
  %1395 = select i1 %1392, float 0x3FD3333340000000, float %1382
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1472, label %1400

; <label>:1400                                    ; preds = %1378
  %1401 = add i32 %30, 108
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %30, 396
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %75, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.ResRet.f32 %1409, 3
  %1414 = and i32 %1403, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1403, 8
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = lshr i32 %1403, 16
  %1420 = and i32 %1419, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fmul fast float %1410, %1415
  %1424 = fadd fast float %1423, %1418
  %1425 = fmul fast float %1424, 0x3F70101000000000
  %1426 = fadd fast float %1411, -5.000000e-01
  %1427 = fadd fast float %1413, -5.000000e-01
  %1428 = fmul fast float %1426, %1422
  %1429 = fmul fast float %1427, %1422
  %1430 = fadd fast float %1428, 5.000000e-01
  %1431 = fadd fast float %1429, 5.000000e-01
  %1432 = fmul fast float %1430, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1431, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fadd fast float %1433, %1435
  %1437 = fmul fast float %1436, 5.000000e-01
  %1438 = fsub fast float %1433, %1435
  %1439 = fmul fast float %1438, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1443 = fsub fast float %1441, %1442
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1439, float %1443, float %1437, float %1439, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 25, float %1444)  ; Rsqrt(value)
  %1446 = fmul fast float %1437, %1445
  %1447 = fmul fast float %1439, %1445
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 67108864
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1468, label %1452

; <label>:1452                                    ; preds = %1400
  %1453 = add i32 %30, 296
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = lshr i32 %1455, 16
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = fsub fast float %1425, %1463
  %1465 = fmul fast float %1464, %1457
  %1466 = fadd fast float %1465, %1461
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br label %1468

; <label>:1468                                    ; preds = %1452, %1400
  %1469 = phi float [ %1467, %1452 ], [ %1425, %1400 ]
  %1470 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %1004, float %1005)  ; Dot2(ax,ay,bx,by)
  %1471 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %1006, float %1007)  ; Dot2(ax,ay,bx,by)
  br label %1472

; <label>:1472                                    ; preds = %1468, %1378
  %1473 = phi float [ %1469, %1468 ], [ 0x3FD6666660000000, %1378 ]
  %1474 = phi float [ %1470, %1468 ], [ 0.000000e+00, %1378 ]
  %1475 = phi float [ %1471, %1468 ], [ 0.000000e+00, %1378 ]
  %1476 = phi float [ %1412, %1468 ], [ 1.000000e+00, %1378 ]
  %1477 = add i32 %30, 176
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = lshr i32 %1479, 22
  %1481 = shl nuw nsw i32 %1480, 5
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 64
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1520, label %1487

; <label>:1487                                    ; preds = %1472
  %1488 = add i32 %30, 412
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1490, 0
  %1492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 131072
  %1496 = icmp eq i32 %1495, 0
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1492, %dx.types.Handle %75, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = fmul fast float %1498, %273
  %1502 = fmul fast float %1499, %276
  %1503 = fmul fast float %1500, %279
  br i1 %1496, label %1510, label %1504

; <label>:1504                                    ; preds = %1487
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = fmul fast float %1506, %1501
  %1508 = fmul fast float %1506, %1502
  %1509 = fmul fast float %1506, %1503
  br label %1510

; <label>:1510                                    ; preds = %1504, %1487
  %1511 = phi float [ %1507, %1504 ], [ %1501, %1487 ]
  %1512 = phi float [ %1508, %1504 ], [ %1502, %1487 ]
  %1513 = phi float [ %1509, %1504 ], [ %1503, %1487 ]
  %1514 = fmul fast float %1511, %1482
  %1515 = select i1 %214, float %1514, float %1511
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1512, float %1513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = select i1 %214, float 0.000000e+00, float %1511
  %1518 = select i1 %214, float %1516, float %1512
  %1519 = select i1 %214, float 0.000000e+00, float %1513
  br label %1520

; <label>:1520                                    ; preds = %1510, %1472
  %1521 = phi float [ %1517, %1510 ], [ 0.000000e+00, %1472 ]
  %1522 = phi float [ %1518, %1510 ], [ 0.000000e+00, %1472 ]
  %1523 = phi float [ %1519, %1510 ], [ 0.000000e+00, %1472 ]
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 10240
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1572, label %1528

; <label>:1528                                    ; preds = %1520
  %1529 = add i32 %30, 480
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %76, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 1048576
  %1540 = icmp ne i32 %1539, 0
  %1541 = and i32 %1538, 8192
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1558, label %1543

; <label>:1543                                    ; preds = %1528
  %1544 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1545 = select i1 %1540, float %1544, float %1535
  %1546 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1547 = select i1 %1540, float %1546, float %1535
  %1548 = add i32 %30, 112
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = lshr i32 %1550, 16
  %1552 = and i32 %1551, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = fmul fast float %1553, 0x3F80101020000000
  %1555 = fmul fast float %1554, %1547
  %1556 = fmul fast float %1554, %1535
  %1557 = fmul fast float %1554, %1545
  br label %1558

; <label>:1558                                    ; preds = %1543, %1528
  %1559 = phi float [ %1555, %1543 ], [ 0.000000e+00, %1528 ]
  %1560 = phi float [ %1556, %1543 ], [ 0.000000e+00, %1528 ]
  %1561 = phi float [ %1557, %1543 ], [ 0.000000e+00, %1528 ]
  %1562 = and i32 %1538, 2048
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1572, label %1564

; <label>:1564                                    ; preds = %1558
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = shl i32 %1566, 4
  %1568 = and i32 %1567, 32752
  %1569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1568)  ; LegacyF16ToF32(value)
  %1570 = fmul fast float %1569, %1536
  %1571 = call float @dx.op.binary.f32(i32 35, float %1570, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1572

; <label>:1572                                    ; preds = %1564, %1558, %1520
  %1573 = phi float [ %1559, %1564 ], [ %1559, %1558 ], [ 0.000000e+00, %1520 ]
  %1574 = phi float [ %1560, %1564 ], [ %1560, %1558 ], [ 0.000000e+00, %1520 ]
  %1575 = phi float [ %1561, %1564 ], [ %1561, %1558 ], [ 0.000000e+00, %1520 ]
  %1576 = phi float [ %1571, %1564 ], [ 0x3F70101020000000, %1558 ], [ 0x3F70101020000000, %1520 ]
  %1577 = add i32 %30, 112
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 255
  %1581 = uitofp i32 %1580 to float
  %1582 = lshr i32 %1579, 8
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = fmul fast float %1584, %1585
  %1587 = fadd fast float %1586, %1581
  %1588 = fmul fast float %1587, 0x3F70101020000000
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  br i1 %992, label %1590, label %1598

; <label>:1590                                    ; preds = %1572
  %1591 = fsub fast float 1.000000e+00, %1173
  %1592 = fmul fast float %1591, %976
  %1593 = fmul fast float %1591, %977
  %1594 = fmul fast float %1591, %978
  %1595 = fmul fast float %1591, %979
  %1596 = fmul fast float %1591, %980
  %1597 = fmul fast float %1591, %981
  br label %1598

; <label>:1598                                    ; preds = %1590, %1572
  %1599 = phi float [ %1592, %1590 ], [ %976, %1572 ]
  %1600 = phi float [ %1593, %1590 ], [ %977, %1572 ]
  %1601 = phi float [ %1594, %1590 ], [ %978, %1572 ]
  %1602 = phi float [ %1595, %1590 ], [ %979, %1572 ]
  %1603 = phi float [ %1596, %1590 ], [ %980, %1572 ]
  %1604 = phi float [ %1597, %1590 ], [ %981, %1572 ]
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 3
  %1608 = icmp eq i32 %1607, 3
  br i1 %1608, label %1687, label %1609

; <label>:1609                                    ; preds = %1598
  %1610 = and i32 %1606, 16
  %1611 = icmp ne i32 %1610, 0
  %1612 = select i1 %1611, float %1173, float 0.000000e+00
  %1613 = icmp eq i32 %1607, 0
  br i1 %1613, label %1614, label %1642

; <label>:1614                                    ; preds = %1609
  %1615 = and i32 %1606, 64
  %1616 = icmp ne i32 %1615, 0
  %1617 = select i1 %1616, float %1173, float 0.000000e+00
  %1618 = fsub fast float %1393, %1599
  %1619 = fsub fast float %1394, %1600
  %1620 = fsub fast float %1395, %1601
  %1621 = fmul fast float %1612, %1618
  %1622 = fmul fast float %1612, %1619
  %1623 = fmul fast float %1612, %1620
  %1624 = fadd fast float %1621, %1599
  %1625 = fadd fast float %1622, %1600
  %1626 = fadd fast float %1623, %1601
  %1627 = fsub fast float %1379, %985
  %1628 = fmul fast float %1612, %1627
  %1629 = fadd fast float %1628, %985
  %1630 = fsub fast float %1521, %1602
  %1631 = fsub fast float %1522, %1603
  %1632 = fsub fast float %1523, %1604
  %1633 = fmul fast float %1617, %1630
  %1634 = fmul fast float %1617, %1631
  %1635 = fmul fast float %1617, %1632
  %1636 = fadd fast float %1633, %1602
  %1637 = fadd fast float %1634, %1603
  %1638 = fadd fast float %1635, %1604
  %1639 = fsub fast float %1589, %990
  %1640 = fmul fast float %1612, %1639
  %1641 = fadd fast float %1640, %990
  br label %1687

; <label>:1642                                    ; preds = %1609
  %1643 = icmp eq i32 %1607, 1
  br i1 %1643, label %1644, label %1657

; <label>:1644                                    ; preds = %1642
  %1645 = fadd fast float %1393, -1.000000e+00
  %1646 = fadd fast float %1394, -1.000000e+00
  %1647 = fadd fast float %1395, -1.000000e+00
  %1648 = fmul fast float %1612, %1645
  %1649 = fmul fast float %1612, %1646
  %1650 = fmul fast float %1612, %1647
  %1651 = fadd fast float %1648, 1.000000e+00
  %1652 = fadd fast float %1649, 1.000000e+00
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fmul fast float %1651, %1599
  %1655 = fmul fast float %1652, %1600
  %1656 = fmul fast float %1653, %1601
  br label %1687

; <label>:1657                                    ; preds = %1642
  %1658 = icmp eq i32 %1607, 2
  br i1 %1658, label %1659, label %1687

; <label>:1659                                    ; preds = %1657
  %1660 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1661 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1662 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1663 = fadd fast float %1660, -5.000000e-01
  %1664 = fadd fast float %1661, -5.000000e-01
  %1665 = fadd fast float %1662, -5.000000e-01
  %1666 = fmul fast float %1663, %1612
  %1667 = fmul fast float %1664, %1612
  %1668 = fmul fast float %1665, %1612
  %1669 = fadd fast float %1666, 5.000000e-01
  %1670 = fadd fast float %1667, 5.000000e-01
  %1671 = fadd fast float %1668, 5.000000e-01
  %1672 = fmul fast float %1669, 2.000000e+00
  %1673 = fsub fast float 1.000000e+00, %1672
  %1674 = fmul fast float %1673, %1599
  %1675 = fadd fast float %1674, %1672
  %1676 = fmul fast float %1675, %1599
  %1677 = fmul fast float %1670, 2.000000e+00
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fmul fast float %1678, %1600
  %1680 = fadd fast float %1679, %1677
  %1681 = fmul fast float %1680, %1600
  %1682 = fmul fast float %1671, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1601
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1601
  br label %1687

; <label>:1687                                    ; preds = %1659, %1657, %1644, %1614, %1598
  %1688 = phi float [ %1599, %1598 ], [ %1676, %1659 ], [ %1599, %1657 ], [ %1654, %1644 ], [ %1624, %1614 ]
  %1689 = phi float [ %1600, %1598 ], [ %1681, %1659 ], [ %1600, %1657 ], [ %1655, %1644 ], [ %1625, %1614 ]
  %1690 = phi float [ %1601, %1598 ], [ %1686, %1659 ], [ %1601, %1657 ], [ %1656, %1644 ], [ %1626, %1614 ]
  %1691 = phi float [ %1602, %1598 ], [ %1602, %1659 ], [ %1602, %1657 ], [ %1602, %1644 ], [ %1636, %1614 ]
  %1692 = phi float [ %1603, %1598 ], [ %1603, %1659 ], [ %1603, %1657 ], [ %1603, %1644 ], [ %1637, %1614 ]
  %1693 = phi float [ %1604, %1598 ], [ %1604, %1659 ], [ %1604, %1657 ], [ %1604, %1644 ], [ %1638, %1614 ]
  %1694 = phi float [ %985, %1598 ], [ %985, %1659 ], [ %985, %1657 ], [ %985, %1644 ], [ %1629, %1614 ]
  %1695 = phi float [ %990, %1598 ], [ %990, %1659 ], [ %990, %1657 ], [ %990, %1644 ], [ %1641, %1614 ]
  %1696 = and i32 %1606, 12
  %1697 = icmp eq i32 %1696, 12
  br i1 %1697, label %1804, label %1698

; <label>:1698                                    ; preds = %1687
  %1699 = and i32 %1606, 2097184
  %1700 = icmp eq i32 %1699, 2097184
  %1701 = select i1 %1700, float %1173, float 0.000000e+00
  %1702 = and i32 %1606, 4194336
  %1703 = icmp eq i32 %1702, 4194336
  %1704 = select i1 %1703, float %1173, float 0.000000e+00
  %1705 = and i32 %1606, 8388640
  %1706 = icmp eq i32 %1705, 8388640
  %1707 = select i1 %1706, float %1173, float 0.000000e+00
  %1708 = and i32 %1606, 2048
  %1709 = icmp ne i32 %1708, 0
  %1710 = select i1 %1709, float %1173, float 0.000000e+00
  %1711 = and i32 %1606, 8192
  %1712 = icmp ne i32 %1711, 0
  %1713 = select i1 %1712, float %1173, float 0.000000e+00
  %1714 = icmp eq i32 %1696, 0
  br i1 %1714, label %1715, label %1740

; <label>:1715                                    ; preds = %1698
  %1716 = fsub fast float %1474, %974
  %1717 = fsub fast float %1475, %975
  %1718 = fmul fast float %1701, %1716
  %1719 = fmul fast float %1701, %1717
  %1720 = fadd fast float %1718, %974
  %1721 = fadd fast float %1719, %975
  %1722 = fsub fast float %1476, %988
  %1723 = fmul fast float %1704, %1722
  %1724 = fadd fast float %1723, %988
  %1725 = fsub fast float %1473, %987
  %1726 = fmul fast float %1707, %1725
  %1727 = fadd fast float %1726, %987
  %1728 = fsub fast float %1576, %989
  %1729 = fmul fast float %1710, %1728
  %1730 = fadd fast float %1729, %989
  %1731 = fsub fast float %1573, %982
  %1732 = fsub fast float %1574, %983
  %1733 = fsub fast float %1575, %984
  %1734 = fmul fast float %1713, %1731
  %1735 = fmul fast float %1713, %1732
  %1736 = fmul fast float %1713, %1733
  %1737 = fadd fast float %1734, %982
  %1738 = fadd fast float %1735, %983
  %1739 = fadd fast float %1736, %984
  br label %1804

; <label>:1740                                    ; preds = %1698
  %1741 = icmp eq i32 %1696, 4
  br i1 %1741, label %1742, label %1782

; <label>:1742                                    ; preds = %1740
  %1743 = fmul fast float %1701, %1474
  %1744 = fmul fast float %1701, %1475
  %1745 = fadd fast float %1743, %974
  %1746 = fadd fast float %1744, %975
  %1747 = call float @dx.op.binary.f32(i32 36, float %988, float %1476)  ; FMin(a,b)
  %1748 = fsub fast float %1747, %988
  %1749 = fmul fast float %1748, %1704
  %1750 = fadd fast float %1749, %988
  %1751 = fadd fast float %1473, %987
  %1752 = fmul fast float %1751, 0x3FF337FAE0000000
  %1753 = fmul fast float %987, %987
  %1754 = fmul fast float %1473, %1473
  %1755 = fadd fast float %1754, %1753
  %1756 = fmul fast float %1755, 0x3FE5152B00000000
  %1757 = fmul fast float %987, 0xBFCC1F85E0000000
  %1758 = fmul fast float %1757, %1473
  %1759 = fadd fast float %1758, 0xBFE1363700000000
  %1760 = fadd fast float %1759, %1752
  %1761 = fsub fast float %1760, %1756
  %1762 = fmul fast float %1751, 0x3FBA6F0D00000000
  %1763 = fmul fast float %1755, 0x3FD0432880000000
  %1764 = fmul fast float %987, 0xBFEF110800000000
  %1765 = fmul fast float %1764, %1473
  %1766 = fadd fast float %1765, 1.000000e+00
  %1767 = fsub fast float %1766, %1762
  %1768 = fadd fast float %1767, %1763
  %1769 = fdiv fast float %1761, %1768
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fsub fast float %1770, %987
  %1772 = fmul fast float %1771, %1707
  %1773 = fadd fast float %1772, %987
  %1774 = fmul fast float %1710, %1576
  %1775 = fadd fast float %1774, %989
  %1776 = fmul fast float %1713, %1573
  %1777 = fmul fast float %1713, %1574
  %1778 = fmul fast float %1713, %1575
  %1779 = fadd fast float %1776, %982
  %1780 = fadd fast float %1777, %983
  %1781 = fadd fast float %1778, %984
  br label %1804

; <label>:1782                                    ; preds = %1740
  %1783 = icmp eq i32 %1696, 8
  br i1 %1783, label %1784, label %1804

; <label>:1784                                    ; preds = %1782
  %1785 = fmul fast float %1701, %1474
  %1786 = fmul fast float %1701, %1475
  %1787 = fadd fast float %1785, %974
  %1788 = fadd fast float %1786, %975
  %1789 = call float @dx.op.binary.f32(i32 36, float %988, float %1476)  ; FMin(a,b)
  %1790 = fsub fast float %1789, %988
  %1791 = fmul fast float %1790, %1704
  %1792 = fadd fast float %1791, %988
  %1793 = fsub fast float %1473, %987
  %1794 = fmul fast float %1707, %1793
  %1795 = fadd fast float %1794, %987
  %1796 = fmul fast float %1710, %1576
  %1797 = fadd fast float %1796, %989
  %1798 = fmul fast float %1713, %1573
  %1799 = fmul fast float %1713, %1574
  %1800 = fmul fast float %1713, %1575
  %1801 = fadd fast float %1798, %982
  %1802 = fadd fast float %1799, %983
  %1803 = fadd fast float %1800, %984
  br label %1804

; <label>:1804                                    ; preds = %1784, %1782, %1742, %1715, %1687, %1172, %991, %973
  %1805 = phi float [ %974, %1687 ], [ %974, %1172 ], [ %974, %973 ], [ %1787, %1784 ], [ %974, %1782 ], [ %1745, %1742 ], [ %1720, %1715 ], [ %974, %991 ]
  %1806 = phi float [ %975, %1687 ], [ %975, %1172 ], [ %975, %973 ], [ %1788, %1784 ], [ %975, %1782 ], [ %1746, %1742 ], [ %1721, %1715 ], [ %975, %991 ]
  %1807 = phi float [ %1688, %1687 ], [ %976, %1172 ], [ %976, %973 ], [ %1688, %1784 ], [ %1688, %1782 ], [ %1688, %1742 ], [ %1688, %1715 ], [ %976, %991 ]
  %1808 = phi float [ %1689, %1687 ], [ %977, %1172 ], [ %977, %973 ], [ %1689, %1784 ], [ %1689, %1782 ], [ %1689, %1742 ], [ %1689, %1715 ], [ %977, %991 ]
  %1809 = phi float [ %1690, %1687 ], [ %978, %1172 ], [ %978, %973 ], [ %1690, %1784 ], [ %1690, %1782 ], [ %1690, %1742 ], [ %1690, %1715 ], [ %978, %991 ]
  %1810 = phi float [ %1691, %1687 ], [ %979, %1172 ], [ %979, %973 ], [ %1691, %1784 ], [ %1691, %1782 ], [ %1691, %1742 ], [ %1691, %1715 ], [ %979, %991 ]
  %1811 = phi float [ %1692, %1687 ], [ %980, %1172 ], [ %980, %973 ], [ %1692, %1784 ], [ %1692, %1782 ], [ %1692, %1742 ], [ %1692, %1715 ], [ %980, %991 ]
  %1812 = phi float [ %1693, %1687 ], [ %981, %1172 ], [ %981, %973 ], [ %1693, %1784 ], [ %1693, %1782 ], [ %1693, %1742 ], [ %1693, %1715 ], [ %981, %991 ]
  %1813 = phi float [ %982, %1687 ], [ %982, %1172 ], [ %982, %973 ], [ %1801, %1784 ], [ %982, %1782 ], [ %1779, %1742 ], [ %1737, %1715 ], [ %982, %991 ]
  %1814 = phi float [ %983, %1687 ], [ %983, %1172 ], [ %983, %973 ], [ %1802, %1784 ], [ %983, %1782 ], [ %1780, %1742 ], [ %1738, %1715 ], [ %983, %991 ]
  %1815 = phi float [ %984, %1687 ], [ %984, %1172 ], [ %984, %973 ], [ %1803, %1784 ], [ %984, %1782 ], [ %1781, %1742 ], [ %1739, %1715 ], [ %984, %991 ]
  %1816 = phi float [ %1694, %1687 ], [ %985, %1172 ], [ %985, %973 ], [ %1694, %1784 ], [ %1694, %1782 ], [ %1694, %1742 ], [ %1694, %1715 ], [ %985, %991 ]
  %1817 = phi float [ %987, %1687 ], [ %987, %1172 ], [ %987, %973 ], [ %1795, %1784 ], [ %987, %1782 ], [ %1773, %1742 ], [ %1727, %1715 ], [ %987, %991 ]
  %1818 = phi float [ %988, %1687 ], [ %988, %1172 ], [ %988, %973 ], [ %1792, %1784 ], [ %988, %1782 ], [ %1750, %1742 ], [ %1724, %1715 ], [ %988, %991 ]
  %1819 = phi float [ %989, %1687 ], [ %989, %1172 ], [ %989, %973 ], [ %1797, %1784 ], [ %989, %1782 ], [ %1775, %1742 ], [ %1730, %1715 ], [ %989, %991 ]
  %1820 = phi float [ %1695, %1687 ], [ %990, %1172 ], [ %990, %973 ], [ %1695, %1784 ], [ %1695, %1782 ], [ %1695, %1742 ], [ %1695, %1715 ], [ %990, %991 ]
  br i1 %400, label %2634, label %1821

; <label>:1821                                    ; preds = %1804
  %1822 = icmp ult i32 %453, 3
  %1823 = add i32 %30, 56
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = add i32 %30, 60
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = or i32 %1828, %1825
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %2634, label %1831

; <label>:1831                                    ; preds = %1821
  %1832 = and i32 %1825, 262144
  %1833 = icmp ne i32 %1832, 0
  %1834 = select i1 %1833, float %35, float 1.000000e+00
  %1835 = select i1 %1833, float %36, float 0.000000e+00
  %1836 = select i1 %1833, float %37, float 0.000000e+00
  %1837 = select i1 %1833, float %38, float 1.000000e+00
  %1838 = select i1 %1833, float %39, float %67
  %1839 = select i1 %1833, float %40, float %68
  %1840 = add i32 %30, 316
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = lshr i32 %1842, 16
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = fmul fast float %1844, 0x3F50624DE0000000
  %1846 = add i32 %30, 120
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 16
  %1850 = and i32 %1849, 255
  %1851 = lshr i32 %1848, 24
  %1852 = add i32 %30, 324
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 65535
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = lshr i32 %1854, 16
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = add i32 %30, 64
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = lshr i32 %1861, 22
  %1863 = shl nuw nsw i32 %1862, 5
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = shl i32 %1861, 4
  %1866 = and i32 %1865, 32752
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = lshr i32 %1861, 7
  %1869 = and i32 %1868, 32752
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1873 = fmul fast float %1872, 1.000000e+03
  %1874 = fmul fast float %350, %1873
  %1875 = call float @dx.op.unary.f32(i32 22, float %1874)  ; Frc(value)
  %1876 = fadd fast float %1875, %340
  %1877 = fmul fast float %351, %1873
  %1878 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1879 = fadd fast float %1878, %342
  %1880 = fmul fast float %1845, %1873
  %1881 = call float @dx.op.unary.f32(i32 22, float %1880)  ; Frc(value)
  %1882 = fmul fast float %1881, 0x401921FB60000000
  %1883 = fadd fast float %1882, %1864
  %1884 = call float @dx.op.unary.f32(i32 13, float %1883)  ; Sin(value)
  %1885 = call float @dx.op.unary.f32(i32 12, float %1883)  ; Cos(value)
  %1886 = fsub fast float -0.000000e+00, %1884
  %1887 = fadd fast float %1838, -5.000000e-01
  %1888 = fadd fast float %1839, -5.000000e-01
  %1889 = fmul fast float %1856, %1887
  %1890 = fmul fast float %1858, %1888
  %1891 = fadd fast float %1889, 5.000000e-01
  %1892 = fadd fast float %1890, 5.000000e-01
  %1893 = fmul fast float %1867, %1891
  %1894 = fmul fast float %1870, %1892
  %1895 = fmul fast float %1885, %1893
  %1896 = call float @dx.op.tertiary.f32(i32 46, float %1886, float %1894, float %1895)  ; FMad(a,b,c)
  %1897 = fmul fast float %1884, %1893
  %1898 = call float @dx.op.tertiary.f32(i32 46, float %1885, float %1894, float %1897)  ; FMad(a,b,c)
  %1899 = fadd fast float %1876, %1896
  %1900 = fadd fast float %1879, %1898
  %1901 = icmp ugt i32 %1850, 1
  %1902 = icmp ugt i32 %1848, 33554431
  %1903 = or i1 %1902, %1901
  br i1 %1903, label %1904, label %1929

; <label>:1904                                    ; preds = %1831
  %1905 = add i32 %30, 260
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = lshr i32 %1907, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = fmul fast float %1872, %1909
  %1911 = call float @dx.op.unary.f32(i32 22, float %1910)  ; Frc(value)
  %1912 = mul nuw nsw i32 %1850, %1851
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1911, %1913
  %1915 = call float @dx.op.unary.f32(i32 27, float %1914)  ; Round_ni(value)
  %1916 = fptoui float %1915 to i32
  %1917 = urem i32 %1916, %1850
  %1918 = udiv i32 %1916, %1851
  %1919 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1920 = call float @dx.op.unary.f32(i32 22, float %1900)  ; Frc(value)
  %1921 = uitofp i32 %1917 to float
  %1922 = uitofp i32 %1918 to float
  %1923 = fadd fast float %1919, %1921
  %1924 = fadd fast float %1920, %1922
  %1925 = uitofp i32 %1850 to float
  %1926 = uitofp i32 %1851 to float
  %1927 = fdiv fast float %1923, %1925
  %1928 = fdiv fast float %1924, %1926
  br label %1929

; <label>:1929                                    ; preds = %1904, %1831
  %1930 = phi float [ %1927, %1904 ], [ %1899, %1831 ]
  %1931 = phi float [ %1928, %1904 ], [ %1900, %1831 ]
  %1932 = and i32 %1825, 256
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1980, label %1934

; <label>:1934                                    ; preds = %1929
  %1935 = add i32 %30, 448
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1939, %dx.types.Handle %76, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = add i32 %30, 132
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = shl i32 %1944, 4
  %1946 = and i32 %1945, 32752
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = lshr i32 %1944, 7
  %1949 = and i32 %1948, 32752
  %1950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1949)  ; LegacyF16ToF32(value)
  %1951 = fsub fast float 1.000000e+00, %449
  %1952 = call float @dx.op.binary.f32(i32 35, float %1951, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1953 = bitcast float %449 to i32
  %1954 = sitofp i32 %1953 to float
  %1955 = fadd fast float %1954, 0xC1CFBF8940000000
  %1956 = fmul fast float %1950, %1955
  %1957 = fadd fast float %1956, 0x41CFBF8940000000
  %1958 = fptosi float %1957 to i32
  %1959 = bitcast i32 %1958 to float
  %1960 = bitcast float %1952 to i32
  %1961 = sitofp i32 %1960 to float
  %1962 = fadd fast float %1961, 0xC1CFBF8940000000
  %1963 = fmul fast float %1962, %1950
  %1964 = fadd fast float %1963, 0x41CFBF8940000000
  %1965 = fptosi float %1964 to i32
  %1966 = bitcast i32 %1965 to float
  %1967 = fmul fast float %1959, %1947
  %1968 = fmul fast float %1966, %1947
  %1969 = fsub fast float %1952, %1967
  %1970 = fadd fast float %1968, %1952
  %1971 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1972 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1973 = fsub fast float %1941, %1971
  %1974 = fsub fast float %1972, %1971
  %1975 = bitcast float %1974 to i32
  %1976 = sub nsw i32 2129859010, %1975
  %1977 = bitcast i32 %1976 to float
  %1978 = fmul fast float %1977, %1973
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  br label %1980

; <label>:1980                                    ; preds = %1934, %1929
  %1981 = phi float [ %1979, %1934 ], [ %449, %1929 ]
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 128
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %2002, label %1986

; <label>:1986                                    ; preds = %1980
  %1987 = add i32 %30, 432
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %1989, 0
  %1991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1991, %dx.types.Handle %76, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = and i32 %1995, 524288
  %1997 = icmp ne i32 %1996, 0
  %1998 = fcmp fast ogt float %1993, 0x3FE0101020000000
  %1999 = select i1 %1998, float 1.000000e+00, float 0.000000e+00
  %2000 = select i1 %1997, float %1999, float %1993
  %2001 = fmul fast float %2000, %1981
  br label %2002

; <label>:2002                                    ; preds = %1986, %1980
  %2003 = phi float [ %2001, %1986 ], [ %1981, %1980 ]
  %2004 = fcmp fast ult float %2003, 0x3F70101020000000
  br i1 %2004, label %2634, label %2005

; <label>:2005                                    ; preds = %2002
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 16
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2208, label %2010

; <label>:2010                                    ; preds = %2005
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = add i32 %30, 384
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = add i32 %2015, 0
  %2017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2017, %dx.types.Handle %75, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = extractvalue %dx.types.ResRet.f32 %2018, 3
  %2023 = and i32 %2012, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = lshr i32 %2012, 8
  %2026 = and i32 %2025, 255
  %2027 = uitofp i32 %2026 to float
  %2028 = fmul fast float %2022, %2024
  %2029 = fadd fast float %2028, %2027
  %2030 = fmul fast float %2029, 0x3F70101000000000
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 512
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2043, label %2035

; <label>:2035                                    ; preds = %2010
  %2036 = add i32 %30, 468
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = add i32 %2038, 0
  %2040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2040, %dx.types.Handle %76, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  br label %2043

; <label>:2043                                    ; preds = %2035, %2010
  %2044 = phi float [ %2042, %2035 ], [ 1.000000e+00, %2010 ]
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 33554432
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2155, label %2049

; <label>:2049                                    ; preds = %2043
  %2050 = add i32 %30, 256
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 65535
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = lshr i32 %2052, 16
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = add i32 %30, 260
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 65535
  %2061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2060)  ; LegacyF16ToF32(value)
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = lshr i32 %2063, 24
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = and i32 %2063, 255
  %2068 = uitofp i32 %2067 to float
  %2069 = fmul fast float %2068, 0x3F70101020000000
  %2070 = lshr i32 %2063, 8
  %2071 = and i32 %2070, 255
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2072, 0x3F70101020000000
  %2074 = lshr i32 %2063, 16
  %2075 = and i32 %2074, 255
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2076, 0x3F70101020000000
  %2078 = add i32 %30, 252
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 24
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = and i32 %2080, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101020000000
  %2087 = lshr i32 %2080, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = lshr i32 %2080, 16
  %2092 = and i32 %2091, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = bitcast float %2019 to i32
  %2096 = ashr i32 %2095, 1
  %2097 = sub nsw i32 1597463174, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2019, 5.000000e-01
  %2100 = fmul fast float %2098, %2098
  %2101 = fmul fast float %2100, %2099
  %2102 = fsub fast float 1.500000e+00, %2101
  %2103 = fmul fast float %2098, %2019
  %2104 = fmul fast float %2103, %2102
  %2105 = bitcast float %2020 to i32
  %2106 = ashr i32 %2105, 1
  %2107 = sub nsw i32 1597463174, %2106
  %2108 = bitcast i32 %2107 to float
  %2109 = fmul fast float %2020, 5.000000e-01
  %2110 = fmul fast float %2108, %2108
  %2111 = fmul fast float %2110, %2109
  %2112 = fsub fast float 1.500000e+00, %2111
  %2113 = fmul fast float %2108, %2020
  %2114 = fmul fast float %2113, %2112
  %2115 = bitcast float %2021 to i32
  %2116 = ashr i32 %2115, 1
  %2117 = sub nsw i32 1597463174, %2116
  %2118 = bitcast i32 %2117 to float
  %2119 = fmul fast float %2021, 5.000000e-01
  %2120 = fmul fast float %2118, %2118
  %2121 = fmul fast float %2120, %2119
  %2122 = fsub fast float 1.500000e+00, %2121
  %2123 = fmul fast float %2118, %2021
  %2124 = fmul fast float %2123, %2122
  %2125 = fsub fast float %2104, %2086
  %2126 = fsub fast float %2114, %2090
  %2127 = fsub fast float %2124, %2094
  %2128 = fmul fast float %2125, %2054
  %2129 = fmul fast float %2126, %2056
  %2130 = fmul fast float %2127, %2061
  %2131 = fadd fast float %2128, %2069
  %2132 = fadd fast float %2129, %2073
  %2133 = fadd fast float %2130, %2077
  %2134 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2135 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2136 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2137 = fmul fast float %2134, %2134
  %2138 = fmul fast float %2135, %2135
  %2139 = fmul fast float %2136, %2136
  %2140 = fsub fast float %2137, %2019
  %2141 = fsub fast float %2138, %2020
  %2142 = fsub fast float %2139, %2021
  %2143 = fmul fast float %2140, %2044
  %2144 = fmul fast float %2141, %2044
  %2145 = fmul fast float %2142, %2044
  %2146 = fadd fast float %2143, %2019
  %2147 = fadd fast float %2144, %2020
  %2148 = fadd fast float %2145, %2021
  %2149 = fadd fast float %2066, %2030
  %2150 = fsub fast float %2149, %2083
  %2151 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2152 = fsub fast float %2151, %2030
  %2153 = fmul fast float %2152, %2044
  %2154 = fadd fast float %2153, %2030
  br label %2208

; <label>:2155                                    ; preds = %2043
  %2156 = and i32 %2046, 134217728
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2192, label %2158

; <label>:2158                                    ; preds = %2155
  %2159 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %2160 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2161 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2162 = fadd fast float %2159, -5.000000e-01
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fadd fast float %2161, -5.000000e-01
  %2165 = fmul fast float %2162, %2044
  %2166 = fmul fast float %2163, %2044
  %2167 = fmul fast float %2164, %2044
  %2168 = fadd fast float %2165, 5.000000e-01
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = fadd fast float %2167, 5.000000e-01
  %2171 = call float @dx.op.unary.f32(i32 24, float %2019)  ; Sqrt(value)
  %2172 = call float @dx.op.unary.f32(i32 24, float %2020)  ; Sqrt(value)
  %2173 = call float @dx.op.unary.f32(i32 24, float %2021)  ; Sqrt(value)
  %2174 = fmul fast float %2168, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2171
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2171
  %2179 = fmul fast float %2169, 2.000000e+00
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2172
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2182, %2172
  %2184 = fmul fast float %2170, 2.000000e+00
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = fmul fast float %2185, %2173
  %2187 = fadd fast float %2186, %2184
  %2188 = fmul fast float %2187, %2173
  %2189 = fmul fast float %2178, %2178
  %2190 = fmul fast float %2183, %2183
  %2191 = fmul fast float %2188, %2188
  br label %2208

; <label>:2192                                    ; preds = %2155
  %2193 = fmul fast float %327, %327
  %2194 = fmul fast float %331, %331
  %2195 = fmul fast float %335, %335
  %2196 = fadd fast float %2193, -1.000000e+00
  %2197 = fadd fast float %2194, -1.000000e+00
  %2198 = fadd fast float %2195, -1.000000e+00
  %2199 = fmul fast float %2044, %2196
  %2200 = fmul fast float %2044, %2197
  %2201 = fmul fast float %2044, %2198
  %2202 = fadd fast float %2199, 1.000000e+00
  %2203 = fadd fast float %2200, 1.000000e+00
  %2204 = fadd fast float %2201, 1.000000e+00
  %2205 = fmul fast float %2202, %2019
  %2206 = fmul fast float %2203, %2020
  %2207 = fmul fast float %2204, %2021
  br label %2208

; <label>:2208                                    ; preds = %2192, %2158, %2049, %2005
  %2209 = phi float [ %2154, %2049 ], [ %2030, %2158 ], [ %2030, %2192 ], [ 0x3FA23C0BE0000000, %2005 ]
  %2210 = phi float [ %2146, %2049 ], [ %2189, %2158 ], [ %2205, %2192 ], [ 1.000000e+00, %2005 ]
  %2211 = phi float [ %2147, %2049 ], [ %2190, %2158 ], [ %2206, %2192 ], [ 1.000000e+00, %2005 ]
  %2212 = phi float [ %2148, %2049 ], [ %2191, %2158 ], [ %2207, %2192 ], [ 1.000000e+00, %2005 ]
  %2213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2214 = extractvalue %dx.types.CBufRet.i32 %2213, 1
  %2215 = and i32 %2214, 1
  %2216 = icmp ne i32 %2215, 0
  %2217 = add i32 %30, 356
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 32
  %2221 = icmp ne i32 %2220, 0
  %2222 = and i1 %2216, %2221
  %2223 = select i1 %2222, float 1.000000e+00, float %2210
  %2224 = select i1 %2222, float 0x3FD3333340000000, float %2211
  %2225 = select i1 %2222, float 0x3FD3333340000000, float %2212
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 32
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %2302, label %2230

; <label>:2230                                    ; preds = %2208
  %2231 = add i32 %30, 124
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = add i32 %30, 400
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = add i32 %2236, 0
  %2238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2238, %dx.types.Handle %75, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2240 = extractvalue %dx.types.ResRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.ResRet.f32 %2239, 1
  %2242 = extractvalue %dx.types.ResRet.f32 %2239, 2
  %2243 = extractvalue %dx.types.ResRet.f32 %2239, 3
  %2244 = and i32 %2233, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = lshr i32 %2233, 8
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = lshr i32 %2233, 16
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101000000000
  %2253 = fmul fast float %2240, %2245
  %2254 = fadd fast float %2253, %2248
  %2255 = fmul fast float %2254, 0x3F70101000000000
  %2256 = fadd fast float %2241, -5.000000e-01
  %2257 = fadd fast float %2243, -5.000000e-01
  %2258 = fmul fast float %2256, %2252
  %2259 = fmul fast float %2257, %2252
  %2260 = fadd fast float %2258, 5.000000e-01
  %2261 = fadd fast float %2259, 5.000000e-01
  %2262 = fmul fast float %2260, 2.000000e+00
  %2263 = fadd fast float %2262, -1.000000e+00
  %2264 = fmul fast float %2261, 2.000000e+00
  %2265 = fadd fast float %2264, -1.000000e+00
  %2266 = fadd fast float %2263, %2265
  %2267 = fmul fast float %2266, 5.000000e-01
  %2268 = fsub fast float %2263, %2265
  %2269 = fmul fast float %2268, 5.000000e-01
  %2270 = call float @dx.op.unary.f32(i32 6, float %2267)  ; FAbs(value)
  %2271 = fsub fast float 1.000000e+00, %2270
  %2272 = call float @dx.op.unary.f32(i32 6, float %2269)  ; FAbs(value)
  %2273 = fsub fast float %2271, %2272
  %2274 = call float @dx.op.dot3.f32(i32 55, float %2267, float %2269, float %2273, float %2267, float %2269, float %2273)  ; Dot3(ax,ay,az,bx,by,bz)
  %2275 = call float @dx.op.unary.f32(i32 25, float %2274)  ; Rsqrt(value)
  %2276 = fmul fast float %2267, %2275
  %2277 = fmul fast float %2269, %2275
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 67108864
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2298, label %2282

; <label>:2282                                    ; preds = %2230
  %2283 = add i32 %30, 312
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 65535
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 65535
  %2291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2290)  ; LegacyF16ToF32(value)
  %2292 = lshr i32 %2285, 16
  %2293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2292)  ; LegacyF16ToF32(value)
  %2294 = fsub fast float %2255, %2293
  %2295 = fmul fast float %2294, %2287
  %2296 = fadd fast float %2295, %2291
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  br label %2298

; <label>:2298                                    ; preds = %2282, %2230
  %2299 = phi float [ %2297, %2282 ], [ %2255, %2230 ]
  %2300 = call float @dx.op.dot2.f32(i32 54, float %2276, float %2277, float %1834, float %1835)  ; Dot2(ax,ay,bx,by)
  %2301 = call float @dx.op.dot2.f32(i32 54, float %2276, float %2277, float %1836, float %1837)  ; Dot2(ax,ay,bx,by)
  br label %2302

; <label>:2302                                    ; preds = %2298, %2208
  %2303 = phi float [ %2299, %2298 ], [ 0x3FD6666660000000, %2208 ]
  %2304 = phi float [ %2300, %2298 ], [ 0.000000e+00, %2208 ]
  %2305 = phi float [ %2301, %2298 ], [ 0.000000e+00, %2208 ]
  %2306 = phi float [ %2242, %2298 ], [ 1.000000e+00, %2208 ]
  %2307 = add i32 %30, 192
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = lshr i32 %2309, 22
  %2311 = shl nuw nsw i32 %2310, 5
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 64
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2350, label %2317

; <label>:2317                                    ; preds = %2302
  %2318 = add i32 %30, 416
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 131072
  %2326 = icmp eq i32 %2325, 0
  %2327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %75, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.ResRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.ResRet.f32 %2327, 2
  %2331 = fmul fast float %2328, %315
  %2332 = fmul fast float %2329, %318
  %2333 = fmul fast float %2330, %321
  br i1 %2326, label %2340, label %2334

; <label>:2334                                    ; preds = %2317
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = fmul fast float %2336, %2331
  %2338 = fmul fast float %2336, %2332
  %2339 = fmul fast float %2336, %2333
  br label %2340

; <label>:2340                                    ; preds = %2334, %2317
  %2341 = phi float [ %2337, %2334 ], [ %2331, %2317 ]
  %2342 = phi float [ %2338, %2334 ], [ %2332, %2317 ]
  %2343 = phi float [ %2339, %2334 ], [ %2333, %2317 ]
  %2344 = fmul fast float %2341, %2312
  %2345 = select i1 %214, float %2344, float %2341
  %2346 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2342, float %2343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = select i1 %214, float 0.000000e+00, float %2341
  %2348 = select i1 %214, float %2346, float %2342
  %2349 = select i1 %214, float 0.000000e+00, float %2343
  br label %2350

; <label>:2350                                    ; preds = %2340, %2302
  %2351 = phi float [ %2347, %2340 ], [ 0.000000e+00, %2302 ]
  %2352 = phi float [ %2348, %2340 ], [ 0.000000e+00, %2302 ]
  %2353 = phi float [ %2349, %2340 ], [ 0.000000e+00, %2302 ]
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 10240
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2402, label %2358

; <label>:2358                                    ; preds = %2350
  %2359 = add i32 %30, 484
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %76, float %1930, float %1931, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 3
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 1048576
  %2370 = icmp ne i32 %2369, 0
  %2371 = and i32 %2368, 8192
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2388, label %2373

; <label>:2373                                    ; preds = %2358
  %2374 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2375 = select i1 %2370, float %2374, float %2365
  %2376 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2377 = select i1 %2370, float %2376, float %2365
  %2378 = add i32 %30, 128
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = lshr i32 %2380, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F80101020000000
  %2385 = fmul fast float %2384, %2377
  %2386 = fmul fast float %2384, %2365
  %2387 = fmul fast float %2384, %2375
  br label %2388

; <label>:2388                                    ; preds = %2373, %2358
  %2389 = phi float [ %2385, %2373 ], [ 0.000000e+00, %2358 ]
  %2390 = phi float [ %2386, %2373 ], [ 0.000000e+00, %2358 ]
  %2391 = phi float [ %2387, %2373 ], [ 0.000000e+00, %2358 ]
  %2392 = and i32 %2368, 2048
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2402, label %2394

; <label>:2394                                    ; preds = %2388
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = shl i32 %2396, 4
  %2398 = and i32 %2397, 32752
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = fmul fast float %2399, %2366
  %2401 = call float @dx.op.binary.f32(i32 35, float %2400, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2402

; <label>:2402                                    ; preds = %2394, %2388, %2350
  %2403 = phi float [ %2389, %2394 ], [ %2389, %2388 ], [ 0.000000e+00, %2350 ]
  %2404 = phi float [ %2390, %2394 ], [ %2390, %2388 ], [ 0.000000e+00, %2350 ]
  %2405 = phi float [ %2391, %2394 ], [ %2391, %2388 ], [ 0.000000e+00, %2350 ]
  %2406 = phi float [ %2401, %2394 ], [ 0x3F70101020000000, %2388 ], [ 0x3F70101020000000, %2350 ]
  %2407 = add i32 %30, 128
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 255
  %2411 = uitofp i32 %2410 to float
  %2412 = lshr i32 %2409, 8
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2223, float %2224, float %2225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = fmul fast float %2414, %2415
  %2417 = fadd fast float %2416, %2411
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  br i1 %1822, label %2420, label %2428

; <label>:2420                                    ; preds = %2402
  %2421 = fsub fast float 1.000000e+00, %2003
  %2422 = fmul fast float %2421, %1807
  %2423 = fmul fast float %2421, %1808
  %2424 = fmul fast float %2421, %1809
  %2425 = fmul fast float %2421, %1810
  %2426 = fmul fast float %2421, %1811
  %2427 = fmul fast float %2421, %1812
  br label %2428

; <label>:2428                                    ; preds = %2420, %2402
  %2429 = phi float [ %2422, %2420 ], [ %1807, %2402 ]
  %2430 = phi float [ %2423, %2420 ], [ %1808, %2402 ]
  %2431 = phi float [ %2424, %2420 ], [ %1809, %2402 ]
  %2432 = phi float [ %2425, %2420 ], [ %1810, %2402 ]
  %2433 = phi float [ %2426, %2420 ], [ %1811, %2402 ]
  %2434 = phi float [ %2427, %2420 ], [ %1812, %2402 ]
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 3
  %2438 = icmp eq i32 %2437, 3
  br i1 %2438, label %2517, label %2439

; <label>:2439                                    ; preds = %2428
  %2440 = and i32 %2436, 16
  %2441 = icmp ne i32 %2440, 0
  %2442 = select i1 %2441, float %2003, float 0.000000e+00
  %2443 = icmp eq i32 %2437, 0
  br i1 %2443, label %2444, label %2472

; <label>:2444                                    ; preds = %2439
  %2445 = and i32 %2436, 64
  %2446 = icmp ne i32 %2445, 0
  %2447 = select i1 %2446, float %2003, float 0.000000e+00
  %2448 = fsub fast float %2223, %2429
  %2449 = fsub fast float %2224, %2430
  %2450 = fsub fast float %2225, %2431
  %2451 = fmul fast float %2442, %2448
  %2452 = fmul fast float %2442, %2449
  %2453 = fmul fast float %2442, %2450
  %2454 = fadd fast float %2451, %2429
  %2455 = fadd fast float %2452, %2430
  %2456 = fadd fast float %2453, %2431
  %2457 = fsub fast float %2209, %1816
  %2458 = fmul fast float %2442, %2457
  %2459 = fadd fast float %2458, %1816
  %2460 = fsub fast float %2351, %2432
  %2461 = fsub fast float %2352, %2433
  %2462 = fsub fast float %2353, %2434
  %2463 = fmul fast float %2447, %2460
  %2464 = fmul fast float %2447, %2461
  %2465 = fmul fast float %2447, %2462
  %2466 = fadd fast float %2463, %2432
  %2467 = fadd fast float %2464, %2433
  %2468 = fadd fast float %2465, %2434
  %2469 = fsub fast float %2419, %1820
  %2470 = fmul fast float %2442, %2469
  %2471 = fadd fast float %2470, %1820
  br label %2517

; <label>:2472                                    ; preds = %2439
  %2473 = icmp eq i32 %2437, 1
  br i1 %2473, label %2474, label %2487

; <label>:2474                                    ; preds = %2472
  %2475 = fadd fast float %2223, -1.000000e+00
  %2476 = fadd fast float %2224, -1.000000e+00
  %2477 = fadd fast float %2225, -1.000000e+00
  %2478 = fmul fast float %2442, %2475
  %2479 = fmul fast float %2442, %2476
  %2480 = fmul fast float %2442, %2477
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fmul fast float %2481, %2429
  %2485 = fmul fast float %2482, %2430
  %2486 = fmul fast float %2483, %2431
  br label %2517

; <label>:2487                                    ; preds = %2472
  %2488 = icmp eq i32 %2437, 2
  br i1 %2488, label %2489, label %2517

; <label>:2489                                    ; preds = %2487
  %2490 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fmul fast float %2493, %2442
  %2497 = fmul fast float %2494, %2442
  %2498 = fmul fast float %2495, %2442
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fmul fast float %2499, 2.000000e+00
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2503, %2429
  %2505 = fadd fast float %2504, %2502
  %2506 = fmul fast float %2505, %2429
  %2507 = fmul fast float %2500, 2.000000e+00
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2508, %2430
  %2510 = fadd fast float %2509, %2507
  %2511 = fmul fast float %2510, %2430
  %2512 = fmul fast float %2501, 2.000000e+00
  %2513 = fsub fast float 1.000000e+00, %2512
  %2514 = fmul fast float %2513, %2431
  %2515 = fadd fast float %2514, %2512
  %2516 = fmul fast float %2515, %2431
  br label %2517

; <label>:2517                                    ; preds = %2489, %2487, %2474, %2444, %2428
  %2518 = phi float [ %2429, %2428 ], [ %2506, %2489 ], [ %2429, %2487 ], [ %2484, %2474 ], [ %2454, %2444 ]
  %2519 = phi float [ %2430, %2428 ], [ %2511, %2489 ], [ %2430, %2487 ], [ %2485, %2474 ], [ %2455, %2444 ]
  %2520 = phi float [ %2431, %2428 ], [ %2516, %2489 ], [ %2431, %2487 ], [ %2486, %2474 ], [ %2456, %2444 ]
  %2521 = phi float [ %2432, %2428 ], [ %2432, %2489 ], [ %2432, %2487 ], [ %2432, %2474 ], [ %2466, %2444 ]
  %2522 = phi float [ %2433, %2428 ], [ %2433, %2489 ], [ %2433, %2487 ], [ %2433, %2474 ], [ %2467, %2444 ]
  %2523 = phi float [ %2434, %2428 ], [ %2434, %2489 ], [ %2434, %2487 ], [ %2434, %2474 ], [ %2468, %2444 ]
  %2524 = phi float [ %1816, %2428 ], [ %1816, %2489 ], [ %1816, %2487 ], [ %1816, %2474 ], [ %2459, %2444 ]
  %2525 = phi float [ %1820, %2428 ], [ %1820, %2489 ], [ %1820, %2487 ], [ %1820, %2474 ], [ %2471, %2444 ]
  %2526 = and i32 %2436, 12
  %2527 = icmp eq i32 %2526, 12
  br i1 %2527, label %2634, label %2528

; <label>:2528                                    ; preds = %2517
  %2529 = and i32 %2436, 2097184
  %2530 = icmp eq i32 %2529, 2097184
  %2531 = select i1 %2530, float %2003, float 0.000000e+00
  %2532 = and i32 %2436, 4194336
  %2533 = icmp eq i32 %2532, 4194336
  %2534 = select i1 %2533, float %2003, float 0.000000e+00
  %2535 = and i32 %2436, 8388640
  %2536 = icmp eq i32 %2535, 8388640
  %2537 = select i1 %2536, float %2003, float 0.000000e+00
  %2538 = and i32 %2436, 2048
  %2539 = icmp ne i32 %2538, 0
  %2540 = select i1 %2539, float %2003, float 0.000000e+00
  %2541 = and i32 %2436, 8192
  %2542 = icmp ne i32 %2541, 0
  %2543 = select i1 %2542, float %2003, float 0.000000e+00
  %2544 = icmp eq i32 %2526, 0
  br i1 %2544, label %2545, label %2570

; <label>:2545                                    ; preds = %2528
  %2546 = fsub fast float %2304, %1805
  %2547 = fsub fast float %2305, %1806
  %2548 = fmul fast float %2531, %2546
  %2549 = fmul fast float %2531, %2547
  %2550 = fadd fast float %2548, %1805
  %2551 = fadd fast float %2549, %1806
  %2552 = fsub fast float %2306, %1818
  %2553 = fmul fast float %2534, %2552
  %2554 = fadd fast float %2553, %1818
  %2555 = fsub fast float %2303, %1817
  %2556 = fmul fast float %2537, %2555
  %2557 = fadd fast float %2556, %1817
  %2558 = fsub fast float %2406, %1819
  %2559 = fmul fast float %2540, %2558
  %2560 = fadd fast float %2559, %1819
  %2561 = fsub fast float %2403, %1813
  %2562 = fsub fast float %2404, %1814
  %2563 = fsub fast float %2405, %1815
  %2564 = fmul fast float %2543, %2561
  %2565 = fmul fast float %2543, %2562
  %2566 = fmul fast float %2543, %2563
  %2567 = fadd fast float %2564, %1813
  %2568 = fadd fast float %2565, %1814
  %2569 = fadd fast float %2566, %1815
  br label %2634

; <label>:2570                                    ; preds = %2528
  %2571 = icmp eq i32 %2526, 4
  br i1 %2571, label %2572, label %2612

; <label>:2572                                    ; preds = %2570
  %2573 = fmul fast float %2531, %2304
  %2574 = fmul fast float %2531, %2305
  %2575 = fadd fast float %2573, %1805
  %2576 = fadd fast float %2574, %1806
  %2577 = call float @dx.op.binary.f32(i32 36, float %1818, float %2306)  ; FMin(a,b)
  %2578 = fsub fast float %2577, %1818
  %2579 = fmul fast float %2578, %2534
  %2580 = fadd fast float %2579, %1818
  %2581 = fadd fast float %2303, %1817
  %2582 = fmul fast float %2581, 0x3FF337FAE0000000
  %2583 = fmul fast float %1817, %1817
  %2584 = fmul fast float %2303, %2303
  %2585 = fadd fast float %2584, %2583
  %2586 = fmul fast float %2585, 0x3FE5152B00000000
  %2587 = fmul fast float %1817, 0xBFCC1F85E0000000
  %2588 = fmul fast float %2587, %2303
  %2589 = fadd fast float %2588, 0xBFE1363700000000
  %2590 = fadd fast float %2589, %2582
  %2591 = fsub fast float %2590, %2586
  %2592 = fmul fast float %2581, 0x3FBA6F0D00000000
  %2593 = fmul fast float %2585, 0x3FD0432880000000
  %2594 = fmul fast float %1817, 0xBFEF110800000000
  %2595 = fmul fast float %2594, %2303
  %2596 = fadd fast float %2595, 1.000000e+00
  %2597 = fsub fast float %2596, %2592
  %2598 = fadd fast float %2597, %2593
  %2599 = fdiv fast float %2591, %2598
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = fsub fast float %2600, %1817
  %2602 = fmul fast float %2601, %2537
  %2603 = fadd fast float %2602, %1817
  %2604 = fmul fast float %2540, %2406
  %2605 = fadd fast float %2604, %1819
  %2606 = fmul fast float %2543, %2403
  %2607 = fmul fast float %2543, %2404
  %2608 = fmul fast float %2543, %2405
  %2609 = fadd fast float %2606, %1813
  %2610 = fadd fast float %2607, %1814
  %2611 = fadd fast float %2608, %1815
  br label %2634

; <label>:2612                                    ; preds = %2570
  %2613 = icmp eq i32 %2526, 8
  br i1 %2613, label %2614, label %2634

; <label>:2614                                    ; preds = %2612
  %2615 = fmul fast float %2531, %2304
  %2616 = fmul fast float %2531, %2305
  %2617 = fadd fast float %2615, %1805
  %2618 = fadd fast float %2616, %1806
  %2619 = call float @dx.op.binary.f32(i32 36, float %1818, float %2306)  ; FMin(a,b)
  %2620 = fsub fast float %2619, %1818
  %2621 = fmul fast float %2620, %2534
  %2622 = fadd fast float %2621, %1818
  %2623 = fsub fast float %2303, %1817
  %2624 = fmul fast float %2537, %2623
  %2625 = fadd fast float %2624, %1817
  %2626 = fmul fast float %2540, %2406
  %2627 = fadd fast float %2626, %1819
  %2628 = fmul fast float %2543, %2403
  %2629 = fmul fast float %2543, %2404
  %2630 = fmul fast float %2543, %2405
  %2631 = fadd fast float %2628, %1813
  %2632 = fadd fast float %2629, %1814
  %2633 = fadd fast float %2630, %1815
  br label %2634

; <label>:2634                                    ; preds = %2614, %2612, %2572, %2545, %2517, %2002, %1821, %1804
  %2635 = phi float [ %1805, %2517 ], [ %1805, %2002 ], [ %1805, %1804 ], [ %2617, %2614 ], [ %1805, %2612 ], [ %2575, %2572 ], [ %2550, %2545 ], [ %1805, %1821 ]
  %2636 = phi float [ %1806, %2517 ], [ %1806, %2002 ], [ %1806, %1804 ], [ %2618, %2614 ], [ %1806, %2612 ], [ %2576, %2572 ], [ %2551, %2545 ], [ %1806, %1821 ]
  %2637 = phi float [ %2518, %2517 ], [ %1807, %2002 ], [ %1807, %1804 ], [ %2518, %2614 ], [ %2518, %2612 ], [ %2518, %2572 ], [ %2518, %2545 ], [ %1807, %1821 ]
  %2638 = phi float [ %2519, %2517 ], [ %1808, %2002 ], [ %1808, %1804 ], [ %2519, %2614 ], [ %2519, %2612 ], [ %2519, %2572 ], [ %2519, %2545 ], [ %1808, %1821 ]
  %2639 = phi float [ %2520, %2517 ], [ %1809, %2002 ], [ %1809, %1804 ], [ %2520, %2614 ], [ %2520, %2612 ], [ %2520, %2572 ], [ %2520, %2545 ], [ %1809, %1821 ]
  %2640 = phi float [ %2521, %2517 ], [ %1810, %2002 ], [ %1810, %1804 ], [ %2521, %2614 ], [ %2521, %2612 ], [ %2521, %2572 ], [ %2521, %2545 ], [ %1810, %1821 ]
  %2641 = phi float [ %2522, %2517 ], [ %1811, %2002 ], [ %1811, %1804 ], [ %2522, %2614 ], [ %2522, %2612 ], [ %2522, %2572 ], [ %2522, %2545 ], [ %1811, %1821 ]
  %2642 = phi float [ %2523, %2517 ], [ %1812, %2002 ], [ %1812, %1804 ], [ %2523, %2614 ], [ %2523, %2612 ], [ %2523, %2572 ], [ %2523, %2545 ], [ %1812, %1821 ]
  %2643 = phi float [ %1813, %2517 ], [ %1813, %2002 ], [ %1813, %1804 ], [ %2631, %2614 ], [ %1813, %2612 ], [ %2609, %2572 ], [ %2567, %2545 ], [ %1813, %1821 ]
  %2644 = phi float [ %1814, %2517 ], [ %1814, %2002 ], [ %1814, %1804 ], [ %2632, %2614 ], [ %1814, %2612 ], [ %2610, %2572 ], [ %2568, %2545 ], [ %1814, %1821 ]
  %2645 = phi float [ %1815, %2517 ], [ %1815, %2002 ], [ %1815, %1804 ], [ %2633, %2614 ], [ %1815, %2612 ], [ %2611, %2572 ], [ %2569, %2545 ], [ %1815, %1821 ]
  %2646 = phi float [ %2524, %2517 ], [ %1816, %2002 ], [ %1816, %1804 ], [ %2524, %2614 ], [ %2524, %2612 ], [ %2524, %2572 ], [ %2524, %2545 ], [ %1816, %1821 ]
  %2647 = phi float [ %1817, %2517 ], [ %1817, %2002 ], [ %1817, %1804 ], [ %2625, %2614 ], [ %1817, %2612 ], [ %2603, %2572 ], [ %2557, %2545 ], [ %1817, %1821 ]
  %2648 = phi float [ %1818, %2517 ], [ %1818, %2002 ], [ %1818, %1804 ], [ %2622, %2614 ], [ %1818, %2612 ], [ %2580, %2572 ], [ %2554, %2545 ], [ %1818, %1821 ]
  %2649 = phi float [ %1819, %2517 ], [ %1819, %2002 ], [ %1819, %1804 ], [ %2627, %2614 ], [ %1819, %2612 ], [ %2605, %2572 ], [ %2560, %2545 ], [ %1819, %1821 ]
  %2650 = phi float [ %2525, %2517 ], [ %1820, %2002 ], [ %1820, %1804 ], [ %2525, %2614 ], [ %2525, %2612 ], [ %2525, %2572 ], [ %2525, %2545 ], [ %1820, %1821 ]
  br i1 %402, label %3464, label %2651

; <label>:2651                                    ; preds = %2634
  %2652 = icmp ult i32 %453, 4
  %2653 = add i32 %30, 72
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = add i32 %30, 76
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = or i32 %2658, %2655
  %2660 = icmp eq i32 %2659, 0
  br i1 %2660, label %3464, label %2661

; <label>:2661                                    ; preds = %2651
  %2662 = and i32 %2655, 262144
  %2663 = icmp ne i32 %2662, 0
  %2664 = select i1 %2663, float %35, float 1.000000e+00
  %2665 = select i1 %2663, float %36, float 0.000000e+00
  %2666 = select i1 %2663, float %37, float 0.000000e+00
  %2667 = select i1 %2663, float %38, float 1.000000e+00
  %2668 = select i1 %2663, float %39, float %67
  %2669 = select i1 %2663, float %40, float %68
  %2670 = add i32 %30, 332
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 16
  %2674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2673)  ; LegacyF16ToF32(value)
  %2675 = fmul fast float %2674, 0x3F50624DE0000000
  %2676 = add i32 %30, 136
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = lshr i32 %2678, 16
  %2680 = and i32 %2679, 255
  %2681 = lshr i32 %2678, 24
  %2682 = add i32 %30, 340
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 65535
  %2686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2685)  ; LegacyF16ToF32(value)
  %2687 = lshr i32 %2684, 16
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = add i32 %30, 80
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = lshr i32 %2691, 22
  %2693 = shl nuw nsw i32 %2692, 5
  %2694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2693)  ; LegacyF16ToF32(value)
  %2695 = shl i32 %2691, 4
  %2696 = and i32 %2695, 32752
  %2697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2696)  ; LegacyF16ToF32(value)
  %2698 = lshr i32 %2691, 7
  %2699 = and i32 %2698, 32752
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2703 = fmul fast float %2702, 1.000000e+03
  %2704 = fmul fast float %392, %2703
  %2705 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2706 = fadd fast float %2705, %382
  %2707 = fmul fast float %393, %2703
  %2708 = call float @dx.op.unary.f32(i32 22, float %2707)  ; Frc(value)
  %2709 = fadd fast float %2708, %384
  %2710 = fmul fast float %2675, %2703
  %2711 = call float @dx.op.unary.f32(i32 22, float %2710)  ; Frc(value)
  %2712 = fmul fast float %2711, 0x401921FB60000000
  %2713 = fadd fast float %2712, %2694
  %2714 = call float @dx.op.unary.f32(i32 13, float %2713)  ; Sin(value)
  %2715 = call float @dx.op.unary.f32(i32 12, float %2713)  ; Cos(value)
  %2716 = fsub fast float -0.000000e+00, %2714
  %2717 = fadd fast float %2668, -5.000000e-01
  %2718 = fadd fast float %2669, -5.000000e-01
  %2719 = fmul fast float %2686, %2717
  %2720 = fmul fast float %2688, %2718
  %2721 = fadd fast float %2719, 5.000000e-01
  %2722 = fadd fast float %2720, 5.000000e-01
  %2723 = fmul fast float %2697, %2721
  %2724 = fmul fast float %2700, %2722
  %2725 = fmul fast float %2715, %2723
  %2726 = call float @dx.op.tertiary.f32(i32 46, float %2716, float %2724, float %2725)  ; FMad(a,b,c)
  %2727 = fmul fast float %2714, %2723
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2715, float %2724, float %2727)  ; FMad(a,b,c)
  %2729 = fadd fast float %2706, %2726
  %2730 = fadd fast float %2709, %2728
  %2731 = icmp ugt i32 %2680, 1
  %2732 = icmp ugt i32 %2678, 33554431
  %2733 = or i1 %2732, %2731
  br i1 %2733, label %2734, label %2759

; <label>:2734                                    ; preds = %2661
  %2735 = add i32 %30, 276
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = lshr i32 %2737, 16
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = fmul fast float %2702, %2739
  %2741 = call float @dx.op.unary.f32(i32 22, float %2740)  ; Frc(value)
  %2742 = mul nuw nsw i32 %2680, %2681
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2741, %2743
  %2745 = call float @dx.op.unary.f32(i32 27, float %2744)  ; Round_ni(value)
  %2746 = fptoui float %2745 to i32
  %2747 = urem i32 %2746, %2680
  %2748 = udiv i32 %2746, %2681
  %2749 = call float @dx.op.unary.f32(i32 22, float %2729)  ; Frc(value)
  %2750 = call float @dx.op.unary.f32(i32 22, float %2730)  ; Frc(value)
  %2751 = uitofp i32 %2747 to float
  %2752 = uitofp i32 %2748 to float
  %2753 = fadd fast float %2749, %2751
  %2754 = fadd fast float %2750, %2752
  %2755 = uitofp i32 %2680 to float
  %2756 = uitofp i32 %2681 to float
  %2757 = fdiv fast float %2753, %2755
  %2758 = fdiv fast float %2754, %2756
  br label %2759

; <label>:2759                                    ; preds = %2734, %2661
  %2760 = phi float [ %2757, %2734 ], [ %2729, %2661 ]
  %2761 = phi float [ %2758, %2734 ], [ %2730, %2661 ]
  %2762 = and i32 %2655, 256
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2810, label %2764

; <label>:2764                                    ; preds = %2759
  %2765 = add i32 %30, 452
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %76, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = add i32 %30, 148
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = shl i32 %2774, 4
  %2776 = and i32 %2775, 32752
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = lshr i32 %2774, 7
  %2779 = and i32 %2778, 32752
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = fsub fast float 1.000000e+00, %448
  %2782 = call float @dx.op.binary.f32(i32 35, float %2781, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2783 = bitcast float %448 to i32
  %2784 = sitofp i32 %2783 to float
  %2785 = fadd fast float %2784, 0xC1CFBF8940000000
  %2786 = fmul fast float %2780, %2785
  %2787 = fadd fast float %2786, 0x41CFBF8940000000
  %2788 = fptosi float %2787 to i32
  %2789 = bitcast i32 %2788 to float
  %2790 = bitcast float %2782 to i32
  %2791 = sitofp i32 %2790 to float
  %2792 = fadd fast float %2791, 0xC1CFBF8940000000
  %2793 = fmul fast float %2792, %2780
  %2794 = fadd fast float %2793, 0x41CFBF8940000000
  %2795 = fptosi float %2794 to i32
  %2796 = bitcast i32 %2795 to float
  %2797 = fmul fast float %2789, %2777
  %2798 = fmul fast float %2796, %2777
  %2799 = fsub fast float %2782, %2797
  %2800 = fadd fast float %2798, %2782
  %2801 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2802 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2803 = fsub fast float %2771, %2801
  %2804 = fsub fast float %2802, %2801
  %2805 = bitcast float %2804 to i32
  %2806 = sub nsw i32 2129859010, %2805
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2807, %2803
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  br label %2810

; <label>:2810                                    ; preds = %2764, %2759
  %2811 = phi float [ %2809, %2764 ], [ %448, %2759 ]
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = and i32 %2813, 128
  %2815 = icmp eq i32 %2814, 0
  br i1 %2815, label %2832, label %2816

; <label>:2816                                    ; preds = %2810
  %2817 = add i32 %30, 436
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %2819, 0
  %2821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2821, %dx.types.Handle %76, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2823 = extractvalue %dx.types.ResRet.f32 %2822, 0
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = and i32 %2825, 524288
  %2827 = icmp ne i32 %2826, 0
  %2828 = fcmp fast ogt float %2823, 0x3FE0101020000000
  %2829 = select i1 %2828, float 1.000000e+00, float 0.000000e+00
  %2830 = select i1 %2827, float %2829, float %2823
  %2831 = fmul fast float %2830, %2811
  br label %2832

; <label>:2832                                    ; preds = %2816, %2810
  %2833 = phi float [ %2831, %2816 ], [ %2811, %2810 ]
  %2834 = fcmp fast ult float %2833, 0x3F70101020000000
  br i1 %2834, label %3464, label %2835

; <label>:2835                                    ; preds = %2832
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 16
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %3038, label %2840

; <label>:2840                                    ; preds = %2835
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %30, 388
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %75, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.ResRet.f32 %2848, 2
  %2852 = extractvalue %dx.types.ResRet.f32 %2848, 3
  %2853 = and i32 %2842, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = lshr i32 %2842, 8
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2852, %2854
  %2859 = fadd fast float %2858, %2857
  %2860 = fmul fast float %2859, 0x3F70101000000000
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = and i32 %2862, 512
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2873, label %2865

; <label>:2865                                    ; preds = %2840
  %2866 = add i32 %30, 472
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %2868, 0
  %2870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2870, %dx.types.Handle %76, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 0
  br label %2873

; <label>:2873                                    ; preds = %2865, %2840
  %2874 = phi float [ %2872, %2865 ], [ 1.000000e+00, %2840 ]
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 33554432
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2985, label %2879

; <label>:2879                                    ; preds = %2873
  %2880 = add i32 %30, 272
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 65535
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = lshr i32 %2882, 16
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = add i32 %30, 276
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 65535
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = lshr i32 %2893, 24
  %2895 = uitofp i32 %2894 to float
  %2896 = fmul fast float %2895, 0x3F70101020000000
  %2897 = and i32 %2893, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = fmul fast float %2898, 0x3F70101020000000
  %2900 = lshr i32 %2893, 8
  %2901 = and i32 %2900, 255
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2902, 0x3F70101020000000
  %2904 = lshr i32 %2893, 16
  %2905 = and i32 %2904, 255
  %2906 = uitofp i32 %2905 to float
  %2907 = fmul fast float %2906, 0x3F70101020000000
  %2908 = add i32 %30, 268
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 24
  %2912 = uitofp i32 %2911 to float
  %2913 = fmul fast float %2912, 0x3F70101020000000
  %2914 = and i32 %2910, 255
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2915, 0x3F70101020000000
  %2917 = lshr i32 %2910, 8
  %2918 = and i32 %2917, 255
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2919, 0x3F70101020000000
  %2921 = lshr i32 %2910, 16
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2923, 0x3F70101020000000
  %2925 = bitcast float %2849 to i32
  %2926 = ashr i32 %2925, 1
  %2927 = sub nsw i32 1597463174, %2926
  %2928 = bitcast i32 %2927 to float
  %2929 = fmul fast float %2849, 5.000000e-01
  %2930 = fmul fast float %2928, %2928
  %2931 = fmul fast float %2930, %2929
  %2932 = fsub fast float 1.500000e+00, %2931
  %2933 = fmul fast float %2928, %2849
  %2934 = fmul fast float %2933, %2932
  %2935 = bitcast float %2850 to i32
  %2936 = ashr i32 %2935, 1
  %2937 = sub nsw i32 1597463174, %2936
  %2938 = bitcast i32 %2937 to float
  %2939 = fmul fast float %2850, 5.000000e-01
  %2940 = fmul fast float %2938, %2938
  %2941 = fmul fast float %2940, %2939
  %2942 = fsub fast float 1.500000e+00, %2941
  %2943 = fmul fast float %2938, %2850
  %2944 = fmul fast float %2943, %2942
  %2945 = bitcast float %2851 to i32
  %2946 = ashr i32 %2945, 1
  %2947 = sub nsw i32 1597463174, %2946
  %2948 = bitcast i32 %2947 to float
  %2949 = fmul fast float %2851, 5.000000e-01
  %2950 = fmul fast float %2948, %2948
  %2951 = fmul fast float %2950, %2949
  %2952 = fsub fast float 1.500000e+00, %2951
  %2953 = fmul fast float %2948, %2851
  %2954 = fmul fast float %2953, %2952
  %2955 = fsub fast float %2934, %2916
  %2956 = fsub fast float %2944, %2920
  %2957 = fsub fast float %2954, %2924
  %2958 = fmul fast float %2955, %2884
  %2959 = fmul fast float %2956, %2886
  %2960 = fmul fast float %2957, %2891
  %2961 = fadd fast float %2958, %2899
  %2962 = fadd fast float %2959, %2903
  %2963 = fadd fast float %2960, %2907
  %2964 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2965 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2966 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2967 = fmul fast float %2964, %2964
  %2968 = fmul fast float %2965, %2965
  %2969 = fmul fast float %2966, %2966
  %2970 = fsub fast float %2967, %2849
  %2971 = fsub fast float %2968, %2850
  %2972 = fsub fast float %2969, %2851
  %2973 = fmul fast float %2970, %2874
  %2974 = fmul fast float %2971, %2874
  %2975 = fmul fast float %2972, %2874
  %2976 = fadd fast float %2973, %2849
  %2977 = fadd fast float %2974, %2850
  %2978 = fadd fast float %2975, %2851
  %2979 = fadd fast float %2896, %2860
  %2980 = fsub fast float %2979, %2913
  %2981 = call float @dx.op.unary.f32(i32 7, float %2980)  ; Saturate(value)
  %2982 = fsub fast float %2981, %2860
  %2983 = fmul fast float %2982, %2874
  %2984 = fadd fast float %2983, %2860
  br label %3038

; <label>:2985                                    ; preds = %2873
  %2986 = and i32 %2876, 134217728
  %2987 = icmp eq i32 %2986, 0
  br i1 %2987, label %3022, label %2988

; <label>:2988                                    ; preds = %2985
  %2989 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2990 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2991 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2992 = fadd fast float %2989, -5.000000e-01
  %2993 = fadd fast float %2990, -5.000000e-01
  %2994 = fadd fast float %2991, -5.000000e-01
  %2995 = fmul fast float %2992, %2874
  %2996 = fmul fast float %2993, %2874
  %2997 = fmul fast float %2994, %2874
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = fadd fast float %2996, 5.000000e-01
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %3002 = call float @dx.op.unary.f32(i32 24, float %2850)  ; Sqrt(value)
  %3003 = call float @dx.op.unary.f32(i32 24, float %2851)  ; Sqrt(value)
  %3004 = fmul fast float %2998, 2.000000e+00
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = fmul fast float %3005, %3001
  %3007 = fadd fast float %3006, %3004
  %3008 = fmul fast float %3007, %3001
  %3009 = fmul fast float %2999, 2.000000e+00
  %3010 = fsub fast float 1.000000e+00, %3009
  %3011 = fmul fast float %3010, %3002
  %3012 = fadd fast float %3011, %3009
  %3013 = fmul fast float %3012, %3002
  %3014 = fmul fast float %3000, 2.000000e+00
  %3015 = fsub fast float 1.000000e+00, %3014
  %3016 = fmul fast float %3015, %3003
  %3017 = fadd fast float %3016, %3014
  %3018 = fmul fast float %3017, %3003
  %3019 = fmul fast float %3008, %3008
  %3020 = fmul fast float %3013, %3013
  %3021 = fmul fast float %3018, %3018
  br label %3038

; <label>:3022                                    ; preds = %2985
  %3023 = fmul fast float %369, %369
  %3024 = fmul fast float %373, %373
  %3025 = fmul fast float %377, %377
  %3026 = fadd fast float %3023, -1.000000e+00
  %3027 = fadd fast float %3024, -1.000000e+00
  %3028 = fadd fast float %3025, -1.000000e+00
  %3029 = fmul fast float %2874, %3026
  %3030 = fmul fast float %2874, %3027
  %3031 = fmul fast float %2874, %3028
  %3032 = fadd fast float %3029, 1.000000e+00
  %3033 = fadd fast float %3030, 1.000000e+00
  %3034 = fadd fast float %3031, 1.000000e+00
  %3035 = fmul fast float %3032, %2849
  %3036 = fmul fast float %3033, %2850
  %3037 = fmul fast float %3034, %2851
  br label %3038

; <label>:3038                                    ; preds = %3022, %2988, %2879, %2835
  %3039 = phi float [ %2984, %2879 ], [ %2860, %2988 ], [ %2860, %3022 ], [ 0x3FA23C0BE0000000, %2835 ]
  %3040 = phi float [ %2976, %2879 ], [ %3019, %2988 ], [ %3035, %3022 ], [ 1.000000e+00, %2835 ]
  %3041 = phi float [ %2977, %2879 ], [ %3020, %2988 ], [ %3036, %3022 ], [ 1.000000e+00, %2835 ]
  %3042 = phi float [ %2978, %2879 ], [ %3021, %2988 ], [ %3037, %3022 ], [ 1.000000e+00, %2835 ]
  %3043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.i32 %3043, 1
  %3045 = and i32 %3044, 1
  %3046 = icmp ne i32 %3045, 0
  %3047 = add i32 %30, 356
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 32
  %3051 = icmp ne i32 %3050, 0
  %3052 = and i1 %3046, %3051
  %3053 = select i1 %3052, float 1.000000e+00, float %3040
  %3054 = select i1 %3052, float 0x3FD3333340000000, float %3041
  %3055 = select i1 %3052, float 0x3FD3333340000000, float %3042
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 32
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3132, label %3060

; <label>:3060                                    ; preds = %3038
  %3061 = add i32 %30, 140
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %30, 404
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = add i32 %3066, 0
  %3068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3069 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3068, %dx.types.Handle %75, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.ResRet.f32 %3069, 2
  %3073 = extractvalue %dx.types.ResRet.f32 %3069, 3
  %3074 = and i32 %3063, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = lshr i32 %3063, 8
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = lshr i32 %3063, 16
  %3080 = and i32 %3079, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = fmul fast float %3081, 0x3F70101000000000
  %3083 = fmul fast float %3070, %3075
  %3084 = fadd fast float %3083, %3078
  %3085 = fmul fast float %3084, 0x3F70101000000000
  %3086 = fadd fast float %3071, -5.000000e-01
  %3087 = fadd fast float %3073, -5.000000e-01
  %3088 = fmul fast float %3086, %3082
  %3089 = fmul fast float %3087, %3082
  %3090 = fadd fast float %3088, 5.000000e-01
  %3091 = fadd fast float %3089, 5.000000e-01
  %3092 = fmul fast float %3090, 2.000000e+00
  %3093 = fadd fast float %3092, -1.000000e+00
  %3094 = fmul fast float %3091, 2.000000e+00
  %3095 = fadd fast float %3094, -1.000000e+00
  %3096 = fadd fast float %3093, %3095
  %3097 = fmul fast float %3096, 5.000000e-01
  %3098 = fsub fast float %3093, %3095
  %3099 = fmul fast float %3098, 5.000000e-01
  %3100 = call float @dx.op.unary.f32(i32 6, float %3097)  ; FAbs(value)
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = call float @dx.op.unary.f32(i32 6, float %3099)  ; FAbs(value)
  %3103 = fsub fast float %3101, %3102
  %3104 = call float @dx.op.dot3.f32(i32 55, float %3097, float %3099, float %3103, float %3097, float %3099, float %3103)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = call float @dx.op.unary.f32(i32 25, float %3104)  ; Rsqrt(value)
  %3106 = fmul fast float %3097, %3105
  %3107 = fmul fast float %3099, %3105
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 67108864
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3128, label %3112

; <label>:3112                                    ; preds = %3060
  %3113 = add i32 %30, 328
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 65535
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 65535
  %3121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3120)  ; LegacyF16ToF32(value)
  %3122 = lshr i32 %3115, 16
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = fsub fast float %3085, %3123
  %3125 = fmul fast float %3124, %3117
  %3126 = fadd fast float %3125, %3121
  %3127 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  br label %3128

; <label>:3128                                    ; preds = %3112, %3060
  %3129 = phi float [ %3127, %3112 ], [ %3085, %3060 ]
  %3130 = call float @dx.op.dot2.f32(i32 54, float %3106, float %3107, float %2664, float %2665)  ; Dot2(ax,ay,bx,by)
  %3131 = call float @dx.op.dot2.f32(i32 54, float %3106, float %3107, float %2666, float %2667)  ; Dot2(ax,ay,bx,by)
  br label %3132

; <label>:3132                                    ; preds = %3128, %3038
  %3133 = phi float [ %3129, %3128 ], [ 0x3FD6666660000000, %3038 ]
  %3134 = phi float [ %3130, %3128 ], [ 0.000000e+00, %3038 ]
  %3135 = phi float [ %3131, %3128 ], [ 0.000000e+00, %3038 ]
  %3136 = phi float [ %3072, %3128 ], [ 1.000000e+00, %3038 ]
  %3137 = add i32 %30, 208
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = lshr i32 %3139, 22
  %3141 = shl nuw nsw i32 %3140, 5
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 64
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3180, label %3147

; <label>:3147                                    ; preds = %3132
  %3148 = add i32 %30, 420
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %3150, 0
  %3152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 131072
  %3156 = icmp eq i32 %3155, 0
  %3157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3152, %dx.types.Handle %75, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.ResRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.ResRet.f32 %3157, 2
  %3161 = fmul fast float %3158, %357
  %3162 = fmul fast float %3159, %360
  %3163 = fmul fast float %3160, %363
  br i1 %3156, label %3170, label %3164

; <label>:3164                                    ; preds = %3147
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 0
  %3167 = fmul fast float %3166, %3161
  %3168 = fmul fast float %3166, %3162
  %3169 = fmul fast float %3166, %3163
  br label %3170

; <label>:3170                                    ; preds = %3164, %3147
  %3171 = phi float [ %3167, %3164 ], [ %3161, %3147 ]
  %3172 = phi float [ %3168, %3164 ], [ %3162, %3147 ]
  %3173 = phi float [ %3169, %3164 ], [ %3163, %3147 ]
  %3174 = fmul fast float %3171, %3142
  %3175 = select i1 %214, float %3174, float %3171
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3172, float %3173, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3177 = select i1 %214, float 0.000000e+00, float %3171
  %3178 = select i1 %214, float %3176, float %3172
  %3179 = select i1 %214, float 0.000000e+00, float %3173
  br label %3180

; <label>:3180                                    ; preds = %3170, %3132
  %3181 = phi float [ %3177, %3170 ], [ 0.000000e+00, %3132 ]
  %3182 = phi float [ %3178, %3170 ], [ 0.000000e+00, %3132 ]
  %3183 = phi float [ %3179, %3170 ], [ 0.000000e+00, %3132 ]
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 10240
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3232, label %3188

; <label>:3188                                    ; preds = %3180
  %3189 = add i32 %30, 488
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = add i32 %3191, 0
  %3193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3193, %dx.types.Handle %76, float %2760, float %2761, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 3
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 1048576
  %3200 = icmp ne i32 %3199, 0
  %3201 = and i32 %3198, 8192
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3218, label %3203

; <label>:3203                                    ; preds = %3188
  %3204 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3205 = select i1 %3200, float %3204, float %3195
  %3206 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3207 = select i1 %3200, float %3206, float %3195
  %3208 = add i32 %30, 144
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = lshr i32 %3210, 16
  %3212 = and i32 %3211, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F80101020000000
  %3215 = fmul fast float %3214, %3207
  %3216 = fmul fast float %3214, %3195
  %3217 = fmul fast float %3214, %3205
  br label %3218

; <label>:3218                                    ; preds = %3203, %3188
  %3219 = phi float [ %3215, %3203 ], [ 0.000000e+00, %3188 ]
  %3220 = phi float [ %3216, %3203 ], [ 0.000000e+00, %3188 ]
  %3221 = phi float [ %3217, %3203 ], [ 0.000000e+00, %3188 ]
  %3222 = and i32 %3198, 2048
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3232, label %3224

; <label>:3224                                    ; preds = %3218
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = shl i32 %3226, 4
  %3228 = and i32 %3227, 32752
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = fmul fast float %3229, %3196
  %3231 = call float @dx.op.binary.f32(i32 35, float %3230, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3232

; <label>:3232                                    ; preds = %3224, %3218, %3180
  %3233 = phi float [ %3219, %3224 ], [ %3219, %3218 ], [ 0.000000e+00, %3180 ]
  %3234 = phi float [ %3220, %3224 ], [ %3220, %3218 ], [ 0.000000e+00, %3180 ]
  %3235 = phi float [ %3221, %3224 ], [ %3221, %3218 ], [ 0.000000e+00, %3180 ]
  %3236 = phi float [ %3231, %3224 ], [ 0x3F70101020000000, %3218 ], [ 0x3F70101020000000, %3180 ]
  %3237 = add i32 %30, 144
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = lshr i32 %3239, 8
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3053, float %3054, float %3055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = fmul fast float %3244, %3245
  %3247 = fadd fast float %3246, %3241
  %3248 = fmul fast float %3247, 0x3F70101020000000
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  br i1 %2652, label %3250, label %3258

; <label>:3250                                    ; preds = %3232
  %3251 = fsub fast float 1.000000e+00, %2833
  %3252 = fmul fast float %3251, %2637
  %3253 = fmul fast float %3251, %2638
  %3254 = fmul fast float %3251, %2639
  %3255 = fmul fast float %3251, %2640
  %3256 = fmul fast float %3251, %2641
  %3257 = fmul fast float %3251, %2642
  br label %3258

; <label>:3258                                    ; preds = %3250, %3232
  %3259 = phi float [ %3252, %3250 ], [ %2637, %3232 ]
  %3260 = phi float [ %3253, %3250 ], [ %2638, %3232 ]
  %3261 = phi float [ %3254, %3250 ], [ %2639, %3232 ]
  %3262 = phi float [ %3255, %3250 ], [ %2640, %3232 ]
  %3263 = phi float [ %3256, %3250 ], [ %2641, %3232 ]
  %3264 = phi float [ %3257, %3250 ], [ %2642, %3232 ]
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 3
  %3268 = icmp eq i32 %3267, 3
  br i1 %3268, label %3347, label %3269

; <label>:3269                                    ; preds = %3258
  %3270 = and i32 %3266, 16
  %3271 = icmp ne i32 %3270, 0
  %3272 = select i1 %3271, float %2833, float 0.000000e+00
  %3273 = icmp eq i32 %3267, 0
  br i1 %3273, label %3274, label %3302

; <label>:3274                                    ; preds = %3269
  %3275 = and i32 %3266, 64
  %3276 = icmp ne i32 %3275, 0
  %3277 = select i1 %3276, float %2833, float 0.000000e+00
  %3278 = fsub fast float %3053, %3259
  %3279 = fsub fast float %3054, %3260
  %3280 = fsub fast float %3055, %3261
  %3281 = fmul fast float %3272, %3278
  %3282 = fmul fast float %3272, %3279
  %3283 = fmul fast float %3272, %3280
  %3284 = fadd fast float %3281, %3259
  %3285 = fadd fast float %3282, %3260
  %3286 = fadd fast float %3283, %3261
  %3287 = fsub fast float %3039, %2646
  %3288 = fmul fast float %3272, %3287
  %3289 = fadd fast float %3288, %2646
  %3290 = fsub fast float %3181, %3262
  %3291 = fsub fast float %3182, %3263
  %3292 = fsub fast float %3183, %3264
  %3293 = fmul fast float %3277, %3290
  %3294 = fmul fast float %3277, %3291
  %3295 = fmul fast float %3277, %3292
  %3296 = fadd fast float %3293, %3262
  %3297 = fadd fast float %3294, %3263
  %3298 = fadd fast float %3295, %3264
  %3299 = fsub fast float %3249, %2650
  %3300 = fmul fast float %3272, %3299
  %3301 = fadd fast float %3300, %2650
  br label %3347

; <label>:3302                                    ; preds = %3269
  %3303 = icmp eq i32 %3267, 1
  br i1 %3303, label %3304, label %3317

; <label>:3304                                    ; preds = %3302
  %3305 = fadd fast float %3053, -1.000000e+00
  %3306 = fadd fast float %3054, -1.000000e+00
  %3307 = fadd fast float %3055, -1.000000e+00
  %3308 = fmul fast float %3272, %3305
  %3309 = fmul fast float %3272, %3306
  %3310 = fmul fast float %3272, %3307
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fmul fast float %3311, %3259
  %3315 = fmul fast float %3312, %3260
  %3316 = fmul fast float %3313, %3261
  br label %3347

; <label>:3317                                    ; preds = %3302
  %3318 = icmp eq i32 %3267, 2
  br i1 %3318, label %3319, label %3347

; <label>:3319                                    ; preds = %3317
  %3320 = call float @dx.op.unary.f32(i32 24, float %3053)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3054)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3055)  ; Sqrt(value)
  %3323 = fadd fast float %3320, -5.000000e-01
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fmul fast float %3323, %3272
  %3327 = fmul fast float %3324, %3272
  %3328 = fmul fast float %3325, %3272
  %3329 = fadd fast float %3326, 5.000000e-01
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fmul fast float %3329, 2.000000e+00
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = fmul fast float %3333, %3259
  %3335 = fadd fast float %3334, %3332
  %3336 = fmul fast float %3335, %3259
  %3337 = fmul fast float %3330, 2.000000e+00
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3338, %3260
  %3340 = fadd fast float %3339, %3337
  %3341 = fmul fast float %3340, %3260
  %3342 = fmul fast float %3331, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3261
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3261
  br label %3347

; <label>:3347                                    ; preds = %3319, %3317, %3304, %3274, %3258
  %3348 = phi float [ %3259, %3258 ], [ %3336, %3319 ], [ %3259, %3317 ], [ %3314, %3304 ], [ %3284, %3274 ]
  %3349 = phi float [ %3260, %3258 ], [ %3341, %3319 ], [ %3260, %3317 ], [ %3315, %3304 ], [ %3285, %3274 ]
  %3350 = phi float [ %3261, %3258 ], [ %3346, %3319 ], [ %3261, %3317 ], [ %3316, %3304 ], [ %3286, %3274 ]
  %3351 = phi float [ %3262, %3258 ], [ %3262, %3319 ], [ %3262, %3317 ], [ %3262, %3304 ], [ %3296, %3274 ]
  %3352 = phi float [ %3263, %3258 ], [ %3263, %3319 ], [ %3263, %3317 ], [ %3263, %3304 ], [ %3297, %3274 ]
  %3353 = phi float [ %3264, %3258 ], [ %3264, %3319 ], [ %3264, %3317 ], [ %3264, %3304 ], [ %3298, %3274 ]
  %3354 = phi float [ %2646, %3258 ], [ %2646, %3319 ], [ %2646, %3317 ], [ %2646, %3304 ], [ %3289, %3274 ]
  %3355 = phi float [ %2650, %3258 ], [ %2650, %3319 ], [ %2650, %3317 ], [ %2650, %3304 ], [ %3301, %3274 ]
  %3356 = and i32 %3266, 12
  %3357 = icmp eq i32 %3356, 12
  br i1 %3357, label %3464, label %3358

; <label>:3358                                    ; preds = %3347
  %3359 = and i32 %3266, 2097184
  %3360 = icmp eq i32 %3359, 2097184
  %3361 = select i1 %3360, float %2833, float 0.000000e+00
  %3362 = and i32 %3266, 4194336
  %3363 = icmp eq i32 %3362, 4194336
  %3364 = select i1 %3363, float %2833, float 0.000000e+00
  %3365 = and i32 %3266, 8388640
  %3366 = icmp eq i32 %3365, 8388640
  %3367 = select i1 %3366, float %2833, float 0.000000e+00
  %3368 = and i32 %3266, 2048
  %3369 = icmp ne i32 %3368, 0
  %3370 = select i1 %3369, float %2833, float 0.000000e+00
  %3371 = and i32 %3266, 8192
  %3372 = icmp ne i32 %3371, 0
  %3373 = select i1 %3372, float %2833, float 0.000000e+00
  %3374 = icmp eq i32 %3356, 0
  br i1 %3374, label %3375, label %3400

; <label>:3375                                    ; preds = %3358
  %3376 = fsub fast float %3134, %2635
  %3377 = fsub fast float %3135, %2636
  %3378 = fmul fast float %3361, %3376
  %3379 = fmul fast float %3361, %3377
  %3380 = fadd fast float %3378, %2635
  %3381 = fadd fast float %3379, %2636
  %3382 = fsub fast float %3136, %2648
  %3383 = fmul fast float %3364, %3382
  %3384 = fadd fast float %3383, %2648
  %3385 = fsub fast float %3133, %2647
  %3386 = fmul fast float %3367, %3385
  %3387 = fadd fast float %3386, %2647
  %3388 = fsub fast float %3236, %2649
  %3389 = fmul fast float %3370, %3388
  %3390 = fadd fast float %3389, %2649
  %3391 = fsub fast float %3233, %2643
  %3392 = fsub fast float %3234, %2644
  %3393 = fsub fast float %3235, %2645
  %3394 = fmul fast float %3373, %3391
  %3395 = fmul fast float %3373, %3392
  %3396 = fmul fast float %3373, %3393
  %3397 = fadd fast float %3394, %2643
  %3398 = fadd fast float %3395, %2644
  %3399 = fadd fast float %3396, %2645
  br label %3464

; <label>:3400                                    ; preds = %3358
  %3401 = icmp eq i32 %3356, 4
  br i1 %3401, label %3402, label %3442

; <label>:3402                                    ; preds = %3400
  %3403 = fmul fast float %3361, %3134
  %3404 = fmul fast float %3361, %3135
  %3405 = fadd fast float %3403, %2635
  %3406 = fadd fast float %3404, %2636
  %3407 = call float @dx.op.binary.f32(i32 36, float %2648, float %3136)  ; FMin(a,b)
  %3408 = fsub fast float %3407, %2648
  %3409 = fmul fast float %3408, %3364
  %3410 = fadd fast float %3409, %2648
  %3411 = fadd fast float %3133, %2647
  %3412 = fmul fast float %3411, 0x3FF337FAE0000000
  %3413 = fmul fast float %2647, %2647
  %3414 = fmul fast float %3133, %3133
  %3415 = fadd fast float %3414, %3413
  %3416 = fmul fast float %3415, 0x3FE5152B00000000
  %3417 = fmul fast float %2647, 0xBFCC1F85E0000000
  %3418 = fmul fast float %3417, %3133
  %3419 = fadd fast float %3418, 0xBFE1363700000000
  %3420 = fadd fast float %3419, %3412
  %3421 = fsub fast float %3420, %3416
  %3422 = fmul fast float %3411, 0x3FBA6F0D00000000
  %3423 = fmul fast float %3415, 0x3FD0432880000000
  %3424 = fmul fast float %2647, 0xBFEF110800000000
  %3425 = fmul fast float %3424, %3133
  %3426 = fadd fast float %3425, 1.000000e+00
  %3427 = fsub fast float %3426, %3422
  %3428 = fadd fast float %3427, %3423
  %3429 = fdiv fast float %3421, %3428
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fsub fast float %3430, %2647
  %3432 = fmul fast float %3431, %3367
  %3433 = fadd fast float %3432, %2647
  %3434 = fmul fast float %3370, %3236
  %3435 = fadd fast float %3434, %2649
  %3436 = fmul fast float %3373, %3233
  %3437 = fmul fast float %3373, %3234
  %3438 = fmul fast float %3373, %3235
  %3439 = fadd fast float %3436, %2643
  %3440 = fadd fast float %3437, %2644
  %3441 = fadd fast float %3438, %2645
  br label %3464

; <label>:3442                                    ; preds = %3400
  %3443 = icmp eq i32 %3356, 8
  br i1 %3443, label %3444, label %3464

; <label>:3444                                    ; preds = %3442
  %3445 = fmul fast float %3361, %3134
  %3446 = fmul fast float %3361, %3135
  %3447 = fadd fast float %3445, %2635
  %3448 = fadd fast float %3446, %2636
  %3449 = call float @dx.op.binary.f32(i32 36, float %2648, float %3136)  ; FMin(a,b)
  %3450 = fsub fast float %3449, %2648
  %3451 = fmul fast float %3450, %3364
  %3452 = fadd fast float %3451, %2648
  %3453 = fsub fast float %3133, %2647
  %3454 = fmul fast float %3367, %3453
  %3455 = fadd fast float %3454, %2647
  %3456 = fmul fast float %3370, %3236
  %3457 = fadd fast float %3456, %2649
  %3458 = fmul fast float %3373, %3233
  %3459 = fmul fast float %3373, %3234
  %3460 = fmul fast float %3373, %3235
  %3461 = fadd fast float %3458, %2643
  %3462 = fadd fast float %3459, %2644
  %3463 = fadd fast float %3460, %2645
  br label %3464

; <label>:3464                                    ; preds = %3444, %3442, %3402, %3375, %3347, %2832, %2651, %2634
  %3465 = phi float [ %2635, %3347 ], [ %2635, %2832 ], [ %2635, %2634 ], [ %2635, %2651 ], [ %3380, %3375 ], [ %3405, %3402 ], [ %2635, %3442 ], [ %3447, %3444 ]
  %3466 = phi float [ %2636, %3347 ], [ %2636, %2832 ], [ %2636, %2634 ], [ %2636, %2651 ], [ %3381, %3375 ], [ %3406, %3402 ], [ %2636, %3442 ], [ %3448, %3444 ]
  %3467 = phi float [ %3348, %3347 ], [ %2637, %2832 ], [ %2637, %2634 ], [ %2637, %2651 ], [ %3348, %3375 ], [ %3348, %3402 ], [ %3348, %3442 ], [ %3348, %3444 ]
  %3468 = phi float [ %3349, %3347 ], [ %2638, %2832 ], [ %2638, %2634 ], [ %2638, %2651 ], [ %3349, %3375 ], [ %3349, %3402 ], [ %3349, %3442 ], [ %3349, %3444 ]
  %3469 = phi float [ %3350, %3347 ], [ %2639, %2832 ], [ %2639, %2634 ], [ %2639, %2651 ], [ %3350, %3375 ], [ %3350, %3402 ], [ %3350, %3442 ], [ %3350, %3444 ]
  %3470 = phi float [ %3351, %3347 ], [ %2640, %2832 ], [ %2640, %2634 ], [ %2640, %2651 ], [ %3351, %3375 ], [ %3351, %3402 ], [ %3351, %3442 ], [ %3351, %3444 ]
  %3471 = phi float [ %3352, %3347 ], [ %2641, %2832 ], [ %2641, %2634 ], [ %2641, %2651 ], [ %3352, %3375 ], [ %3352, %3402 ], [ %3352, %3442 ], [ %3352, %3444 ]
  %3472 = phi float [ %3353, %3347 ], [ %2642, %2832 ], [ %2642, %2634 ], [ %2642, %2651 ], [ %3353, %3375 ], [ %3353, %3402 ], [ %3353, %3442 ], [ %3353, %3444 ]
  %3473 = phi float [ %2643, %3347 ], [ %2643, %2832 ], [ %2643, %2634 ], [ %2643, %2651 ], [ %3397, %3375 ], [ %3439, %3402 ], [ %2643, %3442 ], [ %3461, %3444 ]
  %3474 = phi float [ %2644, %3347 ], [ %2644, %2832 ], [ %2644, %2634 ], [ %2644, %2651 ], [ %3398, %3375 ], [ %3440, %3402 ], [ %2644, %3442 ], [ %3462, %3444 ]
  %3475 = phi float [ %2645, %3347 ], [ %2645, %2832 ], [ %2645, %2634 ], [ %2645, %2651 ], [ %3399, %3375 ], [ %3441, %3402 ], [ %2645, %3442 ], [ %3463, %3444 ]
  %3476 = phi float [ %3354, %3347 ], [ %2646, %2832 ], [ %2646, %2634 ], [ %2646, %2651 ], [ %3354, %3375 ], [ %3354, %3402 ], [ %3354, %3442 ], [ %3354, %3444 ]
  %3477 = phi float [ %2647, %3347 ], [ %2647, %2832 ], [ %2647, %2634 ], [ %2647, %2651 ], [ %3387, %3375 ], [ %3433, %3402 ], [ %2647, %3442 ], [ %3455, %3444 ]
  %3478 = phi float [ %2648, %3347 ], [ %2648, %2832 ], [ %2648, %2634 ], [ %2648, %2651 ], [ %3384, %3375 ], [ %3410, %3402 ], [ %2648, %3442 ], [ %3452, %3444 ]
  %3479 = phi float [ %2649, %3347 ], [ %2649, %2832 ], [ %2649, %2634 ], [ %2649, %2651 ], [ %3390, %3375 ], [ %3435, %3402 ], [ %2649, %3442 ], [ %3457, %3444 ]
  %3480 = phi float [ %3355, %3347 ], [ %2650, %2832 ], [ %2650, %2634 ], [ %2650, %2651 ], [ %3355, %3375 ], [ %3355, %3402 ], [ %3355, %3442 ], [ %3355, %3444 ]
  %3481 = add i32 %30, 360
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.i32 %3482, 1
  %3485 = bitcast i32 %3483 to float
  %3486 = bitcast i32 %3484 to float
  %3487 = fcmp fast oge float %3485, 0.000000e+00
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3490 = select i1 %3487, float %3485, float %3489
  %3491 = fadd fast float %3490, %176
  %3492 = fmul fast float %3486, %177
  %3493 = add i32 %30, 456
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = add i32 %3495, 0
  %3497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3497, %dx.types.Handle %76, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = fmul fast float %3492, %3499
  %3501 = fadd fast float %3491, %3500
  %3502 = and i32 %168, 65535
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = lshr i32 %168, 16
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = and i32 %169, 65535
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = fmul fast float %3503, %3467
  %3509 = fmul fast float %3505, %3468
  %3510 = fmul fast float %3507, %3469
  %3511 = shl i32 %170, 4
  %3512 = and i32 %3511, 32752
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = lshr i32 %170, 7
  %3515 = and i32 %3514, 32752
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = lshr i32 %170, 22
  %3518 = shl nuw nsw i32 %3517, 5
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = and i32 %171, 65535
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = fmul fast float %3513, %3470
  %3523 = fmul fast float %3522, %3521
  %3524 = fmul fast float %3516, %3471
  %3525 = fmul fast float %3524, %3521
  %3526 = fmul fast float %3519, %3472
  %3527 = fmul fast float %3526, %3521
  %3528 = call float @dx.op.dot2.f32(i32 54, float %3465, float %3466, float %3465, float %3466)  ; Dot2(ax,ay,bx,by)
  %3529 = fmul fast float %3528, 0x3FE3333340000000
  %3530 = fsub fast float 1.000000e+00, %3529
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3530, float %3465, float %3466, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3532, %3465
  %3534 = fmul fast float %3532, %3466
  %3535 = fmul fast float %3530, %3532
  %3536 = fmul fast float %3535, %88
  %3537 = fmul fast float %3535, %90
  %3538 = fmul fast float %3535, %92
  %3539 = fmul fast float %3533, %60
  %3540 = fmul fast float %3533, %61
  %3541 = fmul fast float %3533, %62
  %3542 = fadd fast float %3536, %3539
  %3543 = fadd fast float %3537, %3540
  %3544 = fadd fast float %3538, %3541
  %3545 = fmul fast float %102, %3534
  %3546 = fmul fast float %103, %3534
  %3547 = fmul fast float %104, %3534
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = call float @dx.op.unary.f32(i32 25, float %3551)  ; Rsqrt(value)
  %3553 = fmul fast float %3548, %3552
  %3554 = fmul fast float %3549, %3552
  %3555 = fmul fast float %3550, %3552
  %3556 = fadd fast float %3476, 0xBFB99999A0000000
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fmul fast float %3557, 0x3FF1C71C80000000
  %3559 = call float @dx.op.binary.f32(i32 36, float %3476, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3560 = fsub fast float 1.000000e+00, %3558
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fmul fast float %3561, %3508
  %3563 = fmul fast float %3561, %3509
  %3564 = fmul fast float %3561, %3510
  %3565 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3566 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3567 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3568 = fmul fast float %3558, %3508
  %3569 = fmul fast float %3558, %3509
  %3570 = fmul fast float %3558, %3510
  %3571 = fadd fast float %3568, %3559
  %3572 = fadd fast float %3569, %3559
  %3573 = fadd fast float %3570, %3559
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = and i32 %3579, 1
  %3581 = icmp eq i32 %3580, 0
  br i1 %3581, label %3596, label %3582

; <label>:3582                                    ; preds = %3464
  %3583 = call float @dx.op.binary.f32(i32 35, float %3566, float %3567)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 35, float %3565, float %3583)  ; FMax(a,b)
  %3585 = fcmp fast ogt float %3584, 0.000000e+00
  %3586 = bitcast float %3584 to i32
  %3587 = sub nsw i32 2129859010, %3586
  %3588 = bitcast i32 %3587 to float
  %3589 = select i1 %3585, float %3588, float 0.000000e+00
  %3590 = fmul fast float %3565, %3473
  %3591 = fmul fast float %3566, %3474
  %3592 = fmul fast float %3567, %3475
  %3593 = fmul fast float %3590, %3589
  %3594 = fmul fast float %3591, %3589
  %3595 = fmul fast float %3592, %3589
  br label %3596

; <label>:3596                                    ; preds = %3582, %3464
  %3597 = phi float [ %3593, %3582 ], [ %3473, %3464 ]
  %3598 = phi float [ %3594, %3582 ], [ %3474, %3464 ]
  %3599 = phi float [ %3595, %3582 ], [ %3475, %3464 ]
  %3600 = fadd fast float %3565, 0xBFD51EB860000000
  %3601 = fadd fast float %3566, 0xBFD51EB860000000
  %3602 = fadd fast float %3567, 0xBFD51EB860000000
  %3603 = fmul fast float %3600, %3600
  %3604 = fmul fast float %3601, %3601
  %3605 = fmul fast float %3602, %3602
  %3606 = fmul fast float %3603, %3603
  %3607 = fmul fast float %3606, 1.000000e+02
  %3608 = fmul fast float %3604, %3604
  %3609 = fmul fast float %3608, 1.000000e+02
  %3610 = fmul fast float %3605, %3605
  %3611 = fmul fast float %3610, 1.000000e+02
  %3612 = fadd fast float %3607, 3.500000e+00
  %3613 = fadd fast float %3609, 3.500000e+00
  %3614 = fadd fast float %3611, 3.500000e+00
  %3615 = call float @dx.op.binary.f32(i32 35, float %3597, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3616 = call float @dx.op.binary.f32(i32 35, float %3598, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3617 = call float @dx.op.binary.f32(i32 35, float %3599, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3618 = fdiv fast float %3612, %3615
  %3619 = fdiv fast float %3613, %3616
  %3620 = fdiv fast float %3614, %3617
  %3621 = fmul fast float %3479, 0xBFF7154760000000
  %3622 = fmul fast float %3621, %3618
  %3623 = call float @dx.op.unary.f32(i32 21, float %3622)  ; Exp(value)
  %3624 = fmul fast float %3623, 2.500000e-01
  %3625 = fmul fast float %3479, 0xBFDEC709E0000000
  %3626 = fmul fast float %3625, %3618
  %3627 = call float @dx.op.unary.f32(i32 21, float %3626)  ; Exp(value)
  %3628 = fmul fast float %3627, 7.500000e-01
  %3629 = fmul fast float %3621, %3619
  %3630 = call float @dx.op.unary.f32(i32 21, float %3629)  ; Exp(value)
  %3631 = fmul fast float %3630, 2.500000e-01
  %3632 = fmul fast float %3625, %3619
  %3633 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3634 = fmul fast float %3633, 7.500000e-01
  %3635 = fmul fast float %3621, %3620
  %3636 = call float @dx.op.unary.f32(i32 21, float %3635)  ; Exp(value)
  %3637 = fmul fast float %3636, 2.500000e-01
  %3638 = fmul fast float %3625, %3620
  %3639 = call float @dx.op.unary.f32(i32 21, float %3638)  ; Exp(value)
  %3640 = fmul fast float %3639, 7.500000e-01
  %3641 = fadd fast float %3624, %3628
  %3642 = fadd fast float %3631, %3634
  %3643 = fadd fast float %3637, %3640
  %3644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.i32 %3644, 3
  %3646 = and i32 %3645, 8
  %3647 = icmp ne i32 %3646, 0
  %3648 = call float @dx.op.binary.f32(i32 35, float %3565, float %3508)  ; FMax(a,b)
  %3649 = call float @dx.op.binary.f32(i32 35, float %3566, float %3508)  ; FMax(a,b)
  %3650 = call float @dx.op.binary.f32(i32 35, float %3567, float %3508)  ; FMax(a,b)
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3565, float %3566, float %3567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = select i1 %214, float %3508, float %3565
  %3653 = select i1 %214, float %3651, float %3566
  %3654 = select i1 %214, float 1.000000e+00, float %3567
  %3655 = select i1 %3647, float %3648, float %3652
  %3656 = select i1 %3647, float %3649, float %3653
  %3657 = select i1 %3647, float %3650, float %3654
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.CBufRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3662 = fadd fast float %3659, %162
  %3663 = fadd fast float %3660, %163
  %3664 = fadd fast float %3661, %164
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 1
  %3668 = fsub fast float %3662, %3666
  %3669 = fsub fast float %3663, %3667
  %3670 = fmul fast float %3668, %3668
  %3671 = fmul fast float %3669, %3669
  %3672 = fadd fast float %3670, %3671
  %3673 = call float @dx.op.unary.f32(i32 24, float %3672)  ; Sqrt(value)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3675 = fcmp fast olt float %3673, %3674
  br i1 %3675, label %3676, label %3743

; <label>:3676                                    ; preds = %3596
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3677, 1
  %3684 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3685 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3677, 3
  %3687 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3688 = extractvalue %dx.types.CBufRet.f32 %3681, 3
  %3689 = fadd fast float %3686, %3662
  %3690 = fadd fast float %3687, %3663
  %3691 = fadd fast float %3688, %3664
  %3692 = fmul fast float %3689, %3678
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3680, float %3692)  ; FMad(a,b,c)
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %3691, float %3682, float %3693)  ; FMad(a,b,c)
  %3695 = fmul fast float %3689, %3683
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3684, float %3695)  ; FMad(a,b,c)
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3691, float %3685, float %3696)  ; FMad(a,b,c)
  %3698 = fsub fast float %3694, %3686
  %3699 = fsub fast float %3697, %3687
  %3700 = fsub fast float %3698, %3666
  %3701 = fadd fast float %3700, %3674
  %3702 = fsub fast float %3699, %3667
  %3703 = fadd fast float %3702, %3674
  %3704 = extractvalue %dx.types.CBufRet.f32 %3665, 3
  %3705 = fmul fast float %3701, %3704
  %3706 = fmul fast float %3703, %3704
  %3707 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3708 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3709 = fsub fast float 1.000000e+00, %3707
  %3710 = fsub fast float 1.000000e+00, %3708
  %3711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3709, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = fcmp fast ugt float %3712, 0.000000e+00
  br i1 %3713, label %3714, label %4017

; <label>:3714                                    ; preds = %3676
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 2
  %3717 = fmul fast float %3716, %3712
  %3718 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3719 = fadd fast float %3718, %3717
  %3720 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3721 = fadd fast float %3719, %3688
  %3722 = fmul fast float %3694, %3682
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3697, float %3685, float %3722)  ; FMad(a,b,c)
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3720, float %3723)  ; FMad(a,b,c)
  %3725 = fsub fast float %3724, %3688
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3728 = fsub fast float %3725, %3727
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3709, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3732 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %3709, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3737 = fadd fast float %3734, %3730
  %3738 = fmul fast float %3737, 0x3F847AE140000000
  %3739 = fadd fast float %3735, %3731
  %3740 = fmul fast float %3739, 0x3F847AE140000000
  %3741 = fadd fast float %3736, %3732
  %3742 = fmul fast float %3741, 0x3F847AE140000000
  br label %4017

; <label>:3743                                    ; preds = %3596
  %3744 = and i32 %193, 1
  %3745 = icmp eq i32 %3744, 0
  br i1 %3745, label %4017, label %3746

; <label>:3746                                    ; preds = %3743
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3754 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3747, 3
  %3757 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3758 = extractvalue %dx.types.CBufRet.f32 %3751, 3
  %3759 = fadd fast float %3756, %3662
  %3760 = fadd fast float %3757, %3663
  %3761 = fadd fast float %3758, %3664
  %3762 = fmul fast float %3759, %3748
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3750, float %3762)  ; FMad(a,b,c)
  %3764 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3752, float %3763)  ; FMad(a,b,c)
  %3765 = fmul fast float %3759, %3753
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %3760, float %3754, float %3765)  ; FMad(a,b,c)
  %3767 = call float @dx.op.tertiary.f32(i32 46, float %3761, float %3755, float %3766)  ; FMad(a,b,c)
  %3768 = fsub fast float %3764, %3756
  %3769 = fsub fast float %3767, %3757
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.CBufRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.CBufRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.CBufRet.f32 %3770, 3
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.i32 %3777, 0
  %3779 = extractvalue %dx.types.CBufRet.i32 %3777, 1
  %3780 = udiv i32 %3779, %3778
  %3781 = fsub fast float %3768, %3771
  %3782 = fsub fast float %3769, %3772
  %3783 = call float @dx.op.binary.f32(i32 35, float %3781, float 0.000000e+00)  ; FMax(a,b)
  %3784 = call float @dx.op.binary.f32(i32 35, float %3782, float 0.000000e+00)  ; FMax(a,b)
  %3785 = call float @dx.op.binary.f32(i32 36, float %3783, float %3773)  ; FMin(a,b)
  %3786 = call float @dx.op.binary.f32(i32 36, float %3784, float %3774)  ; FMin(a,b)
  %3787 = add i32 %3778, -1
  %3788 = add i32 %3780, -1
  %3789 = fmul fast float %3785, %3776
  %3790 = fmul fast float %3786, %3776
  %3791 = fptoui float %3789 to i32
  %3792 = fptoui float %3790 to i32
  %3793 = call i32 @dx.op.binary.i32(i32 40, i32 %3791, i32 %3787)  ; UMin(a,b)
  %3794 = call i32 @dx.op.binary.i32(i32 40, i32 %3792, i32 %3788)  ; UMin(a,b)
  %3795 = mul i32 %3794, %3778
  %3796 = add i32 %3795, %3793
  %3797 = shl i32 %3796, 2
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = icmp eq i32 %3799, -1
  br i1 %3800, label %4017, label %3801

; <label>:3801                                    ; preds = %3746
  %3802 = mul i32 %3799, 148
  %3803 = add i32 %3802, 4
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = add i32 %3802, 8
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = add i32 %3802, 36
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = add i32 %3802, 60
  %3813 = add i32 %3802, 92
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = add i32 %3802, 116
  %3817 = fsub fast float %3768, %3805
  %3818 = fsub fast float %3769, %3808
  %3819 = fmul fast float %3776, %3817
  %3820 = fmul fast float %3776, %3818
  %3821 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3822 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3823 = fsub fast float 1.000000e+00, %3822
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3826 = call float @dx.op.unary.f32(i32 83, float %3821)  ; DerivCoarseX(value)
  %3827 = call float @dx.op.unary.f32(i32 83, float %3823)  ; DerivCoarseX(value)
  %3828 = call float @dx.op.unary.f32(i32 84, float %3821)  ; DerivCoarseY(value)
  %3829 = call float @dx.op.unary.f32(i32 84, float %3823)  ; DerivCoarseY(value)
  %3830 = fmul fast float %3826, %3825
  %3831 = fmul fast float %3827, %3825
  %3832 = fmul fast float %3828, %3825
  %3833 = fmul fast float %3829, %3825
  %3834 = call float @dx.op.dot2.f32(i32 54, float %3832, float %3833, float %3832, float %3833)  ; Dot2(ax,ay,bx,by)
  %3835 = call float @dx.op.dot2.f32(i32 54, float %3830, float %3831, float %3830, float %3831)  ; Dot2(ax,ay,bx,by)
  %3836 = call float @dx.op.binary.f32(i32 35, float %3835, float %3834)  ; FMax(a,b)
  %3837 = call float @dx.op.unary.f32(i32 23, float %3836)  ; Log(value)
  %3838 = fmul fast float %3837, 5.000000e-01
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3841 = fadd fast float %3840, %3838
  %3842 = call float @dx.op.binary.f32(i32 35, float %3841, float 0.000000e+00)  ; FMax(a,b)
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3845 = fadd fast float %3844, %3842
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = fadd fast float %3845, %3847
  %3849 = add i32 %3815, 0
  %3850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3849, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3851 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3850, i32 0)  ; GetDimensions(handle,mipLevel)
  %3852 = extractvalue %dx.types.Dimensions %3851, 0
  %3853 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3852)  ; FirstbitLo(value)
  %3854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.i32 %3854, 1
  %3856 = sub nsw i32 %3855, %3853
  %3857 = sitofp i32 %3856 to float
  %3858 = fsub fast float %3848, %3857
  %3859 = call float @dx.op.binary.f32(i32 35, float %3858, float 0.000000e+00)  ; FMax(a,b)
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3850, %dx.types.Handle %23, float %3821, float %3823, float %3811, float undef, i32 0, i32 0, i32 undef, float %3859)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = fcmp ule float %3861, 0x3FE0101020000000
  %3863 = extractvalue %dx.types.CBufRet.i32 %3854, 0
  %3864 = and i32 %3863, 128
  %3865 = icmp ne i32 %3864, 0
  %3866 = and i1 %3862, %3865
  br i1 %3866, label %4017, label %3867

; <label>:3867                                    ; preds = %3801
  %3868 = add i32 %3802, 20
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = add i32 %3802, 24
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = add i32 %3802, 40
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = add i32 %3802, 96
  %3878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.i32 %3878, 0
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 2
  %3882 = fmul fast float %3881, %3821
  %3883 = fmul fast float %3881, %3823
  %3884 = extractvalue %dx.types.CBufRet.f32 %3880, 3
  %3885 = fadd fast float %3882, %3884
  %3886 = fadd fast float %3883, %3884
  %3887 = add i32 %3879, 0
  %3888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3889 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3888, i32 0)  ; GetDimensions(handle,mipLevel)
  %3890 = extractvalue %dx.types.Dimensions %3889, 0
  %3891 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3890)  ; FirstbitLo(value)
  %3892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.i32 %3892, 1
  %3894 = sub nsw i32 %3893, %3891
  %3895 = sitofp i32 %3894 to float
  %3896 = fsub fast float %3845, %3895
  %3897 = call float @dx.op.binary.f32(i32 35, float %3896, float 0.000000e+00)  ; FMax(a,b)
  %3898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3888, %dx.types.Handle %23, float %3885, float %3886, float %3876, float undef, i32 0, i32 0, i32 undef, float %3897)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = fmul fast float %3899, %3870
  %3901 = fadd fast float %3900, %3873
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.CBufRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 3
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3910 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %3911 = fadd fast float %3907, %3768
  %3912 = fadd fast float %3909, %3769
  %3913 = fadd fast float %3901, %3910
  %3914 = fmul fast float %3911, %3903
  %3915 = call float @dx.op.tertiary.f32(i32 46, float %3912, float %3904, float %3914)  ; FMad(a,b,c)
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3905, float %3915)  ; FMad(a,b,c)
  %3917 = fsub fast float %3916, %3910
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 2
  %3920 = fsub fast float %3917, %3919
  %3921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.i32 %3921, 0
  %3923 = call i32 @dx.op.binary.i32(i32 40, i32 %3799, i32 %3922)  ; UMin(a,b)
  %3924 = mul i32 %3923, 36
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = add i32 %3924, 4
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = fmul fast float %3929, %3821
  %3931 = fmul fast float %3929, %3823
  %3932 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3933 = fadd fast float %3930, %3932
  %3934 = fadd fast float %3931, %3932
  %3935 = icmp eq i32 %3926, 0
  br i1 %3935, label %4004, label %3936

; <label>:3936                                    ; preds = %3867
  br label %3937

; <label>:3937                                    ; preds = %3994, %3936
  %3938 = phi float [ %3995, %3994 ], [ 0.000000e+00, %3936 ]
  %3939 = phi float [ %3996, %3994 ], [ 0.000000e+00, %3936 ]
  %3940 = phi float [ %3997, %3994 ], [ 0.000000e+00, %3936 ]
  %3941 = phi float [ %3998, %3994 ], [ 0.000000e+00, %3936 ]
  %3942 = phi float [ %3999, %3994 ], [ 0.000000e+00, %3936 ]
  %3943 = phi float [ %4000, %3994 ], [ 0.000000e+00, %3936 ]
  %3944 = phi i32 [ %4001, %3994 ], [ 0, %3936 ]
  %3945 = shl i32 %3944, 2
  %3946 = add i32 %3812, %3945
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = add i32 %3816, %3945
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = add i32 %3951, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3953, i32 0)  ; GetDimensions(handle,mipLevel)
  %3955 = extractvalue %dx.types.Dimensions %3954, 0
  %3956 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3955)  ; FirstbitLo(value)
  %3957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.i32 %3957, 1
  %3959 = sub nsw i32 %3958, %3956
  %3960 = sitofp i32 %3959 to float
  %3961 = fsub fast float %3845, %3960
  %3962 = call float @dx.op.binary.f32(i32 35, float %3961, float 0.000000e+00)  ; FMax(a,b)
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3953, %dx.types.Handle %23, float %3933, float %3934, float %3948, float undef, i32 0, i32 0, i32 undef, float %3962)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = fcmp fast ogt float %3964, 0.000000e+00
  br i1 %3965, label %3966, label %3994

; <label>:3966                                    ; preds = %3937
  %3967 = add i32 %3927, %3945
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = and i32 %3969, 32767
  %3971 = mul nuw nsw i32 %3970, 928
  %3972 = add nuw nsw i32 %3971, 48
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = add nuw nsw i32 %3971, 60
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = fmul fast float %3974, %3964
  %3983 = fmul fast float %3975, %3964
  %3984 = fmul fast float %3976, %3964
  %3985 = fadd fast float %3982, %3938
  %3986 = fadd fast float %3983, %3939
  %3987 = fadd fast float %3984, %3940
  %3988 = fmul fast float %3979, %3964
  %3989 = fmul fast float %3980, %3964
  %3990 = fmul fast float %3981, %3964
  %3991 = fadd fast float %3988, %3941
  %3992 = fadd fast float %3989, %3942
  %3993 = fadd fast float %3990, %3943
  br label %3994

; <label>:3994                                    ; preds = %3966, %3937
  %3995 = phi float [ %3985, %3966 ], [ %3938, %3937 ]
  %3996 = phi float [ %3986, %3966 ], [ %3939, %3937 ]
  %3997 = phi float [ %3987, %3966 ], [ %3940, %3937 ]
  %3998 = phi float [ %3991, %3966 ], [ %3941, %3937 ]
  %3999 = phi float [ %3992, %3966 ], [ %3942, %3937 ]
  %4000 = phi float [ %3993, %3966 ], [ %3943, %3937 ]
  %4001 = add nuw i32 %3944, 1
  %4002 = icmp eq i32 %4001, %3926
  br i1 %4002, label %4003, label %3937

; <label>:4003                                    ; preds = %3994
  br label %4004

; <label>:4004                                    ; preds = %4003, %3867
  %4005 = phi float [ 0.000000e+00, %3867 ], [ %3995, %4003 ]
  %4006 = phi float [ 0.000000e+00, %3867 ], [ %3996, %4003 ]
  %4007 = phi float [ 0.000000e+00, %3867 ], [ %3997, %4003 ]
  %4008 = phi float [ 0.000000e+00, %3867 ], [ %3998, %4003 ]
  %4009 = phi float [ 0.000000e+00, %3867 ], [ %3999, %4003 ]
  %4010 = phi float [ 0.000000e+00, %3867 ], [ %4000, %4003 ]
  %4011 = fadd fast float %4008, %4005
  %4012 = fmul fast float %4011, 0x3F847AE140000000
  %4013 = fadd fast float %4009, %4006
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  %4015 = fadd fast float %4010, %4007
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  br label %4017

; <label>:4017                                    ; preds = %4004, %3801, %3746, %3743, %3714, %3676
  %4018 = phi float [ %3728, %3714 ], [ -1.310720e+05, %3676 ], [ %3920, %4004 ], [ -1.310720e+05, %3746 ], [ -1.310720e+05, %3801 ], [ -1.310720e+05, %3743 ]
  %4019 = phi float [ %3738, %3714 ], [ 0.000000e+00, %3676 ], [ %4012, %4004 ], [ 0.000000e+00, %3746 ], [ 0.000000e+00, %3801 ], [ 0.000000e+00, %3743 ]
  %4020 = phi float [ %3740, %3714 ], [ 0.000000e+00, %3676 ], [ %4014, %4004 ], [ 0.000000e+00, %3746 ], [ 0.000000e+00, %3801 ], [ 0.000000e+00, %3743 ]
  %4021 = phi float [ %3742, %3714 ], [ 0.000000e+00, %3676 ], [ %4016, %4004 ], [ 0.000000e+00, %3746 ], [ 0.000000e+00, %3801 ], [ 0.000000e+00, %3743 ]
  %4022 = phi i1 [ true, %3714 ], [ false, %3676 ], [ true, %4004 ], [ false, %3746 ], [ false, %3801 ], [ false, %3743 ]
  %4023 = and i32 %193, 3
  %4024 = icmp eq i32 %4023, 1
  %4025 = select i1 %4024, float 1.000000e+00, float 0.000000e+00
  %4026 = fsub fast float %4018, %164
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = select i1 %4022, float %4027, float 1.000000e+00
  %4029 = fmul fast float %4028, %4025
  %4030 = icmp eq i32 %4023, 3
  %4031 = select i1 %4030, float 1.000000e+00, float %4029
  %4032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4031)  ; FMax(a,b)
  %4033 = fcmp fast olt float %4031, 1.000000e+00
  %4034 = fcmp uge float %45, 0.000000e+00
  %4035 = and i1 %4034, %4033
  br i1 %4035, label %4036, label %4046

; <label>:4036                                    ; preds = %4017
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %45, float %46, float %47, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = fadd fast float %4038, %4032
  %4042 = fcmp ule float %44, 0.000000e+00
  %4043 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = select i1 %4042, float %4043, float 1.000000e+00
  %4045 = fmul fast float %4044, %4040
  br label %4046

; <label>:4046                                    ; preds = %4036, %4017
  %4047 = phi float [ %4041, %4036 ], [ %4032, %4017 ]
  %4048 = phi float [ %4039, %4036 ], [ 0.000000e+00, %4017 ]
  %4049 = phi float [ %4045, %4036 ], [ 0.000000e+00, %4017 ]
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = fcmp fast une float %4051, 0.000000e+00
  %4054 = fcmp fast une float %4052, 0.000000e+00
  %4055 = or i1 %4053, %4054
  br i1 %4055, label %4056, label %4615

; <label>:4056                                    ; preds = %4046
  br i1 %4053, label %4057, label %4330

; <label>:4057                                    ; preds = %4056
  %4058 = call float @dx.op.unary.f32(i32 23, float %3478)  ; Log(value)
  %4059 = fmul fast float %4058, 4.000000e+00
  %4060 = call float @dx.op.unary.f32(i32 21, float %4059)  ; Exp(value)
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = fmul fast float %4062, %32
  %4064 = fmul fast float %4062, %33
  %4065 = fmul fast float %4062, %34
  %4066 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4067 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %4068 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4069 = call float @dx.op.unary.f32(i32 23, float %4066)  ; Log(value)
  %4070 = call float @dx.op.unary.f32(i32 23, float %4067)  ; Log(value)
  %4071 = call float @dx.op.unary.f32(i32 23, float %4068)  ; Log(value)
  %4072 = fmul fast float %4069, 4.000000e+00
  %4073 = fmul fast float %4070, 4.000000e+00
  %4074 = fmul fast float %4071, 4.000000e+00
  %4075 = call float @dx.op.unary.f32(i32 21, float %4072)  ; Exp(value)
  %4076 = call float @dx.op.unary.f32(i32 21, float %4073)  ; Exp(value)
  %4077 = call float @dx.op.unary.f32(i32 21, float %4074)  ; Exp(value)
  %4078 = fadd fast float %4076, %4075
  %4079 = fadd fast float %4078, %4077
  %4080 = fdiv fast float 1.000000e+00, %4079
  %4081 = fmul fast float %4080, %4075
  %4082 = fcmp fast ogt float %41, 0.000000e+00
  %4083 = fcmp fast ogt float %42, 0.000000e+00
  %4084 = fcmp fast ogt float %43, 0.000000e+00
  %4085 = fcmp fast olt float %41, 0.000000e+00
  %4086 = fcmp fast olt float %42, 0.000000e+00
  %4087 = fcmp fast olt float %43, 0.000000e+00
  %4088 = zext i1 %4082 to i32
  %4089 = zext i1 %4083 to i32
  %4090 = zext i1 %4084 to i32
  %4091 = zext i1 %4085 to i32
  %4092 = zext i1 %4086 to i32
  %4093 = zext i1 %4087 to i32
  %4094 = sub nsw i32 %4088, %4091
  %4095 = sub nsw i32 %4089, %4092
  %4096 = sub nsw i32 %4090, %4093
  %4097 = call float @dx.op.unary.f32(i32 83, float %4063)  ; DerivCoarseX(value)
  %4098 = call float @dx.op.unary.f32(i32 83, float %4064)  ; DerivCoarseX(value)
  %4099 = call float @dx.op.unary.f32(i32 83, float %4065)  ; DerivCoarseX(value)
  %4100 = call float @dx.op.unary.f32(i32 84, float %4063)  ; DerivCoarseY(value)
  %4101 = call float @dx.op.unary.f32(i32 84, float %4064)  ; DerivCoarseY(value)
  %4102 = call float @dx.op.unary.f32(i32 84, float %4065)  ; DerivCoarseY(value)
  %4103 = fcmp fast ole float %225, %4081
  %4104 = fmul fast float %4080, %4078
  %4105 = fcmp fast ole float %225, %4104
  %4106 = select i1 %4105, float %4065, float %4063
  %4107 = select i1 %4105, float %4063, float %4064
  %4108 = select i1 %4103, float %4064, float %4106
  %4109 = select i1 %4103, float %4065, float %4107
  %4110 = select i1 %4105, float %4099, float %4097
  %4111 = select i1 %4105, float %4097, float %4098
  %4112 = select i1 %4103, float %4098, float %4110
  %4113 = select i1 %4103, float %4099, float %4111
  %4114 = select i1 %4105, float %4102, float %4100
  %4115 = select i1 %4105, float %4100, float %4101
  %4116 = select i1 %4103, float %4101, float %4114
  %4117 = select i1 %4103, float %4102, float %4115
  %4118 = call float @dx.op.unary.f32(i32 27, float %4108)  ; Round_ni(value)
  %4119 = call float @dx.op.unary.f32(i32 27, float %4109)  ; Round_ni(value)
  %4120 = fptosi float %4118 to i32
  %4121 = fptosi float %4119 to i32
  %4122 = xor i32 %4121, %4120
  %4123 = sitofp i32 %4122 to float
  %4124 = fptosi float %4123 to i32
  %4125 = sitofp i32 %4124 to float
  %4126 = fmul fast float %4125, 0x3FE3C6EF40000000
  %4127 = frem fast float %4118, 2.560000e+02
  %4128 = frem fast float %4119, 2.560000e+02
  %4129 = fptoui float %4127 to i32
  %4130 = fptoui float %4128 to i32
  %4131 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4129, i32 %4130, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = fadd fast float %4132, %4126
  %4136 = fadd fast float %4133, %4126
  %4137 = fadd fast float %4134, %4126
  %4138 = call float @dx.op.unary.f32(i32 22, float %4135)  ; Frc(value)
  %4139 = call float @dx.op.unary.f32(i32 22, float %4136)  ; Frc(value)
  %4140 = call float @dx.op.unary.f32(i32 22, float %4137)  ; Frc(value)
  %4141 = fmul fast float %4140, 0x401921FB60000000
  %4142 = call float @dx.op.unary.f32(i32 13, float %4141)  ; Sin(value)
  %4143 = call float @dx.op.unary.f32(i32 12, float %4141)  ; Cos(value)
  %4144 = fsub fast float -0.000000e+00, %4143
  %4145 = fmul fast float %4143, %4108
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4109, float %4145)  ; FMad(a,b,c)
  %4147 = fmul fast float %4142, %4108
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4109, float %4147)  ; FMad(a,b,c)
  %4149 = fadd fast float %4146, %4138
  %4150 = fadd fast float %4148, %4139
  %4151 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4152 = bitcast float %4151 to i32
  %4153 = icmp eq i32 %4152, 0
  br i1 %4153, label %4192, label %4154

; <label>:4154                                    ; preds = %4057
  %4155 = add i32 %4152, 0
  %4156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4156, %dx.types.Handle %76, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4112, float %4113, float undef, float %4116, float %4117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4159, 2
  %4162 = fsub fast float 1.000000e+00, %4051
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4164 = bitcast float %4051 to i32
  %4165 = sitofp i32 %4164 to float
  %4166 = fadd fast float %4165, 0xC1CFBF8940000000
  %4167 = fmul fast float %4161, %4166
  %4168 = fadd fast float %4167, 0x41CFBF8940000000
  %4169 = fptosi float %4168 to i32
  %4170 = bitcast i32 %4169 to float
  %4171 = bitcast float %4163 to i32
  %4172 = sitofp i32 %4171 to float
  %4173 = fadd fast float %4172, 0xC1CFBF8940000000
  %4174 = fmul fast float %4173, %4161
  %4175 = fadd fast float %4174, 0x41CFBF8940000000
  %4176 = fptosi float %4175 to i32
  %4177 = bitcast i32 %4176 to float
  %4178 = fmul fast float %4170, %4160
  %4179 = fmul fast float %4177, %4160
  %4180 = fsub fast float %4163, %4178
  %4181 = fadd fast float %4179, %4163
  %4182 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4184 = fsub fast float %4158, %4182
  %4185 = fsub fast float %4183, %4182
  %4186 = bitcast float %4185 to i32
  %4187 = sub nsw i32 2129859010, %4186
  %4188 = bitcast i32 %4187 to float
  %4189 = fmul fast float %4188, %4184
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = fcmp fast olt float %4190, 0x3F70101020000000
  br i1 %4191, label %4330, label %4192

; <label>:4192                                    ; preds = %4154, %4057
  %4193 = phi float [ %4190, %4154 ], [ %4051, %4057 ]
  %4194 = fmul fast float %4193, %4060
  %4195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.i32 %4195, 1
  %4197 = extractvalue %dx.types.CBufRet.i32 %4195, 0
  %4198 = add i32 %4197, 0
  %4199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4199, %dx.types.Handle %75, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4112, float %4113, float undef, float %4116, float %4117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = and i32 %4196, 255
  %4206 = uitofp i32 %4205 to float
  %4207 = lshr i32 %4196, 8
  %4208 = and i32 %4207, 255
  %4209 = uitofp i32 %4208 to float
  %4210 = fmul fast float %4204, %4206
  %4211 = fadd fast float %4210, %4209
  %4212 = fmul fast float %4211, 0x3F70101000000000
  %4213 = fadd fast float %4212, 0xBFB99999A0000000
  %4214 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4215 = fmul fast float %4214, 0x3FF1C71C80000000
  %4216 = call float @dx.op.binary.f32(i32 36, float %4212, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4217 = fsub fast float 1.000000e+00, %4215
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %4218, %4201
  %4220 = fmul fast float %4218, %4202
  %4221 = fmul fast float %4218, %4203
  %4222 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4224 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4225 = fmul fast float %4215, %4201
  %4226 = fmul fast float %4215, %4202
  %4227 = fmul fast float %4215, %4203
  %4228 = fadd fast float %4225, %4216
  %4229 = fadd fast float %4226, %4216
  %4230 = fadd fast float %4227, %4216
  %4231 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4232 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.i32 %4234, 3
  %4236 = extractvalue %dx.types.CBufRet.i32 %4234, 2
  %4237 = add i32 %4236, 0
  %4238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4238, %dx.types.Handle %75, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4112, float %4113, float undef, float %4116, float %4117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4239, 3
  %4244 = and i32 %4235, 255
  %4245 = uitofp i32 %4244 to float
  %4246 = lshr i32 %4235, 8
  %4247 = and i32 %4246, 255
  %4248 = uitofp i32 %4247 to float
  %4249 = lshr i32 %4235, 16
  %4250 = and i32 %4249, 255
  %4251 = uitofp i32 %4250 to float
  %4252 = fmul fast float %4251, 0x3F70101000000000
  %4253 = fmul fast float %4240, %4245
  %4254 = fadd fast float %4253, %4248
  %4255 = fmul fast float %4254, 0x3F70101000000000
  %4256 = fadd fast float %4241, -5.000000e-01
  %4257 = fadd fast float %4243, -5.000000e-01
  %4258 = fmul fast float %4256, %4252
  %4259 = fmul fast float %4257, %4252
  %4260 = fadd fast float %4258, 5.000000e-01
  %4261 = fadd fast float %4259, 5.000000e-01
  %4262 = fmul fast float %4260, 2.000000e+00
  %4263 = fadd fast float %4262, -1.000000e+00
  %4264 = fmul fast float %4261, 2.000000e+00
  %4265 = fadd fast float %4264, -1.000000e+00
  %4266 = fadd fast float %4263, %4265
  %4267 = fmul fast float %4266, 5.000000e-01
  %4268 = fsub fast float %4263, %4265
  %4269 = fmul fast float %4268, 5.000000e-01
  %4270 = call float @dx.op.unary.f32(i32 6, float %4267)  ; FAbs(value)
  %4271 = fsub fast float 1.000000e+00, %4270
  %4272 = call float @dx.op.unary.f32(i32 6, float %4269)  ; FAbs(value)
  %4273 = fsub fast float %4271, %4272
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4267, float %4269, float %4273, float %4267, float %4269, float %4273)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = call float @dx.op.unary.f32(i32 25, float %4274)  ; Rsqrt(value)
  %4276 = fmul fast float %4267, %4275
  %4277 = fmul fast float %4269, %4275
  %4278 = select i1 %4105, i32 %4095, i32 %4096
  %4279 = select i1 %4103, i32 %4094, i32 %4278
  %4280 = sitofp i32 %4279 to float
  %4281 = fmul fast float %4273, %4280
  %4282 = fmul fast float %4281, %4275
  %4283 = select i1 %4105, float %4282, float %4277
  %4284 = select i1 %4105, float %4277, float %4282
  %4285 = select i1 %4103, float %4282, float %4276
  %4286 = select i1 %4103, float %4277, float %4283
  %4287 = select i1 %4103, float %4276, float %4284
  %4288 = fsub fast float %4222, %3655
  %4289 = fsub fast float %4223, %3656
  %4290 = fsub fast float %4224, %3657
  %4291 = fmul fast float %4288, %4194
  %4292 = fmul fast float %4289, %4194
  %4293 = fmul fast float %4290, %4194
  %4294 = fadd fast float %4291, %3655
  %4295 = fadd fast float %4292, %3656
  %4296 = fadd fast float %4293, %3657
  %4297 = fsub fast float %4231, %3574
  %4298 = fsub fast float %4232, %3575
  %4299 = fsub fast float %4233, %3576
  %4300 = fmul fast float %4297, %4194
  %4301 = fmul fast float %4298, %4194
  %4302 = fmul fast float %4299, %4194
  %4303 = fadd fast float %4300, %3574
  %4304 = fadd fast float %4301, %3575
  %4305 = fadd fast float %4302, %3576
  %4306 = fadd fast float %4285, %3553
  %4307 = fadd fast float %4286, %3554
  %4308 = fadd fast float %4287, %3555
  %4309 = call float @dx.op.dot3.f32(i32 55, float %4306, float %4307, float %4308, float %4306, float %4307, float %4308)  ; Dot3(ax,ay,az,bx,by,bz)
  %4310 = call float @dx.op.unary.f32(i32 25, float %4309)  ; Rsqrt(value)
  %4311 = fmul fast float %4306, %4310
  %4312 = fmul fast float %4307, %4310
  %4313 = fmul fast float %4308, %4310
  %4314 = fsub fast float %4311, %3553
  %4315 = fsub fast float %4312, %3554
  %4316 = fsub fast float %4313, %3555
  %4317 = fmul fast float %4314, %4194
  %4318 = fmul fast float %4315, %4194
  %4319 = fmul fast float %4316, %4194
  %4320 = fadd fast float %4317, %3553
  %4321 = fadd fast float %4318, %3554
  %4322 = fadd fast float %4319, %3555
  %4323 = call float @dx.op.binary.f32(i32 36, float %3478, float %4242)  ; FMin(a,b)
  %4324 = fsub fast float %4323, %3478
  %4325 = fmul fast float %4324, %4194
  %4326 = fadd fast float %4325, %3478
  %4327 = fsub fast float %4255, %3577
  %4328 = fmul fast float %4327, %4194
  %4329 = fadd fast float %4328, %3577
  br label %4330

; <label>:4330                                    ; preds = %4192, %4154, %4056
  %4331 = phi float [ %4303, %4192 ], [ %3574, %4154 ], [ %3574, %4056 ]
  %4332 = phi float [ %4304, %4192 ], [ %3575, %4154 ], [ %3575, %4056 ]
  %4333 = phi float [ %4305, %4192 ], [ %3576, %4154 ], [ %3576, %4056 ]
  %4334 = phi float [ %4294, %4192 ], [ %3655, %4154 ], [ %3655, %4056 ]
  %4335 = phi float [ %4295, %4192 ], [ %3656, %4154 ], [ %3656, %4056 ]
  %4336 = phi float [ %4296, %4192 ], [ %3657, %4154 ], [ %3657, %4056 ]
  %4337 = phi float [ %4320, %4192 ], [ %3553, %4154 ], [ %3553, %4056 ]
  %4338 = phi float [ %4321, %4192 ], [ %3554, %4154 ], [ %3554, %4056 ]
  %4339 = phi float [ %4322, %4192 ], [ %3555, %4154 ], [ %3555, %4056 ]
  %4340 = phi float [ %4329, %4192 ], [ %3577, %4154 ], [ %3577, %4056 ]
  %4341 = phi float [ %4326, %4192 ], [ %3478, %4154 ], [ %3478, %4056 ]
  br i1 %4054, label %4342, label %4615

; <label>:4342                                    ; preds = %4330
  %4343 = call float @dx.op.unary.f32(i32 23, float %4341)  ; Log(value)
  %4344 = fmul fast float %4343, 4.000000e+00
  %4345 = call float @dx.op.unary.f32(i32 21, float %4344)  ; Exp(value)
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = fmul fast float %4347, %32
  %4349 = fmul fast float %4347, %33
  %4350 = fmul fast float %4347, %34
  %4351 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4352 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %4353 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4354 = call float @dx.op.unary.f32(i32 23, float %4351)  ; Log(value)
  %4355 = call float @dx.op.unary.f32(i32 23, float %4352)  ; Log(value)
  %4356 = call float @dx.op.unary.f32(i32 23, float %4353)  ; Log(value)
  %4357 = fmul fast float %4354, 4.000000e+00
  %4358 = fmul fast float %4355, 4.000000e+00
  %4359 = fmul fast float %4356, 4.000000e+00
  %4360 = call float @dx.op.unary.f32(i32 21, float %4357)  ; Exp(value)
  %4361 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4362 = call float @dx.op.unary.f32(i32 21, float %4359)  ; Exp(value)
  %4363 = fadd fast float %4361, %4360
  %4364 = fadd fast float %4363, %4362
  %4365 = fdiv fast float 1.000000e+00, %4364
  %4366 = fmul fast float %4365, %4360
  %4367 = fcmp fast ogt float %41, 0.000000e+00
  %4368 = fcmp fast ogt float %42, 0.000000e+00
  %4369 = fcmp fast ogt float %43, 0.000000e+00
  %4370 = fcmp fast olt float %41, 0.000000e+00
  %4371 = fcmp fast olt float %42, 0.000000e+00
  %4372 = fcmp fast olt float %43, 0.000000e+00
  %4373 = zext i1 %4367 to i32
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = zext i1 %4370 to i32
  %4377 = zext i1 %4371 to i32
  %4378 = zext i1 %4372 to i32
  %4379 = sub nsw i32 %4373, %4376
  %4380 = sub nsw i32 %4374, %4377
  %4381 = sub nsw i32 %4375, %4378
  %4382 = call float @dx.op.unary.f32(i32 83, float %4348)  ; DerivCoarseX(value)
  %4383 = call float @dx.op.unary.f32(i32 83, float %4349)  ; DerivCoarseX(value)
  %4384 = call float @dx.op.unary.f32(i32 83, float %4350)  ; DerivCoarseX(value)
  %4385 = call float @dx.op.unary.f32(i32 84, float %4348)  ; DerivCoarseY(value)
  %4386 = call float @dx.op.unary.f32(i32 84, float %4349)  ; DerivCoarseY(value)
  %4387 = call float @dx.op.unary.f32(i32 84, float %4350)  ; DerivCoarseY(value)
  %4388 = fcmp fast ole float %225, %4366
  %4389 = fmul fast float %4365, %4363
  %4390 = fcmp fast ole float %225, %4389
  %4391 = select i1 %4390, float %4350, float %4348
  %4392 = select i1 %4390, float %4348, float %4349
  %4393 = select i1 %4388, float %4349, float %4391
  %4394 = select i1 %4388, float %4350, float %4392
  %4395 = select i1 %4390, float %4384, float %4382
  %4396 = select i1 %4390, float %4382, float %4383
  %4397 = select i1 %4388, float %4383, float %4395
  %4398 = select i1 %4388, float %4384, float %4396
  %4399 = select i1 %4390, float %4387, float %4385
  %4400 = select i1 %4390, float %4385, float %4386
  %4401 = select i1 %4388, float %4386, float %4399
  %4402 = select i1 %4388, float %4387, float %4400
  %4403 = call float @dx.op.unary.f32(i32 27, float %4393)  ; Round_ni(value)
  %4404 = call float @dx.op.unary.f32(i32 27, float %4394)  ; Round_ni(value)
  %4405 = fptosi float %4403 to i32
  %4406 = fptosi float %4404 to i32
  %4407 = xor i32 %4406, %4405
  %4408 = sitofp i32 %4407 to float
  %4409 = fptosi float %4408 to i32
  %4410 = sitofp i32 %4409 to float
  %4411 = fmul fast float %4410, 0x3FE3C6EF40000000
  %4412 = frem fast float %4403, 2.560000e+02
  %4413 = frem fast float %4404, 2.560000e+02
  %4414 = fptoui float %4412 to i32
  %4415 = fptoui float %4413 to i32
  %4416 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4414, i32 %4415, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = fadd fast float %4417, %4411
  %4421 = fadd fast float %4418, %4411
  %4422 = fadd fast float %4419, %4411
  %4423 = call float @dx.op.unary.f32(i32 22, float %4420)  ; Frc(value)
  %4424 = call float @dx.op.unary.f32(i32 22, float %4421)  ; Frc(value)
  %4425 = call float @dx.op.unary.f32(i32 22, float %4422)  ; Frc(value)
  %4426 = fmul fast float %4425, 0x401921FB60000000
  %4427 = call float @dx.op.unary.f32(i32 13, float %4426)  ; Sin(value)
  %4428 = call float @dx.op.unary.f32(i32 12, float %4426)  ; Cos(value)
  %4429 = fsub fast float -0.000000e+00, %4428
  %4430 = fmul fast float %4428, %4393
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4427, float %4394, float %4430)  ; FMad(a,b,c)
  %4432 = fmul fast float %4427, %4393
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4429, float %4394, float %4432)  ; FMad(a,b,c)
  %4434 = fadd fast float %4431, %4423
  %4435 = fadd fast float %4433, %4424
  %4436 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4437 = bitcast float %4436 to i32
  %4438 = icmp eq i32 %4437, 0
  br i1 %4438, label %4477, label %4439

; <label>:4439                                    ; preds = %4342
  %4440 = add i32 %4437, 0
  %4441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4442 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4441, %dx.types.Handle %76, float %4434, float %4435, float undef, float undef, i32 0, i32 0, i32 undef, float %4397, float %4398, float undef, float %4401, float %4402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 0
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4447 = fsub fast float 1.000000e+00, %4052
  %4448 = call float @dx.op.binary.f32(i32 35, float %4447, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4449 = bitcast float %4052 to i32
  %4450 = sitofp i32 %4449 to float
  %4451 = fadd fast float %4450, 0xC1CFBF8940000000
  %4452 = fmul fast float %4446, %4451
  %4453 = fadd fast float %4452, 0x41CFBF8940000000
  %4454 = fptosi float %4453 to i32
  %4455 = bitcast i32 %4454 to float
  %4456 = bitcast float %4448 to i32
  %4457 = sitofp i32 %4456 to float
  %4458 = fadd fast float %4457, 0xC1CFBF8940000000
  %4459 = fmul fast float %4458, %4446
  %4460 = fadd fast float %4459, 0x41CFBF8940000000
  %4461 = fptosi float %4460 to i32
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4455, %4445
  %4464 = fmul fast float %4462, %4445
  %4465 = fsub fast float %4448, %4463
  %4466 = fadd fast float %4464, %4448
  %4467 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4469 = fsub fast float %4443, %4467
  %4470 = fsub fast float %4468, %4467
  %4471 = bitcast float %4470 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, %4469
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fcmp fast olt float %4475, 0x3F70101020000000
  br i1 %4476, label %4615, label %4477

; <label>:4477                                    ; preds = %4439, %4342
  %4478 = phi float [ %4475, %4439 ], [ %4052, %4342 ]
  %4479 = fmul fast float %4478, %4345
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4482 = extractvalue %dx.types.CBufRet.i32 %4480, 0
  %4483 = add i32 %4482, 0
  %4484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4485 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4484, %dx.types.Handle %75, float %4434, float %4435, float undef, float undef, i32 0, i32 0, i32 undef, float %4397, float %4398, float undef, float %4401, float %4402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.ResRet.f32 %4485, 1
  %4488 = extractvalue %dx.types.ResRet.f32 %4485, 2
  %4489 = extractvalue %dx.types.ResRet.f32 %4485, 3
  %4490 = and i32 %4481, 255
  %4491 = uitofp i32 %4490 to float
  %4492 = lshr i32 %4481, 8
  %4493 = and i32 %4492, 255
  %4494 = uitofp i32 %4493 to float
  %4495 = fmul fast float %4489, %4491
  %4496 = fadd fast float %4495, %4494
  %4497 = fmul fast float %4496, 0x3F70101000000000
  %4498 = fadd fast float %4497, 0xBFB99999A0000000
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, 0x3FF1C71C80000000
  %4501 = call float @dx.op.binary.f32(i32 36, float %4497, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4502 = fsub fast float 1.000000e+00, %4500
  %4503 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4504 = fmul fast float %4503, %4486
  %4505 = fmul fast float %4503, %4487
  %4506 = fmul fast float %4503, %4488
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = fmul fast float %4500, %4486
  %4511 = fmul fast float %4500, %4487
  %4512 = fmul fast float %4500, %4488
  %4513 = fadd fast float %4510, %4501
  %4514 = fadd fast float %4511, %4501
  %4515 = fadd fast float %4512, %4501
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.i32 %4519, 3
  %4521 = extractvalue %dx.types.CBufRet.i32 %4519, 2
  %4522 = add i32 %4521, 0
  %4523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4523, %dx.types.Handle %75, float %4434, float %4435, float undef, float undef, i32 0, i32 0, i32 undef, float %4397, float %4398, float undef, float %4401, float %4402, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4528 = extractvalue %dx.types.ResRet.f32 %4524, 3
  %4529 = and i32 %4520, 255
  %4530 = uitofp i32 %4529 to float
  %4531 = lshr i32 %4520, 8
  %4532 = and i32 %4531, 255
  %4533 = uitofp i32 %4532 to float
  %4534 = lshr i32 %4520, 16
  %4535 = and i32 %4534, 255
  %4536 = uitofp i32 %4535 to float
  %4537 = fmul fast float %4536, 0x3F70101000000000
  %4538 = fmul fast float %4525, %4530
  %4539 = fadd fast float %4538, %4533
  %4540 = fmul fast float %4539, 0x3F70101000000000
  %4541 = fadd fast float %4526, -5.000000e-01
  %4542 = fadd fast float %4528, -5.000000e-01
  %4543 = fmul fast float %4541, %4537
  %4544 = fmul fast float %4542, %4537
  %4545 = fadd fast float %4543, 5.000000e-01
  %4546 = fadd fast float %4544, 5.000000e-01
  %4547 = fmul fast float %4545, 2.000000e+00
  %4548 = fadd fast float %4547, -1.000000e+00
  %4549 = fmul fast float %4546, 2.000000e+00
  %4550 = fadd fast float %4549, -1.000000e+00
  %4551 = fadd fast float %4548, %4550
  %4552 = fmul fast float %4551, 5.000000e-01
  %4553 = fsub fast float %4548, %4550
  %4554 = fmul fast float %4553, 5.000000e-01
  %4555 = call float @dx.op.unary.f32(i32 6, float %4552)  ; FAbs(value)
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = call float @dx.op.unary.f32(i32 6, float %4554)  ; FAbs(value)
  %4558 = fsub fast float %4556, %4557
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4554, float %4558, float %4552, float %4554, float %4558)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = call float @dx.op.unary.f32(i32 25, float %4559)  ; Rsqrt(value)
  %4561 = fmul fast float %4552, %4560
  %4562 = fmul fast float %4554, %4560
  %4563 = select i1 %4390, i32 %4380, i32 %4381
  %4564 = select i1 %4388, i32 %4379, i32 %4563
  %4565 = sitofp i32 %4564 to float
  %4566 = fmul fast float %4558, %4565
  %4567 = fmul fast float %4566, %4560
  %4568 = select i1 %4390, float %4567, float %4562
  %4569 = select i1 %4390, float %4562, float %4567
  %4570 = select i1 %4388, float %4567, float %4561
  %4571 = select i1 %4388, float %4562, float %4568
  %4572 = select i1 %4388, float %4561, float %4569
  %4573 = fsub fast float %4507, %4334
  %4574 = fsub fast float %4508, %4335
  %4575 = fsub fast float %4509, %4336
  %4576 = fmul fast float %4573, %4479
  %4577 = fmul fast float %4574, %4479
  %4578 = fmul fast float %4575, %4479
  %4579 = fadd fast float %4576, %4334
  %4580 = fadd fast float %4577, %4335
  %4581 = fadd fast float %4578, %4336
  %4582 = fsub fast float %4516, %4331
  %4583 = fsub fast float %4517, %4332
  %4584 = fsub fast float %4518, %4333
  %4585 = fmul fast float %4582, %4479
  %4586 = fmul fast float %4583, %4479
  %4587 = fmul fast float %4584, %4479
  %4588 = fadd fast float %4585, %4331
  %4589 = fadd fast float %4586, %4332
  %4590 = fadd fast float %4587, %4333
  %4591 = fadd fast float %4570, %4337
  %4592 = fadd fast float %4571, %4338
  %4593 = fadd fast float %4572, %4339
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 25, float %4594)  ; Rsqrt(value)
  %4596 = fmul fast float %4591, %4595
  %4597 = fmul fast float %4592, %4595
  %4598 = fmul fast float %4593, %4595
  %4599 = fsub fast float %4596, %4337
  %4600 = fsub fast float %4597, %4338
  %4601 = fsub fast float %4598, %4339
  %4602 = fmul fast float %4599, %4479
  %4603 = fmul fast float %4600, %4479
  %4604 = fmul fast float %4601, %4479
  %4605 = fadd fast float %4602, %4337
  %4606 = fadd fast float %4603, %4338
  %4607 = fadd fast float %4604, %4339
  %4608 = call float @dx.op.binary.f32(i32 36, float %4341, float %4527)  ; FMin(a,b)
  %4609 = fsub fast float %4608, %4341
  %4610 = fmul fast float %4609, %4479
  %4611 = fadd fast float %4610, %4341
  %4612 = fsub fast float %4540, %4340
  %4613 = fmul fast float %4612, %4479
  %4614 = fadd fast float %4613, %4340
  br label %4615

; <label>:4615                                    ; preds = %4477, %4439, %4330, %4046
  %4616 = phi float [ %4588, %4477 ], [ %4331, %4439 ], [ %4331, %4330 ], [ %3574, %4046 ]
  %4617 = phi float [ %4589, %4477 ], [ %4332, %4439 ], [ %4332, %4330 ], [ %3575, %4046 ]
  %4618 = phi float [ %4590, %4477 ], [ %4333, %4439 ], [ %4333, %4330 ], [ %3576, %4046 ]
  %4619 = phi float [ %4579, %4477 ], [ %4334, %4439 ], [ %4334, %4330 ], [ %3655, %4046 ]
  %4620 = phi float [ %4580, %4477 ], [ %4335, %4439 ], [ %4335, %4330 ], [ %3656, %4046 ]
  %4621 = phi float [ %4581, %4477 ], [ %4336, %4439 ], [ %4336, %4330 ], [ %3657, %4046 ]
  %4622 = phi float [ %4605, %4477 ], [ %4337, %4439 ], [ %4337, %4330 ], [ %3553, %4046 ]
  %4623 = phi float [ %4606, %4477 ], [ %4338, %4439 ], [ %4338, %4330 ], [ %3554, %4046 ]
  %4624 = phi float [ %4607, %4477 ], [ %4339, %4439 ], [ %4339, %4330 ], [ %3555, %4046 ]
  %4625 = phi float [ %4614, %4477 ], [ %4340, %4439 ], [ %4340, %4330 ], [ %3577, %4046 ]
  %4626 = phi float [ %4611, %4477 ], [ %4341, %4439 ], [ %4341, %4330 ], [ %3478, %4046 ]
  %4627 = fcmp fast une float %4050, 0.000000e+00
  %4628 = call float @dx.op.dot3.f32(i32 55, float %162, float %163, float %164, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call float @dx.op.unary.f32(i32 25, float %4628)  ; Rsqrt(value)
  br i1 %4627, label %4637, label %4630

; <label>:4630                                    ; preds = %4615
  %4631 = fmul fast float %4629, %162
  %4632 = fmul fast float %4629, %163
  %4633 = fmul fast float %4629, %164
  %4634 = fsub fast float -0.000000e+00, %4631
  %4635 = fsub fast float -0.000000e+00, %4632
  %4636 = fsub fast float -0.000000e+00, %4633
  br label %4804

; <label>:4637                                    ; preds = %4615
  %4638 = fmul fast float %162, %4629
  %4639 = fsub fast float -0.000000e+00, %4638
  %4640 = fmul fast float %163, %4629
  %4641 = fsub fast float -0.000000e+00, %4640
  %4642 = fmul fast float %164, %4629
  %4643 = fsub fast float -0.000000e+00, %4642
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4641, float %4643, float %88, float %90, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = fmul fast float %4050, 2.500000e+00
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4050, 0x4013FFFFE0000000
  %4648 = fadd fast float %4647, 0xBFFFFFFFE0000000
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4050, 0x4004000020000000
  %4651 = fadd fast float %4650, 0xBFF8000040000000
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = fmul fast float %3556, 1.000000e+01
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fmul fast float %4654, 2.000000e+00
  %4656 = fsub fast float 3.000000e+00, %4655
  %4657 = fmul fast float %4654, %4654
  %4658 = fmul fast float %4657, %4656
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = fsub fast float 0x3FE3333340000000, %4625
  %4661 = fmul fast float %4660, 0x400AAAAAA0000000
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4659, %4662
  %4664 = fmul fast float %4619, 0x3FEA2B8620000000
  %4665 = fmul fast float %4620, 0x3FEA2B8620000000
  %4666 = fmul fast float %4621, 0x3FEA2B8620000000
  %4667 = fadd fast float %4664, 0x3FC81DFBA0000000
  %4668 = fmul fast float %4667, %4619
  %4669 = fadd fast float %4668, 0x3F910E6020000000
  %4670 = fadd fast float %4665, 0x3FC81DFBA0000000
  %4671 = fmul fast float %4670, %4620
  %4672 = fadd fast float %4671, 0x3F910E6020000000
  %4673 = fadd fast float %4666, 0x3FC81DFBA0000000
  %4674 = fmul fast float %4673, %4621
  %4675 = fadd fast float %4674, 0x3F910E6020000000
  %4676 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = fsub fast float %4676, %4619
  %4680 = fsub fast float %4677, %4620
  %4681 = fsub fast float %4678, %4621
  %4682 = fmul fast float %4679, %4646
  %4683 = fmul fast float %4682, %4663
  %4684 = fmul fast float %4680, %4646
  %4685 = fmul fast float %4684, %4663
  %4686 = fmul fast float %4681, %4646
  %4687 = fmul fast float %4686, %4663
  %4688 = fadd fast float %4683, %4619
  %4689 = fadd fast float %4685, %4620
  %4690 = fadd fast float %4687, %4621
  %4691 = fmul fast float %4626, %4626
  %4692 = fmul fast float %4691, %4691
  %4693 = fadd fast float %4649, 1.000000e+00
  %4694 = fsub fast float %4693, %4663
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = call float @dx.op.dot3.f32(i32 55, float %88, float %90, float %92, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fsub fast float 1.000000e+00, %4692
  %4699 = call float @dx.op.binary.f32(i32 36, float %4695, float %4698)  ; FMin(a,b)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4701 = call float @dx.op.binary.f32(i32 35, float %4699, float %4700)  ; FMax(a,b)
  %4702 = fadd fast float %4697, 0xBFE4CCCCC0000000
  %4703 = fmul fast float %4702, 0x4006DB6DA0000000
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, 2.000000e+00
  %4706 = fsub fast float 3.000000e+00, %4705
  %4707 = bitcast float %4616 to i32
  %4708 = ashr i32 %4707, 1
  %4709 = add nsw i32 %4708, 532487669
  %4710 = bitcast i32 %4709 to float
  %4711 = fsub fast float 1.000000e+00, %4710
  %4712 = bitcast float %4711 to i32
  %4713 = sub nsw i32 2129859010, %4712
  %4714 = bitcast i32 %4713 to float
  %4715 = fmul fast float %4714, 2.000000e+00
  %4716 = bitcast float %4617 to i32
  %4717 = ashr i32 %4716, 1
  %4718 = add nsw i32 %4717, 532487669
  %4719 = bitcast i32 %4718 to float
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = fmul fast float %4723, 2.000000e+00
  %4725 = bitcast float %4618 to i32
  %4726 = ashr i32 %4725, 1
  %4727 = add nsw i32 %4726, 532487669
  %4728 = bitcast i32 %4727 to float
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = bitcast float %4729 to i32
  %4731 = sub nsw i32 2129859010, %4730
  %4732 = bitcast i32 %4731 to float
  %4733 = fmul fast float %4732, 2.000000e+00
  %4734 = fsub fast float 0x4002A9FBE0000000, %4715
  %4735 = fadd fast float %4715, 0x3FD54FDF00000000
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = fmul fast float %4738, %4734
  %4740 = fmul fast float %4739, %4739
  %4741 = fsub fast float 0x4002A9FBE0000000, %4724
  %4742 = fadd fast float %4724, 0x3FD54FDF00000000
  %4743 = bitcast float %4742 to i32
  %4744 = sub nsw i32 2129859010, %4743
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %4746, %4746
  %4748 = fsub fast float 0x4002A9FBE0000000, %4733
  %4749 = fadd fast float %4733, 0x3FD54FDF00000000
  %4750 = bitcast float %4749 to i32
  %4751 = sub nsw i32 2129859010, %4750
  %4752 = bitcast i32 %4751 to float
  %4753 = fmul fast float %4752, %4748
  %4754 = fmul fast float %4753, %4753
  %4755 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4740)  ; FMax(a,b)
  %4756 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4747)  ; FMax(a,b)
  %4757 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4754)  ; FMax(a,b)
  %4758 = fsub fast float 1.000000e+00, %4644
  %4759 = fadd fast float %4758, %4659
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fsub fast float 1.000000e+00, %4031
  %4762 = fmul fast float %4701, %4761
  %4763 = fmul fast float %4704, %4704
  %4764 = fmul fast float %4763, %4762
  %4765 = fmul fast float %4764, %4706
  %4766 = fmul fast float %4761, 0xBFE99999A0000000
  %4767 = fmul fast float %4766, %4646
  %4768 = fmul fast float %4767, %4663
  %4769 = fadd fast float %4768, 1.000000e+00
  %4770 = fadd fast float %4625, -1.000000e+00
  %4771 = fmul fast float %4769, %4770
  %4772 = fadd fast float %4771, 1.000000e+00
  %4773 = fsub fast float %4755, %4616
  %4774 = fsub fast float %4756, %4617
  %4775 = fsub fast float %4757, %4618
  %4776 = fmul fast float %4765, %4773
  %4777 = fmul fast float %4765, %4774
  %4778 = fmul fast float %4765, %4775
  %4779 = fadd fast float %4776, %4616
  %4780 = fadd fast float %4777, %4617
  %4781 = fadd fast float %4778, %4618
  %4782 = fsub fast float %88, %4622
  %4783 = fsub fast float %90, %4623
  %4784 = fsub fast float %92, %4624
  %4785 = fmul fast float %4765, %4782
  %4786 = fmul fast float %4765, %4783
  %4787 = fmul fast float %4765, %4784
  %4788 = fadd fast float %4785, %4622
  %4789 = fadd fast float %4786, %4623
  %4790 = fadd fast float %4787, %4624
  %4791 = fmul fast float %4765, %4760
  %4792 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4793 = fsub fast float 1.000000e+00, %4792
  %4794 = fmul fast float %4791, %4793
  %4795 = fadd fast float %4794, %4792
  %4796 = fsub fast float 1.000000e+00, %4626
  %4797 = fmul fast float %4765, %4796
  %4798 = fadd fast float %4797, %4626
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4789, float %4790, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 25, float %4799)  ; Rsqrt(value)
  %4801 = fmul fast float %4788, %4800
  %4802 = fmul fast float %4789, %4800
  %4803 = fmul fast float %4790, %4800
  br label %4804

; <label>:4804                                    ; preds = %4637, %4630
  %4805 = phi float [ %4636, %4630 ], [ %4643, %4637 ]
  %4806 = phi float [ %4635, %4630 ], [ %4641, %4637 ]
  %4807 = phi float [ %4634, %4630 ], [ %4639, %4637 ]
  %4808 = phi float [ %4633, %4630 ], [ %4642, %4637 ]
  %4809 = phi float [ %4632, %4630 ], [ %4640, %4637 ]
  %4810 = phi float [ %4631, %4630 ], [ %4638, %4637 ]
  %4811 = phi float [ %4616, %4630 ], [ %4779, %4637 ]
  %4812 = phi float [ %4617, %4630 ], [ %4780, %4637 ]
  %4813 = phi float [ %4618, %4630 ], [ %4781, %4637 ]
  %4814 = phi float [ %4619, %4630 ], [ %4688, %4637 ]
  %4815 = phi float [ %4620, %4630 ], [ %4689, %4637 ]
  %4816 = phi float [ %4621, %4630 ], [ %4690, %4637 ]
  %4817 = phi float [ %4622, %4630 ], [ %4801, %4637 ]
  %4818 = phi float [ %4623, %4630 ], [ %4802, %4637 ]
  %4819 = phi float [ %4624, %4630 ], [ %4803, %4637 ]
  %4820 = phi float [ %4625, %4630 ], [ %4795, %4637 ]
  %4821 = phi float [ %4626, %4630 ], [ %4798, %4637 ]
  %4822 = select i1 %214, float 0.000000e+00, float %4813
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float %4807, float %4806, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4809, float %4808, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = fmul fast float %4825, 2.000000e+00
  %4827 = fmul fast float %4826, %4817
  %4828 = fmul fast float %4826, %4818
  %4829 = fmul fast float %4826, %4819
  %4830 = fsub fast float %4810, %4827
  %4831 = fsub fast float %4809, %4828
  %4832 = fsub fast float %4808, %4829
  %4833 = call float @dx.op.binary.f32(i32 36, float %4821, float 1.000000e+00)  ; FMin(a,b)
  %4834 = fsub fast float 1.000000e+00, %4821
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %4839 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = fcmp fast oeq float %4839, 0.000000e+00
  %4841 = fcmp fast oeq float %4838, 0.000000e+00
  %4842 = or i1 %4841, %4840
  br i1 %4842, label %4872, label %4843

; <label>:4843                                    ; preds = %4804
  %4844 = fsub fast float -0.000000e+00, %59
  %4845 = fsub fast float -0.000000e+00, %57
  %4846 = call float @dx.op.unary.f32(i32 24, float %4839)  ; Sqrt(value)
  %4847 = fdiv fast float %4846, %4838
  %4848 = fcmp fast ogt float %4847, 0x3FFB6F8900000000
  %4849 = select i1 %4848, float 0x3FFB6F8900000000, float %4847
  %4850 = fmul fast float %4849, 0x3FE8A23460000000
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = call float @dx.op.binary.f32(i32 35, float %4849, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4853 = fmul fast float %4851, %4838
  %4854 = fmul fast float %4852, 0x3FF279A740000000
  %4855 = fadd fast float %4854, -1.000000e+00
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %58, float %4844, float %4845, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.unary.f32(i32 25, float %4856)  ; Rsqrt(value)
  %4858 = fmul fast float %4857, %4844
  %4859 = fmul fast float %4857, %4845
  %4860 = fmul fast float %4857, %58
  %4861 = fmul fast float %4855, %4855
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = fmul fast float %4852, 0x40005F8BE0000000
  %4864 = fsub fast float 0x400C5BF8A0000000, %4863
  %4865 = fdiv fast float %4853, %4864
  %4866 = fmul fast float %4865, 0x3FEE31C3C0000000
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4852, 0x3FDACB7480000000
  %4869 = fadd fast float %4868, 0xBFD7347680000000
  %4870 = fmul fast float %4869, %4865
  %4871 = fmul fast float %4870, %4862
  br label %4872

; <label>:4872                                    ; preds = %4843, %4804
  %4873 = phi float [ %4858, %4843 ], [ 0.000000e+00, %4804 ]
  %4874 = phi float [ %4859, %4843 ], [ 0.000000e+00, %4804 ]
  %4875 = phi float [ %4860, %4843 ], [ 0.000000e+00, %4804 ]
  %4876 = phi float [ %4867, %4843 ], [ 0.000000e+00, %4804 ]
  %4877 = phi float [ %4871, %4843 ], [ 0.000000e+00, %4804 ]
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = fmul fast float %4878, 0x3FDF454380000000
  %4880 = fmul fast float %4878, %4878
  %4881 = fmul fast float %4880, 0x3FEE471020000000
  %4882 = fadd fast float %4881, 0xBFD42F6020000000
  %4883 = fmul fast float %4838, 0x3FD20DD760000000
  %4884 = fmul fast float %4882, %4877
  %4885 = fadd fast float %4884, %4883
  %4886 = fmul fast float %4879, %4876
  %4887 = fadd fast float %4885, %4886
  %4888 = fsub fast float %4885, %4886
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = fmul fast float %4889, 0x3FDF454380000000
  %4891 = fmul fast float %4889, %4889
  %4892 = fmul fast float %4891, 0x3FEE471020000000
  %4893 = fadd fast float %4892, 0xBFD42F6020000000
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4876, float %4877, float 0x3FD20DD760000000, float %4890, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4896 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = fcmp fast oeq float %4896, 0.000000e+00
  %4898 = fcmp fast oeq float %4895, 0.000000e+00
  %4899 = or i1 %4898, %4897
  br i1 %4899, label %4929, label %4900

; <label>:4900                                    ; preds = %4872
  %4901 = fsub fast float -0.000000e+00, %55
  %4902 = fsub fast float -0.000000e+00, %53
  %4903 = call float @dx.op.unary.f32(i32 24, float %4896)  ; Sqrt(value)
  %4904 = fdiv fast float %4903, %4895
  %4905 = fcmp fast ogt float %4904, 0x3FFB6F8900000000
  %4906 = select i1 %4905, float 0x3FFB6F8900000000, float %4904
  %4907 = fmul fast float %4906, 0x3FE8A23460000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4906, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4910 = fmul fast float %4908, %4895
  %4911 = fmul fast float %4909, 0x3FF279A740000000
  %4912 = fadd fast float %4911, -1.000000e+00
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4902, float %54, float %4901, float %4902, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = call float @dx.op.unary.f32(i32 25, float %4913)  ; Rsqrt(value)
  %4915 = fmul fast float %4914, %4901
  %4916 = fmul fast float %4914, %4902
  %4917 = fmul fast float %4914, %54
  %4918 = fmul fast float %4912, %4912
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fmul fast float %4909, 0x40005F8BE0000000
  %4921 = fsub fast float 0x400C5BF8A0000000, %4920
  %4922 = fdiv fast float %4910, %4921
  %4923 = fmul fast float %4922, 0x3FEE31C3C0000000
  %4924 = fmul fast float %4923, %4919
  %4925 = fmul fast float %4909, 0x3FDACB7480000000
  %4926 = fadd fast float %4925, 0xBFD7347680000000
  %4927 = fmul fast float %4926, %4922
  %4928 = fmul fast float %4927, %4919
  br label %4929

; <label>:4929                                    ; preds = %4900, %4872
  %4930 = phi float [ %4915, %4900 ], [ 0.000000e+00, %4872 ]
  %4931 = phi float [ %4916, %4900 ], [ 0.000000e+00, %4872 ]
  %4932 = phi float [ %4917, %4900 ], [ 0.000000e+00, %4872 ]
  %4933 = phi float [ %4924, %4900 ], [ 0.000000e+00, %4872 ]
  %4934 = phi float [ %4928, %4900 ], [ 0.000000e+00, %4872 ]
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %4932, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = fmul fast float %4935, 0x3FDF454380000000
  %4937 = fmul fast float %4935, %4935
  %4938 = fmul fast float %4937, 0x3FEE471020000000
  %4939 = fadd fast float %4938, 0xBFD42F6020000000
  %4940 = fmul fast float %4895, 0x3FD20DD760000000
  %4941 = fmul fast float %4939, %4934
  %4942 = fadd fast float %4941, %4940
  %4943 = fmul fast float %4936, %4933
  %4944 = fadd fast float %4942, %4943
  %4945 = fsub fast float %4942, %4943
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4930, float %4931, float %4932, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = fmul fast float %4946, 0x3FDF454380000000
  %4948 = fmul fast float %4946, %4946
  %4949 = fmul fast float %4948, 0x3FEE471020000000
  %4950 = fadd fast float %4949, 0xBFD42F6020000000
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4933, float %4934, float 0x3FD20DD760000000, float %4947, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4953 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = fcmp fast oeq float %4953, 0.000000e+00
  %4955 = fcmp fast oeq float %4952, 0.000000e+00
  %4956 = or i1 %4955, %4954
  br i1 %4956, label %4986, label %4957

; <label>:4957                                    ; preds = %4929
  %4958 = fsub fast float -0.000000e+00, %51
  %4959 = fsub fast float -0.000000e+00, %49
  %4960 = call float @dx.op.unary.f32(i32 24, float %4953)  ; Sqrt(value)
  %4961 = fdiv fast float %4960, %4952
  %4962 = fcmp fast ogt float %4961, 0x3FFB6F8900000000
  %4963 = select i1 %4962, float 0x3FFB6F8900000000, float %4961
  %4964 = fmul fast float %4963, 0x3FE8A23460000000
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4963, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4967 = fmul fast float %4965, %4952
  %4968 = fmul fast float %4966, 0x3FF279A740000000
  %4969 = fadd fast float %4968, -1.000000e+00
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %50, float %4958, float %4959, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.unary.f32(i32 25, float %4970)  ; Rsqrt(value)
  %4972 = fmul fast float %4971, %4958
  %4973 = fmul fast float %4971, %4959
  %4974 = fmul fast float %4971, %50
  %4975 = fmul fast float %4969, %4969
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = fmul fast float %4966, 0x40005F8BE0000000
  %4978 = fsub fast float 0x400C5BF8A0000000, %4977
  %4979 = fdiv fast float %4967, %4978
  %4980 = fmul fast float %4979, 0x3FEE31C3C0000000
  %4981 = fmul fast float %4980, %4976
  %4982 = fmul fast float %4966, 0x3FDACB7480000000
  %4983 = fadd fast float %4982, 0xBFD7347680000000
  %4984 = fmul fast float %4983, %4979
  %4985 = fmul fast float %4984, %4976
  br label %4986

; <label>:4986                                    ; preds = %4957, %4929
  %4987 = phi float [ %4972, %4957 ], [ 0.000000e+00, %4929 ]
  %4988 = phi float [ %4973, %4957 ], [ 0.000000e+00, %4929 ]
  %4989 = phi float [ %4974, %4957 ], [ 0.000000e+00, %4929 ]
  %4990 = phi float [ %4981, %4957 ], [ 0.000000e+00, %4929 ]
  %4991 = phi float [ %4985, %4957 ], [ 0.000000e+00, %4929 ]
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = fmul fast float %4992, 0x3FDF454380000000
  %4994 = fmul fast float %4992, %4992
  %4995 = fmul fast float %4994, 0x3FEE471020000000
  %4996 = fadd fast float %4995, 0xBFD42F6020000000
  %4997 = fmul fast float %4952, 0x3FD20DD760000000
  %4998 = fmul fast float %4996, %4991
  %4999 = fadd fast float %4998, %4997
  %5000 = fmul fast float %4993, %4990
  %5001 = fadd fast float %4999, %5000
  %5002 = fsub fast float %4999, %5000
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = fmul fast float %5003, 0x3FDF454380000000
  %5005 = fmul fast float %5003, %5003
  %5006 = fmul fast float %5005, 0x3FEE471020000000
  %5007 = fadd fast float %5006, 0xBFD42F6020000000
  %5008 = call float @dx.op.dot3.f32(i32 55, float %4952, float %4990, float %4991, float 0x3FD20DD760000000, float %5004, float %5007)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = call float @dx.op.binary.f32(i32 35, float %4887, float 0.000000e+00)  ; FMax(a,b)
  %5010 = call float @dx.op.binary.f32(i32 35, float %4944, float 0.000000e+00)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float %5001, float 0.000000e+00)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 35, float %4888, float 0.000000e+00)  ; FMax(a,b)
  %5013 = call float @dx.op.binary.f32(i32 35, float %4945, float 0.000000e+00)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5002, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 35, float %4894, float 0.000000e+00)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float %4951, float 0.000000e+00)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float %5008, float 0.000000e+00)  ; FMax(a,b)
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5020 = call float @dx.op.binary.f32(i32 36, float %4814, float %5019)  ; FMin(a,b)
  %5021 = fsub fast float 1.000000e+00, %4833
  %5022 = fmul fast float %5020, %5021
  %5023 = fsub fast float 1.000000e+00, %5022
  %5024 = bitcast float %5023 to i32
  %5025 = sub nsw i32 2129859010, %5024
  %5026 = bitcast i32 %5025 to float
  %5027 = call float @dx.op.binary.f32(i32 36, float %4815, float %5019)  ; FMin(a,b)
  %5028 = fmul fast float %5027, %5021
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = bitcast float %5029 to i32
  %5031 = sub nsw i32 2129859010, %5030
  %5032 = bitcast i32 %5031 to float
  %5033 = call float @dx.op.binary.f32(i32 36, float %4816, float %5019)  ; FMin(a,b)
  %5034 = fmul fast float %5033, %5021
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5009, %4833
  %5040 = fmul fast float %5039, %5026
  %5041 = fmul fast float %5010, %4833
  %5042 = fmul fast float %5041, %5032
  %5043 = fmul fast float %5011, %4833
  %5044 = fmul fast float %5043, %5038
  %5045 = call float @dx.op.binary.f32(i32 36, float %4811, float %5019)  ; FMin(a,b)
  %5046 = fmul fast float %5045, %5021
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = bitcast float %5047 to i32
  %5049 = sub nsw i32 2129859010, %5048
  %5050 = bitcast i32 %5049 to float
  %5051 = call float @dx.op.binary.f32(i32 36, float %4812, float %5019)  ; FMin(a,b)
  %5052 = fmul fast float %5051, %5021
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = call float @dx.op.binary.f32(i32 36, float %4822, float %5019)  ; FMin(a,b)
  %5058 = fmul fast float %5057, %5021
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = bitcast float %5059 to i32
  %5061 = sub nsw i32 2129859010, %5060
  %5062 = bitcast i32 %5061 to float
  %5063 = fmul fast float %5015, %4833
  %5064 = fmul fast float %5063, %5050
  %5065 = fmul fast float %5016, %4833
  %5066 = fmul fast float %5065, %5056
  %5067 = fmul fast float %5017, %4833
  %5068 = fmul fast float %5067, %5062
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5042, float %5044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = select i1 %214, float 0.000000e+00, float %5040
  %5071 = select i1 %214, float %5069, float %5042
  %5072 = select i1 %214, float 0.000000e+00, float %5044
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = select i1 %214, float 0.000000e+00, float %5012
  %5075 = select i1 %214, float %5073, float %5013
  %5076 = select i1 %214, float 0.000000e+00, float %5014
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5066, float %5068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = select i1 %214, float 0.000000e+00, float %5064
  %5079 = select i1 %214, float %5077, float %5066
  %5080 = select i1 %214, float 0.000000e+00, float %5068
  %5081 = fmul fast float %4824, 9.843750e-01
  %5082 = fmul fast float %4820, 9.843750e-01
  %5083 = fadd fast float %5081, 7.812500e-03
  %5084 = fadd fast float %5082, 7.812500e-03
  %5085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5083, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 3
  %5088 = fmul fast float %5086, %4811
  %5089 = fmul fast float %5086, %4812
  %5090 = fmul fast float %5086, %4822
  %5091 = fadd fast float %5088, %5087
  %5092 = fadd fast float %5089, %5087
  %5093 = fadd fast float %5090, %5087
  %5094 = call float @dx.op.binary.f32(i32 35, float %5092, float %5093)  ; FMax(a,b)
  %5095 = call float @dx.op.binary.f32(i32 35, float %5091, float %5094)  ; FMax(a,b)
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = fmul fast float %5091, %5078
  %5098 = fmul fast float %5092, %5079
  %5099 = fmul fast float %5093, %5080
  %5100 = fadd fast float %5097, %3523
  %5101 = fmul fast float %5100, %986
  %5102 = fadd fast float %5098, %3525
  %5103 = fmul fast float %5102, %986
  %5104 = fadd fast float %5099, %3527
  %5105 = fmul fast float %5104, %986
  %5106 = fmul fast float %5096, %5072
  %5107 = fmul fast float %5096, %5071
  %5108 = fmul fast float %5096, %5070
  %5109 = fmul fast float %5096, %3643
  %5110 = fadd fast float %5109, -1.000000e+00
  %5111 = fmul fast float %5110, %986
  %5112 = fadd fast float %5111, 1.000000e+00
  %5113 = fmul fast float %5096, %3642
  %5114 = fadd fast float %5113, -1.000000e+00
  %5115 = fmul fast float %5114, %986
  %5116 = fadd fast float %5115, 1.000000e+00
  %5117 = fmul fast float %5096, %3641
  %5118 = fadd fast float %5117, -1.000000e+00
  %5119 = fmul fast float %5118, %986
  %5120 = fadd fast float %5119, 1.000000e+00
  %5121 = fmul fast float %5120, %5074
  %5122 = fmul fast float %5116, %5075
  %5123 = fmul fast float %5112, %5076
  %5124 = fadd fast float %5121, %5108
  %5125 = fmul fast float %5124, %986
  %5126 = fadd fast float %5122, %5107
  %5127 = fmul fast float %5126, %986
  %5128 = fadd fast float %5123, %5106
  %5129 = fmul fast float %5128, %986
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5132 = fcmp fast oeq float %5131, 0.000000e+00
  br i1 %5132, label %5318, label %5133

; <label>:5133                                    ; preds = %4986
  %5134 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = select i1 %214, float %5142, float %5138
  %5146 = select i1 %214, float %5144, float %5139
  %5147 = select i1 %214, float %5143, float %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5150 = fcmp fast une float %5149, 0.000000e+00
  br i1 %5150, label %5151, label %5168

; <label>:5151                                    ; preds = %5133
  %5152 = fptoui float %79 to i32
  %5153 = fptoui float %80 to i32
  %5154 = lshr i32 %5152, 4
  %5155 = lshr i32 %5153, 4
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = fptoui float %5157 to i32
  %5159 = add i32 %5158, 15
  %5160 = lshr i32 %5159, 4
  %5161 = mul i32 %5160, %5155
  %5162 = add i32 %5161, %5154
  %5163 = shl i32 %5162, 3
  %5164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.i32 %5164, 0
  %5166 = and i32 %5165, -268435456
  %5167 = icmp eq i32 %5166, -1342177280
  br i1 %5167, label %5178, label %5168

; <label>:5168                                    ; preds = %5151, %5133
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 3
  %5172 = fmul fast float %5170, %79
  %5173 = fmul fast float %5171, %80
  %5174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %5172, float %5173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.ResRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.ResRet.f32 %5174, 2
  br label %5178

; <label>:5178                                    ; preds = %5168, %5151
  %5179 = phi float [ %5175, %5168 ], [ 0.000000e+00, %5151 ]
  %5180 = phi float [ %5176, %5168 ], [ 0.000000e+00, %5151 ]
  %5181 = phi float [ %5177, %5168 ], [ 0.000000e+00, %5151 ]
  %5182 = call float @dx.op.binary.f32(i32 36, float %5180, float %5181)  ; FMin(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5179, float %5182)  ; FMin(a,b)
  %5184 = fcmp fast ogt float %5183, 0.000000e+00
  br i1 %5184, label %5185, label %5318, !dx.controlflow.hints !72

; <label>:5185                                    ; preds = %5178
  %5186 = fmul fast float %5179, %5145
  %5187 = fmul fast float %5180, %5146
  %5188 = fmul fast float %5181, %5147
  %5189 = fsub fast float %5134, %4810
  %5190 = fsub fast float %5135, %4809
  %5191 = fsub fast float %5136, %4808
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5189, float %5190, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 25, float %5192)  ; Rsqrt(value)
  %5194 = fmul fast float %5193, %5189
  %5195 = fmul fast float %5193, %5190
  %5196 = fmul fast float %5193, %5191
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4806, float %4805, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5200 = fmul fast float %5199, %5199
  %5201 = fmul fast float %5200, %4837
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fmul fast float %5202, %5199
  %5204 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = fmul fast float %5204, %5204
  %5206 = call float @dx.op.unary.f32(i32 6, float %5197)  ; FAbs(value)
  %5207 = fsub fast float 1.000000e+00, %4820
  %5208 = call float @dx.op.binary.f32(i32 35, float %5207, float 0x3F847AE140000000)  ; FMax(a,b)
  %5209 = fmul fast float %5208, %5208
  %5210 = fmul fast float %5209, %5209
  %5211 = fsub fast float 1.000000e+00, %5210
  %5212 = fmul fast float %4824, %4824
  %5213 = fmul fast float %5212, %5211
  %5214 = fadd fast float %5213, %5210
  %5215 = bitcast float %5214 to i32
  %5216 = ashr i32 %5215, 1
  %5217 = add nsw i32 %5216, 532487669
  %5218 = bitcast i32 %5217 to float
  %5219 = fadd fast float %5218, %4824
  %5220 = fmul fast float %5210, %5205
  %5221 = fsub fast float 1.000000e+00, %5205
  %5222 = fadd fast float %5221, %5220
  %5223 = fmul fast float %5206, %5206
  %5224 = fmul fast float %5223, %5211
  %5225 = fadd fast float %5224, %5210
  %5226 = bitcast float %5225 to i32
  %5227 = ashr i32 %5226, 1
  %5228 = add nsw i32 %5227, 532487669
  %5229 = bitcast i32 %5228 to float
  %5230 = fadd fast float %5229, %5206
  %5231 = fmul fast float %5222, %5222
  %5232 = fmul fast float %5231, %5219
  %5233 = fmul fast float %5232, %5230
  %5234 = fdiv fast float 0x3FF0A00000000000, %5233
  %5235 = fmul fast float %5234, %5210
  %5236 = call float @dx.op.unary.f32(i32 6, float %5198)  ; FAbs(value)
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = bitcast float %5237 to i32
  %5239 = sitofp i32 %5238 to float
  %5240 = fmul fast float %5239, 5.000000e+00
  %5241 = fadd fast float %5240, 0xC1EFBF8940000000
  %5242 = fptosi float %5241 to i32
  %5243 = bitcast i32 %5242 to float
  %5244 = fsub fast float 1.000000e+00, %4811
  %5245 = fsub fast float 1.000000e+00, %4812
  %5246 = fsub fast float 1.000000e+00, %4822
  %5247 = fmul fast float %5243, %5244
  %5248 = fmul fast float %5243, %5245
  %5249 = fmul fast float %5243, %5246
  %5250 = fadd fast float %5247, %4811
  %5251 = fadd fast float %5248, %4812
  %5252 = fadd fast float %5249, %4822
  %5253 = fmul fast float %5197, 9.843750e-01
  %5254 = fadd fast float %5253, 7.812500e-03
  %5255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5254, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 2
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 3
  %5258 = fmul fast float %5256, %4811
  %5259 = fmul fast float %5256, %4812
  %5260 = fmul fast float %5256, %4822
  %5261 = fadd fast float %5258, %5257
  %5262 = fadd fast float %5259, %5257
  %5263 = fadd fast float %5260, %5257
  %5264 = call float @dx.op.binary.f32(i32 35, float %5262, float %5263)  ; FMax(a,b)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5261, float %5264)  ; FMax(a,b)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = fsub fast float -0.000000e+00, %4817
  %5268 = fsub fast float -0.000000e+00, %4818
  %5269 = fsub fast float -0.000000e+00, %4819
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5267, float %5268, float %5269)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5272 = fmul fast float %5271, 9.843750e-01
  %5273 = fadd fast float %5272, 7.812500e-03
  %5274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5273, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 3
  %5277 = fmul fast float %5275, %4811
  %5278 = fmul fast float %5275, %4812
  %5279 = fmul fast float %5275, %4822
  %5280 = fadd fast float %5277, %5276
  %5281 = fadd fast float %5278, %5276
  %5282 = fadd fast float %5279, %5276
  %5283 = call float @dx.op.binary.f32(i32 35, float %5281, float %5282)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5280, float %5283)  ; FMax(a,b)
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = fmul fast float %5285, %5271
  %5287 = fmul fast float %5286, %3641
  %5288 = fmul fast float %5286, %3642
  %5289 = fmul fast float %5286, %3643
  %5290 = fmul fast float %5266, %5203
  %5291 = fadd fast float %5287, %5290
  %5292 = fadd fast float %5288, %5290
  %5293 = fadd fast float %5289, %5290
  %5294 = fmul fast float %5291, %5186
  %5295 = fmul fast float %5292, %5187
  %5296 = fmul fast float %5293, %5188
  %5297 = fmul fast float %5203, %5186
  %5298 = fmul fast float %5297, %5235
  %5299 = fmul fast float %5298, %5250
  %5300 = fmul fast float %5203, %5187
  %5301 = fmul fast float %5300, %5235
  %5302 = fmul fast float %5301, %5251
  %5303 = fmul fast float %5203, %5188
  %5304 = fmul fast float %5303, %5235
  %5305 = fmul fast float %5304, %5252
  %5306 = fadd fast float %5294, %5124
  %5307 = fmul fast float %5306, %986
  %5308 = fadd fast float %5295, %5126
  %5309 = fmul fast float %5308, %986
  %5310 = fadd fast float %5296, %5128
  %5311 = fmul fast float %5310, %986
  %5312 = fadd fast float %5299, %5100
  %5313 = fmul fast float %5312, %986
  %5314 = fadd fast float %5302, %5102
  %5315 = fmul fast float %5314, %986
  %5316 = fadd fast float %5305, %5104
  %5317 = fmul fast float %5316, %986
  br label %5318

; <label>:5318                                    ; preds = %5185, %5178, %4986
  %5319 = phi float [ %5101, %4986 ], [ %5101, %5178 ], [ %5313, %5185 ]
  %5320 = phi float [ %5103, %4986 ], [ %5103, %5178 ], [ %5315, %5185 ]
  %5321 = phi float [ %5105, %4986 ], [ %5105, %5178 ], [ %5317, %5185 ]
  %5322 = phi float [ %5125, %4986 ], [ %5125, %5178 ], [ %5307, %5185 ]
  %5323 = phi float [ %5127, %4986 ], [ %5127, %5178 ], [ %5309, %5185 ]
  %5324 = phi float [ %5129, %4986 ], [ %5129, %5178 ], [ %5311, %5185 ]
  %5325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.i32 %5325, 0
  %5327 = icmp eq i32 %5326, 0
  br i1 %5327, label %5721, label %5328

; <label>:5328                                    ; preds = %5318
  %5329 = fptoui float %79 to i32
  %5330 = fptoui float %80 to i32
  %5331 = lshr i32 %5329, 4
  %5332 = lshr i32 %5330, 4
  %5333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.i32 %5333, 0
  %5335 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5332, i32 %5334, i32 %5331)  ; UMad(a,b,c)
  %5336 = add nsw i32 %5326, -1
  %5337 = call i32 @dx.op.binary.i32(i32 37, i32 %5336, i32 0)  ; IMax(a,b)
  %5338 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %5339 = fptoui float %5338 to i32
  %5340 = lshr i32 %5339, 5
  %5341 = call i32 @dx.op.binary.i32(i32 40, i32 %5340, i32 8191)  ; UMin(a,b)
  %5342 = shl i32 %5341, 2
  %5343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.i32 %5343, 0
  %5345 = lshr i32 %5344, 16
  %5346 = and i32 %5344, 65535
  %5347 = lshr i32 %5344, 21
  %5348 = lshr i32 %5346, 5
  %5349 = call i32 @dx.op.binary.i32(i32 40, i32 %5348, i32 %5337)  ; UMin(a,b)
  %5350 = icmp ugt i32 %5347, %5349
  br i1 %5350, label %5721, label %5351

; <label>:5351                                    ; preds = %5328
  br label %5352

; <label>:5352                                    ; preds = %5711, %5351
  %5353 = phi i32 [ %5718, %5711 ], [ %5347, %5351 ]
  %5354 = phi float [ %5712, %5711 ], [ %5319, %5351 ]
  %5355 = phi float [ %5713, %5711 ], [ %5320, %5351 ]
  %5356 = phi float [ %5714, %5711 ], [ %5321, %5351 ]
  %5357 = phi float [ %5715, %5711 ], [ %5322, %5351 ]
  %5358 = phi float [ %5716, %5711 ], [ %5323, %5351 ]
  %5359 = phi float [ %5717, %5711 ], [ %5324, %5351 ]
  %5360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5361 = extractvalue %dx.types.CBufRet.i32 %5360, 0
  %5362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5335, i32 %5361, i32 %5353)  ; UMad(a,b,c)
  %5363 = shl i32 %5362, 2
  %5364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5363, i32 undef)  ; BufferLoad(srv,index,wot)
  %5365 = extractvalue %dx.types.ResRet.i32 %5364, 0
  %5366 = shl i32 %5353, 5
  %5367 = sub nsw i32 %5345, %5366
  %5368 = call i32 @dx.op.binary.i32(i32 37, i32 %5367, i32 0)  ; IMax(a,b)
  %5369 = call i32 @dx.op.binary.i32(i32 38, i32 %5368, i32 31)  ; IMin(a,b)
  %5370 = sub nsw i32 1, %5345
  %5371 = add nsw i32 %5370, %5346
  %5372 = call i32 @dx.op.binary.i32(i32 37, i32 %5371, i32 0)  ; IMax(a,b)
  %5373 = call i32 @dx.op.binary.i32(i32 38, i32 %5372, i32 32)  ; IMin(a,b)
  %5374 = and i32 %5373, 31
  %5375 = shl i32 -1, %5374
  %5376 = xor i32 %5375, -1
  %5377 = and i32 %5369, 31
  %5378 = shl i32 %5376, %5377
  %5379 = icmp eq i32 %5373, 32
  %5380 = select i1 %5379, i32 -1, i32 %5378
  %5381 = and i32 %5380, %5365
  %5382 = icmp eq i32 %5381, 0
  br i1 %5382, label %5711, label %5383

; <label>:5383                                    ; preds = %5352
  br label %5384

; <label>:5384                                    ; preds = %5464, %5383
  %5385 = phi i32 [ %5396, %5464 ], [ %5381, %5383 ]
  %5386 = phi float [ %5465, %5464 ], [ %5354, %5383 ]
  %5387 = phi float [ %5466, %5464 ], [ %5355, %5383 ]
  %5388 = phi float [ %5467, %5464 ], [ %5356, %5383 ]
  %5389 = phi float [ %5468, %5464 ], [ %5357, %5383 ]
  %5390 = phi float [ %5469, %5464 ], [ %5358, %5383 ]
  %5391 = phi float [ %5470, %5464 ], [ %5359, %5383 ]
  %5392 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5385)  ; FirstbitLo(value)
  %5393 = add i32 %5392, %5366
  %5394 = and i32 %5392, 31
  %5395 = shl i32 1, %5394
  %5396 = xor i32 %5395, %5385
  %5397 = mul i32 %5393, 112
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = or i32 %5397, 12
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = add i32 %5397, 44
  %5406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = add i32 %5397, 48
  %5409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.ResRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.ResRet.f32 %5409, 2
  %5413 = add i32 %5397, 80
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = select i1 %214, float %5415, float %5399
  %5419 = select i1 %214, float %5417, float %5400
  %5420 = select i1 %214, float %5416, float %5401
  %5421 = fsub fast float %5410, %162
  %5422 = fsub fast float %5411, %163
  %5423 = fsub fast float %5412, %164
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 24, float %5424)  ; Sqrt(value)
  %5426 = fdiv fast float 1.000000e+00, %5425
  %5427 = fmul fast float %5426, %5421
  %5428 = fmul fast float %5426, %5422
  %5429 = fmul fast float %5426, %5423
  %5430 = fadd fast float %5425, %5404
  %5431 = fdiv fast float 1.000000e+00, %5430
  %5432 = fmul float %5407, %5431
  %5433 = fmul float %5432, %5432
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5435 = and i32 %5395, %5381
  %5436 = icmp eq i32 %5435, 0
  br i1 %5436, label %5459, label %5437, !dx.controlflow.hints !73

; <label>:5437                                    ; preds = %5384
  %5438 = lshr i32 %5329, 5
  %5439 = lshr i32 %5330, 5
  %5440 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5438, i32 %5439, i32 %5393, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5441 = extractvalue %dx.types.ResRet.i32 %5440, 0
  %5442 = and i32 %5441, 3
  %5443 = icmp eq i32 %5442, 0
  %5444 = select i1 %5443, float 1.000000e+00, float 0.000000e+00
  %5445 = icmp eq i32 %5442, 3
  br i1 %5445, label %5446, label %5459

; <label>:5446                                    ; preds = %5437
  %5447 = lshr i32 %5441, 10
  %5448 = and i32 %5447, 8160
  %5449 = and i32 %5330, 31
  %5450 = or i32 %5448, %5449
  %5451 = lshr i32 %5441, 1
  %5452 = and i32 %5451, 16352
  %5453 = and i32 %5329, 31
  %5454 = or i32 %5452, %5453
  %5455 = lshr i32 %5441, 23
  %5456 = and i32 %5455, 255
  %5457 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5454, i32 %5450, i32 %5456, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  br label %5459

; <label>:5459                                    ; preds = %5446, %5437, %5384
  %5460 = phi float [ %5458, %5446 ], [ %5444, %5437 ], [ 0.000000e+00, %5384 ]
  %5461 = call float @dx.op.binary.f32(i32 36, float %5460, float %5460)  ; FMin(a,b)
  %5462 = call float @dx.op.binary.f32(i32 36, float %5460, float %5461)  ; FMin(a,b)
  %5463 = fcmp fast ogt float %5462, 0.000000e+00
  br i1 %5463, label %5472, label %5464, !dx.controlflow.hints !74

; <label>:5464                                    ; preds = %5533, %5459
  %5465 = phi float [ %5386, %5459 ], [ %5707, %5533 ]
  %5466 = phi float [ %5387, %5459 ], [ %5708, %5533 ]
  %5467 = phi float [ %5388, %5459 ], [ %5709, %5533 ]
  %5468 = phi float [ %5389, %5459 ], [ %5695, %5533 ]
  %5469 = phi float [ %5390, %5459 ], [ %5696, %5533 ]
  %5470 = phi float [ %5391, %5459 ], [ %5697, %5533 ]
  %5471 = icmp eq i32 %5385, %5395
  br i1 %5471, label %5710, label %5384

; <label>:5472                                    ; preds = %5459
  %5473 = fmul fast float %5460, %5418
  %5474 = fmul fast float %5460, %5419
  %5475 = fmul fast float %5460, %5420
  %5476 = fsub fast float %5412, %4018
  %5477 = fcmp fast ogt float %5476, 0.000000e+00
  %5478 = fsub fast float %164, %4018
  %5479 = fcmp fast ogt float %5478, 0.000000e+00
  %5480 = xor i1 %5479, %5477
  %5481 = fsub fast float %4018, %5412
  %5482 = fmul fast float %5481, 2.000000e+00
  %5483 = fadd fast float %5482, %5412
  %5484 = select i1 %5480, float %5412, float %5483
  %5485 = fsub fast float %5484, %164
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5485, float %5421, float %5422, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 25, float %5486)  ; Rsqrt(value)
  %5488 = fmul fast float %5487, %5421
  %5489 = fmul fast float %5487, %5422
  %5490 = fmul fast float %5487, %5485
  %5491 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4026)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fdiv fast float 1.000000e+00, %5492
  %5494 = fmul fast float %5493, %5491
  %5495 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5478, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = fcmp fast ogt float %5495, 0.000000e+00
  %5497 = fcmp fast olt float %5495, 0.000000e+00
  %5498 = zext i1 %5496 to i32
  %5499 = zext i1 %5497 to i32
  %5500 = sub nsw i32 %5498, %5499
  %5501 = sitofp i32 %5500 to float
  %5502 = fsub fast float %5484, %4018
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5502, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fcmp fast ogt float %5503, 0.000000e+00
  %5505 = fcmp fast olt float %5503, 0.000000e+00
  %5506 = zext i1 %5504 to i32
  %5507 = zext i1 %5505 to i32
  %5508 = sub nsw i32 %5506, %5507
  %5509 = sitofp i32 %5508 to float
  %5510 = fcmp fast une float %5501, %5509
  br i1 %5510, label %5511, label %5521

; <label>:5511                                    ; preds = %5472
  %5512 = fmul fast float %5494, %5490
  %5513 = fmul fast float %5494, %5489
  %5514 = fmul fast float %5494, %5488
  %5515 = fmul fast float %5514, %5514
  %5516 = fmul fast float %5513, %5513
  %5517 = fadd fast float %5515, %5516
  %5518 = fmul fast float %5512, %5512
  %5519 = fadd fast float %5517, %5518
  %5520 = call float @dx.op.unary.f32(i32 24, float %5519)  ; Sqrt(value)
  br label %5533

; <label>:5521                                    ; preds = %5472
  %5522 = icmp slt i32 %5500, 0
  br i1 %5522, label %5523, label %5533

; <label>:5523                                    ; preds = %5521
  %5524 = fsub fast float %162, %5410
  %5525 = fsub fast float %163, %5411
  %5526 = fsub fast float %164, %5484
  %5527 = fmul fast float %5524, %5524
  %5528 = fmul fast float %5525, %5525
  %5529 = fadd fast float %5527, %5528
  %5530 = fmul fast float %5526, %5526
  %5531 = fadd fast float %5529, %5530
  %5532 = call float @dx.op.unary.f32(i32 24, float %5531)  ; Sqrt(value)
  br label %5533

; <label>:5533                                    ; preds = %5523, %5521, %5511
  %5534 = phi float [ %5520, %5511 ], [ %5532, %5523 ], [ 0.000000e+00, %5521 ]
  %5535 = and i1 %5479, %5477
  %5536 = fsub fast float -0.000000e+00, %5534
  %5537 = select i1 %5535, float -0.000000e+00, float %5536
  %5538 = fmul fast float %4019, 0x3FF7154760000000
  %5539 = fmul fast float %5538, %5537
  %5540 = fmul fast float %4020, 0x3FF7154760000000
  %5541 = fmul fast float %5540, %5537
  %5542 = fmul fast float %4021, 0x3FF7154760000000
  %5543 = fmul fast float %5542, %5537
  %5544 = call float @dx.op.unary.f32(i32 21, float %5539)  ; Exp(value)
  %5545 = call float @dx.op.unary.f32(i32 21, float %5541)  ; Exp(value)
  %5546 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5550 = fmul fast float %5473, %5547
  %5551 = fmul fast float %5474, %5548
  %5552 = fmul fast float %5475, %5549
  %5553 = fsub fast float %5427, %4810
  %5554 = fsub fast float %5428, %4809
  %5555 = fsub fast float %5429, %4808
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = call float @dx.op.unary.f32(i32 25, float %5556)  ; Rsqrt(value)
  %5558 = fmul fast float %5557, %5553
  %5559 = fmul fast float %5557, %5554
  %5560 = fmul fast float %5557, %5555
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %4817, float %4818, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4806, float %4805, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5564 = fmul fast float %5563, %5434
  %5565 = fmul fast float %5563, %5563
  %5566 = fmul fast float %5565, %4837
  %5567 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5568 = fmul fast float %5564, %5567
  %5569 = bitcast float %5424 to i32
  %5570 = ashr i32 %5569, 1
  %5571 = sub nsw i32 1597463007, %5570
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5572, %5421
  %5574 = fmul fast float %5572, %5422
  %5575 = fmul fast float %5572, %5423
  %5576 = fsub fast float %5573, %4810
  %5577 = fsub fast float %5574, %4809
  %5578 = fsub fast float %5575, %4808
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5576, float %5577, float %5578)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = call float @dx.op.unary.f32(i32 25, float %5579)  ; Rsqrt(value)
  %5581 = fmul fast float %5576, %5580
  %5582 = fmul fast float %5577, %5580
  %5583 = fmul fast float %5578, %5580
  %5584 = call float @dx.op.dot3.f32(i32 55, float %4817, float %4818, float %4819, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, %5584
  %5586 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5587 = fsub fast float 1.000000e+00, %4820
  %5588 = call float @dx.op.binary.f32(i32 35, float %5587, float 0x3F847AE140000000)  ; FMax(a,b)
  %5589 = fmul fast float %5588, %5588
  %5590 = fmul fast float %5589, %5589
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = fmul fast float %4824, %4824
  %5593 = fmul fast float %5592, %5591
  %5594 = fadd fast float %5593, %5590
  %5595 = bitcast float %5594 to i32
  %5596 = ashr i32 %5595, 1
  %5597 = add nsw i32 %5596, 532487669
  %5598 = bitcast i32 %5597 to float
  %5599 = fadd fast float %5598, %4824
  %5600 = fmul fast float %5590, %5585
  %5601 = fsub fast float 1.000000e+00, %5585
  %5602 = fadd fast float %5601, %5600
  %5603 = fmul fast float %5586, %5586
  %5604 = fmul fast float %5603, %5591
  %5605 = fadd fast float %5604, %5590
  %5606 = bitcast float %5605 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fadd fast float %5609, %5586
  %5611 = fmul fast float %5602, %5602
  %5612 = fmul fast float %5611, %5599
  %5613 = fmul fast float %5612, %5610
  %5614 = fdiv fast float 1.000000e+00, %5613
  %5615 = bitcast float %5590 to i32
  %5616 = sitofp i32 %5615 to float
  %5617 = fmul fast float %5616, 0x3FE7F73180000000
  %5618 = fadd fast float %5617, 0x41AFE27C40000000
  %5619 = fptosi float %5618 to i32
  %5620 = bitcast i32 %5619 to float
  %5621 = fmul fast float %5407, 0x3FD80E9D60000000
  %5622 = fmul fast float %5621, %5572
  %5623 = fadd fast float %5620, %5622
  %5624 = bitcast float %5623 to i32
  %5625 = sub nsw i32 2129859010, %5624
  %5626 = bitcast i32 %5625 to float
  %5627 = fmul fast float %5590, %5614
  %5628 = fmul fast float %5627, %5620
  %5629 = fmul fast float %5628, %5626
  %5630 = call float @dx.op.unary.f32(i32 6, float %5562)  ; FAbs(value)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = bitcast float %5631 to i32
  %5633 = sitofp i32 %5632 to float
  %5634 = fmul fast float %5633, 5.000000e+00
  %5635 = fadd fast float %5634, 0xC1EFBF8940000000
  %5636 = fptosi float %5635 to i32
  %5637 = bitcast i32 %5636 to float
  %5638 = fsub fast float 1.000000e+00, %4811
  %5639 = fsub fast float 1.000000e+00, %4812
  %5640 = fsub fast float 1.000000e+00, %4822
  %5641 = fmul fast float %5637, %5638
  %5642 = fmul fast float %5637, %5639
  %5643 = fmul fast float %5637, %5640
  %5644 = fadd fast float %5641, %4811
  %5645 = fadd fast float %5642, %4812
  %5646 = fadd fast float %5643, %4822
  %5647 = fmul fast float %5561, 9.843750e-01
  %5648 = fadd fast float %5647, 7.812500e-03
  %5649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5648, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 3
  %5652 = fmul fast float %5650, %4811
  %5653 = fmul fast float %5650, %4812
  %5654 = fmul fast float %5650, %4822
  %5655 = fadd fast float %5652, %5651
  %5656 = fadd fast float %5653, %5651
  %5657 = fadd fast float %5654, %5651
  %5658 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5659 = call float @dx.op.binary.f32(i32 35, float %5655, float %5658)  ; FMax(a,b)
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = fsub fast float -0.000000e+00, %4817
  %5662 = fsub fast float -0.000000e+00, %4818
  %5663 = fsub fast float -0.000000e+00, %4819
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5428, float %5429, float %5661, float %5662, float %5663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = fmul fast float %5665, %5434
  %5667 = fmul fast float %5665, 9.843750e-01
  %5668 = fadd fast float %5667, 7.812500e-03
  %5669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5668, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 3
  %5672 = fmul fast float %5670, %4811
  %5673 = fmul fast float %5670, %4812
  %5674 = fmul fast float %5670, %4822
  %5675 = fadd fast float %5672, %5671
  %5676 = fadd fast float %5673, %5671
  %5677 = fadd fast float %5674, %5671
  %5678 = call float @dx.op.binary.f32(i32 35, float %5676, float %5677)  ; FMax(a,b)
  %5679 = call float @dx.op.binary.f32(i32 35, float %5675, float %5678)  ; FMax(a,b)
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5666, %5680
  %5682 = fmul fast float %5681, %3641
  %5683 = fmul fast float %5681, %3642
  %5684 = fmul fast float %5681, %3643
  %5685 = fmul fast float %5660, %5568
  %5686 = fadd fast float %5682, %5685
  %5687 = fadd fast float %5683, %5685
  %5688 = fadd fast float %5684, %5685
  %5689 = fmul fast float %5550, %986
  %5690 = fmul fast float %5689, %5686
  %5691 = fmul fast float %5551, %986
  %5692 = fmul fast float %5691, %5687
  %5693 = fmul fast float %5552, %986
  %5694 = fmul fast float %5693, %5688
  %5695 = fadd fast float %5690, %5389
  %5696 = fadd fast float %5692, %5390
  %5697 = fadd fast float %5694, %5391
  %5698 = fmul fast float %5689, %5568
  %5699 = fmul fast float %5698, %5644
  %5700 = fmul fast float %5699, %5629
  %5701 = fmul fast float %5691, %5568
  %5702 = fmul fast float %5701, %5645
  %5703 = fmul fast float %5702, %5629
  %5704 = fmul fast float %5693, %5568
  %5705 = fmul fast float %5704, %5646
  %5706 = fmul fast float %5705, %5629
  %5707 = fadd fast float %5700, %5386
  %5708 = fadd fast float %5703, %5387
  %5709 = fadd fast float %5706, %5388
  br label %5464

; <label>:5710                                    ; preds = %5464
  br label %5711

; <label>:5711                                    ; preds = %5710, %5352
  %5712 = phi float [ %5354, %5352 ], [ %5465, %5710 ]
  %5713 = phi float [ %5355, %5352 ], [ %5466, %5710 ]
  %5714 = phi float [ %5356, %5352 ], [ %5467, %5710 ]
  %5715 = phi float [ %5357, %5352 ], [ %5468, %5710 ]
  %5716 = phi float [ %5358, %5352 ], [ %5469, %5710 ]
  %5717 = phi float [ %5359, %5352 ], [ %5470, %5710 ]
  %5718 = add i32 %5353, 1
  %5719 = icmp ugt i32 %5718, %5349
  br i1 %5719, label %5720, label %5352

; <label>:5720                                    ; preds = %5711
  br label %5721

; <label>:5721                                    ; preds = %5720, %5328, %5318
  %5722 = phi float [ %5319, %5318 ], [ %5319, %5328 ], [ %5712, %5720 ]
  %5723 = phi float [ %5320, %5318 ], [ %5320, %5328 ], [ %5713, %5720 ]
  %5724 = phi float [ %5321, %5318 ], [ %5321, %5328 ], [ %5714, %5720 ]
  %5725 = phi float [ %5322, %5318 ], [ %5322, %5328 ], [ %5715, %5720 ]
  %5726 = phi float [ %5323, %5318 ], [ %5323, %5328 ], [ %5716, %5720 ]
  %5727 = phi float [ %5324, %5318 ], [ %5324, %5328 ], [ %5717, %5720 ]
  %5728 = call float @dx.op.unary.f32(i32 24, float %4814)  ; Sqrt(value)
  %5729 = call float @dx.op.unary.f32(i32 24, float %4815)  ; Sqrt(value)
  %5730 = call float @dx.op.unary.f32(i32 24, float %4816)  ; Sqrt(value)
  %5731 = fmul fast float %5728, %5725
  %5732 = fmul fast float %5729, %5726
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  br i1 %214, label %5735, label %5756

; <label>:5735                                    ; preds = %5721
  %5736 = fadd fast float %3501, %5727
  %5737 = fmul fast float %5736, %3480
  %5738 = fsub fast float 1.000000e+00, %3480
  %5739 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5742 = fmul fast float %5741, %5739
  %5743 = fadd fast float %5742, %5737
  %5744 = fsub fast float 1.000000e+00, %4824
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = fmul fast float %5746, %5744
  %5748 = fsub fast float %5743, %5747
  %5749 = fadd fast float %5732, %5731
  %5750 = fmul fast float %5734, %5749
  %5751 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5752 = fsub fast float %5748, %5751
  %5753 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5754 = fmul fast float %5752, %5753
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  br label %5772

; <label>:5756                                    ; preds = %5721
  %5757 = fmul fast float %5730, %5727
  %5758 = fmul fast float %5734, %5731
  %5759 = fmul fast float %5734, %5732
  %5760 = fmul fast float %5757, %5734
  %5761 = add i32 %30, 356
  %5762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5761, i32 undef)  ; BufferLoad(srv,index,wot)
  %5763 = extractvalue %dx.types.ResRet.i32 %5762, 0
  %5764 = and i32 %5763, 32
  %5765 = icmp eq i32 %5764, 0
  br i1 %5765, label %5772, label %5766

; <label>:5766                                    ; preds = %5756
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = fmul fast float %5768, 0x3FE99999A0000000
  %5770 = fadd fast float %5768, %5758
  %5771 = fadd fast float %5769, %5760
  br label %5772

; <label>:5772                                    ; preds = %5766, %5756, %5735
  %5773 = phi float [ %5750, %5735 ], [ %5770, %5766 ], [ %5758, %5756 ]
  %5774 = phi float [ %5755, %5735 ], [ %5759, %5766 ], [ %5759, %5756 ]
  %5775 = phi float [ 1.000000e+00, %5735 ], [ %5771, %5766 ], [ %5760, %5756 ]
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 0
  %5778 = fmul fast float %5777, %5723
  %5779 = fmul fast float %5777, %5724
  %5780 = fadd fast float %5723, %5722
  %5781 = select i1 %214, float %5780, float %5722
  %5782 = fmul float %5781, %5777
  %5783 = select i1 %214, float 0.000000e+00, float %5778
  %5784 = select i1 %214, float 0.000000e+00, float %5779
  %5785 = fmul fast float %5773, %5728
  %5786 = fmul fast float %5774, %5729
  %5787 = fmul fast float %5775, %5730
  %5788 = fadd fast float %5782, %5785
  %5789 = fadd fast float %5783, %5786
  %5790 = fadd fast float %5784, %5787
  %5791 = select i1 %214, float %5774, float %5789
  %5792 = select i1 %214, float %5775, float %5790
  %5793 = call float @dx.op.binary.f32(i32 36, float %5788, float 3.225500e+04)  ; FMin(a,b)
  %5794 = call float @dx.op.binary.f32(i32 36, float %5791, float 3.225500e+04)  ; FMin(a,b)
  %5795 = call float @dx.op.binary.f32(i32 36, float %5792, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!41}
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
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
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!36 = !{!37, !38, !39, !40}
!37 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!41 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !71}
!43 = !{!44, !69, null}
!44 = !{!45, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68}
!45 = !{i32 0, !"SV_Position", i8 9, i8 3, !46, i8 4, i32 1, i8 4, i32 0, i8 0, !47}
!46 = !{i32 0}
!47 = !{i32 3, i32 11}
!48 = !{i32 1, !"COLOR", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 1, i8 0, !49}
!49 = !{i32 3, i32 14}
!50 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 3, i8 0, !53}
!53 = !{i32 3, i32 7}
!54 = !{i32 4, !"TANGENT", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!55 = !{i32 3, i32 15}
!56 = !{i32 5, !"SH_RED", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 5, i8 0, !55}
!57 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 6, i8 0, !55}
!58 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 7, i8 0, !55}
!59 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 8, i8 0, !53}
!60 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 9, i8 0, !55}
!61 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 10, i8 0, !51}
!62 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 11, i8 0, !55}
!63 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 12, i8 0, !53}
!64 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !46, i8 1, i32 1, i8 2, i32 13, i8 0, !65}
!65 = !{i32 3, i32 1}
!66 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !46, i8 1, i32 1, i8 4, i32 14, i8 0, !65}
!67 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !46, i8 1, i32 1, i8 1, i32 13, i8 2, !65}
!68 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

