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
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
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
; shader hash: cb6467e2ae4b30815e3d4701179e552f
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = fmul fast float %80, %74
  %82 = fmul fast float %80, %75
  %83 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %84 = bitcast float %83 to i32
  %85 = ashr i32 %84, 1
  %86 = sub nsw i32 1597250115, %85
  %87 = bitcast i32 %86 to float
  %88 = fmul fast float %87, %66
  %89 = fmul fast float %87, %67
  %90 = fmul fast float %87, %68
  %91 = fmul fast float %67, %64
  %92 = fmul fast float %68, %63
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %68, %62
  %95 = fmul fast float %66, %64
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %66, %63
  %98 = fmul fast float %67, %62
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %93, %65
  %101 = fmul fast float %96, %65
  %102 = fmul fast float %99, %65
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast une float %104, 0.000000e+00
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %81, 2.000000e+00
  %110 = fmul fast float %109, %107
  %111 = fmul fast float %82, 2.000000e+00
  %112 = fmul fast float %111, %108
  %113 = fsub fast float 1.000000e+00, %110
  %114 = fsub fast float 1.000000e+00, %112
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = select i1 %105, float %116, float %120
  %124 = select i1 %105, float %117, float %121
  %125 = select i1 %105, float %118, float %122
  %126 = fmul fast float %123, %113
  %127 = fmul fast float %124, %113
  %128 = fmul fast float %125, %113
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = select i1 %105, float %130, float %134
  %138 = select i1 %105, float %131, float %135
  %139 = select i1 %105, float %132, float %136
  %140 = fmul fast float %137, %114
  %141 = fmul fast float %138, %114
  %142 = fmul fast float %139, %114
  %143 = fadd fast float %140, %126
  %144 = fadd fast float %141, %127
  %145 = fadd fast float %142, %128
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %105, float %147, float %151
  %155 = select i1 %105, float %148, float %152
  %156 = select i1 %105, float %149, float %153
  %157 = fadd fast float %143, %154
  %158 = fadd fast float %144, %155
  %159 = fadd fast float %145, %156
  %160 = fmul fast float %157, %76
  %161 = fmul fast float %158, %76
  %162 = fmul fast float %159, %76
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %166 = fmul fast float %164, %81
  %167 = fmul fast float %165, %82
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %169, 114688
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float %166, float 0.000000e+00
  %173 = select i1 %171, float %167, float 0.000000e+00
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, 2.550000e+02
  %177 = fptoui float %176 to i32
  %178 = select i1 %171, i32 %177, i32 0
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 3
  %181 = and i32 %180, 3
  %182 = icmp ne i32 %181, 0
  %183 = and i32 %180, 4
  %184 = icmp ne i32 %183, 0
  %185 = and i1 %182, %184
  br i1 %185, label %186, label %195

; <label>:186                                     ; preds = %0
  %187 = fmul fast float %108, %82
  %188 = fmul fast float %107, %81
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %28, float %188, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fsub fast float 1.000000e+00, %190
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = fcmp fast olt float %191, %193
  br label %198

; <label>:195                                     ; preds = %0
  %196 = icmp eq i32 %183, 0
  %197 = and i1 %182, %196
  br label %198

; <label>:198                                     ; preds = %195, %186
  %199 = phi i1 [ %194, %186 ], [ %197, %195 ]
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = fmul fast float %201, 0x3FE3C6EF40000000
  %203 = frem fast float %81, 2.560000e+02
  %204 = frem fast float %82, 2.560000e+02
  %205 = fptoui float %203 to i32
  %206 = fptoui float %204 to i32
  %207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fadd fast float %208, %202
  %210 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %211 = add i32 %32, 156
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = shl i32 %213, 4
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %213, 7
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %213, 22
  %221 = shl nuw nsw i32 %220, 5
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = add i32 %32, 216
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %225, 8
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %225, 16
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = add i32 %32, 36
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %32, 288
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = fmul fast float %248, 0x3F50624DE0000000
  %252 = fmul fast float %250, 0x3F50624DE0000000
  %253 = add i32 %32, 172
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = shl i32 %255, 4
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %255, 7
  %260 = and i32 %259, 32752
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %255, 22
  %263 = shl nuw nsw i32 %262, 5
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %32, 232
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %267, 8
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %267, 16
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = add i32 %32, 52
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %32, 304
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = fmul fast float %290, 0x3F50624DE0000000
  %294 = fmul fast float %292, 0x3F50624DE0000000
  %295 = add i32 %32, 188
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = shl i32 %297, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %297, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 22
  %305 = shl nuw nsw i32 %304, 5
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %32, 248
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %309, 8
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %309, 16
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = add i32 %32, 68
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %32, 320
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = fmul fast float %332, 0x3F50624DE0000000
  %336 = fmul fast float %334, 0x3F50624DE0000000
  %337 = add i32 %32, 204
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = shl i32 %339, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %339, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 22
  %347 = shl nuw nsw i32 %346, 5
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %32, 264
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %351, 8
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %351, 16
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = add i32 %32, 84
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %32, 336
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = fmul fast float %374, 0x3F50624DE0000000
  %378 = fmul fast float %376, 0x3F50624DE0000000
  %379 = add i32 %32, 348
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 32
  %383 = icmp eq i32 %382, 0
  %384 = and i32 %381, 64
  %385 = icmp eq i32 %384, 0
  %386 = and i32 %381, 128
  %387 = icmp eq i32 %386, 0
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 2
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %405, label %392

; <label>:392                                     ; preds = %198
  %393 = add i32 %32, 472
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %395, 0
  %397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %397, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 0
  %400 = extractvalue %dx.types.ResRet.f32 %398, 1
  %401 = extractvalue %dx.types.ResRet.f32 %398, 2
  %402 = fmul fast float %399, %71
  %403 = fmul fast float %400, %72
  %404 = fmul fast float %401, %73
  br label %405

; <label>:405                                     ; preds = %392, %198
  %406 = phi float [ %73, %198 ], [ %404, %392 ]
  %407 = phi float [ %72, %198 ], [ %403, %392 ]
  %408 = phi float [ %71, %198 ], [ %402, %392 ]
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %432, label %413

; <label>:413                                     ; preds = %405
  %414 = add i32 %32, 44
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %408, float 1.000000e+00
  %420 = add i32 %32, 60
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 1
  %424 = icmp ne i32 %423, 0
  %425 = select i1 %424, float %407, float 1.000000e+00
  %426 = add i32 %32, 76
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 1
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, float %406, float 1.000000e+00
  br label %432

; <label>:432                                     ; preds = %413, %405
  %433 = phi float [ %406, %405 ], [ %431, %413 ]
  %434 = phi float [ %407, %405 ], [ %425, %413 ]
  %435 = phi float [ %408, %405 ], [ %419, %413 ]
  %436 = lshr i32 %410, 20
  %437 = and i32 %436, 3
  %438 = add nuw nsw i32 %437, 1
  %439 = add i32 %32, 24
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = add i32 %32, 28
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = or i32 %444, %441
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %972, label %447

; <label>:447                                     ; preds = %432
  %448 = and i32 %441, 262144
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %37, float 1.000000e+00
  %451 = select i1 %449, float %38, float 0.000000e+00
  %452 = select i1 %449, float %39, float 0.000000e+00
  %453 = select i1 %449, float %40, float 1.000000e+00
  %454 = select i1 %449, float %41, float %69
  %455 = select i1 %449, float %42, float %70
  %456 = add i32 %32, 284
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = lshr i32 %458, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = fmul fast float %460, 0x3F50624DE0000000
  %462 = add i32 %32, 88
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  %467 = lshr i32 %464, 24
  %468 = add i32 %32, 292
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = add i32 %32, 32
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 22
  %479 = shl nuw nsw i32 %478, 5
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = shl i32 %477, 4
  %482 = and i32 %481, 32752
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %477, 7
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 3
  %489 = fmul fast float %488, 1.000000e+03
  %490 = fmul fast float %251, %489
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fadd fast float %491, %241
  %493 = fmul fast float %252, %489
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fadd fast float %494, %243
  %496 = fmul fast float %461, %489
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = fmul fast float %497, 0x401921FB60000000
  %499 = fadd fast float %498, %480
  %500 = call float @dx.op.unary.f32(i32 13, float %499)  ; Sin(value)
  %501 = call float @dx.op.unary.f32(i32 12, float %499)  ; Cos(value)
  %502 = fsub fast float -0.000000e+00, %500
  %503 = fadd fast float %454, -5.000000e-01
  %504 = fadd fast float %455, -5.000000e-01
  %505 = fmul fast float %472, %503
  %506 = fmul fast float %474, %504
  %507 = fadd fast float %505, 5.000000e-01
  %508 = fadd fast float %506, 5.000000e-01
  %509 = fmul fast float %483, %507
  %510 = fmul fast float %486, %508
  %511 = fmul fast float %501, %509
  %512 = call float @dx.op.tertiary.f32(i32 46, float %502, float %510, float %511)  ; FMad(a,b,c)
  %513 = fmul fast float %500, %509
  %514 = call float @dx.op.tertiary.f32(i32 46, float %501, float %510, float %513)  ; FMad(a,b,c)
  %515 = fadd fast float %492, %512
  %516 = fadd fast float %495, %514
  %517 = icmp ugt i32 %466, 1
  %518 = icmp ugt i32 %464, 33554431
  %519 = or i1 %518, %517
  br i1 %519, label %520, label %545

; <label>:520                                     ; preds = %447
  %521 = add i32 %32, 228
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = fmul fast float %488, %525
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = mul nuw nsw i32 %466, %467
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %527, %529
  %531 = call float @dx.op.unary.f32(i32 27, float %530)  ; Round_ni(value)
  %532 = fptoui float %531 to i32
  %533 = urem i32 %532, %466
  %534 = udiv i32 %532, %467
  %535 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %536 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %537 = uitofp i32 %533 to float
  %538 = uitofp i32 %534 to float
  %539 = fadd fast float %535, %537
  %540 = fadd fast float %536, %538
  %541 = uitofp i32 %466 to float
  %542 = uitofp i32 %467 to float
  %543 = fdiv fast float %539, %541
  %544 = fdiv fast float %540, %542
  br label %545

; <label>:545                                     ; preds = %520, %447
  %546 = phi float [ %543, %520 ], [ %515, %447 ]
  %547 = phi float [ %544, %520 ], [ %516, %447 ]
  %548 = and i32 %441, 16
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %746, label %550

; <label>:550                                     ; preds = %545
  %551 = add i32 %32, 360
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %553, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %77, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = and i32 %464, 255
  %562 = uitofp i32 %561 to float
  %563 = lshr i32 %464, 8
  %564 = and i32 %563, 255
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %560, %562
  %567 = fadd fast float %566, %565
  %568 = fmul fast float %567, 0x3F70101000000000
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 512
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %581, label %573

; <label>:573                                     ; preds = %550
  %574 = add i32 %32, 440
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = add i32 %576, 0
  %578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %578, %dx.types.Handle %78, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  br label %581

; <label>:581                                     ; preds = %573, %550
  %582 = phi float [ %580, %573 ], [ 1.000000e+00, %550 ]
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 33554432
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %693, label %587

; <label>:587                                     ; preds = %581
  %588 = add i32 %32, 224
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 65535
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %590, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = add i32 %32, 228
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = lshr i32 %601, 24
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = and i32 %601, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = lshr i32 %601, 8
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %601, 16
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = add i32 %32, 220
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 24
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = and i32 %618, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = lshr i32 %618, 8
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = lshr i32 %618, 16
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F70101020000000
  %633 = bitcast float %557 to i32
  %634 = ashr i32 %633, 1
  %635 = sub nsw i32 1597463174, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %557, 5.000000e-01
  %638 = fmul fast float %636, %636
  %639 = fmul fast float %638, %637
  %640 = fsub fast float 1.500000e+00, %639
  %641 = fmul fast float %636, %557
  %642 = fmul fast float %641, %640
  %643 = bitcast float %558 to i32
  %644 = ashr i32 %643, 1
  %645 = sub nsw i32 1597463174, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %558, 5.000000e-01
  %648 = fmul fast float %646, %646
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 1.500000e+00, %649
  %651 = fmul fast float %646, %558
  %652 = fmul fast float %651, %650
  %653 = bitcast float %559 to i32
  %654 = ashr i32 %653, 1
  %655 = sub nsw i32 1597463174, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %559, 5.000000e-01
  %658 = fmul fast float %656, %656
  %659 = fmul fast float %658, %657
  %660 = fsub fast float 1.500000e+00, %659
  %661 = fmul fast float %656, %559
  %662 = fmul fast float %661, %660
  %663 = fsub fast float %642, %624
  %664 = fsub fast float %652, %628
  %665 = fsub fast float %662, %632
  %666 = fmul fast float %663, %592
  %667 = fmul fast float %664, %594
  %668 = fmul fast float %665, %599
  %669 = fadd fast float %666, %607
  %670 = fadd fast float %667, %611
  %671 = fadd fast float %668, %615
  %672 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %673 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %675 = fmul fast float %672, %672
  %676 = fmul fast float %673, %673
  %677 = fmul fast float %674, %674
  %678 = fsub fast float %675, %557
  %679 = fsub fast float %676, %558
  %680 = fsub fast float %677, %559
  %681 = fmul fast float %678, %582
  %682 = fmul fast float %679, %582
  %683 = fmul fast float %680, %582
  %684 = fadd fast float %681, %557
  %685 = fadd fast float %682, %558
  %686 = fadd fast float %683, %559
  %687 = fadd fast float %604, %568
  %688 = fsub fast float %687, %621
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fsub fast float %689, %568
  %691 = fmul fast float %690, %582
  %692 = fadd fast float %691, %568
  br label %746

; <label>:693                                     ; preds = %581
  %694 = and i32 %584, 134217728
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %730, label %696

; <label>:696                                     ; preds = %693
  %697 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %700 = fadd fast float %697, -5.000000e-01
  %701 = fadd fast float %698, -5.000000e-01
  %702 = fadd fast float %699, -5.000000e-01
  %703 = fmul fast float %700, %582
  %704 = fmul fast float %701, %582
  %705 = fmul fast float %702, %582
  %706 = fadd fast float %703, 5.000000e-01
  %707 = fadd fast float %704, 5.000000e-01
  %708 = fadd fast float %705, 5.000000e-01
  %709 = call float @dx.op.unary.f32(i32 24, float %557)  ; Sqrt(value)
  %710 = call float @dx.op.unary.f32(i32 24, float %558)  ; Sqrt(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %712 = fmul fast float %706, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %709
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %709
  %717 = fmul fast float %707, 2.000000e+00
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %718, %710
  %720 = fadd fast float %719, %717
  %721 = fmul fast float %720, %710
  %722 = fmul fast float %708, 2.000000e+00
  %723 = fsub fast float 1.000000e+00, %722
  %724 = fmul fast float %723, %711
  %725 = fadd fast float %724, %722
  %726 = fmul fast float %725, %711
  %727 = fmul fast float %716, %716
  %728 = fmul fast float %721, %721
  %729 = fmul fast float %726, %726
  br label %746

; <label>:730                                     ; preds = %693
  %731 = fmul fast float %228, %228
  %732 = fmul fast float %232, %232
  %733 = fmul fast float %236, %236
  %734 = fadd fast float %731, -1.000000e+00
  %735 = fadd fast float %732, -1.000000e+00
  %736 = fadd fast float %733, -1.000000e+00
  %737 = fmul fast float %582, %734
  %738 = fmul fast float %582, %735
  %739 = fmul fast float %582, %736
  %740 = fadd fast float %737, 1.000000e+00
  %741 = fadd fast float %738, 1.000000e+00
  %742 = fadd fast float %739, 1.000000e+00
  %743 = fmul fast float %740, %557
  %744 = fmul fast float %741, %558
  %745 = fmul fast float %742, %559
  br label %746

; <label>:746                                     ; preds = %730, %696, %587, %545
  %747 = phi float [ %692, %587 ], [ %568, %696 ], [ %568, %730 ], [ 0x3FA23C0BE0000000, %545 ]
  %748 = phi float [ %684, %587 ], [ %727, %696 ], [ %743, %730 ], [ 1.000000e+00, %545 ]
  %749 = phi float [ %685, %587 ], [ %728, %696 ], [ %744, %730 ], [ 1.000000e+00, %545 ]
  %750 = phi float [ %686, %587 ], [ %729, %696 ], [ %745, %730 ], [ 1.000000e+00, %545 ]
  %751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.i32 %751, 1
  %753 = and i32 %752, 1
  %754 = icmp ne i32 %753, 0
  %755 = add i32 %32, 356
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 32
  %759 = icmp ne i32 %758, 0
  %760 = and i1 %754, %759
  %761 = select i1 %760, float 1.000000e+00, float %748
  %762 = select i1 %760, float 0x3FD3333340000000, float %749
  %763 = select i1 %760, float 0x3FD3333340000000, float %750
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 32
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %840, label %768

; <label>:768                                     ; preds = %746
  %769 = add i32 %32, 92
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %32, 376
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %77, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = and i32 %771, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %771, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %771, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = fmul fast float %778, %783
  %792 = fadd fast float %791, %786
  %793 = fmul fast float %792, 0x3F70101000000000
  %794 = fadd fast float %779, -5.000000e-01
  %795 = fadd fast float %781, -5.000000e-01
  %796 = fmul fast float %794, %790
  %797 = fmul fast float %795, %790
  %798 = fadd fast float %796, 5.000000e-01
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fmul fast float %798, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fmul fast float %799, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fadd fast float %801, %803
  %805 = fmul fast float %804, 5.000000e-01
  %806 = fsub fast float %801, %803
  %807 = fmul fast float %806, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %811 = fsub fast float %809, %810
  %812 = call float @dx.op.dot3.f32(i32 55, float %805, float %807, float %811, float %805, float %807, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %805, %813
  %815 = fmul fast float %807, %813
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 67108864
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %836, label %820

; <label>:820                                     ; preds = %768
  %821 = add i32 %32, 280
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 65535
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = lshr i32 %823, 16
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fsub fast float %793, %831
  %833 = fmul fast float %832, %825
  %834 = fadd fast float %833, %829
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  br label %836

; <label>:836                                     ; preds = %820, %768
  %837 = phi float [ %835, %820 ], [ %793, %768 ]
  %838 = call float @dx.op.dot2.f32(i32 54, float %814, float %815, float %450, float %451)  ; Dot2(ax,ay,bx,by)
  %839 = call float @dx.op.dot2.f32(i32 54, float %814, float %815, float %452, float %453)  ; Dot2(ax,ay,bx,by)
  br label %840

; <label>:840                                     ; preds = %836, %746
  %841 = phi float [ %837, %836 ], [ 0x3FD6666660000000, %746 ]
  %842 = phi float [ %838, %836 ], [ 0.000000e+00, %746 ]
  %843 = phi float [ %839, %836 ], [ 0.000000e+00, %746 ]
  %844 = phi float [ %780, %836 ], [ 1.000000e+00, %746 ]
  %845 = add i32 %32, 160
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = lshr i32 %847, 22
  %849 = shl nuw nsw i32 %848, 5
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 64
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %888, label %855

; <label>:855                                     ; preds = %840
  %856 = add i32 %32, 392
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = and i32 %862, 131072
  %864 = icmp eq i32 %863, 0
  %865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %77, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = fmul fast float %866, %216
  %870 = fmul fast float %867, %219
  %871 = fmul fast float %868, %222
  br i1 %864, label %878, label %872

; <label>:872                                     ; preds = %855
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = fmul fast float %874, %869
  %876 = fmul fast float %874, %870
  %877 = fmul fast float %874, %871
  br label %878

; <label>:878                                     ; preds = %872, %855
  %879 = phi float [ %875, %872 ], [ %869, %855 ]
  %880 = phi float [ %876, %872 ], [ %870, %855 ]
  %881 = phi float [ %877, %872 ], [ %871, %855 ]
  %882 = fmul fast float %879, %850
  %883 = select i1 %199, float %882, float %879
  %884 = call float @dx.op.dot3.f32(i32 55, float %883, float %880, float %881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %885 = select i1 %199, float 0.000000e+00, float %879
  %886 = select i1 %199, float %884, float %880
  %887 = select i1 %199, float 0.000000e+00, float %881
  br label %888

; <label>:888                                     ; preds = %878, %840
  %889 = phi float [ %885, %878 ], [ 0.000000e+00, %840 ]
  %890 = phi float [ %886, %878 ], [ 0.000000e+00, %840 ]
  %891 = phi float [ %887, %878 ], [ 0.000000e+00, %840 ]
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 26624
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %953, label %896

; <label>:896                                     ; preds = %888
  %897 = add i32 %32, 456
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %78, float %546, float %547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 3
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 1048576
  %909 = icmp ne i32 %908, 0
  %910 = and i32 %907, 8192
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %926, label %912

; <label>:912                                     ; preds = %896
  %913 = extractvalue %dx.types.ResRet.f32 %902, 2
  %914 = select i1 %909, float %913, float %904
  %915 = select i1 %909, float %903, float %904
  %916 = add i32 %32, 96
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F80101020000000
  %923 = fmul fast float %922, %915
  %924 = fmul fast float %922, %904
  %925 = fmul fast float %922, %914
  br label %926

; <label>:926                                     ; preds = %912, %896
  %927 = phi float [ %923, %912 ], [ 0.000000e+00, %896 ]
  %928 = phi float [ %924, %912 ], [ 0.000000e+00, %896 ]
  %929 = phi float [ %925, %912 ], [ 0.000000e+00, %896 ]
  %930 = and i32 %907, 2048
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %940, label %932

; <label>:932                                     ; preds = %926
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = shl i32 %934, 4
  %936 = and i32 %935, 32752
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = fmul fast float %937, %905
  %939 = call float @dx.op.binary.f32(i32 35, float %938, float 0x3F70101020000000)  ; FMax(a,b)
  br label %940

; <label>:940                                     ; preds = %932, %926
  %941 = phi float [ %939, %932 ], [ 0x3F70101020000000, %926 ]
  %942 = and i32 %907, 16384
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %953, label %944

; <label>:944                                     ; preds = %940
  %945 = add i32 %32, 96
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 24
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %903, 0x3F70101020000000
  %951 = select i1 %909, float 0x3F70101020000000, float %950
  %952 = fmul fast float %951, %949
  br label %953

; <label>:953                                     ; preds = %944, %940, %888
  %954 = phi float [ %927, %944 ], [ %927, %940 ], [ 0.000000e+00, %888 ]
  %955 = phi float [ %928, %944 ], [ %928, %940 ], [ 0.000000e+00, %888 ]
  %956 = phi float [ %929, %944 ], [ %929, %940 ], [ 0.000000e+00, %888 ]
  %957 = phi float [ %941, %944 ], [ %941, %940 ], [ 0x3F70101020000000, %888 ]
  %958 = phi float [ %952, %944 ], [ 0.000000e+00, %940 ], [ 0.000000e+00, %888 ]
  %959 = add i32 %32, 96
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = lshr i32 %961, 8
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = call float @dx.op.dot3.f32(i32 55, float %761, float %762, float %763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = fmul fast float %966, %967
  %969 = fadd fast float %968, %963
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  br label %972

; <label>:972                                     ; preds = %953, %432
  %973 = phi float [ 0.000000e+00, %432 ], [ %842, %953 ]
  %974 = phi float [ 0.000000e+00, %432 ], [ %843, %953 ]
  %975 = phi float [ 0.000000e+00, %432 ], [ %761, %953 ]
  %976 = phi float [ 0.000000e+00, %432 ], [ %762, %953 ]
  %977 = phi float [ 0.000000e+00, %432 ], [ %763, %953 ]
  %978 = phi float [ 0.000000e+00, %432 ], [ %954, %953 ]
  %979 = phi float [ 0.000000e+00, %432 ], [ %955, %953 ]
  %980 = phi float [ 0.000000e+00, %432 ], [ %956, %953 ]
  %981 = phi float [ 0.000000e+00, %432 ], [ %889, %953 ]
  %982 = phi float [ 0.000000e+00, %432 ], [ %890, %953 ]
  %983 = phi float [ 0.000000e+00, %432 ], [ %891, %953 ]
  %984 = phi float [ 0.000000e+00, %432 ], [ %747, %953 ]
  %985 = phi float [ 0.000000e+00, %432 ], [ 1.000000e+00, %953 ]
  %986 = phi float [ 0.000000e+00, %432 ], [ %841, %953 ]
  %987 = phi float [ 0.000000e+00, %432 ], [ %844, %953 ]
  %988 = phi float [ 0.000000e+00, %432 ], [ %957, %953 ]
  %989 = phi float [ 0.000000e+00, %432 ], [ %958, %953 ]
  %990 = phi float [ 0.000000e+00, %432 ], [ %971, %953 ]
  br i1 %383, label %1828, label %991

; <label>:991                                     ; preds = %972
  %992 = icmp ult i32 %438, 2
  %993 = add i32 %32, 40
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %32, 44
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = or i32 %998, %995
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1828, label %1001

; <label>:1001                                    ; preds = %991
  %1002 = and i32 %995, 262144
  %1003 = icmp ne i32 %1002, 0
  %1004 = select i1 %1003, float %37, float 1.000000e+00
  %1005 = select i1 %1003, float %38, float 0.000000e+00
  %1006 = select i1 %1003, float %39, float 0.000000e+00
  %1007 = select i1 %1003, float %40, float 1.000000e+00
  %1008 = select i1 %1003, float %41, float %69
  %1009 = select i1 %1003, float %42, float %70
  %1010 = add i32 %32, 300
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = fmul fast float %1014, 0x3F50624DE0000000
  %1016 = add i32 %32, 104
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 16
  %1020 = and i32 %1019, 255
  %1021 = lshr i32 %1018, 24
  %1022 = add i32 %32, 308
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 65535
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1024, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = add i32 %32, 48
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 3
  %1043 = fmul fast float %1042, 1.000000e+03
  %1044 = fmul fast float %293, %1043
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = fadd fast float %1045, %283
  %1047 = fmul fast float %294, %1043
  %1048 = call float @dx.op.unary.f32(i32 22, float %1047)  ; Frc(value)
  %1049 = fadd fast float %1048, %285
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
  %1075 = add i32 %32, 244
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1105 = add i32 %32, 428
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %78, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = add i32 %32, 116
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = shl i32 %1114, 4
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = lshr i32 %1114, 7
  %1119 = and i32 %1118, 32752
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = fsub fast float 1.000000e+00, %435
  %1122 = call float @dx.op.binary.f32(i32 35, float %1121, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1123 = bitcast float %435 to i32
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
  %1151 = phi float [ %1149, %1104 ], [ %435, %1099 ]
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 128
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1172, label %1156

; <label>:1156                                    ; preds = %1150
  %1157 = add i32 %32, 412
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %1159, 0
  %1161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1161, %dx.types.Handle %78, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1174, label %1828, label %1175

; <label>:1175                                    ; preds = %1172
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 16
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1378, label %1180

; <label>:1180                                    ; preds = %1175
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %32, 364
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %1185, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1187, %dx.types.Handle %77, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 512
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1213, label %1205

; <label>:1205                                    ; preds = %1180
  %1206 = add i32 %32, 444
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %1208, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1210, %dx.types.Handle %78, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  br label %1213

; <label>:1213                                    ; preds = %1205, %1180
  %1214 = phi float [ %1212, %1205 ], [ 1.000000e+00, %1180 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 33554432
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1325, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %32, 240
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1222, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = add i32 %32, 244
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1248 = add i32 %32, 236
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1329 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %1330 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %1331 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
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
  %1363 = fmul fast float %270, %270
  %1364 = fmul fast float %274, %274
  %1365 = fmul fast float %278, %278
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
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 1
  %1385 = and i32 %1384, 1
  %1386 = icmp ne i32 %1385, 0
  %1387 = add i32 %32, 356
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 32
  %1391 = icmp ne i32 %1390, 0
  %1392 = and i1 %1386, %1391
  %1393 = select i1 %1392, float 1.000000e+00, float %1380
  %1394 = select i1 %1392, float 0x3FD3333340000000, float %1381
  %1395 = select i1 %1392, float 0x3FD3333340000000, float %1382
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1472, label %1400

; <label>:1400                                    ; preds = %1378
  %1401 = add i32 %32, 108
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %32, 380
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %77, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 67108864
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1468, label %1452

; <label>:1452                                    ; preds = %1400
  %1453 = add i32 %32, 296
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1477 = add i32 %32, 176
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = lshr i32 %1479, 22
  %1481 = shl nuw nsw i32 %1480, 5
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 64
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1520, label %1487

; <label>:1487                                    ; preds = %1472
  %1488 = add i32 %32, 396
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1490, 0
  %1492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 131072
  %1496 = icmp eq i32 %1495, 0
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1492, %dx.types.Handle %77, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = fmul fast float %1498, %258
  %1502 = fmul fast float %1499, %261
  %1503 = fmul fast float %1500, %264
  br i1 %1496, label %1510, label %1504

; <label>:1504                                    ; preds = %1487
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1515 = select i1 %199, float %1514, float %1511
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1512, float %1513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = select i1 %199, float 0.000000e+00, float %1511
  %1518 = select i1 %199, float %1516, float %1512
  %1519 = select i1 %199, float 0.000000e+00, float %1513
  br label %1520

; <label>:1520                                    ; preds = %1510, %1472
  %1521 = phi float [ %1517, %1510 ], [ 0.000000e+00, %1472 ]
  %1522 = phi float [ %1518, %1510 ], [ 0.000000e+00, %1472 ]
  %1523 = phi float [ %1519, %1510 ], [ 0.000000e+00, %1472 ]
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 26624
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1585, label %1528

; <label>:1528                                    ; preds = %1520
  %1529 = add i32 %32, 460
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %78, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 1048576
  %1541 = icmp ne i32 %1540, 0
  %1542 = and i32 %1539, 8192
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1558, label %1544

; <label>:1544                                    ; preds = %1528
  %1545 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1546 = select i1 %1541, float %1545, float %1536
  %1547 = select i1 %1541, float %1535, float %1536
  %1548 = add i32 %32, 112
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = lshr i32 %1550, 16
  %1552 = and i32 %1551, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = fmul fast float %1553, 0x3F80101020000000
  %1555 = fmul fast float %1554, %1547
  %1556 = fmul fast float %1554, %1536
  %1557 = fmul fast float %1554, %1546
  br label %1558

; <label>:1558                                    ; preds = %1544, %1528
  %1559 = phi float [ %1555, %1544 ], [ 0.000000e+00, %1528 ]
  %1560 = phi float [ %1556, %1544 ], [ 0.000000e+00, %1528 ]
  %1561 = phi float [ %1557, %1544 ], [ 0.000000e+00, %1528 ]
  %1562 = and i32 %1539, 2048
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1572, label %1564

; <label>:1564                                    ; preds = %1558
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = shl i32 %1566, 4
  %1568 = and i32 %1567, 32752
  %1569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1568)  ; LegacyF16ToF32(value)
  %1570 = fmul fast float %1569, %1537
  %1571 = call float @dx.op.binary.f32(i32 35, float %1570, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1572

; <label>:1572                                    ; preds = %1564, %1558
  %1573 = phi float [ %1571, %1564 ], [ 0x3F70101020000000, %1558 ]
  %1574 = and i32 %1539, 16384
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1585, label %1576

; <label>:1576                                    ; preds = %1572
  %1577 = add i32 %32, 112
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = lshr i32 %1579, 24
  %1581 = uitofp i32 %1580 to float
  %1582 = fmul fast float %1535, 0x3F70101020000000
  %1583 = select i1 %1541, float 0x3F70101020000000, float %1582
  %1584 = fmul fast float %1583, %1581
  br label %1585

; <label>:1585                                    ; preds = %1576, %1572, %1520
  %1586 = phi float [ %1559, %1576 ], [ %1559, %1572 ], [ 0.000000e+00, %1520 ]
  %1587 = phi float [ %1560, %1576 ], [ %1560, %1572 ], [ 0.000000e+00, %1520 ]
  %1588 = phi float [ %1561, %1576 ], [ %1561, %1572 ], [ 0.000000e+00, %1520 ]
  %1589 = phi float [ %1573, %1576 ], [ %1573, %1572 ], [ 0x3F70101020000000, %1520 ]
  %1590 = phi float [ %1584, %1576 ], [ 0.000000e+00, %1572 ], [ 0.000000e+00, %1520 ]
  %1591 = add i32 %32, 112
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = lshr i32 %1593, 8
  %1597 = and i32 %1596, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = fmul fast float %1598, %1599
  %1601 = fadd fast float %1600, %1595
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br i1 %992, label %1604, label %1612

; <label>:1604                                    ; preds = %1585
  %1605 = fsub fast float 1.000000e+00, %1173
  %1606 = fmul fast float %1605, %975
  %1607 = fmul fast float %1605, %976
  %1608 = fmul fast float %1605, %977
  %1609 = fmul fast float %1605, %981
  %1610 = fmul fast float %1605, %982
  %1611 = fmul fast float %1605, %983
  br label %1612

; <label>:1612                                    ; preds = %1604, %1585
  %1613 = phi float [ %1606, %1604 ], [ %975, %1585 ]
  %1614 = phi float [ %1607, %1604 ], [ %976, %1585 ]
  %1615 = phi float [ %1608, %1604 ], [ %977, %1585 ]
  %1616 = phi float [ %1609, %1604 ], [ %981, %1585 ]
  %1617 = phi float [ %1610, %1604 ], [ %982, %1585 ]
  %1618 = phi float [ %1611, %1604 ], [ %983, %1585 ]
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 3
  %1622 = icmp eq i32 %1621, 3
  br i1 %1622, label %1701, label %1623

; <label>:1623                                    ; preds = %1612
  %1624 = and i32 %1620, 16
  %1625 = icmp ne i32 %1624, 0
  %1626 = select i1 %1625, float %1173, float 0.000000e+00
  %1627 = icmp eq i32 %1621, 0
  br i1 %1627, label %1628, label %1656

; <label>:1628                                    ; preds = %1623
  %1629 = and i32 %1620, 64
  %1630 = icmp ne i32 %1629, 0
  %1631 = select i1 %1630, float %1173, float 0.000000e+00
  %1632 = fsub fast float %1393, %1613
  %1633 = fsub fast float %1394, %1614
  %1634 = fsub fast float %1395, %1615
  %1635 = fmul fast float %1626, %1632
  %1636 = fmul fast float %1626, %1633
  %1637 = fmul fast float %1626, %1634
  %1638 = fadd fast float %1635, %1613
  %1639 = fadd fast float %1636, %1614
  %1640 = fadd fast float %1637, %1615
  %1641 = fsub fast float %1379, %984
  %1642 = fmul fast float %1626, %1641
  %1643 = fadd fast float %1642, %984
  %1644 = fsub fast float %1521, %1616
  %1645 = fsub fast float %1522, %1617
  %1646 = fsub fast float %1523, %1618
  %1647 = fmul fast float %1631, %1644
  %1648 = fmul fast float %1631, %1645
  %1649 = fmul fast float %1631, %1646
  %1650 = fadd fast float %1647, %1616
  %1651 = fadd fast float %1648, %1617
  %1652 = fadd fast float %1649, %1618
  %1653 = fsub fast float %1603, %990
  %1654 = fmul fast float %1626, %1653
  %1655 = fadd fast float %1654, %990
  br label %1701

; <label>:1656                                    ; preds = %1623
  %1657 = icmp eq i32 %1621, 1
  br i1 %1657, label %1658, label %1671

; <label>:1658                                    ; preds = %1656
  %1659 = fadd fast float %1393, -1.000000e+00
  %1660 = fadd fast float %1394, -1.000000e+00
  %1661 = fadd fast float %1395, -1.000000e+00
  %1662 = fmul fast float %1626, %1659
  %1663 = fmul fast float %1626, %1660
  %1664 = fmul fast float %1626, %1661
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fmul fast float %1665, %1613
  %1669 = fmul fast float %1666, %1614
  %1670 = fmul fast float %1667, %1615
  br label %1701

; <label>:1671                                    ; preds = %1656
  %1672 = icmp eq i32 %1621, 2
  br i1 %1672, label %1673, label %1701

; <label>:1673                                    ; preds = %1671
  %1674 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fmul fast float %1677, %1626
  %1681 = fmul fast float %1678, %1626
  %1682 = fmul fast float %1679, %1626
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fmul fast float %1683, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1613
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1613
  %1691 = fmul fast float %1684, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1614
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1614
  %1696 = fmul fast float %1685, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1615
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1615
  br label %1701

; <label>:1701                                    ; preds = %1673, %1671, %1658, %1628, %1612
  %1702 = phi float [ %1613, %1612 ], [ %1690, %1673 ], [ %1613, %1671 ], [ %1668, %1658 ], [ %1638, %1628 ]
  %1703 = phi float [ %1614, %1612 ], [ %1695, %1673 ], [ %1614, %1671 ], [ %1669, %1658 ], [ %1639, %1628 ]
  %1704 = phi float [ %1615, %1612 ], [ %1700, %1673 ], [ %1615, %1671 ], [ %1670, %1658 ], [ %1640, %1628 ]
  %1705 = phi float [ %1616, %1612 ], [ %1616, %1673 ], [ %1616, %1671 ], [ %1616, %1658 ], [ %1650, %1628 ]
  %1706 = phi float [ %1617, %1612 ], [ %1617, %1673 ], [ %1617, %1671 ], [ %1617, %1658 ], [ %1651, %1628 ]
  %1707 = phi float [ %1618, %1612 ], [ %1618, %1673 ], [ %1618, %1671 ], [ %1618, %1658 ], [ %1652, %1628 ]
  %1708 = phi float [ %984, %1612 ], [ %984, %1673 ], [ %984, %1671 ], [ %984, %1658 ], [ %1643, %1628 ]
  %1709 = phi float [ %990, %1612 ], [ %990, %1673 ], [ %990, %1671 ], [ %990, %1658 ], [ %1655, %1628 ]
  %1710 = and i32 %1620, 12
  %1711 = icmp eq i32 %1710, 12
  br i1 %1711, label %1828, label %1712

; <label>:1712                                    ; preds = %1701
  %1713 = and i32 %1620, 2097184
  %1714 = icmp eq i32 %1713, 2097184
  %1715 = select i1 %1714, float %1173, float 0.000000e+00
  %1716 = and i32 %1620, 4194336
  %1717 = icmp eq i32 %1716, 4194336
  %1718 = select i1 %1717, float %1173, float 0.000000e+00
  %1719 = and i32 %1620, 8388640
  %1720 = icmp eq i32 %1719, 8388640
  %1721 = select i1 %1720, float %1173, float 0.000000e+00
  %1722 = and i32 %1620, 2048
  %1723 = icmp ne i32 %1722, 0
  %1724 = select i1 %1723, float %1173, float 0.000000e+00
  %1725 = and i32 %1620, 8192
  %1726 = icmp ne i32 %1725, 0
  %1727 = select i1 %1726, float %1173, float 0.000000e+00
  %1728 = and i32 %1620, 16384
  %1729 = icmp ne i32 %1728, 0
  %1730 = select i1 %1729, float %1173, float 0.000000e+00
  %1731 = icmp eq i32 %1710, 0
  br i1 %1731, label %1732, label %1760

; <label>:1732                                    ; preds = %1712
  %1733 = fsub fast float %1474, %973
  %1734 = fsub fast float %1475, %974
  %1735 = fmul fast float %1715, %1733
  %1736 = fmul fast float %1715, %1734
  %1737 = fadd fast float %1735, %973
  %1738 = fadd fast float %1736, %974
  %1739 = fsub fast float %1476, %987
  %1740 = fmul fast float %1718, %1739
  %1741 = fadd fast float %1740, %987
  %1742 = fsub fast float %1473, %986
  %1743 = fmul fast float %1721, %1742
  %1744 = fadd fast float %1743, %986
  %1745 = fsub fast float %1589, %988
  %1746 = fmul fast float %1724, %1745
  %1747 = fadd fast float %1746, %988
  %1748 = fsub fast float %1586, %978
  %1749 = fsub fast float %1587, %979
  %1750 = fsub fast float %1588, %980
  %1751 = fmul fast float %1727, %1748
  %1752 = fmul fast float %1727, %1749
  %1753 = fmul fast float %1727, %1750
  %1754 = fadd fast float %1751, %978
  %1755 = fadd fast float %1752, %979
  %1756 = fadd fast float %1753, %980
  %1757 = fsub fast float %1590, %989
  %1758 = fmul fast float %1730, %1757
  %1759 = fadd fast float %1758, %989
  br label %1828

; <label>:1760                                    ; preds = %1712
  %1761 = icmp eq i32 %1710, 4
  br i1 %1761, label %1762, label %1804

; <label>:1762                                    ; preds = %1760
  %1763 = fmul fast float %1715, %1474
  %1764 = fmul fast float %1715, %1475
  %1765 = fadd fast float %1763, %973
  %1766 = fadd fast float %1764, %974
  %1767 = call float @dx.op.binary.f32(i32 36, float %987, float %1476)  ; FMin(a,b)
  %1768 = fsub fast float %1767, %987
  %1769 = fmul fast float %1768, %1718
  %1770 = fadd fast float %1769, %987
  %1771 = fadd fast float %1473, %986
  %1772 = fmul fast float %1771, 0x3FF337FAE0000000
  %1773 = fmul fast float %986, %986
  %1774 = fmul fast float %1473, %1473
  %1775 = fadd fast float %1774, %1773
  %1776 = fmul fast float %1775, 0x3FE5152B00000000
  %1777 = fmul fast float %986, 0xBFCC1F85E0000000
  %1778 = fmul fast float %1777, %1473
  %1779 = fadd fast float %1778, 0xBFE1363700000000
  %1780 = fadd fast float %1779, %1772
  %1781 = fsub fast float %1780, %1776
  %1782 = fmul fast float %1771, 0x3FBA6F0D00000000
  %1783 = fmul fast float %1775, 0x3FD0432880000000
  %1784 = fmul fast float %986, 0xBFEF110800000000
  %1785 = fmul fast float %1784, %1473
  %1786 = fadd fast float %1785, 1.000000e+00
  %1787 = fsub fast float %1786, %1782
  %1788 = fadd fast float %1787, %1783
  %1789 = fdiv fast float %1781, %1788
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fsub fast float %1790, %986
  %1792 = fmul fast float %1791, %1721
  %1793 = fadd fast float %1792, %986
  %1794 = fmul fast float %1724, %1589
  %1795 = fadd fast float %1794, %988
  %1796 = fmul fast float %1727, %1586
  %1797 = fmul fast float %1727, %1587
  %1798 = fmul fast float %1727, %1588
  %1799 = fadd fast float %1796, %978
  %1800 = fadd fast float %1797, %979
  %1801 = fadd fast float %1798, %980
  %1802 = fmul fast float %1730, %1590
  %1803 = fadd fast float %1802, %989
  br label %1828

; <label>:1804                                    ; preds = %1760
  %1805 = icmp eq i32 %1710, 8
  br i1 %1805, label %1806, label %1828

; <label>:1806                                    ; preds = %1804
  %1807 = fmul fast float %1715, %1474
  %1808 = fmul fast float %1715, %1475
  %1809 = fadd fast float %1807, %973
  %1810 = fadd fast float %1808, %974
  %1811 = call float @dx.op.binary.f32(i32 36, float %987, float %1476)  ; FMin(a,b)
  %1812 = fsub fast float %1811, %987
  %1813 = fmul fast float %1812, %1718
  %1814 = fadd fast float %1813, %987
  %1815 = fsub fast float %1473, %986
  %1816 = fmul fast float %1721, %1815
  %1817 = fadd fast float %1816, %986
  %1818 = fmul fast float %1724, %1589
  %1819 = fadd fast float %1818, %988
  %1820 = fmul fast float %1727, %1586
  %1821 = fmul fast float %1727, %1587
  %1822 = fmul fast float %1727, %1588
  %1823 = fadd fast float %1820, %978
  %1824 = fadd fast float %1821, %979
  %1825 = fadd fast float %1822, %980
  %1826 = fmul fast float %1730, %1590
  %1827 = fadd fast float %1826, %989
  br label %1828

; <label>:1828                                    ; preds = %1806, %1804, %1762, %1732, %1701, %1172, %991, %972
  %1829 = phi float [ %973, %1701 ], [ %973, %1172 ], [ %973, %972 ], [ %1809, %1806 ], [ %973, %1804 ], [ %1765, %1762 ], [ %1737, %1732 ], [ %973, %991 ]
  %1830 = phi float [ %974, %1701 ], [ %974, %1172 ], [ %974, %972 ], [ %1810, %1806 ], [ %974, %1804 ], [ %1766, %1762 ], [ %1738, %1732 ], [ %974, %991 ]
  %1831 = phi float [ %1702, %1701 ], [ %975, %1172 ], [ %975, %972 ], [ %1702, %1806 ], [ %1702, %1804 ], [ %1702, %1762 ], [ %1702, %1732 ], [ %975, %991 ]
  %1832 = phi float [ %1703, %1701 ], [ %976, %1172 ], [ %976, %972 ], [ %1703, %1806 ], [ %1703, %1804 ], [ %1703, %1762 ], [ %1703, %1732 ], [ %976, %991 ]
  %1833 = phi float [ %1704, %1701 ], [ %977, %1172 ], [ %977, %972 ], [ %1704, %1806 ], [ %1704, %1804 ], [ %1704, %1762 ], [ %1704, %1732 ], [ %977, %991 ]
  %1834 = phi float [ %978, %1701 ], [ %978, %1172 ], [ %978, %972 ], [ %1823, %1806 ], [ %978, %1804 ], [ %1799, %1762 ], [ %1754, %1732 ], [ %978, %991 ]
  %1835 = phi float [ %979, %1701 ], [ %979, %1172 ], [ %979, %972 ], [ %1824, %1806 ], [ %979, %1804 ], [ %1800, %1762 ], [ %1755, %1732 ], [ %979, %991 ]
  %1836 = phi float [ %980, %1701 ], [ %980, %1172 ], [ %980, %972 ], [ %1825, %1806 ], [ %980, %1804 ], [ %1801, %1762 ], [ %1756, %1732 ], [ %980, %991 ]
  %1837 = phi float [ %1705, %1701 ], [ %981, %1172 ], [ %981, %972 ], [ %1705, %1806 ], [ %1705, %1804 ], [ %1705, %1762 ], [ %1705, %1732 ], [ %981, %991 ]
  %1838 = phi float [ %1706, %1701 ], [ %982, %1172 ], [ %982, %972 ], [ %1706, %1806 ], [ %1706, %1804 ], [ %1706, %1762 ], [ %1706, %1732 ], [ %982, %991 ]
  %1839 = phi float [ %1707, %1701 ], [ %983, %1172 ], [ %983, %972 ], [ %1707, %1806 ], [ %1707, %1804 ], [ %1707, %1762 ], [ %1707, %1732 ], [ %983, %991 ]
  %1840 = phi float [ %1708, %1701 ], [ %984, %1172 ], [ %984, %972 ], [ %1708, %1806 ], [ %1708, %1804 ], [ %1708, %1762 ], [ %1708, %1732 ], [ %984, %991 ]
  %1841 = phi float [ %986, %1701 ], [ %986, %1172 ], [ %986, %972 ], [ %1817, %1806 ], [ %986, %1804 ], [ %1793, %1762 ], [ %1744, %1732 ], [ %986, %991 ]
  %1842 = phi float [ %987, %1701 ], [ %987, %1172 ], [ %987, %972 ], [ %1814, %1806 ], [ %987, %1804 ], [ %1770, %1762 ], [ %1741, %1732 ], [ %987, %991 ]
  %1843 = phi float [ %988, %1701 ], [ %988, %1172 ], [ %988, %972 ], [ %1819, %1806 ], [ %988, %1804 ], [ %1795, %1762 ], [ %1747, %1732 ], [ %988, %991 ]
  %1844 = phi float [ %989, %1701 ], [ %989, %1172 ], [ %989, %972 ], [ %1827, %1806 ], [ %989, %1804 ], [ %1803, %1762 ], [ %1759, %1732 ], [ %989, %991 ]
  %1845 = phi float [ %1709, %1701 ], [ %990, %1172 ], [ %990, %972 ], [ %1709, %1806 ], [ %1709, %1804 ], [ %1709, %1762 ], [ %1709, %1732 ], [ %990, %991 ]
  br i1 %385, label %2683, label %1846

; <label>:1846                                    ; preds = %1828
  %1847 = icmp ult i32 %438, 3
  %1848 = add i32 %32, 56
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = add i32 %32, 60
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = or i32 %1853, %1850
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %2683, label %1856

; <label>:1856                                    ; preds = %1846
  %1857 = and i32 %1850, 262144
  %1858 = icmp ne i32 %1857, 0
  %1859 = select i1 %1858, float %37, float 1.000000e+00
  %1860 = select i1 %1858, float %38, float 0.000000e+00
  %1861 = select i1 %1858, float %39, float 0.000000e+00
  %1862 = select i1 %1858, float %40, float 1.000000e+00
  %1863 = select i1 %1858, float %41, float %69
  %1864 = select i1 %1858, float %42, float %70
  %1865 = add i32 %32, 316
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = lshr i32 %1867, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = fmul fast float %1869, 0x3F50624DE0000000
  %1871 = add i32 %32, 120
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 16
  %1875 = and i32 %1874, 255
  %1876 = lshr i32 %1873, 24
  %1877 = add i32 %32, 324
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 65535
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = lshr i32 %1879, 16
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = add i32 %32, 64
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = lshr i32 %1886, 22
  %1888 = shl nuw nsw i32 %1887, 5
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = shl i32 %1886, 4
  %1891 = and i32 %1890, 32752
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = lshr i32 %1886, 7
  %1894 = and i32 %1893, 32752
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = fmul fast float %1897, 1.000000e+03
  %1899 = fmul fast float %335, %1898
  %1900 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1901 = fadd fast float %1900, %325
  %1902 = fmul fast float %336, %1898
  %1903 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1904 = fadd fast float %1903, %327
  %1905 = fmul fast float %1870, %1898
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = fmul fast float %1906, 0x401921FB60000000
  %1908 = fadd fast float %1907, %1889
  %1909 = call float @dx.op.unary.f32(i32 13, float %1908)  ; Sin(value)
  %1910 = call float @dx.op.unary.f32(i32 12, float %1908)  ; Cos(value)
  %1911 = fsub fast float -0.000000e+00, %1909
  %1912 = fadd fast float %1863, -5.000000e-01
  %1913 = fadd fast float %1864, -5.000000e-01
  %1914 = fmul fast float %1881, %1912
  %1915 = fmul fast float %1883, %1913
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fadd fast float %1915, 5.000000e-01
  %1918 = fmul fast float %1892, %1916
  %1919 = fmul fast float %1895, %1917
  %1920 = fmul fast float %1910, %1918
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1919, float %1920)  ; FMad(a,b,c)
  %1922 = fmul fast float %1909, %1918
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1919, float %1922)  ; FMad(a,b,c)
  %1924 = fadd fast float %1901, %1921
  %1925 = fadd fast float %1904, %1923
  %1926 = icmp ugt i32 %1875, 1
  %1927 = icmp ugt i32 %1873, 33554431
  %1928 = or i1 %1927, %1926
  br i1 %1928, label %1929, label %1954

; <label>:1929                                    ; preds = %1856
  %1930 = add i32 %32, 260
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = lshr i32 %1932, 16
  %1934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1933)  ; LegacyF16ToF32(value)
  %1935 = fmul fast float %1897, %1934
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = mul nuw nsw i32 %1875, %1876
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1936, %1938
  %1940 = call float @dx.op.unary.f32(i32 27, float %1939)  ; Round_ni(value)
  %1941 = fptoui float %1940 to i32
  %1942 = urem i32 %1941, %1875
  %1943 = udiv i32 %1941, %1876
  %1944 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1945 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1946 = uitofp i32 %1942 to float
  %1947 = uitofp i32 %1943 to float
  %1948 = fadd fast float %1944, %1946
  %1949 = fadd fast float %1945, %1947
  %1950 = uitofp i32 %1875 to float
  %1951 = uitofp i32 %1876 to float
  %1952 = fdiv fast float %1948, %1950
  %1953 = fdiv fast float %1949, %1951
  br label %1954

; <label>:1954                                    ; preds = %1929, %1856
  %1955 = phi float [ %1952, %1929 ], [ %1924, %1856 ]
  %1956 = phi float [ %1953, %1929 ], [ %1925, %1856 ]
  %1957 = and i32 %1850, 256
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2005, label %1959

; <label>:1959                                    ; preds = %1954
  %1960 = add i32 %32, 432
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %78, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = add i32 %32, 132
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = shl i32 %1969, 4
  %1971 = and i32 %1970, 32752
  %1972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1971)  ; LegacyF16ToF32(value)
  %1973 = lshr i32 %1969, 7
  %1974 = and i32 %1973, 32752
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = fsub fast float 1.000000e+00, %434
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1978 = bitcast float %434 to i32
  %1979 = sitofp i32 %1978 to float
  %1980 = fadd fast float %1979, 0xC1CFBF8940000000
  %1981 = fmul fast float %1975, %1980
  %1982 = fadd fast float %1981, 0x41CFBF8940000000
  %1983 = fptosi float %1982 to i32
  %1984 = bitcast i32 %1983 to float
  %1985 = bitcast float %1977 to i32
  %1986 = sitofp i32 %1985 to float
  %1987 = fadd fast float %1986, 0xC1CFBF8940000000
  %1988 = fmul fast float %1987, %1975
  %1989 = fadd fast float %1988, 0x41CFBF8940000000
  %1990 = fptosi float %1989 to i32
  %1991 = bitcast i32 %1990 to float
  %1992 = fmul fast float %1984, %1972
  %1993 = fmul fast float %1991, %1972
  %1994 = fsub fast float %1977, %1992
  %1995 = fadd fast float %1993, %1977
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1998 = fsub fast float %1966, %1996
  %1999 = fsub fast float %1997, %1996
  %2000 = bitcast float %1999 to i32
  %2001 = sub nsw i32 2129859010, %2000
  %2002 = bitcast i32 %2001 to float
  %2003 = fmul fast float %2002, %1998
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  br label %2005

; <label>:2005                                    ; preds = %1959, %1954
  %2006 = phi float [ %2004, %1959 ], [ %434, %1954 ]
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 128
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2027, label %2011

; <label>:2011                                    ; preds = %2005
  %2012 = add i32 %32, 416
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %78, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = and i32 %2020, 524288
  %2022 = icmp ne i32 %2021, 0
  %2023 = fcmp fast ogt float %2018, 0x3FE0101020000000
  %2024 = select i1 %2023, float 1.000000e+00, float 0.000000e+00
  %2025 = select i1 %2022, float %2024, float %2018
  %2026 = fmul fast float %2025, %2006
  br label %2027

; <label>:2027                                    ; preds = %2011, %2005
  %2028 = phi float [ %2026, %2011 ], [ %2006, %2005 ]
  %2029 = fcmp fast ult float %2028, 0x3F70101020000000
  br i1 %2029, label %2683, label %2030

; <label>:2030                                    ; preds = %2027
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 16
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2233, label %2035

; <label>:2035                                    ; preds = %2030
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = add i32 %32, 368
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %2040, 0
  %2042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2042, %dx.types.Handle %77, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.ResRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.ResRet.f32 %2043, 2
  %2047 = extractvalue %dx.types.ResRet.f32 %2043, 3
  %2048 = and i32 %2037, 255
  %2049 = uitofp i32 %2048 to float
  %2050 = lshr i32 %2037, 8
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2047, %2049
  %2054 = fadd fast float %2053, %2052
  %2055 = fmul fast float %2054, 0x3F70101000000000
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 512
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2068, label %2060

; <label>:2060                                    ; preds = %2035
  %2061 = add i32 %32, 448
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %2063, 0
  %2065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2065, %dx.types.Handle %78, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  br label %2068

; <label>:2068                                    ; preds = %2060, %2035
  %2069 = phi float [ %2067, %2060 ], [ 1.000000e+00, %2035 ]
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 33554432
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2180, label %2074

; <label>:2074                                    ; preds = %2068
  %2075 = add i32 %32, 256
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 65535
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = lshr i32 %2077, 16
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = add i32 %32, 260
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 65535
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = lshr i32 %2088, 24
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2090, 0x3F70101020000000
  %2092 = and i32 %2088, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = lshr i32 %2088, 8
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = lshr i32 %2088, 16
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101020000000
  %2103 = add i32 %32, 252
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = lshr i32 %2105, 24
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = and i32 %2105, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = lshr i32 %2105, 8
  %2113 = and i32 %2112, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = lshr i32 %2105, 16
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = bitcast float %2044 to i32
  %2121 = ashr i32 %2120, 1
  %2122 = sub nsw i32 1597463174, %2121
  %2123 = bitcast i32 %2122 to float
  %2124 = fmul fast float %2044, 5.000000e-01
  %2125 = fmul fast float %2123, %2123
  %2126 = fmul fast float %2125, %2124
  %2127 = fsub fast float 1.500000e+00, %2126
  %2128 = fmul fast float %2123, %2044
  %2129 = fmul fast float %2128, %2127
  %2130 = bitcast float %2045 to i32
  %2131 = ashr i32 %2130, 1
  %2132 = sub nsw i32 1597463174, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2045, 5.000000e-01
  %2135 = fmul fast float %2133, %2133
  %2136 = fmul fast float %2135, %2134
  %2137 = fsub fast float 1.500000e+00, %2136
  %2138 = fmul fast float %2133, %2045
  %2139 = fmul fast float %2138, %2137
  %2140 = bitcast float %2046 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = sub nsw i32 1597463174, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2046, 5.000000e-01
  %2145 = fmul fast float %2143, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fsub fast float 1.500000e+00, %2146
  %2148 = fmul fast float %2143, %2046
  %2149 = fmul fast float %2148, %2147
  %2150 = fsub fast float %2129, %2111
  %2151 = fsub fast float %2139, %2115
  %2152 = fsub fast float %2149, %2119
  %2153 = fmul fast float %2150, %2079
  %2154 = fmul fast float %2151, %2081
  %2155 = fmul fast float %2152, %2086
  %2156 = fadd fast float %2153, %2094
  %2157 = fadd fast float %2154, %2098
  %2158 = fadd fast float %2155, %2102
  %2159 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2162 = fmul fast float %2159, %2159
  %2163 = fmul fast float %2160, %2160
  %2164 = fmul fast float %2161, %2161
  %2165 = fsub fast float %2162, %2044
  %2166 = fsub fast float %2163, %2045
  %2167 = fsub fast float %2164, %2046
  %2168 = fmul fast float %2165, %2069
  %2169 = fmul fast float %2166, %2069
  %2170 = fmul fast float %2167, %2069
  %2171 = fadd fast float %2168, %2044
  %2172 = fadd fast float %2169, %2045
  %2173 = fadd fast float %2170, %2046
  %2174 = fadd fast float %2091, %2055
  %2175 = fsub fast float %2174, %2108
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fsub fast float %2176, %2055
  %2178 = fmul fast float %2177, %2069
  %2179 = fadd fast float %2178, %2055
  br label %2233

; <label>:2180                                    ; preds = %2068
  %2181 = and i32 %2071, 134217728
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2217, label %2183

; <label>:2183                                    ; preds = %2180
  %2184 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %2186 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fadd fast float %2186, -5.000000e-01
  %2190 = fmul fast float %2187, %2069
  %2191 = fmul fast float %2188, %2069
  %2192 = fmul fast float %2189, %2069
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = fadd fast float %2192, 5.000000e-01
  %2196 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2197 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2198 = call float @dx.op.unary.f32(i32 24, float %2046)  ; Sqrt(value)
  %2199 = fmul fast float %2193, 2.000000e+00
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2200, %2196
  %2202 = fadd fast float %2201, %2199
  %2203 = fmul fast float %2202, %2196
  %2204 = fmul fast float %2194, 2.000000e+00
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = fmul fast float %2205, %2197
  %2207 = fadd fast float %2206, %2204
  %2208 = fmul fast float %2207, %2197
  %2209 = fmul fast float %2195, 2.000000e+00
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2210, %2198
  %2212 = fadd fast float %2211, %2209
  %2213 = fmul fast float %2212, %2198
  %2214 = fmul fast float %2203, %2203
  %2215 = fmul fast float %2208, %2208
  %2216 = fmul fast float %2213, %2213
  br label %2233

; <label>:2217                                    ; preds = %2180
  %2218 = fmul fast float %312, %312
  %2219 = fmul fast float %316, %316
  %2220 = fmul fast float %320, %320
  %2221 = fadd fast float %2218, -1.000000e+00
  %2222 = fadd fast float %2219, -1.000000e+00
  %2223 = fadd fast float %2220, -1.000000e+00
  %2224 = fmul fast float %2069, %2221
  %2225 = fmul fast float %2069, %2222
  %2226 = fmul fast float %2069, %2223
  %2227 = fadd fast float %2224, 1.000000e+00
  %2228 = fadd fast float %2225, 1.000000e+00
  %2229 = fadd fast float %2226, 1.000000e+00
  %2230 = fmul fast float %2227, %2044
  %2231 = fmul fast float %2228, %2045
  %2232 = fmul fast float %2229, %2046
  br label %2233

; <label>:2233                                    ; preds = %2217, %2183, %2074, %2030
  %2234 = phi float [ %2179, %2074 ], [ %2055, %2183 ], [ %2055, %2217 ], [ 0x3FA23C0BE0000000, %2030 ]
  %2235 = phi float [ %2171, %2074 ], [ %2214, %2183 ], [ %2230, %2217 ], [ 1.000000e+00, %2030 ]
  %2236 = phi float [ %2172, %2074 ], [ %2215, %2183 ], [ %2231, %2217 ], [ 1.000000e+00, %2030 ]
  %2237 = phi float [ %2173, %2074 ], [ %2216, %2183 ], [ %2232, %2217 ], [ 1.000000e+00, %2030 ]
  %2238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.i32 %2238, 1
  %2240 = and i32 %2239, 1
  %2241 = icmp ne i32 %2240, 0
  %2242 = add i32 %32, 356
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, 32
  %2246 = icmp ne i32 %2245, 0
  %2247 = and i1 %2241, %2246
  %2248 = select i1 %2247, float 1.000000e+00, float %2235
  %2249 = select i1 %2247, float 0x3FD3333340000000, float %2236
  %2250 = select i1 %2247, float 0x3FD3333340000000, float %2237
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 32
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2327, label %2255

; <label>:2255                                    ; preds = %2233
  %2256 = add i32 %32, 124
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = add i32 %32, 384
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %2261, 0
  %2263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2263, %dx.types.Handle %77, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.ResRet.f32 %2264, 1
  %2267 = extractvalue %dx.types.ResRet.f32 %2264, 2
  %2268 = extractvalue %dx.types.ResRet.f32 %2264, 3
  %2269 = and i32 %2258, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = lshr i32 %2258, 8
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = lshr i32 %2258, 16
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101000000000
  %2278 = fmul fast float %2265, %2270
  %2279 = fadd fast float %2278, %2273
  %2280 = fmul fast float %2279, 0x3F70101000000000
  %2281 = fadd fast float %2266, -5.000000e-01
  %2282 = fadd fast float %2268, -5.000000e-01
  %2283 = fmul fast float %2281, %2277
  %2284 = fmul fast float %2282, %2277
  %2285 = fadd fast float %2283, 5.000000e-01
  %2286 = fadd fast float %2284, 5.000000e-01
  %2287 = fmul fast float %2285, 2.000000e+00
  %2288 = fadd fast float %2287, -1.000000e+00
  %2289 = fmul fast float %2286, 2.000000e+00
  %2290 = fadd fast float %2289, -1.000000e+00
  %2291 = fadd fast float %2288, %2290
  %2292 = fmul fast float %2291, 5.000000e-01
  %2293 = fsub fast float %2288, %2290
  %2294 = fmul fast float %2293, 5.000000e-01
  %2295 = call float @dx.op.unary.f32(i32 6, float %2292)  ; FAbs(value)
  %2296 = fsub fast float 1.000000e+00, %2295
  %2297 = call float @dx.op.unary.f32(i32 6, float %2294)  ; FAbs(value)
  %2298 = fsub fast float %2296, %2297
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2292, float %2294, float %2298, float %2292, float %2294, float %2298)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = call float @dx.op.unary.f32(i32 25, float %2299)  ; Rsqrt(value)
  %2301 = fmul fast float %2292, %2300
  %2302 = fmul fast float %2294, %2300
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 67108864
  %2306 = icmp eq i32 %2305, 0
  br i1 %2306, label %2323, label %2307

; <label>:2307                                    ; preds = %2255
  %2308 = add i32 %32, 312
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 65535
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 65535
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = lshr i32 %2310, 16
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = fsub fast float %2280, %2318
  %2320 = fmul fast float %2319, %2312
  %2321 = fadd fast float %2320, %2316
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  br label %2323

; <label>:2323                                    ; preds = %2307, %2255
  %2324 = phi float [ %2322, %2307 ], [ %2280, %2255 ]
  %2325 = call float @dx.op.dot2.f32(i32 54, float %2301, float %2302, float %1859, float %1860)  ; Dot2(ax,ay,bx,by)
  %2326 = call float @dx.op.dot2.f32(i32 54, float %2301, float %2302, float %1861, float %1862)  ; Dot2(ax,ay,bx,by)
  br label %2327

; <label>:2327                                    ; preds = %2323, %2233
  %2328 = phi float [ %2324, %2323 ], [ 0x3FD6666660000000, %2233 ]
  %2329 = phi float [ %2325, %2323 ], [ 0.000000e+00, %2233 ]
  %2330 = phi float [ %2326, %2323 ], [ 0.000000e+00, %2233 ]
  %2331 = phi float [ %2267, %2323 ], [ 1.000000e+00, %2233 ]
  %2332 = add i32 %32, 192
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 22
  %2336 = shl nuw nsw i32 %2335, 5
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 64
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2375, label %2342

; <label>:2342                                    ; preds = %2327
  %2343 = add i32 %32, 400
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 131072
  %2351 = icmp eq i32 %2350, 0
  %2352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %77, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = fmul fast float %2353, %300
  %2357 = fmul fast float %2354, %303
  %2358 = fmul fast float %2355, %306
  br i1 %2351, label %2365, label %2359

; <label>:2359                                    ; preds = %2342
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = fmul fast float %2361, %2356
  %2363 = fmul fast float %2361, %2357
  %2364 = fmul fast float %2361, %2358
  br label %2365

; <label>:2365                                    ; preds = %2359, %2342
  %2366 = phi float [ %2362, %2359 ], [ %2356, %2342 ]
  %2367 = phi float [ %2363, %2359 ], [ %2357, %2342 ]
  %2368 = phi float [ %2364, %2359 ], [ %2358, %2342 ]
  %2369 = fmul fast float %2366, %2337
  %2370 = select i1 %199, float %2369, float %2366
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2367, float %2368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = select i1 %199, float 0.000000e+00, float %2366
  %2373 = select i1 %199, float %2371, float %2367
  %2374 = select i1 %199, float 0.000000e+00, float %2368
  br label %2375

; <label>:2375                                    ; preds = %2365, %2327
  %2376 = phi float [ %2372, %2365 ], [ 0.000000e+00, %2327 ]
  %2377 = phi float [ %2373, %2365 ], [ 0.000000e+00, %2327 ]
  %2378 = phi float [ %2374, %2365 ], [ 0.000000e+00, %2327 ]
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 26624
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2440, label %2383

; <label>:2383                                    ; preds = %2375
  %2384 = add i32 %32, 464
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %2386, 0
  %2388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2388, %dx.types.Handle %78, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.ResRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.ResRet.f32 %2389, 3
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 1048576
  %2396 = icmp ne i32 %2395, 0
  %2397 = and i32 %2394, 8192
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2413, label %2399

; <label>:2399                                    ; preds = %2383
  %2400 = extractvalue %dx.types.ResRet.f32 %2389, 2
  %2401 = select i1 %2396, float %2400, float %2391
  %2402 = select i1 %2396, float %2390, float %2391
  %2403 = add i32 %32, 128
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = lshr i32 %2405, 16
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F80101020000000
  %2410 = fmul fast float %2409, %2402
  %2411 = fmul fast float %2409, %2391
  %2412 = fmul fast float %2409, %2401
  br label %2413

; <label>:2413                                    ; preds = %2399, %2383
  %2414 = phi float [ %2410, %2399 ], [ 0.000000e+00, %2383 ]
  %2415 = phi float [ %2411, %2399 ], [ 0.000000e+00, %2383 ]
  %2416 = phi float [ %2412, %2399 ], [ 0.000000e+00, %2383 ]
  %2417 = and i32 %2394, 2048
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2427, label %2419

; <label>:2419                                    ; preds = %2413
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = shl i32 %2421, 4
  %2423 = and i32 %2422, 32752
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = fmul fast float %2424, %2392
  %2426 = call float @dx.op.binary.f32(i32 35, float %2425, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2427

; <label>:2427                                    ; preds = %2419, %2413
  %2428 = phi float [ %2426, %2419 ], [ 0x3F70101020000000, %2413 ]
  %2429 = and i32 %2394, 16384
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2440, label %2431

; <label>:2431                                    ; preds = %2427
  %2432 = add i32 %32, 128
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 24
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2390, 0x3F70101020000000
  %2438 = select i1 %2396, float 0x3F70101020000000, float %2437
  %2439 = fmul fast float %2438, %2436
  br label %2440

; <label>:2440                                    ; preds = %2431, %2427, %2375
  %2441 = phi float [ %2414, %2431 ], [ %2414, %2427 ], [ 0.000000e+00, %2375 ]
  %2442 = phi float [ %2415, %2431 ], [ %2415, %2427 ], [ 0.000000e+00, %2375 ]
  %2443 = phi float [ %2416, %2431 ], [ %2416, %2427 ], [ 0.000000e+00, %2375 ]
  %2444 = phi float [ %2428, %2431 ], [ %2428, %2427 ], [ 0x3F70101020000000, %2375 ]
  %2445 = phi float [ %2439, %2431 ], [ 0.000000e+00, %2427 ], [ 0.000000e+00, %2375 ]
  %2446 = add i32 %32, 128
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 255
  %2450 = uitofp i32 %2449 to float
  %2451 = lshr i32 %2448, 8
  %2452 = and i32 %2451, 255
  %2453 = uitofp i32 %2452 to float
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2248, float %2249, float %2250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = fmul fast float %2453, %2454
  %2456 = fadd fast float %2455, %2450
  %2457 = fmul fast float %2456, 0x3F70101020000000
  %2458 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  br i1 %1847, label %2459, label %2467

; <label>:2459                                    ; preds = %2440
  %2460 = fsub fast float 1.000000e+00, %2028
  %2461 = fmul fast float %2460, %1831
  %2462 = fmul fast float %2460, %1832
  %2463 = fmul fast float %2460, %1833
  %2464 = fmul fast float %2460, %1837
  %2465 = fmul fast float %2460, %1838
  %2466 = fmul fast float %2460, %1839
  br label %2467

; <label>:2467                                    ; preds = %2459, %2440
  %2468 = phi float [ %2461, %2459 ], [ %1831, %2440 ]
  %2469 = phi float [ %2462, %2459 ], [ %1832, %2440 ]
  %2470 = phi float [ %2463, %2459 ], [ %1833, %2440 ]
  %2471 = phi float [ %2464, %2459 ], [ %1837, %2440 ]
  %2472 = phi float [ %2465, %2459 ], [ %1838, %2440 ]
  %2473 = phi float [ %2466, %2459 ], [ %1839, %2440 ]
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 3
  %2477 = icmp eq i32 %2476, 3
  br i1 %2477, label %2556, label %2478

; <label>:2478                                    ; preds = %2467
  %2479 = and i32 %2475, 16
  %2480 = icmp ne i32 %2479, 0
  %2481 = select i1 %2480, float %2028, float 0.000000e+00
  %2482 = icmp eq i32 %2476, 0
  br i1 %2482, label %2483, label %2511

; <label>:2483                                    ; preds = %2478
  %2484 = and i32 %2475, 64
  %2485 = icmp ne i32 %2484, 0
  %2486 = select i1 %2485, float %2028, float 0.000000e+00
  %2487 = fsub fast float %2248, %2468
  %2488 = fsub fast float %2249, %2469
  %2489 = fsub fast float %2250, %2470
  %2490 = fmul fast float %2481, %2487
  %2491 = fmul fast float %2481, %2488
  %2492 = fmul fast float %2481, %2489
  %2493 = fadd fast float %2490, %2468
  %2494 = fadd fast float %2491, %2469
  %2495 = fadd fast float %2492, %2470
  %2496 = fsub fast float %2234, %1840
  %2497 = fmul fast float %2481, %2496
  %2498 = fadd fast float %2497, %1840
  %2499 = fsub fast float %2376, %2471
  %2500 = fsub fast float %2377, %2472
  %2501 = fsub fast float %2378, %2473
  %2502 = fmul fast float %2486, %2499
  %2503 = fmul fast float %2486, %2500
  %2504 = fmul fast float %2486, %2501
  %2505 = fadd fast float %2502, %2471
  %2506 = fadd fast float %2503, %2472
  %2507 = fadd fast float %2504, %2473
  %2508 = fsub fast float %2458, %1845
  %2509 = fmul fast float %2481, %2508
  %2510 = fadd fast float %2509, %1845
  br label %2556

; <label>:2511                                    ; preds = %2478
  %2512 = icmp eq i32 %2476, 1
  br i1 %2512, label %2513, label %2526

; <label>:2513                                    ; preds = %2511
  %2514 = fadd fast float %2248, -1.000000e+00
  %2515 = fadd fast float %2249, -1.000000e+00
  %2516 = fadd fast float %2250, -1.000000e+00
  %2517 = fmul fast float %2481, %2514
  %2518 = fmul fast float %2481, %2515
  %2519 = fmul fast float %2481, %2516
  %2520 = fadd fast float %2517, 1.000000e+00
  %2521 = fadd fast float %2518, 1.000000e+00
  %2522 = fadd fast float %2519, 1.000000e+00
  %2523 = fmul fast float %2520, %2468
  %2524 = fmul fast float %2521, %2469
  %2525 = fmul fast float %2522, %2470
  br label %2556

; <label>:2526                                    ; preds = %2511
  %2527 = icmp eq i32 %2476, 2
  br i1 %2527, label %2528, label %2556

; <label>:2528                                    ; preds = %2526
  %2529 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2530 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2531 = call float @dx.op.unary.f32(i32 24, float %2250)  ; Sqrt(value)
  %2532 = fadd fast float %2529, -5.000000e-01
  %2533 = fadd fast float %2530, -5.000000e-01
  %2534 = fadd fast float %2531, -5.000000e-01
  %2535 = fmul fast float %2532, %2481
  %2536 = fmul fast float %2533, %2481
  %2537 = fmul fast float %2534, %2481
  %2538 = fadd fast float %2535, 5.000000e-01
  %2539 = fadd fast float %2536, 5.000000e-01
  %2540 = fadd fast float %2537, 5.000000e-01
  %2541 = fmul fast float %2538, 2.000000e+00
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = fmul fast float %2542, %2468
  %2544 = fadd fast float %2543, %2541
  %2545 = fmul fast float %2544, %2468
  %2546 = fmul fast float %2539, 2.000000e+00
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = fmul fast float %2547, %2469
  %2549 = fadd fast float %2548, %2546
  %2550 = fmul fast float %2549, %2469
  %2551 = fmul fast float %2540, 2.000000e+00
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = fmul fast float %2552, %2470
  %2554 = fadd fast float %2553, %2551
  %2555 = fmul fast float %2554, %2470
  br label %2556

; <label>:2556                                    ; preds = %2528, %2526, %2513, %2483, %2467
  %2557 = phi float [ %2468, %2467 ], [ %2545, %2528 ], [ %2468, %2526 ], [ %2523, %2513 ], [ %2493, %2483 ]
  %2558 = phi float [ %2469, %2467 ], [ %2550, %2528 ], [ %2469, %2526 ], [ %2524, %2513 ], [ %2494, %2483 ]
  %2559 = phi float [ %2470, %2467 ], [ %2555, %2528 ], [ %2470, %2526 ], [ %2525, %2513 ], [ %2495, %2483 ]
  %2560 = phi float [ %2471, %2467 ], [ %2471, %2528 ], [ %2471, %2526 ], [ %2471, %2513 ], [ %2505, %2483 ]
  %2561 = phi float [ %2472, %2467 ], [ %2472, %2528 ], [ %2472, %2526 ], [ %2472, %2513 ], [ %2506, %2483 ]
  %2562 = phi float [ %2473, %2467 ], [ %2473, %2528 ], [ %2473, %2526 ], [ %2473, %2513 ], [ %2507, %2483 ]
  %2563 = phi float [ %1840, %2467 ], [ %1840, %2528 ], [ %1840, %2526 ], [ %1840, %2513 ], [ %2498, %2483 ]
  %2564 = phi float [ %1845, %2467 ], [ %1845, %2528 ], [ %1845, %2526 ], [ %1845, %2513 ], [ %2510, %2483 ]
  %2565 = and i32 %2475, 12
  %2566 = icmp eq i32 %2565, 12
  br i1 %2566, label %2683, label %2567

; <label>:2567                                    ; preds = %2556
  %2568 = and i32 %2475, 2097184
  %2569 = icmp eq i32 %2568, 2097184
  %2570 = select i1 %2569, float %2028, float 0.000000e+00
  %2571 = and i32 %2475, 4194336
  %2572 = icmp eq i32 %2571, 4194336
  %2573 = select i1 %2572, float %2028, float 0.000000e+00
  %2574 = and i32 %2475, 8388640
  %2575 = icmp eq i32 %2574, 8388640
  %2576 = select i1 %2575, float %2028, float 0.000000e+00
  %2577 = and i32 %2475, 2048
  %2578 = icmp ne i32 %2577, 0
  %2579 = select i1 %2578, float %2028, float 0.000000e+00
  %2580 = and i32 %2475, 8192
  %2581 = icmp ne i32 %2580, 0
  %2582 = select i1 %2581, float %2028, float 0.000000e+00
  %2583 = and i32 %2475, 16384
  %2584 = icmp ne i32 %2583, 0
  %2585 = select i1 %2584, float %2028, float 0.000000e+00
  %2586 = icmp eq i32 %2565, 0
  br i1 %2586, label %2587, label %2615

; <label>:2587                                    ; preds = %2567
  %2588 = fsub fast float %2329, %1829
  %2589 = fsub fast float %2330, %1830
  %2590 = fmul fast float %2570, %2588
  %2591 = fmul fast float %2570, %2589
  %2592 = fadd fast float %2590, %1829
  %2593 = fadd fast float %2591, %1830
  %2594 = fsub fast float %2331, %1842
  %2595 = fmul fast float %2573, %2594
  %2596 = fadd fast float %2595, %1842
  %2597 = fsub fast float %2328, %1841
  %2598 = fmul fast float %2576, %2597
  %2599 = fadd fast float %2598, %1841
  %2600 = fsub fast float %2444, %1843
  %2601 = fmul fast float %2579, %2600
  %2602 = fadd fast float %2601, %1843
  %2603 = fsub fast float %2441, %1834
  %2604 = fsub fast float %2442, %1835
  %2605 = fsub fast float %2443, %1836
  %2606 = fmul fast float %2582, %2603
  %2607 = fmul fast float %2582, %2604
  %2608 = fmul fast float %2582, %2605
  %2609 = fadd fast float %2606, %1834
  %2610 = fadd fast float %2607, %1835
  %2611 = fadd fast float %2608, %1836
  %2612 = fsub fast float %2445, %1844
  %2613 = fmul fast float %2585, %2612
  %2614 = fadd fast float %2613, %1844
  br label %2683

; <label>:2615                                    ; preds = %2567
  %2616 = icmp eq i32 %2565, 4
  br i1 %2616, label %2617, label %2659

; <label>:2617                                    ; preds = %2615
  %2618 = fmul fast float %2570, %2329
  %2619 = fmul fast float %2570, %2330
  %2620 = fadd fast float %2618, %1829
  %2621 = fadd fast float %2619, %1830
  %2622 = call float @dx.op.binary.f32(i32 36, float %1842, float %2331)  ; FMin(a,b)
  %2623 = fsub fast float %2622, %1842
  %2624 = fmul fast float %2623, %2573
  %2625 = fadd fast float %2624, %1842
  %2626 = fadd fast float %2328, %1841
  %2627 = fmul fast float %2626, 0x3FF337FAE0000000
  %2628 = fmul fast float %1841, %1841
  %2629 = fmul fast float %2328, %2328
  %2630 = fadd fast float %2629, %2628
  %2631 = fmul fast float %2630, 0x3FE5152B00000000
  %2632 = fmul fast float %1841, 0xBFCC1F85E0000000
  %2633 = fmul fast float %2632, %2328
  %2634 = fadd fast float %2633, 0xBFE1363700000000
  %2635 = fadd fast float %2634, %2627
  %2636 = fsub fast float %2635, %2631
  %2637 = fmul fast float %2626, 0x3FBA6F0D00000000
  %2638 = fmul fast float %2630, 0x3FD0432880000000
  %2639 = fmul fast float %1841, 0xBFEF110800000000
  %2640 = fmul fast float %2639, %2328
  %2641 = fadd fast float %2640, 1.000000e+00
  %2642 = fsub fast float %2641, %2637
  %2643 = fadd fast float %2642, %2638
  %2644 = fdiv fast float %2636, %2643
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = fsub fast float %2645, %1841
  %2647 = fmul fast float %2646, %2576
  %2648 = fadd fast float %2647, %1841
  %2649 = fmul fast float %2579, %2444
  %2650 = fadd fast float %2649, %1843
  %2651 = fmul fast float %2582, %2441
  %2652 = fmul fast float %2582, %2442
  %2653 = fmul fast float %2582, %2443
  %2654 = fadd fast float %2651, %1834
  %2655 = fadd fast float %2652, %1835
  %2656 = fadd fast float %2653, %1836
  %2657 = fmul fast float %2585, %2445
  %2658 = fadd fast float %2657, %1844
  br label %2683

; <label>:2659                                    ; preds = %2615
  %2660 = icmp eq i32 %2565, 8
  br i1 %2660, label %2661, label %2683

; <label>:2661                                    ; preds = %2659
  %2662 = fmul fast float %2570, %2329
  %2663 = fmul fast float %2570, %2330
  %2664 = fadd fast float %2662, %1829
  %2665 = fadd fast float %2663, %1830
  %2666 = call float @dx.op.binary.f32(i32 36, float %1842, float %2331)  ; FMin(a,b)
  %2667 = fsub fast float %2666, %1842
  %2668 = fmul fast float %2667, %2573
  %2669 = fadd fast float %2668, %1842
  %2670 = fsub fast float %2328, %1841
  %2671 = fmul fast float %2576, %2670
  %2672 = fadd fast float %2671, %1841
  %2673 = fmul fast float %2579, %2444
  %2674 = fadd fast float %2673, %1843
  %2675 = fmul fast float %2582, %2441
  %2676 = fmul fast float %2582, %2442
  %2677 = fmul fast float %2582, %2443
  %2678 = fadd fast float %2675, %1834
  %2679 = fadd fast float %2676, %1835
  %2680 = fadd fast float %2677, %1836
  %2681 = fmul fast float %2585, %2445
  %2682 = fadd fast float %2681, %1844
  br label %2683

; <label>:2683                                    ; preds = %2661, %2659, %2617, %2587, %2556, %2027, %1846, %1828
  %2684 = phi float [ %1829, %2556 ], [ %1829, %2027 ], [ %1829, %1828 ], [ %2664, %2661 ], [ %1829, %2659 ], [ %2620, %2617 ], [ %2592, %2587 ], [ %1829, %1846 ]
  %2685 = phi float [ %1830, %2556 ], [ %1830, %2027 ], [ %1830, %1828 ], [ %2665, %2661 ], [ %1830, %2659 ], [ %2621, %2617 ], [ %2593, %2587 ], [ %1830, %1846 ]
  %2686 = phi float [ %2557, %2556 ], [ %1831, %2027 ], [ %1831, %1828 ], [ %2557, %2661 ], [ %2557, %2659 ], [ %2557, %2617 ], [ %2557, %2587 ], [ %1831, %1846 ]
  %2687 = phi float [ %2558, %2556 ], [ %1832, %2027 ], [ %1832, %1828 ], [ %2558, %2661 ], [ %2558, %2659 ], [ %2558, %2617 ], [ %2558, %2587 ], [ %1832, %1846 ]
  %2688 = phi float [ %2559, %2556 ], [ %1833, %2027 ], [ %1833, %1828 ], [ %2559, %2661 ], [ %2559, %2659 ], [ %2559, %2617 ], [ %2559, %2587 ], [ %1833, %1846 ]
  %2689 = phi float [ %1834, %2556 ], [ %1834, %2027 ], [ %1834, %1828 ], [ %2678, %2661 ], [ %1834, %2659 ], [ %2654, %2617 ], [ %2609, %2587 ], [ %1834, %1846 ]
  %2690 = phi float [ %1835, %2556 ], [ %1835, %2027 ], [ %1835, %1828 ], [ %2679, %2661 ], [ %1835, %2659 ], [ %2655, %2617 ], [ %2610, %2587 ], [ %1835, %1846 ]
  %2691 = phi float [ %1836, %2556 ], [ %1836, %2027 ], [ %1836, %1828 ], [ %2680, %2661 ], [ %1836, %2659 ], [ %2656, %2617 ], [ %2611, %2587 ], [ %1836, %1846 ]
  %2692 = phi float [ %2560, %2556 ], [ %1837, %2027 ], [ %1837, %1828 ], [ %2560, %2661 ], [ %2560, %2659 ], [ %2560, %2617 ], [ %2560, %2587 ], [ %1837, %1846 ]
  %2693 = phi float [ %2561, %2556 ], [ %1838, %2027 ], [ %1838, %1828 ], [ %2561, %2661 ], [ %2561, %2659 ], [ %2561, %2617 ], [ %2561, %2587 ], [ %1838, %1846 ]
  %2694 = phi float [ %2562, %2556 ], [ %1839, %2027 ], [ %1839, %1828 ], [ %2562, %2661 ], [ %2562, %2659 ], [ %2562, %2617 ], [ %2562, %2587 ], [ %1839, %1846 ]
  %2695 = phi float [ %2563, %2556 ], [ %1840, %2027 ], [ %1840, %1828 ], [ %2563, %2661 ], [ %2563, %2659 ], [ %2563, %2617 ], [ %2563, %2587 ], [ %1840, %1846 ]
  %2696 = phi float [ %1841, %2556 ], [ %1841, %2027 ], [ %1841, %1828 ], [ %2672, %2661 ], [ %1841, %2659 ], [ %2648, %2617 ], [ %2599, %2587 ], [ %1841, %1846 ]
  %2697 = phi float [ %1842, %2556 ], [ %1842, %2027 ], [ %1842, %1828 ], [ %2669, %2661 ], [ %1842, %2659 ], [ %2625, %2617 ], [ %2596, %2587 ], [ %1842, %1846 ]
  %2698 = phi float [ %1843, %2556 ], [ %1843, %2027 ], [ %1843, %1828 ], [ %2674, %2661 ], [ %1843, %2659 ], [ %2650, %2617 ], [ %2602, %2587 ], [ %1843, %1846 ]
  %2699 = phi float [ %1844, %2556 ], [ %1844, %2027 ], [ %1844, %1828 ], [ %2682, %2661 ], [ %1844, %2659 ], [ %2658, %2617 ], [ %2614, %2587 ], [ %1844, %1846 ]
  %2700 = phi float [ %2564, %2556 ], [ %1845, %2027 ], [ %1845, %1828 ], [ %2564, %2661 ], [ %2564, %2659 ], [ %2564, %2617 ], [ %2564, %2587 ], [ %1845, %1846 ]
  br i1 %387, label %3538, label %2701

; <label>:2701                                    ; preds = %2683
  %2702 = icmp ult i32 %438, 4
  %2703 = add i32 %32, 72
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = add i32 %32, 76
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = or i32 %2708, %2705
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %3538, label %2711

; <label>:2711                                    ; preds = %2701
  %2712 = and i32 %2705, 262144
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %37, float 1.000000e+00
  %2715 = select i1 %2713, float %38, float 0.000000e+00
  %2716 = select i1 %2713, float %39, float 0.000000e+00
  %2717 = select i1 %2713, float %40, float 1.000000e+00
  %2718 = select i1 %2713, float %41, float %69
  %2719 = select i1 %2713, float %42, float %70
  %2720 = add i32 %32, 332
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = lshr i32 %2722, 16
  %2724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2723)  ; LegacyF16ToF32(value)
  %2725 = fmul fast float %2724, 0x3F50624DE0000000
  %2726 = add i32 %32, 136
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = lshr i32 %2728, 16
  %2730 = and i32 %2729, 255
  %2731 = lshr i32 %2728, 24
  %2732 = add i32 %32, 340
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 65535
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = lshr i32 %2734, 16
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = add i32 %32, 80
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = lshr i32 %2741, 22
  %2743 = shl nuw nsw i32 %2742, 5
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = shl i32 %2741, 4
  %2746 = and i32 %2745, 32752
  %2747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2746)  ; LegacyF16ToF32(value)
  %2748 = lshr i32 %2741, 7
  %2749 = and i32 %2748, 32752
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 3
  %2753 = fmul fast float %2752, 1.000000e+03
  %2754 = fmul fast float %377, %2753
  %2755 = call float @dx.op.unary.f32(i32 22, float %2754)  ; Frc(value)
  %2756 = fadd fast float %2755, %367
  %2757 = fmul fast float %378, %2753
  %2758 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2759 = fadd fast float %2758, %369
  %2760 = fmul fast float %2725, %2753
  %2761 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2762 = fmul fast float %2761, 0x401921FB60000000
  %2763 = fadd fast float %2762, %2744
  %2764 = call float @dx.op.unary.f32(i32 13, float %2763)  ; Sin(value)
  %2765 = call float @dx.op.unary.f32(i32 12, float %2763)  ; Cos(value)
  %2766 = fsub fast float -0.000000e+00, %2764
  %2767 = fadd fast float %2718, -5.000000e-01
  %2768 = fadd fast float %2719, -5.000000e-01
  %2769 = fmul fast float %2736, %2767
  %2770 = fmul fast float %2738, %2768
  %2771 = fadd fast float %2769, 5.000000e-01
  %2772 = fadd fast float %2770, 5.000000e-01
  %2773 = fmul fast float %2747, %2771
  %2774 = fmul fast float %2750, %2772
  %2775 = fmul fast float %2765, %2773
  %2776 = call float @dx.op.tertiary.f32(i32 46, float %2766, float %2774, float %2775)  ; FMad(a,b,c)
  %2777 = fmul fast float %2764, %2773
  %2778 = call float @dx.op.tertiary.f32(i32 46, float %2765, float %2774, float %2777)  ; FMad(a,b,c)
  %2779 = fadd fast float %2756, %2776
  %2780 = fadd fast float %2759, %2778
  %2781 = icmp ugt i32 %2730, 1
  %2782 = icmp ugt i32 %2728, 33554431
  %2783 = or i1 %2782, %2781
  br i1 %2783, label %2784, label %2809

; <label>:2784                                    ; preds = %2711
  %2785 = add i32 %32, 276
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = lshr i32 %2787, 16
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = fmul fast float %2752, %2789
  %2791 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2792 = mul nuw nsw i32 %2730, %2731
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2791, %2793
  %2795 = call float @dx.op.unary.f32(i32 27, float %2794)  ; Round_ni(value)
  %2796 = fptoui float %2795 to i32
  %2797 = urem i32 %2796, %2730
  %2798 = udiv i32 %2796, %2731
  %2799 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2800 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2801 = uitofp i32 %2797 to float
  %2802 = uitofp i32 %2798 to float
  %2803 = fadd fast float %2799, %2801
  %2804 = fadd fast float %2800, %2802
  %2805 = uitofp i32 %2730 to float
  %2806 = uitofp i32 %2731 to float
  %2807 = fdiv fast float %2803, %2805
  %2808 = fdiv fast float %2804, %2806
  br label %2809

; <label>:2809                                    ; preds = %2784, %2711
  %2810 = phi float [ %2807, %2784 ], [ %2779, %2711 ]
  %2811 = phi float [ %2808, %2784 ], [ %2780, %2711 ]
  %2812 = and i32 %2705, 256
  %2813 = icmp eq i32 %2812, 0
  br i1 %2813, label %2860, label %2814

; <label>:2814                                    ; preds = %2809
  %2815 = add i32 %32, 436
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = add i32 %2817, 0
  %2819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2819, %dx.types.Handle %78, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2821 = extractvalue %dx.types.ResRet.f32 %2820, 0
  %2822 = add i32 %32, 148
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = shl i32 %2824, 4
  %2826 = and i32 %2825, 32752
  %2827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2826)  ; LegacyF16ToF32(value)
  %2828 = lshr i32 %2824, 7
  %2829 = and i32 %2828, 32752
  %2830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2829)  ; LegacyF16ToF32(value)
  %2831 = fsub fast float 1.000000e+00, %433
  %2832 = call float @dx.op.binary.f32(i32 35, float %2831, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2833 = bitcast float %433 to i32
  %2834 = sitofp i32 %2833 to float
  %2835 = fadd fast float %2834, 0xC1CFBF8940000000
  %2836 = fmul fast float %2830, %2835
  %2837 = fadd fast float %2836, 0x41CFBF8940000000
  %2838 = fptosi float %2837 to i32
  %2839 = bitcast i32 %2838 to float
  %2840 = bitcast float %2832 to i32
  %2841 = sitofp i32 %2840 to float
  %2842 = fadd fast float %2841, 0xC1CFBF8940000000
  %2843 = fmul fast float %2842, %2830
  %2844 = fadd fast float %2843, 0x41CFBF8940000000
  %2845 = fptosi float %2844 to i32
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2839, %2827
  %2848 = fmul fast float %2846, %2827
  %2849 = fsub fast float %2832, %2847
  %2850 = fadd fast float %2848, %2832
  %2851 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2852 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2853 = fsub fast float %2821, %2851
  %2854 = fsub fast float %2852, %2851
  %2855 = bitcast float %2854 to i32
  %2856 = sub nsw i32 2129859010, %2855
  %2857 = bitcast i32 %2856 to float
  %2858 = fmul fast float %2857, %2853
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  br label %2860

; <label>:2860                                    ; preds = %2814, %2809
  %2861 = phi float [ %2859, %2814 ], [ %433, %2809 ]
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = and i32 %2863, 128
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %2882, label %2866

; <label>:2866                                    ; preds = %2860
  %2867 = add i32 %32, 420
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = add i32 %2869, 0
  %2871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2871, %dx.types.Handle %78, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 524288
  %2877 = icmp ne i32 %2876, 0
  %2878 = fcmp fast ogt float %2873, 0x3FE0101020000000
  %2879 = select i1 %2878, float 1.000000e+00, float 0.000000e+00
  %2880 = select i1 %2877, float %2879, float %2873
  %2881 = fmul fast float %2880, %2861
  br label %2882

; <label>:2882                                    ; preds = %2866, %2860
  %2883 = phi float [ %2881, %2866 ], [ %2861, %2860 ]
  %2884 = fcmp fast ult float %2883, 0x3F70101020000000
  br i1 %2884, label %3538, label %2885

; <label>:2885                                    ; preds = %2882
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 16
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %3088, label %2890

; <label>:2890                                    ; preds = %2885
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = add i32 %32, 372
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %2895, 0
  %2897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2897, %dx.types.Handle %77, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = extractvalue %dx.types.ResRet.f32 %2898, 3
  %2903 = and i32 %2892, 255
  %2904 = uitofp i32 %2903 to float
  %2905 = lshr i32 %2892, 8
  %2906 = and i32 %2905, 255
  %2907 = uitofp i32 %2906 to float
  %2908 = fmul fast float %2902, %2904
  %2909 = fadd fast float %2908, %2907
  %2910 = fmul fast float %2909, 0x3F70101000000000
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 512
  %2914 = icmp eq i32 %2913, 0
  br i1 %2914, label %2923, label %2915

; <label>:2915                                    ; preds = %2890
  %2916 = add i32 %32, 452
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = add i32 %2918, 0
  %2920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2920, %dx.types.Handle %78, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  br label %2923

; <label>:2923                                    ; preds = %2915, %2890
  %2924 = phi float [ %2922, %2915 ], [ 1.000000e+00, %2890 ]
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 33554432
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %3035, label %2929

; <label>:2929                                    ; preds = %2923
  %2930 = add i32 %32, 272
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 65535
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = lshr i32 %2932, 16
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = add i32 %32, 276
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 65535
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = lshr i32 %2943, 24
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2945, 0x3F70101020000000
  %2947 = and i32 %2943, 255
  %2948 = uitofp i32 %2947 to float
  %2949 = fmul fast float %2948, 0x3F70101020000000
  %2950 = lshr i32 %2943, 8
  %2951 = and i32 %2950, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = lshr i32 %2943, 16
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = add i32 %32, 268
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = lshr i32 %2960, 24
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = and i32 %2960, 255
  %2965 = uitofp i32 %2964 to float
  %2966 = fmul fast float %2965, 0x3F70101020000000
  %2967 = lshr i32 %2960, 8
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2960, 16
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = bitcast float %2899 to i32
  %2976 = ashr i32 %2975, 1
  %2977 = sub nsw i32 1597463174, %2976
  %2978 = bitcast i32 %2977 to float
  %2979 = fmul fast float %2899, 5.000000e-01
  %2980 = fmul fast float %2978, %2978
  %2981 = fmul fast float %2980, %2979
  %2982 = fsub fast float 1.500000e+00, %2981
  %2983 = fmul fast float %2978, %2899
  %2984 = fmul fast float %2983, %2982
  %2985 = bitcast float %2900 to i32
  %2986 = ashr i32 %2985, 1
  %2987 = sub nsw i32 1597463174, %2986
  %2988 = bitcast i32 %2987 to float
  %2989 = fmul fast float %2900, 5.000000e-01
  %2990 = fmul fast float %2988, %2988
  %2991 = fmul fast float %2990, %2989
  %2992 = fsub fast float 1.500000e+00, %2991
  %2993 = fmul fast float %2988, %2900
  %2994 = fmul fast float %2993, %2992
  %2995 = bitcast float %2901 to i32
  %2996 = ashr i32 %2995, 1
  %2997 = sub nsw i32 1597463174, %2996
  %2998 = bitcast i32 %2997 to float
  %2999 = fmul fast float %2901, 5.000000e-01
  %3000 = fmul fast float %2998, %2998
  %3001 = fmul fast float %3000, %2999
  %3002 = fsub fast float 1.500000e+00, %3001
  %3003 = fmul fast float %2998, %2901
  %3004 = fmul fast float %3003, %3002
  %3005 = fsub fast float %2984, %2966
  %3006 = fsub fast float %2994, %2970
  %3007 = fsub fast float %3004, %2974
  %3008 = fmul fast float %3005, %2934
  %3009 = fmul fast float %3006, %2936
  %3010 = fmul fast float %3007, %2941
  %3011 = fadd fast float %3008, %2949
  %3012 = fadd fast float %3009, %2953
  %3013 = fadd fast float %3010, %2957
  %3014 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3015 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3016 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3017 = fmul fast float %3014, %3014
  %3018 = fmul fast float %3015, %3015
  %3019 = fmul fast float %3016, %3016
  %3020 = fsub fast float %3017, %2899
  %3021 = fsub fast float %3018, %2900
  %3022 = fsub fast float %3019, %2901
  %3023 = fmul fast float %3020, %2924
  %3024 = fmul fast float %3021, %2924
  %3025 = fmul fast float %3022, %2924
  %3026 = fadd fast float %3023, %2899
  %3027 = fadd fast float %3024, %2900
  %3028 = fadd fast float %3025, %2901
  %3029 = fadd fast float %2946, %2910
  %3030 = fsub fast float %3029, %2963
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fsub fast float %3031, %2910
  %3033 = fmul fast float %3032, %2924
  %3034 = fadd fast float %3033, %2910
  br label %3088

; <label>:3035                                    ; preds = %2923
  %3036 = and i32 %2926, 134217728
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3072, label %3038

; <label>:3038                                    ; preds = %3035
  %3039 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %3040 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %3041 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %3042 = fadd fast float %3039, -5.000000e-01
  %3043 = fadd fast float %3040, -5.000000e-01
  %3044 = fadd fast float %3041, -5.000000e-01
  %3045 = fmul fast float %3042, %2924
  %3046 = fmul fast float %3043, %2924
  %3047 = fmul fast float %3044, %2924
  %3048 = fadd fast float %3045, 5.000000e-01
  %3049 = fadd fast float %3046, 5.000000e-01
  %3050 = fadd fast float %3047, 5.000000e-01
  %3051 = call float @dx.op.unary.f32(i32 24, float %2899)  ; Sqrt(value)
  %3052 = call float @dx.op.unary.f32(i32 24, float %2900)  ; Sqrt(value)
  %3053 = call float @dx.op.unary.f32(i32 24, float %2901)  ; Sqrt(value)
  %3054 = fmul fast float %3048, 2.000000e+00
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3055, %3051
  %3057 = fadd fast float %3056, %3054
  %3058 = fmul fast float %3057, %3051
  %3059 = fmul fast float %3049, 2.000000e+00
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %3060, %3052
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, %3052
  %3064 = fmul fast float %3050, 2.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3065, %3053
  %3067 = fadd fast float %3066, %3064
  %3068 = fmul fast float %3067, %3053
  %3069 = fmul fast float %3058, %3058
  %3070 = fmul fast float %3063, %3063
  %3071 = fmul fast float %3068, %3068
  br label %3088

; <label>:3072                                    ; preds = %3035
  %3073 = fmul fast float %354, %354
  %3074 = fmul fast float %358, %358
  %3075 = fmul fast float %362, %362
  %3076 = fadd fast float %3073, -1.000000e+00
  %3077 = fadd fast float %3074, -1.000000e+00
  %3078 = fadd fast float %3075, -1.000000e+00
  %3079 = fmul fast float %2924, %3076
  %3080 = fmul fast float %2924, %3077
  %3081 = fmul fast float %2924, %3078
  %3082 = fadd fast float %3079, 1.000000e+00
  %3083 = fadd fast float %3080, 1.000000e+00
  %3084 = fadd fast float %3081, 1.000000e+00
  %3085 = fmul fast float %3082, %2899
  %3086 = fmul fast float %3083, %2900
  %3087 = fmul fast float %3084, %2901
  br label %3088

; <label>:3088                                    ; preds = %3072, %3038, %2929, %2885
  %3089 = phi float [ %3034, %2929 ], [ %2910, %3038 ], [ %2910, %3072 ], [ 0x3FA23C0BE0000000, %2885 ]
  %3090 = phi float [ %3026, %2929 ], [ %3069, %3038 ], [ %3085, %3072 ], [ 1.000000e+00, %2885 ]
  %3091 = phi float [ %3027, %2929 ], [ %3070, %3038 ], [ %3086, %3072 ], [ 1.000000e+00, %2885 ]
  %3092 = phi float [ %3028, %2929 ], [ %3071, %3038 ], [ %3087, %3072 ], [ 1.000000e+00, %2885 ]
  %3093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.i32 %3093, 1
  %3095 = and i32 %3094, 1
  %3096 = icmp ne i32 %3095, 0
  %3097 = add i32 %32, 356
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 32
  %3101 = icmp ne i32 %3100, 0
  %3102 = and i1 %3096, %3101
  %3103 = select i1 %3102, float 1.000000e+00, float %3090
  %3104 = select i1 %3102, float 0x3FD3333340000000, float %3091
  %3105 = select i1 %3102, float 0x3FD3333340000000, float %3092
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = and i32 %3107, 32
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3182, label %3110

; <label>:3110                                    ; preds = %3088
  %3111 = add i32 %32, 140
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = add i32 %32, 388
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = add i32 %3116, 0
  %3118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3118, %dx.types.Handle %77, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3120 = extractvalue %dx.types.ResRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.ResRet.f32 %3119, 1
  %3122 = extractvalue %dx.types.ResRet.f32 %3119, 2
  %3123 = extractvalue %dx.types.ResRet.f32 %3119, 3
  %3124 = and i32 %3113, 255
  %3125 = uitofp i32 %3124 to float
  %3126 = lshr i32 %3113, 8
  %3127 = and i32 %3126, 255
  %3128 = uitofp i32 %3127 to float
  %3129 = lshr i32 %3113, 16
  %3130 = and i32 %3129, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = fmul fast float %3131, 0x3F70101000000000
  %3133 = fmul fast float %3120, %3125
  %3134 = fadd fast float %3133, %3128
  %3135 = fmul fast float %3134, 0x3F70101000000000
  %3136 = fadd fast float %3121, -5.000000e-01
  %3137 = fadd fast float %3123, -5.000000e-01
  %3138 = fmul fast float %3136, %3132
  %3139 = fmul fast float %3137, %3132
  %3140 = fadd fast float %3138, 5.000000e-01
  %3141 = fadd fast float %3139, 5.000000e-01
  %3142 = fmul fast float %3140, 2.000000e+00
  %3143 = fadd fast float %3142, -1.000000e+00
  %3144 = fmul fast float %3141, 2.000000e+00
  %3145 = fadd fast float %3144, -1.000000e+00
  %3146 = fadd fast float %3143, %3145
  %3147 = fmul fast float %3146, 5.000000e-01
  %3148 = fsub fast float %3143, %3145
  %3149 = fmul fast float %3148, 5.000000e-01
  %3150 = call float @dx.op.unary.f32(i32 6, float %3147)  ; FAbs(value)
  %3151 = fsub fast float 1.000000e+00, %3150
  %3152 = call float @dx.op.unary.f32(i32 6, float %3149)  ; FAbs(value)
  %3153 = fsub fast float %3151, %3152
  %3154 = call float @dx.op.dot3.f32(i32 55, float %3147, float %3149, float %3153, float %3147, float %3149, float %3153)  ; Dot3(ax,ay,az,bx,by,bz)
  %3155 = call float @dx.op.unary.f32(i32 25, float %3154)  ; Rsqrt(value)
  %3156 = fmul fast float %3147, %3155
  %3157 = fmul fast float %3149, %3155
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 67108864
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3178, label %3162

; <label>:3162                                    ; preds = %3110
  %3163 = add i32 %32, 328
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 65535
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = lshr i32 %3165, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = fsub fast float %3135, %3173
  %3175 = fmul fast float %3174, %3167
  %3176 = fadd fast float %3175, %3171
  %3177 = call float @dx.op.unary.f32(i32 7, float %3176)  ; Saturate(value)
  br label %3178

; <label>:3178                                    ; preds = %3162, %3110
  %3179 = phi float [ %3177, %3162 ], [ %3135, %3110 ]
  %3180 = call float @dx.op.dot2.f32(i32 54, float %3156, float %3157, float %2714, float %2715)  ; Dot2(ax,ay,bx,by)
  %3181 = call float @dx.op.dot2.f32(i32 54, float %3156, float %3157, float %2716, float %2717)  ; Dot2(ax,ay,bx,by)
  br label %3182

; <label>:3182                                    ; preds = %3178, %3088
  %3183 = phi float [ %3179, %3178 ], [ 0x3FD6666660000000, %3088 ]
  %3184 = phi float [ %3180, %3178 ], [ 0.000000e+00, %3088 ]
  %3185 = phi float [ %3181, %3178 ], [ 0.000000e+00, %3088 ]
  %3186 = phi float [ %3122, %3178 ], [ 1.000000e+00, %3088 ]
  %3187 = add i32 %32, 208
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = lshr i32 %3189, 22
  %3191 = shl nuw nsw i32 %3190, 5
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, 64
  %3196 = icmp eq i32 %3195, 0
  br i1 %3196, label %3230, label %3197

; <label>:3197                                    ; preds = %3182
  %3198 = add i32 %32, 404
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = add i32 %3200, 0
  %3202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 131072
  %3206 = icmp eq i32 %3205, 0
  %3207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3202, %dx.types.Handle %77, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3208 = extractvalue %dx.types.ResRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.ResRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.ResRet.f32 %3207, 2
  %3211 = fmul fast float %3208, %342
  %3212 = fmul fast float %3209, %345
  %3213 = fmul fast float %3210, %348
  br i1 %3206, label %3220, label %3214

; <label>:3214                                    ; preds = %3197
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = fmul fast float %3216, %3211
  %3218 = fmul fast float %3216, %3212
  %3219 = fmul fast float %3216, %3213
  br label %3220

; <label>:3220                                    ; preds = %3214, %3197
  %3221 = phi float [ %3217, %3214 ], [ %3211, %3197 ]
  %3222 = phi float [ %3218, %3214 ], [ %3212, %3197 ]
  %3223 = phi float [ %3219, %3214 ], [ %3213, %3197 ]
  %3224 = fmul fast float %3221, %3192
  %3225 = select i1 %199, float %3224, float %3221
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3225, float %3222, float %3223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = select i1 %199, float 0.000000e+00, float %3221
  %3228 = select i1 %199, float %3226, float %3222
  %3229 = select i1 %199, float 0.000000e+00, float %3223
  br label %3230

; <label>:3230                                    ; preds = %3220, %3182
  %3231 = phi float [ %3227, %3220 ], [ 0.000000e+00, %3182 ]
  %3232 = phi float [ %3228, %3220 ], [ 0.000000e+00, %3182 ]
  %3233 = phi float [ %3229, %3220 ], [ 0.000000e+00, %3182 ]
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 26624
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %3295, label %3238

; <label>:3238                                    ; preds = %3230
  %3239 = add i32 %32, 468
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = add i32 %3241, 0
  %3243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3243, %dx.types.Handle %78, float %2810, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 3
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 1048576
  %3251 = icmp ne i32 %3250, 0
  %3252 = and i32 %3249, 8192
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3268, label %3254

; <label>:3254                                    ; preds = %3238
  %3255 = extractvalue %dx.types.ResRet.f32 %3244, 2
  %3256 = select i1 %3251, float %3255, float %3246
  %3257 = select i1 %3251, float %3245, float %3246
  %3258 = add i32 %32, 144
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = lshr i32 %3260, 16
  %3262 = and i32 %3261, 255
  %3263 = uitofp i32 %3262 to float
  %3264 = fmul fast float %3263, 0x3F80101020000000
  %3265 = fmul fast float %3264, %3257
  %3266 = fmul fast float %3264, %3246
  %3267 = fmul fast float %3264, %3256
  br label %3268

; <label>:3268                                    ; preds = %3254, %3238
  %3269 = phi float [ %3265, %3254 ], [ 0.000000e+00, %3238 ]
  %3270 = phi float [ %3266, %3254 ], [ 0.000000e+00, %3238 ]
  %3271 = phi float [ %3267, %3254 ], [ 0.000000e+00, %3238 ]
  %3272 = and i32 %3249, 2048
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %3282, label %3274

; <label>:3274                                    ; preds = %3268
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = shl i32 %3276, 4
  %3278 = and i32 %3277, 32752
  %3279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3278)  ; LegacyF16ToF32(value)
  %3280 = fmul fast float %3279, %3247
  %3281 = call float @dx.op.binary.f32(i32 35, float %3280, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3282

; <label>:3282                                    ; preds = %3274, %3268
  %3283 = phi float [ %3281, %3274 ], [ 0x3F70101020000000, %3268 ]
  %3284 = and i32 %3249, 16384
  %3285 = icmp eq i32 %3284, 0
  br i1 %3285, label %3295, label %3286

; <label>:3286                                    ; preds = %3282
  %3287 = add i32 %32, 144
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = lshr i32 %3289, 24
  %3291 = uitofp i32 %3290 to float
  %3292 = fmul fast float %3245, 0x3F70101020000000
  %3293 = select i1 %3251, float 0x3F70101020000000, float %3292
  %3294 = fmul fast float %3293, %3291
  br label %3295

; <label>:3295                                    ; preds = %3286, %3282, %3230
  %3296 = phi float [ %3269, %3286 ], [ %3269, %3282 ], [ 0.000000e+00, %3230 ]
  %3297 = phi float [ %3270, %3286 ], [ %3270, %3282 ], [ 0.000000e+00, %3230 ]
  %3298 = phi float [ %3271, %3286 ], [ %3271, %3282 ], [ 0.000000e+00, %3230 ]
  %3299 = phi float [ %3283, %3286 ], [ %3283, %3282 ], [ 0x3F70101020000000, %3230 ]
  %3300 = phi float [ %3294, %3286 ], [ 0.000000e+00, %3282 ], [ 0.000000e+00, %3230 ]
  %3301 = add i32 %32, 144
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 255
  %3305 = uitofp i32 %3304 to float
  %3306 = lshr i32 %3303, 8
  %3307 = and i32 %3306, 255
  %3308 = uitofp i32 %3307 to float
  %3309 = call float @dx.op.dot3.f32(i32 55, float %3103, float %3104, float %3105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3310 = fmul fast float %3308, %3309
  %3311 = fadd fast float %3310, %3305
  %3312 = fmul fast float %3311, 0x3F70101020000000
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  br i1 %2702, label %3314, label %3322

; <label>:3314                                    ; preds = %3295
  %3315 = fsub fast float 1.000000e+00, %2883
  %3316 = fmul fast float %3315, %2686
  %3317 = fmul fast float %3315, %2687
  %3318 = fmul fast float %3315, %2688
  %3319 = fmul fast float %3315, %2692
  %3320 = fmul fast float %3315, %2693
  %3321 = fmul fast float %3315, %2694
  br label %3322

; <label>:3322                                    ; preds = %3314, %3295
  %3323 = phi float [ %3316, %3314 ], [ %2686, %3295 ]
  %3324 = phi float [ %3317, %3314 ], [ %2687, %3295 ]
  %3325 = phi float [ %3318, %3314 ], [ %2688, %3295 ]
  %3326 = phi float [ %3319, %3314 ], [ %2692, %3295 ]
  %3327 = phi float [ %3320, %3314 ], [ %2693, %3295 ]
  %3328 = phi float [ %3321, %3314 ], [ %2694, %3295 ]
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = and i32 %3330, 3
  %3332 = icmp eq i32 %3331, 3
  br i1 %3332, label %3411, label %3333

; <label>:3333                                    ; preds = %3322
  %3334 = and i32 %3330, 16
  %3335 = icmp ne i32 %3334, 0
  %3336 = select i1 %3335, float %2883, float 0.000000e+00
  %3337 = icmp eq i32 %3331, 0
  br i1 %3337, label %3338, label %3366

; <label>:3338                                    ; preds = %3333
  %3339 = and i32 %3330, 64
  %3340 = icmp ne i32 %3339, 0
  %3341 = select i1 %3340, float %2883, float 0.000000e+00
  %3342 = fsub fast float %3103, %3323
  %3343 = fsub fast float %3104, %3324
  %3344 = fsub fast float %3105, %3325
  %3345 = fmul fast float %3336, %3342
  %3346 = fmul fast float %3336, %3343
  %3347 = fmul fast float %3336, %3344
  %3348 = fadd fast float %3345, %3323
  %3349 = fadd fast float %3346, %3324
  %3350 = fadd fast float %3347, %3325
  %3351 = fsub fast float %3089, %2695
  %3352 = fmul fast float %3336, %3351
  %3353 = fadd fast float %3352, %2695
  %3354 = fsub fast float %3231, %3326
  %3355 = fsub fast float %3232, %3327
  %3356 = fsub fast float %3233, %3328
  %3357 = fmul fast float %3341, %3354
  %3358 = fmul fast float %3341, %3355
  %3359 = fmul fast float %3341, %3356
  %3360 = fadd fast float %3357, %3326
  %3361 = fadd fast float %3358, %3327
  %3362 = fadd fast float %3359, %3328
  %3363 = fsub fast float %3313, %2700
  %3364 = fmul fast float %3336, %3363
  %3365 = fadd fast float %3364, %2700
  br label %3411

; <label>:3366                                    ; preds = %3333
  %3367 = icmp eq i32 %3331, 1
  br i1 %3367, label %3368, label %3381

; <label>:3368                                    ; preds = %3366
  %3369 = fadd fast float %3103, -1.000000e+00
  %3370 = fadd fast float %3104, -1.000000e+00
  %3371 = fadd fast float %3105, -1.000000e+00
  %3372 = fmul fast float %3336, %3369
  %3373 = fmul fast float %3336, %3370
  %3374 = fmul fast float %3336, %3371
  %3375 = fadd fast float %3372, 1.000000e+00
  %3376 = fadd fast float %3373, 1.000000e+00
  %3377 = fadd fast float %3374, 1.000000e+00
  %3378 = fmul fast float %3375, %3323
  %3379 = fmul fast float %3376, %3324
  %3380 = fmul fast float %3377, %3325
  br label %3411

; <label>:3381                                    ; preds = %3366
  %3382 = icmp eq i32 %3331, 2
  br i1 %3382, label %3383, label %3411

; <label>:3383                                    ; preds = %3381
  %3384 = call float @dx.op.unary.f32(i32 24, float %3103)  ; Sqrt(value)
  %3385 = call float @dx.op.unary.f32(i32 24, float %3104)  ; Sqrt(value)
  %3386 = call float @dx.op.unary.f32(i32 24, float %3105)  ; Sqrt(value)
  %3387 = fadd fast float %3384, -5.000000e-01
  %3388 = fadd fast float %3385, -5.000000e-01
  %3389 = fadd fast float %3386, -5.000000e-01
  %3390 = fmul fast float %3387, %3336
  %3391 = fmul fast float %3388, %3336
  %3392 = fmul fast float %3389, %3336
  %3393 = fadd fast float %3390, 5.000000e-01
  %3394 = fadd fast float %3391, 5.000000e-01
  %3395 = fadd fast float %3392, 5.000000e-01
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fsub fast float 1.000000e+00, %3396
  %3398 = fmul fast float %3397, %3323
  %3399 = fadd fast float %3398, %3396
  %3400 = fmul fast float %3399, %3323
  %3401 = fmul fast float %3394, 2.000000e+00
  %3402 = fsub fast float 1.000000e+00, %3401
  %3403 = fmul fast float %3402, %3324
  %3404 = fadd fast float %3403, %3401
  %3405 = fmul fast float %3404, %3324
  %3406 = fmul fast float %3395, 2.000000e+00
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = fmul fast float %3407, %3325
  %3409 = fadd fast float %3408, %3406
  %3410 = fmul fast float %3409, %3325
  br label %3411

; <label>:3411                                    ; preds = %3383, %3381, %3368, %3338, %3322
  %3412 = phi float [ %3323, %3322 ], [ %3400, %3383 ], [ %3323, %3381 ], [ %3378, %3368 ], [ %3348, %3338 ]
  %3413 = phi float [ %3324, %3322 ], [ %3405, %3383 ], [ %3324, %3381 ], [ %3379, %3368 ], [ %3349, %3338 ]
  %3414 = phi float [ %3325, %3322 ], [ %3410, %3383 ], [ %3325, %3381 ], [ %3380, %3368 ], [ %3350, %3338 ]
  %3415 = phi float [ %3326, %3322 ], [ %3326, %3383 ], [ %3326, %3381 ], [ %3326, %3368 ], [ %3360, %3338 ]
  %3416 = phi float [ %3327, %3322 ], [ %3327, %3383 ], [ %3327, %3381 ], [ %3327, %3368 ], [ %3361, %3338 ]
  %3417 = phi float [ %3328, %3322 ], [ %3328, %3383 ], [ %3328, %3381 ], [ %3328, %3368 ], [ %3362, %3338 ]
  %3418 = phi float [ %2695, %3322 ], [ %2695, %3383 ], [ %2695, %3381 ], [ %2695, %3368 ], [ %3353, %3338 ]
  %3419 = phi float [ %2700, %3322 ], [ %2700, %3383 ], [ %2700, %3381 ], [ %2700, %3368 ], [ %3365, %3338 ]
  %3420 = and i32 %3330, 12
  %3421 = icmp eq i32 %3420, 12
  br i1 %3421, label %3538, label %3422

; <label>:3422                                    ; preds = %3411
  %3423 = and i32 %3330, 2097184
  %3424 = icmp eq i32 %3423, 2097184
  %3425 = select i1 %3424, float %2883, float 0.000000e+00
  %3426 = and i32 %3330, 4194336
  %3427 = icmp eq i32 %3426, 4194336
  %3428 = select i1 %3427, float %2883, float 0.000000e+00
  %3429 = and i32 %3330, 8388640
  %3430 = icmp eq i32 %3429, 8388640
  %3431 = select i1 %3430, float %2883, float 0.000000e+00
  %3432 = and i32 %3330, 2048
  %3433 = icmp ne i32 %3432, 0
  %3434 = select i1 %3433, float %2883, float 0.000000e+00
  %3435 = and i32 %3330, 8192
  %3436 = icmp ne i32 %3435, 0
  %3437 = select i1 %3436, float %2883, float 0.000000e+00
  %3438 = and i32 %3330, 16384
  %3439 = icmp ne i32 %3438, 0
  %3440 = select i1 %3439, float %2883, float 0.000000e+00
  %3441 = icmp eq i32 %3420, 0
  br i1 %3441, label %3442, label %3470

; <label>:3442                                    ; preds = %3422
  %3443 = fsub fast float %3184, %2684
  %3444 = fsub fast float %3185, %2685
  %3445 = fmul fast float %3425, %3443
  %3446 = fmul fast float %3425, %3444
  %3447 = fadd fast float %3445, %2684
  %3448 = fadd fast float %3446, %2685
  %3449 = fsub fast float %3186, %2697
  %3450 = fmul fast float %3428, %3449
  %3451 = fadd fast float %3450, %2697
  %3452 = fsub fast float %3183, %2696
  %3453 = fmul fast float %3431, %3452
  %3454 = fadd fast float %3453, %2696
  %3455 = fsub fast float %3299, %2698
  %3456 = fmul fast float %3434, %3455
  %3457 = fadd fast float %3456, %2698
  %3458 = fsub fast float %3296, %2689
  %3459 = fsub fast float %3297, %2690
  %3460 = fsub fast float %3298, %2691
  %3461 = fmul fast float %3437, %3458
  %3462 = fmul fast float %3437, %3459
  %3463 = fmul fast float %3437, %3460
  %3464 = fadd fast float %3461, %2689
  %3465 = fadd fast float %3462, %2690
  %3466 = fadd fast float %3463, %2691
  %3467 = fsub fast float %3300, %2699
  %3468 = fmul fast float %3440, %3467
  %3469 = fadd fast float %3468, %2699
  br label %3538

; <label>:3470                                    ; preds = %3422
  %3471 = icmp eq i32 %3420, 4
  br i1 %3471, label %3472, label %3514

; <label>:3472                                    ; preds = %3470
  %3473 = fmul fast float %3425, %3184
  %3474 = fmul fast float %3425, %3185
  %3475 = fadd fast float %3473, %2684
  %3476 = fadd fast float %3474, %2685
  %3477 = call float @dx.op.binary.f32(i32 36, float %2697, float %3186)  ; FMin(a,b)
  %3478 = fsub fast float %3477, %2697
  %3479 = fmul fast float %3478, %3428
  %3480 = fadd fast float %3479, %2697
  %3481 = fadd fast float %3183, %2696
  %3482 = fmul fast float %3481, 0x3FF337FAE0000000
  %3483 = fmul fast float %2696, %2696
  %3484 = fmul fast float %3183, %3183
  %3485 = fadd fast float %3484, %3483
  %3486 = fmul fast float %3485, 0x3FE5152B00000000
  %3487 = fmul fast float %2696, 0xBFCC1F85E0000000
  %3488 = fmul fast float %3487, %3183
  %3489 = fadd fast float %3488, 0xBFE1363700000000
  %3490 = fadd fast float %3489, %3482
  %3491 = fsub fast float %3490, %3486
  %3492 = fmul fast float %3481, 0x3FBA6F0D00000000
  %3493 = fmul fast float %3485, 0x3FD0432880000000
  %3494 = fmul fast float %2696, 0xBFEF110800000000
  %3495 = fmul fast float %3494, %3183
  %3496 = fadd fast float %3495, 1.000000e+00
  %3497 = fsub fast float %3496, %3492
  %3498 = fadd fast float %3497, %3493
  %3499 = fdiv fast float %3491, %3498
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = fsub fast float %3500, %2696
  %3502 = fmul fast float %3501, %3431
  %3503 = fadd fast float %3502, %2696
  %3504 = fmul fast float %3434, %3299
  %3505 = fadd fast float %3504, %2698
  %3506 = fmul fast float %3437, %3296
  %3507 = fmul fast float %3437, %3297
  %3508 = fmul fast float %3437, %3298
  %3509 = fadd fast float %3506, %2689
  %3510 = fadd fast float %3507, %2690
  %3511 = fadd fast float %3508, %2691
  %3512 = fmul fast float %3440, %3300
  %3513 = fadd fast float %3512, %2699
  br label %3538

; <label>:3514                                    ; preds = %3470
  %3515 = icmp eq i32 %3420, 8
  br i1 %3515, label %3516, label %3538

; <label>:3516                                    ; preds = %3514
  %3517 = fmul fast float %3425, %3184
  %3518 = fmul fast float %3425, %3185
  %3519 = fadd fast float %3517, %2684
  %3520 = fadd fast float %3518, %2685
  %3521 = call float @dx.op.binary.f32(i32 36, float %2697, float %3186)  ; FMin(a,b)
  %3522 = fsub fast float %3521, %2697
  %3523 = fmul fast float %3522, %3428
  %3524 = fadd fast float %3523, %2697
  %3525 = fsub fast float %3183, %2696
  %3526 = fmul fast float %3431, %3525
  %3527 = fadd fast float %3526, %2696
  %3528 = fmul fast float %3434, %3299
  %3529 = fadd fast float %3528, %2698
  %3530 = fmul fast float %3437, %3296
  %3531 = fmul fast float %3437, %3297
  %3532 = fmul fast float %3437, %3298
  %3533 = fadd fast float %3530, %2689
  %3534 = fadd fast float %3531, %2690
  %3535 = fadd fast float %3532, %2691
  %3536 = fmul fast float %3440, %3300
  %3537 = fadd fast float %3536, %2699
  br label %3538

; <label>:3538                                    ; preds = %3516, %3514, %3472, %3442, %3411, %2882, %2701, %2683
  %3539 = phi float [ %2684, %3411 ], [ %2684, %2882 ], [ %2684, %2683 ], [ %2684, %2701 ], [ %3447, %3442 ], [ %3475, %3472 ], [ %2684, %3514 ], [ %3519, %3516 ]
  %3540 = phi float [ %2685, %3411 ], [ %2685, %2882 ], [ %2685, %2683 ], [ %2685, %2701 ], [ %3448, %3442 ], [ %3476, %3472 ], [ %2685, %3514 ], [ %3520, %3516 ]
  %3541 = phi float [ %3412, %3411 ], [ %2686, %2882 ], [ %2686, %2683 ], [ %2686, %2701 ], [ %3412, %3442 ], [ %3412, %3472 ], [ %3412, %3514 ], [ %3412, %3516 ]
  %3542 = phi float [ %3413, %3411 ], [ %2687, %2882 ], [ %2687, %2683 ], [ %2687, %2701 ], [ %3413, %3442 ], [ %3413, %3472 ], [ %3413, %3514 ], [ %3413, %3516 ]
  %3543 = phi float [ %3414, %3411 ], [ %2688, %2882 ], [ %2688, %2683 ], [ %2688, %2701 ], [ %3414, %3442 ], [ %3414, %3472 ], [ %3414, %3514 ], [ %3414, %3516 ]
  %3544 = phi float [ %2689, %3411 ], [ %2689, %2882 ], [ %2689, %2683 ], [ %2689, %2701 ], [ %3464, %3442 ], [ %3509, %3472 ], [ %2689, %3514 ], [ %3533, %3516 ]
  %3545 = phi float [ %2690, %3411 ], [ %2690, %2882 ], [ %2690, %2683 ], [ %2690, %2701 ], [ %3465, %3442 ], [ %3510, %3472 ], [ %2690, %3514 ], [ %3534, %3516 ]
  %3546 = phi float [ %2691, %3411 ], [ %2691, %2882 ], [ %2691, %2683 ], [ %2691, %2701 ], [ %3466, %3442 ], [ %3511, %3472 ], [ %2691, %3514 ], [ %3535, %3516 ]
  %3547 = phi float [ %3415, %3411 ], [ %2692, %2882 ], [ %2692, %2683 ], [ %2692, %2701 ], [ %3415, %3442 ], [ %3415, %3472 ], [ %3415, %3514 ], [ %3415, %3516 ]
  %3548 = phi float [ %3416, %3411 ], [ %2693, %2882 ], [ %2693, %2683 ], [ %2693, %2701 ], [ %3416, %3442 ], [ %3416, %3472 ], [ %3416, %3514 ], [ %3416, %3516 ]
  %3549 = phi float [ %3417, %3411 ], [ %2694, %2882 ], [ %2694, %2683 ], [ %2694, %2701 ], [ %3417, %3442 ], [ %3417, %3472 ], [ %3417, %3514 ], [ %3417, %3516 ]
  %3550 = phi float [ %3418, %3411 ], [ %2695, %2882 ], [ %2695, %2683 ], [ %2695, %2701 ], [ %3418, %3442 ], [ %3418, %3472 ], [ %3418, %3514 ], [ %3418, %3516 ]
  %3551 = phi float [ %2696, %3411 ], [ %2696, %2882 ], [ %2696, %2683 ], [ %2696, %2701 ], [ %3454, %3442 ], [ %3503, %3472 ], [ %2696, %3514 ], [ %3527, %3516 ]
  %3552 = phi float [ %2697, %3411 ], [ %2697, %2882 ], [ %2697, %2683 ], [ %2697, %2701 ], [ %3451, %3442 ], [ %3480, %3472 ], [ %2697, %3514 ], [ %3524, %3516 ]
  %3553 = phi float [ %2698, %3411 ], [ %2698, %2882 ], [ %2698, %2683 ], [ %2698, %2701 ], [ %3457, %3442 ], [ %3505, %3472 ], [ %2698, %3514 ], [ %3529, %3516 ]
  %3554 = phi float [ %2699, %3411 ], [ %2699, %2882 ], [ %2699, %2683 ], [ %2699, %2701 ], [ %3469, %3442 ], [ %3513, %3472 ], [ %2699, %3514 ], [ %3537, %3516 ]
  %3555 = phi float [ %3419, %3411 ], [ %2700, %2882 ], [ %2700, %2683 ], [ %2700, %2701 ], [ %3419, %3442 ], [ %3419, %3472 ], [ %3419, %3514 ], [ %3419, %3516 ]
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = call float @dx.op.dot2.f32(i32 54, float %3539, float %3540, float %3539, float %3540)  ; Dot2(ax,ay,bx,by)
  %3559 = fmul fast float %3558, 0x3FE3333340000000
  %3560 = fsub fast float 1.000000e+00, %3559
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3560, float %3539, float %3540, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = call float @dx.op.unary.f32(i32 25, float %3561)  ; Rsqrt(value)
  %3563 = fmul fast float %3562, %3539
  %3564 = fmul fast float %3562, %3540
  %3565 = fmul fast float %3560, %3562
  %3566 = fmul fast float %3565, %88
  %3567 = fmul fast float %3565, %89
  %3568 = fmul fast float %3565, %90
  %3569 = fmul fast float %3563, %62
  %3570 = fmul fast float %3563, %63
  %3571 = fmul fast float %3563, %64
  %3572 = fadd fast float %3566, %3569
  %3573 = fadd fast float %3567, %3570
  %3574 = fadd fast float %3568, %3571
  %3575 = fmul fast float %100, %3564
  %3576 = fmul fast float %101, %3564
  %3577 = fmul fast float %102, %3564
  %3578 = fadd fast float %3572, %3575
  %3579 = fadd fast float %3573, %3576
  %3580 = fadd fast float %3574, %3577
  %3581 = call float @dx.op.dot3.f32(i32 55, float %3578, float %3579, float %3580, float %3578, float %3579, float %3580)  ; Dot3(ax,ay,az,bx,by,bz)
  %3582 = call float @dx.op.unary.f32(i32 25, float %3581)  ; Rsqrt(value)
  %3583 = fmul fast float %3578, %3582
  %3584 = fmul fast float %3579, %3582
  %3585 = fmul fast float %3580, %3582
  %3586 = icmp eq i32 %33, 65535
  br i1 %3586, label %4154, label %3587

; <label>:3587                                    ; preds = %3538
  %3588 = call float @dx.op.unary.f32(i32 83, float %34)  ; DerivCoarseX(value)
  %3589 = call float @dx.op.unary.f32(i32 83, float %35)  ; DerivCoarseX(value)
  %3590 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3591 = call float @dx.op.unary.f32(i32 84, float %34)  ; DerivCoarseY(value)
  %3592 = call float @dx.op.unary.f32(i32 84, float %35)  ; DerivCoarseY(value)
  %3593 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3594 = fadd fast float %3588, %34
  %3595 = fadd fast float %3589, %35
  %3596 = fadd fast float %3590, %36
  %3597 = fadd fast float %3591, %34
  %3598 = fadd fast float %3592, %35
  %3599 = fadd fast float %3593, %36
  %3600 = mul i32 %33, 48
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = add i32 %3600, 16
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = add i32 %3600, 32
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = bitcast float %3615 to i32
  %3617 = fmul fast float %3602, %34
  %3618 = fmul fast float %3603, %35
  %3619 = fmul fast float %3604, %36
  %3620 = fsub fast float %3617, %3607
  %3621 = fsub fast float %3618, %3608
  %3622 = fsub fast float %3619, %3609
  %3623 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3624 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3625 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3626 = fmul fast float %3623, %3612
  %3627 = fmul fast float %3624, %3613
  %3628 = fmul fast float %3625, %3614
  %3629 = fadd fast float %3612, -1.000000e+00
  %3630 = fadd fast float %3613, -1.000000e+00
  %3631 = fadd fast float %3614, -1.000000e+00
  %3632 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3633 = call float @dx.op.unary.f32(i32 27, float %3627)  ; Round_ni(value)
  %3634 = call float @dx.op.unary.f32(i32 27, float %3628)  ; Round_ni(value)
  %3635 = call float @dx.op.binary.f32(i32 36, float %3632, float %3629)  ; FMin(a,b)
  %3636 = call float @dx.op.binary.f32(i32 36, float %3633, float %3630)  ; FMin(a,b)
  %3637 = call float @dx.op.binary.f32(i32 36, float %3634, float %3631)  ; FMin(a,b)
  %3638 = fmul fast float %3637, %3613
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, %3612
  %3641 = fadd fast float %3640, %3635
  %3642 = fptosi float %3641 to i32
  %3643 = add nsw i32 %3642, %3616
  %3644 = shl nsw i32 %3643, 2
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = lshr i32 %3646, 16
  %3648 = icmp eq i32 %3647, 0
  br i1 %3648, label %4120, label %3649

; <label>:3649                                    ; preds = %3587
  br label %3650

; <label>:3650                                    ; preds = %3774, %3649
  %3651 = phi i32 [ %3676, %3774 ], [ %3647, %3649 ]
  %3652 = phi float [ %3775, %3774 ], [ 0.000000e+00, %3649 ]
  %3653 = phi float [ %3776, %3774 ], [ %3557, %3649 ]
  %3654 = phi float [ %3777, %3774 ], [ %3555, %3649 ]
  %3655 = phi float [ %3778, %3774 ], [ %3554, %3649 ]
  %3656 = phi float [ %3779, %3774 ], [ 0.000000e+00, %3649 ]
  %3657 = phi float [ %3780, %3774 ], [ %3544, %3649 ]
  %3658 = phi float [ %3781, %3774 ], [ %3545, %3649 ]
  %3659 = phi float [ %3782, %3774 ], [ %3546, %3649 ]
  %3660 = phi float [ %3783, %3774 ], [ %3547, %3649 ]
  %3661 = phi float [ %3784, %3774 ], [ %3548, %3649 ]
  %3662 = phi float [ %3785, %3774 ], [ %3549, %3649 ]
  %3663 = phi float [ %3786, %3774 ], [ %3583, %3649 ]
  %3664 = phi float [ %3787, %3774 ], [ %3584, %3649 ]
  %3665 = phi float [ %3788, %3774 ], [ %3585, %3649 ]
  %3666 = phi float [ %3789, %3774 ], [ %3552, %3649 ]
  %3667 = phi float [ %3790, %3774 ], [ %3551, %3649 ]
  %3668 = phi float [ %3791, %3774 ], [ 0.000000e+00, %3649 ]
  %3669 = phi float [ %3792, %3774 ], [ %3550, %3649 ]
  %3670 = phi float [ %3793, %3774 ], [ %3541, %3649 ]
  %3671 = phi float [ %3794, %3774 ], [ %3542, %3649 ]
  %3672 = phi float [ %3795, %3774 ], [ %3543, %3649 ]
  %3673 = shl nuw nsw i32 %3651, 2
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = lshr i32 %3675, 16
  %3677 = shl i32 %3675, 8
  %3678 = and i32 %3677, 16776960
  %3679 = or i32 %3678, 48
  %3680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = or i32 %3678, 64
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.i32 %3685, 1
  %3688 = or i32 %3678, 80
  %3689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 3
  %3692 = or i32 %3678, 96
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3693, 3
  %3698 = or i32 %3678, 112
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3701 = or i32 %3678, 128
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.ResRet.f32 %3702, 3
  %3707 = or i32 %3678, 144
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = or i32 %3678, 160
  %3714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = extractvalue %dx.types.ResRet.f32 %3714, 3
  %3719 = or i32 %3678, 192
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = or i32 %3678, 208
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = or i32 %3678, 248
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3732 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3733 = extractvalue %dx.types.ResRet.f32 %3729, 3
  %3734 = call float @dx.op.dot4.f32(i32 56, float %3730, float %3731, float %3732, float %3733, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3735 = or i32 %3678, 16
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = call float @dx.op.dot4.f32(i32 56, float %3737, float %3738, float %3739, float %3740, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3742 = or i32 %3678, 32
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = extractvalue %dx.types.ResRet.f32 %3743, 3
  %3748 = call float @dx.op.dot4.f32(i32 56, float %3744, float %3745, float %3746, float %3747, float %34, float %35, float %36, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3749 = call float @dx.op.unary.f32(i32 27, float %3734)  ; Round_ni(value)
  %3750 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3751 = call float @dx.op.unary.f32(i32 27, float %3741)  ; Round_ni(value)
  %3752 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3753 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3754 = call float @dx.op.unary.f32(i32 27, float %3753)  ; Round_ni(value)
  %3755 = fadd fast float %3752, %3750
  %3756 = fadd fast float %3755, %3754
  %3757 = fcmp fast oeq float %3756, 0.000000e+00
  %3758 = call float @dx.op.dot4.f32(i32 56, float %3730, float %3731, float %3732, float %3733, float %3594, float %3595, float %3596, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3759 = call float @dx.op.dot4.f32(i32 56, float %3737, float %3738, float %3739, float %3740, float %3594, float %3595, float %3596, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3760 = call float @dx.op.dot4.f32(i32 56, float %3730, float %3731, float %3732, float %3733, float %3597, float %3598, float %3599, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3761 = call float @dx.op.dot4.f32(i32 56, float %3737, float %3738, float %3739, float %3740, float %3597, float %3598, float %3599, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3762 = fsub fast float %3758, %3734
  %3763 = fsub fast float %3760, %3734
  %3764 = fsub fast float %3759, %3741
  %3765 = fsub fast float %3761, %3741
  %3766 = call float @dx.op.dot3.f32(i32 55, float %3681, float %3682, float %3683, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3769 = fadd fast float %3768, %3766
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3772 = fcmp fast ogt float %3770, %3771
  %3773 = and i1 %3757, %3772
  br i1 %3773, label %3797, label %3774

; <label>:3774                                    ; preds = %4106, %3880, %3797, %3650
  %3775 = phi float [ %3652, %3797 ], [ %3883, %3880 ], [ %3883, %4106 ], [ %3652, %3650 ]
  %3776 = phi float [ %3653, %3797 ], [ %3653, %3880 ], [ %4082, %4106 ], [ %3653, %3650 ]
  %3777 = phi float [ %3654, %3797 ], [ %3654, %3880 ], [ %4080, %4106 ], [ %3654, %3650 ]
  %3778 = phi float [ %3655, %3797 ], [ %3655, %3880 ], [ %4007, %4106 ], [ %3655, %3650 ]
  %3779 = phi float [ %3656, %3797 ], [ %3656, %3880 ], [ %4005, %4106 ], [ %3656, %3650 ]
  %3780 = phi float [ %3657, %3797 ], [ %3657, %3880 ], [ %4050, %4106 ], [ %3657, %3650 ]
  %3781 = phi float [ %3658, %3797 ], [ %3658, %3880 ], [ %4051, %4106 ], [ %3658, %3650 ]
  %3782 = phi float [ %3659, %3797 ], [ %3659, %3880 ], [ %4052, %4106 ], [ %3659, %3650 ]
  %3783 = phi float [ %3660, %3797 ], [ %3660, %3880 ], [ %4116, %4106 ], [ %3660, %3650 ]
  %3784 = phi float [ %3661, %3797 ], [ %3661, %3880 ], [ %4117, %4106 ], [ %3661, %3650 ]
  %3785 = phi float [ %3662, %3797 ], [ %3662, %3880 ], [ %4118, %4106 ], [ %3662, %3650 ]
  %3786 = phi float [ %3663, %3797 ], [ %3663, %3880 ], [ %3986, %4106 ], [ %3663, %3650 ]
  %3787 = phi float [ %3664, %3797 ], [ %3664, %3880 ], [ %3987, %4106 ], [ %3664, %3650 ]
  %3788 = phi float [ %3665, %3797 ], [ %3665, %3880 ], [ %3988, %4106 ], [ %3665, %3650 ]
  %3789 = phi float [ %3666, %3797 ], [ %3666, %3880 ], [ %4060, %4106 ], [ %3666, %3650 ]
  %3790 = phi float [ %3667, %3797 ], [ %3667, %3880 ], [ %4057, %4106 ], [ %3667, %3650 ]
  %3791 = phi float [ %3668, %3797 ], [ %3668, %3880 ], [ %4054, %4106 ], [ %3668, %3650 ]
  %3792 = phi float [ %3669, %3797 ], [ %3669, %3880 ], [ %4003, %4106 ], [ %3669, %3650 ]
  %3793 = phi float [ %3670, %3797 ], [ %3670, %3880 ], [ %3998, %4106 ], [ %3670, %3650 ]
  %3794 = phi float [ %3671, %3797 ], [ %3671, %3880 ], [ %3999, %4106 ], [ %3671, %3650 ]
  %3795 = phi float [ %3672, %3797 ], [ %3672, %3880 ], [ %4000, %4106 ], [ %3672, %3650 ]
  %3796 = icmp eq i32 %3676, 0
  br i1 %3796, label %4119, label %3650

; <label>:3797                                    ; preds = %3650
  %3798 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3799 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3800 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3804 = extractvalue %dx.types.ResRet.i32 %3685, 3
  %3805 = extractvalue %dx.types.ResRet.i32 %3685, 2
  %3806 = bitcast float %3798 to i32
  %3807 = add i32 %3804, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3809, float %3734, float %3741, float undef, float undef, i32 0, i32 0, i32 undef, float %3762, float %3764, float undef, float %3763, float %3765, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = fmul fast float %3811, %3803
  %3813 = fadd fast float %3812, %3802
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fmul fast float %3734, %3694
  %3816 = call float @dx.op.tertiary.f32(i32 46, float %3695, float %3741, float %3815)  ; FMad(a,b,c)
  %3817 = fadd fast float %3816, %3801
  %3818 = fmul fast float %3734, %3696
  %3819 = call float @dx.op.tertiary.f32(i32 46, float %3697, float %3741, float %3818)  ; FMad(a,b,c)
  %3820 = fadd fast float %3819, %3800
  %3821 = fmul fast float %3762, %3694
  %3822 = call float @dx.op.tertiary.f32(i32 46, float %3695, float %3764, float %3821)  ; FMad(a,b,c)
  %3823 = fmul fast float %3762, %3696
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %3697, float %3764, float %3823)  ; FMad(a,b,c)
  %3825 = fmul fast float %3763, %3694
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3695, float %3765, float %3825)  ; FMad(a,b,c)
  %3827 = fmul fast float %3763, %3696
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3697, float %3765, float %3827)  ; FMad(a,b,c)
  %3829 = add i32 %3805, 0
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3829, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3830, %dx.types.Handle %3809, float %3817, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3822, float %3824, float undef, float %3826, float %3828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = and i32 %3806, 1024
  %3834 = icmp ne i32 %3833, 0
  %3835 = fcmp fast ogt float %3832, 0x3FE0101020000000
  %3836 = uitofp i1 %3835 to float
  %3837 = select i1 %3834, float %3836, float %3832
  %3838 = and i32 %3806, 8192
  %3839 = icmp ne i32 %3838, 0
  %3840 = select i1 %3839, float %3799, float 1.000000e+00
  %3841 = fmul fast float %3734, 2.000000e+00
  %3842 = fadd fast float %3841, -1.000000e+00
  %3843 = call float @dx.op.unary.f32(i32 6, float %3842)  ; FAbs(value)
  %3844 = fmul fast float %3843, %3727
  %3845 = fsub fast float %3844, %3727
  %3846 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3847 = fmul fast float %3741, 2.000000e+00
  %3848 = fadd fast float %3847, -1.000000e+00
  %3849 = call float @dx.op.unary.f32(i32 6, float %3848)  ; FAbs(value)
  %3850 = fmul fast float %3849, %3728
  %3851 = fsub fast float %3850, %3728
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fmul fast float %3753, %3690
  %3854 = fsub fast float %3853, %3690
  %3855 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3856 = fmul fast float %3814, %3840
  %3857 = fmul fast float %3856, %3811
  %3858 = fmul fast float %3857, %3846
  %3859 = fmul fast float %3858, %3837
  %3860 = fmul fast float %3859, %3852
  %3861 = fmul fast float %3860, %3855
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 1
  %3864 = extractvalue %dx.types.CBufRet.f32 %3862, 0
  %3865 = fsub fast float %3770, %3864
  %3866 = fmul fast float %3865, %3863
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = fmul fast float %3861, %3691
  %3869 = fadd fast float %3861, %3691
  %3870 = fmul fast float %3869, %3700
  %3871 = fsub fast float %3870, %3700
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = and i32 %3806, 128
  %3874 = icmp ne i32 %3873, 0
  %3875 = select i1 %3874, float %3872, float %3868
  %3876 = fmul fast float %3875, %3867
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %3879 = fcmp fast ugt float %3876, %3878
  br i1 %3879, label %3880, label %3774

; <label>:3880                                    ; preds = %3797
  %3881 = select i1 %3839, float %3876, float 0.000000e+00
  %3882 = fadd fast float %3881, %3652
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  br i1 %3839, label %3774, label %3884

; <label>:3884                                    ; preds = %3880
  %3885 = and i32 %3806, 4
  %3886 = and i32 %3806, 8
  %3887 = add i32 %3686, 0
  %3888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3890 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3888, %dx.types.Handle %3889, float %3817, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3822, float %3824, float undef, float %3826, float %3828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = extractvalue %dx.types.ResRet.f32 %3890, 3
  %3895 = bitcast float %3712 to i32
  %3896 = and i32 %3895, 255
  %3897 = uitofp i32 %3896 to float
  %3898 = lshr i32 %3895, 8
  %3899 = and i32 %3898, 255
  %3900 = uitofp i32 %3899 to float
  %3901 = fmul fast float %3894, %3897
  %3902 = fadd fast float %3901, %3900
  %3903 = fmul fast float %3902, 0x3F70101000000000
  %3904 = add i32 %3687, 0
  %3905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3905, %dx.types.Handle %3889, float %3817, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3822, float %3824, float undef, float %3826, float %3828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %3911 = bitcast float %3706 to i32
  %3912 = and i32 %3911, 255
  %3913 = uitofp i32 %3912 to float
  %3914 = lshr i32 %3911, 8
  %3915 = and i32 %3914, 255
  %3916 = uitofp i32 %3915 to float
  %3917 = lshr i32 %3911, 16
  %3918 = and i32 %3917, 255
  %3919 = uitofp i32 %3918 to float
  %3920 = fmul fast float %3919, 0x3F70101000000000
  %3921 = fmul fast float %3907, %3913
  %3922 = fadd fast float %3921, %3916
  %3923 = fmul fast float %3922, 0x3F70101000000000
  %3924 = fadd fast float %3908, -5.000000e-01
  %3925 = fadd fast float %3910, -5.000000e-01
  %3926 = fmul fast float %3924, %3920
  %3927 = fmul fast float %3925, %3920
  %3928 = fadd fast float %3926, 5.000000e-01
  %3929 = fadd fast float %3927, 5.000000e-01
  %3930 = fmul fast float %3891, %3715
  %3931 = fmul fast float %3892, %3716
  %3932 = fmul fast float %3893, %3717
  %3933 = fmul fast float %3928, 2.000000e+00
  %3934 = fadd fast float %3933, -1.000000e+00
  %3935 = fmul fast float %3929, 2.000000e+00
  %3936 = fadd fast float %3935, -1.000000e+00
  %3937 = fadd fast float %3934, %3936
  %3938 = fmul fast float %3937, 5.000000e-01
  %3939 = fsub fast float %3934, %3936
  %3940 = fmul fast float %3939, 5.000000e-01
  %3941 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3942 = fsub fast float 1.000000e+00, %3941
  %3943 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3944 = fsub fast float %3942, %3943
  %3945 = call float @dx.op.dot3.f32(i32 55, float %3938, float %3940, float %3944, float %3938, float %3940, float %3944)  ; Dot3(ax,ay,az,bx,by,bz)
  %3946 = call float @dx.op.unary.f32(i32 25, float %3945)  ; Rsqrt(value)
  %3947 = fmul fast float %3938, %3946
  %3948 = fmul fast float %3940, %3946
  %3949 = fmul fast float %3946, %3944
  %3950 = fmul fast float %3949, %3681
  %3951 = fmul fast float %3949, %3682
  %3952 = fmul fast float %3949, %3683
  %3953 = fmul fast float %3947, %3703
  %3954 = fmul fast float %3947, %3704
  %3955 = fmul fast float %3947, %3705
  %3956 = fadd fast float %3953, %3950
  %3957 = fadd fast float %3954, %3951
  %3958 = fadd fast float %3955, %3952
  %3959 = fmul fast float %3948, %3709
  %3960 = fmul fast float %3948, %3710
  %3961 = fmul fast float %3948, %3711
  %3962 = fadd fast float %3956, %3959
  %3963 = fadd fast float %3957, %3960
  %3964 = fadd fast float %3958, %3961
  %3965 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3963, float %3964, float %3962, float %3963, float %3964)  ; Dot3(ax,ay,az,bx,by,bz)
  %3966 = call float @dx.op.unary.f32(i32 25, float %3965)  ; Rsqrt(value)
  %3967 = fmul fast float %3962, %3966
  %3968 = fmul fast float %3963, %3966
  %3969 = fmul fast float %3964, %3966
  %3970 = icmp ne i32 %3886, 0
  %3971 = select i1 %3970, float 1.000000e+00, float 0.000000e+00
  %3972 = fmul fast float %3876, %3971
  %3973 = and i32 %3806, 1
  %3974 = icmp eq i32 %3973, 0
  br i1 %3974, label %3975, label %3979

; <label>:3975                                    ; preds = %3884
  %3976 = fsub fast float %3967, %3663
  %3977 = fsub fast float %3968, %3664
  %3978 = fsub fast float %3969, %3665
  br label %3979

; <label>:3979                                    ; preds = %3975, %3884
  %3980 = phi float [ %3976, %3975 ], [ %3967, %3884 ]
  %3981 = phi float [ %3977, %3975 ], [ %3968, %3884 ]
  %3982 = phi float [ %3978, %3975 ], [ %3969, %3884 ]
  %3983 = fmul float %3982, %3972
  %3984 = fmul float %3981, %3972
  %3985 = fmul float %3980, %3972
  %3986 = fadd fast float %3985, %3663
  %3987 = fadd fast float %3984, %3664
  %3988 = fadd fast float %3983, %3665
  %3989 = icmp ne i32 %3885, 0
  %3990 = select i1 %3989, float 1.000000e+00, float 0.000000e+00
  %3991 = fmul fast float %3876, %3990
  %3992 = fsub fast float %3930, %3670
  %3993 = fsub fast float %3931, %3671
  %3994 = fsub fast float %3932, %3672
  %3995 = fmul fast float %3992, %3991
  %3996 = fmul fast float %3993, %3991
  %3997 = fmul fast float %3994, %3991
  %3998 = fadd fast float %3995, %3670
  %3999 = fadd fast float %3996, %3671
  %4000 = fadd fast float %3997, %3672
  %4001 = fsub fast float %3903, %3669
  %4002 = fmul fast float %4001, %3991
  %4003 = fadd fast float %4002, %3669
  %4004 = fmul fast float %3991, %3656
  %4005 = fsub fast float %3656, %4004
  %4006 = fmul fast float %3991, %3655
  %4007 = fsub fast float %3655, %4006
  %4008 = bitcast float %3724 to i32
  %4009 = lshr i32 %4008, 16
  %4010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4009)  ; LegacyF16ToF32(value)
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 1
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4015, label %4040

; <label>:4015                                    ; preds = %3979
  %4016 = fadd fast float %3903, 0xBFB99999A0000000
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fmul fast float %4017, 0x3FF1C71C80000000
  %4019 = fsub fast float 1.000000e+00, %4018
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4021 = fmul fast float %4020, %3930
  %4022 = fmul fast float %4020, %3931
  %4023 = fmul fast float %4020, %3932
  %4024 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4025 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = call float @dx.op.binary.f32(i32 35, float %4025, float %4026)  ; FMax(a,b)
  %4028 = call float @dx.op.binary.f32(i32 35, float %4024, float %4027)  ; FMax(a,b)
  %4029 = fcmp fast ogt float %4028, 0.000000e+00
  %4030 = bitcast float %4028 to i32
  %4031 = sub nsw i32 2129859010, %4030
  %4032 = bitcast i32 %4031 to float
  %4033 = select i1 %4029, float %4032, float 0.000000e+00
  %4034 = fmul fast float %4024, %4010
  %4035 = fmul fast float %4025, %4010
  %4036 = fmul fast float %4026, %4010
  %4037 = fmul fast float %4034, %4033
  %4038 = fmul fast float %4035, %4033
  %4039 = fmul fast float %4036, %4033
  br label %4040

; <label>:4040                                    ; preds = %4015, %3979
  %4041 = phi float [ %4010, %3979 ], [ %4037, %4015 ]
  %4042 = phi float [ %4010, %3979 ], [ %4038, %4015 ]
  %4043 = phi float [ %4010, %3979 ], [ %4039, %4015 ]
  %4044 = fsub fast float %4041, %3657
  %4045 = fsub fast float %4042, %3658
  %4046 = fsub fast float %4043, %3659
  %4047 = fmul fast float %4044, %3991
  %4048 = fmul fast float %4045, %3991
  %4049 = fmul fast float %4046, %3991
  %4050 = fadd fast float %4047, %3657
  %4051 = fadd fast float %4048, %3658
  %4052 = fadd fast float %4049, %3659
  %4053 = fadd fast float %3876, %3668
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fsub fast float %3923, %3667
  %4056 = fmul fast float %4055, %3972
  %4057 = fadd fast float %4056, %3667
  %4058 = fsub fast float %3909, %3666
  %4059 = fmul fast float %4058, %3972
  %4060 = fadd fast float %4059, %3666
  %4061 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4065 = fmul fast float %4064, %4061
  %4066 = fadd fast float %4065, %4063
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = bitcast float %3718 to i32
  %4069 = and i32 %4068, 65535
  %4070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4069)  ; LegacyF16ToF32(value)
  %4071 = lshr i32 %4068, 16
  %4072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4071)  ; LegacyF16ToF32(value)
  %4073 = fcmp fast oge float %4070, 0.000000e+00
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = select i1 %4073, float %4070, float %4075
  %4077 = fadd fast float %4076, %4072
  %4078 = fsub fast float %4067, %3654
  %4079 = fmul fast float %4078, %3876
  %4080 = fadd fast float %4079, %3654
  %4081 = fmul fast float %4077, %3876
  %4082 = call float @dx.op.binary.f32(i32 35, float %3653, float %4081)  ; FMax(a,b)
  %4083 = and i32 %3806, 16
  %4084 = icmp eq i32 %4083, 0
  br i1 %4084, label %4106, label %4085

; <label>:4085                                    ; preds = %4040
  %4086 = add i32 %3721, 0
  %4087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4087, %dx.types.Handle %3889, float %3817, float %3820, float undef, float undef, i32 0, i32 0, i32 undef, float %3822, float %3824, float undef, float %3826, float %3828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4092 = and i32 %4008, 65535
  %4093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4092)  ; LegacyF16ToF32(value)
  %4094 = fmul fast float %4089, %3715
  %4095 = fmul fast float %4090, %3716
  %4096 = fmul fast float %4091, %3717
  %4097 = and i32 %3806, 16384
  %4098 = icmp ne i32 %4097, 0
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = select i1 %4098, float %4100, float 1.000000e+00
  %4102 = fmul fast float %4101, %4093
  %4103 = fmul fast float %4094, %4102
  %4104 = fmul fast float %4095, %4102
  %4105 = fmul fast float %4096, %4102
  br label %4106

; <label>:4106                                    ; preds = %4085, %4040
  %4107 = phi float [ %4103, %4085 ], [ 0.000000e+00, %4040 ]
  %4108 = phi float [ %4104, %4085 ], [ 0.000000e+00, %4040 ]
  %4109 = phi float [ %4105, %4085 ], [ 0.000000e+00, %4040 ]
  %4110 = fsub fast float %4107, %3660
  %4111 = fsub fast float %4108, %3661
  %4112 = fsub fast float %4109, %3662
  %4113 = fmul fast float %4110, %3876
  %4114 = fmul fast float %4111, %3876
  %4115 = fmul fast float %4112, %3876
  %4116 = fadd fast float %4113, %3660
  %4117 = fadd fast float %4114, %3661
  %4118 = fadd fast float %4115, %3662
  br label %3774

; <label>:4119                                    ; preds = %3774
  br label %4120

; <label>:4120                                    ; preds = %4119, %3587
  %4121 = phi float [ 0.000000e+00, %3587 ], [ %3775, %4119 ]
  %4122 = phi float [ %3557, %3587 ], [ %3776, %4119 ]
  %4123 = phi float [ %3555, %3587 ], [ %3777, %4119 ]
  %4124 = phi float [ %3554, %3587 ], [ %3778, %4119 ]
  %4125 = phi float [ 0.000000e+00, %3587 ], [ %3779, %4119 ]
  %4126 = phi float [ %3544, %3587 ], [ %3780, %4119 ]
  %4127 = phi float [ %3545, %3587 ], [ %3781, %4119 ]
  %4128 = phi float [ %3546, %3587 ], [ %3782, %4119 ]
  %4129 = phi float [ %3547, %3587 ], [ %3783, %4119 ]
  %4130 = phi float [ %3548, %3587 ], [ %3784, %4119 ]
  %4131 = phi float [ %3549, %3587 ], [ %3785, %4119 ]
  %4132 = phi float [ %3583, %3587 ], [ %3786, %4119 ]
  %4133 = phi float [ %3584, %3587 ], [ %3787, %4119 ]
  %4134 = phi float [ %3585, %3587 ], [ %3788, %4119 ]
  %4135 = phi float [ %3552, %3587 ], [ %3789, %4119 ]
  %4136 = phi float [ %3551, %3587 ], [ %3790, %4119 ]
  %4137 = phi float [ 0.000000e+00, %3587 ], [ %3791, %4119 ]
  %4138 = phi float [ %3550, %3587 ], [ %3792, %4119 ]
  %4139 = phi float [ %3541, %3587 ], [ %3793, %4119 ]
  %4140 = phi float [ %3542, %3587 ], [ %3794, %4119 ]
  %4141 = phi float [ %3543, %3587 ], [ %3795, %4119 ]
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4132, float %4133, float %4134, float %4132, float %4133, float %4134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = call float @dx.op.unary.f32(i32 25, float %4142)  ; Rsqrt(value)
  %4144 = fmul fast float %4143, %4132
  %4145 = fmul fast float %4143, %4133
  %4146 = fmul fast float %4143, %4134
  %4147 = fadd fast float %4137, %985
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = call float @dx.op.dot3.f32(i32 55, float %4144, float %4145, float %4146, float %4144, float %4145, float %4146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4150 = call float @dx.op.unary.f32(i32 25, float %4149)  ; Rsqrt(value)
  %4151 = fmul fast float %4150, %4144
  %4152 = fmul fast float %4150, %4145
  %4153 = fmul fast float %4150, %4146
  br label %4154

; <label>:4154                                    ; preds = %4120, %3538
  %4155 = phi float [ %4151, %4120 ], [ %3583, %3538 ]
  %4156 = phi float [ %4152, %4120 ], [ %3584, %3538 ]
  %4157 = phi float [ %4153, %4120 ], [ %3585, %3538 ]
  %4158 = phi float [ %4139, %4120 ], [ %3541, %3538 ]
  %4159 = phi float [ %4140, %4120 ], [ %3542, %3538 ]
  %4160 = phi float [ %4141, %4120 ], [ %3543, %3538 ]
  %4161 = phi float [ %4126, %4120 ], [ %3544, %3538 ]
  %4162 = phi float [ %4127, %4120 ], [ %3545, %3538 ]
  %4163 = phi float [ %4128, %4120 ], [ %3546, %3538 ]
  %4164 = phi float [ %4129, %4120 ], [ %3547, %3538 ]
  %4165 = phi float [ %4130, %4120 ], [ %3548, %3538 ]
  %4166 = phi float [ %4131, %4120 ], [ %3549, %3538 ]
  %4167 = phi float [ %4138, %4120 ], [ %3550, %3538 ]
  %4168 = phi float [ %4148, %4120 ], [ %985, %3538 ]
  %4169 = phi float [ %4136, %4120 ], [ %3551, %3538 ]
  %4170 = phi float [ %4135, %4120 ], [ %3552, %3538 ]
  %4171 = phi float [ %4125, %4120 ], [ 0.000000e+00, %3538 ]
  %4172 = phi float [ %4124, %4120 ], [ %3554, %3538 ]
  %4173 = phi float [ %4121, %4120 ], [ 0.000000e+00, %3538 ]
  %4174 = phi float [ %4122, %4120 ], [ %3557, %3538 ]
  %4175 = phi float [ %4123, %4120 ], [ %3555, %3538 ]
  %4176 = fadd fast float %4167, 0xBFB99999A0000000
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = fmul fast float %4177, 0x3FF1C71C80000000
  %4179 = call float @dx.op.binary.f32(i32 36, float %4167, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4180 = fsub fast float 1.000000e+00, %4178
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = fmul fast float %4181, %4158
  %4183 = fmul fast float %4181, %4159
  %4184 = fmul fast float %4181, %4160
  %4185 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4186 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4187 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4188 = fmul fast float %4178, %4158
  %4189 = fmul fast float %4178, %4159
  %4190 = fmul fast float %4178, %4160
  %4191 = fadd fast float %4188, %4179
  %4192 = fadd fast float %4189, %4179
  %4193 = fadd fast float %4190, %4179
  %4194 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = and i32 %4199, 1
  %4201 = icmp eq i32 %4200, 0
  br i1 %4201, label %4216, label %4202

; <label>:4202                                    ; preds = %4154
  %4203 = call float @dx.op.binary.f32(i32 35, float %4186, float %4187)  ; FMax(a,b)
  %4204 = call float @dx.op.binary.f32(i32 35, float %4185, float %4203)  ; FMax(a,b)
  %4205 = fcmp fast ogt float %4204, 0.000000e+00
  %4206 = bitcast float %4204 to i32
  %4207 = sub nsw i32 2129859010, %4206
  %4208 = bitcast i32 %4207 to float
  %4209 = select i1 %4205, float %4208, float 0.000000e+00
  %4210 = fmul fast float %4185, %4161
  %4211 = fmul fast float %4186, %4162
  %4212 = fmul fast float %4187, %4163
  %4213 = fmul fast float %4210, %4209
  %4214 = fmul fast float %4211, %4209
  %4215 = fmul fast float %4212, %4209
  br label %4216

; <label>:4216                                    ; preds = %4202, %4154
  %4217 = phi float [ %4213, %4202 ], [ %4161, %4154 ]
  %4218 = phi float [ %4214, %4202 ], [ %4162, %4154 ]
  %4219 = phi float [ %4215, %4202 ], [ %4163, %4154 ]
  %4220 = fadd fast float %4185, 0xBFD51EB860000000
  %4221 = fadd fast float %4186, 0xBFD51EB860000000
  %4222 = fadd fast float %4187, 0xBFD51EB860000000
  %4223 = fmul fast float %4220, %4220
  %4224 = fmul fast float %4221, %4221
  %4225 = fmul fast float %4222, %4222
  %4226 = fmul fast float %4223, %4223
  %4227 = fmul fast float %4226, 1.000000e+02
  %4228 = fmul fast float %4224, %4224
  %4229 = fmul fast float %4228, 1.000000e+02
  %4230 = fmul fast float %4225, %4225
  %4231 = fmul fast float %4230, 1.000000e+02
  %4232 = fadd fast float %4227, 3.500000e+00
  %4233 = fadd fast float %4229, 3.500000e+00
  %4234 = fadd fast float %4231, 3.500000e+00
  %4235 = call float @dx.op.binary.f32(i32 35, float %4217, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4236 = call float @dx.op.binary.f32(i32 35, float %4218, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4237 = call float @dx.op.binary.f32(i32 35, float %4219, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4238 = fdiv fast float %4232, %4235
  %4239 = fdiv fast float %4233, %4236
  %4240 = fdiv fast float %4234, %4237
  %4241 = fmul fast float %3553, 0xBFF7154760000000
  %4242 = fmul fast float %4241, %4238
  %4243 = call float @dx.op.unary.f32(i32 21, float %4242)  ; Exp(value)
  %4244 = fmul fast float %4243, 2.500000e-01
  %4245 = fmul fast float %3553, 0xBFDEC709E0000000
  %4246 = fmul fast float %4245, %4238
  %4247 = call float @dx.op.unary.f32(i32 21, float %4246)  ; Exp(value)
  %4248 = fmul fast float %4247, 7.500000e-01
  %4249 = fmul fast float %4241, %4239
  %4250 = call float @dx.op.unary.f32(i32 21, float %4249)  ; Exp(value)
  %4251 = fmul fast float %4250, 2.500000e-01
  %4252 = fmul fast float %4245, %4239
  %4253 = call float @dx.op.unary.f32(i32 21, float %4252)  ; Exp(value)
  %4254 = fmul fast float %4253, 7.500000e-01
  %4255 = fmul fast float %4241, %4240
  %4256 = call float @dx.op.unary.f32(i32 21, float %4255)  ; Exp(value)
  %4257 = fmul fast float %4256, 2.500000e-01
  %4258 = fmul fast float %4245, %4240
  %4259 = call float @dx.op.unary.f32(i32 21, float %4258)  ; Exp(value)
  %4260 = fmul fast float %4259, 7.500000e-01
  %4261 = fadd fast float %4244, %4248
  %4262 = fadd fast float %4251, %4254
  %4263 = fadd fast float %4257, %4260
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 3
  %4266 = and i32 %4265, 8
  %4267 = icmp ne i32 %4266, 0
  %4268 = call float @dx.op.binary.f32(i32 35, float %4185, float %4158)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4186, float %4158)  ; FMax(a,b)
  %4270 = call float @dx.op.binary.f32(i32 35, float %4187, float %4158)  ; FMax(a,b)
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = select i1 %199, float %4158, float %4185
  %4273 = select i1 %199, float %4271, float %4186
  %4274 = select i1 %199, float 1.000000e+00, float %4187
  %4275 = select i1 %4267, float %4268, float %4272
  %4276 = select i1 %4267, float %4269, float %4273
  %4277 = select i1 %4267, float %4270, float %4274
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4282 = fadd fast float %4279, %160
  %4283 = fadd fast float %4280, %161
  %4284 = fadd fast float %4281, %162
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4288 = fsub fast float %4282, %4286
  %4289 = fsub fast float %4283, %4287
  %4290 = fmul fast float %4288, %4288
  %4291 = fmul fast float %4289, %4289
  %4292 = fadd fast float %4290, %4291
  %4293 = call float @dx.op.unary.f32(i32 24, float %4292)  ; Sqrt(value)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4295 = fcmp fast olt float %4293, %4294
  br i1 %4295, label %4296, label %4363

; <label>:4296                                    ; preds = %4216
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4305 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4307 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4308 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4309 = fadd fast float %4306, %4282
  %4310 = fadd fast float %4307, %4283
  %4311 = fadd fast float %4308, %4284
  %4312 = fmul fast float %4309, %4298
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4300, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = fmul fast float %4309, %4303
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4304, float %4315)  ; FMad(a,b,c)
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4305, float %4316)  ; FMad(a,b,c)
  %4318 = fsub fast float %4314, %4306
  %4319 = fsub fast float %4317, %4307
  %4320 = fsub fast float %4318, %4286
  %4321 = fadd fast float %4320, %4294
  %4322 = fsub fast float %4319, %4287
  %4323 = fadd fast float %4322, %4294
  %4324 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4325 = fmul fast float %4321, %4324
  %4326 = fmul fast float %4323, %4324
  %4327 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4329 = fsub fast float 1.000000e+00, %4327
  %4330 = fsub fast float 1.000000e+00, %4328
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %28, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = fcmp fast ugt float %4332, 0.000000e+00
  br i1 %4333, label %4334, label %4637

; <label>:4334                                    ; preds = %4296
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fmul fast float %4336, %4332
  %4338 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4339 = fadd fast float %4338, %4337
  %4340 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4341 = fadd fast float %4339, %4308
  %4342 = fmul fast float %4314, %4302
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4305, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4340, float %4343)  ; FMad(a,b,c)
  %4345 = fsub fast float %4344, %4308
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 2
  %4348 = fsub fast float %4345, %4347
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %28, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %28, float %4329, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = fadd fast float %4354, %4350
  %4358 = fmul fast float %4357, 0x3F847AE140000000
  %4359 = fadd fast float %4355, %4351
  %4360 = fmul fast float %4359, 0x3F847AE140000000
  %4361 = fadd fast float %4356, %4352
  %4362 = fmul fast float %4361, 0x3F847AE140000000
  br label %4637

; <label>:4363                                    ; preds = %4216
  %4364 = and i32 %178, 1
  %4365 = icmp eq i32 %4364, 0
  br i1 %4365, label %4637, label %4366

; <label>:4366                                    ; preds = %4363
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4367, 3
  %4377 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4378 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4379 = fadd fast float %4376, %4282
  %4380 = fadd fast float %4377, %4283
  %4381 = fadd fast float %4378, %4284
  %4382 = fmul fast float %4379, %4368
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4370, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4372, float %4383)  ; FMad(a,b,c)
  %4385 = fmul fast float %4379, %4373
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4374, float %4385)  ; FMad(a,b,c)
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4375, float %4386)  ; FMad(a,b,c)
  %4388 = fsub fast float %4384, %4376
  %4389 = fsub fast float %4387, %4377
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 0
  %4399 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4400 = udiv i32 %4399, %4398
  %4401 = fsub fast float %4388, %4391
  %4402 = fsub fast float %4389, %4392
  %4403 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4404 = call float @dx.op.binary.f32(i32 35, float %4402, float 0.000000e+00)  ; FMax(a,b)
  %4405 = call float @dx.op.binary.f32(i32 36, float %4403, float %4393)  ; FMin(a,b)
  %4406 = call float @dx.op.binary.f32(i32 36, float %4404, float %4394)  ; FMin(a,b)
  %4407 = add i32 %4398, -1
  %4408 = add i32 %4400, -1
  %4409 = fmul fast float %4405, %4396
  %4410 = fmul fast float %4406, %4396
  %4411 = fptoui float %4409 to i32
  %4412 = fptoui float %4410 to i32
  %4413 = call i32 @dx.op.binary.i32(i32 40, i32 %4411, i32 %4407)  ; UMin(a,b)
  %4414 = call i32 @dx.op.binary.i32(i32 40, i32 %4412, i32 %4408)  ; UMin(a,b)
  %4415 = mul i32 %4414, %4398
  %4416 = add i32 %4415, %4413
  %4417 = shl i32 %4416, 2
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = icmp eq i32 %4419, -1
  br i1 %4420, label %4637, label %4421

; <label>:4421                                    ; preds = %4366
  %4422 = mul i32 %4419, 148
  %4423 = add i32 %4422, 4
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = add i32 %4422, 8
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4422, 36
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4422, 60
  %4433 = add i32 %4422, 92
  %4434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.i32 %4434, 0
  %4436 = add i32 %4422, 116
  %4437 = fsub fast float %4388, %4425
  %4438 = fsub fast float %4389, %4428
  %4439 = fmul fast float %4396, %4437
  %4440 = fmul fast float %4396, %4438
  %4441 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4446 = call float @dx.op.unary.f32(i32 83, float %4441)  ; DerivCoarseX(value)
  %4447 = call float @dx.op.unary.f32(i32 83, float %4443)  ; DerivCoarseX(value)
  %4448 = call float @dx.op.unary.f32(i32 84, float %4441)  ; DerivCoarseY(value)
  %4449 = call float @dx.op.unary.f32(i32 84, float %4443)  ; DerivCoarseY(value)
  %4450 = fmul fast float %4446, %4445
  %4451 = fmul fast float %4447, %4445
  %4452 = fmul fast float %4448, %4445
  %4453 = fmul fast float %4449, %4445
  %4454 = call float @dx.op.dot2.f32(i32 54, float %4452, float %4453, float %4452, float %4453)  ; Dot2(ax,ay,bx,by)
  %4455 = call float @dx.op.dot2.f32(i32 54, float %4450, float %4451, float %4450, float %4451)  ; Dot2(ax,ay,bx,by)
  %4456 = call float @dx.op.binary.f32(i32 35, float %4455, float %4454)  ; FMax(a,b)
  %4457 = call float @dx.op.unary.f32(i32 23, float %4456)  ; Log(value)
  %4458 = fmul fast float %4457, 5.000000e-01
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4461 = fadd fast float %4460, %4458
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float 0.000000e+00)  ; FMax(a,b)
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4465 = fadd fast float %4464, %4462
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = fadd fast float %4465, %4467
  %4469 = add i32 %4435, 0
  %4470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4470, i32 0)  ; GetDimensions(handle,mipLevel)
  %4472 = extractvalue %dx.types.Dimensions %4471, 0
  %4473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4472)  ; FirstbitLo(value)
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 1
  %4476 = sub nsw i32 %4475, %4473
  %4477 = sitofp i32 %4476 to float
  %4478 = fsub fast float %4468, %4477
  %4479 = call float @dx.op.binary.f32(i32 35, float %4478, float 0.000000e+00)  ; FMax(a,b)
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4470, %dx.types.Handle %27, float %4441, float %4443, float %4431, float undef, i32 0, i32 0, i32 undef, float %4479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = fcmp ule float %4481, 0x3FE0101020000000
  %4483 = extractvalue %dx.types.CBufRet.i32 %4474, 0
  %4484 = and i32 %4483, 128
  %4485 = icmp ne i32 %4484, 0
  %4486 = and i1 %4482, %4485
  br i1 %4486, label %4637, label %4487

; <label>:4487                                    ; preds = %4421
  %4488 = add i32 %4422, 20
  %4489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = add i32 %4422, 24
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4422, 40
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4422, 96
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 2
  %4502 = fmul fast float %4501, %4441
  %4503 = fmul fast float %4501, %4443
  %4504 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4505 = fadd fast float %4502, %4504
  %4506 = fadd fast float %4503, %4504
  %4507 = add i32 %4499, 0
  %4508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4507, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4509 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4508, i32 0)  ; GetDimensions(handle,mipLevel)
  %4510 = extractvalue %dx.types.Dimensions %4509, 0
  %4511 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4510)  ; FirstbitLo(value)
  %4512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.i32 %4512, 1
  %4514 = sub nsw i32 %4513, %4511
  %4515 = sitofp i32 %4514 to float
  %4516 = fsub fast float %4465, %4515
  %4517 = call float @dx.op.binary.f32(i32 35, float %4516, float 0.000000e+00)  ; FMax(a,b)
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4508, %dx.types.Handle %27, float %4505, float %4506, float %4496, float undef, i32 0, i32 0, i32 undef, float %4517)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = fmul fast float %4519, %4490
  %4521 = fadd fast float %4520, %4493
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4530 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4531 = fadd fast float %4527, %4388
  %4532 = fadd fast float %4529, %4389
  %4533 = fadd fast float %4521, %4530
  %4534 = fmul fast float %4531, %4523
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4524, float %4534)  ; FMad(a,b,c)
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4525, float %4535)  ; FMad(a,b,c)
  %4537 = fsub fast float %4536, %4530
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4540 = fsub fast float %4537, %4539
  %4541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.i32 %4541, 0
  %4543 = call i32 @dx.op.binary.i32(i32 40, i32 %4419, i32 %4542)  ; UMin(a,b)
  %4544 = mul i32 %4543, 36
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = add i32 %4544, 4
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = fmul fast float %4549, %4441
  %4551 = fmul fast float %4549, %4443
  %4552 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4553 = fadd fast float %4550, %4552
  %4554 = fadd fast float %4551, %4552
  %4555 = icmp eq i32 %4546, 0
  br i1 %4555, label %4624, label %4556

; <label>:4556                                    ; preds = %4487
  br label %4557

; <label>:4557                                    ; preds = %4614, %4556
  %4558 = phi float [ %4615, %4614 ], [ 0.000000e+00, %4556 ]
  %4559 = phi float [ %4616, %4614 ], [ 0.000000e+00, %4556 ]
  %4560 = phi float [ %4617, %4614 ], [ 0.000000e+00, %4556 ]
  %4561 = phi float [ %4618, %4614 ], [ 0.000000e+00, %4556 ]
  %4562 = phi float [ %4619, %4614 ], [ 0.000000e+00, %4556 ]
  %4563 = phi float [ %4620, %4614 ], [ 0.000000e+00, %4556 ]
  %4564 = phi i32 [ %4621, %4614 ], [ 0, %4556 ]
  %4565 = shl i32 %4564, 2
  %4566 = add i32 %4432, %4565
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = add i32 %4436, %4565
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = add i32 %4571, 0
  %4573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4572, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4574 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4573, i32 0)  ; GetDimensions(handle,mipLevel)
  %4575 = extractvalue %dx.types.Dimensions %4574, 0
  %4576 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4575)  ; FirstbitLo(value)
  %4577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.i32 %4577, 1
  %4579 = sub nsw i32 %4578, %4576
  %4580 = sitofp i32 %4579 to float
  %4581 = fsub fast float %4465, %4580
  %4582 = call float @dx.op.binary.f32(i32 35, float %4581, float 0.000000e+00)  ; FMax(a,b)
  %4583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4573, %dx.types.Handle %27, float %4553, float %4554, float %4568, float undef, i32 0, i32 0, i32 undef, float %4582)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = fcmp fast ogt float %4584, 0.000000e+00
  br i1 %4585, label %4586, label %4614

; <label>:4586                                    ; preds = %4557
  %4587 = add i32 %4547, %4565
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = and i32 %4589, 32767
  %4591 = mul nuw nsw i32 %4590, 928
  %4592 = add nuw nsw i32 %4591, 48
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = add nuw nsw i32 %4591, 60
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = fmul fast float %4594, %4584
  %4603 = fmul fast float %4595, %4584
  %4604 = fmul fast float %4596, %4584
  %4605 = fadd fast float %4602, %4558
  %4606 = fadd fast float %4603, %4559
  %4607 = fadd fast float %4604, %4560
  %4608 = fmul fast float %4599, %4584
  %4609 = fmul fast float %4600, %4584
  %4610 = fmul fast float %4601, %4584
  %4611 = fadd fast float %4608, %4561
  %4612 = fadd fast float %4609, %4562
  %4613 = fadd fast float %4610, %4563
  br label %4614

; <label>:4614                                    ; preds = %4586, %4557
  %4615 = phi float [ %4605, %4586 ], [ %4558, %4557 ]
  %4616 = phi float [ %4606, %4586 ], [ %4559, %4557 ]
  %4617 = phi float [ %4607, %4586 ], [ %4560, %4557 ]
  %4618 = phi float [ %4611, %4586 ], [ %4561, %4557 ]
  %4619 = phi float [ %4612, %4586 ], [ %4562, %4557 ]
  %4620 = phi float [ %4613, %4586 ], [ %4563, %4557 ]
  %4621 = add nuw i32 %4564, 1
  %4622 = icmp eq i32 %4621, %4546
  br i1 %4622, label %4623, label %4557

; <label>:4623                                    ; preds = %4614
  br label %4624

; <label>:4624                                    ; preds = %4623, %4487
  %4625 = phi float [ 0.000000e+00, %4487 ], [ %4615, %4623 ]
  %4626 = phi float [ 0.000000e+00, %4487 ], [ %4616, %4623 ]
  %4627 = phi float [ 0.000000e+00, %4487 ], [ %4617, %4623 ]
  %4628 = phi float [ 0.000000e+00, %4487 ], [ %4618, %4623 ]
  %4629 = phi float [ 0.000000e+00, %4487 ], [ %4619, %4623 ]
  %4630 = phi float [ 0.000000e+00, %4487 ], [ %4620, %4623 ]
  %4631 = fadd fast float %4628, %4625
  %4632 = fmul fast float %4631, 0x3F847AE140000000
  %4633 = fadd fast float %4629, %4626
  %4634 = fmul fast float %4633, 0x3F847AE140000000
  %4635 = fadd fast float %4630, %4627
  %4636 = fmul fast float %4635, 0x3F847AE140000000
  br label %4637

; <label>:4637                                    ; preds = %4624, %4421, %4366, %4363, %4334, %4296
  %4638 = phi float [ %4348, %4334 ], [ -1.310720e+05, %4296 ], [ %4540, %4624 ], [ -1.310720e+05, %4366 ], [ -1.310720e+05, %4421 ], [ -1.310720e+05, %4363 ]
  %4639 = phi float [ %4358, %4334 ], [ 0.000000e+00, %4296 ], [ %4632, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4640 = phi float [ %4360, %4334 ], [ 0.000000e+00, %4296 ], [ %4634, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4641 = phi float [ %4362, %4334 ], [ 0.000000e+00, %4296 ], [ %4636, %4624 ], [ 0.000000e+00, %4366 ], [ 0.000000e+00, %4421 ], [ 0.000000e+00, %4363 ]
  %4642 = phi i1 [ true, %4334 ], [ false, %4296 ], [ true, %4624 ], [ false, %4366 ], [ false, %4421 ], [ false, %4363 ]
  %4643 = and i32 %178, 3
  %4644 = icmp eq i32 %4643, 1
  %4645 = select i1 %4644, float 1.000000e+00, float 0.000000e+00
  %4646 = fsub fast float %4638, %162
  %4647 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4648 = select i1 %4642, float %4647, float 1.000000e+00
  %4649 = fmul fast float %4648, %4645
  %4650 = icmp eq i32 %4643, 3
  %4651 = select i1 %4650, float 1.000000e+00, float %4649
  %4652 = call float @dx.op.binary.f32(i32 35, float %4173, float %4651)  ; FMax(a,b)
  %4653 = fcmp fast olt float %4651, 1.000000e+00
  %4654 = fcmp uge float %47, 0.000000e+00
  %4655 = and i1 %4654, %4653
  br i1 %4655, label %4656, label %4666

; <label>:4656                                    ; preds = %4637
  %4657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %27, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  %4661 = fadd fast float %4658, %4652
  %4662 = fcmp ule float %46, 0.000000e+00
  %4663 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = select i1 %4662, float %4663, float 1.000000e+00
  %4665 = fmul fast float %4664, %4660
  br label %4666

; <label>:4666                                    ; preds = %4656, %4637
  %4667 = phi float [ %4661, %4656 ], [ %4652, %4637 ]
  %4668 = phi float [ %4659, %4656 ], [ 0.000000e+00, %4637 ]
  %4669 = phi float [ %4665, %4656 ], [ 0.000000e+00, %4637 ]
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = fcmp fast une float %4671, 0.000000e+00
  %4674 = fcmp fast une float %4672, 0.000000e+00
  %4675 = or i1 %4673, %4674
  br i1 %4675, label %4676, label %5235

; <label>:4676                                    ; preds = %4666
  br i1 %4673, label %4677, label %4950

; <label>:4677                                    ; preds = %4676
  %4678 = call float @dx.op.unary.f32(i32 23, float %4170)  ; Log(value)
  %4679 = fmul fast float %4678, 4.000000e+00
  %4680 = call float @dx.op.unary.f32(i32 21, float %4679)  ; Exp(value)
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = fmul fast float %4682, %34
  %4684 = fmul fast float %4682, %35
  %4685 = fmul fast float %4682, %36
  %4686 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4687 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4688 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4689 = call float @dx.op.unary.f32(i32 23, float %4686)  ; Log(value)
  %4690 = call float @dx.op.unary.f32(i32 23, float %4687)  ; Log(value)
  %4691 = call float @dx.op.unary.f32(i32 23, float %4688)  ; Log(value)
  %4692 = fmul fast float %4689, 4.000000e+00
  %4693 = fmul fast float %4690, 4.000000e+00
  %4694 = fmul fast float %4691, 4.000000e+00
  %4695 = call float @dx.op.unary.f32(i32 21, float %4692)  ; Exp(value)
  %4696 = call float @dx.op.unary.f32(i32 21, float %4693)  ; Exp(value)
  %4697 = call float @dx.op.unary.f32(i32 21, float %4694)  ; Exp(value)
  %4698 = fadd fast float %4696, %4695
  %4699 = fadd fast float %4698, %4697
  %4700 = fdiv fast float 1.000000e+00, %4699
  %4701 = fmul fast float %4700, %4695
  %4702 = fcmp fast ogt float %43, 0.000000e+00
  %4703 = fcmp fast ogt float %44, 0.000000e+00
  %4704 = fcmp fast ogt float %45, 0.000000e+00
  %4705 = fcmp fast olt float %43, 0.000000e+00
  %4706 = fcmp fast olt float %44, 0.000000e+00
  %4707 = fcmp fast olt float %45, 0.000000e+00
  %4708 = zext i1 %4702 to i32
  %4709 = zext i1 %4703 to i32
  %4710 = zext i1 %4704 to i32
  %4711 = zext i1 %4705 to i32
  %4712 = zext i1 %4706 to i32
  %4713 = zext i1 %4707 to i32
  %4714 = sub nsw i32 %4708, %4711
  %4715 = sub nsw i32 %4709, %4712
  %4716 = sub nsw i32 %4710, %4713
  %4717 = call float @dx.op.unary.f32(i32 83, float %4683)  ; DerivCoarseX(value)
  %4718 = call float @dx.op.unary.f32(i32 83, float %4684)  ; DerivCoarseX(value)
  %4719 = call float @dx.op.unary.f32(i32 83, float %4685)  ; DerivCoarseX(value)
  %4720 = call float @dx.op.unary.f32(i32 84, float %4683)  ; DerivCoarseY(value)
  %4721 = call float @dx.op.unary.f32(i32 84, float %4684)  ; DerivCoarseY(value)
  %4722 = call float @dx.op.unary.f32(i32 84, float %4685)  ; DerivCoarseY(value)
  %4723 = fcmp fast ole float %210, %4701
  %4724 = fmul fast float %4700, %4698
  %4725 = fcmp fast ole float %210, %4724
  %4726 = select i1 %4725, float %4685, float %4683
  %4727 = select i1 %4725, float %4683, float %4684
  %4728 = select i1 %4723, float %4684, float %4726
  %4729 = select i1 %4723, float %4685, float %4727
  %4730 = select i1 %4725, float %4719, float %4717
  %4731 = select i1 %4725, float %4717, float %4718
  %4732 = select i1 %4723, float %4718, float %4730
  %4733 = select i1 %4723, float %4719, float %4731
  %4734 = select i1 %4725, float %4722, float %4720
  %4735 = select i1 %4725, float %4720, float %4721
  %4736 = select i1 %4723, float %4721, float %4734
  %4737 = select i1 %4723, float %4722, float %4735
  %4738 = call float @dx.op.unary.f32(i32 27, float %4728)  ; Round_ni(value)
  %4739 = call float @dx.op.unary.f32(i32 27, float %4729)  ; Round_ni(value)
  %4740 = fptosi float %4738 to i32
  %4741 = fptosi float %4739 to i32
  %4742 = xor i32 %4741, %4740
  %4743 = sitofp i32 %4742 to float
  %4744 = fptosi float %4743 to i32
  %4745 = sitofp i32 %4744 to float
  %4746 = fmul fast float %4745, 0x3FE3C6EF40000000
  %4747 = frem fast float %4738, 2.560000e+02
  %4748 = frem fast float %4739, 2.560000e+02
  %4749 = fptoui float %4747 to i32
  %4750 = fptoui float %4748 to i32
  %4751 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4749, i32 %4750, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = fadd fast float %4752, %4746
  %4756 = fadd fast float %4753, %4746
  %4757 = fadd fast float %4754, %4746
  %4758 = call float @dx.op.unary.f32(i32 22, float %4755)  ; Frc(value)
  %4759 = call float @dx.op.unary.f32(i32 22, float %4756)  ; Frc(value)
  %4760 = call float @dx.op.unary.f32(i32 22, float %4757)  ; Frc(value)
  %4761 = fmul fast float %4760, 0x401921FB60000000
  %4762 = call float @dx.op.unary.f32(i32 13, float %4761)  ; Sin(value)
  %4763 = call float @dx.op.unary.f32(i32 12, float %4761)  ; Cos(value)
  %4764 = fsub fast float -0.000000e+00, %4763
  %4765 = fmul fast float %4763, %4728
  %4766 = call float @dx.op.tertiary.f32(i32 46, float %4762, float %4729, float %4765)  ; FMad(a,b,c)
  %4767 = fmul fast float %4762, %4728
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4729, float %4767)  ; FMad(a,b,c)
  %4769 = fadd fast float %4766, %4758
  %4770 = fadd fast float %4768, %4759
  %4771 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4772 = bitcast float %4771 to i32
  %4773 = icmp eq i32 %4772, 0
  br i1 %4773, label %4812, label %4774

; <label>:4774                                    ; preds = %4677
  %4775 = add i32 %4772, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %78, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4781 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4782 = fsub fast float 1.000000e+00, %4671
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4784 = bitcast float %4671 to i32
  %4785 = sitofp i32 %4784 to float
  %4786 = fadd fast float %4785, 0xC1CFBF8940000000
  %4787 = fmul fast float %4781, %4786
  %4788 = fadd fast float %4787, 0x41CFBF8940000000
  %4789 = fptosi float %4788 to i32
  %4790 = bitcast i32 %4789 to float
  %4791 = bitcast float %4783 to i32
  %4792 = sitofp i32 %4791 to float
  %4793 = fadd fast float %4792, 0xC1CFBF8940000000
  %4794 = fmul fast float %4793, %4781
  %4795 = fadd fast float %4794, 0x41CFBF8940000000
  %4796 = fptosi float %4795 to i32
  %4797 = bitcast i32 %4796 to float
  %4798 = fmul fast float %4790, %4780
  %4799 = fmul fast float %4797, %4780
  %4800 = fsub fast float %4783, %4798
  %4801 = fadd fast float %4799, %4783
  %4802 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4804 = fsub fast float %4778, %4802
  %4805 = fsub fast float %4803, %4802
  %4806 = bitcast float %4805 to i32
  %4807 = sub nsw i32 2129859010, %4806
  %4808 = bitcast i32 %4807 to float
  %4809 = fmul fast float %4808, %4804
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fcmp fast olt float %4810, 0x3F70101020000000
  br i1 %4811, label %4950, label %4812

; <label>:4812                                    ; preds = %4774, %4677
  %4813 = phi float [ %4810, %4774 ], [ %4671, %4677 ]
  %4814 = fmul fast float %4813, %4680
  %4815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.i32 %4815, 1
  %4817 = extractvalue %dx.types.CBufRet.i32 %4815, 0
  %4818 = add i32 %4817, 0
  %4819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4819, %dx.types.Handle %77, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.ResRet.f32 %4820, 3
  %4825 = and i32 %4816, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = lshr i32 %4816, 8
  %4828 = and i32 %4827, 255
  %4829 = uitofp i32 %4828 to float
  %4830 = fmul fast float %4824, %4826
  %4831 = fadd fast float %4830, %4829
  %4832 = fmul fast float %4831, 0x3F70101000000000
  %4833 = fadd fast float %4832, 0xBFB99999A0000000
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, 0x3FF1C71C80000000
  %4836 = call float @dx.op.binary.f32(i32 36, float %4832, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4837 = fsub fast float 1.000000e+00, %4835
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4838, %4821
  %4840 = fmul fast float %4838, %4822
  %4841 = fmul fast float %4838, %4823
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = fmul fast float %4835, %4821
  %4846 = fmul fast float %4835, %4822
  %4847 = fmul fast float %4835, %4823
  %4848 = fadd fast float %4845, %4836
  %4849 = fadd fast float %4846, %4836
  %4850 = fadd fast float %4847, %4836
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.i32 %4854, 3
  %4856 = extractvalue %dx.types.CBufRet.i32 %4854, 2
  %4857 = add i32 %4856, 0
  %4858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4858, %dx.types.Handle %77, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4733, float undef, float %4736, float %4737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4864 = and i32 %4855, 255
  %4865 = uitofp i32 %4864 to float
  %4866 = lshr i32 %4855, 8
  %4867 = and i32 %4866, 255
  %4868 = uitofp i32 %4867 to float
  %4869 = lshr i32 %4855, 16
  %4870 = and i32 %4869, 255
  %4871 = uitofp i32 %4870 to float
  %4872 = fmul fast float %4871, 0x3F70101000000000
  %4873 = fmul fast float %4860, %4865
  %4874 = fadd fast float %4873, %4868
  %4875 = fmul fast float %4874, 0x3F70101000000000
  %4876 = fadd fast float %4861, -5.000000e-01
  %4877 = fadd fast float %4863, -5.000000e-01
  %4878 = fmul fast float %4876, %4872
  %4879 = fmul fast float %4877, %4872
  %4880 = fadd fast float %4878, 5.000000e-01
  %4881 = fadd fast float %4879, 5.000000e-01
  %4882 = fmul fast float %4880, 2.000000e+00
  %4883 = fadd fast float %4882, -1.000000e+00
  %4884 = fmul fast float %4881, 2.000000e+00
  %4885 = fadd fast float %4884, -1.000000e+00
  %4886 = fadd fast float %4883, %4885
  %4887 = fmul fast float %4886, 5.000000e-01
  %4888 = fsub fast float %4883, %4885
  %4889 = fmul fast float %4888, 5.000000e-01
  %4890 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4893 = fsub fast float %4891, %4892
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4889, float %4893, float %4887, float %4889, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4887, %4895
  %4897 = fmul fast float %4889, %4895
  %4898 = select i1 %4725, i32 %4715, i32 %4716
  %4899 = select i1 %4723, i32 %4714, i32 %4898
  %4900 = sitofp i32 %4899 to float
  %4901 = fmul fast float %4893, %4900
  %4902 = fmul fast float %4901, %4895
  %4903 = select i1 %4725, float %4902, float %4897
  %4904 = select i1 %4725, float %4897, float %4902
  %4905 = select i1 %4723, float %4902, float %4896
  %4906 = select i1 %4723, float %4897, float %4903
  %4907 = select i1 %4723, float %4896, float %4904
  %4908 = fsub fast float %4842, %4275
  %4909 = fsub fast float %4843, %4276
  %4910 = fsub fast float %4844, %4277
  %4911 = fmul fast float %4908, %4814
  %4912 = fmul fast float %4909, %4814
  %4913 = fmul fast float %4910, %4814
  %4914 = fadd fast float %4911, %4275
  %4915 = fadd fast float %4912, %4276
  %4916 = fadd fast float %4913, %4277
  %4917 = fsub fast float %4851, %4194
  %4918 = fsub fast float %4852, %4195
  %4919 = fsub fast float %4853, %4196
  %4920 = fmul fast float %4917, %4814
  %4921 = fmul fast float %4918, %4814
  %4922 = fmul fast float %4919, %4814
  %4923 = fadd fast float %4920, %4194
  %4924 = fadd fast float %4921, %4195
  %4925 = fadd fast float %4922, %4196
  %4926 = fadd fast float %4905, %4155
  %4927 = fadd fast float %4906, %4156
  %4928 = fadd fast float %4907, %4157
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %4928, float %4926, float %4927, float %4928)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 25, float %4929)  ; Rsqrt(value)
  %4931 = fmul fast float %4926, %4930
  %4932 = fmul fast float %4927, %4930
  %4933 = fmul fast float %4928, %4930
  %4934 = fsub fast float %4931, %4155
  %4935 = fsub fast float %4932, %4156
  %4936 = fsub fast float %4933, %4157
  %4937 = fmul fast float %4934, %4814
  %4938 = fmul fast float %4935, %4814
  %4939 = fmul fast float %4936, %4814
  %4940 = fadd fast float %4937, %4155
  %4941 = fadd fast float %4938, %4156
  %4942 = fadd fast float %4939, %4157
  %4943 = call float @dx.op.binary.f32(i32 36, float %4170, float %4862)  ; FMin(a,b)
  %4944 = fsub fast float %4943, %4170
  %4945 = fmul fast float %4944, %4814
  %4946 = fadd fast float %4945, %4170
  %4947 = fsub fast float %4875, %4197
  %4948 = fmul fast float %4947, %4814
  %4949 = fadd fast float %4948, %4197
  br label %4950

; <label>:4950                                    ; preds = %4812, %4774, %4676
  %4951 = phi float [ %4914, %4812 ], [ %4275, %4774 ], [ %4275, %4676 ]
  %4952 = phi float [ %4915, %4812 ], [ %4276, %4774 ], [ %4276, %4676 ]
  %4953 = phi float [ %4916, %4812 ], [ %4277, %4774 ], [ %4277, %4676 ]
  %4954 = phi float [ %4940, %4812 ], [ %4155, %4774 ], [ %4155, %4676 ]
  %4955 = phi float [ %4941, %4812 ], [ %4156, %4774 ], [ %4156, %4676 ]
  %4956 = phi float [ %4942, %4812 ], [ %4157, %4774 ], [ %4157, %4676 ]
  %4957 = phi float [ %4923, %4812 ], [ %4194, %4774 ], [ %4194, %4676 ]
  %4958 = phi float [ %4924, %4812 ], [ %4195, %4774 ], [ %4195, %4676 ]
  %4959 = phi float [ %4925, %4812 ], [ %4196, %4774 ], [ %4196, %4676 ]
  %4960 = phi float [ %4949, %4812 ], [ %4197, %4774 ], [ %4197, %4676 ]
  %4961 = phi float [ %4946, %4812 ], [ %4170, %4774 ], [ %4170, %4676 ]
  br i1 %4674, label %4962, label %5235

; <label>:4962                                    ; preds = %4950
  %4963 = call float @dx.op.unary.f32(i32 23, float %4961)  ; Log(value)
  %4964 = fmul fast float %4963, 4.000000e+00
  %4965 = call float @dx.op.unary.f32(i32 21, float %4964)  ; Exp(value)
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = fmul fast float %4967, %34
  %4969 = fmul fast float %4967, %35
  %4970 = fmul fast float %4967, %36
  %4971 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4972 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4973 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4974 = call float @dx.op.unary.f32(i32 23, float %4971)  ; Log(value)
  %4975 = call float @dx.op.unary.f32(i32 23, float %4972)  ; Log(value)
  %4976 = call float @dx.op.unary.f32(i32 23, float %4973)  ; Log(value)
  %4977 = fmul fast float %4974, 4.000000e+00
  %4978 = fmul fast float %4975, 4.000000e+00
  %4979 = fmul fast float %4976, 4.000000e+00
  %4980 = call float @dx.op.unary.f32(i32 21, float %4977)  ; Exp(value)
  %4981 = call float @dx.op.unary.f32(i32 21, float %4978)  ; Exp(value)
  %4982 = call float @dx.op.unary.f32(i32 21, float %4979)  ; Exp(value)
  %4983 = fadd fast float %4981, %4980
  %4984 = fadd fast float %4983, %4982
  %4985 = fdiv fast float 1.000000e+00, %4984
  %4986 = fmul fast float %4985, %4980
  %4987 = fcmp fast ogt float %43, 0.000000e+00
  %4988 = fcmp fast ogt float %44, 0.000000e+00
  %4989 = fcmp fast ogt float %45, 0.000000e+00
  %4990 = fcmp fast olt float %43, 0.000000e+00
  %4991 = fcmp fast olt float %44, 0.000000e+00
  %4992 = fcmp fast olt float %45, 0.000000e+00
  %4993 = zext i1 %4987 to i32
  %4994 = zext i1 %4988 to i32
  %4995 = zext i1 %4989 to i32
  %4996 = zext i1 %4990 to i32
  %4997 = zext i1 %4991 to i32
  %4998 = zext i1 %4992 to i32
  %4999 = sub nsw i32 %4993, %4996
  %5000 = sub nsw i32 %4994, %4997
  %5001 = sub nsw i32 %4995, %4998
  %5002 = call float @dx.op.unary.f32(i32 83, float %4968)  ; DerivCoarseX(value)
  %5003 = call float @dx.op.unary.f32(i32 83, float %4969)  ; DerivCoarseX(value)
  %5004 = call float @dx.op.unary.f32(i32 83, float %4970)  ; DerivCoarseX(value)
  %5005 = call float @dx.op.unary.f32(i32 84, float %4968)  ; DerivCoarseY(value)
  %5006 = call float @dx.op.unary.f32(i32 84, float %4969)  ; DerivCoarseY(value)
  %5007 = call float @dx.op.unary.f32(i32 84, float %4970)  ; DerivCoarseY(value)
  %5008 = fcmp fast ole float %210, %4986
  %5009 = fmul fast float %4985, %4983
  %5010 = fcmp fast ole float %210, %5009
  %5011 = select i1 %5010, float %4970, float %4968
  %5012 = select i1 %5010, float %4968, float %4969
  %5013 = select i1 %5008, float %4969, float %5011
  %5014 = select i1 %5008, float %4970, float %5012
  %5015 = select i1 %5010, float %5004, float %5002
  %5016 = select i1 %5010, float %5002, float %5003
  %5017 = select i1 %5008, float %5003, float %5015
  %5018 = select i1 %5008, float %5004, float %5016
  %5019 = select i1 %5010, float %5007, float %5005
  %5020 = select i1 %5010, float %5005, float %5006
  %5021 = select i1 %5008, float %5006, float %5019
  %5022 = select i1 %5008, float %5007, float %5020
  %5023 = call float @dx.op.unary.f32(i32 27, float %5013)  ; Round_ni(value)
  %5024 = call float @dx.op.unary.f32(i32 27, float %5014)  ; Round_ni(value)
  %5025 = fptosi float %5023 to i32
  %5026 = fptosi float %5024 to i32
  %5027 = xor i32 %5026, %5025
  %5028 = sitofp i32 %5027 to float
  %5029 = fptosi float %5028 to i32
  %5030 = sitofp i32 %5029 to float
  %5031 = fmul fast float %5030, 0x3FE3C6EF40000000
  %5032 = frem fast float %5023, 2.560000e+02
  %5033 = frem fast float %5024, 2.560000e+02
  %5034 = fptoui float %5032 to i32
  %5035 = fptoui float %5033 to i32
  %5036 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5034, i32 %5035, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = fadd fast float %5037, %5031
  %5041 = fadd fast float %5038, %5031
  %5042 = fadd fast float %5039, %5031
  %5043 = call float @dx.op.unary.f32(i32 22, float %5040)  ; Frc(value)
  %5044 = call float @dx.op.unary.f32(i32 22, float %5041)  ; Frc(value)
  %5045 = call float @dx.op.unary.f32(i32 22, float %5042)  ; Frc(value)
  %5046 = fmul fast float %5045, 0x401921FB60000000
  %5047 = call float @dx.op.unary.f32(i32 13, float %5046)  ; Sin(value)
  %5048 = call float @dx.op.unary.f32(i32 12, float %5046)  ; Cos(value)
  %5049 = fsub fast float -0.000000e+00, %5048
  %5050 = fmul fast float %5048, %5013
  %5051 = call float @dx.op.tertiary.f32(i32 46, float %5047, float %5014, float %5050)  ; FMad(a,b,c)
  %5052 = fmul fast float %5047, %5013
  %5053 = call float @dx.op.tertiary.f32(i32 46, float %5049, float %5014, float %5052)  ; FMad(a,b,c)
  %5054 = fadd fast float %5051, %5043
  %5055 = fadd fast float %5053, %5044
  %5056 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %5057 = bitcast float %5056 to i32
  %5058 = icmp eq i32 %5057, 0
  br i1 %5058, label %5097, label %5059

; <label>:5059                                    ; preds = %4962
  %5060 = add i32 %5057, 0
  %5061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5062 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5061, %dx.types.Handle %78, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 0
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5067 = fsub fast float 1.000000e+00, %4672
  %5068 = call float @dx.op.binary.f32(i32 35, float %5067, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5069 = bitcast float %4672 to i32
  %5070 = sitofp i32 %5069 to float
  %5071 = fadd fast float %5070, 0xC1CFBF8940000000
  %5072 = fmul fast float %5066, %5071
  %5073 = fadd fast float %5072, 0x41CFBF8940000000
  %5074 = fptosi float %5073 to i32
  %5075 = bitcast i32 %5074 to float
  %5076 = bitcast float %5068 to i32
  %5077 = sitofp i32 %5076 to float
  %5078 = fadd fast float %5077, 0xC1CFBF8940000000
  %5079 = fmul fast float %5078, %5066
  %5080 = fadd fast float %5079, 0x41CFBF8940000000
  %5081 = fptosi float %5080 to i32
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5075, %5065
  %5084 = fmul fast float %5082, %5065
  %5085 = fsub fast float %5068, %5083
  %5086 = fadd fast float %5084, %5068
  %5087 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5089 = fsub fast float %5063, %5087
  %5090 = fsub fast float %5088, %5087
  %5091 = bitcast float %5090 to i32
  %5092 = sub nsw i32 2129859010, %5091
  %5093 = bitcast i32 %5092 to float
  %5094 = fmul fast float %5093, %5089
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fcmp fast olt float %5095, 0x3F70101020000000
  br i1 %5096, label %5235, label %5097

; <label>:5097                                    ; preds = %5059, %4962
  %5098 = phi float [ %5095, %5059 ], [ %4672, %4962 ]
  %5099 = fmul fast float %5098, %4965
  %5100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.i32 %5100, 1
  %5102 = extractvalue %dx.types.CBufRet.i32 %5100, 0
  %5103 = add i32 %5102, 0
  %5104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5105 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5104, %dx.types.Handle %77, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = extractvalue %dx.types.ResRet.f32 %5105, 3
  %5110 = and i32 %5101, 255
  %5111 = uitofp i32 %5110 to float
  %5112 = lshr i32 %5101, 8
  %5113 = and i32 %5112, 255
  %5114 = uitofp i32 %5113 to float
  %5115 = fmul fast float %5109, %5111
  %5116 = fadd fast float %5115, %5114
  %5117 = fmul fast float %5116, 0x3F70101000000000
  %5118 = fadd fast float %5117, 0xBFB99999A0000000
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %5119, 0x3FF1C71C80000000
  %5121 = call float @dx.op.binary.f32(i32 36, float %5117, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5122 = fsub fast float 1.000000e+00, %5120
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %5123, %5106
  %5125 = fmul fast float %5123, %5107
  %5126 = fmul fast float %5123, %5108
  %5127 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5128 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5129 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5130 = fmul fast float %5120, %5106
  %5131 = fmul fast float %5120, %5107
  %5132 = fmul fast float %5120, %5108
  %5133 = fadd fast float %5130, %5121
  %5134 = fadd fast float %5131, %5121
  %5135 = fadd fast float %5132, %5121
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.i32 %5139, 3
  %5141 = extractvalue %dx.types.CBufRet.i32 %5139, 2
  %5142 = add i32 %5141, 0
  %5143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5144 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5143, %dx.types.Handle %77, float %5054, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float %5017, float %5018, float undef, float %5021, float %5022, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5145 = extractvalue %dx.types.ResRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.ResRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.ResRet.f32 %5144, 2
  %5148 = extractvalue %dx.types.ResRet.f32 %5144, 3
  %5149 = and i32 %5140, 255
  %5150 = uitofp i32 %5149 to float
  %5151 = lshr i32 %5140, 8
  %5152 = and i32 %5151, 255
  %5153 = uitofp i32 %5152 to float
  %5154 = lshr i32 %5140, 16
  %5155 = and i32 %5154, 255
  %5156 = uitofp i32 %5155 to float
  %5157 = fmul fast float %5156, 0x3F70101000000000
  %5158 = fmul fast float %5145, %5150
  %5159 = fadd fast float %5158, %5153
  %5160 = fmul fast float %5159, 0x3F70101000000000
  %5161 = fadd fast float %5146, -5.000000e-01
  %5162 = fadd fast float %5148, -5.000000e-01
  %5163 = fmul fast float %5161, %5157
  %5164 = fmul fast float %5162, %5157
  %5165 = fadd fast float %5163, 5.000000e-01
  %5166 = fadd fast float %5164, 5.000000e-01
  %5167 = fmul fast float %5165, 2.000000e+00
  %5168 = fadd fast float %5167, -1.000000e+00
  %5169 = fmul fast float %5166, 2.000000e+00
  %5170 = fadd fast float %5169, -1.000000e+00
  %5171 = fadd fast float %5168, %5170
  %5172 = fmul fast float %5171, 5.000000e-01
  %5173 = fsub fast float %5168, %5170
  %5174 = fmul fast float %5173, 5.000000e-01
  %5175 = call float @dx.op.unary.f32(i32 6, float %5172)  ; FAbs(value)
  %5176 = fsub fast float 1.000000e+00, %5175
  %5177 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5178 = fsub fast float %5176, %5177
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5174, float %5178, float %5172, float %5174, float %5178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 25, float %5179)  ; Rsqrt(value)
  %5181 = fmul fast float %5172, %5180
  %5182 = fmul fast float %5174, %5180
  %5183 = select i1 %5010, i32 %5000, i32 %5001
  %5184 = select i1 %5008, i32 %4999, i32 %5183
  %5185 = sitofp i32 %5184 to float
  %5186 = fmul fast float %5178, %5185
  %5187 = fmul fast float %5186, %5180
  %5188 = select i1 %5010, float %5187, float %5182
  %5189 = select i1 %5010, float %5182, float %5187
  %5190 = select i1 %5008, float %5187, float %5181
  %5191 = select i1 %5008, float %5182, float %5188
  %5192 = select i1 %5008, float %5181, float %5189
  %5193 = fsub fast float %5127, %4951
  %5194 = fsub fast float %5128, %4952
  %5195 = fsub fast float %5129, %4953
  %5196 = fmul fast float %5193, %5099
  %5197 = fmul fast float %5194, %5099
  %5198 = fmul fast float %5195, %5099
  %5199 = fadd fast float %5196, %4951
  %5200 = fadd fast float %5197, %4952
  %5201 = fadd fast float %5198, %4953
  %5202 = fsub fast float %5136, %4957
  %5203 = fsub fast float %5137, %4958
  %5204 = fsub fast float %5138, %4959
  %5205 = fmul fast float %5202, %5099
  %5206 = fmul fast float %5203, %5099
  %5207 = fmul fast float %5204, %5099
  %5208 = fadd fast float %5205, %4957
  %5209 = fadd fast float %5206, %4958
  %5210 = fadd fast float %5207, %4959
  %5211 = fadd fast float %5190, %4954
  %5212 = fadd fast float %5191, %4955
  %5213 = fadd fast float %5192, %4956
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float %5211, float %5212, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.unary.f32(i32 25, float %5214)  ; Rsqrt(value)
  %5216 = fmul fast float %5211, %5215
  %5217 = fmul fast float %5212, %5215
  %5218 = fmul fast float %5213, %5215
  %5219 = fsub fast float %5216, %4954
  %5220 = fsub fast float %5217, %4955
  %5221 = fsub fast float %5218, %4956
  %5222 = fmul fast float %5219, %5099
  %5223 = fmul fast float %5220, %5099
  %5224 = fmul fast float %5221, %5099
  %5225 = fadd fast float %5222, %4954
  %5226 = fadd fast float %5223, %4955
  %5227 = fadd fast float %5224, %4956
  %5228 = call float @dx.op.binary.f32(i32 36, float %4961, float %5147)  ; FMin(a,b)
  %5229 = fsub fast float %5228, %4961
  %5230 = fmul fast float %5229, %5099
  %5231 = fadd fast float %5230, %4961
  %5232 = fsub fast float %5160, %4960
  %5233 = fmul fast float %5232, %5099
  %5234 = fadd fast float %5233, %4960
  br label %5235

; <label>:5235                                    ; preds = %5097, %5059, %4950, %4666
  %5236 = phi float [ %5199, %5097 ], [ %4951, %5059 ], [ %4951, %4950 ], [ %4275, %4666 ]
  %5237 = phi float [ %5200, %5097 ], [ %4952, %5059 ], [ %4952, %4950 ], [ %4276, %4666 ]
  %5238 = phi float [ %5201, %5097 ], [ %4953, %5059 ], [ %4953, %4950 ], [ %4277, %4666 ]
  %5239 = phi float [ %5225, %5097 ], [ %4954, %5059 ], [ %4954, %4950 ], [ %4155, %4666 ]
  %5240 = phi float [ %5226, %5097 ], [ %4955, %5059 ], [ %4955, %4950 ], [ %4156, %4666 ]
  %5241 = phi float [ %5227, %5097 ], [ %4956, %5059 ], [ %4956, %4950 ], [ %4157, %4666 ]
  %5242 = phi float [ %5208, %5097 ], [ %4957, %5059 ], [ %4957, %4950 ], [ %4194, %4666 ]
  %5243 = phi float [ %5209, %5097 ], [ %4958, %5059 ], [ %4958, %4950 ], [ %4195, %4666 ]
  %5244 = phi float [ %5210, %5097 ], [ %4959, %5059 ], [ %4959, %4950 ], [ %4196, %4666 ]
  %5245 = phi float [ %5234, %5097 ], [ %4960, %5059 ], [ %4960, %4950 ], [ %4197, %4666 ]
  %5246 = phi float [ %5231, %5097 ], [ %4961, %5059 ], [ %4961, %4950 ], [ %4170, %4666 ]
  %5247 = fcmp fast une float %4670, 0.000000e+00
  %5248 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.unary.f32(i32 25, float %5248)  ; Rsqrt(value)
  br i1 %5247, label %5257, label %5250

; <label>:5250                                    ; preds = %5235
  %5251 = fmul fast float %5249, %160
  %5252 = fmul fast float %5249, %161
  %5253 = fmul fast float %5249, %162
  %5254 = fsub fast float -0.000000e+00, %5251
  %5255 = fsub fast float -0.000000e+00, %5252
  %5256 = fsub fast float -0.000000e+00, %5253
  br label %5424

; <label>:5257                                    ; preds = %5235
  %5258 = fmul fast float %160, %5249
  %5259 = fsub fast float -0.000000e+00, %5258
  %5260 = fmul fast float %161, %5249
  %5261 = fsub fast float -0.000000e+00, %5260
  %5262 = fmul fast float %162, %5249
  %5263 = fsub fast float -0.000000e+00, %5262
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5261, float %5263, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = fmul fast float %4670, 2.500000e+00
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %4670, 0x4013FFFFE0000000
  %5268 = fadd fast float %5267, 0xBFFFFFFFE0000000
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %4670, 0x4004000020000000
  %5271 = fadd fast float %5270, 0xBFF8000040000000
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %4176, 1.000000e+01
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5274, 2.000000e+00
  %5276 = fsub fast float 3.000000e+00, %5275
  %5277 = fmul fast float %5274, %5274
  %5278 = fmul fast float %5277, %5276
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fsub fast float 0x3FE3333340000000, %5245
  %5281 = fmul fast float %5280, 0x400AAAAAA0000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %5279, %5282
  %5284 = fmul fast float %5236, 0x3FEA2B8620000000
  %5285 = fmul fast float %5237, 0x3FEA2B8620000000
  %5286 = fmul fast float %5238, 0x3FEA2B8620000000
  %5287 = fadd fast float %5284, 0x3FC81DFBA0000000
  %5288 = fmul fast float %5287, %5236
  %5289 = fadd fast float %5288, 0x3F910E6020000000
  %5290 = fadd fast float %5285, 0x3FC81DFBA0000000
  %5291 = fmul fast float %5290, %5237
  %5292 = fadd fast float %5291, 0x3F910E6020000000
  %5293 = fadd fast float %5286, 0x3FC81DFBA0000000
  %5294 = fmul fast float %5293, %5238
  %5295 = fadd fast float %5294, 0x3F910E6020000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = fsub fast float %5296, %5236
  %5300 = fsub fast float %5297, %5237
  %5301 = fsub fast float %5298, %5238
  %5302 = fmul fast float %5299, %5266
  %5303 = fmul fast float %5302, %5283
  %5304 = fmul fast float %5300, %5266
  %5305 = fmul fast float %5304, %5283
  %5306 = fmul fast float %5301, %5266
  %5307 = fmul fast float %5306, %5283
  %5308 = fadd fast float %5303, %5236
  %5309 = fadd fast float %5305, %5237
  %5310 = fadd fast float %5307, %5238
  %5311 = fmul fast float %5246, %5246
  %5312 = fmul fast float %5311, %5311
  %5313 = fadd fast float %5269, 1.000000e+00
  %5314 = fsub fast float %5313, %5283
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fsub fast float 1.000000e+00, %5312
  %5319 = call float @dx.op.binary.f32(i32 36, float %5315, float %5318)  ; FMin(a,b)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5319, float %5320)  ; FMax(a,b)
  %5322 = fadd fast float %5317, 0xBFE4CCCCC0000000
  %5323 = fmul fast float %5322, 0x4006DB6DA0000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = fsub fast float 3.000000e+00, %5325
  %5327 = bitcast float %5242 to i32
  %5328 = ashr i32 %5327, 1
  %5329 = add nsw i32 %5328, 532487669
  %5330 = bitcast i32 %5329 to float
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5334, 2.000000e+00
  %5336 = bitcast float %5243 to i32
  %5337 = ashr i32 %5336, 1
  %5338 = add nsw i32 %5337, 532487669
  %5339 = bitcast i32 %5338 to float
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5343, 2.000000e+00
  %5345 = bitcast float %5244 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fsub fast float 0x4002A9FBE0000000, %5335
  %5355 = fadd fast float %5335, 0x3FD54FDF00000000
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5359, %5359
  %5361 = fsub fast float 0x4002A9FBE0000000, %5344
  %5362 = fadd fast float %5344, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 0x4002A9FBE0000000, %5353
  %5369 = fadd fast float %5353, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5360)  ; FMax(a,b)
  %5376 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5377 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5378 = fsub fast float 1.000000e+00, %5264
  %5379 = fadd fast float %5378, %5279
  %5380 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5381 = fsub fast float 1.000000e+00, %4651
  %5382 = fmul fast float %5321, %5381
  %5383 = fmul fast float %5324, %5324
  %5384 = fmul fast float %5383, %5382
  %5385 = fmul fast float %5384, %5326
  %5386 = fmul fast float %5381, 0xBFE99999A0000000
  %5387 = fmul fast float %5386, %5266
  %5388 = fmul fast float %5387, %5283
  %5389 = fadd fast float %5388, 1.000000e+00
  %5390 = fadd fast float %5245, -1.000000e+00
  %5391 = fmul fast float %5389, %5390
  %5392 = fadd fast float %5391, 1.000000e+00
  %5393 = fsub fast float %5375, %5242
  %5394 = fsub fast float %5376, %5243
  %5395 = fsub fast float %5377, %5244
  %5396 = fmul fast float %5385, %5393
  %5397 = fmul fast float %5385, %5394
  %5398 = fmul fast float %5385, %5395
  %5399 = fadd fast float %5396, %5242
  %5400 = fadd fast float %5397, %5243
  %5401 = fadd fast float %5398, %5244
  %5402 = fsub fast float %88, %5239
  %5403 = fsub fast float %89, %5240
  %5404 = fsub fast float %90, %5241
  %5405 = fmul fast float %5385, %5402
  %5406 = fmul fast float %5385, %5403
  %5407 = fmul fast float %5385, %5404
  %5408 = fadd fast float %5405, %5239
  %5409 = fadd fast float %5406, %5240
  %5410 = fadd fast float %5407, %5241
  %5411 = fmul fast float %5385, %5380
  %5412 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5411, %5413
  %5415 = fadd fast float %5414, %5412
  %5416 = fsub fast float 1.000000e+00, %5246
  %5417 = fmul fast float %5385, %5416
  %5418 = fadd fast float %5417, %5246
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = call float @dx.op.unary.f32(i32 25, float %5419)  ; Rsqrt(value)
  %5421 = fmul fast float %5408, %5420
  %5422 = fmul fast float %5409, %5420
  %5423 = fmul fast float %5410, %5420
  br label %5424

; <label>:5424                                    ; preds = %5257, %5250
  %5425 = phi float [ %5256, %5250 ], [ %5263, %5257 ]
  %5426 = phi float [ %5255, %5250 ], [ %5261, %5257 ]
  %5427 = phi float [ %5254, %5250 ], [ %5259, %5257 ]
  %5428 = phi float [ %5253, %5250 ], [ %5262, %5257 ]
  %5429 = phi float [ %5252, %5250 ], [ %5260, %5257 ]
  %5430 = phi float [ %5251, %5250 ], [ %5258, %5257 ]
  %5431 = phi float [ %5236, %5250 ], [ %5308, %5257 ]
  %5432 = phi float [ %5237, %5250 ], [ %5309, %5257 ]
  %5433 = phi float [ %5238, %5250 ], [ %5310, %5257 ]
  %5434 = phi float [ %5239, %5250 ], [ %5421, %5257 ]
  %5435 = phi float [ %5240, %5250 ], [ %5422, %5257 ]
  %5436 = phi float [ %5241, %5250 ], [ %5423, %5257 ]
  %5437 = phi float [ %5242, %5250 ], [ %5399, %5257 ]
  %5438 = phi float [ %5243, %5250 ], [ %5400, %5257 ]
  %5439 = phi float [ %5244, %5250 ], [ %5401, %5257 ]
  %5440 = phi float [ %5245, %5250 ], [ %5415, %5257 ]
  %5441 = phi float [ %5246, %5250 ], [ %5418, %5257 ]
  %5442 = select i1 %199, float 0.000000e+00, float %5439
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5427, float %5426, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5429, float %5428, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = fmul fast float %5445, 2.000000e+00
  %5447 = fmul fast float %5446, %5434
  %5448 = fmul fast float %5446, %5435
  %5449 = fmul fast float %5446, %5436
  %5450 = fsub fast float %5430, %5447
  %5451 = fsub fast float %5429, %5448
  %5452 = fsub fast float %5428, %5449
  %5453 = call float @dx.op.binary.f32(i32 36, float %5441, float 1.000000e+00)  ; FMin(a,b)
  %5454 = fsub fast float 1.000000e+00, %5441
  %5455 = bitcast float %5454 to i32
  %5456 = sub nsw i32 2129859010, %5455
  %5457 = bitcast i32 %5456 to float
  %5458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5459 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = fcmp fast oeq float %5459, 0.000000e+00
  %5461 = fcmp fast oeq float %5458, 0.000000e+00
  %5462 = or i1 %5461, %5460
  br i1 %5462, label %5492, label %5463

; <label>:5463                                    ; preds = %5424
  %5464 = fsub fast float -0.000000e+00, %61
  %5465 = fsub fast float -0.000000e+00, %59
  %5466 = call float @dx.op.unary.f32(i32 24, float %5459)  ; Sqrt(value)
  %5467 = fdiv fast float %5466, %5458
  %5468 = fcmp fast ogt float %5467, 0x3FFB6F8900000000
  %5469 = select i1 %5468, float 0x3FFB6F8900000000, float %5467
  %5470 = fmul fast float %5469, 0x3FE8A23460000000
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5472 = call float @dx.op.binary.f32(i32 35, float %5469, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5473 = fmul fast float %5471, %5458
  %5474 = fmul fast float %5472, 0x3FF279A740000000
  %5475 = fadd fast float %5474, -1.000000e+00
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %60, float %5464, float %5465, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 25, float %5476)  ; Rsqrt(value)
  %5478 = fmul fast float %5477, %5464
  %5479 = fmul fast float %5477, %5465
  %5480 = fmul fast float %5477, %60
  %5481 = fmul fast float %5475, %5475
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = fmul fast float %5472, 0x40005F8BE0000000
  %5484 = fsub fast float 0x400C5BF8A0000000, %5483
  %5485 = fdiv fast float %5473, %5484
  %5486 = fmul fast float %5485, 0x3FEE31C3C0000000
  %5487 = fmul fast float %5486, %5482
  %5488 = fmul fast float %5472, 0x3FDACB7480000000
  %5489 = fadd fast float %5488, 0xBFD7347680000000
  %5490 = fmul fast float %5489, %5485
  %5491 = fmul fast float %5490, %5482
  br label %5492

; <label>:5492                                    ; preds = %5463, %5424
  %5493 = phi float [ %5478, %5463 ], [ 0.000000e+00, %5424 ]
  %5494 = phi float [ %5479, %5463 ], [ 0.000000e+00, %5424 ]
  %5495 = phi float [ %5480, %5463 ], [ 0.000000e+00, %5424 ]
  %5496 = phi float [ %5487, %5463 ], [ 0.000000e+00, %5424 ]
  %5497 = phi float [ %5491, %5463 ], [ 0.000000e+00, %5424 ]
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fmul fast float %5498, 0x3FDF454380000000
  %5500 = fmul fast float %5498, %5498
  %5501 = fmul fast float %5500, 0x3FEE471020000000
  %5502 = fadd fast float %5501, 0xBFD42F6020000000
  %5503 = fmul fast float %5458, 0x3FD20DD760000000
  %5504 = fmul fast float %5502, %5497
  %5505 = fadd fast float %5504, %5503
  %5506 = fmul fast float %5499, %5496
  %5507 = fadd fast float %5505, %5506
  %5508 = fsub fast float %5505, %5506
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %5495, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = fmul fast float %5509, 0x3FDF454380000000
  %5511 = fmul fast float %5509, %5509
  %5512 = fmul fast float %5511, 0x3FEE471020000000
  %5513 = fadd fast float %5512, 0xBFD42F6020000000
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5496, float %5497, float 0x3FD20DD760000000, float %5510, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5516 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fcmp fast oeq float %5516, 0.000000e+00
  %5518 = fcmp fast oeq float %5515, 0.000000e+00
  %5519 = or i1 %5518, %5517
  br i1 %5519, label %5549, label %5520

; <label>:5520                                    ; preds = %5492
  %5521 = fsub fast float -0.000000e+00, %57
  %5522 = fsub fast float -0.000000e+00, %55
  %5523 = call float @dx.op.unary.f32(i32 24, float %5516)  ; Sqrt(value)
  %5524 = fdiv fast float %5523, %5515
  %5525 = fcmp fast ogt float %5524, 0x3FFB6F8900000000
  %5526 = select i1 %5525, float 0x3FFB6F8900000000, float %5524
  %5527 = fmul fast float %5526, 0x3FE8A23460000000
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5526, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5530 = fmul fast float %5528, %5515
  %5531 = fmul fast float %5529, 0x3FF279A740000000
  %5532 = fadd fast float %5531, -1.000000e+00
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5522, float %56, float %5521, float %5522, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.unary.f32(i32 25, float %5533)  ; Rsqrt(value)
  %5535 = fmul fast float %5534, %5521
  %5536 = fmul fast float %5534, %5522
  %5537 = fmul fast float %5534, %56
  %5538 = fmul fast float %5532, %5532
  %5539 = fsub fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5529, 0x40005F8BE0000000
  %5541 = fsub fast float 0x400C5BF8A0000000, %5540
  %5542 = fdiv fast float %5530, %5541
  %5543 = fmul fast float %5542, 0x3FEE31C3C0000000
  %5544 = fmul fast float %5543, %5539
  %5545 = fmul fast float %5529, 0x3FDACB7480000000
  %5546 = fadd fast float %5545, 0xBFD7347680000000
  %5547 = fmul fast float %5546, %5542
  %5548 = fmul fast float %5547, %5539
  br label %5549

; <label>:5549                                    ; preds = %5520, %5492
  %5550 = phi float [ %5535, %5520 ], [ 0.000000e+00, %5492 ]
  %5551 = phi float [ %5536, %5520 ], [ 0.000000e+00, %5492 ]
  %5552 = phi float [ %5537, %5520 ], [ 0.000000e+00, %5492 ]
  %5553 = phi float [ %5544, %5520 ], [ 0.000000e+00, %5492 ]
  %5554 = phi float [ %5548, %5520 ], [ 0.000000e+00, %5492 ]
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %5552, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = fmul fast float %5555, 0x3FDF454380000000
  %5557 = fmul fast float %5555, %5555
  %5558 = fmul fast float %5557, 0x3FEE471020000000
  %5559 = fadd fast float %5558, 0xBFD42F6020000000
  %5560 = fmul fast float %5515, 0x3FD20DD760000000
  %5561 = fmul fast float %5559, %5554
  %5562 = fadd fast float %5561, %5560
  %5563 = fmul fast float %5556, %5553
  %5564 = fadd fast float %5562, %5563
  %5565 = fsub fast float %5562, %5563
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %5552, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = fmul fast float %5566, 0x3FDF454380000000
  %5568 = fmul fast float %5566, %5566
  %5569 = fmul fast float %5568, 0x3FEE471020000000
  %5570 = fadd fast float %5569, 0xBFD42F6020000000
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5553, float %5554, float 0x3FD20DD760000000, float %5567, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5573 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fcmp fast oeq float %5573, 0.000000e+00
  %5575 = fcmp fast oeq float %5572, 0.000000e+00
  %5576 = or i1 %5575, %5574
  br i1 %5576, label %5606, label %5577

; <label>:5577                                    ; preds = %5549
  %5578 = fsub fast float -0.000000e+00, %53
  %5579 = fsub fast float -0.000000e+00, %51
  %5580 = call float @dx.op.unary.f32(i32 24, float %5573)  ; Sqrt(value)
  %5581 = fdiv fast float %5580, %5572
  %5582 = fcmp fast ogt float %5581, 0x3FFB6F8900000000
  %5583 = select i1 %5582, float 0x3FFB6F8900000000, float %5581
  %5584 = fmul fast float %5583, 0x3FE8A23460000000
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5583, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5587 = fmul fast float %5585, %5572
  %5588 = fmul fast float %5586, 0x3FF279A740000000
  %5589 = fadd fast float %5588, -1.000000e+00
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %52, float %5578, float %5579, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.unary.f32(i32 25, float %5590)  ; Rsqrt(value)
  %5592 = fmul fast float %5591, %5578
  %5593 = fmul fast float %5591, %5579
  %5594 = fmul fast float %5591, %52
  %5595 = fmul fast float %5589, %5589
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = fmul fast float %5586, 0x40005F8BE0000000
  %5598 = fsub fast float 0x400C5BF8A0000000, %5597
  %5599 = fdiv fast float %5587, %5598
  %5600 = fmul fast float %5599, 0x3FEE31C3C0000000
  %5601 = fmul fast float %5600, %5596
  %5602 = fmul fast float %5586, 0x3FDACB7480000000
  %5603 = fadd fast float %5602, 0xBFD7347680000000
  %5604 = fmul fast float %5603, %5599
  %5605 = fmul fast float %5604, %5596
  br label %5606

; <label>:5606                                    ; preds = %5577, %5549
  %5607 = phi float [ %5592, %5577 ], [ 0.000000e+00, %5549 ]
  %5608 = phi float [ %5593, %5577 ], [ 0.000000e+00, %5549 ]
  %5609 = phi float [ %5594, %5577 ], [ 0.000000e+00, %5549 ]
  %5610 = phi float [ %5601, %5577 ], [ 0.000000e+00, %5549 ]
  %5611 = phi float [ %5605, %5577 ], [ 0.000000e+00, %5549 ]
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fmul fast float %5612, 0x3FDF454380000000
  %5614 = fmul fast float %5612, %5612
  %5615 = fmul fast float %5614, 0x3FEE471020000000
  %5616 = fadd fast float %5615, 0xBFD42F6020000000
  %5617 = fmul fast float %5572, 0x3FD20DD760000000
  %5618 = fmul fast float %5616, %5611
  %5619 = fadd fast float %5618, %5617
  %5620 = fmul fast float %5613, %5610
  %5621 = fadd fast float %5619, %5620
  %5622 = fsub fast float %5619, %5620
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fmul fast float %5623, 0x3FDF454380000000
  %5625 = fmul fast float %5623, %5623
  %5626 = fmul fast float %5625, 0x3FEE471020000000
  %5627 = fadd fast float %5626, 0xBFD42F6020000000
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5610, float %5611, float 0x3FD20DD760000000, float %5624, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.binary.f32(i32 35, float %5507, float 0.000000e+00)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5564, float 0.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5621, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float %5565, float 0.000000e+00)  ; FMax(a,b)
  %5634 = call float @dx.op.binary.f32(i32 35, float %5622, float 0.000000e+00)  ; FMax(a,b)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5628, float 0.000000e+00)  ; FMax(a,b)
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = call float @dx.op.binary.f32(i32 36, float %5431, float %5639)  ; FMin(a,b)
  %5641 = fsub fast float 1.000000e+00, %5453
  %5642 = fmul fast float %5640, %5641
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = call float @dx.op.binary.f32(i32 36, float %5432, float %5639)  ; FMin(a,b)
  %5648 = fmul fast float %5647, %5641
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = call float @dx.op.binary.f32(i32 36, float %5433, float %5639)  ; FMin(a,b)
  %5654 = fmul fast float %5653, %5641
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5629, %5453
  %5660 = fmul fast float %5659, %5646
  %5661 = fmul fast float %5630, %5453
  %5662 = fmul fast float %5661, %5652
  %5663 = fmul fast float %5631, %5453
  %5664 = fmul fast float %5663, %5658
  %5665 = call float @dx.op.binary.f32(i32 36, float %5437, float %5639)  ; FMin(a,b)
  %5666 = fmul fast float %5665, %5641
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5438, float %5639)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5641
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = call float @dx.op.binary.f32(i32 36, float %5442, float %5639)  ; FMin(a,b)
  %5678 = fmul fast float %5677, %5641
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = bitcast float %5679 to i32
  %5681 = sub nsw i32 2129859010, %5680
  %5682 = bitcast i32 %5681 to float
  %5683 = fmul fast float %5635, %5453
  %5684 = fmul fast float %5683, %5670
  %5685 = fmul fast float %5636, %5453
  %5686 = fmul fast float %5685, %5676
  %5687 = fmul fast float %5637, %5453
  %5688 = fmul fast float %5687, %5682
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5662, float %5664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = select i1 %199, float 0.000000e+00, float %5660
  %5691 = select i1 %199, float %5689, float %5662
  %5692 = select i1 %199, float 0.000000e+00, float %5664
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = select i1 %199, float 0.000000e+00, float %5632
  %5695 = select i1 %199, float %5693, float %5633
  %5696 = select i1 %199, float 0.000000e+00, float %5634
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5686, float %5688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = select i1 %199, float 0.000000e+00, float %5684
  %5699 = select i1 %199, float %5697, float %5686
  %5700 = select i1 %199, float 0.000000e+00, float %5688
  %5701 = fmul fast float %5444, 9.843750e-01
  %5702 = fmul fast float %5440, 9.843750e-01
  %5703 = fadd fast float %5701, 7.812500e-03
  %5704 = fadd fast float %5702, 7.812500e-03
  %5705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5703, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 2
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 3
  %5708 = fmul fast float %5706, %5437
  %5709 = fmul fast float %5706, %5438
  %5710 = fmul fast float %5706, %5442
  %5711 = fadd fast float %5708, %5707
  %5712 = fadd fast float %5709, %5707
  %5713 = fadd fast float %5710, %5707
  %5714 = fcmp fast ogt float %4171, 0.000000e+00
  br i1 %5714, label %5715, label %5741

; <label>:5715                                    ; preds = %5606
  %5716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %5444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5717 = extractvalue %dx.types.ResRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.ResRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.ResRet.f32 %5716, 2
  %5720 = fadd fast float %5717, -5.000000e-01
  %5721 = fadd fast float %5718, -5.000000e-01
  %5722 = fadd fast float %5719, -5.000000e-01
  %5723 = fsub fast float 1.000000e+00, %5437
  %5724 = fsub fast float 1.000000e+00, %5438
  %5725 = fsub fast float 1.000000e+00, %5442
  %5726 = fmul fast float %5437, 4.000000e+00
  %5727 = fmul fast float %5726, %5723
  %5728 = fmul fast float %5727, %5720
  %5729 = fmul fast float %5438, 4.000000e+00
  %5730 = fmul fast float %5729, %5724
  %5731 = fmul fast float %5730, %5721
  %5732 = fmul fast float %5442, 4.000000e+00
  %5733 = fmul fast float %5732, %5725
  %5734 = fmul fast float %5733, %5722
  %5735 = fadd fast float %5728, %5711
  %5736 = fadd fast float %5731, %5712
  %5737 = fadd fast float %5734, %5713
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5739 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5740 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  br label %5741

; <label>:5741                                    ; preds = %5715, %5606
  %5742 = phi float [ %5738, %5715 ], [ %5711, %5606 ]
  %5743 = phi float [ %5739, %5715 ], [ %5712, %5606 ]
  %5744 = phi float [ %5740, %5715 ], [ %5713, %5606 ]
  %5745 = call float @dx.op.binary.f32(i32 35, float %5743, float %5744)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5742, float %5745)  ; FMax(a,b)
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fcmp fast ogt float %5748, 0x3E7FF19E20000000
  %5750 = fdiv fast float 1.000000e+00, %5748
  %5751 = select i1 %5749, float %5750, float 0.000000e+00
  %5752 = fmul fast float %5751, %5431
  %5753 = fmul fast float %5751, %5432
  %5754 = fmul fast float %5751, %5433
  %5755 = fadd fast float %5752, -1.000000e+00
  %5756 = fadd fast float %5753, -1.000000e+00
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fmul fast float %5755, 5.000000e-01
  %5759 = fmul fast float %5756, 5.000000e-01
  %5760 = fmul fast float %5757, 5.000000e-01
  %5761 = fadd fast float %5758, 1.000000e+00
  %5762 = fadd fast float %5759, 1.000000e+00
  %5763 = fadd fast float %5760, 1.000000e+00
  %5764 = fmul fast float %5742, %5698
  %5765 = fmul fast float %5743, %5699
  %5766 = fmul fast float %5744, %5700
  %5767 = fsub fast float 1.000000e+00, %5444
  %5768 = bitcast float %5767 to i32
  %5769 = sitofp i32 %5768 to float
  %5770 = fmul fast float %5769, 5.000000e+00
  %5771 = fadd fast float %5770, 0xC1EFBF8940000000
  %5772 = fptosi float %5771 to i32
  %5773 = bitcast i32 %5772 to float
  %5774 = fmul fast float %5773, %4172
  %5775 = fmul fast float %5690, %5774
  %5776 = fmul fast float %5775, %5747
  %5777 = fmul fast float %5776, %5761
  %5778 = fmul fast float %5691, %5774
  %5779 = fmul fast float %5778, %5747
  %5780 = fmul fast float %5779, %5762
  %5781 = fmul fast float %5692, %5774
  %5782 = fmul fast float %5781, %5747
  %5783 = fmul fast float %5782, %5763
  %5784 = fadd fast float %5764, %4164
  %5785 = fadd fast float %5784, %5777
  %5786 = fmul fast float %5785, %4168
  %5787 = fadd fast float %5765, %4165
  %5788 = fadd fast float %5787, %5780
  %5789 = fmul fast float %5788, %4168
  %5790 = fadd fast float %5766, %4166
  %5791 = fadd fast float %5790, %5783
  %5792 = fmul fast float %5791, %4168
  %5793 = fmul fast float %5747, %5692
  %5794 = fmul fast float %5747, %5691
  %5795 = fmul fast float %5747, %5690
  %5796 = fmul fast float %5747, %4263
  %5797 = fadd fast float %5796, -1.000000e+00
  %5798 = fmul fast float %5797, %4168
  %5799 = fadd fast float %5798, 1.000000e+00
  %5800 = fmul fast float %5747, %4262
  %5801 = fadd fast float %5800, -1.000000e+00
  %5802 = fmul fast float %5801, %4168
  %5803 = fadd fast float %5802, 1.000000e+00
  %5804 = fmul fast float %5747, %4261
  %5805 = fadd fast float %5804, -1.000000e+00
  %5806 = fmul fast float %5805, %4168
  %5807 = fadd fast float %5806, 1.000000e+00
  %5808 = fmul fast float %5807, %5694
  %5809 = fmul fast float %5803, %5695
  %5810 = fmul fast float %5799, %5696
  %5811 = fadd fast float %5808, %5795
  %5812 = fmul fast float %5811, %4168
  %5813 = fadd fast float %5809, %5794
  %5814 = fmul fast float %5813, %4168
  %5815 = fadd fast float %5810, %5793
  %5816 = fmul fast float %5815, %4168
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5819 = fcmp fast oeq float %5818, 0.000000e+00
  br i1 %5819, label %6101, label %5820

; <label>:5820                                    ; preds = %5741
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5822 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5823 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = select i1 %199, float %5829, float %5825
  %5833 = select i1 %199, float %5831, float %5826
  %5834 = select i1 %199, float %5830, float %5827
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5837 = fcmp fast une float %5836, 0.000000e+00
  br i1 %5837, label %5838, label %5855

; <label>:5838                                    ; preds = %5820
  %5839 = fptoui float %81 to i32
  %5840 = fptoui float %82 to i32
  %5841 = lshr i32 %5839, 4
  %5842 = lshr i32 %5840, 4
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = fptoui float %5844 to i32
  %5846 = add i32 %5845, 15
  %5847 = lshr i32 %5846, 4
  %5848 = mul i32 %5847, %5842
  %5849 = add i32 %5848, %5841
  %5850 = shl i32 %5849, 3
  %5851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.i32 %5851, 0
  %5853 = and i32 %5852, -268435456
  %5854 = icmp eq i32 %5853, -1342177280
  br i1 %5854, label %5865, label %5855

; <label>:5855                                    ; preds = %5838, %5820
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 2
  %5858 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5859 = fmul fast float %5857, %81
  %5860 = fmul fast float %5858, %82
  %5861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %5859, float %5860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  br label %5865

; <label>:5865                                    ; preds = %5855, %5838
  %5866 = phi float [ %5862, %5855 ], [ 0.000000e+00, %5838 ]
  %5867 = phi float [ %5863, %5855 ], [ 0.000000e+00, %5838 ]
  %5868 = phi float [ %5864, %5855 ], [ 0.000000e+00, %5838 ]
  %5869 = call float @dx.op.binary.f32(i32 36, float %5867, float %5868)  ; FMin(a,b)
  %5870 = call float @dx.op.binary.f32(i32 36, float %5866, float %5869)  ; FMin(a,b)
  %5871 = fcmp fast ogt float %5870, 0.000000e+00
  br i1 %5871, label %5872, label %6101, !dx.controlflow.hints !75

; <label>:5872                                    ; preds = %5865
  %5873 = fmul fast float %5866, %5832
  %5874 = fmul fast float %5867, %5833
  %5875 = fmul fast float %5868, %5834
  %5876 = fsub fast float %5821, %5430
  %5877 = fsub fast float %5822, %5429
  %5878 = fsub fast float %5823, %5428
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5877, float %5878, float %5876, float %5877, float %5878)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = call float @dx.op.unary.f32(i32 25, float %5879)  ; Rsqrt(value)
  %5881 = fmul fast float %5880, %5876
  %5882 = fmul fast float %5880, %5877
  %5883 = fmul fast float %5880, %5878
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5426, float %5425, float %5881, float %5882, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5887 = fmul fast float %5886, %5886
  %5888 = fmul fast float %5887, %5457
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = fmul fast float %5889, %5886
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5881, float %5882, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fmul fast float %5891, %5891
  %5893 = call float @dx.op.unary.f32(i32 6, float %5884)  ; FAbs(value)
  %5894 = fsub fast float 1.000000e+00, %5440
  %5895 = call float @dx.op.binary.f32(i32 35, float %5894, float 0x3F847AE140000000)  ; FMax(a,b)
  %5896 = fmul fast float %5895, %5895
  %5897 = fmul fast float %5896, %5896
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = fmul fast float %5444, %5444
  %5900 = fmul fast float %5899, %5898
  %5901 = fadd fast float %5900, %5897
  %5902 = bitcast float %5901 to i32
  %5903 = ashr i32 %5902, 1
  %5904 = add nsw i32 %5903, 532487669
  %5905 = bitcast i32 %5904 to float
  %5906 = fadd fast float %5905, %5444
  %5907 = fmul fast float %5897, %5892
  %5908 = fsub fast float 1.000000e+00, %5892
  %5909 = fadd fast float %5908, %5907
  %5910 = fmul fast float %5893, %5893
  %5911 = fmul fast float %5910, %5898
  %5912 = fadd fast float %5911, %5897
  %5913 = bitcast float %5912 to i32
  %5914 = ashr i32 %5913, 1
  %5915 = add nsw i32 %5914, 532487669
  %5916 = bitcast i32 %5915 to float
  %5917 = fadd fast float %5916, %5893
  %5918 = fmul fast float %5909, %5909
  %5919 = fmul fast float %5918, %5906
  %5920 = fmul fast float %5919, %5917
  %5921 = fdiv fast float 0x3FF0A00000000000, %5920
  %5922 = fmul fast float %5921, %5897
  %5923 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5924 = fsub fast float 1.000000e+00, %5923
  %5925 = bitcast float %5924 to i32
  %5926 = sitofp i32 %5925 to float
  %5927 = fmul fast float %5926, 5.000000e+00
  %5928 = fadd fast float %5927, 0xC1EFBF8940000000
  %5929 = fptosi float %5928 to i32
  %5930 = bitcast i32 %5929 to float
  %5931 = fsub fast float 1.000000e+00, %5437
  %5932 = fsub fast float 1.000000e+00, %5438
  %5933 = fsub fast float 1.000000e+00, %5442
  %5934 = fmul fast float %5930, %5931
  %5935 = fmul fast float %5930, %5932
  %5936 = fmul fast float %5930, %5933
  %5937 = fadd fast float %5934, %5437
  %5938 = fadd fast float %5935, %5438
  %5939 = fadd fast float %5936, %5442
  br i1 %5714, label %5940, label %5963

; <label>:5940                                    ; preds = %5872
  %5941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %5923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.ResRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.ResRet.f32 %5941, 2
  %5945 = fadd fast float %5942, -5.000000e-01
  %5946 = fadd fast float %5943, -5.000000e-01
  %5947 = fadd fast float %5944, -5.000000e-01
  %5948 = fmul fast float %5437, 4.000000e+00
  %5949 = fmul fast float %5948, %5931
  %5950 = fmul fast float %5949, %5945
  %5951 = fmul fast float %5438, 4.000000e+00
  %5952 = fmul fast float %5951, %5932
  %5953 = fmul fast float %5952, %5946
  %5954 = fmul fast float %5442, 4.000000e+00
  %5955 = fmul fast float %5954, %5933
  %5956 = fmul fast float %5955, %5947
  %5957 = fadd fast float %5950, %5937
  %5958 = fadd fast float %5953, %5938
  %5959 = fadd fast float %5956, %5939
  %5960 = call float @dx.op.unary.f32(i32 7, float %5957)  ; Saturate(value)
  %5961 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5962 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  br label %5963

; <label>:5963                                    ; preds = %5940, %5872
  %5964 = phi float [ %5960, %5940 ], [ %5937, %5872 ]
  %5965 = phi float [ %5961, %5940 ], [ %5938, %5872 ]
  %5966 = phi float [ %5962, %5940 ], [ %5939, %5872 ]
  %5967 = fmul fast float %5884, 9.843750e-01
  %5968 = fadd fast float %5967, 7.812500e-03
  %5969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5968, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 3
  %5972 = fmul fast float %5970, %5437
  %5973 = fmul fast float %5970, %5438
  %5974 = fmul fast float %5970, %5442
  %5975 = fadd fast float %5972, %5971
  %5976 = fadd fast float %5973, %5971
  %5977 = fadd fast float %5974, %5971
  br i1 %5714, label %5978, label %6001

; <label>:5978                                    ; preds = %5963
  %5979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %5884, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = fadd fast float %5980, -5.000000e-01
  %5984 = fadd fast float %5981, -5.000000e-01
  %5985 = fadd fast float %5982, -5.000000e-01
  %5986 = fmul fast float %5437, 4.000000e+00
  %5987 = fmul fast float %5986, %5931
  %5988 = fmul fast float %5987, %5983
  %5989 = fmul fast float %5438, 4.000000e+00
  %5990 = fmul fast float %5989, %5932
  %5991 = fmul fast float %5990, %5984
  %5992 = fmul fast float %5442, 4.000000e+00
  %5993 = fmul fast float %5992, %5933
  %5994 = fmul fast float %5993, %5985
  %5995 = fadd fast float %5988, %5975
  %5996 = fadd fast float %5991, %5976
  %5997 = fadd fast float %5994, %5977
  %5998 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5999 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  br label %6001

; <label>:6001                                    ; preds = %5978, %5963
  %6002 = phi float [ %5998, %5978 ], [ %5975, %5963 ]
  %6003 = phi float [ %5999, %5978 ], [ %5976, %5963 ]
  %6004 = phi float [ %6000, %5978 ], [ %5977, %5963 ]
  %6005 = call float @dx.op.binary.f32(i32 35, float %6003, float %6004)  ; FMax(a,b)
  %6006 = call float @dx.op.binary.f32(i32 35, float %6002, float %6005)  ; FMax(a,b)
  %6007 = fsub fast float 1.000000e+00, %6006
  %6008 = fsub fast float -0.000000e+00, %5434
  %6009 = fsub fast float -0.000000e+00, %5435
  %6010 = fsub fast float -0.000000e+00, %5436
  %6011 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %6008, float %6009, float %6010)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fmul fast float %6012, 9.843750e-01
  %6014 = fadd fast float %6013, 7.812500e-03
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6014, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 2
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 3
  %6018 = fmul fast float %6016, %5437
  %6019 = fmul fast float %6016, %5438
  %6020 = fmul fast float %6016, %5442
  %6021 = fadd fast float %6018, %6017
  %6022 = fadd fast float %6019, %6017
  %6023 = fadd fast float %6020, %6017
  br i1 %5714, label %6024, label %6047

; <label>:6024                                    ; preds = %6001
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %6012, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = fadd fast float %6026, -5.000000e-01
  %6030 = fadd fast float %6027, -5.000000e-01
  %6031 = fadd fast float %6028, -5.000000e-01
  %6032 = fmul fast float %5437, 4.000000e+00
  %6033 = fmul fast float %6032, %5931
  %6034 = fmul fast float %6033, %6029
  %6035 = fmul fast float %5438, 4.000000e+00
  %6036 = fmul fast float %6035, %5932
  %6037 = fmul fast float %6036, %6030
  %6038 = fmul fast float %5442, 4.000000e+00
  %6039 = fmul fast float %6038, %5933
  %6040 = fmul fast float %6039, %6031
  %6041 = fadd fast float %6034, %6021
  %6042 = fadd fast float %6037, %6022
  %6043 = fadd fast float %6040, %6023
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6046 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  br label %6047

; <label>:6047                                    ; preds = %6024, %6001
  %6048 = phi float [ %6044, %6024 ], [ %6021, %6001 ]
  %6049 = phi float [ %6045, %6024 ], [ %6022, %6001 ]
  %6050 = phi float [ %6046, %6024 ], [ %6023, %6001 ]
  %6051 = call float @dx.op.binary.f32(i32 35, float %6049, float %6050)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float %6048, float %6051)  ; FMax(a,b)
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = fmul fast float %6053, %6012
  %6055 = fmul fast float %6054, %4261
  %6056 = fmul fast float %6054, %4262
  %6057 = fmul fast float %6054, %4263
  %6058 = fmul fast float %5964, %5922
  %6059 = fmul fast float %5965, %5922
  %6060 = fmul fast float %5966, %5922
  %6061 = fsub fast float 1.000000e+00, %5885
  %6062 = bitcast float %6061 to i32
  %6063 = sitofp i32 %6062 to float
  %6064 = fmul fast float %6063, 5.000000e+00
  %6065 = fadd fast float %6064, 0xC1EFBF8940000000
  %6066 = fptosi float %6065 to i32
  %6067 = bitcast i32 %6066 to float
  %6068 = fmul fast float %6067, %4172
  %6069 = fmul fast float %6007, %6068
  %6070 = fmul fast float %6069, %5761
  %6071 = fmul fast float %6069, %5762
  %6072 = fmul fast float %6069, %5763
  %6073 = fmul fast float %6007, %5890
  %6074 = fadd fast float %6070, %6058
  %6075 = fadd fast float %6071, %6059
  %6076 = fadd fast float %6072, %6060
  %6077 = fadd fast float %6055, %6073
  %6078 = fadd fast float %6056, %6073
  %6079 = fadd fast float %6057, %6073
  %6080 = fmul fast float %6077, %5873
  %6081 = fmul fast float %6078, %5874
  %6082 = fmul fast float %6079, %5875
  %6083 = fmul fast float %5890, %5873
  %6084 = fmul fast float %6083, %6074
  %6085 = fmul fast float %5890, %5874
  %6086 = fmul fast float %6085, %6075
  %6087 = fmul fast float %5890, %5875
  %6088 = fmul fast float %6087, %6076
  %6089 = fadd fast float %6080, %5811
  %6090 = fmul fast float %6089, %4168
  %6091 = fadd fast float %6081, %5813
  %6092 = fmul fast float %6091, %4168
  %6093 = fadd fast float %6082, %5815
  %6094 = fmul fast float %6093, %4168
  %6095 = fadd fast float %6084, %5785
  %6096 = fmul fast float %6095, %4168
  %6097 = fadd fast float %6086, %5788
  %6098 = fmul fast float %6097, %4168
  %6099 = fadd fast float %6088, %5791
  %6100 = fmul fast float %6099, %4168
  br label %6101

; <label>:6101                                    ; preds = %6047, %5865, %5741
  %6102 = phi float [ %5786, %5741 ], [ %5786, %5865 ], [ %6096, %6047 ]
  %6103 = phi float [ %5789, %5741 ], [ %5789, %5865 ], [ %6098, %6047 ]
  %6104 = phi float [ %5792, %5741 ], [ %5792, %5865 ], [ %6100, %6047 ]
  %6105 = phi float [ %5812, %5741 ], [ %5812, %5865 ], [ %6090, %6047 ]
  %6106 = phi float [ %5814, %5741 ], [ %5814, %5865 ], [ %6092, %6047 ]
  %6107 = phi float [ %5816, %5741 ], [ %5816, %5865 ], [ %6094, %6047 ]
  %6108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.i32 %6108, 0
  %6110 = icmp eq i32 %6109, 0
  br i1 %6110, label %6600, label %6111

; <label>:6111                                    ; preds = %6101
  %6112 = fptoui float %81 to i32
  %6113 = fptoui float %82 to i32
  %6114 = lshr i32 %6112, 4
  %6115 = lshr i32 %6113, 4
  %6116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.i32 %6116, 0
  %6118 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6115, i32 %6117, i32 %6114)  ; UMad(a,b,c)
  %6119 = add nsw i32 %6109, -1
  %6120 = call i32 @dx.op.binary.i32(i32 37, i32 %6119, i32 0)  ; IMax(a,b)
  %6121 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %6122 = fptoui float %6121 to i32
  %6123 = lshr i32 %6122, 5
  %6124 = call i32 @dx.op.binary.i32(i32 40, i32 %6123, i32 8191)  ; UMin(a,b)
  %6125 = shl i32 %6124, 2
  %6126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.i32 %6126, 0
  %6128 = lshr i32 %6127, 16
  %6129 = and i32 %6127, 65535
  %6130 = lshr i32 %6127, 21
  %6131 = lshr i32 %6129, 5
  %6132 = call i32 @dx.op.binary.i32(i32 40, i32 %6131, i32 %6120)  ; UMin(a,b)
  %6133 = icmp ugt i32 %6130, %6132
  br i1 %6133, label %6600, label %6134

; <label>:6134                                    ; preds = %6111
  br label %6135

; <label>:6135                                    ; preds = %6590, %6134
  %6136 = phi i32 [ %6597, %6590 ], [ %6130, %6134 ]
  %6137 = phi float [ %6591, %6590 ], [ %6102, %6134 ]
  %6138 = phi float [ %6592, %6590 ], [ %6103, %6134 ]
  %6139 = phi float [ %6593, %6590 ], [ %6104, %6134 ]
  %6140 = phi float [ %6594, %6590 ], [ %6105, %6134 ]
  %6141 = phi float [ %6595, %6590 ], [ %6106, %6134 ]
  %6142 = phi float [ %6596, %6590 ], [ %6107, %6134 ]
  %6143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.i32 %6143, 0
  %6145 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6118, i32 %6144, i32 %6136)  ; UMad(a,b,c)
  %6146 = shl i32 %6145, 2
  %6147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6146, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.i32 %6147, 0
  %6149 = shl i32 %6136, 5
  %6150 = sub nsw i32 %6128, %6149
  %6151 = call i32 @dx.op.binary.i32(i32 37, i32 %6150, i32 0)  ; IMax(a,b)
  %6152 = call i32 @dx.op.binary.i32(i32 38, i32 %6151, i32 31)  ; IMin(a,b)
  %6153 = sub nsw i32 1, %6128
  %6154 = add nsw i32 %6153, %6129
  %6155 = call i32 @dx.op.binary.i32(i32 37, i32 %6154, i32 0)  ; IMax(a,b)
  %6156 = call i32 @dx.op.binary.i32(i32 38, i32 %6155, i32 32)  ; IMin(a,b)
  %6157 = and i32 %6156, 31
  %6158 = shl i32 -1, %6157
  %6159 = xor i32 %6158, -1
  %6160 = and i32 %6152, 31
  %6161 = shl i32 %6159, %6160
  %6162 = icmp eq i32 %6156, 32
  %6163 = select i1 %6162, i32 -1, i32 %6161
  %6164 = and i32 %6163, %6148
  %6165 = icmp eq i32 %6164, 0
  br i1 %6165, label %6590, label %6166

; <label>:6166                                    ; preds = %6135
  br label %6167

; <label>:6167                                    ; preds = %6247, %6166
  %6168 = phi i32 [ %6179, %6247 ], [ %6164, %6166 ]
  %6169 = phi float [ %6248, %6247 ], [ %6137, %6166 ]
  %6170 = phi float [ %6249, %6247 ], [ %6138, %6166 ]
  %6171 = phi float [ %6250, %6247 ], [ %6139, %6166 ]
  %6172 = phi float [ %6251, %6247 ], [ %6140, %6166 ]
  %6173 = phi float [ %6252, %6247 ], [ %6141, %6166 ]
  %6174 = phi float [ %6253, %6247 ], [ %6142, %6166 ]
  %6175 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6168)  ; FirstbitLo(value)
  %6176 = add i32 %6175, %6149
  %6177 = and i32 %6175, 31
  %6178 = shl i32 1, %6177
  %6179 = xor i32 %6178, %6168
  %6180 = mul i32 %6176, 112
  %6181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.ResRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.ResRet.f32 %6181, 2
  %6185 = or i32 %6180, 12
  %6186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6185, i32 undef)  ; BufferLoad(srv,index,wot)
  %6187 = extractvalue %dx.types.ResRet.f32 %6186, 0
  %6188 = add i32 %6180, 44
  %6189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6188, i32 undef)  ; BufferLoad(srv,index,wot)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = add i32 %6180, 48
  %6192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.ResRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.ResRet.f32 %6192, 2
  %6196 = add i32 %6180, 80
  %6197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6196, i32 undef)  ; BufferLoad(srv,index,wot)
  %6198 = extractvalue %dx.types.ResRet.f32 %6197, 1
  %6199 = extractvalue %dx.types.ResRet.f32 %6197, 2
  %6200 = call float @dx.op.dot3.f32(i32 55, float %6182, float %6183, float %6184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = select i1 %199, float %6198, float %6182
  %6202 = select i1 %199, float %6200, float %6183
  %6203 = select i1 %199, float %6199, float %6184
  %6204 = fsub fast float %6193, %160
  %6205 = fsub fast float %6194, %161
  %6206 = fsub fast float %6195, %162
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6204, float %6205, float %6206, float %6204, float %6205, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = call float @dx.op.unary.f32(i32 24, float %6207)  ; Sqrt(value)
  %6209 = fdiv fast float 1.000000e+00, %6208
  %6210 = fmul fast float %6209, %6204
  %6211 = fmul fast float %6209, %6205
  %6212 = fmul fast float %6209, %6206
  %6213 = fadd fast float %6208, %6187
  %6214 = fdiv fast float 1.000000e+00, %6213
  %6215 = fmul float %6190, %6214
  %6216 = fmul float %6215, %6215
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = and i32 %6178, %6164
  %6219 = icmp eq i32 %6218, 0
  br i1 %6219, label %6242, label %6220, !dx.controlflow.hints !76

; <label>:6220                                    ; preds = %6167
  %6221 = lshr i32 %6112, 5
  %6222 = lshr i32 %6113, 5
  %6223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6221, i32 %6222, i32 %6176, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6224 = extractvalue %dx.types.ResRet.i32 %6223, 0
  %6225 = and i32 %6224, 3
  %6226 = icmp eq i32 %6225, 0
  %6227 = select i1 %6226, float 1.000000e+00, float 0.000000e+00
  %6228 = icmp eq i32 %6225, 3
  br i1 %6228, label %6229, label %6242

; <label>:6229                                    ; preds = %6220
  %6230 = lshr i32 %6224, 10
  %6231 = and i32 %6230, 8160
  %6232 = and i32 %6113, 31
  %6233 = or i32 %6231, %6232
  %6234 = lshr i32 %6224, 1
  %6235 = and i32 %6234, 16352
  %6236 = and i32 %6112, 31
  %6237 = or i32 %6235, %6236
  %6238 = lshr i32 %6224, 23
  %6239 = and i32 %6238, 255
  %6240 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6237, i32 %6233, i32 %6239, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  br label %6242

; <label>:6242                                    ; preds = %6229, %6220, %6167
  %6243 = phi float [ %6241, %6229 ], [ %6227, %6220 ], [ 0.000000e+00, %6167 ]
  %6244 = call float @dx.op.binary.f32(i32 36, float %6243, float %6243)  ; FMin(a,b)
  %6245 = call float @dx.op.binary.f32(i32 36, float %6243, float %6244)  ; FMin(a,b)
  %6246 = fcmp fast ogt float %6245, 0.000000e+00
  br i1 %6246, label %6255, label %6247, !dx.controlflow.hints !77

; <label>:6247                                    ; preds = %6538, %6242
  %6248 = phi float [ %6169, %6242 ], [ %6586, %6538 ]
  %6249 = phi float [ %6170, %6242 ], [ %6587, %6538 ]
  %6250 = phi float [ %6171, %6242 ], [ %6588, %6538 ]
  %6251 = phi float [ %6172, %6242 ], [ %6577, %6538 ]
  %6252 = phi float [ %6173, %6242 ], [ %6578, %6538 ]
  %6253 = phi float [ %6174, %6242 ], [ %6579, %6538 ]
  %6254 = icmp eq i32 %6168, %6178
  br i1 %6254, label %6589, label %6167

; <label>:6255                                    ; preds = %6242
  %6256 = fmul fast float %6243, %6201
  %6257 = fmul fast float %6243, %6202
  %6258 = fmul fast float %6243, %6203
  %6259 = fsub fast float %6195, %4638
  %6260 = fcmp fast ogt float %6259, 0.000000e+00
  %6261 = fsub fast float %162, %4638
  %6262 = fcmp fast ogt float %6261, 0.000000e+00
  %6263 = xor i1 %6262, %6260
  %6264 = fsub fast float %4638, %6195
  %6265 = fmul fast float %6264, 2.000000e+00
  %6266 = fadd fast float %6265, %6195
  %6267 = select i1 %6263, float %6195, float %6266
  %6268 = fsub fast float %6267, %162
  %6269 = call float @dx.op.dot3.f32(i32 55, float %6204, float %6205, float %6268, float %6204, float %6205, float %6268)  ; Dot3(ax,ay,az,bx,by,bz)
  %6270 = call float @dx.op.unary.f32(i32 25, float %6269)  ; Rsqrt(value)
  %6271 = fmul fast float %6270, %6204
  %6272 = fmul fast float %6270, %6205
  %6273 = fmul fast float %6270, %6268
  %6274 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %6275 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %6276 = fdiv fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6276, %6274
  %6278 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6261, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6279 = fcmp fast ogt float %6278, 0.000000e+00
  %6280 = fcmp fast olt float %6278, 0.000000e+00
  %6281 = zext i1 %6279 to i32
  %6282 = zext i1 %6280 to i32
  %6283 = sub nsw i32 %6281, %6282
  %6284 = sitofp i32 %6283 to float
  %6285 = fsub fast float %6267, %4638
  %6286 = call float @dx.op.dot3.f32(i32 55, float %6204, float %6205, float %6285, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6287 = fcmp fast ogt float %6286, 0.000000e+00
  %6288 = fcmp fast olt float %6286, 0.000000e+00
  %6289 = zext i1 %6287 to i32
  %6290 = zext i1 %6288 to i32
  %6291 = sub nsw i32 %6289, %6290
  %6292 = sitofp i32 %6291 to float
  %6293 = fcmp fast une float %6284, %6292
  br i1 %6293, label %6294, label %6304

; <label>:6294                                    ; preds = %6255
  %6295 = fmul fast float %6277, %6273
  %6296 = fmul fast float %6277, %6272
  %6297 = fmul fast float %6277, %6271
  %6298 = fmul fast float %6297, %6297
  %6299 = fmul fast float %6296, %6296
  %6300 = fadd fast float %6298, %6299
  %6301 = fmul fast float %6295, %6295
  %6302 = fadd fast float %6300, %6301
  %6303 = call float @dx.op.unary.f32(i32 24, float %6302)  ; Sqrt(value)
  br label %6316

; <label>:6304                                    ; preds = %6255
  %6305 = icmp slt i32 %6283, 0
  br i1 %6305, label %6306, label %6316

; <label>:6306                                    ; preds = %6304
  %6307 = fsub fast float %160, %6193
  %6308 = fsub fast float %161, %6194
  %6309 = fsub fast float %162, %6267
  %6310 = fmul fast float %6307, %6307
  %6311 = fmul fast float %6308, %6308
  %6312 = fadd fast float %6310, %6311
  %6313 = fmul fast float %6309, %6309
  %6314 = fadd fast float %6312, %6313
  %6315 = call float @dx.op.unary.f32(i32 24, float %6314)  ; Sqrt(value)
  br label %6316

; <label>:6316                                    ; preds = %6306, %6304, %6294
  %6317 = phi float [ %6303, %6294 ], [ %6315, %6306 ], [ 0.000000e+00, %6304 ]
  %6318 = and i1 %6262, %6260
  %6319 = fsub fast float -0.000000e+00, %6317
  %6320 = select i1 %6318, float -0.000000e+00, float %6319
  %6321 = fmul fast float %4639, 0x3FF7154760000000
  %6322 = fmul fast float %6321, %6320
  %6323 = fmul fast float %4640, 0x3FF7154760000000
  %6324 = fmul fast float %6323, %6320
  %6325 = fmul fast float %4641, 0x3FF7154760000000
  %6326 = fmul fast float %6325, %6320
  %6327 = call float @dx.op.unary.f32(i32 21, float %6322)  ; Exp(value)
  %6328 = call float @dx.op.unary.f32(i32 21, float %6324)  ; Exp(value)
  %6329 = call float @dx.op.unary.f32(i32 21, float %6326)  ; Exp(value)
  %6330 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6333 = fmul fast float %6256, %6330
  %6334 = fmul fast float %6257, %6331
  %6335 = fmul fast float %6258, %6332
  %6336 = fsub fast float %6210, %5430
  %6337 = fsub fast float %6211, %5429
  %6338 = fsub fast float %6212, %5428
  %6339 = call float @dx.op.dot3.f32(i32 55, float %6336, float %6337, float %6338, float %6336, float %6337, float %6338)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = call float @dx.op.unary.f32(i32 25, float %6339)  ; Rsqrt(value)
  %6341 = fmul fast float %6340, %6336
  %6342 = fmul fast float %6340, %6337
  %6343 = fmul fast float %6340, %6338
  %6344 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6212, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6345 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5426, float %5425, float %6341, float %6342, float %6343)  ; Dot3(ax,ay,az,bx,by,bz)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6347 = fmul fast float %6346, %6217
  %6348 = fmul fast float %6346, %6346
  %6349 = fmul fast float %6348, %5457
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = fmul fast float %6347, %6350
  %6352 = bitcast float %6207 to i32
  %6353 = ashr i32 %6352, 1
  %6354 = sub nsw i32 1597463007, %6353
  %6355 = bitcast i32 %6354 to float
  %6356 = fmul fast float %6355, %6204
  %6357 = fmul fast float %6355, %6205
  %6358 = fmul fast float %6355, %6206
  %6359 = fsub fast float %6356, %5430
  %6360 = fsub fast float %6357, %5429
  %6361 = fsub fast float %6358, %5428
  %6362 = call float @dx.op.dot3.f32(i32 55, float %6359, float %6360, float %6361, float %6359, float %6360, float %6361)  ; Dot3(ax,ay,az,bx,by,bz)
  %6363 = call float @dx.op.unary.f32(i32 25, float %6362)  ; Rsqrt(value)
  %6364 = fmul fast float %6359, %6363
  %6365 = fmul fast float %6360, %6363
  %6366 = fmul fast float %6361, %6363
  %6367 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %6364, float %6365, float %6366)  ; Dot3(ax,ay,az,bx,by,bz)
  %6368 = fmul fast float %6367, %6367
  %6369 = call float @dx.op.unary.f32(i32 6, float %6344)  ; FAbs(value)
  %6370 = fsub fast float 1.000000e+00, %5440
  %6371 = call float @dx.op.binary.f32(i32 35, float %6370, float 0x3F847AE140000000)  ; FMax(a,b)
  %6372 = fmul fast float %6371, %6371
  %6373 = fmul fast float %6372, %6372
  %6374 = fsub fast float 1.000000e+00, %6373
  %6375 = fmul fast float %5444, %5444
  %6376 = fmul fast float %6375, %6374
  %6377 = fadd fast float %6376, %6373
  %6378 = bitcast float %6377 to i32
  %6379 = ashr i32 %6378, 1
  %6380 = add nsw i32 %6379, 532487669
  %6381 = bitcast i32 %6380 to float
  %6382 = fadd fast float %6381, %5444
  %6383 = fmul fast float %6373, %6368
  %6384 = fsub fast float 1.000000e+00, %6368
  %6385 = fadd fast float %6384, %6383
  %6386 = fmul fast float %6369, %6369
  %6387 = fmul fast float %6386, %6374
  %6388 = fadd fast float %6387, %6373
  %6389 = bitcast float %6388 to i32
  %6390 = ashr i32 %6389, 1
  %6391 = add nsw i32 %6390, 532487669
  %6392 = bitcast i32 %6391 to float
  %6393 = fadd fast float %6392, %6369
  %6394 = fmul fast float %6385, %6385
  %6395 = fmul fast float %6394, %6382
  %6396 = fmul fast float %6395, %6393
  %6397 = fdiv fast float 1.000000e+00, %6396
  %6398 = bitcast float %6373 to i32
  %6399 = sitofp i32 %6398 to float
  %6400 = fmul fast float %6399, 0x3FE7F73180000000
  %6401 = fadd fast float %6400, 0x41AFE27C40000000
  %6402 = fptosi float %6401 to i32
  %6403 = bitcast i32 %6402 to float
  %6404 = fmul fast float %6190, 0x3FD80E9D60000000
  %6405 = fmul fast float %6404, %6355
  %6406 = fadd fast float %6403, %6405
  %6407 = bitcast float %6406 to i32
  %6408 = sub nsw i32 2129859010, %6407
  %6409 = bitcast i32 %6408 to float
  %6410 = fmul fast float %6373, %6397
  %6411 = fmul fast float %6410, %6403
  %6412 = fmul fast float %6411, %6409
  %6413 = call float @dx.op.unary.f32(i32 6, float %6345)  ; FAbs(value)
  %6414 = fsub fast float 1.000000e+00, %6413
  %6415 = bitcast float %6414 to i32
  %6416 = sitofp i32 %6415 to float
  %6417 = fmul fast float %6416, 5.000000e+00
  %6418 = fadd fast float %6417, 0xC1EFBF8940000000
  %6419 = fptosi float %6418 to i32
  %6420 = bitcast i32 %6419 to float
  %6421 = fsub fast float 1.000000e+00, %5437
  %6422 = fsub fast float 1.000000e+00, %5438
  %6423 = fsub fast float 1.000000e+00, %5442
  %6424 = fmul fast float %6420, %6421
  %6425 = fmul fast float %6420, %6422
  %6426 = fmul fast float %6420, %6423
  %6427 = fadd fast float %6424, %5437
  %6428 = fadd fast float %6425, %5438
  %6429 = fadd fast float %6426, %5442
  br i1 %5714, label %6430, label %6453

; <label>:6430                                    ; preds = %6316
  %6431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6432 = extractvalue %dx.types.ResRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.ResRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.ResRet.f32 %6431, 2
  %6435 = fadd fast float %6432, -5.000000e-01
  %6436 = fadd fast float %6433, -5.000000e-01
  %6437 = fadd fast float %6434, -5.000000e-01
  %6438 = fmul fast float %5437, 4.000000e+00
  %6439 = fmul fast float %6438, %6421
  %6440 = fmul fast float %6439, %6435
  %6441 = fmul fast float %5438, 4.000000e+00
  %6442 = fmul fast float %6441, %6422
  %6443 = fmul fast float %6442, %6436
  %6444 = fmul fast float %5442, 4.000000e+00
  %6445 = fmul fast float %6444, %6423
  %6446 = fmul fast float %6445, %6437
  %6447 = fadd fast float %6440, %6427
  %6448 = fadd fast float %6443, %6428
  %6449 = fadd fast float %6446, %6429
  %6450 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6451 = call float @dx.op.unary.f32(i32 7, float %6448)  ; Saturate(value)
  %6452 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  br label %6453

; <label>:6453                                    ; preds = %6430, %6316
  %6454 = phi float [ %6450, %6430 ], [ %6427, %6316 ]
  %6455 = phi float [ %6451, %6430 ], [ %6428, %6316 ]
  %6456 = phi float [ %6452, %6430 ], [ %6429, %6316 ]
  %6457 = fmul fast float %6344, 9.843750e-01
  %6458 = fadd fast float %6457, 7.812500e-03
  %6459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6458, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6460 = extractvalue %dx.types.ResRet.f32 %6459, 2
  %6461 = extractvalue %dx.types.ResRet.f32 %6459, 3
  %6462 = fmul fast float %6460, %5437
  %6463 = fmul fast float %6460, %5438
  %6464 = fmul fast float %6460, %5442
  %6465 = fadd fast float %6462, %6461
  %6466 = fadd fast float %6463, %6461
  %6467 = fadd fast float %6464, %6461
  br i1 %5714, label %6468, label %6491

; <label>:6468                                    ; preds = %6453
  %6469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6470 = extractvalue %dx.types.ResRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.ResRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.ResRet.f32 %6469, 2
  %6473 = fadd fast float %6470, -5.000000e-01
  %6474 = fadd fast float %6471, -5.000000e-01
  %6475 = fadd fast float %6472, -5.000000e-01
  %6476 = fmul fast float %5437, 4.000000e+00
  %6477 = fmul fast float %6476, %6421
  %6478 = fmul fast float %6477, %6473
  %6479 = fmul fast float %5438, 4.000000e+00
  %6480 = fmul fast float %6479, %6422
  %6481 = fmul fast float %6480, %6474
  %6482 = fmul fast float %5442, 4.000000e+00
  %6483 = fmul fast float %6482, %6423
  %6484 = fmul fast float %6483, %6475
  %6485 = fadd fast float %6478, %6465
  %6486 = fadd fast float %6481, %6466
  %6487 = fadd fast float %6484, %6467
  %6488 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6489 = call float @dx.op.unary.f32(i32 7, float %6486)  ; Saturate(value)
  %6490 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  br label %6491

; <label>:6491                                    ; preds = %6468, %6453
  %6492 = phi float [ %6488, %6468 ], [ %6465, %6453 ]
  %6493 = phi float [ %6489, %6468 ], [ %6466, %6453 ]
  %6494 = phi float [ %6490, %6468 ], [ %6467, %6453 ]
  %6495 = call float @dx.op.binary.f32(i32 35, float %6493, float %6494)  ; FMax(a,b)
  %6496 = call float @dx.op.binary.f32(i32 35, float %6492, float %6495)  ; FMax(a,b)
  %6497 = fsub fast float 1.000000e+00, %6496
  %6498 = fsub fast float -0.000000e+00, %5434
  %6499 = fsub fast float -0.000000e+00, %5435
  %6500 = fsub fast float -0.000000e+00, %5436
  %6501 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6212, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = fmul fast float %6502, %6217
  %6504 = fmul fast float %6502, 9.843750e-01
  %6505 = fadd fast float %6504, 7.812500e-03
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %6505, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 3
  %6509 = fmul fast float %6507, %5437
  %6510 = fmul fast float %6507, %5438
  %6511 = fmul fast float %6507, %5442
  %6512 = fadd fast float %6509, %6508
  %6513 = fadd fast float %6510, %6508
  %6514 = fadd fast float %6511, %6508
  br i1 %5714, label %6515, label %6538

; <label>:6515                                    ; preds = %6491
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %4171, float %6502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.ResRet.f32 %6516, 2
  %6520 = fadd fast float %6517, -5.000000e-01
  %6521 = fadd fast float %6518, -5.000000e-01
  %6522 = fadd fast float %6519, -5.000000e-01
  %6523 = fmul fast float %5437, 4.000000e+00
  %6524 = fmul fast float %6523, %6421
  %6525 = fmul fast float %6524, %6520
  %6526 = fmul fast float %5438, 4.000000e+00
  %6527 = fmul fast float %6526, %6422
  %6528 = fmul fast float %6527, %6521
  %6529 = fmul fast float %5442, 4.000000e+00
  %6530 = fmul fast float %6529, %6423
  %6531 = fmul fast float %6530, %6522
  %6532 = fadd fast float %6525, %6512
  %6533 = fadd fast float %6528, %6513
  %6534 = fadd fast float %6531, %6514
  %6535 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6536 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6537 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  br label %6538

; <label>:6538                                    ; preds = %6515, %6491
  %6539 = phi float [ %6535, %6515 ], [ %6512, %6491 ]
  %6540 = phi float [ %6536, %6515 ], [ %6513, %6491 ]
  %6541 = phi float [ %6537, %6515 ], [ %6514, %6491 ]
  %6542 = call float @dx.op.binary.f32(i32 35, float %6540, float %6541)  ; FMax(a,b)
  %6543 = call float @dx.op.binary.f32(i32 35, float %6539, float %6542)  ; FMax(a,b)
  %6544 = fsub fast float 1.000000e+00, %6543
  %6545 = fmul fast float %6503, %6544
  %6546 = fmul fast float %6545, %4261
  %6547 = fmul fast float %6545, %4262
  %6548 = fmul fast float %6545, %4263
  %6549 = fmul fast float %6454, %6412
  %6550 = fmul fast float %6455, %6412
  %6551 = fmul fast float %6456, %6412
  %6552 = fsub fast float 1.000000e+00, %6345
  %6553 = bitcast float %6552 to i32
  %6554 = sitofp i32 %6553 to float
  %6555 = fmul fast float %6554, 5.000000e+00
  %6556 = fadd fast float %6555, 0xC1EFBF8940000000
  %6557 = fptosi float %6556 to i32
  %6558 = bitcast i32 %6557 to float
  %6559 = fmul fast float %6558, %4172
  %6560 = fmul fast float %6497, %6559
  %6561 = fmul fast float %6560, %5761
  %6562 = fmul fast float %6560, %5762
  %6563 = fmul fast float %6560, %5763
  %6564 = fmul fast float %6497, %6351
  %6565 = fadd fast float %6561, %6549
  %6566 = fadd fast float %6562, %6550
  %6567 = fadd fast float %6563, %6551
  %6568 = fadd fast float %6546, %6564
  %6569 = fadd fast float %6547, %6564
  %6570 = fadd fast float %6548, %6564
  %6571 = fmul fast float %6333, %4168
  %6572 = fmul fast float %6571, %6568
  %6573 = fmul fast float %6334, %4168
  %6574 = fmul fast float %6573, %6569
  %6575 = fmul fast float %6335, %4168
  %6576 = fmul fast float %6575, %6570
  %6577 = fadd fast float %6572, %6172
  %6578 = fadd fast float %6574, %6173
  %6579 = fadd fast float %6576, %6174
  %6580 = fmul fast float %6571, %6351
  %6581 = fmul fast float %6580, %6565
  %6582 = fmul fast float %6573, %6351
  %6583 = fmul fast float %6582, %6566
  %6584 = fmul fast float %6575, %6351
  %6585 = fmul fast float %6584, %6567
  %6586 = fadd fast float %6581, %6169
  %6587 = fadd fast float %6583, %6170
  %6588 = fadd fast float %6585, %6171
  br label %6247

; <label>:6589                                    ; preds = %6247
  br label %6590

; <label>:6590                                    ; preds = %6589, %6135
  %6591 = phi float [ %6137, %6135 ], [ %6248, %6589 ]
  %6592 = phi float [ %6138, %6135 ], [ %6249, %6589 ]
  %6593 = phi float [ %6139, %6135 ], [ %6250, %6589 ]
  %6594 = phi float [ %6140, %6135 ], [ %6251, %6589 ]
  %6595 = phi float [ %6141, %6135 ], [ %6252, %6589 ]
  %6596 = phi float [ %6142, %6135 ], [ %6253, %6589 ]
  %6597 = add i32 %6136, 1
  %6598 = icmp ugt i32 %6597, %6132
  br i1 %6598, label %6599, label %6135

; <label>:6599                                    ; preds = %6590
  br label %6600

; <label>:6600                                    ; preds = %6599, %6111, %6101
  %6601 = phi float [ %6102, %6101 ], [ %6102, %6111 ], [ %6591, %6599 ]
  %6602 = phi float [ %6103, %6101 ], [ %6103, %6111 ], [ %6592, %6599 ]
  %6603 = phi float [ %6104, %6101 ], [ %6104, %6111 ], [ %6593, %6599 ]
  %6604 = phi float [ %6105, %6101 ], [ %6105, %6111 ], [ %6594, %6599 ]
  %6605 = phi float [ %6106, %6101 ], [ %6106, %6111 ], [ %6595, %6599 ]
  %6606 = phi float [ %6107, %6101 ], [ %6107, %6111 ], [ %6596, %6599 ]
  %6607 = call float @dx.op.unary.f32(i32 24, float %5431)  ; Sqrt(value)
  %6608 = call float @dx.op.unary.f32(i32 24, float %5432)  ; Sqrt(value)
  %6609 = call float @dx.op.unary.f32(i32 24, float %5433)  ; Sqrt(value)
  %6610 = fmul fast float %6607, %6604
  %6611 = fmul fast float %6608, %6605
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  br i1 %199, label %6614, label %6634

; <label>:6614                                    ; preds = %6600
  %6615 = fadd fast float %6606, %4174
  %6616 = fmul fast float %6615, %4175
  %6617 = fsub fast float 1.000000e+00, %4175
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 3
  %6621 = fmul fast float %6620, %6618
  %6622 = fadd fast float %6621, %6616
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = fmul fast float %6624, %5767
  %6626 = fsub fast float %6622, %6625
  %6627 = fadd fast float %6611, %6610
  %6628 = fmul fast float %6613, %6627
  %6629 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6630 = fsub fast float %6626, %6629
  %6631 = extractvalue %dx.types.CBufRet.f32 %6619, 2
  %6632 = fmul fast float %6630, %6631
  %6633 = call float @dx.op.unary.f32(i32 7, float %6632)  ; Saturate(value)
  br label %6650

; <label>:6634                                    ; preds = %6600
  %6635 = fmul fast float %6609, %6606
  %6636 = fmul fast float %6613, %6610
  %6637 = fmul fast float %6613, %6611
  %6638 = fmul fast float %6635, %6613
  %6639 = add i32 %32, 356
  %6640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6639, i32 undef)  ; BufferLoad(srv,index,wot)
  %6641 = extractvalue %dx.types.ResRet.i32 %6640, 0
  %6642 = and i32 %6641, 32
  %6643 = icmp eq i32 %6642, 0
  br i1 %6643, label %6650, label %6644

; <label>:6644                                    ; preds = %6634
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = fmul fast float %6646, 0x3FE99999A0000000
  %6648 = fadd fast float %6646, %6636
  %6649 = fadd fast float %6647, %6638
  br label %6650

; <label>:6650                                    ; preds = %6644, %6634, %6614
  %6651 = phi float [ %6628, %6614 ], [ %6648, %6644 ], [ %6636, %6634 ]
  %6652 = phi float [ %6633, %6614 ], [ %6637, %6644 ], [ %6637, %6634 ]
  %6653 = phi float [ 1.000000e+00, %6614 ], [ %6649, %6644 ], [ %6638, %6634 ]
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = fmul fast float %6655, %6602
  %6657 = fmul fast float %6655, %6603
  %6658 = fadd fast float %6602, %6601
  %6659 = select i1 %199, float %6658, float %6601
  %6660 = fmul float %6659, %6655
  %6661 = select i1 %199, float 0.000000e+00, float %6656
  %6662 = select i1 %199, float 0.000000e+00, float %6657
  %6663 = fmul fast float %6651, %6607
  %6664 = fmul fast float %6652, %6608
  %6665 = fmul fast float %6653, %6609
  %6666 = fadd fast float %6660, %6663
  %6667 = fadd fast float %6661, %6664
  %6668 = fadd fast float %6662, %6665
  %6669 = select i1 %199, float %6652, float %6667
  %6670 = select i1 %199, float %6653, float %6668
  %6671 = call float @dx.op.binary.f32(i32 36, float %6666, float 3.225500e+04)  ; FMin(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6669, float 3.225500e+04)  ; FMin(a,b)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6670, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6672)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6673)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!45 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!46 = !{void ()* @ps_main, !"ps_main", !47, !4, !74}
!47 = !{!48, !72, null}
!48 = !{!49, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71}
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
!60 = !{i32 5, !"SH_RED", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !59}
!61 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 6, i8 0, !59}
!62 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 7, i8 0, !59}
!63 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 3, i32 8, i8 0, !57}
!64 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 9, i8 0, !59}
!65 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 10, i8 0, !55}
!66 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 11, i8 0, !59}
!67 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 12, i8 0, !57}
!68 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !50, i8 1, i32 1, i8 1, i32 13, i8 0, !69}
!69 = !{i32 3, i32 1}
!70 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !50, i8 1, i32 1, i8 4, i32 14, i8 0, !69}
!71 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !50, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

