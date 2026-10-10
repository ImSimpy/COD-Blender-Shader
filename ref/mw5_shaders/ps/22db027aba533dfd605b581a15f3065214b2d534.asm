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
; ENTITY_IDS               0    yz        12     NONE    uint     z 
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
; shader hash: ec0f2e702f87e56ca357efca58722d51
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast une float %109, 0.000000e+00
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %78, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %79, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = select i1 %110, float %121, float %125
  %129 = select i1 %110, float %122, float %126
  %130 = select i1 %110, float %123, float %127
  %131 = fmul fast float %128, %118
  %132 = fmul fast float %129, %118
  %133 = fmul fast float %130, %118
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %78
  %172 = fmul fast float %170, %79
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = select i1 %176, i32 %182, i32 0
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = and i32 %185, 3
  %187 = icmp ne i32 %186, 0
  %188 = and i32 %185, 4
  %189 = icmp ne i32 %188, 0
  %190 = and i1 %187, %189
  br i1 %190, label %191, label %200

; <label>:191                                     ; preds = %0
  %192 = fmul fast float %113, %79
  %193 = fmul fast float %112, %78
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %29, float %193, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fsub fast float 1.000000e+00, %195
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fcmp fast olt float %196, %198
  br label %203

; <label>:200                                     ; preds = %0
  %201 = icmp eq i32 %188, 0
  %202 = and i1 %187, %201
  br label %203

; <label>:203                                     ; preds = %200, %191
  %204 = phi i1 [ %199, %191 ], [ %202, %200 ]
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %78, 2.560000e+02
  %209 = frem fast float %79, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fadd fast float %213, %207
  %215 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %216 = fcmp uge float %49, 0.000000e+00
  br i1 %216, label %217, label %220

; <label>:217                                     ; preds = %203
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  br label %220

; <label>:220                                     ; preds = %217, %203
  %221 = phi float [ %219, %217 ], [ 0.000000e+00, %203 ]
  %222 = add i32 %33, 156
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %224, 4
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %224, 7
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %224, 22
  %232 = shl nuw nsw i32 %231, 5
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %33, 216
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = add i32 %33, 36
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %33, 288
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = mul i32 %34, 100
  %265 = add i32 %264, 28
  %266 = add i32 %264, 40
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = add i32 %33, 172
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = shl i32 %271, 4
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %271, 7
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %271, 22
  %279 = shl nuw nsw i32 %278, 5
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %33, 232
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = lshr i32 %283, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %283, 16
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = add i32 %33, 52
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %33, 304
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = and i32 %268, 1
  %321 = icmp ne i32 %320, 0
  %322 = select i1 %321, float %313, float %274
  %323 = select i1 %321, float %316, float %277
  %324 = select i1 %321, float %319, float %280
  %325 = add i32 %264, 44
  %326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fmul fast float %327, %322
  %329 = fmul fast float %327, %323
  %330 = fmul fast float %327, %324
  %331 = add i32 %264, 48
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = shl i32 %333, 4
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %333, 7
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %333, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = and i32 %268, 8
  %344 = icmp ne i32 %343, 0
  %345 = select i1 %344, float %336, float %286
  %346 = select i1 %344, float %339, float %290
  %347 = select i1 %344, float %342, float %294
  %348 = add i32 %264, 52
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = and i32 %268, 2
  %356 = icmp ne i32 %355, 0
  %357 = select i1 %356, float %352, float %299
  %358 = select i1 %356, float %354, float %301
  %359 = add i32 %264, 56
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = and i32 %268, 4
  %367 = icmp ne i32 %366, 0
  %368 = select i1 %367, float %363, float %306
  %369 = fmul float %368, 0x3F50624DE0000000
  %370 = select i1 %367, float %365, float %308
  %371 = fmul float %370, 0x3F50624DE0000000
  %372 = add i32 %264, 60
  %373 = add i32 %264, 32
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = add i32 %33, 188
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = shl i32 %378, 4
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %378, 7
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %378, 22
  %386 = shl nuw nsw i32 %385, 5
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %33, 248
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = lshr i32 %390, 8
  %395 = and i32 %394, 255
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = lshr i32 %390, 16
  %399 = and i32 %398, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F70101020000000
  %402 = add i32 %33, 68
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %33, 320
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = shl i32 %417, 4
  %419 = and i32 %418, 32752
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %417, 7
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %417, 22
  %425 = shl nuw nsw i32 %424, 5
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = and i32 %375, 1
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %420, float %381
  %430 = select i1 %428, float %423, float %384
  %431 = select i1 %428, float %426, float %387
  %432 = add i32 %264, 64
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = fmul fast float %434, %429
  %436 = fmul fast float %434, %430
  %437 = fmul fast float %434, %431
  %438 = add i32 %264, 68
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = shl i32 %440, 4
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %440, 7
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %440, 22
  %448 = shl nuw nsw i32 %447, 5
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = and i32 %375, 8
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %443, float %393
  %453 = select i1 %451, float %446, float %397
  %454 = select i1 %451, float %449, float %401
  %455 = add i32 %264, 72
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = and i32 %375, 2
  %463 = icmp ne i32 %462, 0
  %464 = select i1 %463, float %459, float %406
  %465 = select i1 %463, float %461, float %408
  %466 = add i32 %264, 76
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = and i32 %375, 4
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %470, float %413
  %476 = fmul float %475, 0x3F50624DE0000000
  %477 = select i1 %474, float %472, float %415
  %478 = fmul float %477, 0x3F50624DE0000000
  %479 = add i32 %264, 80
  %480 = add i32 %264, 36
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = add i32 %33, 204
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = shl i32 %485, 4
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %485, 7
  %490 = and i32 %489, 32752
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %485, 22
  %493 = shl nuw nsw i32 %492, 5
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = add i32 %33, 264
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = lshr i32 %497, 8
  %502 = and i32 %501, 255
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %503, 0x3F70101020000000
  %505 = lshr i32 %497, 16
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = add i32 %33, 84
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = add i32 %33, 336
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %518, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = shl i32 %524, 4
  %526 = and i32 %525, 32752
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %524, 7
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %524, 22
  %532 = shl nuw nsw i32 %531, 5
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = and i32 %482, 1
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %527, float %488
  %537 = select i1 %535, float %530, float %491
  %538 = select i1 %535, float %533, float %494
  %539 = add i32 %264, 84
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fmul fast float %541, %536
  %543 = fmul fast float %541, %537
  %544 = fmul fast float %541, %538
  %545 = add i32 %264, 88
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = shl i32 %547, 4
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %547, 7
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %547, 22
  %555 = shl nuw nsw i32 %554, 5
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = and i32 %482, 8
  %558 = icmp ne i32 %557, 0
  %559 = select i1 %558, float %550, float %500
  %560 = select i1 %558, float %553, float %504
  %561 = select i1 %558, float %556, float %508
  %562 = add i32 %264, 92
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %564, 16
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = and i32 %482, 2
  %570 = icmp ne i32 %569, 0
  %571 = select i1 %570, float %566, float %513
  %572 = select i1 %570, float %568, float %515
  %573 = add i32 %264, 96
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = and i32 %482, 4
  %581 = icmp ne i32 %580, 0
  %582 = select i1 %581, float %577, float %520
  %583 = fmul float %582, 0x3F50624DE0000000
  %584 = select i1 %581, float %579, float %522
  %585 = fmul float %584, 0x3F50624DE0000000
  %586 = add i32 %33, 348
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 32
  %590 = icmp eq i32 %589, 0
  %591 = and i32 %588, 64
  %592 = icmp eq i32 %591, 0
  %593 = and i32 %588, 128
  %594 = icmp eq i32 %593, 0
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 2
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %612, label %599

; <label>:599                                     ; preds = %220
  %600 = add i32 %33, 552
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add i32 %602, 0
  %604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %604, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = fmul fast float %606, %68
  %610 = fmul fast float %607, %69
  %611 = fmul fast float %608, %70
  br label %612

; <label>:612                                     ; preds = %599, %220
  %613 = phi float [ %70, %220 ], [ %611, %599 ]
  %614 = phi float [ %69, %220 ], [ %610, %599 ]
  %615 = phi float [ %68, %220 ], [ %609, %599 ]
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 2
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %639, label %620

; <label>:620                                     ; preds = %612
  %621 = add i32 %33, 44
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 1
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, float %615, float 1.000000e+00
  %627 = add i32 %33, 60
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 1
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %614, float 1.000000e+00
  %633 = add i32 %33, 76
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 1
  %637 = icmp ne i32 %636, 0
  %638 = select i1 %637, float %613, float 1.000000e+00
  br label %639

; <label>:639                                     ; preds = %620, %612
  %640 = phi float [ %613, %612 ], [ %638, %620 ]
  %641 = phi float [ %614, %612 ], [ %632, %620 ]
  %642 = phi float [ %615, %612 ], [ %626, %620 ]
  %643 = add i32 %33, 556
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = add i32 %33, 40
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %660, label %656

; <label>:656                                     ; preds = %639
  %657 = add i32 %264, 16
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  br label %660

; <label>:660                                     ; preds = %656, %639
  %661 = phi float [ %659, %656 ], [ %221, %639 ]
  %662 = and i32 %654, 536870912
  %663 = icmp ne i32 %662, 0
  %664 = add i32 %33, 116
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = shl i32 %666, 4
  %668 = and i32 %667, 32752
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %666, 7
  %671 = and i32 %670, 32752
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = fmul fast float %669, 5.000000e-01
  %674 = select i1 %663, float 4.000000e+00, float 1.000000e+00
  %675 = select i1 %663, float 1.000000e+00, float 0.000000e+00
  %676 = fadd fast float %661, -5.000000e-01
  %677 = call float @dx.op.unary.f32(i32 6, float %676)  ; FAbs(value)
  %678 = fsub fast float 5.000000e-01, %677
  %679 = call float @dx.op.binary.f32(i32 36, float %673, float %678)  ; FMin(a,b)
  %680 = fadd fast float %649, -1.000000e+00
  %681 = fadd fast float %680, %661
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %679, 2.000000e+00
  %684 = fdiv fast float %682, %683
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fmul fast float %685, %674
  %687 = fmul fast float %685, %675
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %686, %688
  %690 = bitcast float %689 to i32
  %691 = sitofp i32 %690 to float
  %692 = fadd fast float %691, 0xC1CFBF8940000000
  %693 = fmul fast float %692, %672
  %694 = fadd fast float %693, 0x41CFBF8940000000
  %695 = fptosi float %694 to i32
  %696 = bitcast i32 %695 to float
  %697 = add i32 %33, 56
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = icmp slt i32 %699, 0
  br i1 %700, label %705, label %701

; <label>:701                                     ; preds = %660
  %702 = add i32 %264, 20
  %703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  br label %705

; <label>:705                                     ; preds = %701, %660
  %706 = phi float [ %704, %701 ], [ %221, %660 ]
  %707 = and i32 %699, 536870912
  %708 = icmp ne i32 %707, 0
  %709 = add i32 %33, 132
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = shl i32 %711, 4
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %711, 7
  %716 = and i32 %715, 32752
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = fmul fast float %714, 5.000000e-01
  %719 = select i1 %708, float 4.000000e+00, float 1.000000e+00
  %720 = select i1 %708, float 1.000000e+00, float 0.000000e+00
  %721 = fadd fast float %706, -5.000000e-01
  %722 = call float @dx.op.unary.f32(i32 6, float %721)  ; FAbs(value)
  %723 = fsub fast float 5.000000e-01, %722
  %724 = call float @dx.op.binary.f32(i32 36, float %718, float %723)  ; FMin(a,b)
  %725 = fadd fast float %650, -1.000000e+00
  %726 = fadd fast float %725, %706
  %727 = fadd fast float %726, %724
  %728 = fmul fast float %724, 2.000000e+00
  %729 = fdiv fast float %727, %728
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fmul fast float %730, %719
  %732 = fmul fast float %730, %720
  %733 = fsub fast float 1.000000e+00, %732
  %734 = fmul fast float %731, %733
  %735 = bitcast float %734 to i32
  %736 = sitofp i32 %735 to float
  %737 = fadd fast float %736, 0xC1CFBF8940000000
  %738 = fmul fast float %737, %717
  %739 = fadd fast float %738, 0x41CFBF8940000000
  %740 = fptosi float %739 to i32
  %741 = bitcast i32 %740 to float
  %742 = add i32 %33, 72
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = icmp slt i32 %744, 0
  br i1 %745, label %750, label %746

; <label>:746                                     ; preds = %705
  %747 = add i32 %264, 24
  %748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  br label %750

; <label>:750                                     ; preds = %746, %705
  %751 = phi float [ %749, %746 ], [ %221, %705 ]
  %752 = and i32 %744, 536870912
  %753 = icmp ne i32 %752, 0
  %754 = add i32 %33, 148
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = shl i32 %756, 4
  %758 = and i32 %757, 32752
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = lshr i32 %756, 7
  %761 = and i32 %760, 32752
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = fmul fast float %759, 5.000000e-01
  %764 = select i1 %753, float 4.000000e+00, float 1.000000e+00
  %765 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %766 = fadd fast float %751, -5.000000e-01
  %767 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %768 = fsub fast float 5.000000e-01, %767
  %769 = call float @dx.op.binary.f32(i32 36, float %763, float %768)  ; FMin(a,b)
  %770 = fadd fast float %651, -1.000000e+00
  %771 = fadd fast float %770, %751
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %769, 2.000000e+00
  %774 = fdiv fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fmul fast float %775, %764
  %777 = fmul fast float %775, %765
  %778 = fsub fast float 1.000000e+00, %777
  %779 = fmul fast float %776, %778
  %780 = bitcast float %779 to i32
  %781 = sitofp i32 %780 to float
  %782 = fadd fast float %781, 0xC1CFBF8940000000
  %783 = fmul fast float %782, %762
  %784 = fadd fast float %783, 0x41CFBF8940000000
  %785 = fptosi float %784 to i32
  %786 = bitcast i32 %785 to float
  %787 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %696, float %741, float %786, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %789 = and i32 %654, 268435456
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %796, label %791

; <label>:791                                     ; preds = %750
  %792 = and i32 %654, 1073741824
  %793 = icmp ne i32 %792, 0
  %794 = select i1 %793, float %788, float %696
  %795 = fmul fast float %794, %642
  br label %796

; <label>:796                                     ; preds = %791, %750
  %797 = phi float [ %642, %750 ], [ %795, %791 ]
  %798 = and i32 %699, 268435456
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %805, label %800

; <label>:800                                     ; preds = %796
  %801 = and i32 %699, 1073741824
  %802 = icmp ne i32 %801, 0
  %803 = select i1 %802, float %788, float %741
  %804 = fmul fast float %803, %641
  br label %805

; <label>:805                                     ; preds = %800, %796
  %806 = phi float [ %641, %796 ], [ %804, %800 ]
  %807 = and i32 %744, 268435456
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %814, label %809

; <label>:809                                     ; preds = %805
  %810 = and i32 %744, 1073741824
  %811 = icmp ne i32 %810, 0
  %812 = select i1 %811, float %788, float %786
  %813 = fmul fast float %812, %640
  br label %814

; <label>:814                                     ; preds = %809, %805
  %815 = phi float [ %640, %805 ], [ %813, %809 ]
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = lshr i32 %817, 20
  %819 = and i32 %818, 3
  %820 = add nuw nsw i32 %819, 1
  %821 = add i32 %33, 24
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %33, 28
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = or i32 %826, %823
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %1316, label %829

; <label>:829                                     ; preds = %814
  %830 = and i32 %823, 262144
  %831 = icmp ne i32 %830, 0
  %832 = select i1 %831, float %39, float 1.000000e+00
  %833 = select i1 %831, float %40, float 0.000000e+00
  %834 = select i1 %831, float %41, float 0.000000e+00
  %835 = select i1 %831, float %42, float 1.000000e+00
  %836 = select i1 %831, float %43, float %66
  %837 = select i1 %831, float %44, float %67
  %838 = add i32 %33, 284
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = lshr i32 %840, 16
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = fmul fast float %842, 0x3F50624DE0000000
  %844 = add i32 %33, 88
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = lshr i32 %846, 16
  %848 = and i32 %847, 255
  %849 = lshr i32 %846, 24
  %850 = add i32 %33, 292
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 65535
  %854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %853)  ; LegacyF16ToF32(value)
  %855 = lshr i32 %852, 16
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = add i32 %33, 32
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = lshr i32 %859, 22
  %861 = shl nuw nsw i32 %860, 5
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = shl i32 %859, 4
  %864 = and i32 %863, 32752
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = lshr i32 %859, 7
  %867 = and i32 %866, 32752
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 3
  %871 = fmul fast float %870, 1.000000e+03
  %872 = fmul fast float %262, %871
  %873 = call float @dx.op.unary.f32(i32 22, float %872)  ; Frc(value)
  %874 = fadd fast float %873, %252
  %875 = fmul fast float %263, %871
  %876 = call float @dx.op.unary.f32(i32 22, float %875)  ; Frc(value)
  %877 = fadd fast float %876, %254
  %878 = fmul fast float %843, %871
  %879 = call float @dx.op.unary.f32(i32 22, float %878)  ; Frc(value)
  %880 = fmul fast float %879, 0x401921FB60000000
  %881 = fadd fast float %880, %862
  %882 = call float @dx.op.unary.f32(i32 13, float %881)  ; Sin(value)
  %883 = call float @dx.op.unary.f32(i32 12, float %881)  ; Cos(value)
  %884 = fsub fast float -0.000000e+00, %882
  %885 = fadd fast float %836, -5.000000e-01
  %886 = fadd fast float %837, -5.000000e-01
  %887 = fmul fast float %854, %885
  %888 = fmul fast float %856, %886
  %889 = fadd fast float %887, 5.000000e-01
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fmul fast float %865, %889
  %892 = fmul fast float %868, %890
  %893 = fmul fast float %883, %891
  %894 = call float @dx.op.tertiary.f32(i32 46, float %884, float %892, float %893)  ; FMad(a,b,c)
  %895 = fmul fast float %882, %891
  %896 = call float @dx.op.tertiary.f32(i32 46, float %883, float %892, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %874, %894
  %898 = fadd fast float %877, %896
  %899 = icmp ugt i32 %848, 1
  %900 = icmp ugt i32 %846, 33554431
  %901 = or i1 %900, %899
  br i1 %901, label %902, label %927

; <label>:902                                     ; preds = %829
  %903 = add i32 %33, 228
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = lshr i32 %905, 16
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = fmul fast float %870, %907
  %909 = call float @dx.op.unary.f32(i32 22, float %908)  ; Frc(value)
  %910 = mul nuw nsw i32 %848, %849
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %909, %911
  %913 = call float @dx.op.unary.f32(i32 27, float %912)  ; Round_ni(value)
  %914 = fptoui float %913 to i32
  %915 = urem i32 %914, %848
  %916 = udiv i32 %914, %849
  %917 = call float @dx.op.unary.f32(i32 22, float %897)  ; Frc(value)
  %918 = call float @dx.op.unary.f32(i32 22, float %898)  ; Frc(value)
  %919 = uitofp i32 %915 to float
  %920 = uitofp i32 %916 to float
  %921 = fadd fast float %917, %919
  %922 = fadd fast float %918, %920
  %923 = uitofp i32 %848 to float
  %924 = uitofp i32 %849 to float
  %925 = fdiv fast float %921, %923
  %926 = fdiv fast float %922, %924
  br label %927

; <label>:927                                     ; preds = %902, %829
  %928 = phi float [ %925, %902 ], [ %897, %829 ]
  %929 = phi float [ %926, %902 ], [ %898, %829 ]
  %930 = and i32 %823, 16
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1128, label %932

; <label>:932                                     ; preds = %927
  %933 = add i32 %33, 440
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = add i32 %935, 0
  %937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %937, %dx.types.Handle %74, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = and i32 %846, 255
  %944 = uitofp i32 %943 to float
  %945 = lshr i32 %846, 8
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %942, %944
  %949 = fadd fast float %948, %947
  %950 = fmul fast float %949, 0x3F70101000000000
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 512
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %963, label %955

; <label>:955                                     ; preds = %932
  %956 = add i32 %33, 520
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = add i32 %958, 0
  %960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %960, %dx.types.Handle %75, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  br label %963

; <label>:963                                     ; preds = %955, %932
  %964 = phi float [ %962, %955 ], [ 1.000000e+00, %932 ]
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 33554432
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %1075, label %969

; <label>:969                                     ; preds = %963
  %970 = add i32 %33, 224
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %972, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = add i32 %33, 228
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 65535
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 24
  %985 = uitofp i32 %984 to float
  %986 = fmul fast float %985, 0x3F70101020000000
  %987 = and i32 %983, 255
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3F70101020000000
  %990 = lshr i32 %983, 8
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = fmul fast float %992, 0x3F70101020000000
  %994 = lshr i32 %983, 16
  %995 = and i32 %994, 255
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %996, 0x3F70101020000000
  %998 = add i32 %33, 220
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = lshr i32 %1000, 24
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101020000000
  %1004 = and i32 %1000, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 0x3F70101020000000
  %1007 = lshr i32 %1000, 8
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = fmul fast float %1009, 0x3F70101020000000
  %1011 = lshr i32 %1000, 16
  %1012 = and i32 %1011, 255
  %1013 = uitofp i32 %1012 to float
  %1014 = fmul fast float %1013, 0x3F70101020000000
  %1015 = bitcast float %939 to i32
  %1016 = ashr i32 %1015, 1
  %1017 = sub nsw i32 1597463174, %1016
  %1018 = bitcast i32 %1017 to float
  %1019 = fmul fast float %939, 5.000000e-01
  %1020 = fmul fast float %1018, %1018
  %1021 = fmul fast float %1020, %1019
  %1022 = fsub fast float 1.500000e+00, %1021
  %1023 = fmul fast float %1018, %939
  %1024 = fmul fast float %1023, %1022
  %1025 = bitcast float %940 to i32
  %1026 = ashr i32 %1025, 1
  %1027 = sub nsw i32 1597463174, %1026
  %1028 = bitcast i32 %1027 to float
  %1029 = fmul fast float %940, 5.000000e-01
  %1030 = fmul fast float %1028, %1028
  %1031 = fmul fast float %1030, %1029
  %1032 = fsub fast float 1.500000e+00, %1031
  %1033 = fmul fast float %1028, %940
  %1034 = fmul fast float %1033, %1032
  %1035 = bitcast float %941 to i32
  %1036 = ashr i32 %1035, 1
  %1037 = sub nsw i32 1597463174, %1036
  %1038 = bitcast i32 %1037 to float
  %1039 = fmul fast float %941, 5.000000e-01
  %1040 = fmul fast float %1038, %1038
  %1041 = fmul fast float %1040, %1039
  %1042 = fsub fast float 1.500000e+00, %1041
  %1043 = fmul fast float %1038, %941
  %1044 = fmul fast float %1043, %1042
  %1045 = fsub fast float %1024, %1006
  %1046 = fsub fast float %1034, %1010
  %1047 = fsub fast float %1044, %1014
  %1048 = fmul fast float %1045, %974
  %1049 = fmul fast float %1046, %976
  %1050 = fmul fast float %1047, %981
  %1051 = fadd fast float %1048, %989
  %1052 = fadd fast float %1049, %993
  %1053 = fadd fast float %1050, %997
  %1054 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1055 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1056 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1057 = fmul fast float %1054, %1054
  %1058 = fmul fast float %1055, %1055
  %1059 = fmul fast float %1056, %1056
  %1060 = fsub fast float %1057, %939
  %1061 = fsub fast float %1058, %940
  %1062 = fsub fast float %1059, %941
  %1063 = fmul fast float %1060, %964
  %1064 = fmul fast float %1061, %964
  %1065 = fmul fast float %1062, %964
  %1066 = fadd fast float %1063, %939
  %1067 = fadd fast float %1064, %940
  %1068 = fadd fast float %1065, %941
  %1069 = fadd fast float %986, %950
  %1070 = fsub fast float %1069, %1003
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fsub fast float %1071, %950
  %1073 = fmul fast float %1072, %964
  %1074 = fadd fast float %1073, %950
  br label %1128

; <label>:1075                                    ; preds = %963
  %1076 = and i32 %966, 134217728
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1112, label %1078

; <label>:1078                                    ; preds = %1075
  %1079 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1080 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1081 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1082 = fadd fast float %1079, -5.000000e-01
  %1083 = fadd fast float %1080, -5.000000e-01
  %1084 = fadd fast float %1081, -5.000000e-01
  %1085 = fmul fast float %1082, %964
  %1086 = fmul fast float %1083, %964
  %1087 = fmul fast float %1084, %964
  %1088 = fadd fast float %1085, 5.000000e-01
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = fadd fast float %1087, 5.000000e-01
  %1091 = call float @dx.op.unary.f32(i32 24, float %939)  ; Sqrt(value)
  %1092 = call float @dx.op.unary.f32(i32 24, float %940)  ; Sqrt(value)
  %1093 = call float @dx.op.unary.f32(i32 24, float %941)  ; Sqrt(value)
  %1094 = fmul fast float %1088, 2.000000e+00
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = fmul fast float %1095, %1091
  %1097 = fadd fast float %1096, %1094
  %1098 = fmul fast float %1097, %1091
  %1099 = fmul fast float %1089, 2.000000e+00
  %1100 = fsub fast float 1.000000e+00, %1099
  %1101 = fmul fast float %1100, %1092
  %1102 = fadd fast float %1101, %1099
  %1103 = fmul fast float %1102, %1092
  %1104 = fmul fast float %1090, 2.000000e+00
  %1105 = fsub fast float 1.000000e+00, %1104
  %1106 = fmul fast float %1105, %1093
  %1107 = fadd fast float %1106, %1104
  %1108 = fmul fast float %1107, %1093
  %1109 = fmul fast float %1098, %1098
  %1110 = fmul fast float %1103, %1103
  %1111 = fmul fast float %1108, %1108
  br label %1128

; <label>:1112                                    ; preds = %1075
  %1113 = fmul fast float %239, %239
  %1114 = fmul fast float %243, %243
  %1115 = fmul fast float %247, %247
  %1116 = fadd fast float %1113, -1.000000e+00
  %1117 = fadd fast float %1114, -1.000000e+00
  %1118 = fadd fast float %1115, -1.000000e+00
  %1119 = fmul fast float %964, %1116
  %1120 = fmul fast float %964, %1117
  %1121 = fmul fast float %964, %1118
  %1122 = fadd fast float %1119, 1.000000e+00
  %1123 = fadd fast float %1120, 1.000000e+00
  %1124 = fadd fast float %1121, 1.000000e+00
  %1125 = fmul fast float %1122, %939
  %1126 = fmul fast float %1123, %940
  %1127 = fmul fast float %1124, %941
  br label %1128

; <label>:1128                                    ; preds = %1112, %1078, %969, %927
  %1129 = phi float [ %1074, %969 ], [ %950, %1078 ], [ %950, %1112 ], [ 0x3FA23C0BE0000000, %927 ]
  %1130 = phi float [ %1066, %969 ], [ %1109, %1078 ], [ %1125, %1112 ], [ 1.000000e+00, %927 ]
  %1131 = phi float [ %1067, %969 ], [ %1110, %1078 ], [ %1126, %1112 ], [ 1.000000e+00, %927 ]
  %1132 = phi float [ %1068, %969 ], [ %1111, %1078 ], [ %1127, %1112 ], [ 1.000000e+00, %927 ]
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 1
  %1135 = and i32 %1134, 1
  %1136 = icmp ne i32 %1135, 0
  %1137 = add i32 %33, 356
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 32
  %1141 = icmp ne i32 %1140, 0
  %1142 = and i1 %1136, %1141
  %1143 = select i1 %1142, float 1.000000e+00, float %1130
  %1144 = select i1 %1142, float 0x3FD3333340000000, float %1131
  %1145 = select i1 %1142, float 0x3FD3333340000000, float %1132
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 32
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1222, label %1150

; <label>:1150                                    ; preds = %1128
  %1151 = add i32 %33, 92
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %33, 456
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %1156, 0
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1158, %dx.types.Handle %74, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = extractvalue %dx.types.ResRet.f32 %1159, 3
  %1164 = and i32 %1153, 255
  %1165 = uitofp i32 %1164 to float
  %1166 = lshr i32 %1153, 8
  %1167 = and i32 %1166, 255
  %1168 = uitofp i32 %1167 to float
  %1169 = lshr i32 %1153, 16
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101000000000
  %1173 = fmul fast float %1160, %1165
  %1174 = fadd fast float %1173, %1168
  %1175 = fmul fast float %1174, 0x3F70101000000000
  %1176 = fadd fast float %1161, -5.000000e-01
  %1177 = fadd fast float %1163, -5.000000e-01
  %1178 = fmul fast float %1176, %1172
  %1179 = fmul fast float %1177, %1172
  %1180 = fadd fast float %1178, 5.000000e-01
  %1181 = fadd fast float %1179, 5.000000e-01
  %1182 = fmul fast float %1180, 2.000000e+00
  %1183 = fadd fast float %1182, -1.000000e+00
  %1184 = fmul fast float %1181, 2.000000e+00
  %1185 = fadd fast float %1184, -1.000000e+00
  %1186 = fadd fast float %1183, %1185
  %1187 = fmul fast float %1186, 5.000000e-01
  %1188 = fsub fast float %1183, %1185
  %1189 = fmul fast float %1188, 5.000000e-01
  %1190 = call float @dx.op.unary.f32(i32 6, float %1187)  ; FAbs(value)
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = call float @dx.op.unary.f32(i32 6, float %1189)  ; FAbs(value)
  %1193 = fsub fast float %1191, %1192
  %1194 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1189, float %1193, float %1187, float %1189, float %1193)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = call float @dx.op.unary.f32(i32 25, float %1194)  ; Rsqrt(value)
  %1196 = fmul fast float %1187, %1195
  %1197 = fmul fast float %1189, %1195
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 67108864
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1218, label %1202

; <label>:1202                                    ; preds = %1150
  %1203 = add i32 %33, 280
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 65535
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 65535
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = lshr i32 %1205, 16
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = fsub fast float %1175, %1213
  %1215 = fmul fast float %1214, %1207
  %1216 = fadd fast float %1215, %1211
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  br label %1218

; <label>:1218                                    ; preds = %1202, %1150
  %1219 = phi float [ %1217, %1202 ], [ %1175, %1150 ]
  %1220 = call float @dx.op.dot2.f32(i32 54, float %1196, float %1197, float %832, float %833)  ; Dot2(ax,ay,bx,by)
  %1221 = call float @dx.op.dot2.f32(i32 54, float %1196, float %1197, float %834, float %835)  ; Dot2(ax,ay,bx,by)
  br label %1222

; <label>:1222                                    ; preds = %1218, %1128
  %1223 = phi float [ %1219, %1218 ], [ 0x3FD6666660000000, %1128 ]
  %1224 = phi float [ %1220, %1218 ], [ 0.000000e+00, %1128 ]
  %1225 = phi float [ %1221, %1218 ], [ 0.000000e+00, %1128 ]
  %1226 = phi float [ %1162, %1218 ], [ 1.000000e+00, %1128 ]
  %1227 = add i32 %33, 160
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 22
  %1231 = shl nuw nsw i32 %1230, 5
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 64
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1270, label %1237

; <label>:1237                                    ; preds = %1222
  %1238 = add i32 %33, 472
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 131072
  %1246 = icmp eq i32 %1245, 0
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %74, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = fmul fast float %1248, %227
  %1252 = fmul fast float %1249, %230
  %1253 = fmul fast float %1250, %233
  br i1 %1246, label %1260, label %1254

; <label>:1254                                    ; preds = %1237
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = fmul fast float %1256, %1251
  %1258 = fmul fast float %1256, %1252
  %1259 = fmul fast float %1256, %1253
  br label %1260

; <label>:1260                                    ; preds = %1254, %1237
  %1261 = phi float [ %1257, %1254 ], [ %1251, %1237 ]
  %1262 = phi float [ %1258, %1254 ], [ %1252, %1237 ]
  %1263 = phi float [ %1259, %1254 ], [ %1253, %1237 ]
  %1264 = fmul fast float %1261, %1232
  %1265 = select i1 %204, float %1264, float %1261
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1265, float %1262, float %1263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = select i1 %204, float 0.000000e+00, float %1261
  %1268 = select i1 %204, float %1266, float %1262
  %1269 = select i1 %204, float 0.000000e+00, float %1263
  br label %1270

; <label>:1270                                    ; preds = %1260, %1222
  %1271 = phi float [ %1267, %1260 ], [ 0.000000e+00, %1222 ]
  %1272 = phi float [ %1268, %1260 ], [ 0.000000e+00, %1222 ]
  %1273 = phi float [ %1269, %1260 ], [ 0.000000e+00, %1222 ]
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 26624
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1301, label %1278

; <label>:1278                                    ; preds = %1270
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 16384
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1301, label %1283

; <label>:1283                                    ; preds = %1278
  %1284 = and i32 %1280, 1048576
  %1285 = icmp ne i32 %1284, 0
  %1286 = add i32 %33, 536
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = add i32 %1288, 0
  %1290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1290, %dx.types.Handle %75, float %928, float %929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = add i32 %33, 96
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 24
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1292, 0x3F70101020000000
  %1299 = select i1 %1285, float 0x3F70101020000000, float %1298
  %1300 = fmul fast float %1299, %1297
  br label %1301

; <label>:1301                                    ; preds = %1283, %1278, %1270
  %1302 = phi float [ %1300, %1283 ], [ 0.000000e+00, %1278 ], [ 0.000000e+00, %1270 ]
  %1303 = add i32 %33, 96
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = lshr i32 %1305, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = fmul fast float %1310, %1311
  %1313 = fadd fast float %1312, %1307
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  br label %1316

; <label>:1316                                    ; preds = %1301, %814
  %1317 = phi float [ 0.000000e+00, %814 ], [ %1224, %1301 ]
  %1318 = phi float [ 0.000000e+00, %814 ], [ %1225, %1301 ]
  %1319 = phi float [ 0.000000e+00, %814 ], [ %1143, %1301 ]
  %1320 = phi float [ 0.000000e+00, %814 ], [ %1144, %1301 ]
  %1321 = phi float [ 0.000000e+00, %814 ], [ %1145, %1301 ]
  %1322 = phi float [ 0.000000e+00, %814 ], [ %1271, %1301 ]
  %1323 = phi float [ 0.000000e+00, %814 ], [ %1272, %1301 ]
  %1324 = phi float [ 0.000000e+00, %814 ], [ %1273, %1301 ]
  %1325 = phi float [ 0.000000e+00, %814 ], [ %1129, %1301 ]
  %1326 = phi float [ 0.000000e+00, %814 ], [ 1.000000e+00, %1301 ]
  %1327 = phi float [ 0.000000e+00, %814 ], [ %1223, %1301 ]
  %1328 = phi float [ 0.000000e+00, %814 ], [ %1226, %1301 ]
  %1329 = phi float [ 0.000000e+00, %814 ], [ %1302, %1301 ]
  %1330 = phi float [ 0.000000e+00, %814 ], [ %1315, %1301 ]
  br i1 %590, label %2094, label %1331

; <label>:1331                                    ; preds = %1316
  %1332 = icmp ult i32 %820, 2
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %33, 44
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = or i32 %1337, %1334
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %2094, label %1340

; <label>:1340                                    ; preds = %1331
  %1341 = and i32 %1334, 262144
  %1342 = icmp ne i32 %1341, 0
  %1343 = select i1 %1342, float %39, float 1.000000e+00
  %1344 = select i1 %1342, float %40, float 0.000000e+00
  %1345 = select i1 %1342, float %41, float 0.000000e+00
  %1346 = select i1 %1342, float %42, float 1.000000e+00
  %1347 = select i1 %1342, float %43, float %66
  %1348 = select i1 %1342, float %44, float %67
  %1349 = add i32 %33, 300
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = lshr i32 %1351, 16
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = fmul fast float %1353, 0x3F50624DE0000000
  %1355 = add i32 %33, 104
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = lshr i32 %1357, 16
  %1359 = and i32 %1358, 255
  %1360 = lshr i32 %1357, 24
  %1361 = add i32 %33, 308
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 65535
  %1365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1364)  ; LegacyF16ToF32(value)
  %1366 = lshr i32 %1363, 16
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = add i32 %33, 48
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = lshr i32 %1370, 22
  %1372 = shl nuw nsw i32 %1371, 5
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = shl i32 %1370, 4
  %1375 = and i32 %1374, 32752
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = lshr i32 %1370, 7
  %1378 = and i32 %1377, 32752
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1382 = fmul fast float %1381, 1.000000e+03
  %1383 = fmul fast float %1382, %369
  %1384 = call float @dx.op.unary.f32(i32 22, float %1383)  ; Frc(value)
  %1385 = fadd fast float %1384, %357
  %1386 = fmul fast float %1382, %371
  %1387 = call float @dx.op.unary.f32(i32 22, float %1386)  ; Frc(value)
  %1388 = fadd fast float %1387, %358
  %1389 = fmul fast float %1354, %1382
  %1390 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1391 = fmul fast float %1390, 0x401921FB60000000
  %1392 = fadd fast float %1391, %1373
  %1393 = call float @dx.op.unary.f32(i32 13, float %1392)  ; Sin(value)
  %1394 = call float @dx.op.unary.f32(i32 12, float %1392)  ; Cos(value)
  %1395 = fsub fast float -0.000000e+00, %1393
  %1396 = fadd fast float %1347, -5.000000e-01
  %1397 = fadd fast float %1348, -5.000000e-01
  %1398 = fmul fast float %1365, %1396
  %1399 = fmul fast float %1367, %1397
  %1400 = fadd fast float %1398, 5.000000e-01
  %1401 = fadd fast float %1399, 5.000000e-01
  %1402 = fmul fast float %1376, %1400
  %1403 = fmul fast float %1379, %1401
  %1404 = fmul fast float %1394, %1402
  %1405 = call float @dx.op.tertiary.f32(i32 46, float %1395, float %1403, float %1404)  ; FMad(a,b,c)
  %1406 = fmul fast float %1393, %1402
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1394, float %1403, float %1406)  ; FMad(a,b,c)
  %1408 = fadd fast float %1385, %1405
  %1409 = fadd fast float %1388, %1407
  %1410 = icmp ugt i32 %1359, 1
  %1411 = icmp ugt i32 %1357, 33554431
  %1412 = or i1 %1411, %1410
  br i1 %1412, label %1413, label %1438

; <label>:1413                                    ; preds = %1340
  %1414 = add i32 %33, 244
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = lshr i32 %1416, 16
  %1418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1417)  ; LegacyF16ToF32(value)
  %1419 = fmul fast float %1381, %1418
  %1420 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1421 = mul nuw nsw i32 %1359, %1360
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1420, %1422
  %1424 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1425 = fptoui float %1424 to i32
  %1426 = urem i32 %1425, %1359
  %1427 = udiv i32 %1425, %1360
  %1428 = call float @dx.op.unary.f32(i32 22, float %1408)  ; Frc(value)
  %1429 = call float @dx.op.unary.f32(i32 22, float %1409)  ; Frc(value)
  %1430 = uitofp i32 %1426 to float
  %1431 = uitofp i32 %1427 to float
  %1432 = fadd fast float %1428, %1430
  %1433 = fadd fast float %1429, %1431
  %1434 = uitofp i32 %1359 to float
  %1435 = uitofp i32 %1360 to float
  %1436 = fdiv fast float %1432, %1434
  %1437 = fdiv fast float %1433, %1435
  br label %1438

; <label>:1438                                    ; preds = %1413, %1340
  %1439 = phi float [ %1436, %1413 ], [ %1408, %1340 ]
  %1440 = phi float [ %1437, %1413 ], [ %1409, %1340 ]
  %1441 = and i32 %1334, 256
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1488, label %1443

; <label>:1443                                    ; preds = %1438
  %1444 = add i32 %33, 508
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = add i32 %1446, 0
  %1448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1448, %dx.types.Handle %75, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = shl i32 %1452, 4
  %1454 = and i32 %1453, 32752
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = lshr i32 %1452, 7
  %1457 = and i32 %1456, 32752
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = fsub fast float 1.000000e+00, %797
  %1460 = call float @dx.op.binary.f32(i32 35, float %1459, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1461 = bitcast float %797 to i32
  %1462 = sitofp i32 %1461 to float
  %1463 = fadd fast float %1462, 0xC1CFBF8940000000
  %1464 = fmul fast float %1458, %1463
  %1465 = fadd fast float %1464, 0x41CFBF8940000000
  %1466 = fptosi float %1465 to i32
  %1467 = bitcast i32 %1466 to float
  %1468 = bitcast float %1460 to i32
  %1469 = sitofp i32 %1468 to float
  %1470 = fadd fast float %1469, 0xC1CFBF8940000000
  %1471 = fmul fast float %1470, %1458
  %1472 = fadd fast float %1471, 0x41CFBF8940000000
  %1473 = fptosi float %1472 to i32
  %1474 = bitcast i32 %1473 to float
  %1475 = fmul fast float %1467, %1455
  %1476 = fmul fast float %1474, %1455
  %1477 = fsub fast float %1460, %1475
  %1478 = fadd fast float %1476, %1460
  %1479 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1481 = fsub fast float %1450, %1479
  %1482 = fsub fast float %1480, %1479
  %1483 = bitcast float %1482 to i32
  %1484 = sub nsw i32 2129859010, %1483
  %1485 = bitcast i32 %1484 to float
  %1486 = fmul fast float %1485, %1481
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  br label %1488

; <label>:1488                                    ; preds = %1443, %1438
  %1489 = phi float [ %1487, %1443 ], [ %797, %1438 ]
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 128
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1510, label %1494

; <label>:1494                                    ; preds = %1488
  %1495 = add i32 %33, 492
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = add i32 %1497, 0
  %1499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1499, %dx.types.Handle %75, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 524288
  %1505 = icmp ne i32 %1504, 0
  %1506 = fcmp fast ogt float %1501, 0x3FE0101020000000
  %1507 = select i1 %1506, float 1.000000e+00, float 0.000000e+00
  %1508 = select i1 %1505, float %1507, float %1501
  %1509 = fmul fast float %1508, %1489
  br label %1510

; <label>:1510                                    ; preds = %1494, %1488
  %1511 = phi float [ %1509, %1494 ], [ %1489, %1488 ]
  %1512 = fcmp fast ult float %1511, 0x3F70101020000000
  br i1 %1512, label %2094, label %1513

; <label>:1513                                    ; preds = %1510
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 16
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1716, label %1518

; <label>:1518                                    ; preds = %1513
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %33, 444
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %74, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = extractvalue %dx.types.ResRet.f32 %1526, 3
  %1531 = and i32 %1520, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = lshr i32 %1520, 8
  %1534 = and i32 %1533, 255
  %1535 = uitofp i32 %1534 to float
  %1536 = fmul fast float %1530, %1532
  %1537 = fadd fast float %1536, %1535
  %1538 = fmul fast float %1537, 0x3F70101000000000
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 512
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1551, label %1543

; <label>:1543                                    ; preds = %1518
  %1544 = add i32 %33, 524
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1546, 0
  %1548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1548, %dx.types.Handle %75, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  br label %1551

; <label>:1551                                    ; preds = %1543, %1518
  %1552 = phi float [ %1550, %1543 ], [ 1.000000e+00, %1518 ]
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 33554432
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1663, label %1557

; <label>:1557                                    ; preds = %1551
  %1558 = add i32 %33, 240
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 65535
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = lshr i32 %1560, 16
  %1564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1563)  ; LegacyF16ToF32(value)
  %1565 = add i32 %33, 244
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 65535
  %1569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1568)  ; LegacyF16ToF32(value)
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = lshr i32 %1571, 24
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = and i32 %1571, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = lshr i32 %1571, 8
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = lshr i32 %1571, 16
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = add i32 %33, 236
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = lshr i32 %1588, 24
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = and i32 %1588, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = lshr i32 %1588, 8
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1588, 16
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = bitcast float %1527 to i32
  %1604 = ashr i32 %1603, 1
  %1605 = sub nsw i32 1597463174, %1604
  %1606 = bitcast i32 %1605 to float
  %1607 = fmul fast float %1527, 5.000000e-01
  %1608 = fmul fast float %1606, %1606
  %1609 = fmul fast float %1608, %1607
  %1610 = fsub fast float 1.500000e+00, %1609
  %1611 = fmul fast float %1606, %1527
  %1612 = fmul fast float %1611, %1610
  %1613 = bitcast float %1528 to i32
  %1614 = ashr i32 %1613, 1
  %1615 = sub nsw i32 1597463174, %1614
  %1616 = bitcast i32 %1615 to float
  %1617 = fmul fast float %1528, 5.000000e-01
  %1618 = fmul fast float %1616, %1616
  %1619 = fmul fast float %1618, %1617
  %1620 = fsub fast float 1.500000e+00, %1619
  %1621 = fmul fast float %1616, %1528
  %1622 = fmul fast float %1621, %1620
  %1623 = bitcast float %1529 to i32
  %1624 = ashr i32 %1623, 1
  %1625 = sub nsw i32 1597463174, %1624
  %1626 = bitcast i32 %1625 to float
  %1627 = fmul fast float %1529, 5.000000e-01
  %1628 = fmul fast float %1626, %1626
  %1629 = fmul fast float %1628, %1627
  %1630 = fsub fast float 1.500000e+00, %1629
  %1631 = fmul fast float %1626, %1529
  %1632 = fmul fast float %1631, %1630
  %1633 = fsub fast float %1612, %1594
  %1634 = fsub fast float %1622, %1598
  %1635 = fsub fast float %1632, %1602
  %1636 = fmul fast float %1633, %1562
  %1637 = fmul fast float %1634, %1564
  %1638 = fmul fast float %1635, %1569
  %1639 = fadd fast float %1636, %1577
  %1640 = fadd fast float %1637, %1581
  %1641 = fadd fast float %1638, %1585
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1645 = fmul fast float %1642, %1642
  %1646 = fmul fast float %1643, %1643
  %1647 = fmul fast float %1644, %1644
  %1648 = fsub fast float %1645, %1527
  %1649 = fsub fast float %1646, %1528
  %1650 = fsub fast float %1647, %1529
  %1651 = fmul fast float %1648, %1552
  %1652 = fmul fast float %1649, %1552
  %1653 = fmul fast float %1650, %1552
  %1654 = fadd fast float %1651, %1527
  %1655 = fadd fast float %1652, %1528
  %1656 = fadd fast float %1653, %1529
  %1657 = fadd fast float %1574, %1538
  %1658 = fsub fast float %1657, %1591
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fsub fast float %1659, %1538
  %1661 = fmul fast float %1660, %1552
  %1662 = fadd fast float %1661, %1538
  br label %1716

; <label>:1663                                    ; preds = %1551
  %1664 = and i32 %1554, 134217728
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1700, label %1666

; <label>:1666                                    ; preds = %1663
  %1667 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %1668 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %1669 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %1670 = fadd fast float %1667, -5.000000e-01
  %1671 = fadd fast float %1668, -5.000000e-01
  %1672 = fadd fast float %1669, -5.000000e-01
  %1673 = fmul fast float %1670, %1552
  %1674 = fmul fast float %1671, %1552
  %1675 = fmul fast float %1672, %1552
  %1676 = fadd fast float %1673, 5.000000e-01
  %1677 = fadd fast float %1674, 5.000000e-01
  %1678 = fadd fast float %1675, 5.000000e-01
  %1679 = call float @dx.op.unary.f32(i32 24, float %1527)  ; Sqrt(value)
  %1680 = call float @dx.op.unary.f32(i32 24, float %1528)  ; Sqrt(value)
  %1681 = call float @dx.op.unary.f32(i32 24, float %1529)  ; Sqrt(value)
  %1682 = fmul fast float %1676, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1679
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1679
  %1687 = fmul fast float %1677, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1680
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1680
  %1692 = fmul fast float %1678, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1681
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1681
  %1697 = fmul fast float %1686, %1686
  %1698 = fmul fast float %1691, %1691
  %1699 = fmul fast float %1696, %1696
  br label %1716

; <label>:1700                                    ; preds = %1663
  %1701 = fmul fast float %345, %345
  %1702 = fmul fast float %346, %346
  %1703 = fmul fast float %347, %347
  %1704 = fadd fast float %1701, -1.000000e+00
  %1705 = fadd fast float %1702, -1.000000e+00
  %1706 = fadd fast float %1703, -1.000000e+00
  %1707 = fmul fast float %1552, %1704
  %1708 = fmul fast float %1552, %1705
  %1709 = fmul fast float %1552, %1706
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fmul fast float %1710, %1527
  %1714 = fmul fast float %1711, %1528
  %1715 = fmul fast float %1712, %1529
  br label %1716

; <label>:1716                                    ; preds = %1700, %1666, %1557, %1513
  %1717 = phi float [ %1662, %1557 ], [ %1538, %1666 ], [ %1538, %1700 ], [ 0x3FA23C0BE0000000, %1513 ]
  %1718 = phi float [ %1654, %1557 ], [ %1697, %1666 ], [ %1713, %1700 ], [ 1.000000e+00, %1513 ]
  %1719 = phi float [ %1655, %1557 ], [ %1698, %1666 ], [ %1714, %1700 ], [ 1.000000e+00, %1513 ]
  %1720 = phi float [ %1656, %1557 ], [ %1699, %1666 ], [ %1715, %1700 ], [ 1.000000e+00, %1513 ]
  %1721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.i32 %1721, 1
  %1723 = and i32 %1722, 1
  %1724 = icmp ne i32 %1723, 0
  %1725 = add i32 %33, 356
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 32
  %1729 = icmp ne i32 %1728, 0
  %1730 = and i1 %1724, %1729
  %1731 = select i1 %1730, float 1.000000e+00, float %1718
  %1732 = select i1 %1730, float 0x3FD3333340000000, float %1719
  %1733 = select i1 %1730, float 0x3FD3333340000000, float %1720
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = and i32 %1735, 32
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1810, label %1738

; <label>:1738                                    ; preds = %1716
  %1739 = add i32 %33, 108
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = add i32 %33, 460
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = add i32 %1744, 0
  %1746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1746, %dx.types.Handle %74, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.f32 %1747, 1
  %1750 = extractvalue %dx.types.ResRet.f32 %1747, 2
  %1751 = extractvalue %dx.types.ResRet.f32 %1747, 3
  %1752 = and i32 %1741, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = lshr i32 %1741, 8
  %1755 = and i32 %1754, 255
  %1756 = uitofp i32 %1755 to float
  %1757 = lshr i32 %1741, 16
  %1758 = and i32 %1757, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101000000000
  %1761 = fmul fast float %1748, %1753
  %1762 = fadd fast float %1761, %1756
  %1763 = fmul fast float %1762, 0x3F70101000000000
  %1764 = fadd fast float %1749, -5.000000e-01
  %1765 = fadd fast float %1751, -5.000000e-01
  %1766 = fmul fast float %1764, %1760
  %1767 = fmul fast float %1765, %1760
  %1768 = fadd fast float %1766, 5.000000e-01
  %1769 = fadd fast float %1767, 5.000000e-01
  %1770 = fmul fast float %1768, 2.000000e+00
  %1771 = fadd fast float %1770, -1.000000e+00
  %1772 = fmul fast float %1769, 2.000000e+00
  %1773 = fadd fast float %1772, -1.000000e+00
  %1774 = fadd fast float %1771, %1773
  %1775 = fmul fast float %1774, 5.000000e-01
  %1776 = fsub fast float %1771, %1773
  %1777 = fmul fast float %1776, 5.000000e-01
  %1778 = call float @dx.op.unary.f32(i32 6, float %1775)  ; FAbs(value)
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = call float @dx.op.unary.f32(i32 6, float %1777)  ; FAbs(value)
  %1781 = fsub fast float %1779, %1780
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1777, float %1781, float %1775, float %1777, float %1781)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = call float @dx.op.unary.f32(i32 25, float %1782)  ; Rsqrt(value)
  %1784 = fmul fast float %1775, %1783
  %1785 = fmul fast float %1777, %1783
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = and i32 %1787, 67108864
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1806, label %1790

; <label>:1790                                    ; preds = %1738
  %1791 = add i32 %33, 296
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 65535
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = lshr i32 %1793, 16
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = fsub fast float %1763, %1801
  %1803 = fmul fast float %1802, %1795
  %1804 = fadd fast float %1803, %1799
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  br label %1806

; <label>:1806                                    ; preds = %1790, %1738
  %1807 = phi float [ %1805, %1790 ], [ %1763, %1738 ]
  %1808 = call float @dx.op.dot2.f32(i32 54, float %1784, float %1785, float %1343, float %1344)  ; Dot2(ax,ay,bx,by)
  %1809 = call float @dx.op.dot2.f32(i32 54, float %1784, float %1785, float %1345, float %1346)  ; Dot2(ax,ay,bx,by)
  br label %1810

; <label>:1810                                    ; preds = %1806, %1716
  %1811 = phi float [ %1807, %1806 ], [ 0x3FD6666660000000, %1716 ]
  %1812 = phi float [ %1808, %1806 ], [ 0.000000e+00, %1716 ]
  %1813 = phi float [ %1809, %1806 ], [ 0.000000e+00, %1716 ]
  %1814 = phi float [ %1750, %1806 ], [ 1.000000e+00, %1716 ]
  %1815 = add i32 %33, 176
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = lshr i32 %1817, 22
  %1819 = shl nuw nsw i32 %1818, 5
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 64
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1858, label %1825

; <label>:1825                                    ; preds = %1810
  %1826 = add i32 %33, 476
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = add i32 %1828, 0
  %1830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 131072
  %1834 = icmp eq i32 %1833, 0
  %1835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1830, %dx.types.Handle %74, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.ResRet.f32 %1835, 2
  %1839 = fmul fast float %328, %1836
  %1840 = fmul fast float %329, %1837
  %1841 = fmul fast float %330, %1838
  br i1 %1834, label %1848, label %1842

; <label>:1842                                    ; preds = %1825
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = fmul fast float %1844, %1839
  %1846 = fmul fast float %1844, %1840
  %1847 = fmul fast float %1844, %1841
  br label %1848

; <label>:1848                                    ; preds = %1842, %1825
  %1849 = phi float [ %1845, %1842 ], [ %1839, %1825 ]
  %1850 = phi float [ %1846, %1842 ], [ %1840, %1825 ]
  %1851 = phi float [ %1847, %1842 ], [ %1841, %1825 ]
  %1852 = fmul fast float %1849, %1820
  %1853 = select i1 %204, float %1852, float %1849
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1853, float %1850, float %1851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = select i1 %204, float 0.000000e+00, float %1849
  %1856 = select i1 %204, float %1854, float %1850
  %1857 = select i1 %204, float 0.000000e+00, float %1851
  br label %1858

; <label>:1858                                    ; preds = %1848, %1810
  %1859 = phi float [ %1855, %1848 ], [ 0.000000e+00, %1810 ]
  %1860 = phi float [ %1856, %1848 ], [ 0.000000e+00, %1810 ]
  %1861 = phi float [ %1857, %1848 ], [ 0.000000e+00, %1810 ]
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 26624
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1889, label %1866

; <label>:1866                                    ; preds = %1858
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 16384
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1889, label %1871

; <label>:1871                                    ; preds = %1866
  %1872 = and i32 %1868, 1048576
  %1873 = icmp ne i32 %1872, 0
  %1874 = add i32 %33, 540
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = add i32 %1876, 0
  %1878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1878, %dx.types.Handle %75, float %1439, float %1440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = add i32 %33, 112
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = lshr i32 %1883, 24
  %1885 = uitofp i32 %1884 to float
  %1886 = fmul fast float %1880, 0x3F70101020000000
  %1887 = select i1 %1873, float 0x3F70101020000000, float %1886
  %1888 = fmul fast float %1887, %1885
  br label %1889

; <label>:1889                                    ; preds = %1871, %1866, %1858
  %1890 = phi float [ %1888, %1871 ], [ 0.000000e+00, %1866 ], [ 0.000000e+00, %1858 ]
  %1891 = add i32 %33, 112
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 255
  %1895 = uitofp i32 %1894 to float
  %1896 = lshr i32 %1893, 8
  %1897 = and i32 %1896, 255
  %1898 = uitofp i32 %1897 to float
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1731, float %1732, float %1733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = fmul fast float %1898, %1899
  %1901 = fadd fast float %1900, %1895
  %1902 = fmul fast float %1901, 0x3F70101020000000
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  br i1 %1332, label %1904, label %1912

; <label>:1904                                    ; preds = %1889
  %1905 = fsub fast float 1.000000e+00, %1511
  %1906 = fmul fast float %1905, %1319
  %1907 = fmul fast float %1905, %1320
  %1908 = fmul fast float %1905, %1321
  %1909 = fmul fast float %1905, %1322
  %1910 = fmul fast float %1905, %1323
  %1911 = fmul fast float %1905, %1324
  br label %1912

; <label>:1912                                    ; preds = %1904, %1889
  %1913 = phi float [ %1906, %1904 ], [ %1319, %1889 ]
  %1914 = phi float [ %1907, %1904 ], [ %1320, %1889 ]
  %1915 = phi float [ %1908, %1904 ], [ %1321, %1889 ]
  %1916 = phi float [ %1909, %1904 ], [ %1322, %1889 ]
  %1917 = phi float [ %1910, %1904 ], [ %1323, %1889 ]
  %1918 = phi float [ %1911, %1904 ], [ %1324, %1889 ]
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 3
  %1922 = icmp eq i32 %1921, 3
  br i1 %1922, label %2001, label %1923

; <label>:1923                                    ; preds = %1912
  %1924 = and i32 %1920, 16
  %1925 = icmp ne i32 %1924, 0
  %1926 = select i1 %1925, float %1511, float 0.000000e+00
  %1927 = icmp eq i32 %1921, 0
  br i1 %1927, label %1928, label %1956

; <label>:1928                                    ; preds = %1923
  %1929 = and i32 %1920, 64
  %1930 = icmp ne i32 %1929, 0
  %1931 = select i1 %1930, float %1511, float 0.000000e+00
  %1932 = fsub fast float %1731, %1913
  %1933 = fsub fast float %1732, %1914
  %1934 = fsub fast float %1733, %1915
  %1935 = fmul fast float %1926, %1932
  %1936 = fmul fast float %1926, %1933
  %1937 = fmul fast float %1926, %1934
  %1938 = fadd fast float %1935, %1913
  %1939 = fadd fast float %1936, %1914
  %1940 = fadd fast float %1937, %1915
  %1941 = fsub fast float %1717, %1325
  %1942 = fmul fast float %1926, %1941
  %1943 = fadd fast float %1942, %1325
  %1944 = fsub fast float %1859, %1916
  %1945 = fsub fast float %1860, %1917
  %1946 = fsub fast float %1861, %1918
  %1947 = fmul fast float %1931, %1944
  %1948 = fmul fast float %1931, %1945
  %1949 = fmul fast float %1931, %1946
  %1950 = fadd fast float %1947, %1916
  %1951 = fadd fast float %1948, %1917
  %1952 = fadd fast float %1949, %1918
  %1953 = fsub fast float %1903, %1330
  %1954 = fmul fast float %1926, %1953
  %1955 = fadd fast float %1954, %1330
  br label %2001

; <label>:1956                                    ; preds = %1923
  %1957 = icmp eq i32 %1921, 1
  br i1 %1957, label %1958, label %1971

; <label>:1958                                    ; preds = %1956
  %1959 = fadd fast float %1731, -1.000000e+00
  %1960 = fadd fast float %1732, -1.000000e+00
  %1961 = fadd fast float %1733, -1.000000e+00
  %1962 = fmul fast float %1926, %1959
  %1963 = fmul fast float %1926, %1960
  %1964 = fmul fast float %1926, %1961
  %1965 = fadd fast float %1962, 1.000000e+00
  %1966 = fadd fast float %1963, 1.000000e+00
  %1967 = fadd fast float %1964, 1.000000e+00
  %1968 = fmul fast float %1965, %1913
  %1969 = fmul fast float %1966, %1914
  %1970 = fmul fast float %1967, %1915
  br label %2001

; <label>:1971                                    ; preds = %1956
  %1972 = icmp eq i32 %1921, 2
  br i1 %1972, label %1973, label %2001

; <label>:1973                                    ; preds = %1971
  %1974 = call float @dx.op.unary.f32(i32 24, float %1731)  ; Sqrt(value)
  %1975 = call float @dx.op.unary.f32(i32 24, float %1732)  ; Sqrt(value)
  %1976 = call float @dx.op.unary.f32(i32 24, float %1733)  ; Sqrt(value)
  %1977 = fadd fast float %1974, -5.000000e-01
  %1978 = fadd fast float %1975, -5.000000e-01
  %1979 = fadd fast float %1976, -5.000000e-01
  %1980 = fmul fast float %1977, %1926
  %1981 = fmul fast float %1978, %1926
  %1982 = fmul fast float %1979, %1926
  %1983 = fadd fast float %1980, 5.000000e-01
  %1984 = fadd fast float %1981, 5.000000e-01
  %1985 = fadd fast float %1982, 5.000000e-01
  %1986 = fmul fast float %1983, 2.000000e+00
  %1987 = fsub fast float 1.000000e+00, %1986
  %1988 = fmul fast float %1987, %1913
  %1989 = fadd fast float %1988, %1986
  %1990 = fmul fast float %1989, %1913
  %1991 = fmul fast float %1984, 2.000000e+00
  %1992 = fsub fast float 1.000000e+00, %1991
  %1993 = fmul fast float %1992, %1914
  %1994 = fadd fast float %1993, %1991
  %1995 = fmul fast float %1994, %1914
  %1996 = fmul fast float %1985, 2.000000e+00
  %1997 = fsub fast float 1.000000e+00, %1996
  %1998 = fmul fast float %1997, %1915
  %1999 = fadd fast float %1998, %1996
  %2000 = fmul fast float %1999, %1915
  br label %2001

; <label>:2001                                    ; preds = %1973, %1971, %1958, %1928, %1912
  %2002 = phi float [ %1913, %1912 ], [ %1990, %1973 ], [ %1913, %1971 ], [ %1968, %1958 ], [ %1938, %1928 ]
  %2003 = phi float [ %1914, %1912 ], [ %1995, %1973 ], [ %1914, %1971 ], [ %1969, %1958 ], [ %1939, %1928 ]
  %2004 = phi float [ %1915, %1912 ], [ %2000, %1973 ], [ %1915, %1971 ], [ %1970, %1958 ], [ %1940, %1928 ]
  %2005 = phi float [ %1916, %1912 ], [ %1916, %1973 ], [ %1916, %1971 ], [ %1916, %1958 ], [ %1950, %1928 ]
  %2006 = phi float [ %1917, %1912 ], [ %1917, %1973 ], [ %1917, %1971 ], [ %1917, %1958 ], [ %1951, %1928 ]
  %2007 = phi float [ %1918, %1912 ], [ %1918, %1973 ], [ %1918, %1971 ], [ %1918, %1958 ], [ %1952, %1928 ]
  %2008 = phi float [ %1325, %1912 ], [ %1325, %1973 ], [ %1325, %1971 ], [ %1325, %1958 ], [ %1943, %1928 ]
  %2009 = phi float [ %1330, %1912 ], [ %1330, %1973 ], [ %1330, %1971 ], [ %1330, %1958 ], [ %1955, %1928 ]
  %2010 = and i32 %1920, 12
  %2011 = icmp eq i32 %2010, 12
  br i1 %2011, label %2094, label %2012

; <label>:2012                                    ; preds = %2001
  %2013 = and i32 %1920, 2097184
  %2014 = icmp eq i32 %2013, 2097184
  %2015 = select i1 %2014, float %1511, float 0.000000e+00
  %2016 = and i32 %1920, 4194336
  %2017 = icmp eq i32 %2016, 4194336
  %2018 = select i1 %2017, float %1511, float 0.000000e+00
  %2019 = and i32 %1920, 8388640
  %2020 = icmp eq i32 %2019, 8388640
  %2021 = select i1 %2020, float %1511, float 0.000000e+00
  %2022 = and i32 %1920, 16384
  %2023 = icmp ne i32 %2022, 0
  %2024 = select i1 %2023, float %1511, float 0.000000e+00
  %2025 = icmp eq i32 %2010, 0
  br i1 %2025, label %2026, label %2042

; <label>:2026                                    ; preds = %2012
  %2027 = fsub fast float %1812, %1317
  %2028 = fsub fast float %1813, %1318
  %2029 = fmul fast float %2015, %2027
  %2030 = fmul fast float %2015, %2028
  %2031 = fadd fast float %2029, %1317
  %2032 = fadd fast float %2030, %1318
  %2033 = fsub fast float %1814, %1328
  %2034 = fmul fast float %2018, %2033
  %2035 = fadd fast float %2034, %1328
  %2036 = fsub fast float %1811, %1327
  %2037 = fmul fast float %2021, %2036
  %2038 = fadd fast float %2037, %1327
  %2039 = fsub fast float %1890, %1329
  %2040 = fmul fast float %2024, %2039
  %2041 = fadd fast float %2040, %1329
  br label %2094

; <label>:2042                                    ; preds = %2012
  %2043 = icmp eq i32 %2010, 4
  br i1 %2043, label %2044, label %2078

; <label>:2044                                    ; preds = %2042
  %2045 = fmul fast float %2015, %1812
  %2046 = fmul fast float %2015, %1813
  %2047 = fadd fast float %2045, %1317
  %2048 = fadd fast float %2046, %1318
  %2049 = call float @dx.op.binary.f32(i32 36, float %1328, float %1814)  ; FMin(a,b)
  %2050 = fsub fast float %2049, %1328
  %2051 = fmul fast float %2050, %2018
  %2052 = fadd fast float %2051, %1328
  %2053 = fadd fast float %1811, %1327
  %2054 = fmul fast float %2053, 0x3FF337FAE0000000
  %2055 = fmul fast float %1327, %1327
  %2056 = fmul fast float %1811, %1811
  %2057 = fadd fast float %2056, %2055
  %2058 = fmul fast float %2057, 0x3FE5152B00000000
  %2059 = fmul fast float %1327, 0xBFCC1F85E0000000
  %2060 = fmul fast float %2059, %1811
  %2061 = fadd fast float %2060, 0xBFE1363700000000
  %2062 = fadd fast float %2061, %2054
  %2063 = fsub fast float %2062, %2058
  %2064 = fmul fast float %2053, 0x3FBA6F0D00000000
  %2065 = fmul fast float %2057, 0x3FD0432880000000
  %2066 = fmul fast float %1327, 0xBFEF110800000000
  %2067 = fmul fast float %2066, %1811
  %2068 = fadd fast float %2067, 1.000000e+00
  %2069 = fsub fast float %2068, %2064
  %2070 = fadd fast float %2069, %2065
  %2071 = fdiv fast float %2063, %2070
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = fsub fast float %2072, %1327
  %2074 = fmul fast float %2073, %2021
  %2075 = fadd fast float %2074, %1327
  %2076 = fmul fast float %2024, %1890
  %2077 = fadd fast float %2076, %1329
  br label %2094

; <label>:2078                                    ; preds = %2042
  %2079 = icmp eq i32 %2010, 8
  br i1 %2079, label %2080, label %2094

; <label>:2080                                    ; preds = %2078
  %2081 = fmul fast float %2015, %1812
  %2082 = fmul fast float %2015, %1813
  %2083 = fadd fast float %2081, %1317
  %2084 = fadd fast float %2082, %1318
  %2085 = call float @dx.op.binary.f32(i32 36, float %1328, float %1814)  ; FMin(a,b)
  %2086 = fsub fast float %2085, %1328
  %2087 = fmul fast float %2086, %2018
  %2088 = fadd fast float %2087, %1328
  %2089 = fsub fast float %1811, %1327
  %2090 = fmul fast float %2021, %2089
  %2091 = fadd fast float %2090, %1327
  %2092 = fmul fast float %2024, %1890
  %2093 = fadd fast float %2092, %1329
  br label %2094

; <label>:2094                                    ; preds = %2080, %2078, %2044, %2026, %2001, %1510, %1331, %1316
  %2095 = phi float [ %1317, %2001 ], [ %1317, %1510 ], [ %1317, %1316 ], [ %2083, %2080 ], [ %1317, %2078 ], [ %2047, %2044 ], [ %2031, %2026 ], [ %1317, %1331 ]
  %2096 = phi float [ %1318, %2001 ], [ %1318, %1510 ], [ %1318, %1316 ], [ %2084, %2080 ], [ %1318, %2078 ], [ %2048, %2044 ], [ %2032, %2026 ], [ %1318, %1331 ]
  %2097 = phi float [ %2002, %2001 ], [ %1319, %1510 ], [ %1319, %1316 ], [ %2002, %2080 ], [ %2002, %2078 ], [ %2002, %2044 ], [ %2002, %2026 ], [ %1319, %1331 ]
  %2098 = phi float [ %2003, %2001 ], [ %1320, %1510 ], [ %1320, %1316 ], [ %2003, %2080 ], [ %2003, %2078 ], [ %2003, %2044 ], [ %2003, %2026 ], [ %1320, %1331 ]
  %2099 = phi float [ %2004, %2001 ], [ %1321, %1510 ], [ %1321, %1316 ], [ %2004, %2080 ], [ %2004, %2078 ], [ %2004, %2044 ], [ %2004, %2026 ], [ %1321, %1331 ]
  %2100 = phi float [ %2005, %2001 ], [ %1322, %1510 ], [ %1322, %1316 ], [ %2005, %2080 ], [ %2005, %2078 ], [ %2005, %2044 ], [ %2005, %2026 ], [ %1322, %1331 ]
  %2101 = phi float [ %2006, %2001 ], [ %1323, %1510 ], [ %1323, %1316 ], [ %2006, %2080 ], [ %2006, %2078 ], [ %2006, %2044 ], [ %2006, %2026 ], [ %1323, %1331 ]
  %2102 = phi float [ %2007, %2001 ], [ %1324, %1510 ], [ %1324, %1316 ], [ %2007, %2080 ], [ %2007, %2078 ], [ %2007, %2044 ], [ %2007, %2026 ], [ %1324, %1331 ]
  %2103 = phi float [ %2008, %2001 ], [ %1325, %1510 ], [ %1325, %1316 ], [ %2008, %2080 ], [ %2008, %2078 ], [ %2008, %2044 ], [ %2008, %2026 ], [ %1325, %1331 ]
  %2104 = phi float [ %1327, %2001 ], [ %1327, %1510 ], [ %1327, %1316 ], [ %2091, %2080 ], [ %1327, %2078 ], [ %2075, %2044 ], [ %2038, %2026 ], [ %1327, %1331 ]
  %2105 = phi float [ %1328, %2001 ], [ %1328, %1510 ], [ %1328, %1316 ], [ %2088, %2080 ], [ %1328, %2078 ], [ %2052, %2044 ], [ %2035, %2026 ], [ %1328, %1331 ]
  %2106 = phi float [ %1329, %2001 ], [ %1329, %1510 ], [ %1329, %1316 ], [ %2093, %2080 ], [ %1329, %2078 ], [ %2077, %2044 ], [ %2041, %2026 ], [ %1329, %1331 ]
  %2107 = phi float [ %2009, %2001 ], [ %1330, %1510 ], [ %1330, %1316 ], [ %2009, %2080 ], [ %2009, %2078 ], [ %2009, %2044 ], [ %2009, %2026 ], [ %1330, %1331 ]
  br i1 %592, label %2871, label %2108

; <label>:2108                                    ; preds = %2094
  %2109 = icmp ult i32 %820, 3
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %33, 60
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = or i32 %2114, %2111
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2871, label %2117

; <label>:2117                                    ; preds = %2108
  %2118 = and i32 %2111, 262144
  %2119 = icmp ne i32 %2118, 0
  %2120 = select i1 %2119, float %39, float 1.000000e+00
  %2121 = select i1 %2119, float %40, float 0.000000e+00
  %2122 = select i1 %2119, float %41, float 0.000000e+00
  %2123 = select i1 %2119, float %42, float 1.000000e+00
  %2124 = select i1 %2119, float %43, float %66
  %2125 = select i1 %2119, float %44, float %67
  %2126 = add i32 %33, 316
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = lshr i32 %2128, 16
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fmul fast float %2130, 0x3F50624DE0000000
  %2132 = add i32 %33, 120
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 16
  %2136 = and i32 %2135, 255
  %2137 = lshr i32 %2134, 24
  %2138 = add i32 %33, 324
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 65535
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = lshr i32 %2140, 16
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = add i32 %33, 64
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = lshr i32 %2147, 22
  %2149 = shl nuw nsw i32 %2148, 5
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = shl i32 %2147, 4
  %2152 = and i32 %2151, 32752
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = lshr i32 %2147, 7
  %2155 = and i32 %2154, 32752
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 3
  %2159 = fmul fast float %2158, 1.000000e+03
  %2160 = fmul fast float %2159, %476
  %2161 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2162 = fadd fast float %2161, %464
  %2163 = fmul fast float %2159, %478
  %2164 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2165 = fadd fast float %2164, %465
  %2166 = fmul fast float %2131, %2159
  %2167 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2168 = fmul fast float %2167, 0x401921FB60000000
  %2169 = fadd fast float %2168, %2150
  %2170 = call float @dx.op.unary.f32(i32 13, float %2169)  ; Sin(value)
  %2171 = call float @dx.op.unary.f32(i32 12, float %2169)  ; Cos(value)
  %2172 = fsub fast float -0.000000e+00, %2170
  %2173 = fadd fast float %2124, -5.000000e-01
  %2174 = fadd fast float %2125, -5.000000e-01
  %2175 = fmul fast float %2142, %2173
  %2176 = fmul fast float %2144, %2174
  %2177 = fadd fast float %2175, 5.000000e-01
  %2178 = fadd fast float %2176, 5.000000e-01
  %2179 = fmul fast float %2153, %2177
  %2180 = fmul fast float %2156, %2178
  %2181 = fmul fast float %2171, %2179
  %2182 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2180, float %2181)  ; FMad(a,b,c)
  %2183 = fmul fast float %2170, %2179
  %2184 = call float @dx.op.tertiary.f32(i32 46, float %2171, float %2180, float %2183)  ; FMad(a,b,c)
  %2185 = fadd fast float %2162, %2182
  %2186 = fadd fast float %2165, %2184
  %2187 = icmp ugt i32 %2136, 1
  %2188 = icmp ugt i32 %2134, 33554431
  %2189 = or i1 %2188, %2187
  br i1 %2189, label %2190, label %2215

; <label>:2190                                    ; preds = %2117
  %2191 = add i32 %33, 260
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = lshr i32 %2193, 16
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = fmul fast float %2158, %2195
  %2197 = call float @dx.op.unary.f32(i32 22, float %2196)  ; Frc(value)
  %2198 = mul nuw nsw i32 %2136, %2137
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2197, %2199
  %2201 = call float @dx.op.unary.f32(i32 27, float %2200)  ; Round_ni(value)
  %2202 = fptoui float %2201 to i32
  %2203 = urem i32 %2202, %2136
  %2204 = udiv i32 %2202, %2137
  %2205 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2206 = call float @dx.op.unary.f32(i32 22, float %2186)  ; Frc(value)
  %2207 = uitofp i32 %2203 to float
  %2208 = uitofp i32 %2204 to float
  %2209 = fadd fast float %2205, %2207
  %2210 = fadd fast float %2206, %2208
  %2211 = uitofp i32 %2136 to float
  %2212 = uitofp i32 %2137 to float
  %2213 = fdiv fast float %2209, %2211
  %2214 = fdiv fast float %2210, %2212
  br label %2215

; <label>:2215                                    ; preds = %2190, %2117
  %2216 = phi float [ %2213, %2190 ], [ %2185, %2117 ]
  %2217 = phi float [ %2214, %2190 ], [ %2186, %2117 ]
  %2218 = and i32 %2111, 256
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2265, label %2220

; <label>:2220                                    ; preds = %2215
  %2221 = add i32 %33, 512
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %2223, 0
  %2225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2225, %dx.types.Handle %75, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2227 = extractvalue %dx.types.ResRet.f32 %2226, 0
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = shl i32 %2229, 4
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = lshr i32 %2229, 7
  %2234 = and i32 %2233, 32752
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = fsub fast float 1.000000e+00, %806
  %2237 = call float @dx.op.binary.f32(i32 35, float %2236, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2238 = bitcast float %806 to i32
  %2239 = sitofp i32 %2238 to float
  %2240 = fadd fast float %2239, 0xC1CFBF8940000000
  %2241 = fmul fast float %2235, %2240
  %2242 = fadd fast float %2241, 0x41CFBF8940000000
  %2243 = fptosi float %2242 to i32
  %2244 = bitcast i32 %2243 to float
  %2245 = bitcast float %2237 to i32
  %2246 = sitofp i32 %2245 to float
  %2247 = fadd fast float %2246, 0xC1CFBF8940000000
  %2248 = fmul fast float %2247, %2235
  %2249 = fadd fast float %2248, 0x41CFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2244, %2232
  %2253 = fmul fast float %2251, %2232
  %2254 = fsub fast float %2237, %2252
  %2255 = fadd fast float %2253, %2237
  %2256 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2258 = fsub fast float %2227, %2256
  %2259 = fsub fast float %2257, %2256
  %2260 = bitcast float %2259 to i32
  %2261 = sub nsw i32 2129859010, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2220, %2215
  %2266 = phi float [ %2264, %2220 ], [ %806, %2215 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 128
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2287, label %2271

; <label>:2271                                    ; preds = %2265
  %2272 = add i32 %33, 496
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %2274, 0
  %2276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2276, %dx.types.Handle %75, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 524288
  %2282 = icmp ne i32 %2281, 0
  %2283 = fcmp fast ogt float %2278, 0x3FE0101020000000
  %2284 = select i1 %2283, float 1.000000e+00, float 0.000000e+00
  %2285 = select i1 %2282, float %2284, float %2278
  %2286 = fmul fast float %2285, %2266
  br label %2287

; <label>:2287                                    ; preds = %2271, %2265
  %2288 = phi float [ %2286, %2271 ], [ %2266, %2265 ]
  %2289 = fcmp fast ult float %2288, 0x3F70101020000000
  br i1 %2289, label %2871, label %2290

; <label>:2290                                    ; preds = %2287
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = and i32 %2292, 16
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2493, label %2295

; <label>:2295                                    ; preds = %2290
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %33, 448
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %74, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = and i32 %2297, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = lshr i32 %2297, 8
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2307, %2309
  %2314 = fadd fast float %2313, %2312
  %2315 = fmul fast float %2314, 0x3F70101000000000
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 512
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2328, label %2320

; <label>:2320                                    ; preds = %2295
  %2321 = add i32 %33, 528
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %2323, 0
  %2325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2325, %dx.types.Handle %75, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  br label %2328

; <label>:2328                                    ; preds = %2320, %2295
  %2329 = phi float [ %2327, %2320 ], [ 1.000000e+00, %2295 ]
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 33554432
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2440, label %2334

; <label>:2334                                    ; preds = %2328
  %2335 = add i32 %33, 256
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = lshr i32 %2337, 16
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = add i32 %33, 260
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 24
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = and i32 %2348, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = lshr i32 %2348, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = lshr i32 %2348, 16
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = add i32 %33, 252
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 24
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = and i32 %2365, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = fmul fast float %2370, 0x3F70101020000000
  %2372 = lshr i32 %2365, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = fmul fast float %2374, 0x3F70101020000000
  %2376 = lshr i32 %2365, 16
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = bitcast float %2304 to i32
  %2381 = ashr i32 %2380, 1
  %2382 = sub nsw i32 1597463174, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2304, 5.000000e-01
  %2385 = fmul fast float %2383, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float 1.500000e+00, %2386
  %2388 = fmul fast float %2383, %2304
  %2389 = fmul fast float %2388, %2387
  %2390 = bitcast float %2305 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2305, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2305
  %2399 = fmul fast float %2398, %2397
  %2400 = bitcast float %2306 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2306, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2306
  %2409 = fmul fast float %2408, %2407
  %2410 = fsub fast float %2389, %2371
  %2411 = fsub fast float %2399, %2375
  %2412 = fsub fast float %2409, %2379
  %2413 = fmul fast float %2410, %2339
  %2414 = fmul fast float %2411, %2341
  %2415 = fmul fast float %2412, %2346
  %2416 = fadd fast float %2413, %2354
  %2417 = fadd fast float %2414, %2358
  %2418 = fadd fast float %2415, %2362
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = fmul fast float %2419, %2419
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2421, %2421
  %2425 = fsub fast float %2422, %2304
  %2426 = fsub fast float %2423, %2305
  %2427 = fsub fast float %2424, %2306
  %2428 = fmul fast float %2425, %2329
  %2429 = fmul fast float %2426, %2329
  %2430 = fmul fast float %2427, %2329
  %2431 = fadd fast float %2428, %2304
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2351, %2315
  %2435 = fsub fast float %2434, %2368
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = fsub fast float %2436, %2315
  %2438 = fmul fast float %2437, %2329
  %2439 = fadd fast float %2438, %2315
  br label %2493

; <label>:2440                                    ; preds = %2328
  %2441 = and i32 %2331, 134217728
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2477, label %2443

; <label>:2443                                    ; preds = %2440
  %2444 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %2445 = call float @dx.op.unary.f32(i32 24, float %453)  ; Sqrt(value)
  %2446 = call float @dx.op.unary.f32(i32 24, float %454)  ; Sqrt(value)
  %2447 = fadd fast float %2444, -5.000000e-01
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fmul fast float %2447, %2329
  %2451 = fmul fast float %2448, %2329
  %2452 = fmul fast float %2449, %2329
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = call float @dx.op.unary.f32(i32 24, float %2304)  ; Sqrt(value)
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = fmul fast float %2453, 2.000000e+00
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, %2456
  %2462 = fadd fast float %2461, %2459
  %2463 = fmul fast float %2462, %2456
  %2464 = fmul fast float %2454, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2457
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2457
  %2469 = fmul fast float %2455, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2458
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2458
  %2474 = fmul fast float %2463, %2463
  %2475 = fmul fast float %2468, %2468
  %2476 = fmul fast float %2473, %2473
  br label %2493

; <label>:2477                                    ; preds = %2440
  %2478 = fmul fast float %452, %452
  %2479 = fmul fast float %453, %453
  %2480 = fmul fast float %454, %454
  %2481 = fadd fast float %2478, -1.000000e+00
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fmul fast float %2329, %2481
  %2485 = fmul fast float %2329, %2482
  %2486 = fmul fast float %2329, %2483
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fmul fast float %2487, %2304
  %2491 = fmul fast float %2488, %2305
  %2492 = fmul fast float %2489, %2306
  br label %2493

; <label>:2493                                    ; preds = %2477, %2443, %2334, %2290
  %2494 = phi float [ %2439, %2334 ], [ %2315, %2443 ], [ %2315, %2477 ], [ 0x3FA23C0BE0000000, %2290 ]
  %2495 = phi float [ %2431, %2334 ], [ %2474, %2443 ], [ %2490, %2477 ], [ 1.000000e+00, %2290 ]
  %2496 = phi float [ %2432, %2334 ], [ %2475, %2443 ], [ %2491, %2477 ], [ 1.000000e+00, %2290 ]
  %2497 = phi float [ %2433, %2334 ], [ %2476, %2443 ], [ %2492, %2477 ], [ 1.000000e+00, %2290 ]
  %2498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.i32 %2498, 1
  %2500 = and i32 %2499, 1
  %2501 = icmp ne i32 %2500, 0
  %2502 = add i32 %33, 356
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 32
  %2506 = icmp ne i32 %2505, 0
  %2507 = and i1 %2501, %2506
  %2508 = select i1 %2507, float 1.000000e+00, float %2495
  %2509 = select i1 %2507, float 0x3FD3333340000000, float %2496
  %2510 = select i1 %2507, float 0x3FD3333340000000, float %2497
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 32
  %2514 = icmp eq i32 %2513, 0
  br i1 %2514, label %2587, label %2515

; <label>:2515                                    ; preds = %2493
  %2516 = add i32 %33, 124
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %33, 464
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2523, %dx.types.Handle %74, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = extractvalue %dx.types.ResRet.f32 %2524, 3
  %2529 = and i32 %2518, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2518, 8
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2518, 16
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fmul fast float %2525, %2530
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101000000000
  %2541 = fadd fast float %2526, -5.000000e-01
  %2542 = fadd fast float %2528, -5.000000e-01
  %2543 = fmul fast float %2541, %2537
  %2544 = fmul fast float %2542, %2537
  %2545 = fadd fast float %2543, 5.000000e-01
  %2546 = fadd fast float %2544, 5.000000e-01
  %2547 = fmul fast float %2545, 2.000000e+00
  %2548 = fadd fast float %2547, -1.000000e+00
  %2549 = fmul fast float %2546, 2.000000e+00
  %2550 = fadd fast float %2549, -1.000000e+00
  %2551 = fadd fast float %2548, %2550
  %2552 = fmul fast float %2551, 5.000000e-01
  %2553 = fsub fast float %2548, %2550
  %2554 = fmul fast float %2553, 5.000000e-01
  %2555 = call float @dx.op.unary.f32(i32 6, float %2552)  ; FAbs(value)
  %2556 = fsub fast float 1.000000e+00, %2555
  %2557 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2558 = fsub fast float %2556, %2557
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2552, float %2554, float %2558, float %2552, float %2554, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = call float @dx.op.unary.f32(i32 25, float %2559)  ; Rsqrt(value)
  %2561 = fmul fast float %2552, %2560
  %2562 = fmul fast float %2554, %2560
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 67108864
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2583, label %2567

; <label>:2567                                    ; preds = %2515
  %2568 = add i32 %33, 312
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 65535
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 65535
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = lshr i32 %2570, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fsub fast float %2540, %2578
  %2580 = fmul fast float %2579, %2572
  %2581 = fadd fast float %2580, %2576
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  br label %2583

; <label>:2583                                    ; preds = %2567, %2515
  %2584 = phi float [ %2582, %2567 ], [ %2540, %2515 ]
  %2585 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2120, float %2121)  ; Dot2(ax,ay,bx,by)
  %2586 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2122, float %2123)  ; Dot2(ax,ay,bx,by)
  br label %2587

; <label>:2587                                    ; preds = %2583, %2493
  %2588 = phi float [ %2584, %2583 ], [ 0x3FD6666660000000, %2493 ]
  %2589 = phi float [ %2585, %2583 ], [ 0.000000e+00, %2493 ]
  %2590 = phi float [ %2586, %2583 ], [ 0.000000e+00, %2493 ]
  %2591 = phi float [ %2527, %2583 ], [ 1.000000e+00, %2493 ]
  %2592 = add i32 %33, 192
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = lshr i32 %2594, 22
  %2596 = shl nuw nsw i32 %2595, 5
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 64
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2635, label %2602

; <label>:2602                                    ; preds = %2587
  %2603 = add i32 %33, 480
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = add i32 %2605, 0
  %2607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 131072
  %2611 = icmp eq i32 %2610, 0
  %2612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2607, %dx.types.Handle %74, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = fmul fast float %435, %2613
  %2617 = fmul fast float %436, %2614
  %2618 = fmul fast float %437, %2615
  br i1 %2611, label %2625, label %2619

; <label>:2619                                    ; preds = %2602
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = fmul fast float %2621, %2616
  %2623 = fmul fast float %2621, %2617
  %2624 = fmul fast float %2621, %2618
  br label %2625

; <label>:2625                                    ; preds = %2619, %2602
  %2626 = phi float [ %2622, %2619 ], [ %2616, %2602 ]
  %2627 = phi float [ %2623, %2619 ], [ %2617, %2602 ]
  %2628 = phi float [ %2624, %2619 ], [ %2618, %2602 ]
  %2629 = fmul fast float %2626, %2597
  %2630 = select i1 %204, float %2629, float %2626
  %2631 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2627, float %2628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2632 = select i1 %204, float 0.000000e+00, float %2626
  %2633 = select i1 %204, float %2631, float %2627
  %2634 = select i1 %204, float 0.000000e+00, float %2628
  br label %2635

; <label>:2635                                    ; preds = %2625, %2587
  %2636 = phi float [ %2632, %2625 ], [ 0.000000e+00, %2587 ]
  %2637 = phi float [ %2633, %2625 ], [ 0.000000e+00, %2587 ]
  %2638 = phi float [ %2634, %2625 ], [ 0.000000e+00, %2587 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 26624
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2666, label %2643

; <label>:2643                                    ; preds = %2635
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 16384
  %2647 = icmp eq i32 %2646, 0
  br i1 %2647, label %2666, label %2648

; <label>:2648                                    ; preds = %2643
  %2649 = and i32 %2645, 1048576
  %2650 = icmp ne i32 %2649, 0
  %2651 = add i32 %33, 544
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %75, float %2216, float %2217, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = add i32 %33, 128
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = lshr i32 %2660, 24
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2657, 0x3F70101020000000
  %2664 = select i1 %2650, float 0x3F70101020000000, float %2663
  %2665 = fmul fast float %2664, %2662
  br label %2666

; <label>:2666                                    ; preds = %2648, %2643, %2635
  %2667 = phi float [ %2665, %2648 ], [ 0.000000e+00, %2643 ], [ 0.000000e+00, %2635 ]
  %2668 = add i32 %33, 128
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = lshr i32 %2670, 8
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2508, float %2509, float %2510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = fmul fast float %2675, %2676
  %2678 = fadd fast float %2677, %2672
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  br i1 %2109, label %2681, label %2689

; <label>:2681                                    ; preds = %2666
  %2682 = fsub fast float 1.000000e+00, %2288
  %2683 = fmul fast float %2682, %2097
  %2684 = fmul fast float %2682, %2098
  %2685 = fmul fast float %2682, %2099
  %2686 = fmul fast float %2682, %2100
  %2687 = fmul fast float %2682, %2101
  %2688 = fmul fast float %2682, %2102
  br label %2689

; <label>:2689                                    ; preds = %2681, %2666
  %2690 = phi float [ %2683, %2681 ], [ %2097, %2666 ]
  %2691 = phi float [ %2684, %2681 ], [ %2098, %2666 ]
  %2692 = phi float [ %2685, %2681 ], [ %2099, %2666 ]
  %2693 = phi float [ %2686, %2681 ], [ %2100, %2666 ]
  %2694 = phi float [ %2687, %2681 ], [ %2101, %2666 ]
  %2695 = phi float [ %2688, %2681 ], [ %2102, %2666 ]
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = and i32 %2697, 3
  %2699 = icmp eq i32 %2698, 3
  br i1 %2699, label %2778, label %2700

; <label>:2700                                    ; preds = %2689
  %2701 = and i32 %2697, 16
  %2702 = icmp ne i32 %2701, 0
  %2703 = select i1 %2702, float %2288, float 0.000000e+00
  %2704 = icmp eq i32 %2698, 0
  br i1 %2704, label %2705, label %2733

; <label>:2705                                    ; preds = %2700
  %2706 = and i32 %2697, 64
  %2707 = icmp ne i32 %2706, 0
  %2708 = select i1 %2707, float %2288, float 0.000000e+00
  %2709 = fsub fast float %2508, %2690
  %2710 = fsub fast float %2509, %2691
  %2711 = fsub fast float %2510, %2692
  %2712 = fmul fast float %2703, %2709
  %2713 = fmul fast float %2703, %2710
  %2714 = fmul fast float %2703, %2711
  %2715 = fadd fast float %2712, %2690
  %2716 = fadd fast float %2713, %2691
  %2717 = fadd fast float %2714, %2692
  %2718 = fsub fast float %2494, %2103
  %2719 = fmul fast float %2703, %2718
  %2720 = fadd fast float %2719, %2103
  %2721 = fsub fast float %2636, %2693
  %2722 = fsub fast float %2637, %2694
  %2723 = fsub fast float %2638, %2695
  %2724 = fmul fast float %2708, %2721
  %2725 = fmul fast float %2708, %2722
  %2726 = fmul fast float %2708, %2723
  %2727 = fadd fast float %2724, %2693
  %2728 = fadd fast float %2725, %2694
  %2729 = fadd fast float %2726, %2695
  %2730 = fsub fast float %2680, %2107
  %2731 = fmul fast float %2703, %2730
  %2732 = fadd fast float %2731, %2107
  br label %2778

; <label>:2733                                    ; preds = %2700
  %2734 = icmp eq i32 %2698, 1
  br i1 %2734, label %2735, label %2748

; <label>:2735                                    ; preds = %2733
  %2736 = fadd fast float %2508, -1.000000e+00
  %2737 = fadd fast float %2509, -1.000000e+00
  %2738 = fadd fast float %2510, -1.000000e+00
  %2739 = fmul fast float %2703, %2736
  %2740 = fmul fast float %2703, %2737
  %2741 = fmul fast float %2703, %2738
  %2742 = fadd fast float %2739, 1.000000e+00
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fmul fast float %2742, %2690
  %2746 = fmul fast float %2743, %2691
  %2747 = fmul fast float %2744, %2692
  br label %2778

; <label>:2748                                    ; preds = %2733
  %2749 = icmp eq i32 %2698, 2
  br i1 %2749, label %2750, label %2778

; <label>:2750                                    ; preds = %2748
  %2751 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2703
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2703
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fmul fast float %2760, 2.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2690
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2690
  %2768 = fmul fast float %2761, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2691
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2691
  %2773 = fmul fast float %2762, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2692
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2692
  br label %2778

; <label>:2778                                    ; preds = %2750, %2748, %2735, %2705, %2689
  %2779 = phi float [ %2690, %2689 ], [ %2767, %2750 ], [ %2690, %2748 ], [ %2745, %2735 ], [ %2715, %2705 ]
  %2780 = phi float [ %2691, %2689 ], [ %2772, %2750 ], [ %2691, %2748 ], [ %2746, %2735 ], [ %2716, %2705 ]
  %2781 = phi float [ %2692, %2689 ], [ %2777, %2750 ], [ %2692, %2748 ], [ %2747, %2735 ], [ %2717, %2705 ]
  %2782 = phi float [ %2693, %2689 ], [ %2693, %2750 ], [ %2693, %2748 ], [ %2693, %2735 ], [ %2727, %2705 ]
  %2783 = phi float [ %2694, %2689 ], [ %2694, %2750 ], [ %2694, %2748 ], [ %2694, %2735 ], [ %2728, %2705 ]
  %2784 = phi float [ %2695, %2689 ], [ %2695, %2750 ], [ %2695, %2748 ], [ %2695, %2735 ], [ %2729, %2705 ]
  %2785 = phi float [ %2103, %2689 ], [ %2103, %2750 ], [ %2103, %2748 ], [ %2103, %2735 ], [ %2720, %2705 ]
  %2786 = phi float [ %2107, %2689 ], [ %2107, %2750 ], [ %2107, %2748 ], [ %2107, %2735 ], [ %2732, %2705 ]
  %2787 = and i32 %2697, 12
  %2788 = icmp eq i32 %2787, 12
  br i1 %2788, label %2871, label %2789

; <label>:2789                                    ; preds = %2778
  %2790 = and i32 %2697, 2097184
  %2791 = icmp eq i32 %2790, 2097184
  %2792 = select i1 %2791, float %2288, float 0.000000e+00
  %2793 = and i32 %2697, 4194336
  %2794 = icmp eq i32 %2793, 4194336
  %2795 = select i1 %2794, float %2288, float 0.000000e+00
  %2796 = and i32 %2697, 8388640
  %2797 = icmp eq i32 %2796, 8388640
  %2798 = select i1 %2797, float %2288, float 0.000000e+00
  %2799 = and i32 %2697, 16384
  %2800 = icmp ne i32 %2799, 0
  %2801 = select i1 %2800, float %2288, float 0.000000e+00
  %2802 = icmp eq i32 %2787, 0
  br i1 %2802, label %2803, label %2819

; <label>:2803                                    ; preds = %2789
  %2804 = fsub fast float %2589, %2095
  %2805 = fsub fast float %2590, %2096
  %2806 = fmul fast float %2792, %2804
  %2807 = fmul fast float %2792, %2805
  %2808 = fadd fast float %2806, %2095
  %2809 = fadd fast float %2807, %2096
  %2810 = fsub fast float %2591, %2105
  %2811 = fmul fast float %2795, %2810
  %2812 = fadd fast float %2811, %2105
  %2813 = fsub fast float %2588, %2104
  %2814 = fmul fast float %2798, %2813
  %2815 = fadd fast float %2814, %2104
  %2816 = fsub fast float %2667, %2106
  %2817 = fmul fast float %2801, %2816
  %2818 = fadd fast float %2817, %2106
  br label %2871

; <label>:2819                                    ; preds = %2789
  %2820 = icmp eq i32 %2787, 4
  br i1 %2820, label %2821, label %2855

; <label>:2821                                    ; preds = %2819
  %2822 = fmul fast float %2792, %2589
  %2823 = fmul fast float %2792, %2590
  %2824 = fadd fast float %2822, %2095
  %2825 = fadd fast float %2823, %2096
  %2826 = call float @dx.op.binary.f32(i32 36, float %2105, float %2591)  ; FMin(a,b)
  %2827 = fsub fast float %2826, %2105
  %2828 = fmul fast float %2827, %2795
  %2829 = fadd fast float %2828, %2105
  %2830 = fadd fast float %2588, %2104
  %2831 = fmul fast float %2830, 0x3FF337FAE0000000
  %2832 = fmul fast float %2104, %2104
  %2833 = fmul fast float %2588, %2588
  %2834 = fadd fast float %2833, %2832
  %2835 = fmul fast float %2834, 0x3FE5152B00000000
  %2836 = fmul fast float %2104, 0xBFCC1F85E0000000
  %2837 = fmul fast float %2836, %2588
  %2838 = fadd fast float %2837, 0xBFE1363700000000
  %2839 = fadd fast float %2838, %2831
  %2840 = fsub fast float %2839, %2835
  %2841 = fmul fast float %2830, 0x3FBA6F0D00000000
  %2842 = fmul fast float %2834, 0x3FD0432880000000
  %2843 = fmul fast float %2104, 0xBFEF110800000000
  %2844 = fmul fast float %2843, %2588
  %2845 = fadd fast float %2844, 1.000000e+00
  %2846 = fsub fast float %2845, %2841
  %2847 = fadd fast float %2846, %2842
  %2848 = fdiv fast float %2840, %2847
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = fsub fast float %2849, %2104
  %2851 = fmul fast float %2850, %2798
  %2852 = fadd fast float %2851, %2104
  %2853 = fmul fast float %2801, %2667
  %2854 = fadd fast float %2853, %2106
  br label %2871

; <label>:2855                                    ; preds = %2819
  %2856 = icmp eq i32 %2787, 8
  br i1 %2856, label %2857, label %2871

; <label>:2857                                    ; preds = %2855
  %2858 = fmul fast float %2792, %2589
  %2859 = fmul fast float %2792, %2590
  %2860 = fadd fast float %2858, %2095
  %2861 = fadd fast float %2859, %2096
  %2862 = call float @dx.op.binary.f32(i32 36, float %2105, float %2591)  ; FMin(a,b)
  %2863 = fsub fast float %2862, %2105
  %2864 = fmul fast float %2863, %2795
  %2865 = fadd fast float %2864, %2105
  %2866 = fsub fast float %2588, %2104
  %2867 = fmul fast float %2798, %2866
  %2868 = fadd fast float %2867, %2104
  %2869 = fmul fast float %2801, %2667
  %2870 = fadd fast float %2869, %2106
  br label %2871

; <label>:2871                                    ; preds = %2857, %2855, %2821, %2803, %2778, %2287, %2108, %2094
  %2872 = phi float [ %2095, %2778 ], [ %2095, %2287 ], [ %2095, %2094 ], [ %2860, %2857 ], [ %2095, %2855 ], [ %2824, %2821 ], [ %2808, %2803 ], [ %2095, %2108 ]
  %2873 = phi float [ %2096, %2778 ], [ %2096, %2287 ], [ %2096, %2094 ], [ %2861, %2857 ], [ %2096, %2855 ], [ %2825, %2821 ], [ %2809, %2803 ], [ %2096, %2108 ]
  %2874 = phi float [ %2779, %2778 ], [ %2097, %2287 ], [ %2097, %2094 ], [ %2779, %2857 ], [ %2779, %2855 ], [ %2779, %2821 ], [ %2779, %2803 ], [ %2097, %2108 ]
  %2875 = phi float [ %2780, %2778 ], [ %2098, %2287 ], [ %2098, %2094 ], [ %2780, %2857 ], [ %2780, %2855 ], [ %2780, %2821 ], [ %2780, %2803 ], [ %2098, %2108 ]
  %2876 = phi float [ %2781, %2778 ], [ %2099, %2287 ], [ %2099, %2094 ], [ %2781, %2857 ], [ %2781, %2855 ], [ %2781, %2821 ], [ %2781, %2803 ], [ %2099, %2108 ]
  %2877 = phi float [ %2782, %2778 ], [ %2100, %2287 ], [ %2100, %2094 ], [ %2782, %2857 ], [ %2782, %2855 ], [ %2782, %2821 ], [ %2782, %2803 ], [ %2100, %2108 ]
  %2878 = phi float [ %2783, %2778 ], [ %2101, %2287 ], [ %2101, %2094 ], [ %2783, %2857 ], [ %2783, %2855 ], [ %2783, %2821 ], [ %2783, %2803 ], [ %2101, %2108 ]
  %2879 = phi float [ %2784, %2778 ], [ %2102, %2287 ], [ %2102, %2094 ], [ %2784, %2857 ], [ %2784, %2855 ], [ %2784, %2821 ], [ %2784, %2803 ], [ %2102, %2108 ]
  %2880 = phi float [ %2785, %2778 ], [ %2103, %2287 ], [ %2103, %2094 ], [ %2785, %2857 ], [ %2785, %2855 ], [ %2785, %2821 ], [ %2785, %2803 ], [ %2103, %2108 ]
  %2881 = phi float [ %2104, %2778 ], [ %2104, %2287 ], [ %2104, %2094 ], [ %2868, %2857 ], [ %2104, %2855 ], [ %2852, %2821 ], [ %2815, %2803 ], [ %2104, %2108 ]
  %2882 = phi float [ %2105, %2778 ], [ %2105, %2287 ], [ %2105, %2094 ], [ %2865, %2857 ], [ %2105, %2855 ], [ %2829, %2821 ], [ %2812, %2803 ], [ %2105, %2108 ]
  %2883 = phi float [ %2106, %2778 ], [ %2106, %2287 ], [ %2106, %2094 ], [ %2870, %2857 ], [ %2106, %2855 ], [ %2854, %2821 ], [ %2818, %2803 ], [ %2106, %2108 ]
  %2884 = phi float [ %2786, %2778 ], [ %2107, %2287 ], [ %2107, %2094 ], [ %2786, %2857 ], [ %2786, %2855 ], [ %2786, %2821 ], [ %2786, %2803 ], [ %2107, %2108 ]
  br i1 %594, label %3648, label %2885

; <label>:2885                                    ; preds = %2871
  %2886 = icmp ult i32 %820, 4
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = add i32 %33, 76
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = or i32 %2891, %2888
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %3648, label %2894

; <label>:2894                                    ; preds = %2885
  %2895 = and i32 %2888, 262144
  %2896 = icmp ne i32 %2895, 0
  %2897 = select i1 %2896, float %39, float 1.000000e+00
  %2898 = select i1 %2896, float %40, float 0.000000e+00
  %2899 = select i1 %2896, float %41, float 0.000000e+00
  %2900 = select i1 %2896, float %42, float 1.000000e+00
  %2901 = select i1 %2896, float %43, float %66
  %2902 = select i1 %2896, float %44, float %67
  %2903 = add i32 %33, 332
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = lshr i32 %2905, 16
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = fmul fast float %2907, 0x3F50624DE0000000
  %2909 = add i32 %33, 136
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = lshr i32 %2911, 16
  %2913 = and i32 %2912, 255
  %2914 = lshr i32 %2911, 24
  %2915 = add i32 %33, 340
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 65535
  %2919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2918)  ; LegacyF16ToF32(value)
  %2920 = lshr i32 %2917, 16
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = add i32 %33, 80
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 22
  %2926 = shl nuw nsw i32 %2925, 5
  %2927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2926)  ; LegacyF16ToF32(value)
  %2928 = shl i32 %2924, 4
  %2929 = and i32 %2928, 32752
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = lshr i32 %2924, 7
  %2932 = and i32 %2931, 32752
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 3
  %2936 = fmul fast float %2935, 1.000000e+03
  %2937 = fmul fast float %2936, %583
  %2938 = call float @dx.op.unary.f32(i32 22, float %2937)  ; Frc(value)
  %2939 = fadd fast float %2938, %571
  %2940 = fmul fast float %2936, %585
  %2941 = call float @dx.op.unary.f32(i32 22, float %2940)  ; Frc(value)
  %2942 = fadd fast float %2941, %572
  %2943 = fmul fast float %2908, %2936
  %2944 = call float @dx.op.unary.f32(i32 22, float %2943)  ; Frc(value)
  %2945 = fmul fast float %2944, 0x401921FB60000000
  %2946 = fadd fast float %2945, %2927
  %2947 = call float @dx.op.unary.f32(i32 13, float %2946)  ; Sin(value)
  %2948 = call float @dx.op.unary.f32(i32 12, float %2946)  ; Cos(value)
  %2949 = fsub fast float -0.000000e+00, %2947
  %2950 = fadd fast float %2901, -5.000000e-01
  %2951 = fadd fast float %2902, -5.000000e-01
  %2952 = fmul fast float %2919, %2950
  %2953 = fmul fast float %2921, %2951
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fadd fast float %2953, 5.000000e-01
  %2956 = fmul fast float %2930, %2954
  %2957 = fmul fast float %2933, %2955
  %2958 = fmul fast float %2948, %2956
  %2959 = call float @dx.op.tertiary.f32(i32 46, float %2949, float %2957, float %2958)  ; FMad(a,b,c)
  %2960 = fmul fast float %2947, %2956
  %2961 = call float @dx.op.tertiary.f32(i32 46, float %2948, float %2957, float %2960)  ; FMad(a,b,c)
  %2962 = fadd fast float %2939, %2959
  %2963 = fadd fast float %2942, %2961
  %2964 = icmp ugt i32 %2913, 1
  %2965 = icmp ugt i32 %2911, 33554431
  %2966 = or i1 %2965, %2964
  br i1 %2966, label %2967, label %2992

; <label>:2967                                    ; preds = %2894
  %2968 = add i32 %33, 276
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 16
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = fmul fast float %2935, %2972
  %2974 = call float @dx.op.unary.f32(i32 22, float %2973)  ; Frc(value)
  %2975 = mul nuw nsw i32 %2913, %2914
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2974, %2976
  %2978 = call float @dx.op.unary.f32(i32 27, float %2977)  ; Round_ni(value)
  %2979 = fptoui float %2978 to i32
  %2980 = urem i32 %2979, %2913
  %2981 = udiv i32 %2979, %2914
  %2982 = call float @dx.op.unary.f32(i32 22, float %2962)  ; Frc(value)
  %2983 = call float @dx.op.unary.f32(i32 22, float %2963)  ; Frc(value)
  %2984 = uitofp i32 %2980 to float
  %2985 = uitofp i32 %2981 to float
  %2986 = fadd fast float %2982, %2984
  %2987 = fadd fast float %2983, %2985
  %2988 = uitofp i32 %2913 to float
  %2989 = uitofp i32 %2914 to float
  %2990 = fdiv fast float %2986, %2988
  %2991 = fdiv fast float %2987, %2989
  br label %2992

; <label>:2992                                    ; preds = %2967, %2894
  %2993 = phi float [ %2990, %2967 ], [ %2962, %2894 ]
  %2994 = phi float [ %2991, %2967 ], [ %2963, %2894 ]
  %2995 = and i32 %2888, 256
  %2996 = icmp eq i32 %2995, 0
  br i1 %2996, label %3042, label %2997

; <label>:2997                                    ; preds = %2992
  %2998 = add i32 %33, 516
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = add i32 %3000, 0
  %3002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3002, %dx.types.Handle %75, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = shl i32 %3006, 4
  %3008 = and i32 %3007, 32752
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = lshr i32 %3006, 7
  %3011 = and i32 %3010, 32752
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = fsub fast float 1.000000e+00, %815
  %3014 = call float @dx.op.binary.f32(i32 35, float %3013, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3015 = bitcast float %815 to i32
  %3016 = sitofp i32 %3015 to float
  %3017 = fadd fast float %3016, 0xC1CFBF8940000000
  %3018 = fmul fast float %3012, %3017
  %3019 = fadd fast float %3018, 0x41CFBF8940000000
  %3020 = fptosi float %3019 to i32
  %3021 = bitcast i32 %3020 to float
  %3022 = bitcast float %3014 to i32
  %3023 = sitofp i32 %3022 to float
  %3024 = fadd fast float %3023, 0xC1CFBF8940000000
  %3025 = fmul fast float %3024, %3012
  %3026 = fadd fast float %3025, 0x41CFBF8940000000
  %3027 = fptosi float %3026 to i32
  %3028 = bitcast i32 %3027 to float
  %3029 = fmul fast float %3021, %3009
  %3030 = fmul fast float %3028, %3009
  %3031 = fsub fast float %3014, %3029
  %3032 = fadd fast float %3030, %3014
  %3033 = call float @dx.op.unary.f32(i32 7, float %3031)  ; Saturate(value)
  %3034 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3035 = fsub fast float %3004, %3033
  %3036 = fsub fast float %3034, %3033
  %3037 = bitcast float %3036 to i32
  %3038 = sub nsw i32 2129859010, %3037
  %3039 = bitcast i32 %3038 to float
  %3040 = fmul fast float %3039, %3035
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  br label %3042

; <label>:3042                                    ; preds = %2997, %2992
  %3043 = phi float [ %3041, %2997 ], [ %815, %2992 ]
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 128
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3064, label %3048

; <label>:3048                                    ; preds = %3042
  %3049 = add i32 %33, 500
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %75, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 524288
  %3059 = icmp ne i32 %3058, 0
  %3060 = fcmp fast ogt float %3055, 0x3FE0101020000000
  %3061 = select i1 %3060, float 1.000000e+00, float 0.000000e+00
  %3062 = select i1 %3059, float %3061, float %3055
  %3063 = fmul fast float %3062, %3043
  br label %3064

; <label>:3064                                    ; preds = %3048, %3042
  %3065 = phi float [ %3063, %3048 ], [ %3043, %3042 ]
  %3066 = fcmp fast ult float %3065, 0x3F70101020000000
  br i1 %3066, label %3648, label %3067

; <label>:3067                                    ; preds = %3064
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = and i32 %3069, 16
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3270, label %3072

; <label>:3072                                    ; preds = %3067
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %33, 452
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = add i32 %3077, 0
  %3079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3079, %dx.types.Handle %74, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.ResRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.ResRet.f32 %3080, 2
  %3084 = extractvalue %dx.types.ResRet.f32 %3080, 3
  %3085 = and i32 %3074, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = lshr i32 %3074, 8
  %3088 = and i32 %3087, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = fmul fast float %3084, %3086
  %3091 = fadd fast float %3090, %3089
  %3092 = fmul fast float %3091, 0x3F70101000000000
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 512
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3105, label %3097

; <label>:3097                                    ; preds = %3072
  %3098 = add i32 %33, 532
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = add i32 %3100, 0
  %3102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3102, %dx.types.Handle %75, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  br label %3105

; <label>:3105                                    ; preds = %3097, %3072
  %3106 = phi float [ %3104, %3097 ], [ 1.000000e+00, %3072 ]
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 33554432
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3217, label %3111

; <label>:3111                                    ; preds = %3105
  %3112 = add i32 %33, 272
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 65535
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = lshr i32 %3114, 16
  %3118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3117)  ; LegacyF16ToF32(value)
  %3119 = add i32 %33, 276
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 65535
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = lshr i32 %3125, 24
  %3127 = uitofp i32 %3126 to float
  %3128 = fmul fast float %3127, 0x3F70101020000000
  %3129 = and i32 %3125, 255
  %3130 = uitofp i32 %3129 to float
  %3131 = fmul fast float %3130, 0x3F70101020000000
  %3132 = lshr i32 %3125, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3134, 0x3F70101020000000
  %3136 = lshr i32 %3125, 16
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = fmul fast float %3138, 0x3F70101020000000
  %3140 = add i32 %33, 268
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = lshr i32 %3142, 24
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3144, 0x3F70101020000000
  %3146 = and i32 %3142, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3147, 0x3F70101020000000
  %3149 = lshr i32 %3142, 8
  %3150 = and i32 %3149, 255
  %3151 = uitofp i32 %3150 to float
  %3152 = fmul fast float %3151, 0x3F70101020000000
  %3153 = lshr i32 %3142, 16
  %3154 = and i32 %3153, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3155, 0x3F70101020000000
  %3157 = bitcast float %3081 to i32
  %3158 = ashr i32 %3157, 1
  %3159 = sub nsw i32 1597463174, %3158
  %3160 = bitcast i32 %3159 to float
  %3161 = fmul fast float %3081, 5.000000e-01
  %3162 = fmul fast float %3160, %3160
  %3163 = fmul fast float %3162, %3161
  %3164 = fsub fast float 1.500000e+00, %3163
  %3165 = fmul fast float %3160, %3081
  %3166 = fmul fast float %3165, %3164
  %3167 = bitcast float %3082 to i32
  %3168 = ashr i32 %3167, 1
  %3169 = sub nsw i32 1597463174, %3168
  %3170 = bitcast i32 %3169 to float
  %3171 = fmul fast float %3082, 5.000000e-01
  %3172 = fmul fast float %3170, %3170
  %3173 = fmul fast float %3172, %3171
  %3174 = fsub fast float 1.500000e+00, %3173
  %3175 = fmul fast float %3170, %3082
  %3176 = fmul fast float %3175, %3174
  %3177 = bitcast float %3083 to i32
  %3178 = ashr i32 %3177, 1
  %3179 = sub nsw i32 1597463174, %3178
  %3180 = bitcast i32 %3179 to float
  %3181 = fmul fast float %3083, 5.000000e-01
  %3182 = fmul fast float %3180, %3180
  %3183 = fmul fast float %3182, %3181
  %3184 = fsub fast float 1.500000e+00, %3183
  %3185 = fmul fast float %3180, %3083
  %3186 = fmul fast float %3185, %3184
  %3187 = fsub fast float %3166, %3148
  %3188 = fsub fast float %3176, %3152
  %3189 = fsub fast float %3186, %3156
  %3190 = fmul fast float %3187, %3116
  %3191 = fmul fast float %3188, %3118
  %3192 = fmul fast float %3189, %3123
  %3193 = fadd fast float %3190, %3131
  %3194 = fadd fast float %3191, %3135
  %3195 = fadd fast float %3192, %3139
  %3196 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  %3197 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3198 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  %3199 = fmul fast float %3196, %3196
  %3200 = fmul fast float %3197, %3197
  %3201 = fmul fast float %3198, %3198
  %3202 = fsub fast float %3199, %3081
  %3203 = fsub fast float %3200, %3082
  %3204 = fsub fast float %3201, %3083
  %3205 = fmul fast float %3202, %3106
  %3206 = fmul fast float %3203, %3106
  %3207 = fmul fast float %3204, %3106
  %3208 = fadd fast float %3205, %3081
  %3209 = fadd fast float %3206, %3082
  %3210 = fadd fast float %3207, %3083
  %3211 = fadd fast float %3128, %3092
  %3212 = fsub fast float %3211, %3145
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = fsub fast float %3213, %3092
  %3215 = fmul fast float %3214, %3106
  %3216 = fadd fast float %3215, %3092
  br label %3270

; <label>:3217                                    ; preds = %3105
  %3218 = and i32 %3108, 134217728
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3254, label %3220

; <label>:3220                                    ; preds = %3217
  %3221 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %3222 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %3223 = call float @dx.op.unary.f32(i32 24, float %561)  ; Sqrt(value)
  %3224 = fadd fast float %3221, -5.000000e-01
  %3225 = fadd fast float %3222, -5.000000e-01
  %3226 = fadd fast float %3223, -5.000000e-01
  %3227 = fmul fast float %3224, %3106
  %3228 = fmul fast float %3225, %3106
  %3229 = fmul fast float %3226, %3106
  %3230 = fadd fast float %3227, 5.000000e-01
  %3231 = fadd fast float %3228, 5.000000e-01
  %3232 = fadd fast float %3229, 5.000000e-01
  %3233 = call float @dx.op.unary.f32(i32 24, float %3081)  ; Sqrt(value)
  %3234 = call float @dx.op.unary.f32(i32 24, float %3082)  ; Sqrt(value)
  %3235 = call float @dx.op.unary.f32(i32 24, float %3083)  ; Sqrt(value)
  %3236 = fmul fast float %3230, 2.000000e+00
  %3237 = fsub fast float 1.000000e+00, %3236
  %3238 = fmul fast float %3237, %3233
  %3239 = fadd fast float %3238, %3236
  %3240 = fmul fast float %3239, %3233
  %3241 = fmul fast float %3231, 2.000000e+00
  %3242 = fsub fast float 1.000000e+00, %3241
  %3243 = fmul fast float %3242, %3234
  %3244 = fadd fast float %3243, %3241
  %3245 = fmul fast float %3244, %3234
  %3246 = fmul fast float %3232, 2.000000e+00
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = fmul fast float %3247, %3235
  %3249 = fadd fast float %3248, %3246
  %3250 = fmul fast float %3249, %3235
  %3251 = fmul fast float %3240, %3240
  %3252 = fmul fast float %3245, %3245
  %3253 = fmul fast float %3250, %3250
  br label %3270

; <label>:3254                                    ; preds = %3217
  %3255 = fmul fast float %559, %559
  %3256 = fmul fast float %560, %560
  %3257 = fmul fast float %561, %561
  %3258 = fadd fast float %3255, -1.000000e+00
  %3259 = fadd fast float %3256, -1.000000e+00
  %3260 = fadd fast float %3257, -1.000000e+00
  %3261 = fmul fast float %3106, %3258
  %3262 = fmul fast float %3106, %3259
  %3263 = fmul fast float %3106, %3260
  %3264 = fadd fast float %3261, 1.000000e+00
  %3265 = fadd fast float %3262, 1.000000e+00
  %3266 = fadd fast float %3263, 1.000000e+00
  %3267 = fmul fast float %3264, %3081
  %3268 = fmul fast float %3265, %3082
  %3269 = fmul fast float %3266, %3083
  br label %3270

; <label>:3270                                    ; preds = %3254, %3220, %3111, %3067
  %3271 = phi float [ %3216, %3111 ], [ %3092, %3220 ], [ %3092, %3254 ], [ 0x3FA23C0BE0000000, %3067 ]
  %3272 = phi float [ %3208, %3111 ], [ %3251, %3220 ], [ %3267, %3254 ], [ 1.000000e+00, %3067 ]
  %3273 = phi float [ %3209, %3111 ], [ %3252, %3220 ], [ %3268, %3254 ], [ 1.000000e+00, %3067 ]
  %3274 = phi float [ %3210, %3111 ], [ %3253, %3220 ], [ %3269, %3254 ], [ 1.000000e+00, %3067 ]
  %3275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.i32 %3275, 1
  %3277 = and i32 %3276, 1
  %3278 = icmp ne i32 %3277, 0
  %3279 = add i32 %33, 356
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 32
  %3283 = icmp ne i32 %3282, 0
  %3284 = and i1 %3278, %3283
  %3285 = select i1 %3284, float 1.000000e+00, float %3272
  %3286 = select i1 %3284, float 0x3FD3333340000000, float %3273
  %3287 = select i1 %3284, float 0x3FD3333340000000, float %3274
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = and i32 %3289, 32
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %3364, label %3292

; <label>:3292                                    ; preds = %3270
  %3293 = add i32 %33, 140
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = add i32 %33, 468
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = add i32 %3298, 0
  %3300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3300, %dx.types.Handle %74, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3305 = extractvalue %dx.types.ResRet.f32 %3301, 3
  %3306 = and i32 %3295, 255
  %3307 = uitofp i32 %3306 to float
  %3308 = lshr i32 %3295, 8
  %3309 = and i32 %3308, 255
  %3310 = uitofp i32 %3309 to float
  %3311 = lshr i32 %3295, 16
  %3312 = and i32 %3311, 255
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, 0x3F70101000000000
  %3315 = fmul fast float %3302, %3307
  %3316 = fadd fast float %3315, %3310
  %3317 = fmul fast float %3316, 0x3F70101000000000
  %3318 = fadd fast float %3303, -5.000000e-01
  %3319 = fadd fast float %3305, -5.000000e-01
  %3320 = fmul fast float %3318, %3314
  %3321 = fmul fast float %3319, %3314
  %3322 = fadd fast float %3320, 5.000000e-01
  %3323 = fadd fast float %3321, 5.000000e-01
  %3324 = fmul fast float %3322, 2.000000e+00
  %3325 = fadd fast float %3324, -1.000000e+00
  %3326 = fmul fast float %3323, 2.000000e+00
  %3327 = fadd fast float %3326, -1.000000e+00
  %3328 = fadd fast float %3325, %3327
  %3329 = fmul fast float %3328, 5.000000e-01
  %3330 = fsub fast float %3325, %3327
  %3331 = fmul fast float %3330, 5.000000e-01
  %3332 = call float @dx.op.unary.f32(i32 6, float %3329)  ; FAbs(value)
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = call float @dx.op.unary.f32(i32 6, float %3331)  ; FAbs(value)
  %3335 = fsub fast float %3333, %3334
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3331, float %3335, float %3329, float %3331, float %3335)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = call float @dx.op.unary.f32(i32 25, float %3336)  ; Rsqrt(value)
  %3338 = fmul fast float %3329, %3337
  %3339 = fmul fast float %3331, %3337
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = and i32 %3341, 67108864
  %3343 = icmp eq i32 %3342, 0
  br i1 %3343, label %3360, label %3344

; <label>:3344                                    ; preds = %3292
  %3345 = add i32 %33, 328
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 65535
  %3349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3348)  ; LegacyF16ToF32(value)
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 65535
  %3353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3352)  ; LegacyF16ToF32(value)
  %3354 = lshr i32 %3347, 16
  %3355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3354)  ; LegacyF16ToF32(value)
  %3356 = fsub fast float %3317, %3355
  %3357 = fmul fast float %3356, %3349
  %3358 = fadd fast float %3357, %3353
  %3359 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  br label %3360

; <label>:3360                                    ; preds = %3344, %3292
  %3361 = phi float [ %3359, %3344 ], [ %3317, %3292 ]
  %3362 = call float @dx.op.dot2.f32(i32 54, float %3338, float %3339, float %2897, float %2898)  ; Dot2(ax,ay,bx,by)
  %3363 = call float @dx.op.dot2.f32(i32 54, float %3338, float %3339, float %2899, float %2900)  ; Dot2(ax,ay,bx,by)
  br label %3364

; <label>:3364                                    ; preds = %3360, %3270
  %3365 = phi float [ %3361, %3360 ], [ 0x3FD6666660000000, %3270 ]
  %3366 = phi float [ %3362, %3360 ], [ 0.000000e+00, %3270 ]
  %3367 = phi float [ %3363, %3360 ], [ 0.000000e+00, %3270 ]
  %3368 = phi float [ %3304, %3360 ], [ 1.000000e+00, %3270 ]
  %3369 = add i32 %33, 208
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = lshr i32 %3371, 22
  %3373 = shl nuw nsw i32 %3372, 5
  %3374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3373)  ; LegacyF16ToF32(value)
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 64
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3412, label %3379

; <label>:3379                                    ; preds = %3364
  %3380 = add i32 %33, 484
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %3382, 0
  %3384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 131072
  %3388 = icmp eq i32 %3387, 0
  %3389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3384, %dx.types.Handle %74, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = fmul fast float %542, %3390
  %3394 = fmul fast float %543, %3391
  %3395 = fmul fast float %544, %3392
  br i1 %3388, label %3402, label %3396

; <label>:3396                                    ; preds = %3379
  %3397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3397, 0
  %3399 = fmul fast float %3398, %3393
  %3400 = fmul fast float %3398, %3394
  %3401 = fmul fast float %3398, %3395
  br label %3402

; <label>:3402                                    ; preds = %3396, %3379
  %3403 = phi float [ %3399, %3396 ], [ %3393, %3379 ]
  %3404 = phi float [ %3400, %3396 ], [ %3394, %3379 ]
  %3405 = phi float [ %3401, %3396 ], [ %3395, %3379 ]
  %3406 = fmul fast float %3403, %3374
  %3407 = select i1 %204, float %3406, float %3403
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3407, float %3404, float %3405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = select i1 %204, float 0.000000e+00, float %3403
  %3410 = select i1 %204, float %3408, float %3404
  %3411 = select i1 %204, float 0.000000e+00, float %3405
  br label %3412

; <label>:3412                                    ; preds = %3402, %3364
  %3413 = phi float [ %3409, %3402 ], [ 0.000000e+00, %3364 ]
  %3414 = phi float [ %3410, %3402 ], [ 0.000000e+00, %3364 ]
  %3415 = phi float [ %3411, %3402 ], [ 0.000000e+00, %3364 ]
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 26624
  %3419 = icmp eq i32 %3418, 0
  br i1 %3419, label %3443, label %3420

; <label>:3420                                    ; preds = %3412
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = and i32 %3422, 16384
  %3424 = icmp eq i32 %3423, 0
  br i1 %3424, label %3443, label %3425

; <label>:3425                                    ; preds = %3420
  %3426 = and i32 %3422, 1048576
  %3427 = icmp ne i32 %3426, 0
  %3428 = add i32 %33, 548
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = add i32 %3430, 0
  %3432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3432, %dx.types.Handle %75, float %2993, float %2994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = add i32 %33, 144
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = lshr i32 %3437, 24
  %3439 = uitofp i32 %3438 to float
  %3440 = fmul fast float %3434, 0x3F70101020000000
  %3441 = select i1 %3427, float 0x3F70101020000000, float %3440
  %3442 = fmul fast float %3441, %3439
  br label %3443

; <label>:3443                                    ; preds = %3425, %3420, %3412
  %3444 = phi float [ %3442, %3425 ], [ 0.000000e+00, %3420 ], [ 0.000000e+00, %3412 ]
  %3445 = add i32 %33, 144
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = lshr i32 %3447, 8
  %3451 = and i32 %3450, 255
  %3452 = uitofp i32 %3451 to float
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3286, float %3287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = fmul fast float %3452, %3453
  %3455 = fadd fast float %3454, %3449
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  br i1 %2886, label %3458, label %3466

; <label>:3458                                    ; preds = %3443
  %3459 = fsub fast float 1.000000e+00, %3065
  %3460 = fmul fast float %3459, %2874
  %3461 = fmul fast float %3459, %2875
  %3462 = fmul fast float %3459, %2876
  %3463 = fmul fast float %3459, %2877
  %3464 = fmul fast float %3459, %2878
  %3465 = fmul fast float %3459, %2879
  br label %3466

; <label>:3466                                    ; preds = %3458, %3443
  %3467 = phi float [ %3460, %3458 ], [ %2874, %3443 ]
  %3468 = phi float [ %3461, %3458 ], [ %2875, %3443 ]
  %3469 = phi float [ %3462, %3458 ], [ %2876, %3443 ]
  %3470 = phi float [ %3463, %3458 ], [ %2877, %3443 ]
  %3471 = phi float [ %3464, %3458 ], [ %2878, %3443 ]
  %3472 = phi float [ %3465, %3458 ], [ %2879, %3443 ]
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 3
  %3476 = icmp eq i32 %3475, 3
  br i1 %3476, label %3555, label %3477

; <label>:3477                                    ; preds = %3466
  %3478 = and i32 %3474, 16
  %3479 = icmp ne i32 %3478, 0
  %3480 = select i1 %3479, float %3065, float 0.000000e+00
  %3481 = icmp eq i32 %3475, 0
  br i1 %3481, label %3482, label %3510

; <label>:3482                                    ; preds = %3477
  %3483 = and i32 %3474, 64
  %3484 = icmp ne i32 %3483, 0
  %3485 = select i1 %3484, float %3065, float 0.000000e+00
  %3486 = fsub fast float %3285, %3467
  %3487 = fsub fast float %3286, %3468
  %3488 = fsub fast float %3287, %3469
  %3489 = fmul fast float %3480, %3486
  %3490 = fmul fast float %3480, %3487
  %3491 = fmul fast float %3480, %3488
  %3492 = fadd fast float %3489, %3467
  %3493 = fadd fast float %3490, %3468
  %3494 = fadd fast float %3491, %3469
  %3495 = fsub fast float %3271, %2880
  %3496 = fmul fast float %3480, %3495
  %3497 = fadd fast float %3496, %2880
  %3498 = fsub fast float %3413, %3470
  %3499 = fsub fast float %3414, %3471
  %3500 = fsub fast float %3415, %3472
  %3501 = fmul fast float %3485, %3498
  %3502 = fmul fast float %3485, %3499
  %3503 = fmul fast float %3485, %3500
  %3504 = fadd fast float %3501, %3470
  %3505 = fadd fast float %3502, %3471
  %3506 = fadd fast float %3503, %3472
  %3507 = fsub fast float %3457, %2884
  %3508 = fmul fast float %3480, %3507
  %3509 = fadd fast float %3508, %2884
  br label %3555

; <label>:3510                                    ; preds = %3477
  %3511 = icmp eq i32 %3475, 1
  br i1 %3511, label %3512, label %3525

; <label>:3512                                    ; preds = %3510
  %3513 = fadd fast float %3285, -1.000000e+00
  %3514 = fadd fast float %3286, -1.000000e+00
  %3515 = fadd fast float %3287, -1.000000e+00
  %3516 = fmul fast float %3480, %3513
  %3517 = fmul fast float %3480, %3514
  %3518 = fmul fast float %3480, %3515
  %3519 = fadd fast float %3516, 1.000000e+00
  %3520 = fadd fast float %3517, 1.000000e+00
  %3521 = fadd fast float %3518, 1.000000e+00
  %3522 = fmul fast float %3519, %3467
  %3523 = fmul fast float %3520, %3468
  %3524 = fmul fast float %3521, %3469
  br label %3555

; <label>:3525                                    ; preds = %3510
  %3526 = icmp eq i32 %3475, 2
  br i1 %3526, label %3527, label %3555

; <label>:3527                                    ; preds = %3525
  %3528 = call float @dx.op.unary.f32(i32 24, float %3285)  ; Sqrt(value)
  %3529 = call float @dx.op.unary.f32(i32 24, float %3286)  ; Sqrt(value)
  %3530 = call float @dx.op.unary.f32(i32 24, float %3287)  ; Sqrt(value)
  %3531 = fadd fast float %3528, -5.000000e-01
  %3532 = fadd fast float %3529, -5.000000e-01
  %3533 = fadd fast float %3530, -5.000000e-01
  %3534 = fmul fast float %3531, %3480
  %3535 = fmul fast float %3532, %3480
  %3536 = fmul fast float %3533, %3480
  %3537 = fadd fast float %3534, 5.000000e-01
  %3538 = fadd fast float %3535, 5.000000e-01
  %3539 = fadd fast float %3536, 5.000000e-01
  %3540 = fmul fast float %3537, 2.000000e+00
  %3541 = fsub fast float 1.000000e+00, %3540
  %3542 = fmul fast float %3541, %3467
  %3543 = fadd fast float %3542, %3540
  %3544 = fmul fast float %3543, %3467
  %3545 = fmul fast float %3538, 2.000000e+00
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = fmul fast float %3546, %3468
  %3548 = fadd fast float %3547, %3545
  %3549 = fmul fast float %3548, %3468
  %3550 = fmul fast float %3539, 2.000000e+00
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = fmul fast float %3551, %3469
  %3553 = fadd fast float %3552, %3550
  %3554 = fmul fast float %3553, %3469
  br label %3555

; <label>:3555                                    ; preds = %3527, %3525, %3512, %3482, %3466
  %3556 = phi float [ %3467, %3466 ], [ %3544, %3527 ], [ %3467, %3525 ], [ %3522, %3512 ], [ %3492, %3482 ]
  %3557 = phi float [ %3468, %3466 ], [ %3549, %3527 ], [ %3468, %3525 ], [ %3523, %3512 ], [ %3493, %3482 ]
  %3558 = phi float [ %3469, %3466 ], [ %3554, %3527 ], [ %3469, %3525 ], [ %3524, %3512 ], [ %3494, %3482 ]
  %3559 = phi float [ %3470, %3466 ], [ %3470, %3527 ], [ %3470, %3525 ], [ %3470, %3512 ], [ %3504, %3482 ]
  %3560 = phi float [ %3471, %3466 ], [ %3471, %3527 ], [ %3471, %3525 ], [ %3471, %3512 ], [ %3505, %3482 ]
  %3561 = phi float [ %3472, %3466 ], [ %3472, %3527 ], [ %3472, %3525 ], [ %3472, %3512 ], [ %3506, %3482 ]
  %3562 = phi float [ %2880, %3466 ], [ %2880, %3527 ], [ %2880, %3525 ], [ %2880, %3512 ], [ %3497, %3482 ]
  %3563 = phi float [ %2884, %3466 ], [ %2884, %3527 ], [ %2884, %3525 ], [ %2884, %3512 ], [ %3509, %3482 ]
  %3564 = and i32 %3474, 12
  %3565 = icmp eq i32 %3564, 12
  br i1 %3565, label %3648, label %3566

; <label>:3566                                    ; preds = %3555
  %3567 = and i32 %3474, 2097184
  %3568 = icmp eq i32 %3567, 2097184
  %3569 = select i1 %3568, float %3065, float 0.000000e+00
  %3570 = and i32 %3474, 4194336
  %3571 = icmp eq i32 %3570, 4194336
  %3572 = select i1 %3571, float %3065, float 0.000000e+00
  %3573 = and i32 %3474, 8388640
  %3574 = icmp eq i32 %3573, 8388640
  %3575 = select i1 %3574, float %3065, float 0.000000e+00
  %3576 = and i32 %3474, 16384
  %3577 = icmp ne i32 %3576, 0
  %3578 = select i1 %3577, float %3065, float 0.000000e+00
  %3579 = icmp eq i32 %3564, 0
  br i1 %3579, label %3580, label %3596

; <label>:3580                                    ; preds = %3566
  %3581 = fsub fast float %3366, %2872
  %3582 = fsub fast float %3367, %2873
  %3583 = fmul fast float %3569, %3581
  %3584 = fmul fast float %3569, %3582
  %3585 = fadd fast float %3583, %2872
  %3586 = fadd fast float %3584, %2873
  %3587 = fsub fast float %3368, %2882
  %3588 = fmul fast float %3572, %3587
  %3589 = fadd fast float %3588, %2882
  %3590 = fsub fast float %3365, %2881
  %3591 = fmul fast float %3575, %3590
  %3592 = fadd fast float %3591, %2881
  %3593 = fsub fast float %3444, %2883
  %3594 = fmul fast float %3578, %3593
  %3595 = fadd fast float %3594, %2883
  br label %3648

; <label>:3596                                    ; preds = %3566
  %3597 = icmp eq i32 %3564, 4
  br i1 %3597, label %3598, label %3632

; <label>:3598                                    ; preds = %3596
  %3599 = fmul fast float %3569, %3366
  %3600 = fmul fast float %3569, %3367
  %3601 = fadd fast float %3599, %2872
  %3602 = fadd fast float %3600, %2873
  %3603 = call float @dx.op.binary.f32(i32 36, float %2882, float %3368)  ; FMin(a,b)
  %3604 = fsub fast float %3603, %2882
  %3605 = fmul fast float %3604, %3572
  %3606 = fadd fast float %3605, %2882
  %3607 = fadd fast float %3365, %2881
  %3608 = fmul fast float %3607, 0x3FF337FAE0000000
  %3609 = fmul fast float %2881, %2881
  %3610 = fmul fast float %3365, %3365
  %3611 = fadd fast float %3610, %3609
  %3612 = fmul fast float %3611, 0x3FE5152B00000000
  %3613 = fmul fast float %2881, 0xBFCC1F85E0000000
  %3614 = fmul fast float %3613, %3365
  %3615 = fadd fast float %3614, 0xBFE1363700000000
  %3616 = fadd fast float %3615, %3608
  %3617 = fsub fast float %3616, %3612
  %3618 = fmul fast float %3607, 0x3FBA6F0D00000000
  %3619 = fmul fast float %3611, 0x3FD0432880000000
  %3620 = fmul fast float %2881, 0xBFEF110800000000
  %3621 = fmul fast float %3620, %3365
  %3622 = fadd fast float %3621, 1.000000e+00
  %3623 = fsub fast float %3622, %3618
  %3624 = fadd fast float %3623, %3619
  %3625 = fdiv fast float %3617, %3624
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fsub fast float %3626, %2881
  %3628 = fmul fast float %3627, %3575
  %3629 = fadd fast float %3628, %2881
  %3630 = fmul fast float %3578, %3444
  %3631 = fadd fast float %3630, %2883
  br label %3648

; <label>:3632                                    ; preds = %3596
  %3633 = icmp eq i32 %3564, 8
  br i1 %3633, label %3634, label %3648

; <label>:3634                                    ; preds = %3632
  %3635 = fmul fast float %3569, %3366
  %3636 = fmul fast float %3569, %3367
  %3637 = fadd fast float %3635, %2872
  %3638 = fadd fast float %3636, %2873
  %3639 = call float @dx.op.binary.f32(i32 36, float %2882, float %3368)  ; FMin(a,b)
  %3640 = fsub fast float %3639, %2882
  %3641 = fmul fast float %3640, %3572
  %3642 = fadd fast float %3641, %2882
  %3643 = fsub fast float %3365, %2881
  %3644 = fmul fast float %3575, %3643
  %3645 = fadd fast float %3644, %2881
  %3646 = fmul fast float %3578, %3444
  %3647 = fadd fast float %3646, %2883
  br label %3648

; <label>:3648                                    ; preds = %3634, %3632, %3598, %3580, %3555, %3064, %2885, %2871
  %3649 = phi float [ %2872, %3555 ], [ %2872, %3064 ], [ %2872, %2871 ], [ %2872, %2885 ], [ %3585, %3580 ], [ %3601, %3598 ], [ %2872, %3632 ], [ %3637, %3634 ]
  %3650 = phi float [ %2873, %3555 ], [ %2873, %3064 ], [ %2873, %2871 ], [ %2873, %2885 ], [ %3586, %3580 ], [ %3602, %3598 ], [ %2873, %3632 ], [ %3638, %3634 ]
  %3651 = phi float [ %3556, %3555 ], [ %2874, %3064 ], [ %2874, %2871 ], [ %2874, %2885 ], [ %3556, %3580 ], [ %3556, %3598 ], [ %3556, %3632 ], [ %3556, %3634 ]
  %3652 = phi float [ %3557, %3555 ], [ %2875, %3064 ], [ %2875, %2871 ], [ %2875, %2885 ], [ %3557, %3580 ], [ %3557, %3598 ], [ %3557, %3632 ], [ %3557, %3634 ]
  %3653 = phi float [ %3558, %3555 ], [ %2876, %3064 ], [ %2876, %2871 ], [ %2876, %2885 ], [ %3558, %3580 ], [ %3558, %3598 ], [ %3558, %3632 ], [ %3558, %3634 ]
  %3654 = phi float [ %3559, %3555 ], [ %2877, %3064 ], [ %2877, %2871 ], [ %2877, %2885 ], [ %3559, %3580 ], [ %3559, %3598 ], [ %3559, %3632 ], [ %3559, %3634 ]
  %3655 = phi float [ %3560, %3555 ], [ %2878, %3064 ], [ %2878, %2871 ], [ %2878, %2885 ], [ %3560, %3580 ], [ %3560, %3598 ], [ %3560, %3632 ], [ %3560, %3634 ]
  %3656 = phi float [ %3561, %3555 ], [ %2879, %3064 ], [ %2879, %2871 ], [ %2879, %2885 ], [ %3561, %3580 ], [ %3561, %3598 ], [ %3561, %3632 ], [ %3561, %3634 ]
  %3657 = phi float [ %3562, %3555 ], [ %2880, %3064 ], [ %2880, %2871 ], [ %2880, %2885 ], [ %3562, %3580 ], [ %3562, %3598 ], [ %3562, %3632 ], [ %3562, %3634 ]
  %3658 = phi float [ %2881, %3555 ], [ %2881, %3064 ], [ %2881, %2871 ], [ %2881, %2885 ], [ %3592, %3580 ], [ %3629, %3598 ], [ %2881, %3632 ], [ %3645, %3634 ]
  %3659 = phi float [ %2882, %3555 ], [ %2882, %3064 ], [ %2882, %2871 ], [ %2882, %2885 ], [ %3589, %3580 ], [ %3606, %3598 ], [ %2882, %3632 ], [ %3642, %3634 ]
  %3660 = phi float [ %2883, %3555 ], [ %2883, %3064 ], [ %2883, %2871 ], [ %2883, %2885 ], [ %3595, %3580 ], [ %3631, %3598 ], [ %2883, %3632 ], [ %3647, %3634 ]
  %3661 = phi float [ %3563, %3555 ], [ %2884, %3064 ], [ %2884, %2871 ], [ %2884, %2885 ], [ %3563, %3580 ], [ %3563, %3598 ], [ %3563, %3632 ], [ %3563, %3634 ]
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = call float @dx.op.dot2.f32(i32 54, float %3649, float %3650, float %3649, float %3650)  ; Dot2(ax,ay,bx,by)
  %3665 = fmul fast float %3664, 0x3FE3333340000000
  %3666 = fsub fast float 1.000000e+00, %3665
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3666, float %3649, float %3650, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = call float @dx.op.unary.f32(i32 25, float %3667)  ; Rsqrt(value)
  %3669 = fmul fast float %3668, %3649
  %3670 = fmul fast float %3668, %3650
  %3671 = fmul fast float %3666, %3668
  %3672 = fmul fast float %3671, %85
  %3673 = fmul fast float %3671, %86
  %3674 = fmul fast float %3671, %87
  %3675 = fmul fast float %3669, %59
  %3676 = fmul fast float %3669, %60
  %3677 = fmul fast float %3669, %61
  %3678 = fadd fast float %3672, %3675
  %3679 = fadd fast float %3673, %3676
  %3680 = fadd fast float %3674, %3677
  %3681 = fmul fast float %97, %3670
  %3682 = fmul fast float %98, %3670
  %3683 = fmul fast float %99, %3670
  %3684 = fadd fast float %3678, %3681
  %3685 = fadd fast float %3679, %3682
  %3686 = fadd fast float %3680, %3683
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3686, float %3684, float %3685, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = call float @dx.op.unary.f32(i32 25, float %3687)  ; Rsqrt(value)
  %3689 = fmul fast float %3684, %3688
  %3690 = fmul fast float %3685, %3688
  %3691 = fmul fast float %3686, %3688
  %3692 = icmp eq i32 %35, 65535
  br i1 %3692, label %4207, label %3693

; <label>:3693                                    ; preds = %3648
  %3694 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %3695 = call float @dx.op.unary.f32(i32 83, float %37)  ; DerivCoarseX(value)
  %3696 = call float @dx.op.unary.f32(i32 83, float %38)  ; DerivCoarseX(value)
  %3697 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %3698 = call float @dx.op.unary.f32(i32 84, float %37)  ; DerivCoarseY(value)
  %3699 = call float @dx.op.unary.f32(i32 84, float %38)  ; DerivCoarseY(value)
  %3700 = fadd fast float %3694, %36
  %3701 = fadd fast float %3695, %37
  %3702 = fadd fast float %3696, %38
  %3703 = fadd fast float %3697, %36
  %3704 = fadd fast float %3698, %37
  %3705 = fadd fast float %3699, %38
  %3706 = mul i32 %35, 48
  %3707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3707, 2
  %3711 = add i32 %3706, 16
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = add i32 %3706, 32
  %3717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3722 = bitcast float %3721 to i32
  %3723 = fmul fast float %3708, %36
  %3724 = fmul fast float %3709, %37
  %3725 = fmul fast float %3710, %38
  %3726 = fsub fast float %3723, %3713
  %3727 = fsub fast float %3724, %3714
  %3728 = fsub fast float %3725, %3715
  %3729 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3730 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3731 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3732 = fmul fast float %3729, %3718
  %3733 = fmul fast float %3730, %3719
  %3734 = fmul fast float %3731, %3720
  %3735 = fadd fast float %3718, -1.000000e+00
  %3736 = fadd fast float %3719, -1.000000e+00
  %3737 = fadd fast float %3720, -1.000000e+00
  %3738 = call float @dx.op.unary.f32(i32 27, float %3732)  ; Round_ni(value)
  %3739 = call float @dx.op.unary.f32(i32 27, float %3733)  ; Round_ni(value)
  %3740 = call float @dx.op.unary.f32(i32 27, float %3734)  ; Round_ni(value)
  %3741 = call float @dx.op.binary.f32(i32 36, float %3738, float %3735)  ; FMin(a,b)
  %3742 = call float @dx.op.binary.f32(i32 36, float %3739, float %3736)  ; FMin(a,b)
  %3743 = call float @dx.op.binary.f32(i32 36, float %3740, float %3737)  ; FMin(a,b)
  %3744 = fmul fast float %3743, %3719
  %3745 = fadd fast float %3744, %3742
  %3746 = fmul fast float %3745, %3718
  %3747 = fadd fast float %3746, %3741
  %3748 = fptosi float %3747 to i32
  %3749 = add nsw i32 %3748, %3722
  %3750 = shl nsw i32 %3749, 2
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = lshr i32 %3752, 16
  %3754 = icmp eq i32 %3753, 0
  br i1 %3754, label %4176, label %3755

; <label>:3755                                    ; preds = %3693
  br label %3756

; <label>:3756                                    ; preds = %3877, %3755
  %3757 = phi i32 [ %3779, %3877 ], [ %3753, %3755 ]
  %3758 = phi float [ %3878, %3877 ], [ 0.000000e+00, %3755 ]
  %3759 = phi float [ %3879, %3877 ], [ %3663, %3755 ]
  %3760 = phi float [ %3880, %3877 ], [ %3661, %3755 ]
  %3761 = phi float [ %3881, %3877 ], [ %3660, %3755 ]
  %3762 = phi float [ %3882, %3877 ], [ 0.000000e+00, %3755 ]
  %3763 = phi float [ %3883, %3877 ], [ %3654, %3755 ]
  %3764 = phi float [ %3884, %3877 ], [ %3655, %3755 ]
  %3765 = phi float [ %3885, %3877 ], [ %3656, %3755 ]
  %3766 = phi float [ %3886, %3877 ], [ %3689, %3755 ]
  %3767 = phi float [ %3887, %3877 ], [ %3690, %3755 ]
  %3768 = phi float [ %3888, %3877 ], [ %3691, %3755 ]
  %3769 = phi float [ %3889, %3877 ], [ %3659, %3755 ]
  %3770 = phi float [ %3890, %3877 ], [ %3658, %3755 ]
  %3771 = phi float [ %3891, %3877 ], [ 0.000000e+00, %3755 ]
  %3772 = phi float [ %3892, %3877 ], [ %3657, %3755 ]
  %3773 = phi float [ %3893, %3877 ], [ %3651, %3755 ]
  %3774 = phi float [ %3894, %3877 ], [ %3652, %3755 ]
  %3775 = phi float [ %3895, %3877 ], [ %3653, %3755 ]
  %3776 = shl nuw nsw i32 %3757, 2
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = lshr i32 %3778, 16
  %3780 = shl i32 %3778, 8
  %3781 = and i32 %3780, 16776960
  %3782 = or i32 %3781, 48
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = or i32 %3781, 64
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.i32 %3788, 1
  %3791 = or i32 %3781, 80
  %3792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 3
  %3795 = or i32 %3781, 96
  %3796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3800 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3801 = or i32 %3781, 112
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3804 = or i32 %3781, 128
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = or i32 %3781, 144
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = or i32 %3781, 160
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = or i32 %3781, 192
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = or i32 %3781, 208
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = or i32 %3781, 248
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3836 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3837 = call float @dx.op.dot4.f32(i32 56, float %3833, float %3834, float %3835, float %3836, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3838 = or i32 %3781, 16
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = call float @dx.op.dot4.f32(i32 56, float %3840, float %3841, float %3842, float %3843, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3845 = or i32 %3781, 32
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = call float @dx.op.dot4.f32(i32 56, float %3847, float %3848, float %3849, float %3850, float %36, float %37, float %38, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3852 = call float @dx.op.unary.f32(i32 27, float %3837)  ; Round_ni(value)
  %3853 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3854 = call float @dx.op.unary.f32(i32 27, float %3844)  ; Round_ni(value)
  %3855 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3856 = call float @dx.op.unary.f32(i32 6, float %3851)  ; FAbs(value)
  %3857 = call float @dx.op.unary.f32(i32 27, float %3856)  ; Round_ni(value)
  %3858 = fadd fast float %3855, %3853
  %3859 = fadd fast float %3858, %3857
  %3860 = fcmp fast oeq float %3859, 0.000000e+00
  %3861 = call float @dx.op.dot4.f32(i32 56, float %3833, float %3834, float %3835, float %3836, float %3700, float %3701, float %3702, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3862 = call float @dx.op.dot4.f32(i32 56, float %3840, float %3841, float %3842, float %3843, float %3700, float %3701, float %3702, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3833, float %3834, float %3835, float %3836, float %3703, float %3704, float %3705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = call float @dx.op.dot4.f32(i32 56, float %3840, float %3841, float %3842, float %3843, float %3703, float %3704, float %3705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3865 = fsub fast float %3861, %3837
  %3866 = fsub fast float %3863, %3837
  %3867 = fsub fast float %3862, %3844
  %3868 = fsub fast float %3864, %3844
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3786, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3872 = fadd fast float %3871, %3869
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3875 = fcmp fast ogt float %3873, %3874
  %3876 = and i1 %3860, %3875
  br i1 %3876, label %3897, label %3877

; <label>:3877                                    ; preds = %4162, %3980, %3897, %3756
  %3878 = phi float [ %3758, %3897 ], [ %3983, %3980 ], [ %3983, %4162 ], [ %3758, %3756 ]
  %3879 = phi float [ %3759, %3897 ], [ %3759, %3980 ], [ %4137, %4162 ], [ %3759, %3756 ]
  %3880 = phi float [ %3760, %3897 ], [ %3760, %3980 ], [ %4135, %4162 ], [ %3760, %3756 ]
  %3881 = phi float [ %3761, %3897 ], [ %3761, %3980 ], [ %4107, %4162 ], [ %3761, %3756 ]
  %3882 = phi float [ %3762, %3897 ], [ %3762, %3980 ], [ %4105, %4162 ], [ %3762, %3756 ]
  %3883 = phi float [ %3763, %3897 ], [ %3763, %3980 ], [ %4172, %4162 ], [ %3763, %3756 ]
  %3884 = phi float [ %3764, %3897 ], [ %3764, %3980 ], [ %4173, %4162 ], [ %3764, %3756 ]
  %3885 = phi float [ %3765, %3897 ], [ %3765, %3980 ], [ %4174, %4162 ], [ %3765, %3756 ]
  %3886 = phi float [ %3766, %3897 ], [ %3766, %3980 ], [ %4086, %4162 ], [ %3766, %3756 ]
  %3887 = phi float [ %3767, %3897 ], [ %3767, %3980 ], [ %4087, %4162 ], [ %3767, %3756 ]
  %3888 = phi float [ %3768, %3897 ], [ %3768, %3980 ], [ %4088, %4162 ], [ %3768, %3756 ]
  %3889 = phi float [ %3769, %3897 ], [ %3769, %3980 ], [ %4115, %4162 ], [ %3769, %3756 ]
  %3890 = phi float [ %3770, %3897 ], [ %3770, %3980 ], [ %4112, %4162 ], [ %3770, %3756 ]
  %3891 = phi float [ %3771, %3897 ], [ %3771, %3980 ], [ %4109, %4162 ], [ %3771, %3756 ]
  %3892 = phi float [ %3772, %3897 ], [ %3772, %3980 ], [ %4103, %4162 ], [ %3772, %3756 ]
  %3893 = phi float [ %3773, %3897 ], [ %3773, %3980 ], [ %4098, %4162 ], [ %3773, %3756 ]
  %3894 = phi float [ %3774, %3897 ], [ %3774, %3980 ], [ %4099, %4162 ], [ %3774, %3756 ]
  %3895 = phi float [ %3775, %3897 ], [ %3775, %3980 ], [ %4100, %4162 ], [ %3775, %3756 ]
  %3896 = icmp eq i32 %3779, 0
  br i1 %3896, label %4175, label %3756

; <label>:3897                                    ; preds = %3756
  %3898 = extractvalue %dx.types.ResRet.f32 %3783, 3
  %3899 = extractvalue %dx.types.ResRet.f32 %3802, 3
  %3900 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3901 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3903 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3904 = extractvalue %dx.types.ResRet.i32 %3788, 3
  %3905 = extractvalue %dx.types.ResRet.i32 %3788, 2
  %3906 = bitcast float %3898 to i32
  %3907 = add i32 %3904, 0
  %3908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3907, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3910 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3908, %dx.types.Handle %3909, float %3837, float %3844, float undef, float undef, i32 0, i32 0, i32 undef, float %3865, float %3867, float undef, float %3866, float %3868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = fmul fast float %3911, %3903
  %3913 = fadd fast float %3912, %3902
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fmul fast float %3837, %3797
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3798, float %3844, float %3915)  ; FMad(a,b,c)
  %3917 = fadd fast float %3916, %3901
  %3918 = fmul fast float %3837, %3799
  %3919 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3844, float %3918)  ; FMad(a,b,c)
  %3920 = fadd fast float %3919, %3900
  %3921 = fmul fast float %3865, %3797
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %3798, float %3867, float %3921)  ; FMad(a,b,c)
  %3923 = fmul fast float %3865, %3799
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3867, float %3923)  ; FMad(a,b,c)
  %3925 = fmul fast float %3866, %3797
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3798, float %3868, float %3925)  ; FMad(a,b,c)
  %3927 = fmul fast float %3866, %3799
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3800, float %3868, float %3927)  ; FMad(a,b,c)
  %3929 = add i32 %3905, 0
  %3930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3929, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3931 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3930, %dx.types.Handle %3909, float %3917, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3922, float %3924, float undef, float %3926, float %3928, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = and i32 %3906, 1024
  %3934 = icmp ne i32 %3933, 0
  %3935 = fcmp fast ogt float %3932, 0x3FE0101020000000
  %3936 = uitofp i1 %3935 to float
  %3937 = select i1 %3934, float %3936, float %3932
  %3938 = and i32 %3906, 8192
  %3939 = icmp ne i32 %3938, 0
  %3940 = select i1 %3939, float %3899, float 1.000000e+00
  %3941 = fmul fast float %3837, 2.000000e+00
  %3942 = fadd fast float %3941, -1.000000e+00
  %3943 = call float @dx.op.unary.f32(i32 6, float %3942)  ; FAbs(value)
  %3944 = fmul fast float %3943, %3830
  %3945 = fsub fast float %3944, %3830
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fmul fast float %3844, 2.000000e+00
  %3948 = fadd fast float %3947, -1.000000e+00
  %3949 = call float @dx.op.unary.f32(i32 6, float %3948)  ; FAbs(value)
  %3950 = fmul fast float %3949, %3831
  %3951 = fsub fast float %3950, %3831
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fmul fast float %3856, %3793
  %3954 = fsub fast float %3953, %3793
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = fmul fast float %3914, %3940
  %3957 = fmul fast float %3956, %3911
  %3958 = fmul fast float %3957, %3946
  %3959 = fmul fast float %3958, %3937
  %3960 = fmul fast float %3959, %3952
  %3961 = fmul fast float %3960, %3955
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3965 = fsub fast float %3873, %3964
  %3966 = fmul fast float %3965, %3963
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fmul fast float %3961, %3794
  %3969 = fadd fast float %3961, %3794
  %3970 = fmul fast float %3969, %3803
  %3971 = fsub fast float %3970, %3803
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = and i32 %3906, 128
  %3974 = icmp ne i32 %3973, 0
  %3975 = select i1 %3974, float %3972, float %3968
  %3976 = fmul fast float %3975, %3967
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = fcmp fast ugt float %3976, %3978
  br i1 %3979, label %3980, label %3877

; <label>:3980                                    ; preds = %3897
  %3981 = select i1 %3939, float %3976, float 0.000000e+00
  %3982 = fadd fast float %3981, %3758
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  br i1 %3939, label %3877, label %3984

; <label>:3984                                    ; preds = %3980
  %3985 = and i32 %3906, 4
  %3986 = and i32 %3906, 8
  %3987 = add i32 %3789, 0
  %3988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3987, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3988, %dx.types.Handle %3989, float %3917, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3922, float %3924, float undef, float %3926, float %3928, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = bitcast float %3815 to i32
  %3996 = and i32 %3995, 255
  %3997 = uitofp i32 %3996 to float
  %3998 = lshr i32 %3995, 8
  %3999 = and i32 %3998, 255
  %4000 = uitofp i32 %3999 to float
  %4001 = fmul fast float %3994, %3997
  %4002 = fadd fast float %4001, %4000
  %4003 = fmul fast float %4002, 0x3F70101000000000
  %4004 = add i32 %3790, 0
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4004, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4005, %dx.types.Handle %3989, float %3917, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3922, float %3924, float undef, float %3926, float %3928, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4011 = bitcast float %3809 to i32
  %4012 = and i32 %4011, 255
  %4013 = uitofp i32 %4012 to float
  %4014 = lshr i32 %4011, 8
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = lshr i32 %4011, 16
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = fmul fast float %4019, 0x3F70101000000000
  %4021 = fmul fast float %4007, %4013
  %4022 = fadd fast float %4021, %4016
  %4023 = fmul fast float %4022, 0x3F70101000000000
  %4024 = fadd fast float %4008, -5.000000e-01
  %4025 = fadd fast float %4010, -5.000000e-01
  %4026 = fmul fast float %4024, %4020
  %4027 = fmul fast float %4025, %4020
  %4028 = fadd fast float %4026, 5.000000e-01
  %4029 = fadd fast float %4027, 5.000000e-01
  %4030 = fmul fast float %3991, %3818
  %4031 = fmul fast float %3992, %3819
  %4032 = fmul fast float %3993, %3820
  %4033 = fmul fast float %4028, 2.000000e+00
  %4034 = fadd fast float %4033, -1.000000e+00
  %4035 = fmul fast float %4029, 2.000000e+00
  %4036 = fadd fast float %4035, -1.000000e+00
  %4037 = fadd fast float %4034, %4036
  %4038 = fmul fast float %4037, 5.000000e-01
  %4039 = fsub fast float %4034, %4036
  %4040 = fmul fast float %4039, 5.000000e-01
  %4041 = call float @dx.op.unary.f32(i32 6, float %4038)  ; FAbs(value)
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = call float @dx.op.unary.f32(i32 6, float %4040)  ; FAbs(value)
  %4044 = fsub fast float %4042, %4043
  %4045 = call float @dx.op.dot3.f32(i32 55, float %4038, float %4040, float %4044, float %4038, float %4040, float %4044)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = call float @dx.op.unary.f32(i32 25, float %4045)  ; Rsqrt(value)
  %4047 = fmul fast float %4038, %4046
  %4048 = fmul fast float %4040, %4046
  %4049 = fmul fast float %4046, %4044
  %4050 = fmul fast float %4049, %3784
  %4051 = fmul fast float %4049, %3785
  %4052 = fmul fast float %4049, %3786
  %4053 = fmul fast float %4047, %3806
  %4054 = fmul fast float %4047, %3807
  %4055 = fmul fast float %4047, %3808
  %4056 = fadd fast float %4053, %4050
  %4057 = fadd fast float %4054, %4051
  %4058 = fadd fast float %4055, %4052
  %4059 = fmul fast float %4048, %3812
  %4060 = fmul fast float %4048, %3813
  %4061 = fmul fast float %4048, %3814
  %4062 = fadd fast float %4056, %4059
  %4063 = fadd fast float %4057, %4060
  %4064 = fadd fast float %4058, %4061
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = call float @dx.op.unary.f32(i32 25, float %4065)  ; Rsqrt(value)
  %4067 = fmul fast float %4062, %4066
  %4068 = fmul fast float %4063, %4066
  %4069 = fmul fast float %4064, %4066
  %4070 = icmp ne i32 %3986, 0
  %4071 = select i1 %4070, float 1.000000e+00, float 0.000000e+00
  %4072 = fmul fast float %3976, %4071
  %4073 = and i32 %3906, 1
  %4074 = icmp eq i32 %4073, 0
  br i1 %4074, label %4075, label %4079

; <label>:4075                                    ; preds = %3984
  %4076 = fsub fast float %4067, %3766
  %4077 = fsub fast float %4068, %3767
  %4078 = fsub fast float %4069, %3768
  br label %4079

; <label>:4079                                    ; preds = %4075, %3984
  %4080 = phi float [ %4076, %4075 ], [ %4067, %3984 ]
  %4081 = phi float [ %4077, %4075 ], [ %4068, %3984 ]
  %4082 = phi float [ %4078, %4075 ], [ %4069, %3984 ]
  %4083 = fmul float %4082, %4072
  %4084 = fmul float %4081, %4072
  %4085 = fmul float %4080, %4072
  %4086 = fadd fast float %4085, %3766
  %4087 = fadd fast float %4084, %3767
  %4088 = fadd fast float %4083, %3768
  %4089 = icmp ne i32 %3985, 0
  %4090 = select i1 %4089, float 1.000000e+00, float 0.000000e+00
  %4091 = fmul fast float %3976, %4090
  %4092 = fsub fast float %4030, %3773
  %4093 = fsub fast float %4031, %3774
  %4094 = fsub fast float %4032, %3775
  %4095 = fmul fast float %4092, %4091
  %4096 = fmul fast float %4093, %4091
  %4097 = fmul fast float %4094, %4091
  %4098 = fadd fast float %4095, %3773
  %4099 = fadd fast float %4096, %3774
  %4100 = fadd fast float %4097, %3775
  %4101 = fsub fast float %4003, %3772
  %4102 = fmul fast float %4101, %4091
  %4103 = fadd fast float %4102, %3772
  %4104 = fmul fast float %4091, %3762
  %4105 = fsub fast float %3762, %4104
  %4106 = fmul fast float %4091, %3761
  %4107 = fsub fast float %3761, %4106
  %4108 = fadd fast float %3976, %3771
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = fsub fast float %4023, %3770
  %4111 = fmul fast float %4110, %4072
  %4112 = fadd fast float %4111, %3770
  %4113 = fsub fast float %4009, %3769
  %4114 = fmul fast float %4113, %4072
  %4115 = fadd fast float %4114, %3769
  %4116 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4031, float %4032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4120 = fmul fast float %4119, %4116
  %4121 = fadd fast float %4120, %4118
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = bitcast float %3821 to i32
  %4124 = and i32 %4123, 65535
  %4125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4124)  ; LegacyF16ToF32(value)
  %4126 = lshr i32 %4123, 16
  %4127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4126)  ; LegacyF16ToF32(value)
  %4128 = fcmp fast oge float %4125, 0.000000e+00
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = select i1 %4128, float %4125, float %4130
  %4132 = fadd fast float %4131, %4127
  %4133 = fsub fast float %4122, %3760
  %4134 = fmul fast float %4133, %3976
  %4135 = fadd fast float %4134, %3760
  %4136 = fmul fast float %4132, %3976
  %4137 = call float @dx.op.binary.f32(i32 35, float %3759, float %4136)  ; FMax(a,b)
  %4138 = and i32 %3906, 16
  %4139 = icmp eq i32 %4138, 0
  br i1 %4139, label %4162, label %4140

; <label>:4140                                    ; preds = %4079
  %4141 = bitcast float %3827 to i32
  %4142 = add i32 %3824, 0
  %4143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4142, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4144 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4143, %dx.types.Handle %3989, float %3917, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float %3922, float %3924, float undef, float %3926, float %3928, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4148 = and i32 %4141, 65535
  %4149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4148)  ; LegacyF16ToF32(value)
  %4150 = fmul fast float %4145, %3818
  %4151 = fmul fast float %4146, %3819
  %4152 = fmul fast float %4147, %3820
  %4153 = and i32 %3906, 16384
  %4154 = icmp ne i32 %4153, 0
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = select i1 %4154, float %4156, float 1.000000e+00
  %4158 = fmul fast float %4157, %4149
  %4159 = fmul fast float %4150, %4158
  %4160 = fmul fast float %4151, %4158
  %4161 = fmul fast float %4152, %4158
  br label %4162

; <label>:4162                                    ; preds = %4140, %4079
  %4163 = phi float [ %4159, %4140 ], [ 0.000000e+00, %4079 ]
  %4164 = phi float [ %4160, %4140 ], [ 0.000000e+00, %4079 ]
  %4165 = phi float [ %4161, %4140 ], [ 0.000000e+00, %4079 ]
  %4166 = fsub fast float %4163, %3763
  %4167 = fsub fast float %4164, %3764
  %4168 = fsub fast float %4165, %3765
  %4169 = fmul fast float %4166, %3976
  %4170 = fmul fast float %4167, %3976
  %4171 = fmul fast float %4168, %3976
  %4172 = fadd fast float %4169, %3763
  %4173 = fadd fast float %4170, %3764
  %4174 = fadd fast float %4171, %3765
  br label %3877

; <label>:4175                                    ; preds = %3877
  br label %4176

; <label>:4176                                    ; preds = %4175, %3693
  %4177 = phi float [ 0.000000e+00, %3693 ], [ %3878, %4175 ]
  %4178 = phi float [ %3663, %3693 ], [ %3879, %4175 ]
  %4179 = phi float [ %3661, %3693 ], [ %3880, %4175 ]
  %4180 = phi float [ %3660, %3693 ], [ %3881, %4175 ]
  %4181 = phi float [ 0.000000e+00, %3693 ], [ %3882, %4175 ]
  %4182 = phi float [ %3654, %3693 ], [ %3883, %4175 ]
  %4183 = phi float [ %3655, %3693 ], [ %3884, %4175 ]
  %4184 = phi float [ %3656, %3693 ], [ %3885, %4175 ]
  %4185 = phi float [ %3689, %3693 ], [ %3886, %4175 ]
  %4186 = phi float [ %3690, %3693 ], [ %3887, %4175 ]
  %4187 = phi float [ %3691, %3693 ], [ %3888, %4175 ]
  %4188 = phi float [ %3659, %3693 ], [ %3889, %4175 ]
  %4189 = phi float [ %3658, %3693 ], [ %3890, %4175 ]
  %4190 = phi float [ 0.000000e+00, %3693 ], [ %3891, %4175 ]
  %4191 = phi float [ %3657, %3693 ], [ %3892, %4175 ]
  %4192 = phi float [ %3651, %3693 ], [ %3893, %4175 ]
  %4193 = phi float [ %3652, %3693 ], [ %3894, %4175 ]
  %4194 = phi float [ %3653, %3693 ], [ %3895, %4175 ]
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %4185, float %4186, float %4187)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = call float @dx.op.unary.f32(i32 25, float %4195)  ; Rsqrt(value)
  %4197 = fmul fast float %4196, %4185
  %4198 = fmul fast float %4196, %4186
  %4199 = fmul fast float %4196, %4187
  %4200 = fadd fast float %4190, %1326
  %4201 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = call float @dx.op.unary.f32(i32 25, float %4202)  ; Rsqrt(value)
  %4204 = fmul fast float %4203, %4197
  %4205 = fmul fast float %4203, %4198
  %4206 = fmul fast float %4203, %4199
  br label %4207

; <label>:4207                                    ; preds = %4176, %3648
  %4208 = phi float [ %4204, %4176 ], [ %3689, %3648 ]
  %4209 = phi float [ %4205, %4176 ], [ %3690, %3648 ]
  %4210 = phi float [ %4206, %4176 ], [ %3691, %3648 ]
  %4211 = phi float [ %4192, %4176 ], [ %3651, %3648 ]
  %4212 = phi float [ %4193, %4176 ], [ %3652, %3648 ]
  %4213 = phi float [ %4194, %4176 ], [ %3653, %3648 ]
  %4214 = phi float [ %4182, %4176 ], [ %3654, %3648 ]
  %4215 = phi float [ %4183, %4176 ], [ %3655, %3648 ]
  %4216 = phi float [ %4184, %4176 ], [ %3656, %3648 ]
  %4217 = phi float [ %4191, %4176 ], [ %3657, %3648 ]
  %4218 = phi float [ %4201, %4176 ], [ %1326, %3648 ]
  %4219 = phi float [ %4189, %4176 ], [ %3658, %3648 ]
  %4220 = phi float [ %4188, %4176 ], [ %3659, %3648 ]
  %4221 = phi float [ %4181, %4176 ], [ 0.000000e+00, %3648 ]
  %4222 = phi float [ %4180, %4176 ], [ %3660, %3648 ]
  %4223 = phi float [ %4177, %4176 ], [ 0.000000e+00, %3648 ]
  %4224 = phi float [ %4178, %4176 ], [ %3663, %3648 ]
  %4225 = phi float [ %4179, %4176 ], [ %3661, %3648 ]
  %4226 = fadd fast float %4217, 0xBFB99999A0000000
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = fmul fast float %4227, 0x3FF1C71C80000000
  %4229 = call float @dx.op.binary.f32(i32 36, float %4217, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4230 = fsub fast float 1.000000e+00, %4228
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fmul fast float %4231, %4211
  %4233 = fmul fast float %4231, %4212
  %4234 = fmul fast float %4231, %4213
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = fmul fast float %4228, %4211
  %4239 = fmul fast float %4228, %4212
  %4240 = fmul fast float %4228, %4213
  %4241 = fadd fast float %4238, %4229
  %4242 = fadd fast float %4239, %4229
  %4243 = fadd fast float %4240, %4229
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 3
  %4250 = and i32 %4249, 8
  %4251 = icmp ne i32 %4250, 0
  %4252 = call float @dx.op.binary.f32(i32 35, float %4235, float %4211)  ; FMax(a,b)
  %4253 = call float @dx.op.binary.f32(i32 35, float %4236, float %4211)  ; FMax(a,b)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4237, float %4211)  ; FMax(a,b)
  %4255 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4236, float %4237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4256 = select i1 %204, float %4211, float %4235
  %4257 = select i1 %204, float %4255, float %4236
  %4258 = select i1 %204, float 1.000000e+00, float %4237
  %4259 = select i1 %4251, float %4252, float %4256
  %4260 = select i1 %4251, float %4253, float %4257
  %4261 = select i1 %4251, float %4254, float %4258
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.CBufRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4266 = fadd fast float %4263, %165
  %4267 = fadd fast float %4264, %166
  %4268 = fadd fast float %4265, %167
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4272 = fsub fast float %4266, %4270
  %4273 = fsub fast float %4267, %4271
  %4274 = fmul fast float %4272, %4272
  %4275 = fmul fast float %4273, %4273
  %4276 = fadd fast float %4274, %4275
  %4277 = call float @dx.op.unary.f32(i32 24, float %4276)  ; Sqrt(value)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4279 = fcmp fast olt float %4277, %4278
  br i1 %4279, label %4280, label %4347

; <label>:4280                                    ; preds = %4207
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4283, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4290 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4291 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4292 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4293 = fadd fast float %4290, %4266
  %4294 = fadd fast float %4291, %4267
  %4295 = fadd fast float %4292, %4268
  %4296 = fmul fast float %4293, %4282
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4284, float %4296)  ; FMad(a,b,c)
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4286, float %4297)  ; FMad(a,b,c)
  %4299 = fmul fast float %4293, %4287
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4288, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4289, float %4300)  ; FMad(a,b,c)
  %4302 = fsub fast float %4298, %4290
  %4303 = fsub fast float %4301, %4291
  %4304 = fsub fast float %4302, %4270
  %4305 = fadd fast float %4304, %4278
  %4306 = fsub fast float %4303, %4271
  %4307 = fadd fast float %4306, %4278
  %4308 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4309 = fmul fast float %4305, %4308
  %4310 = fmul fast float %4307, %4308
  %4311 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4312 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4313 = fsub fast float 1.000000e+00, %4311
  %4314 = fsub fast float 1.000000e+00, %4312
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4313, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = fcmp fast ugt float %4316, 0.000000e+00
  br i1 %4317, label %4318, label %4621

; <label>:4318                                    ; preds = %4280
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4321 = fmul fast float %4320, %4316
  %4322 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4323 = fadd fast float %4322, %4321
  %4324 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4325 = fadd fast float %4323, %4292
  %4326 = fmul fast float %4298, %4286
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4301, float %4289, float %4326)  ; FMad(a,b,c)
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4324, float %4327)  ; FMad(a,b,c)
  %4329 = fsub fast float %4328, %4292
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4332 = fsub fast float %4329, %4331
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4313, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4313, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.ResRet.f32 %4337, 1
  %4340 = extractvalue %dx.types.ResRet.f32 %4337, 2
  %4341 = fadd fast float %4338, %4334
  %4342 = fmul fast float %4341, 0x3F847AE140000000
  %4343 = fadd fast float %4339, %4335
  %4344 = fmul fast float %4343, 0x3F847AE140000000
  %4345 = fadd fast float %4340, %4336
  %4346 = fmul fast float %4345, 0x3F847AE140000000
  br label %4621

; <label>:4347                                    ; preds = %4207
  %4348 = and i32 %183, 1
  %4349 = icmp eq i32 %4348, 0
  br i1 %4349, label %4621, label %4350

; <label>:4350                                    ; preds = %4347
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 0
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4353, 1
  %4359 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4360 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4361 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4362 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4363 = fadd fast float %4360, %4266
  %4364 = fadd fast float %4361, %4267
  %4365 = fadd fast float %4362, %4268
  %4366 = fmul fast float %4363, %4352
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4354, float %4366)  ; FMad(a,b,c)
  %4368 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4356, float %4367)  ; FMad(a,b,c)
  %4369 = fmul fast float %4363, %4357
  %4370 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4358, float %4369)  ; FMad(a,b,c)
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4359, float %4370)  ; FMad(a,b,c)
  %4372 = fsub fast float %4368, %4360
  %4373 = fsub fast float %4371, %4361
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4374, 2
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.i32 %4381, 0
  %4383 = extractvalue %dx.types.CBufRet.i32 %4381, 1
  %4384 = udiv i32 %4383, %4382
  %4385 = fsub fast float %4372, %4375
  %4386 = fsub fast float %4373, %4376
  %4387 = call float @dx.op.binary.f32(i32 35, float %4385, float 0.000000e+00)  ; FMax(a,b)
  %4388 = call float @dx.op.binary.f32(i32 35, float %4386, float 0.000000e+00)  ; FMax(a,b)
  %4389 = call float @dx.op.binary.f32(i32 36, float %4387, float %4377)  ; FMin(a,b)
  %4390 = call float @dx.op.binary.f32(i32 36, float %4388, float %4378)  ; FMin(a,b)
  %4391 = add i32 %4382, -1
  %4392 = add i32 %4384, -1
  %4393 = fmul fast float %4389, %4380
  %4394 = fmul fast float %4390, %4380
  %4395 = fptoui float %4393 to i32
  %4396 = fptoui float %4394 to i32
  %4397 = call i32 @dx.op.binary.i32(i32 40, i32 %4395, i32 %4391)  ; UMin(a,b)
  %4398 = call i32 @dx.op.binary.i32(i32 40, i32 %4396, i32 %4392)  ; UMin(a,b)
  %4399 = mul i32 %4398, %4382
  %4400 = add i32 %4399, %4397
  %4401 = shl i32 %4400, 2
  %4402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.i32 %4402, 0
  %4404 = icmp eq i32 %4403, -1
  br i1 %4404, label %4621, label %4405

; <label>:4405                                    ; preds = %4350
  %4406 = mul i32 %4403, 148
  %4407 = add i32 %4406, 4
  %4408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = add i32 %4406, 8
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = add i32 %4406, 36
  %4414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4413, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = add i32 %4406, 60
  %4417 = add i32 %4406, 92
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = add i32 %4406, 116
  %4421 = fsub fast float %4372, %4409
  %4422 = fsub fast float %4373, %4412
  %4423 = fmul fast float %4380, %4421
  %4424 = fmul fast float %4380, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4430 = call float @dx.op.unary.f32(i32 83, float %4425)  ; DerivCoarseX(value)
  %4431 = call float @dx.op.unary.f32(i32 83, float %4427)  ; DerivCoarseX(value)
  %4432 = call float @dx.op.unary.f32(i32 84, float %4425)  ; DerivCoarseY(value)
  %4433 = call float @dx.op.unary.f32(i32 84, float %4427)  ; DerivCoarseY(value)
  %4434 = fmul fast float %4430, %4429
  %4435 = fmul fast float %4431, %4429
  %4436 = fmul fast float %4432, %4429
  %4437 = fmul fast float %4433, %4429
  %4438 = call float @dx.op.dot2.f32(i32 54, float %4436, float %4437, float %4436, float %4437)  ; Dot2(ax,ay,bx,by)
  %4439 = call float @dx.op.dot2.f32(i32 54, float %4434, float %4435, float %4434, float %4435)  ; Dot2(ax,ay,bx,by)
  %4440 = call float @dx.op.binary.f32(i32 35, float %4439, float %4438)  ; FMax(a,b)
  %4441 = call float @dx.op.unary.f32(i32 23, float %4440)  ; Log(value)
  %4442 = fmul fast float %4441, 5.000000e-01
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4445 = fadd fast float %4444, %4442
  %4446 = call float @dx.op.binary.f32(i32 35, float %4445, float 0.000000e+00)  ; FMax(a,b)
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4449 = fadd fast float %4448, %4446
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4452 = fadd fast float %4449, %4451
  %4453 = add i32 %4419, 0
  %4454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4453, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4455 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4454, i32 0)  ; GetDimensions(handle,mipLevel)
  %4456 = extractvalue %dx.types.Dimensions %4455, 0
  %4457 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4456)  ; FirstbitLo(value)
  %4458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.i32 %4458, 1
  %4460 = sub nsw i32 %4459, %4457
  %4461 = sitofp i32 %4460 to float
  %4462 = fsub fast float %4452, %4461
  %4463 = call float @dx.op.binary.f32(i32 35, float %4462, float 0.000000e+00)  ; FMax(a,b)
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4454, %dx.types.Handle %28, float %4425, float %4427, float %4415, float undef, i32 0, i32 0, i32 undef, float %4463)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = fcmp ule float %4465, 0x3FE0101020000000
  %4467 = extractvalue %dx.types.CBufRet.i32 %4458, 0
  %4468 = and i32 %4467, 128
  %4469 = icmp ne i32 %4468, 0
  %4470 = and i1 %4466, %4469
  br i1 %4470, label %4621, label %4471

; <label>:4471                                    ; preds = %4405
  %4472 = add i32 %4406, 20
  %4473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = add i32 %4406, 24
  %4476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4475, i32 undef)  ; BufferLoad(srv,index,wot)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = add i32 %4406, 40
  %4479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4478, i32 undef)  ; BufferLoad(srv,index,wot)
  %4480 = extractvalue %dx.types.ResRet.f32 %4479, 0
  %4481 = add i32 %4406, 96
  %4482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4481, i32 undef)  ; BufferLoad(srv,index,wot)
  %4483 = extractvalue %dx.types.ResRet.i32 %4482, 0
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 2
  %4486 = fmul fast float %4485, %4425
  %4487 = fmul fast float %4485, %4427
  %4488 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4489 = fadd fast float %4486, %4488
  %4490 = fadd fast float %4487, %4488
  %4491 = add i32 %4483, 0
  %4492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4491, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4493 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4492, i32 0)  ; GetDimensions(handle,mipLevel)
  %4494 = extractvalue %dx.types.Dimensions %4493, 0
  %4495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4494)  ; FirstbitLo(value)
  %4496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.i32 %4496, 1
  %4498 = sub nsw i32 %4497, %4495
  %4499 = sitofp i32 %4498 to float
  %4500 = fsub fast float %4449, %4499
  %4501 = call float @dx.op.binary.f32(i32 35, float %4500, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4492, %dx.types.Handle %28, float %4489, float %4490, float %4480, float undef, i32 0, i32 0, i32 undef, float %4501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = fmul fast float %4503, %4474
  %4505 = fadd fast float %4504, %4477
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4514 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4515 = fadd fast float %4511, %4372
  %4516 = fadd fast float %4513, %4373
  %4517 = fadd fast float %4505, %4514
  %4518 = fmul fast float %4515, %4507
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4516, float %4508, float %4518)  ; FMad(a,b,c)
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4517, float %4509, float %4519)  ; FMad(a,b,c)
  %4521 = fsub fast float %4520, %4514
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4524 = fsub fast float %4521, %4523
  %4525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.i32 %4525, 0
  %4527 = call i32 @dx.op.binary.i32(i32 40, i32 %4403, i32 %4526)  ; UMin(a,b)
  %4528 = mul i32 %4527, 36
  %4529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.i32 %4529, 0
  %4531 = add i32 %4528, 4
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = fmul fast float %4533, %4425
  %4535 = fmul fast float %4533, %4427
  %4536 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4537 = fadd fast float %4534, %4536
  %4538 = fadd fast float %4535, %4536
  %4539 = icmp eq i32 %4530, 0
  br i1 %4539, label %4608, label %4540

; <label>:4540                                    ; preds = %4471
  br label %4541

; <label>:4541                                    ; preds = %4598, %4540
  %4542 = phi float [ %4599, %4598 ], [ 0.000000e+00, %4540 ]
  %4543 = phi float [ %4600, %4598 ], [ 0.000000e+00, %4540 ]
  %4544 = phi float [ %4601, %4598 ], [ 0.000000e+00, %4540 ]
  %4545 = phi float [ %4602, %4598 ], [ 0.000000e+00, %4540 ]
  %4546 = phi float [ %4603, %4598 ], [ 0.000000e+00, %4540 ]
  %4547 = phi float [ %4604, %4598 ], [ 0.000000e+00, %4540 ]
  %4548 = phi i32 [ %4605, %4598 ], [ 0, %4540 ]
  %4549 = shl i32 %4548, 2
  %4550 = add i32 %4416, %4549
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = add i32 %4420, %4549
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = add i32 %4555, 0
  %4557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4556, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4558 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4557, i32 0)  ; GetDimensions(handle,mipLevel)
  %4559 = extractvalue %dx.types.Dimensions %4558, 0
  %4560 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4559)  ; FirstbitLo(value)
  %4561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.i32 %4561, 1
  %4563 = sub nsw i32 %4562, %4560
  %4564 = sitofp i32 %4563 to float
  %4565 = fsub fast float %4449, %4564
  %4566 = call float @dx.op.binary.f32(i32 35, float %4565, float 0.000000e+00)  ; FMax(a,b)
  %4567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4557, %dx.types.Handle %28, float %4537, float %4538, float %4552, float undef, i32 0, i32 0, i32 undef, float %4566)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = fcmp fast ogt float %4568, 0.000000e+00
  br i1 %4569, label %4570, label %4598

; <label>:4570                                    ; preds = %4541
  %4571 = add i32 %4531, %4549
  %4572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.i32 %4572, 0
  %4574 = and i32 %4573, 32767
  %4575 = mul nuw nsw i32 %4574, 928
  %4576 = add nuw nsw i32 %4575, 48
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = add nuw nsw i32 %4575, 60
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = fmul fast float %4578, %4568
  %4587 = fmul fast float %4579, %4568
  %4588 = fmul fast float %4580, %4568
  %4589 = fadd fast float %4586, %4542
  %4590 = fadd fast float %4587, %4543
  %4591 = fadd fast float %4588, %4544
  %4592 = fmul fast float %4583, %4568
  %4593 = fmul fast float %4584, %4568
  %4594 = fmul fast float %4585, %4568
  %4595 = fadd fast float %4592, %4545
  %4596 = fadd fast float %4593, %4546
  %4597 = fadd fast float %4594, %4547
  br label %4598

; <label>:4598                                    ; preds = %4570, %4541
  %4599 = phi float [ %4589, %4570 ], [ %4542, %4541 ]
  %4600 = phi float [ %4590, %4570 ], [ %4543, %4541 ]
  %4601 = phi float [ %4591, %4570 ], [ %4544, %4541 ]
  %4602 = phi float [ %4595, %4570 ], [ %4545, %4541 ]
  %4603 = phi float [ %4596, %4570 ], [ %4546, %4541 ]
  %4604 = phi float [ %4597, %4570 ], [ %4547, %4541 ]
  %4605 = add nuw i32 %4548, 1
  %4606 = icmp eq i32 %4605, %4530
  br i1 %4606, label %4607, label %4541

; <label>:4607                                    ; preds = %4598
  br label %4608

; <label>:4608                                    ; preds = %4607, %4471
  %4609 = phi float [ 0.000000e+00, %4471 ], [ %4599, %4607 ]
  %4610 = phi float [ 0.000000e+00, %4471 ], [ %4600, %4607 ]
  %4611 = phi float [ 0.000000e+00, %4471 ], [ %4601, %4607 ]
  %4612 = phi float [ 0.000000e+00, %4471 ], [ %4602, %4607 ]
  %4613 = phi float [ 0.000000e+00, %4471 ], [ %4603, %4607 ]
  %4614 = phi float [ 0.000000e+00, %4471 ], [ %4604, %4607 ]
  %4615 = fadd fast float %4612, %4609
  %4616 = fmul fast float %4615, 0x3F847AE140000000
  %4617 = fadd fast float %4613, %4610
  %4618 = fmul fast float %4617, 0x3F847AE140000000
  %4619 = fadd fast float %4614, %4611
  %4620 = fmul fast float %4619, 0x3F847AE140000000
  br label %4621

; <label>:4621                                    ; preds = %4608, %4405, %4350, %4347, %4318, %4280
  %4622 = phi float [ %4332, %4318 ], [ -1.310720e+05, %4280 ], [ %4524, %4608 ], [ -1.310720e+05, %4350 ], [ -1.310720e+05, %4405 ], [ -1.310720e+05, %4347 ]
  %4623 = phi float [ %4342, %4318 ], [ 0.000000e+00, %4280 ], [ %4616, %4608 ], [ 0.000000e+00, %4350 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4347 ]
  %4624 = phi float [ %4344, %4318 ], [ 0.000000e+00, %4280 ], [ %4618, %4608 ], [ 0.000000e+00, %4350 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4347 ]
  %4625 = phi float [ %4346, %4318 ], [ 0.000000e+00, %4280 ], [ %4620, %4608 ], [ 0.000000e+00, %4350 ], [ 0.000000e+00, %4405 ], [ 0.000000e+00, %4347 ]
  %4626 = phi i1 [ true, %4318 ], [ false, %4280 ], [ true, %4608 ], [ false, %4350 ], [ false, %4405 ], [ false, %4347 ]
  %4627 = and i32 %183, 3
  %4628 = icmp eq i32 %4627, 1
  %4629 = select i1 %4628, float 1.000000e+00, float 0.000000e+00
  %4630 = fsub fast float %4622, %167
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = select i1 %4626, float %4631, float 1.000000e+00
  %4633 = fmul fast float %4632, %4629
  %4634 = icmp eq i32 %4627, 3
  %4635 = select i1 %4634, float 1.000000e+00, float %4633
  %4636 = call float @dx.op.binary.f32(i32 35, float %4223, float %4635)  ; FMax(a,b)
  %4637 = fcmp fast olt float %4635, 1.000000e+00
  %4638 = and i1 %216, %4637
  br i1 %4638, label %4639, label %4649

; <label>:4639                                    ; preds = %4621
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %49, float %50, float %51, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = fadd fast float %4641, %4636
  %4645 = fcmp ule float %48, 0.000000e+00
  %4646 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = select i1 %4645, float %4646, float 1.000000e+00
  %4648 = fmul fast float %4647, %4643
  br label %4649

; <label>:4649                                    ; preds = %4639, %4621
  %4650 = phi float [ %4644, %4639 ], [ %4636, %4621 ]
  %4651 = phi float [ %4642, %4639 ], [ 0.000000e+00, %4621 ]
  %4652 = phi float [ %4648, %4639 ], [ 0.000000e+00, %4621 ]
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = fcmp fast une float %4654, 0.000000e+00
  %4657 = fcmp fast une float %4655, 0.000000e+00
  %4658 = or i1 %4656, %4657
  br i1 %4658, label %4659, label %5218

; <label>:4659                                    ; preds = %4649
  br i1 %4656, label %4660, label %4933

; <label>:4660                                    ; preds = %4659
  %4661 = call float @dx.op.unary.f32(i32 23, float %4220)  ; Log(value)
  %4662 = fmul fast float %4661, 4.000000e+00
  %4663 = call float @dx.op.unary.f32(i32 21, float %4662)  ; Exp(value)
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 0
  %4666 = fmul fast float %4665, %36
  %4667 = fmul fast float %4665, %37
  %4668 = fmul fast float %4665, %38
  %4669 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4670 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4671 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4672 = call float @dx.op.unary.f32(i32 23, float %4669)  ; Log(value)
  %4673 = call float @dx.op.unary.f32(i32 23, float %4670)  ; Log(value)
  %4674 = call float @dx.op.unary.f32(i32 23, float %4671)  ; Log(value)
  %4675 = fmul fast float %4672, 4.000000e+00
  %4676 = fmul fast float %4673, 4.000000e+00
  %4677 = fmul fast float %4674, 4.000000e+00
  %4678 = call float @dx.op.unary.f32(i32 21, float %4675)  ; Exp(value)
  %4679 = call float @dx.op.unary.f32(i32 21, float %4676)  ; Exp(value)
  %4680 = call float @dx.op.unary.f32(i32 21, float %4677)  ; Exp(value)
  %4681 = fadd fast float %4679, %4678
  %4682 = fadd fast float %4681, %4680
  %4683 = fdiv fast float 1.000000e+00, %4682
  %4684 = fmul fast float %4683, %4678
  %4685 = fcmp fast ogt float %45, 0.000000e+00
  %4686 = fcmp fast ogt float %46, 0.000000e+00
  %4687 = fcmp fast ogt float %47, 0.000000e+00
  %4688 = fcmp fast olt float %45, 0.000000e+00
  %4689 = fcmp fast olt float %46, 0.000000e+00
  %4690 = fcmp fast olt float %47, 0.000000e+00
  %4691 = zext i1 %4685 to i32
  %4692 = zext i1 %4686 to i32
  %4693 = zext i1 %4687 to i32
  %4694 = zext i1 %4688 to i32
  %4695 = zext i1 %4689 to i32
  %4696 = zext i1 %4690 to i32
  %4697 = sub nsw i32 %4691, %4694
  %4698 = sub nsw i32 %4692, %4695
  %4699 = sub nsw i32 %4693, %4696
  %4700 = call float @dx.op.unary.f32(i32 83, float %4666)  ; DerivCoarseX(value)
  %4701 = call float @dx.op.unary.f32(i32 83, float %4667)  ; DerivCoarseX(value)
  %4702 = call float @dx.op.unary.f32(i32 83, float %4668)  ; DerivCoarseX(value)
  %4703 = call float @dx.op.unary.f32(i32 84, float %4666)  ; DerivCoarseY(value)
  %4704 = call float @dx.op.unary.f32(i32 84, float %4667)  ; DerivCoarseY(value)
  %4705 = call float @dx.op.unary.f32(i32 84, float %4668)  ; DerivCoarseY(value)
  %4706 = fcmp fast ole float %215, %4684
  %4707 = fmul fast float %4683, %4681
  %4708 = fcmp fast ole float %215, %4707
  %4709 = select i1 %4708, float %4668, float %4666
  %4710 = select i1 %4708, float %4666, float %4667
  %4711 = select i1 %4706, float %4667, float %4709
  %4712 = select i1 %4706, float %4668, float %4710
  %4713 = select i1 %4708, float %4702, float %4700
  %4714 = select i1 %4708, float %4700, float %4701
  %4715 = select i1 %4706, float %4701, float %4713
  %4716 = select i1 %4706, float %4702, float %4714
  %4717 = select i1 %4708, float %4705, float %4703
  %4718 = select i1 %4708, float %4703, float %4704
  %4719 = select i1 %4706, float %4704, float %4717
  %4720 = select i1 %4706, float %4705, float %4718
  %4721 = call float @dx.op.unary.f32(i32 27, float %4711)  ; Round_ni(value)
  %4722 = call float @dx.op.unary.f32(i32 27, float %4712)  ; Round_ni(value)
  %4723 = fptosi float %4721 to i32
  %4724 = fptosi float %4722 to i32
  %4725 = xor i32 %4724, %4723
  %4726 = sitofp i32 %4725 to float
  %4727 = fptosi float %4726 to i32
  %4728 = sitofp i32 %4727 to float
  %4729 = fmul fast float %4728, 0x3FE3C6EF40000000
  %4730 = frem fast float %4721, 2.560000e+02
  %4731 = frem fast float %4722, 2.560000e+02
  %4732 = fptoui float %4730 to i32
  %4733 = fptoui float %4731 to i32
  %4734 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4732, i32 %4733, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = extractvalue %dx.types.ResRet.f32 %4734, 1
  %4737 = extractvalue %dx.types.ResRet.f32 %4734, 2
  %4738 = fadd fast float %4735, %4729
  %4739 = fadd fast float %4736, %4729
  %4740 = fadd fast float %4737, %4729
  %4741 = call float @dx.op.unary.f32(i32 22, float %4738)  ; Frc(value)
  %4742 = call float @dx.op.unary.f32(i32 22, float %4739)  ; Frc(value)
  %4743 = call float @dx.op.unary.f32(i32 22, float %4740)  ; Frc(value)
  %4744 = fmul fast float %4743, 0x401921FB60000000
  %4745 = call float @dx.op.unary.f32(i32 13, float %4744)  ; Sin(value)
  %4746 = call float @dx.op.unary.f32(i32 12, float %4744)  ; Cos(value)
  %4747 = fsub fast float -0.000000e+00, %4746
  %4748 = fmul fast float %4746, %4711
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4745, float %4712, float %4748)  ; FMad(a,b,c)
  %4750 = fmul fast float %4745, %4711
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4747, float %4712, float %4750)  ; FMad(a,b,c)
  %4752 = fadd fast float %4749, %4741
  %4753 = fadd fast float %4751, %4742
  %4754 = extractvalue %dx.types.CBufRet.f32 %4664, 3
  %4755 = bitcast float %4754 to i32
  %4756 = icmp eq i32 %4755, 0
  br i1 %4756, label %4795, label %4757

; <label>:4757                                    ; preds = %4660
  %4758 = add i32 %4755, 0
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4759, %dx.types.Handle %75, float %4752, float %4753, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4716, float undef, float %4719, float %4720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4761 = extractvalue %dx.types.ResRet.f32 %4760, 0
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4765 = fsub fast float 1.000000e+00, %4654
  %4766 = call float @dx.op.binary.f32(i32 35, float %4765, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4767 = bitcast float %4654 to i32
  %4768 = sitofp i32 %4767 to float
  %4769 = fadd fast float %4768, 0xC1CFBF8940000000
  %4770 = fmul fast float %4764, %4769
  %4771 = fadd fast float %4770, 0x41CFBF8940000000
  %4772 = fptosi float %4771 to i32
  %4773 = bitcast i32 %4772 to float
  %4774 = bitcast float %4766 to i32
  %4775 = sitofp i32 %4774 to float
  %4776 = fadd fast float %4775, 0xC1CFBF8940000000
  %4777 = fmul fast float %4776, %4764
  %4778 = fadd fast float %4777, 0x41CFBF8940000000
  %4779 = fptosi float %4778 to i32
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4773, %4763
  %4782 = fmul fast float %4780, %4763
  %4783 = fsub fast float %4766, %4781
  %4784 = fadd fast float %4782, %4766
  %4785 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4787 = fsub fast float %4761, %4785
  %4788 = fsub fast float %4786, %4785
  %4789 = bitcast float %4788 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = fmul fast float %4791, %4787
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fcmp fast olt float %4793, 0x3F70101020000000
  br i1 %4794, label %4933, label %4795

; <label>:4795                                    ; preds = %4757, %4660
  %4796 = phi float [ %4793, %4757 ], [ %4654, %4660 ]
  %4797 = fmul fast float %4796, %4663
  %4798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.i32 %4798, 1
  %4800 = extractvalue %dx.types.CBufRet.i32 %4798, 0
  %4801 = add i32 %4800, 0
  %4802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4802, %dx.types.Handle %74, float %4752, float %4753, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4716, float undef, float %4719, float %4720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = extractvalue %dx.types.ResRet.f32 %4803, 3
  %4808 = and i32 %4799, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = lshr i32 %4799, 8
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = fmul fast float %4807, %4809
  %4814 = fadd fast float %4813, %4812
  %4815 = fmul fast float %4814, 0x3F70101000000000
  %4816 = fadd fast float %4815, 0xBFB99999A0000000
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fmul fast float %4817, 0x3FF1C71C80000000
  %4819 = call float @dx.op.binary.f32(i32 36, float %4815, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4820 = fsub fast float 1.000000e+00, %4818
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fmul fast float %4821, %4804
  %4823 = fmul fast float %4821, %4805
  %4824 = fmul fast float %4821, %4806
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = fmul fast float %4818, %4804
  %4829 = fmul fast float %4818, %4805
  %4830 = fmul fast float %4818, %4806
  %4831 = fadd fast float %4828, %4819
  %4832 = fadd fast float %4829, %4819
  %4833 = fadd fast float %4830, %4819
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.i32 %4837, 3
  %4839 = extractvalue %dx.types.CBufRet.i32 %4837, 2
  %4840 = add i32 %4839, 0
  %4841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4842 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4841, %dx.types.Handle %74, float %4752, float %4753, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4716, float undef, float %4719, float %4720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4843 = extractvalue %dx.types.ResRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.ResRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.ResRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.ResRet.f32 %4842, 3
  %4847 = and i32 %4838, 255
  %4848 = uitofp i32 %4847 to float
  %4849 = lshr i32 %4838, 8
  %4850 = and i32 %4849, 255
  %4851 = uitofp i32 %4850 to float
  %4852 = lshr i32 %4838, 16
  %4853 = and i32 %4852, 255
  %4854 = uitofp i32 %4853 to float
  %4855 = fmul fast float %4854, 0x3F70101000000000
  %4856 = fmul fast float %4843, %4848
  %4857 = fadd fast float %4856, %4851
  %4858 = fmul fast float %4857, 0x3F70101000000000
  %4859 = fadd fast float %4844, -5.000000e-01
  %4860 = fadd fast float %4846, -5.000000e-01
  %4861 = fmul fast float %4859, %4855
  %4862 = fmul fast float %4860, %4855
  %4863 = fadd fast float %4861, 5.000000e-01
  %4864 = fadd fast float %4862, 5.000000e-01
  %4865 = fmul fast float %4863, 2.000000e+00
  %4866 = fadd fast float %4865, -1.000000e+00
  %4867 = fmul fast float %4864, 2.000000e+00
  %4868 = fadd fast float %4867, -1.000000e+00
  %4869 = fadd fast float %4866, %4868
  %4870 = fmul fast float %4869, 5.000000e-01
  %4871 = fsub fast float %4866, %4868
  %4872 = fmul fast float %4871, 5.000000e-01
  %4873 = call float @dx.op.unary.f32(i32 6, float %4870)  ; FAbs(value)
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = call float @dx.op.unary.f32(i32 6, float %4872)  ; FAbs(value)
  %4876 = fsub fast float %4874, %4875
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4872, float %4876, float %4870, float %4872, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.unary.f32(i32 25, float %4877)  ; Rsqrt(value)
  %4879 = fmul fast float %4870, %4878
  %4880 = fmul fast float %4872, %4878
  %4881 = select i1 %4708, i32 %4698, i32 %4699
  %4882 = select i1 %4706, i32 %4697, i32 %4881
  %4883 = sitofp i32 %4882 to float
  %4884 = fmul fast float %4876, %4883
  %4885 = fmul fast float %4884, %4878
  %4886 = select i1 %4708, float %4885, float %4880
  %4887 = select i1 %4708, float %4880, float %4885
  %4888 = select i1 %4706, float %4885, float %4879
  %4889 = select i1 %4706, float %4880, float %4886
  %4890 = select i1 %4706, float %4879, float %4887
  %4891 = fsub fast float %4825, %4259
  %4892 = fsub fast float %4826, %4260
  %4893 = fsub fast float %4827, %4261
  %4894 = fmul fast float %4891, %4797
  %4895 = fmul fast float %4892, %4797
  %4896 = fmul fast float %4893, %4797
  %4897 = fadd fast float %4894, %4259
  %4898 = fadd fast float %4895, %4260
  %4899 = fadd fast float %4896, %4261
  %4900 = fsub fast float %4834, %4244
  %4901 = fsub fast float %4835, %4245
  %4902 = fsub fast float %4836, %4246
  %4903 = fmul fast float %4900, %4797
  %4904 = fmul fast float %4901, %4797
  %4905 = fmul fast float %4902, %4797
  %4906 = fadd fast float %4903, %4244
  %4907 = fadd fast float %4904, %4245
  %4908 = fadd fast float %4905, %4246
  %4909 = fadd fast float %4888, %4208
  %4910 = fadd fast float %4889, %4209
  %4911 = fadd fast float %4890, %4210
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4910, float %4911, float %4909, float %4910, float %4911)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 25, float %4912)  ; Rsqrt(value)
  %4914 = fmul fast float %4909, %4913
  %4915 = fmul fast float %4910, %4913
  %4916 = fmul fast float %4911, %4913
  %4917 = fsub fast float %4914, %4208
  %4918 = fsub fast float %4915, %4209
  %4919 = fsub fast float %4916, %4210
  %4920 = fmul fast float %4917, %4797
  %4921 = fmul fast float %4918, %4797
  %4922 = fmul fast float %4919, %4797
  %4923 = fadd fast float %4920, %4208
  %4924 = fadd fast float %4921, %4209
  %4925 = fadd fast float %4922, %4210
  %4926 = call float @dx.op.binary.f32(i32 36, float %4220, float %4845)  ; FMin(a,b)
  %4927 = fsub fast float %4926, %4220
  %4928 = fmul fast float %4927, %4797
  %4929 = fadd fast float %4928, %4220
  %4930 = fsub fast float %4858, %4247
  %4931 = fmul fast float %4930, %4797
  %4932 = fadd fast float %4931, %4247
  br label %4933

; <label>:4933                                    ; preds = %4795, %4757, %4659
  %4934 = phi float [ %4906, %4795 ], [ %4244, %4757 ], [ %4244, %4659 ]
  %4935 = phi float [ %4907, %4795 ], [ %4245, %4757 ], [ %4245, %4659 ]
  %4936 = phi float [ %4908, %4795 ], [ %4246, %4757 ], [ %4246, %4659 ]
  %4937 = phi float [ %4897, %4795 ], [ %4259, %4757 ], [ %4259, %4659 ]
  %4938 = phi float [ %4898, %4795 ], [ %4260, %4757 ], [ %4260, %4659 ]
  %4939 = phi float [ %4899, %4795 ], [ %4261, %4757 ], [ %4261, %4659 ]
  %4940 = phi float [ %4923, %4795 ], [ %4208, %4757 ], [ %4208, %4659 ]
  %4941 = phi float [ %4924, %4795 ], [ %4209, %4757 ], [ %4209, %4659 ]
  %4942 = phi float [ %4925, %4795 ], [ %4210, %4757 ], [ %4210, %4659 ]
  %4943 = phi float [ %4932, %4795 ], [ %4247, %4757 ], [ %4247, %4659 ]
  %4944 = phi float [ %4929, %4795 ], [ %4220, %4757 ], [ %4220, %4659 ]
  br i1 %4657, label %4945, label %5218

; <label>:4945                                    ; preds = %4933
  %4946 = call float @dx.op.unary.f32(i32 23, float %4944)  ; Log(value)
  %4947 = fmul fast float %4946, 4.000000e+00
  %4948 = call float @dx.op.unary.f32(i32 21, float %4947)  ; Exp(value)
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 0
  %4951 = fmul fast float %4950, %36
  %4952 = fmul fast float %4950, %37
  %4953 = fmul fast float %4950, %38
  %4954 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4955 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %4956 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %4957 = call float @dx.op.unary.f32(i32 23, float %4954)  ; Log(value)
  %4958 = call float @dx.op.unary.f32(i32 23, float %4955)  ; Log(value)
  %4959 = call float @dx.op.unary.f32(i32 23, float %4956)  ; Log(value)
  %4960 = fmul fast float %4957, 4.000000e+00
  %4961 = fmul fast float %4958, 4.000000e+00
  %4962 = fmul fast float %4959, 4.000000e+00
  %4963 = call float @dx.op.unary.f32(i32 21, float %4960)  ; Exp(value)
  %4964 = call float @dx.op.unary.f32(i32 21, float %4961)  ; Exp(value)
  %4965 = call float @dx.op.unary.f32(i32 21, float %4962)  ; Exp(value)
  %4966 = fadd fast float %4964, %4963
  %4967 = fadd fast float %4966, %4965
  %4968 = fdiv fast float 1.000000e+00, %4967
  %4969 = fmul fast float %4968, %4963
  %4970 = fcmp fast ogt float %45, 0.000000e+00
  %4971 = fcmp fast ogt float %46, 0.000000e+00
  %4972 = fcmp fast ogt float %47, 0.000000e+00
  %4973 = fcmp fast olt float %45, 0.000000e+00
  %4974 = fcmp fast olt float %46, 0.000000e+00
  %4975 = fcmp fast olt float %47, 0.000000e+00
  %4976 = zext i1 %4970 to i32
  %4977 = zext i1 %4971 to i32
  %4978 = zext i1 %4972 to i32
  %4979 = zext i1 %4973 to i32
  %4980 = zext i1 %4974 to i32
  %4981 = zext i1 %4975 to i32
  %4982 = sub nsw i32 %4976, %4979
  %4983 = sub nsw i32 %4977, %4980
  %4984 = sub nsw i32 %4978, %4981
  %4985 = call float @dx.op.unary.f32(i32 83, float %4951)  ; DerivCoarseX(value)
  %4986 = call float @dx.op.unary.f32(i32 83, float %4952)  ; DerivCoarseX(value)
  %4987 = call float @dx.op.unary.f32(i32 83, float %4953)  ; DerivCoarseX(value)
  %4988 = call float @dx.op.unary.f32(i32 84, float %4951)  ; DerivCoarseY(value)
  %4989 = call float @dx.op.unary.f32(i32 84, float %4952)  ; DerivCoarseY(value)
  %4990 = call float @dx.op.unary.f32(i32 84, float %4953)  ; DerivCoarseY(value)
  %4991 = fcmp fast ole float %215, %4969
  %4992 = fmul fast float %4968, %4966
  %4993 = fcmp fast ole float %215, %4992
  %4994 = select i1 %4993, float %4953, float %4951
  %4995 = select i1 %4993, float %4951, float %4952
  %4996 = select i1 %4991, float %4952, float %4994
  %4997 = select i1 %4991, float %4953, float %4995
  %4998 = select i1 %4993, float %4987, float %4985
  %4999 = select i1 %4993, float %4985, float %4986
  %5000 = select i1 %4991, float %4986, float %4998
  %5001 = select i1 %4991, float %4987, float %4999
  %5002 = select i1 %4993, float %4990, float %4988
  %5003 = select i1 %4993, float %4988, float %4989
  %5004 = select i1 %4991, float %4989, float %5002
  %5005 = select i1 %4991, float %4990, float %5003
  %5006 = call float @dx.op.unary.f32(i32 27, float %4996)  ; Round_ni(value)
  %5007 = call float @dx.op.unary.f32(i32 27, float %4997)  ; Round_ni(value)
  %5008 = fptosi float %5006 to i32
  %5009 = fptosi float %5007 to i32
  %5010 = xor i32 %5009, %5008
  %5011 = sitofp i32 %5010 to float
  %5012 = fptosi float %5011 to i32
  %5013 = sitofp i32 %5012 to float
  %5014 = fmul fast float %5013, 0x3FE3C6EF40000000
  %5015 = frem fast float %5006, 2.560000e+02
  %5016 = frem fast float %5007, 2.560000e+02
  %5017 = fptoui float %5015 to i32
  %5018 = fptoui float %5016 to i32
  %5019 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %5017, i32 %5018, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.ResRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.ResRet.f32 %5019, 2
  %5023 = fadd fast float %5020, %5014
  %5024 = fadd fast float %5021, %5014
  %5025 = fadd fast float %5022, %5014
  %5026 = call float @dx.op.unary.f32(i32 22, float %5023)  ; Frc(value)
  %5027 = call float @dx.op.unary.f32(i32 22, float %5024)  ; Frc(value)
  %5028 = call float @dx.op.unary.f32(i32 22, float %5025)  ; Frc(value)
  %5029 = fmul fast float %5028, 0x401921FB60000000
  %5030 = call float @dx.op.unary.f32(i32 13, float %5029)  ; Sin(value)
  %5031 = call float @dx.op.unary.f32(i32 12, float %5029)  ; Cos(value)
  %5032 = fsub fast float -0.000000e+00, %5031
  %5033 = fmul fast float %5031, %4996
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %5030, float %4997, float %5033)  ; FMad(a,b,c)
  %5035 = fmul fast float %5030, %4996
  %5036 = call float @dx.op.tertiary.f32(i32 46, float %5032, float %4997, float %5035)  ; FMad(a,b,c)
  %5037 = fadd fast float %5034, %5026
  %5038 = fadd fast float %5036, %5027
  %5039 = extractvalue %dx.types.CBufRet.f32 %4949, 3
  %5040 = bitcast float %5039 to i32
  %5041 = icmp eq i32 %5040, 0
  br i1 %5041, label %5080, label %5042

; <label>:5042                                    ; preds = %4945
  %5043 = add i32 %5040, 0
  %5044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5044, %dx.types.Handle %75, float %5037, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float %5000, float %5001, float undef, float %5004, float %5005, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5050 = fsub fast float 1.000000e+00, %4655
  %5051 = call float @dx.op.binary.f32(i32 35, float %5050, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5052 = bitcast float %4655 to i32
  %5053 = sitofp i32 %5052 to float
  %5054 = fadd fast float %5053, 0xC1CFBF8940000000
  %5055 = fmul fast float %5049, %5054
  %5056 = fadd fast float %5055, 0x41CFBF8940000000
  %5057 = fptosi float %5056 to i32
  %5058 = bitcast i32 %5057 to float
  %5059 = bitcast float %5051 to i32
  %5060 = sitofp i32 %5059 to float
  %5061 = fadd fast float %5060, 0xC1CFBF8940000000
  %5062 = fmul fast float %5061, %5049
  %5063 = fadd fast float %5062, 0x41CFBF8940000000
  %5064 = fptosi float %5063 to i32
  %5065 = bitcast i32 %5064 to float
  %5066 = fmul fast float %5058, %5048
  %5067 = fmul fast float %5065, %5048
  %5068 = fsub fast float %5051, %5066
  %5069 = fadd fast float %5067, %5051
  %5070 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5072 = fsub fast float %5046, %5070
  %5073 = fsub fast float %5071, %5070
  %5074 = bitcast float %5073 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = bitcast i32 %5075 to float
  %5077 = fmul fast float %5076, %5072
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fcmp fast olt float %5078, 0x3F70101020000000
  br i1 %5079, label %5218, label %5080

; <label>:5080                                    ; preds = %5042, %4945
  %5081 = phi float [ %5078, %5042 ], [ %4655, %4945 ]
  %5082 = fmul fast float %5081, %4948
  %5083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.i32 %5083, 1
  %5085 = extractvalue %dx.types.CBufRet.i32 %5083, 0
  %5086 = add i32 %5085, 0
  %5087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5087, %dx.types.Handle %74, float %5037, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float %5000, float %5001, float undef, float %5004, float %5005, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5089 = extractvalue %dx.types.ResRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.ResRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.ResRet.f32 %5088, 2
  %5092 = extractvalue %dx.types.ResRet.f32 %5088, 3
  %5093 = and i32 %5084, 255
  %5094 = uitofp i32 %5093 to float
  %5095 = lshr i32 %5084, 8
  %5096 = and i32 %5095, 255
  %5097 = uitofp i32 %5096 to float
  %5098 = fmul fast float %5092, %5094
  %5099 = fadd fast float %5098, %5097
  %5100 = fmul fast float %5099, 0x3F70101000000000
  %5101 = fadd fast float %5100, 0xBFB99999A0000000
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = fmul fast float %5102, 0x3FF1C71C80000000
  %5104 = call float @dx.op.binary.f32(i32 36, float %5100, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5105 = fsub fast float 1.000000e+00, %5103
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %5106, %5089
  %5108 = fmul fast float %5106, %5090
  %5109 = fmul fast float %5106, %5091
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5113 = fmul fast float %5103, %5089
  %5114 = fmul fast float %5103, %5090
  %5115 = fmul fast float %5103, %5091
  %5116 = fadd fast float %5113, %5104
  %5117 = fadd fast float %5114, %5104
  %5118 = fadd fast float %5115, %5104
  %5119 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5120 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = extractvalue %dx.types.CBufRet.i32 %5122, 2
  %5125 = add i32 %5124, 0
  %5126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5127 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5126, %dx.types.Handle %74, float %5037, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float %5000, float %5001, float undef, float %5004, float %5005, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.ResRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.ResRet.f32 %5127, 2
  %5131 = extractvalue %dx.types.ResRet.f32 %5127, 3
  %5132 = and i32 %5123, 255
  %5133 = uitofp i32 %5132 to float
  %5134 = lshr i32 %5123, 8
  %5135 = and i32 %5134, 255
  %5136 = uitofp i32 %5135 to float
  %5137 = lshr i32 %5123, 16
  %5138 = and i32 %5137, 255
  %5139 = uitofp i32 %5138 to float
  %5140 = fmul fast float %5139, 0x3F70101000000000
  %5141 = fmul fast float %5128, %5133
  %5142 = fadd fast float %5141, %5136
  %5143 = fmul fast float %5142, 0x3F70101000000000
  %5144 = fadd fast float %5129, -5.000000e-01
  %5145 = fadd fast float %5131, -5.000000e-01
  %5146 = fmul fast float %5144, %5140
  %5147 = fmul fast float %5145, %5140
  %5148 = fadd fast float %5146, 5.000000e-01
  %5149 = fadd fast float %5147, 5.000000e-01
  %5150 = fmul fast float %5148, 2.000000e+00
  %5151 = fadd fast float %5150, -1.000000e+00
  %5152 = fmul fast float %5149, 2.000000e+00
  %5153 = fadd fast float %5152, -1.000000e+00
  %5154 = fadd fast float %5151, %5153
  %5155 = fmul fast float %5154, 5.000000e-01
  %5156 = fsub fast float %5151, %5153
  %5157 = fmul fast float %5156, 5.000000e-01
  %5158 = call float @dx.op.unary.f32(i32 6, float %5155)  ; FAbs(value)
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = call float @dx.op.unary.f32(i32 6, float %5157)  ; FAbs(value)
  %5161 = fsub fast float %5159, %5160
  %5162 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5157, float %5161, float %5155, float %5157, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = call float @dx.op.unary.f32(i32 25, float %5162)  ; Rsqrt(value)
  %5164 = fmul fast float %5155, %5163
  %5165 = fmul fast float %5157, %5163
  %5166 = select i1 %4993, i32 %4983, i32 %4984
  %5167 = select i1 %4991, i32 %4982, i32 %5166
  %5168 = sitofp i32 %5167 to float
  %5169 = fmul fast float %5161, %5168
  %5170 = fmul fast float %5169, %5163
  %5171 = select i1 %4993, float %5170, float %5165
  %5172 = select i1 %4993, float %5165, float %5170
  %5173 = select i1 %4991, float %5170, float %5164
  %5174 = select i1 %4991, float %5165, float %5171
  %5175 = select i1 %4991, float %5164, float %5172
  %5176 = fsub fast float %5110, %4937
  %5177 = fsub fast float %5111, %4938
  %5178 = fsub fast float %5112, %4939
  %5179 = fmul fast float %5176, %5082
  %5180 = fmul fast float %5177, %5082
  %5181 = fmul fast float %5178, %5082
  %5182 = fadd fast float %5179, %4937
  %5183 = fadd fast float %5180, %4938
  %5184 = fadd fast float %5181, %4939
  %5185 = fsub fast float %5119, %4934
  %5186 = fsub fast float %5120, %4935
  %5187 = fsub fast float %5121, %4936
  %5188 = fmul fast float %5185, %5082
  %5189 = fmul fast float %5186, %5082
  %5190 = fmul fast float %5187, %5082
  %5191 = fadd fast float %5188, %4934
  %5192 = fadd fast float %5189, %4935
  %5193 = fadd fast float %5190, %4936
  %5194 = fadd fast float %5173, %4940
  %5195 = fadd fast float %5174, %4941
  %5196 = fadd fast float %5175, %4942
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 25, float %5197)  ; Rsqrt(value)
  %5199 = fmul fast float %5194, %5198
  %5200 = fmul fast float %5195, %5198
  %5201 = fmul fast float %5196, %5198
  %5202 = fsub fast float %5199, %4940
  %5203 = fsub fast float %5200, %4941
  %5204 = fsub fast float %5201, %4942
  %5205 = fmul fast float %5202, %5082
  %5206 = fmul fast float %5203, %5082
  %5207 = fmul fast float %5204, %5082
  %5208 = fadd fast float %5205, %4940
  %5209 = fadd fast float %5206, %4941
  %5210 = fadd fast float %5207, %4942
  %5211 = call float @dx.op.binary.f32(i32 36, float %4944, float %5130)  ; FMin(a,b)
  %5212 = fsub fast float %5211, %4944
  %5213 = fmul fast float %5212, %5082
  %5214 = fadd fast float %5213, %4944
  %5215 = fsub fast float %5143, %4943
  %5216 = fmul fast float %5215, %5082
  %5217 = fadd fast float %5216, %4943
  br label %5218

; <label>:5218                                    ; preds = %5080, %5042, %4933, %4649
  %5219 = phi float [ %5191, %5080 ], [ %4934, %5042 ], [ %4934, %4933 ], [ %4244, %4649 ]
  %5220 = phi float [ %5192, %5080 ], [ %4935, %5042 ], [ %4935, %4933 ], [ %4245, %4649 ]
  %5221 = phi float [ %5193, %5080 ], [ %4936, %5042 ], [ %4936, %4933 ], [ %4246, %4649 ]
  %5222 = phi float [ %5182, %5080 ], [ %4937, %5042 ], [ %4937, %4933 ], [ %4259, %4649 ]
  %5223 = phi float [ %5183, %5080 ], [ %4938, %5042 ], [ %4938, %4933 ], [ %4260, %4649 ]
  %5224 = phi float [ %5184, %5080 ], [ %4939, %5042 ], [ %4939, %4933 ], [ %4261, %4649 ]
  %5225 = phi float [ %5208, %5080 ], [ %4940, %5042 ], [ %4940, %4933 ], [ %4208, %4649 ]
  %5226 = phi float [ %5209, %5080 ], [ %4941, %5042 ], [ %4941, %4933 ], [ %4209, %4649 ]
  %5227 = phi float [ %5210, %5080 ], [ %4942, %5042 ], [ %4942, %4933 ], [ %4210, %4649 ]
  %5228 = phi float [ %5217, %5080 ], [ %4943, %5042 ], [ %4943, %4933 ], [ %4247, %4649 ]
  %5229 = phi float [ %5214, %5080 ], [ %4944, %5042 ], [ %4944, %4933 ], [ %4220, %4649 ]
  %5230 = fcmp fast une float %4653, 0.000000e+00
  %5231 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = call float @dx.op.unary.f32(i32 25, float %5231)  ; Rsqrt(value)
  br i1 %5230, label %5240, label %5233

; <label>:5233                                    ; preds = %5218
  %5234 = fmul fast float %5232, %165
  %5235 = fmul fast float %5232, %166
  %5236 = fmul fast float %5232, %167
  %5237 = fsub fast float -0.000000e+00, %5234
  %5238 = fsub fast float -0.000000e+00, %5235
  %5239 = fsub fast float -0.000000e+00, %5236
  br label %5407

; <label>:5240                                    ; preds = %5218
  %5241 = fmul fast float %165, %5232
  %5242 = fsub fast float -0.000000e+00, %5241
  %5243 = fmul fast float %166, %5232
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = fmul fast float %167, %5232
  %5246 = fsub fast float -0.000000e+00, %5245
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5244, float %5246, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = fmul fast float %4653, 2.500000e+00
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %4653, 0x4013FFFFE0000000
  %5251 = fadd fast float %5250, 0xBFFFFFFFE0000000
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %4653, 0x4004000020000000
  %5254 = fadd fast float %5253, 0xBFF8000040000000
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fmul fast float %4226, 1.000000e+01
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fmul fast float %5257, 2.000000e+00
  %5259 = fsub fast float 3.000000e+00, %5258
  %5260 = fmul fast float %5257, %5257
  %5261 = fmul fast float %5260, %5259
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = fsub fast float 0x3FE3333340000000, %5228
  %5264 = fmul fast float %5263, 0x400AAAAAA0000000
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fmul fast float %5262, %5265
  %5267 = fmul fast float %5222, 0x3FEA2B8620000000
  %5268 = fmul fast float %5223, 0x3FEA2B8620000000
  %5269 = fmul fast float %5224, 0x3FEA2B8620000000
  %5270 = fadd fast float %5267, 0x3FC81DFBA0000000
  %5271 = fmul fast float %5270, %5222
  %5272 = fadd fast float %5271, 0x3F910E6020000000
  %5273 = fadd fast float %5268, 0x3FC81DFBA0000000
  %5274 = fmul fast float %5273, %5223
  %5275 = fadd fast float %5274, 0x3F910E6020000000
  %5276 = fadd fast float %5269, 0x3FC81DFBA0000000
  %5277 = fmul fast float %5276, %5224
  %5278 = fadd fast float %5277, 0x3F910E6020000000
  %5279 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5280 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5281 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5282 = fsub fast float %5279, %5222
  %5283 = fsub fast float %5280, %5223
  %5284 = fsub fast float %5281, %5224
  %5285 = fmul fast float %5282, %5249
  %5286 = fmul fast float %5285, %5266
  %5287 = fmul fast float %5283, %5249
  %5288 = fmul fast float %5287, %5266
  %5289 = fmul fast float %5284, %5249
  %5290 = fmul fast float %5289, %5266
  %5291 = fadd fast float %5286, %5222
  %5292 = fadd fast float %5288, %5223
  %5293 = fadd fast float %5290, %5224
  %5294 = fmul fast float %5229, %5229
  %5295 = fmul fast float %5294, %5294
  %5296 = fadd fast float %5252, 1.000000e+00
  %5297 = fsub fast float %5296, %5266
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fsub fast float 1.000000e+00, %5295
  %5302 = call float @dx.op.binary.f32(i32 36, float %5298, float %5301)  ; FMin(a,b)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5304 = call float @dx.op.binary.f32(i32 35, float %5302, float %5303)  ; FMax(a,b)
  %5305 = fadd fast float %5300, 0xBFE4CCCCC0000000
  %5306 = fmul fast float %5305, 0x4006DB6DA0000000
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %5307, 2.000000e+00
  %5309 = fsub fast float 3.000000e+00, %5308
  %5310 = bitcast float %5219 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = bitcast float %5220 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = bitcast float %5221 to i32
  %5329 = ashr i32 %5328, 1
  %5330 = add nsw i32 %5329, 532487669
  %5331 = bitcast i32 %5330 to float
  %5332 = fsub fast float 1.000000e+00, %5331
  %5333 = bitcast float %5332 to i32
  %5334 = sub nsw i32 2129859010, %5333
  %5335 = bitcast i32 %5334 to float
  %5336 = fmul fast float %5335, 2.000000e+00
  %5337 = fsub fast float 0x4002A9FBE0000000, %5318
  %5338 = fadd fast float %5318, 0x3FD54FDF00000000
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %5342, %5342
  %5344 = fsub fast float 0x4002A9FBE0000000, %5327
  %5345 = fadd fast float %5327, 0x3FD54FDF00000000
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, %5344
  %5350 = fmul fast float %5349, %5349
  %5351 = fsub fast float 0x4002A9FBE0000000, %5336
  %5352 = fadd fast float %5336, 0x3FD54FDF00000000
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5355, %5351
  %5357 = fmul fast float %5356, %5356
  %5358 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5343)  ; FMax(a,b)
  %5359 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5350)  ; FMax(a,b)
  %5360 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5357)  ; FMax(a,b)
  %5361 = fsub fast float 1.000000e+00, %5247
  %5362 = fadd fast float %5361, %5262
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fsub fast float 1.000000e+00, %4635
  %5365 = fmul fast float %5304, %5364
  %5366 = fmul fast float %5307, %5307
  %5367 = fmul fast float %5366, %5365
  %5368 = fmul fast float %5367, %5309
  %5369 = fmul fast float %5364, 0xBFE99999A0000000
  %5370 = fmul fast float %5369, %5249
  %5371 = fmul fast float %5370, %5266
  %5372 = fadd fast float %5371, 1.000000e+00
  %5373 = fadd fast float %5228, -1.000000e+00
  %5374 = fmul fast float %5372, %5373
  %5375 = fadd fast float %5374, 1.000000e+00
  %5376 = fsub fast float %5358, %5219
  %5377 = fsub fast float %5359, %5220
  %5378 = fsub fast float %5360, %5221
  %5379 = fmul fast float %5368, %5376
  %5380 = fmul fast float %5368, %5377
  %5381 = fmul fast float %5368, %5378
  %5382 = fadd fast float %5379, %5219
  %5383 = fadd fast float %5380, %5220
  %5384 = fadd fast float %5381, %5221
  %5385 = fsub fast float %85, %5225
  %5386 = fsub fast float %86, %5226
  %5387 = fsub fast float %87, %5227
  %5388 = fmul fast float %5368, %5385
  %5389 = fmul fast float %5368, %5386
  %5390 = fmul fast float %5368, %5387
  %5391 = fadd fast float %5388, %5225
  %5392 = fadd fast float %5389, %5226
  %5393 = fadd fast float %5390, %5227
  %5394 = fmul fast float %5368, %5363
  %5395 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = fmul fast float %5394, %5396
  %5398 = fadd fast float %5397, %5395
  %5399 = fsub fast float 1.000000e+00, %5229
  %5400 = fmul fast float %5368, %5399
  %5401 = fadd fast float %5400, %5229
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %5391, float %5392, float %5393)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.unary.f32(i32 25, float %5402)  ; Rsqrt(value)
  %5404 = fmul fast float %5391, %5403
  %5405 = fmul fast float %5392, %5403
  %5406 = fmul fast float %5393, %5403
  br label %5407

; <label>:5407                                    ; preds = %5240, %5233
  %5408 = phi float [ %5239, %5233 ], [ %5246, %5240 ]
  %5409 = phi float [ %5238, %5233 ], [ %5244, %5240 ]
  %5410 = phi float [ %5237, %5233 ], [ %5242, %5240 ]
  %5411 = phi float [ %5236, %5233 ], [ %5245, %5240 ]
  %5412 = phi float [ %5235, %5233 ], [ %5243, %5240 ]
  %5413 = phi float [ %5234, %5233 ], [ %5241, %5240 ]
  %5414 = phi float [ %5219, %5233 ], [ %5382, %5240 ]
  %5415 = phi float [ %5220, %5233 ], [ %5383, %5240 ]
  %5416 = phi float [ %5221, %5233 ], [ %5384, %5240 ]
  %5417 = phi float [ %5222, %5233 ], [ %5291, %5240 ]
  %5418 = phi float [ %5223, %5233 ], [ %5292, %5240 ]
  %5419 = phi float [ %5224, %5233 ], [ %5293, %5240 ]
  %5420 = phi float [ %5225, %5233 ], [ %5404, %5240 ]
  %5421 = phi float [ %5226, %5233 ], [ %5405, %5240 ]
  %5422 = phi float [ %5227, %5233 ], [ %5406, %5240 ]
  %5423 = phi float [ %5228, %5233 ], [ %5398, %5240 ]
  %5424 = phi float [ %5229, %5233 ], [ %5401, %5240 ]
  %5425 = select i1 %204, float 0.000000e+00, float %5416
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5410, float %5409, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5412, float %5411, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = fmul fast float %5428, 2.000000e+00
  %5430 = fmul fast float %5429, %5420
  %5431 = fmul fast float %5429, %5421
  %5432 = fmul fast float %5429, %5422
  %5433 = fsub fast float %5413, %5430
  %5434 = fsub fast float %5412, %5431
  %5435 = fsub fast float %5411, %5432
  %5436 = call float @dx.op.binary.f32(i32 36, float %5424, float 1.000000e+00)  ; FMin(a,b)
  %5437 = fsub fast float 1.000000e+00, %5424
  %5438 = bitcast float %5437 to i32
  %5439 = sub nsw i32 2129859010, %5438
  %5440 = fsub fast float 1.000000e+00, %55
  %5441 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.binary.f32(i32 35, float %5441, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5443 = fdiv fast float %5440, %5442
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = fmul fast float %5445, 5.000000e-01
  %5447 = fadd fast float %5446, 5.000000e-01
  %5448 = fmul fast float %5447, %55
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5450, %5443
  %5452 = fadd fast float %5448, %5451
  %5453 = fsub fast float 5.000000e-01, %5446
  %5454 = fmul fast float %5453, %5417
  %5455 = fmul fast float %5453, %5418
  %5456 = fmul fast float %5453, %5419
  %5457 = fadd fast float %5452, %5454
  %5458 = fadd fast float %5452, %5455
  %5459 = fadd fast float %5452, %5456
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %5435, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = fmul fast float %5461, 5.000000e-01
  %5463 = fadd fast float %5462, 5.000000e-01
  %5464 = fmul fast float %5463, %55
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %5435, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = fmul fast float %5466, %5443
  %5468 = fadd fast float %5464, %5467
  %5469 = fsub fast float 5.000000e-01, %5462
  %5470 = fmul fast float %5469, %5417
  %5471 = fmul fast float %5469, %5418
  %5472 = fmul fast float %5469, %5419
  %5473 = fadd fast float %5468, %5470
  %5474 = fadd fast float %5468, %5471
  %5475 = fadd fast float %5468, %5472
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = call float @dx.op.binary.f32(i32 36, float %5417, float %5477)  ; FMin(a,b)
  %5479 = fsub fast float 1.000000e+00, %5436
  %5480 = fmul fast float %5478, %5479
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = bitcast float %5481 to i32
  %5483 = sub nsw i32 2129859010, %5482
  %5484 = bitcast i32 %5483 to float
  %5485 = call float @dx.op.binary.f32(i32 36, float %5418, float %5477)  ; FMin(a,b)
  %5486 = fmul fast float %5485, %5479
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = bitcast float %5487 to i32
  %5489 = sub nsw i32 2129859010, %5488
  %5490 = bitcast i32 %5489 to float
  %5491 = call float @dx.op.binary.f32(i32 36, float %5419, float %5477)  ; FMin(a,b)
  %5492 = fmul fast float %5491, %5479
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5436, %56
  %5498 = fmul fast float %5497, %5457
  %5499 = fmul fast float %5498, %5484
  %5500 = fmul fast float %5436, %57
  %5501 = fmul fast float %5500, %5458
  %5502 = fmul fast float %5501, %5490
  %5503 = fmul fast float %5436, %58
  %5504 = fmul fast float %5503, %5459
  %5505 = fmul fast float %5504, %5496
  %5506 = call float @dx.op.binary.f32(i32 36, float %5414, float %5477)  ; FMin(a,b)
  %5507 = fmul fast float %5506, %5479
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = bitcast float %5508 to i32
  %5510 = sub nsw i32 2129859010, %5509
  %5511 = bitcast i32 %5510 to float
  %5512 = call float @dx.op.binary.f32(i32 36, float %5415, float %5477)  ; FMin(a,b)
  %5513 = fmul fast float %5512, %5479
  %5514 = fsub fast float 1.000000e+00, %5513
  %5515 = bitcast float %5514 to i32
  %5516 = sub nsw i32 2129859010, %5515
  %5517 = bitcast i32 %5516 to float
  %5518 = call float @dx.op.binary.f32(i32 36, float %5425, float %5477)  ; FMin(a,b)
  %5519 = fmul fast float %5518, %5479
  %5520 = fsub fast float 1.000000e+00, %5519
  %5521 = bitcast float %5520 to i32
  %5522 = sub nsw i32 2129859010, %5521
  %5523 = bitcast i32 %5522 to float
  %5524 = fmul fast float %5497, %5473
  %5525 = fmul fast float %5524, %5511
  %5526 = fmul fast float %5500, %5474
  %5527 = fmul fast float %5526, %5517
  %5528 = fmul fast float %5503, %5475
  %5529 = fmul fast float %5528, %5523
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5502, float %5505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = select i1 %204, float 0.000000e+00, float %5499
  %5532 = select i1 %204, float %5530, float %5502
  %5533 = select i1 %204, float 0.000000e+00, float %5505
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5525, float %5527, float %5529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = select i1 %204, float 0.000000e+00, float %5525
  %5536 = select i1 %204, float %5534, float %5527
  %5537 = select i1 %204, float 0.000000e+00, float %5529
  %5538 = fmul fast float %5427, 9.843750e-01
  %5539 = fmul fast float %5423, 9.843750e-01
  %5540 = fadd fast float %5538, 7.812500e-03
  %5541 = fadd fast float %5539, 7.812500e-03
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5540, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 3
  %5545 = fmul fast float %5543, %5414
  %5546 = fmul fast float %5543, %5415
  %5547 = fmul fast float %5543, %5425
  %5548 = fadd fast float %5545, %5544
  %5549 = fadd fast float %5546, %5544
  %5550 = fadd fast float %5547, %5544
  %5551 = fcmp fast ogt float %4221, 0.000000e+00
  br i1 %5551, label %5552, label %5578

; <label>:5552                                    ; preds = %5407
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4221, float %5427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5557 = fadd fast float %5554, -5.000000e-01
  %5558 = fadd fast float %5555, -5.000000e-01
  %5559 = fadd fast float %5556, -5.000000e-01
  %5560 = fsub fast float 1.000000e+00, %5414
  %5561 = fsub fast float 1.000000e+00, %5415
  %5562 = fsub fast float 1.000000e+00, %5425
  %5563 = fmul fast float %5414, 4.000000e+00
  %5564 = fmul fast float %5563, %5560
  %5565 = fmul fast float %5564, %5557
  %5566 = fmul fast float %5415, 4.000000e+00
  %5567 = fmul fast float %5566, %5561
  %5568 = fmul fast float %5567, %5558
  %5569 = fmul fast float %5425, 4.000000e+00
  %5570 = fmul fast float %5569, %5562
  %5571 = fmul fast float %5570, %5559
  %5572 = fadd fast float %5565, %5548
  %5573 = fadd fast float %5568, %5549
  %5574 = fadd fast float %5571, %5550
  %5575 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  br label %5578

; <label>:5578                                    ; preds = %5552, %5407
  %5579 = phi float [ %5575, %5552 ], [ %5548, %5407 ]
  %5580 = phi float [ %5576, %5552 ], [ %5549, %5407 ]
  %5581 = phi float [ %5577, %5552 ], [ %5550, %5407 ]
  %5582 = call float @dx.op.binary.f32(i32 35, float %5580, float %5581)  ; FMax(a,b)
  %5583 = call float @dx.op.binary.f32(i32 35, float %5579, float %5582)  ; FMax(a,b)
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5584, %5531
  %5586 = fmul fast float %5584, %5532
  %5587 = fmul fast float %5584, %5533
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %5419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = fcmp fast ogt float %5588, 0x3E7FF19E20000000
  %5590 = fdiv fast float 1.000000e+00, %5588
  %5591 = select i1 %5589, float %5590, float 0.000000e+00
  %5592 = fmul fast float %5591, %5417
  %5593 = fmul fast float %5591, %5418
  %5594 = fmul fast float %5591, %5419
  %5595 = fadd fast float %5592, -1.000000e+00
  %5596 = fadd fast float %5593, -1.000000e+00
  %5597 = fadd fast float %5594, -1.000000e+00
  %5598 = fmul fast float %5595, 5.000000e-01
  %5599 = fmul fast float %5596, 5.000000e-01
  %5600 = fmul fast float %5597, 5.000000e-01
  %5601 = fadd fast float %5598, 1.000000e+00
  %5602 = fadd fast float %5599, 1.000000e+00
  %5603 = fadd fast float %5600, 1.000000e+00
  %5604 = fmul fast float %5579, %5535
  %5605 = fmul fast float %5580, %5536
  %5606 = fmul fast float %5581, %5537
  %5607 = fsub fast float 1.000000e+00, %5427
  %5608 = bitcast float %5607 to i32
  %5609 = sitofp i32 %5608 to float
  %5610 = fmul fast float %5609, 5.000000e+00
  %5611 = fadd fast float %5610, 0xC1EFBF8940000000
  %5612 = fptosi float %5611 to i32
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, %4222
  %5615 = fmul fast float %5531, %5614
  %5616 = fmul fast float %5615, %5584
  %5617 = fmul fast float %5616, %5601
  %5618 = fmul fast float %5532, %5614
  %5619 = fmul fast float %5618, %5584
  %5620 = fmul fast float %5619, %5602
  %5621 = fmul fast float %5533, %5614
  %5622 = fmul fast float %5621, %5584
  %5623 = fmul fast float %5622, %5603
  %5624 = fmul fast float %5585, %4218
  %5625 = fmul fast float %5586, %4218
  %5626 = fmul fast float %5587, %4218
  %5627 = fadd fast float %5604, %4214
  %5628 = fadd fast float %5627, %5617
  %5629 = fmul fast float %5628, %4218
  %5630 = fadd fast float %5605, %4215
  %5631 = fadd fast float %5630, %5620
  %5632 = fmul fast float %5631, %4218
  %5633 = fadd fast float %5606, %4216
  %5634 = fadd fast float %5633, %5623
  %5635 = fmul fast float %5634, %4218
  %5636 = bitcast i32 %5439 to float
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5639 = fcmp fast oeq float %5638, 0.000000e+00
  br i1 %5639, label %5867, label %5640

; <label>:5640                                    ; preds = %5578
  %5641 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5642 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5643 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.CBufRet.f32 %5648, 1
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = select i1 %204, float %5649, float %5645
  %5653 = select i1 %204, float %5651, float %5646
  %5654 = select i1 %204, float %5650, float %5647
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5657 = fcmp fast une float %5656, 0.000000e+00
  br i1 %5657, label %5658, label %5675

; <label>:5658                                    ; preds = %5640
  %5659 = fptoui float %78 to i32
  %5660 = fptoui float %79 to i32
  %5661 = lshr i32 %5659, 4
  %5662 = lshr i32 %5660, 4
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = fptoui float %5664 to i32
  %5666 = add i32 %5665, 15
  %5667 = lshr i32 %5666, 4
  %5668 = mul i32 %5667, %5662
  %5669 = add i32 %5668, %5661
  %5670 = shl i32 %5669, 3
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5670, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = and i32 %5672, -268435456
  %5674 = icmp eq i32 %5673, -1342177280
  br i1 %5674, label %5685, label %5675

; <label>:5675                                    ; preds = %5658, %5640
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 2
  %5678 = extractvalue %dx.types.CBufRet.f32 %5676, 3
  %5679 = fmul fast float %5677, %78
  %5680 = fmul fast float %5678, %79
  %5681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5679, float %5680, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5682 = extractvalue %dx.types.ResRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.f32 %5681, 1
  %5684 = extractvalue %dx.types.ResRet.f32 %5681, 2
  br label %5685

; <label>:5685                                    ; preds = %5675, %5658
  %5686 = phi float [ %5682, %5675 ], [ 0.000000e+00, %5658 ]
  %5687 = phi float [ %5683, %5675 ], [ 0.000000e+00, %5658 ]
  %5688 = phi float [ %5684, %5675 ], [ 0.000000e+00, %5658 ]
  %5689 = call float @dx.op.binary.f32(i32 36, float %5687, float %5688)  ; FMin(a,b)
  %5690 = call float @dx.op.binary.f32(i32 36, float %5686, float %5689)  ; FMin(a,b)
  %5691 = fcmp fast ogt float %5690, 0.000000e+00
  br i1 %5691, label %5692, label %5867, !dx.controlflow.hints !77

; <label>:5692                                    ; preds = %5685
  %5693 = fmul fast float %5686, %5652
  %5694 = fmul fast float %5687, %5653
  %5695 = fmul fast float %5688, %5654
  %5696 = fsub fast float %5641, %5413
  %5697 = fsub fast float %5642, %5412
  %5698 = fsub fast float %5643, %5411
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %5698, float %5696, float %5697, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.unary.f32(i32 25, float %5699)  ; Rsqrt(value)
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %5700, %5697
  %5703 = fmul fast float %5700, %5698
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5642, float %5643, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5409, float %5408, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5707 = fmul fast float %5706, %5706
  %5708 = fmul fast float %5707, %5636
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fmul fast float %5709, %5706
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = fmul fast float %5711, %5711
  %5713 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5714 = fsub fast float 1.000000e+00, %5423
  %5715 = call float @dx.op.binary.f32(i32 35, float %5714, float 0x3F847AE140000000)  ; FMax(a,b)
  %5716 = fmul fast float %5715, %5715
  %5717 = fmul fast float %5716, %5716
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5427, %5427
  %5720 = fmul fast float %5719, %5718
  %5721 = fadd fast float %5720, %5717
  %5722 = bitcast float %5721 to i32
  %5723 = ashr i32 %5722, 1
  %5724 = add nsw i32 %5723, 532487669
  %5725 = bitcast i32 %5724 to float
  %5726 = fadd fast float %5725, %5427
  %5727 = fmul fast float %5717, %5712
  %5728 = fsub fast float 1.000000e+00, %5712
  %5729 = fadd fast float %5728, %5727
  %5730 = fmul fast float %5713, %5713
  %5731 = fmul fast float %5730, %5718
  %5732 = fadd fast float %5731, %5717
  %5733 = bitcast float %5732 to i32
  %5734 = ashr i32 %5733, 1
  %5735 = add nsw i32 %5734, 532487669
  %5736 = bitcast i32 %5735 to float
  %5737 = fadd fast float %5736, %5713
  %5738 = fmul fast float %5729, %5729
  %5739 = fmul fast float %5738, %5726
  %5740 = fmul fast float %5739, %5737
  %5741 = fdiv fast float 0x3FF0A00000000000, %5740
  %5742 = fmul fast float %5741, %5717
  %5743 = call float @dx.op.unary.f32(i32 6, float %5705)  ; FAbs(value)
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = bitcast float %5744 to i32
  %5746 = sitofp i32 %5745 to float
  %5747 = fmul fast float %5746, 5.000000e+00
  %5748 = fadd fast float %5747, 0xC1EFBF8940000000
  %5749 = fptosi float %5748 to i32
  %5750 = bitcast i32 %5749 to float
  %5751 = fsub fast float 1.000000e+00, %5414
  %5752 = fsub fast float 1.000000e+00, %5415
  %5753 = fsub fast float 1.000000e+00, %5425
  %5754 = fmul fast float %5750, %5751
  %5755 = fmul fast float %5750, %5752
  %5756 = fmul fast float %5750, %5753
  %5757 = fadd fast float %5754, %5414
  %5758 = fadd fast float %5755, %5415
  %5759 = fadd fast float %5756, %5425
  br i1 %5551, label %5760, label %5783

; <label>:5760                                    ; preds = %5692
  %5761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4221, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5762 = extractvalue %dx.types.ResRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.ResRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.ResRet.f32 %5761, 2
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fadd fast float %5763, -5.000000e-01
  %5767 = fadd fast float %5764, -5.000000e-01
  %5768 = fmul fast float %5414, 4.000000e+00
  %5769 = fmul fast float %5768, %5751
  %5770 = fmul fast float %5769, %5765
  %5771 = fmul fast float %5415, 4.000000e+00
  %5772 = fmul fast float %5771, %5752
  %5773 = fmul fast float %5772, %5766
  %5774 = fmul fast float %5425, 4.000000e+00
  %5775 = fmul fast float %5774, %5753
  %5776 = fmul fast float %5775, %5767
  %5777 = fadd fast float %5770, %5757
  %5778 = fadd fast float %5773, %5758
  %5779 = fadd fast float %5776, %5759
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5781 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5782 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  br label %5783

; <label>:5783                                    ; preds = %5760, %5692
  %5784 = phi float [ %5780, %5760 ], [ %5757, %5692 ]
  %5785 = phi float [ %5781, %5760 ], [ %5758, %5692 ]
  %5786 = phi float [ %5782, %5760 ], [ %5759, %5692 ]
  %5787 = fmul fast float %5704, 9.843750e-01
  %5788 = fadd fast float %5787, 7.812500e-03
  %5789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %5788, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 3
  %5792 = fmul fast float %5790, %5414
  %5793 = fmul fast float %5790, %5415
  %5794 = fmul fast float %5790, %5425
  %5795 = fadd fast float %5792, %5791
  %5796 = fadd fast float %5793, %5791
  %5797 = fadd fast float %5794, %5791
  br i1 %5551, label %5798, label %5821

; <label>:5798                                    ; preds = %5783
  %5799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4221, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = fadd fast float %5800, -5.000000e-01
  %5804 = fadd fast float %5801, -5.000000e-01
  %5805 = fadd fast float %5802, -5.000000e-01
  %5806 = fmul fast float %5414, 4.000000e+00
  %5807 = fmul fast float %5806, %5751
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5415, 4.000000e+00
  %5810 = fmul fast float %5809, %5752
  %5811 = fmul fast float %5810, %5804
  %5812 = fmul fast float %5425, 4.000000e+00
  %5813 = fmul fast float %5812, %5753
  %5814 = fmul fast float %5813, %5805
  %5815 = fadd fast float %5808, %5795
  %5816 = fadd fast float %5811, %5796
  %5817 = fadd fast float %5814, %5797
  %5818 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5819 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5820 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  br label %5821

; <label>:5821                                    ; preds = %5798, %5783
  %5822 = phi float [ %5818, %5798 ], [ %5795, %5783 ]
  %5823 = phi float [ %5819, %5798 ], [ %5796, %5783 ]
  %5824 = phi float [ %5820, %5798 ], [ %5797, %5783 ]
  %5825 = call float @dx.op.binary.f32(i32 35, float %5823, float %5824)  ; FMax(a,b)
  %5826 = call float @dx.op.binary.f32(i32 35, float %5822, float %5825)  ; FMax(a,b)
  %5827 = fsub fast float 1.000000e+00, %5826
  %5828 = fmul fast float %5784, %5742
  %5829 = fmul fast float %5785, %5742
  %5830 = fmul fast float %5786, %5742
  %5831 = fsub fast float 1.000000e+00, %5705
  %5832 = bitcast float %5831 to i32
  %5833 = sitofp i32 %5832 to float
  %5834 = fmul fast float %5833, 5.000000e+00
  %5835 = fadd fast float %5834, 0xC1EFBF8940000000
  %5836 = fptosi float %5835 to i32
  %5837 = bitcast i32 %5836 to float
  %5838 = fmul fast float %5837, %4222
  %5839 = fmul fast float %5827, %5838
  %5840 = fmul fast float %5839, %5601
  %5841 = fmul fast float %5839, %5602
  %5842 = fmul fast float %5839, %5603
  %5843 = fadd fast float %5840, %5828
  %5844 = fadd fast float %5841, %5829
  %5845 = fadd fast float %5842, %5830
  %5846 = fmul fast float %5710, %5693
  %5847 = fmul fast float %5846, %5827
  %5848 = fmul fast float %5710, %5694
  %5849 = fmul fast float %5848, %5827
  %5850 = fmul fast float %5710, %5695
  %5851 = fmul fast float %5850, %5827
  %5852 = fmul fast float %5846, %5843
  %5853 = fmul fast float %5848, %5844
  %5854 = fmul fast float %5850, %5845
  %5855 = fadd fast float %5847, %5585
  %5856 = fmul fast float %5855, %4218
  %5857 = fadd fast float %5849, %5586
  %5858 = fmul fast float %5857, %4218
  %5859 = fadd fast float %5851, %5587
  %5860 = fmul fast float %5859, %4218
  %5861 = fadd fast float %5852, %5628
  %5862 = fmul fast float %5861, %4218
  %5863 = fadd fast float %5853, %5631
  %5864 = fmul fast float %5863, %4218
  %5865 = fadd fast float %5854, %5634
  %5866 = fmul fast float %5865, %4218
  br label %5867

; <label>:5867                                    ; preds = %5821, %5685, %5578
  %5868 = phi float [ %5629, %5578 ], [ %5629, %5685 ], [ %5862, %5821 ]
  %5869 = phi float [ %5632, %5578 ], [ %5632, %5685 ], [ %5864, %5821 ]
  %5870 = phi float [ %5635, %5578 ], [ %5635, %5685 ], [ %5866, %5821 ]
  %5871 = phi float [ %5624, %5578 ], [ %5624, %5685 ], [ %5856, %5821 ]
  %5872 = phi float [ %5625, %5578 ], [ %5625, %5685 ], [ %5858, %5821 ]
  %5873 = phi float [ %5626, %5578 ], [ %5626, %5685 ], [ %5860, %5821 ]
  %5874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.i32 %5874, 0
  %5876 = icmp eq i32 %5875, 0
  br i1 %5876, label %6311, label %5877

; <label>:5877                                    ; preds = %5867
  %5878 = fptoui float %78 to i32
  %5879 = fptoui float %79 to i32
  %5880 = lshr i32 %5878, 4
  %5881 = lshr i32 %5879, 4
  %5882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.i32 %5882, 0
  %5884 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5881, i32 %5883, i32 %5880)  ; UMad(a,b,c)
  %5885 = add nsw i32 %5875, -1
  %5886 = call i32 @dx.op.binary.i32(i32 37, i32 %5885, i32 0)  ; IMax(a,b)
  %5887 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5888 = fptoui float %5887 to i32
  %5889 = lshr i32 %5888, 5
  %5890 = call i32 @dx.op.binary.i32(i32 40, i32 %5889, i32 8191)  ; UMin(a,b)
  %5891 = shl i32 %5890, 2
  %5892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5891, i32 undef)  ; BufferLoad(srv,index,wot)
  %5893 = extractvalue %dx.types.ResRet.i32 %5892, 0
  %5894 = lshr i32 %5893, 16
  %5895 = and i32 %5893, 65535
  %5896 = lshr i32 %5893, 21
  %5897 = lshr i32 %5895, 5
  %5898 = call i32 @dx.op.binary.i32(i32 40, i32 %5897, i32 %5886)  ; UMin(a,b)
  %5899 = icmp ugt i32 %5896, %5898
  br i1 %5899, label %6311, label %5900

; <label>:5900                                    ; preds = %5877
  br label %5901

; <label>:5901                                    ; preds = %6301, %5900
  %5902 = phi i32 [ %6308, %6301 ], [ %5896, %5900 ]
  %5903 = phi float [ %6302, %6301 ], [ %5868, %5900 ]
  %5904 = phi float [ %6303, %6301 ], [ %5869, %5900 ]
  %5905 = phi float [ %6304, %6301 ], [ %5870, %5900 ]
  %5906 = phi float [ %6305, %6301 ], [ %5871, %5900 ]
  %5907 = phi float [ %6306, %6301 ], [ %5872, %5900 ]
  %5908 = phi float [ %6307, %6301 ], [ %5873, %5900 ]
  %5909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.i32 %5909, 0
  %5911 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5884, i32 %5910, i32 %5902)  ; UMad(a,b,c)
  %5912 = shl i32 %5911, 2
  %5913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5912, i32 undef)  ; BufferLoad(srv,index,wot)
  %5914 = extractvalue %dx.types.ResRet.i32 %5913, 0
  %5915 = shl i32 %5902, 5
  %5916 = sub nsw i32 %5894, %5915
  %5917 = call i32 @dx.op.binary.i32(i32 37, i32 %5916, i32 0)  ; IMax(a,b)
  %5918 = call i32 @dx.op.binary.i32(i32 38, i32 %5917, i32 31)  ; IMin(a,b)
  %5919 = sub nsw i32 1, %5894
  %5920 = add nsw i32 %5919, %5895
  %5921 = call i32 @dx.op.binary.i32(i32 37, i32 %5920, i32 0)  ; IMax(a,b)
  %5922 = call i32 @dx.op.binary.i32(i32 38, i32 %5921, i32 32)  ; IMin(a,b)
  %5923 = and i32 %5922, 31
  %5924 = shl i32 -1, %5923
  %5925 = xor i32 %5924, -1
  %5926 = and i32 %5918, 31
  %5927 = shl i32 %5925, %5926
  %5928 = icmp eq i32 %5922, 32
  %5929 = select i1 %5928, i32 -1, i32 %5927
  %5930 = and i32 %5929, %5914
  %5931 = icmp eq i32 %5930, 0
  br i1 %5931, label %6301, label %5932

; <label>:5932                                    ; preds = %5901
  br label %5933

; <label>:5933                                    ; preds = %6013, %5932
  %5934 = phi i32 [ %5945, %6013 ], [ %5930, %5932 ]
  %5935 = phi float [ %6014, %6013 ], [ %5903, %5932 ]
  %5936 = phi float [ %6015, %6013 ], [ %5904, %5932 ]
  %5937 = phi float [ %6016, %6013 ], [ %5905, %5932 ]
  %5938 = phi float [ %6017, %6013 ], [ %5906, %5932 ]
  %5939 = phi float [ %6018, %6013 ], [ %5907, %5932 ]
  %5940 = phi float [ %6019, %6013 ], [ %5908, %5932 ]
  %5941 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5934)  ; FirstbitLo(value)
  %5942 = add i32 %5941, %5915
  %5943 = and i32 %5941, 31
  %5944 = shl i32 1, %5943
  %5945 = xor i32 %5944, %5934
  %5946 = mul i32 %5942, 112
  %5947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5946, i32 undef)  ; BufferLoad(srv,index,wot)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = or i32 %5946, 12
  %5952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = add i32 %5946, 44
  %5955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = add i32 %5946, 48
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = add i32 %5946, 80
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = select i1 %204, float %5964, float %5948
  %5968 = select i1 %204, float %5966, float %5949
  %5969 = select i1 %204, float %5965, float %5950
  %5970 = fsub fast float %5959, %165
  %5971 = fsub fast float %5960, %166
  %5972 = fsub fast float %5961, %167
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5971, float %5972, float %5970, float %5971, float %5972)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = call float @dx.op.unary.f32(i32 24, float %5973)  ; Sqrt(value)
  %5975 = fdiv fast float 1.000000e+00, %5974
  %5976 = fmul fast float %5975, %5970
  %5977 = fmul fast float %5975, %5971
  %5978 = fmul fast float %5975, %5972
  %5979 = fadd fast float %5974, %5953
  %5980 = fdiv fast float 1.000000e+00, %5979
  %5981 = fmul float %5956, %5980
  %5982 = fmul float %5981, %5981
  %5983 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5984 = and i32 %5944, %5930
  %5985 = icmp eq i32 %5984, 0
  br i1 %5985, label %6008, label %5986, !dx.controlflow.hints !78

; <label>:5986                                    ; preds = %5933
  %5987 = lshr i32 %5878, 5
  %5988 = lshr i32 %5879, 5
  %5989 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5987, i32 %5988, i32 %5942, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5990 = extractvalue %dx.types.ResRet.i32 %5989, 0
  %5991 = and i32 %5990, 3
  %5992 = icmp eq i32 %5991, 0
  %5993 = select i1 %5992, float 1.000000e+00, float 0.000000e+00
  %5994 = icmp eq i32 %5991, 3
  br i1 %5994, label %5995, label %6008

; <label>:5995                                    ; preds = %5986
  %5996 = lshr i32 %5990, 10
  %5997 = and i32 %5996, 8160
  %5998 = and i32 %5879, 31
  %5999 = or i32 %5997, %5998
  %6000 = lshr i32 %5990, 1
  %6001 = and i32 %6000, 16352
  %6002 = and i32 %5878, 31
  %6003 = or i32 %6001, %6002
  %6004 = lshr i32 %5990, 23
  %6005 = and i32 %6004, 255
  %6006 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %6003, i32 %5999, i32 %6005, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  br label %6008

; <label>:6008                                    ; preds = %5995, %5986, %5933
  %6009 = phi float [ %6007, %5995 ], [ %5993, %5986 ], [ 0.000000e+00, %5933 ]
  %6010 = call float @dx.op.binary.f32(i32 36, float %6009, float %6009)  ; FMin(a,b)
  %6011 = call float @dx.op.binary.f32(i32 36, float %6009, float %6010)  ; FMin(a,b)
  %6012 = fcmp fast ogt float %6011, 0.000000e+00
  br i1 %6012, label %6021, label %6013, !dx.controlflow.hints !79

; <label>:6013                                    ; preds = %6257, %6008
  %6014 = phi float [ %5935, %6008 ], [ %6297, %6257 ]
  %6015 = phi float [ %5936, %6008 ], [ %6298, %6257 ]
  %6016 = phi float [ %5937, %6008 ], [ %6299, %6257 ]
  %6017 = phi float [ %5938, %6008 ], [ %6291, %6257 ]
  %6018 = phi float [ %5939, %6008 ], [ %6292, %6257 ]
  %6019 = phi float [ %5940, %6008 ], [ %6293, %6257 ]
  %6020 = icmp eq i32 %5934, %5944
  br i1 %6020, label %6300, label %5933

; <label>:6021                                    ; preds = %6008
  %6022 = fmul fast float %6009, %5967
  %6023 = fmul fast float %6009, %5968
  %6024 = fmul fast float %6009, %5969
  %6025 = fsub fast float %5961, %4622
  %6026 = fcmp fast ogt float %6025, 0.000000e+00
  %6027 = fsub fast float %167, %4622
  %6028 = fcmp fast ogt float %6027, 0.000000e+00
  %6029 = xor i1 %6028, %6026
  %6030 = fsub fast float %4622, %5961
  %6031 = fmul fast float %6030, 2.000000e+00
  %6032 = fadd fast float %6031, %5961
  %6033 = select i1 %6029, float %5961, float %6032
  %6034 = fsub fast float %6033, %167
  %6035 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5971, float %6034, float %5970, float %5971, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = call float @dx.op.unary.f32(i32 25, float %6035)  ; Rsqrt(value)
  %6037 = fmul fast float %6036, %5970
  %6038 = fmul fast float %6036, %5971
  %6039 = fmul fast float %6036, %6034
  %6040 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6037, float %6038, float %6039)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fdiv fast float 1.000000e+00, %6041
  %6043 = fmul fast float %6042, %6040
  %6044 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6027, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = fcmp fast ogt float %6044, 0.000000e+00
  %6046 = fcmp fast olt float %6044, 0.000000e+00
  %6047 = zext i1 %6045 to i32
  %6048 = zext i1 %6046 to i32
  %6049 = sub nsw i32 %6047, %6048
  %6050 = sitofp i32 %6049 to float
  %6051 = fsub fast float %6033, %4622
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5970, float %5971, float %6051, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fcmp fast ogt float %6052, 0.000000e+00
  %6054 = fcmp fast olt float %6052, 0.000000e+00
  %6055 = zext i1 %6053 to i32
  %6056 = zext i1 %6054 to i32
  %6057 = sub nsw i32 %6055, %6056
  %6058 = sitofp i32 %6057 to float
  %6059 = fcmp fast une float %6050, %6058
  br i1 %6059, label %6060, label %6070

; <label>:6060                                    ; preds = %6021
  %6061 = fmul fast float %6043, %6039
  %6062 = fmul fast float %6043, %6038
  %6063 = fmul fast float %6043, %6037
  %6064 = fmul fast float %6063, %6063
  %6065 = fmul fast float %6062, %6062
  %6066 = fadd fast float %6064, %6065
  %6067 = fmul fast float %6061, %6061
  %6068 = fadd fast float %6066, %6067
  %6069 = call float @dx.op.unary.f32(i32 24, float %6068)  ; Sqrt(value)
  br label %6082

; <label>:6070                                    ; preds = %6021
  %6071 = icmp slt i32 %6049, 0
  br i1 %6071, label %6072, label %6082

; <label>:6072                                    ; preds = %6070
  %6073 = fsub fast float %165, %5959
  %6074 = fsub fast float %166, %5960
  %6075 = fsub fast float %167, %6033
  %6076 = fmul fast float %6073, %6073
  %6077 = fmul fast float %6074, %6074
  %6078 = fadd fast float %6076, %6077
  %6079 = fmul fast float %6075, %6075
  %6080 = fadd fast float %6078, %6079
  %6081 = call float @dx.op.unary.f32(i32 24, float %6080)  ; Sqrt(value)
  br label %6082

; <label>:6082                                    ; preds = %6072, %6070, %6060
  %6083 = phi float [ %6069, %6060 ], [ %6081, %6072 ], [ 0.000000e+00, %6070 ]
  %6084 = and i1 %6028, %6026
  %6085 = fsub fast float -0.000000e+00, %6083
  %6086 = select i1 %6084, float -0.000000e+00, float %6085
  %6087 = fmul fast float %4623, 0x3FF7154760000000
  %6088 = fmul fast float %6087, %6086
  %6089 = fmul fast float %4624, 0x3FF7154760000000
  %6090 = fmul fast float %6089, %6086
  %6091 = fmul fast float %4625, 0x3FF7154760000000
  %6092 = fmul fast float %6091, %6086
  %6093 = call float @dx.op.unary.f32(i32 21, float %6088)  ; Exp(value)
  %6094 = call float @dx.op.unary.f32(i32 21, float %6090)  ; Exp(value)
  %6095 = call float @dx.op.unary.f32(i32 21, float %6092)  ; Exp(value)
  %6096 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6099 = fmul fast float %6022, %6096
  %6100 = fmul fast float %6023, %6097
  %6101 = fmul fast float %6024, %6098
  %6102 = fsub fast float %5976, %5413
  %6103 = fsub fast float %5977, %5412
  %6104 = fsub fast float %5978, %5411
  %6105 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %6102, float %6103, float %6104)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = call float @dx.op.unary.f32(i32 25, float %6105)  ; Rsqrt(value)
  %6107 = fmul fast float %6106, %6102
  %6108 = fmul fast float %6106, %6103
  %6109 = fmul fast float %6106, %6104
  %6110 = call float @dx.op.dot3.f32(i32 55, float %5976, float %5977, float %5978, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5409, float %5408, float %6107, float %6108, float %6109)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6113 = fmul fast float %6112, %5983
  %6114 = fmul fast float %6112, %6112
  %6115 = fmul fast float %6114, %5636
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = fmul fast float %6113, %6116
  %6118 = bitcast float %5973 to i32
  %6119 = ashr i32 %6118, 1
  %6120 = sub nsw i32 1597463007, %6119
  %6121 = bitcast i32 %6120 to float
  %6122 = fmul fast float %6121, %5970
  %6123 = fmul fast float %6121, %5971
  %6124 = fmul fast float %6121, %5972
  %6125 = fsub fast float %6122, %5413
  %6126 = fsub fast float %6123, %5412
  %6127 = fsub fast float %6124, %5411
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6127, float %6125, float %6126, float %6127)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = call float @dx.op.unary.f32(i32 25, float %6128)  ; Rsqrt(value)
  %6130 = fmul fast float %6125, %6129
  %6131 = fmul fast float %6126, %6129
  %6132 = fmul fast float %6127, %6129
  %6133 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float %6130, float %6131, float %6132)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = fmul fast float %6133, %6133
  %6135 = call float @dx.op.unary.f32(i32 6, float %6110)  ; FAbs(value)
  %6136 = fsub fast float 1.000000e+00, %5423
  %6137 = call float @dx.op.binary.f32(i32 35, float %6136, float 0x3F847AE140000000)  ; FMax(a,b)
  %6138 = fmul fast float %6137, %6137
  %6139 = fmul fast float %6138, %6138
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %5427, %5427
  %6142 = fmul fast float %6141, %6140
  %6143 = fadd fast float %6142, %6139
  %6144 = bitcast float %6143 to i32
  %6145 = ashr i32 %6144, 1
  %6146 = add nsw i32 %6145, 532487669
  %6147 = bitcast i32 %6146 to float
  %6148 = fadd fast float %6147, %5427
  %6149 = fmul fast float %6139, %6134
  %6150 = fsub fast float 1.000000e+00, %6134
  %6151 = fadd fast float %6150, %6149
  %6152 = fmul fast float %6135, %6135
  %6153 = fmul fast float %6152, %6140
  %6154 = fadd fast float %6153, %6139
  %6155 = bitcast float %6154 to i32
  %6156 = ashr i32 %6155, 1
  %6157 = add nsw i32 %6156, 532487669
  %6158 = bitcast i32 %6157 to float
  %6159 = fadd fast float %6158, %6135
  %6160 = fmul fast float %6151, %6151
  %6161 = fmul fast float %6160, %6148
  %6162 = fmul fast float %6161, %6159
  %6163 = fdiv fast float 1.000000e+00, %6162
  %6164 = bitcast float %6139 to i32
  %6165 = sitofp i32 %6164 to float
  %6166 = fmul fast float %6165, 0x3FE7F73180000000
  %6167 = fadd fast float %6166, 0x41AFE27C40000000
  %6168 = fptosi float %6167 to i32
  %6169 = bitcast i32 %6168 to float
  %6170 = fmul fast float %5956, 0x3FD80E9D60000000
  %6171 = fmul fast float %6170, %6121
  %6172 = fadd fast float %6169, %6171
  %6173 = bitcast float %6172 to i32
  %6174 = sub nsw i32 2129859010, %6173
  %6175 = bitcast i32 %6174 to float
  %6176 = fmul fast float %6139, %6163
  %6177 = fmul fast float %6176, %6169
  %6178 = fmul fast float %6177, %6175
  %6179 = call float @dx.op.unary.f32(i32 6, float %6111)  ; FAbs(value)
  %6180 = fsub fast float 1.000000e+00, %6179
  %6181 = bitcast float %6180 to i32
  %6182 = sitofp i32 %6181 to float
  %6183 = fmul fast float %6182, 5.000000e+00
  %6184 = fadd fast float %6183, 0xC1EFBF8940000000
  %6185 = fptosi float %6184 to i32
  %6186 = bitcast i32 %6185 to float
  %6187 = fsub fast float 1.000000e+00, %5414
  %6188 = fsub fast float 1.000000e+00, %5415
  %6189 = fsub fast float 1.000000e+00, %5425
  %6190 = fmul fast float %6186, %6187
  %6191 = fmul fast float %6186, %6188
  %6192 = fmul fast float %6186, %6189
  %6193 = fadd fast float %6190, %5414
  %6194 = fadd fast float %6191, %5415
  %6195 = fadd fast float %6192, %5425
  br i1 %5551, label %6196, label %6219

; <label>:6196                                    ; preds = %6082
  %6197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4221, float %6179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6198 = extractvalue %dx.types.ResRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.ResRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.ResRet.f32 %6197, 2
  %6201 = fadd fast float %6198, -5.000000e-01
  %6202 = fadd fast float %6199, -5.000000e-01
  %6203 = fadd fast float %6200, -5.000000e-01
  %6204 = fmul fast float %5414, 4.000000e+00
  %6205 = fmul fast float %6204, %6187
  %6206 = fmul fast float %6205, %6201
  %6207 = fmul fast float %5415, 4.000000e+00
  %6208 = fmul fast float %6207, %6188
  %6209 = fmul fast float %6208, %6202
  %6210 = fmul fast float %5425, 4.000000e+00
  %6211 = fmul fast float %6210, %6189
  %6212 = fmul fast float %6211, %6203
  %6213 = fadd fast float %6206, %6193
  %6214 = fadd fast float %6209, %6194
  %6215 = fadd fast float %6212, %6195
  %6216 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6217 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6218 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  br label %6219

; <label>:6219                                    ; preds = %6196, %6082
  %6220 = phi float [ %6216, %6196 ], [ %6193, %6082 ]
  %6221 = phi float [ %6217, %6196 ], [ %6194, %6082 ]
  %6222 = phi float [ %6218, %6196 ], [ %6195, %6082 ]
  %6223 = fmul fast float %6110, 9.843750e-01
  %6224 = fadd fast float %6223, 7.812500e-03
  %6225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %29, float %6224, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 2
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 3
  %6228 = fmul fast float %6226, %5414
  %6229 = fmul fast float %6226, %5415
  %6230 = fmul fast float %6226, %5425
  %6231 = fadd fast float %6228, %6227
  %6232 = fadd fast float %6229, %6227
  %6233 = fadd fast float %6230, %6227
  br i1 %5551, label %6234, label %6257

; <label>:6234                                    ; preds = %6219
  %6235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4221, float %6110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = fadd fast float %6236, -5.000000e-01
  %6240 = fadd fast float %6237, -5.000000e-01
  %6241 = fadd fast float %6238, -5.000000e-01
  %6242 = fmul fast float %5414, 4.000000e+00
  %6243 = fmul fast float %6242, %6187
  %6244 = fmul fast float %6243, %6239
  %6245 = fmul fast float %5415, 4.000000e+00
  %6246 = fmul fast float %6245, %6188
  %6247 = fmul fast float %6246, %6240
  %6248 = fmul fast float %5425, 4.000000e+00
  %6249 = fmul fast float %6248, %6189
  %6250 = fmul fast float %6249, %6241
  %6251 = fadd fast float %6244, %6231
  %6252 = fadd fast float %6247, %6232
  %6253 = fadd fast float %6250, %6233
  %6254 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6255 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6256 = call float @dx.op.unary.f32(i32 7, float %6253)  ; Saturate(value)
  br label %6257

; <label>:6257                                    ; preds = %6234, %6219
  %6258 = phi float [ %6254, %6234 ], [ %6231, %6219 ]
  %6259 = phi float [ %6255, %6234 ], [ %6232, %6219 ]
  %6260 = phi float [ %6256, %6234 ], [ %6233, %6219 ]
  %6261 = call float @dx.op.binary.f32(i32 35, float %6259, float %6260)  ; FMax(a,b)
  %6262 = call float @dx.op.binary.f32(i32 35, float %6258, float %6261)  ; FMax(a,b)
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = fmul fast float %6220, %6178
  %6265 = fmul fast float %6221, %6178
  %6266 = fmul fast float %6222, %6178
  %6267 = fsub fast float 1.000000e+00, %6111
  %6268 = bitcast float %6267 to i32
  %6269 = sitofp i32 %6268 to float
  %6270 = fmul fast float %6269, 5.000000e+00
  %6271 = fadd fast float %6270, 0xC1EFBF8940000000
  %6272 = fptosi float %6271 to i32
  %6273 = bitcast i32 %6272 to float
  %6274 = fmul fast float %6273, %4222
  %6275 = fmul fast float %6263, %6274
  %6276 = fmul fast float %6275, %5601
  %6277 = fmul fast float %6275, %5602
  %6278 = fmul fast float %6275, %5603
  %6279 = fadd fast float %6276, %6264
  %6280 = fadd fast float %6277, %6265
  %6281 = fadd fast float %6278, %6266
  %6282 = fmul fast float %6099, %4218
  %6283 = fmul fast float %6282, %6117
  %6284 = fmul fast float %6283, %6263
  %6285 = fmul fast float %6100, %4218
  %6286 = fmul fast float %6285, %6117
  %6287 = fmul fast float %6286, %6263
  %6288 = fmul fast float %6101, %4218
  %6289 = fmul fast float %6288, %6117
  %6290 = fmul fast float %6289, %6263
  %6291 = fadd fast float %6284, %5938
  %6292 = fadd fast float %6287, %5939
  %6293 = fadd fast float %6290, %5940
  %6294 = fmul fast float %6283, %6279
  %6295 = fmul fast float %6286, %6280
  %6296 = fmul fast float %6289, %6281
  %6297 = fadd fast float %6294, %5935
  %6298 = fadd fast float %6295, %5936
  %6299 = fadd fast float %6296, %5937
  br label %6013

; <label>:6300                                    ; preds = %6013
  br label %6301

; <label>:6301                                    ; preds = %6300, %5901
  %6302 = phi float [ %5903, %5901 ], [ %6014, %6300 ]
  %6303 = phi float [ %5904, %5901 ], [ %6015, %6300 ]
  %6304 = phi float [ %5905, %5901 ], [ %6016, %6300 ]
  %6305 = phi float [ %5906, %5901 ], [ %6017, %6300 ]
  %6306 = phi float [ %5907, %5901 ], [ %6018, %6300 ]
  %6307 = phi float [ %5908, %5901 ], [ %6019, %6300 ]
  %6308 = add i32 %5902, 1
  %6309 = icmp ugt i32 %6308, %5898
  br i1 %6309, label %6310, label %5901

; <label>:6310                                    ; preds = %6301
  br label %6311

; <label>:6311                                    ; preds = %6310, %5877, %5867
  %6312 = phi float [ %5868, %5867 ], [ %5868, %5877 ], [ %6302, %6310 ]
  %6313 = phi float [ %5869, %5867 ], [ %5869, %5877 ], [ %6303, %6310 ]
  %6314 = phi float [ %5870, %5867 ], [ %5870, %5877 ], [ %6304, %6310 ]
  %6315 = phi float [ %5871, %5867 ], [ %5871, %5877 ], [ %6305, %6310 ]
  %6316 = phi float [ %5872, %5867 ], [ %5872, %5877 ], [ %6306, %6310 ]
  %6317 = phi float [ %5873, %5867 ], [ %5873, %5877 ], [ %6307, %6310 ]
  %6318 = call float @dx.op.unary.f32(i32 24, float %5417)  ; Sqrt(value)
  %6319 = call float @dx.op.unary.f32(i32 24, float %5418)  ; Sqrt(value)
  %6320 = call float @dx.op.unary.f32(i32 24, float %5419)  ; Sqrt(value)
  %6321 = fmul fast float %6318, %6315
  %6322 = fmul fast float %6319, %6316
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  br i1 %204, label %6325, label %6345

; <label>:6325                                    ; preds = %6311
  %6326 = fadd fast float %6317, %4224
  %6327 = fmul fast float %6326, %4225
  %6328 = fsub fast float 1.000000e+00, %4225
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6332 = fmul fast float %6331, %6329
  %6333 = fadd fast float %6332, %6327
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = fmul fast float %6335, %5607
  %6337 = fsub fast float %6333, %6336
  %6338 = fadd fast float %6322, %6321
  %6339 = fmul fast float %6324, %6338
  %6340 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6341 = fsub fast float %6337, %6340
  %6342 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6343 = fmul fast float %6341, %6342
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  br label %6361

; <label>:6345                                    ; preds = %6311
  %6346 = fmul fast float %6320, %6317
  %6347 = fmul fast float %6324, %6321
  %6348 = fmul fast float %6324, %6322
  %6349 = fmul fast float %6346, %6324
  %6350 = add i32 %33, 356
  %6351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6350, i32 undef)  ; BufferLoad(srv,index,wot)
  %6352 = extractvalue %dx.types.ResRet.i32 %6351, 0
  %6353 = and i32 %6352, 32
  %6354 = icmp eq i32 %6353, 0
  br i1 %6354, label %6361, label %6355

; <label>:6355                                    ; preds = %6345
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = fmul fast float %6357, 0x3FE99999A0000000
  %6359 = fadd fast float %6357, %6347
  %6360 = fadd fast float %6358, %6349
  br label %6361

; <label>:6361                                    ; preds = %6355, %6345, %6325
  %6362 = phi float [ %6339, %6325 ], [ %6359, %6355 ], [ %6347, %6345 ]
  %6363 = phi float [ %6344, %6325 ], [ %6348, %6355 ], [ %6348, %6345 ]
  %6364 = phi float [ 1.000000e+00, %6325 ], [ %6360, %6355 ], [ %6349, %6345 ]
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = fmul fast float %6366, %6313
  %6368 = fmul fast float %6366, %6314
  %6369 = fadd fast float %6313, %6312
  %6370 = select i1 %204, float %6369, float %6312
  %6371 = fmul float %6370, %6366
  %6372 = select i1 %204, float 0.000000e+00, float %6367
  %6373 = select i1 %204, float 0.000000e+00, float %6368
  %6374 = fmul fast float %6362, %6318
  %6375 = fmul fast float %6363, %6319
  %6376 = fmul fast float %6364, %6320
  %6377 = fadd fast float %6371, %6374
  %6378 = fadd fast float %6372, %6375
  %6379 = fadd fast float %6373, %6376
  %6380 = select i1 %204, float %6363, float %6378
  %6381 = select i1 %204, float %6364, float %6379
  %6382 = call float @dx.op.binary.f32(i32 36, float %6377, float 3.225500e+04)  ; FMin(a,b)
  %6383 = call float @dx.op.binary.f32(i32 36, float %6380, float 3.225500e+04)  ; FMin(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6381, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6383)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6384)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!41 = !{!42, !43, !44, !45}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!47 = !{void ()* @ps_main, !"ps_main", !48, !4, !76}
!48 = !{!49, !74, null}
!49 = !{!50, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !70, !72, !73}
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
!70 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !51, i8 1, i32 1, i8 2, i32 12, i8 1, !71}
!71 = !{i32 3, i32 2}
!72 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !51, i8 1, i32 1, i8 4, i32 13, i8 0, !69}
!73 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !51, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 0, i8 0, !60}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

