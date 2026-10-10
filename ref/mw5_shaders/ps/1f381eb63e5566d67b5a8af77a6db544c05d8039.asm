;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; ENTITY_IDS               0   xy         12     NONE    uint   xy  
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
; shader hash: fa8f548e88b19e82e7321e44e20dd57f
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
; COMP_FACTOR              0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     u32     2darray      T8     t11,space2     1
;                                   texture     f32     2darray      T9     t10,space2     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t59,space2     1
;                                   texture     f32          2d     T14     t60,space2     1
;                                   texture    byte         r/o     T15     t45,space1     1
;                                   texture    byte         r/o     T16     t46,space1     1
;                                   texture    byte         r/o     T17     t47,space1     1
;                                   texture    byte         r/o     T18     t48,space1     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23     t68,space1     1
;                                   texture     f32          2d     T24      t0,space2     1
;                                   texture    byte         r/o     T25     t11,space1     1
;                                   texture    byte         r/o     T26     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast une float %108, 0.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %77, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %78, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %109, float %120, float %124
  %128 = select i1 %109, float %121, float %125
  %129 = select i1 %109, float %122, float %126
  %130 = fmul fast float %127, %117
  %131 = fmul fast float %128, %117
  %132 = fmul fast float %129, %117
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %167 = shl i32 %31, 5
  %168 = add i32 %167, 4194304
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = extractvalue %dx.types.ResRet.i32 %169, 1
  %172 = extractvalue %dx.types.ResRet.i32 %169, 2
  %173 = extractvalue %dx.types.ResRet.i32 %169, 3
  %174 = add i32 %167, 4194320
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = extractvalue %dx.types.ResRet.i32 %175, 1
  %178 = bitcast i32 %176 to float
  %179 = bitcast i32 %177 to float
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %183 = fmul fast float %181, %77
  %184 = fmul fast float %182, %78
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 114688
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %188, float %183, float 0.000000e+00
  %190 = select i1 %188, float %184, float 0.000000e+00
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %27, float %189, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fmul fast float %192, 2.550000e+02
  %194 = fptoui float %193 to i32
  %195 = select i1 %188, i32 %194, i32 0
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %198 = and i32 %197, 3
  %199 = icmp ne i32 %198, 0
  %200 = and i32 %197, 4
  %201 = icmp ne i32 %200, 0
  %202 = and i1 %199, %201
  br i1 %202, label %203, label %212

; <label>:203                                     ; preds = %0
  %204 = fmul fast float %112, %78
  %205 = fmul fast float %111, %77
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %26, float %205, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fsub fast float 1.000000e+00, %207
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = fcmp fast olt float %208, %210
  br label %215

; <label>:212                                     ; preds = %0
  %213 = icmp eq i32 %200, 0
  %214 = and i1 %199, %213
  br label %215

; <label>:215                                     ; preds = %212, %203
  %216 = phi i1 [ %211, %203 ], [ %214, %212 ]
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fmul fast float %218, 0x3FE3C6EF40000000
  %220 = frem fast float %77, 2.560000e+02
  %221 = frem fast float %78, 2.560000e+02
  %222 = fptoui float %220 to i32
  %223 = fptoui float %221 to i32
  %224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fadd fast float %225, %219
  %227 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %228 = add i32 %30, 156
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %230, 4
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %230, 7
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %230, 22
  %238 = shl nuw nsw i32 %237, 5
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %30, 216
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = lshr i32 %242, 8
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %242, 16
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = add i32 %30, 36
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %30, 288
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %265, 0x3F50624DE0000000
  %269 = fmul fast float %267, 0x3F50624DE0000000
  %270 = mul i32 %32, 100
  %271 = add i32 %270, 28
  %272 = add i32 %270, 40
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = add i32 %30, 172
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 4
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %277, 7
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %277, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %30, 232
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %289, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %289, 16
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = add i32 %30, 52
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %30, 304
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = and i32 %274, 1
  %327 = icmp ne i32 %326, 0
  %328 = select i1 %327, float %319, float %280
  %329 = select i1 %327, float %322, float %283
  %330 = select i1 %327, float %325, float %286
  %331 = add i32 %270, 44
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = fmul fast float %333, %328
  %335 = fmul fast float %333, %329
  %336 = fmul fast float %333, %330
  %337 = add i32 %270, 48
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %349 = and i32 %274, 8
  %350 = icmp ne i32 %349, 0
  %351 = select i1 %350, float %342, float %292
  %352 = select i1 %350, float %345, float %296
  %353 = select i1 %350, float %348, float %300
  %354 = add i32 %270, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = and i32 %274, 2
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %362, float %358, float %305
  %364 = select i1 %362, float %360, float %307
  %365 = add i32 %270, 56
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = and i32 %274, 4
  %373 = icmp ne i32 %372, 0
  %374 = select i1 %373, float %369, float %312
  %375 = fmul float %374, 0x3F50624DE0000000
  %376 = select i1 %373, float %371, float %314
  %377 = fmul float %376, 0x3F50624DE0000000
  %378 = add i32 %270, 60
  %379 = add i32 %270, 32
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = add i32 %30, 188
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = shl i32 %384, 4
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %384, 7
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %384, 22
  %392 = shl nuw nsw i32 %391, 5
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %30, 248
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = lshr i32 %396, 8
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = lshr i32 %396, 16
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = add i32 %30, 68
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %30, 320
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %417, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = shl i32 %423, 4
  %425 = and i32 %424, 32752
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %423, 7
  %428 = and i32 %427, 32752
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %423, 22
  %431 = shl nuw nsw i32 %430, 5
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = and i32 %381, 1
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %426, float %387
  %436 = select i1 %434, float %429, float %390
  %437 = select i1 %434, float %432, float %393
  %438 = add i32 %270, 64
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = fmul fast float %440, %435
  %442 = fmul fast float %440, %436
  %443 = fmul fast float %440, %437
  %444 = add i32 %270, 68
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = shl i32 %446, 4
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %446, 7
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %446, 22
  %454 = shl nuw nsw i32 %453, 5
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = and i32 %381, 8
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %457, float %449, float %399
  %459 = select i1 %457, float %452, float %403
  %460 = select i1 %457, float %455, float %407
  %461 = add i32 %270, 72
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = and i32 %381, 2
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %465, float %412
  %471 = select i1 %469, float %467, float %414
  %472 = add i32 %270, 76
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 65535
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = lshr i32 %474, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = and i32 %381, 4
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %476, float %419
  %482 = fmul float %481, 0x3F50624DE0000000
  %483 = select i1 %480, float %478, float %421
  %484 = fmul float %483, 0x3F50624DE0000000
  %485 = add i32 %270, 80
  %486 = add i32 %270, 36
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %30, 204
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = shl i32 %491, 4
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %491, 7
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %491, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %30, 264
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %503, 8
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = lshr i32 %503, 16
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3F70101020000000
  %515 = add i32 %30, 84
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 65535
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %517, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = add i32 %30, 336
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = shl i32 %530, 4
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %530, 7
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 22
  %538 = shl nuw nsw i32 %537, 5
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = and i32 %488, 1
  %541 = icmp ne i32 %540, 0
  %542 = select i1 %541, float %533, float %494
  %543 = select i1 %541, float %536, float %497
  %544 = select i1 %541, float %539, float %500
  %545 = add i32 %270, 84
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fmul fast float %547, %542
  %549 = fmul fast float %547, %543
  %550 = fmul fast float %547, %544
  %551 = add i32 %270, 88
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = shl i32 %553, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %553, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %553, 22
  %561 = shl nuw nsw i32 %560, 5
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = and i32 %488, 8
  %564 = icmp ne i32 %563, 0
  %565 = select i1 %564, float %556, float %506
  %566 = select i1 %564, float %559, float %510
  %567 = select i1 %564, float %562, float %514
  %568 = add i32 %270, 92
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = and i32 %488, 2
  %576 = icmp ne i32 %575, 0
  %577 = select i1 %576, float %572, float %519
  %578 = select i1 %576, float %574, float %521
  %579 = add i32 %270, 96
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = and i32 %488, 4
  %587 = icmp ne i32 %586, 0
  %588 = select i1 %587, float %583, float %526
  %589 = fmul float %588, 0x3F50624DE0000000
  %590 = select i1 %587, float %585, float %528
  %591 = fmul float %590, 0x3F50624DE0000000
  %592 = add i32 %30, 348
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %594, 32
  %596 = icmp eq i32 %595, 0
  %597 = and i32 %594, 64
  %598 = icmp eq i32 %597, 0
  %599 = and i32 %594, 128
  %600 = icmp eq i32 %599, 0
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 2
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %618, label %605

; <label>:605                                     ; preds = %215
  %606 = add i32 %30, 524
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = add i32 %608, 0
  %610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %610, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = fmul fast float %612, %67
  %616 = fmul fast float %613, %68
  %617 = fmul fast float %614, %69
  br label %618

; <label>:618                                     ; preds = %605, %215
  %619 = phi float [ %69, %215 ], [ %617, %605 ]
  %620 = phi float [ %68, %215 ], [ %616, %605 ]
  %621 = phi float [ %67, %215 ], [ %615, %605 ]
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 2
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %645, label %626

; <label>:626                                     ; preds = %618
  %627 = add i32 %30, 44
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 1
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %621, float 1.000000e+00
  %633 = add i32 %30, 60
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 1
  %637 = icmp ne i32 %636, 0
  %638 = select i1 %637, float %620, float 1.000000e+00
  %639 = add i32 %30, 76
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 1
  %643 = icmp ne i32 %642, 0
  %644 = select i1 %643, float %619, float 1.000000e+00
  br label %645

; <label>:645                                     ; preds = %626, %618
  %646 = phi float [ %619, %618 ], [ %644, %626 ]
  %647 = phi float [ %620, %618 ], [ %638, %626 ]
  %648 = phi float [ %621, %618 ], [ %632, %626 ]
  %649 = lshr i32 %623, 20
  %650 = and i32 %649, 3
  %651 = add nuw nsw i32 %650, 1
  %652 = add i32 %30, 24
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %30, 28
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = or i32 %657, %654
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %1144, label %660

; <label>:660                                     ; preds = %645
  %661 = and i32 %654, 262144
  %662 = icmp ne i32 %661, 0
  %663 = select i1 %662, float %37, float 1.000000e+00
  %664 = select i1 %662, float %38, float 0.000000e+00
  %665 = select i1 %662, float %39, float 0.000000e+00
  %666 = select i1 %662, float %40, float 1.000000e+00
  %667 = select i1 %662, float %41, float %65
  %668 = select i1 %662, float %42, float %66
  %669 = add i32 %30, 284
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = lshr i32 %671, 16
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = fmul fast float %673, 0x3F50624DE0000000
  %675 = add i32 %30, 88
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = lshr i32 %677, 16
  %679 = and i32 %678, 255
  %680 = lshr i32 %677, 24
  %681 = add i32 %30, 292
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 65535
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = lshr i32 %683, 16
  %687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %686)  ; LegacyF16ToF32(value)
  %688 = add i32 %30, 32
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = lshr i32 %690, 22
  %692 = shl nuw nsw i32 %691, 5
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  %694 = shl i32 %690, 4
  %695 = and i32 %694, 32752
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = lshr i32 %690, 7
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = fmul fast float %701, 1.000000e+03
  %703 = fmul fast float %268, %702
  %704 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %705 = fadd fast float %704, %258
  %706 = fmul fast float %269, %702
  %707 = call float @dx.op.unary.f32(i32 22, float %706)  ; Frc(value)
  %708 = fadd fast float %707, %260
  %709 = fmul fast float %674, %702
  %710 = call float @dx.op.unary.f32(i32 22, float %709)  ; Frc(value)
  %711 = fmul fast float %710, 0x401921FB60000000
  %712 = fadd fast float %711, %693
  %713 = call float @dx.op.unary.f32(i32 13, float %712)  ; Sin(value)
  %714 = call float @dx.op.unary.f32(i32 12, float %712)  ; Cos(value)
  %715 = fsub fast float -0.000000e+00, %713
  %716 = fadd fast float %667, -5.000000e-01
  %717 = fadd fast float %668, -5.000000e-01
  %718 = fmul fast float %685, %716
  %719 = fmul fast float %687, %717
  %720 = fadd fast float %718, 5.000000e-01
  %721 = fadd fast float %719, 5.000000e-01
  %722 = fmul fast float %696, %720
  %723 = fmul fast float %699, %721
  %724 = fmul fast float %714, %722
  %725 = call float @dx.op.tertiary.f32(i32 46, float %715, float %723, float %724)  ; FMad(a,b,c)
  %726 = fmul fast float %713, %722
  %727 = call float @dx.op.tertiary.f32(i32 46, float %714, float %723, float %726)  ; FMad(a,b,c)
  %728 = fadd fast float %705, %725
  %729 = fadd fast float %708, %727
  %730 = icmp ugt i32 %679, 1
  %731 = icmp ugt i32 %677, 33554431
  %732 = or i1 %731, %730
  br i1 %732, label %733, label %758

; <label>:733                                     ; preds = %660
  %734 = add i32 %30, 228
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = lshr i32 %736, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = fmul fast float %701, %738
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = mul nuw nsw i32 %679, %680
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %740, %742
  %744 = call float @dx.op.unary.f32(i32 27, float %743)  ; Round_ni(value)
  %745 = fptoui float %744 to i32
  %746 = urem i32 %745, %679
  %747 = udiv i32 %745, %680
  %748 = call float @dx.op.unary.f32(i32 22, float %728)  ; Frc(value)
  %749 = call float @dx.op.unary.f32(i32 22, float %729)  ; Frc(value)
  %750 = uitofp i32 %746 to float
  %751 = uitofp i32 %747 to float
  %752 = fadd fast float %748, %750
  %753 = fadd fast float %749, %751
  %754 = uitofp i32 %679 to float
  %755 = uitofp i32 %680 to float
  %756 = fdiv fast float %752, %754
  %757 = fdiv fast float %753, %755
  br label %758

; <label>:758                                     ; preds = %733, %660
  %759 = phi float [ %756, %733 ], [ %728, %660 ]
  %760 = phi float [ %757, %733 ], [ %729, %660 ]
  %761 = and i32 %654, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %959, label %763

; <label>:763                                     ; preds = %758
  %764 = add i32 %30, 408
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %73, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = and i32 %677, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %677, 8
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %773, %775
  %780 = fadd fast float %779, %778
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 512
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

; <label>:786                                     ; preds = %763
  %787 = add i32 %30, 492
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %74, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %786, %763
  %795 = phi float [ %793, %786 ], [ 1.000000e+00, %763 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 33554432
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %906, label %800

; <label>:800                                     ; preds = %794
  %801 = add i32 %30, 224
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 65535
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = lshr i32 %803, 16
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = add i32 %30, 228
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 24
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = and i32 %814, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = lshr i32 %814, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %814, 16
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = add i32 %30, 220
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = lshr i32 %831, 24
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = and i32 %831, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %831, 8
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %831, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = bitcast float %770 to i32
  %847 = ashr i32 %846, 1
  %848 = sub nsw i32 1597463174, %847
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %770, 5.000000e-01
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %851, %850
  %853 = fsub fast float 1.500000e+00, %852
  %854 = fmul fast float %849, %770
  %855 = fmul fast float %854, %853
  %856 = bitcast float %771 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %771, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %771
  %865 = fmul fast float %864, %863
  %866 = bitcast float %772 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %772, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %772
  %875 = fmul fast float %874, %873
  %876 = fsub fast float %855, %837
  %877 = fsub fast float %865, %841
  %878 = fsub fast float %875, %845
  %879 = fmul fast float %876, %805
  %880 = fmul fast float %877, %807
  %881 = fmul fast float %878, %812
  %882 = fadd fast float %879, %820
  %883 = fadd fast float %880, %824
  %884 = fadd fast float %881, %828
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fmul fast float %887, %887
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fsub fast float %890, %772
  %894 = fmul fast float %891, %795
  %895 = fmul fast float %892, %795
  %896 = fmul fast float %893, %795
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %817, %781
  %901 = fsub fast float %900, %834
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float %902, %781
  %904 = fmul fast float %903, %795
  %905 = fadd fast float %904, %781
  br label %959

; <label>:906                                     ; preds = %794
  %907 = and i32 %797, 134217728
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %943, label %909

; <label>:909                                     ; preds = %906
  %910 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %912 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fmul fast float %913, %795
  %917 = fmul fast float %914, %795
  %918 = fmul fast float %915, %795
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = fadd fast float %918, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = fmul fast float %919, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %922
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %922
  %930 = fmul fast float %920, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %923
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %923
  %935 = fmul fast float %921, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %924
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %924
  %940 = fmul fast float %929, %929
  %941 = fmul fast float %934, %934
  %942 = fmul fast float %939, %939
  br label %959

; <label>:943                                     ; preds = %906
  %944 = fmul fast float %245, %245
  %945 = fmul fast float %249, %249
  %946 = fmul fast float %253, %253
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fmul fast float %795, %947
  %951 = fmul fast float %795, %948
  %952 = fmul fast float %795, %949
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  %958 = fmul fast float %955, %772
  br label %959

; <label>:959                                     ; preds = %943, %909, %800, %758
  %960 = phi float [ %905, %800 ], [ %781, %909 ], [ %781, %943 ], [ 0x3FA23C0BE0000000, %758 ]
  %961 = phi float [ %897, %800 ], [ %940, %909 ], [ %956, %943 ], [ 1.000000e+00, %758 ]
  %962 = phi float [ %898, %800 ], [ %941, %909 ], [ %957, %943 ], [ 1.000000e+00, %758 ]
  %963 = phi float [ %899, %800 ], [ %942, %909 ], [ %958, %943 ], [ 1.000000e+00, %758 ]
  %964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.i32 %964, 1
  %966 = and i32 %965, 1
  %967 = icmp ne i32 %966, 0
  %968 = add i32 %30, 356
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 32
  %972 = icmp ne i32 %971, 0
  %973 = and i1 %967, %972
  %974 = select i1 %973, float 1.000000e+00, float %961
  %975 = select i1 %973, float 0x3FD3333340000000, float %962
  %976 = select i1 %973, float 0x3FD3333340000000, float %963
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1053, label %981

; <label>:981                                     ; preds = %959
  %982 = add i32 %30, 92
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %30, 424
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %73, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = and i32 %984, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %984, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = lshr i32 %984, 16
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101000000000
  %1004 = fmul fast float %991, %996
  %1005 = fadd fast float %1004, %999
  %1006 = fmul fast float %1005, 0x3F70101000000000
  %1007 = fadd fast float %992, -5.000000e-01
  %1008 = fadd fast float %994, -5.000000e-01
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1008, %1003
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fmul fast float %1011, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fadd fast float %1014, %1016
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = fsub fast float %1014, %1016
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float 1.000000e+00, %1021
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float %1022, %1023
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1020, float %1024, float %1018, float %1020, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1018, %1026
  %1028 = fmul fast float %1020, %1026
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 67108864
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1049, label %1033

; <label>:1033                                    ; preds = %981
  %1034 = add i32 %30, 280
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fsub fast float %1006, %1044
  %1046 = fmul fast float %1045, %1038
  %1047 = fadd fast float %1046, %1042
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1033, %981
  %1050 = phi float [ %1048, %1033 ], [ %1006, %981 ]
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %663, float %664)  ; Dot2(ax,ay,bx,by)
  %1052 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %665, float %666)  ; Dot2(ax,ay,bx,by)
  br label %1053

; <label>:1053                                    ; preds = %1049, %959
  %1054 = phi float [ %1050, %1049 ], [ 0x3FD6666660000000, %959 ]
  %1055 = phi float [ %1051, %1049 ], [ 0.000000e+00, %959 ]
  %1056 = phi float [ %1052, %1049 ], [ 0.000000e+00, %959 ]
  %1057 = phi float [ %993, %1049 ], [ 1.000000e+00, %959 ]
  %1058 = add i32 %30, 160
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 22
  %1062 = shl nuw nsw i32 %1061, 5
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 64
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1101, label %1068

; <label>:1068                                    ; preds = %1053
  %1069 = add i32 %30, 440
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 131072
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %73, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = fmul fast float %1079, %233
  %1083 = fmul fast float %1080, %236
  %1084 = fmul fast float %1081, %239
  br i1 %1077, label %1091, label %1085

; <label>:1085                                    ; preds = %1068
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fmul fast float %1087, %1082
  %1089 = fmul fast float %1087, %1083
  %1090 = fmul fast float %1087, %1084
  br label %1091

; <label>:1091                                    ; preds = %1085, %1068
  %1092 = phi float [ %1088, %1085 ], [ %1082, %1068 ]
  %1093 = phi float [ %1089, %1085 ], [ %1083, %1068 ]
  %1094 = phi float [ %1090, %1085 ], [ %1084, %1068 ]
  %1095 = fmul fast float %1092, %1063
  %1096 = select i1 %216, float %1095, float %1092
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1093, float %1094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = select i1 %216, float 0.000000e+00, float %1092
  %1099 = select i1 %216, float %1097, float %1093
  %1100 = select i1 %216, float 0.000000e+00, float %1094
  br label %1101

; <label>:1101                                    ; preds = %1091, %1053
  %1102 = phi float [ %1098, %1091 ], [ 0.000000e+00, %1053 ]
  %1103 = phi float [ %1099, %1091 ], [ 0.000000e+00, %1053 ]
  %1104 = phi float [ %1100, %1091 ], [ 0.000000e+00, %1053 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 4096
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1129, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = and i32 %1106, 1048576
  %1111 = icmp ne i32 %1110, 0
  %1112 = add i32 %30, 508
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %74, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1119 = select i1 %1111, float 1.000000e+00, float %1118
  %1120 = add i32 %30, 164
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 65535
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = lshr i32 %1122, 16
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fmul fast float %1124, %1119
  %1128 = fadd fast float %1127, %1126
  br label %1129

; <label>:1129                                    ; preds = %1109, %1101
  %1130 = phi float [ %1128, %1109 ], [ 0.000000e+00, %1101 ]
  %1131 = add i32 %30, 96
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = lshr i32 %1133, 8
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = call float @dx.op.dot3.f32(i32 55, float %974, float %975, float %976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = fmul fast float %1138, %1139
  %1141 = fadd fast float %1140, %1135
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1129, %645
  %1145 = phi float [ 0.000000e+00, %645 ], [ %1055, %1129 ]
  %1146 = phi float [ 0.000000e+00, %645 ], [ %1056, %1129 ]
  %1147 = phi float [ 0.000000e+00, %645 ], [ %1102, %1129 ]
  %1148 = phi float [ 0.000000e+00, %645 ], [ %1103, %1129 ]
  %1149 = phi float [ 0.000000e+00, %645 ], [ %1104, %1129 ]
  %1150 = phi float [ 0.000000e+00, %645 ], [ %974, %1129 ]
  %1151 = phi float [ 0.000000e+00, %645 ], [ %975, %1129 ]
  %1152 = phi float [ 0.000000e+00, %645 ], [ %976, %1129 ]
  %1153 = phi float [ 0.000000e+00, %645 ], [ %960, %1129 ]
  %1154 = phi float [ 0.000000e+00, %645 ], [ 1.000000e+00, %1129 ]
  %1155 = phi float [ 0.000000e+00, %645 ], [ %1054, %1129 ]
  %1156 = phi float [ 0.000000e+00, %645 ], [ %1057, %1129 ]
  %1157 = phi float [ 0.000000e+00, %645 ], [ %1130, %1129 ]
  %1158 = phi float [ 0.000000e+00, %645 ], [ %1143, %1129 ]
  br i1 %596, label %1921, label %1159

; <label>:1159                                    ; preds = %1144
  %1160 = icmp ult i32 %651, 2
  %1161 = add i32 %30, 40
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %30, 44
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = or i32 %1166, %1163
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1921, label %1169

; <label>:1169                                    ; preds = %1159
  %1170 = and i32 %1163, 262144
  %1171 = icmp ne i32 %1170, 0
  %1172 = select i1 %1171, float %37, float 1.000000e+00
  %1173 = select i1 %1171, float %38, float 0.000000e+00
  %1174 = select i1 %1171, float %39, float 0.000000e+00
  %1175 = select i1 %1171, float %40, float 1.000000e+00
  %1176 = select i1 %1171, float %41, float %65
  %1177 = select i1 %1171, float %42, float %66
  %1178 = add i32 %30, 300
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = lshr i32 %1180, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fmul fast float %1182, 0x3F50624DE0000000
  %1184 = add i32 %30, 104
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = lshr i32 %1186, 16
  %1188 = and i32 %1187, 255
  %1189 = lshr i32 %1186, 24
  %1190 = add i32 %30, 308
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 65535
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = lshr i32 %1192, 16
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = add i32 %30, 48
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = lshr i32 %1199, 22
  %1201 = shl nuw nsw i32 %1200, 5
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = shl i32 %1199, 4
  %1204 = and i32 %1203, 32752
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = lshr i32 %1199, 7
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 3
  %1211 = fmul fast float %1210, 1.000000e+03
  %1212 = fmul fast float %1211, %375
  %1213 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1214 = fadd fast float %1213, %363
  %1215 = fmul fast float %1211, %377
  %1216 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1217 = fadd fast float %1216, %364
  %1218 = fmul fast float %1183, %1211
  %1219 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1220 = fmul fast float %1219, 0x401921FB60000000
  %1221 = fadd fast float %1220, %1202
  %1222 = call float @dx.op.unary.f32(i32 13, float %1221)  ; Sin(value)
  %1223 = call float @dx.op.unary.f32(i32 12, float %1221)  ; Cos(value)
  %1224 = fsub fast float -0.000000e+00, %1222
  %1225 = fadd fast float %1176, -5.000000e-01
  %1226 = fadd fast float %1177, -5.000000e-01
  %1227 = fmul fast float %1194, %1225
  %1228 = fmul fast float %1196, %1226
  %1229 = fadd fast float %1227, 5.000000e-01
  %1230 = fadd fast float %1228, 5.000000e-01
  %1231 = fmul fast float %1205, %1229
  %1232 = fmul fast float %1208, %1230
  %1233 = fmul fast float %1223, %1231
  %1234 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %1232, float %1233)  ; FMad(a,b,c)
  %1235 = fmul fast float %1222, %1231
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1223, float %1232, float %1235)  ; FMad(a,b,c)
  %1237 = fadd fast float %1214, %1234
  %1238 = fadd fast float %1217, %1236
  %1239 = icmp ugt i32 %1188, 1
  %1240 = icmp ugt i32 %1186, 33554431
  %1241 = or i1 %1240, %1239
  br i1 %1241, label %1242, label %1267

; <label>:1242                                    ; preds = %1169
  %1243 = add i32 %30, 244
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = lshr i32 %1245, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = fmul fast float %1210, %1247
  %1249 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1250 = mul nuw nsw i32 %1188, %1189
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1249, %1251
  %1253 = call float @dx.op.unary.f32(i32 27, float %1252)  ; Round_ni(value)
  %1254 = fptoui float %1253 to i32
  %1255 = urem i32 %1254, %1188
  %1256 = udiv i32 %1254, %1189
  %1257 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1258 = call float @dx.op.unary.f32(i32 22, float %1238)  ; Frc(value)
  %1259 = uitofp i32 %1255 to float
  %1260 = uitofp i32 %1256 to float
  %1261 = fadd fast float %1257, %1259
  %1262 = fadd fast float %1258, %1260
  %1263 = uitofp i32 %1188 to float
  %1264 = uitofp i32 %1189 to float
  %1265 = fdiv fast float %1261, %1263
  %1266 = fdiv fast float %1262, %1264
  br label %1267

; <label>:1267                                    ; preds = %1242, %1169
  %1268 = phi float [ %1265, %1242 ], [ %1237, %1169 ]
  %1269 = phi float [ %1266, %1242 ], [ %1238, %1169 ]
  %1270 = and i32 %1163, 256
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1318, label %1272

; <label>:1272                                    ; preds = %1267
  %1273 = add i32 %30, 476
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = add i32 %1275, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %74, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = add i32 %30, 116
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = shl i32 %1282, 4
  %1284 = and i32 %1283, 32752
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1282, 7
  %1287 = and i32 %1286, 32752
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = fsub fast float 1.000000e+00, %648
  %1290 = call float @dx.op.binary.f32(i32 35, float %1289, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1291 = bitcast float %648 to i32
  %1292 = sitofp i32 %1291 to float
  %1293 = fadd fast float %1292, 0xC1CFBF8940000000
  %1294 = fmul fast float %1288, %1293
  %1295 = fadd fast float %1294, 0x41CFBF8940000000
  %1296 = fptosi float %1295 to i32
  %1297 = bitcast i32 %1296 to float
  %1298 = bitcast float %1290 to i32
  %1299 = sitofp i32 %1298 to float
  %1300 = fadd fast float %1299, 0xC1CFBF8940000000
  %1301 = fmul fast float %1300, %1288
  %1302 = fadd fast float %1301, 0x41CFBF8940000000
  %1303 = fptosi float %1302 to i32
  %1304 = bitcast i32 %1303 to float
  %1305 = fmul fast float %1297, %1285
  %1306 = fmul fast float %1304, %1285
  %1307 = fsub fast float %1290, %1305
  %1308 = fadd fast float %1306, %1290
  %1309 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1311 = fsub fast float %1279, %1309
  %1312 = fsub fast float %1310, %1309
  %1313 = bitcast float %1312 to i32
  %1314 = sub nsw i32 2129859010, %1313
  %1315 = bitcast i32 %1314 to float
  %1316 = fmul fast float %1315, %1311
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  br label %1318

; <label>:1318                                    ; preds = %1272, %1267
  %1319 = phi float [ %1317, %1272 ], [ %648, %1267 ]
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 128
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1340, label %1324

; <label>:1324                                    ; preds = %1318
  %1325 = add i32 %30, 460
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = add i32 %1327, 0
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1329, %dx.types.Handle %74, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 524288
  %1335 = icmp ne i32 %1334, 0
  %1336 = fcmp fast ogt float %1331, 0x3FE0101020000000
  %1337 = select i1 %1336, float 1.000000e+00, float 0.000000e+00
  %1338 = select i1 %1335, float %1337, float %1331
  %1339 = fmul fast float %1338, %1319
  br label %1340

; <label>:1340                                    ; preds = %1324, %1318
  %1341 = phi float [ %1339, %1324 ], [ %1319, %1318 ]
  %1342 = fcmp fast ult float %1341, 0x3F70101020000000
  br i1 %1342, label %1921, label %1343

; <label>:1343                                    ; preds = %1340
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = and i32 %1345, 16
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1546, label %1348

; <label>:1348                                    ; preds = %1343
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %30, 412
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = add i32 %1353, 0
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1355, %dx.types.Handle %73, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.ResRet.f32 %1356, 3
  %1361 = and i32 %1350, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = lshr i32 %1350, 8
  %1364 = and i32 %1363, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1360, %1362
  %1367 = fadd fast float %1366, %1365
  %1368 = fmul fast float %1367, 0x3F70101000000000
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 512
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1381, label %1373

; <label>:1373                                    ; preds = %1348
  %1374 = add i32 %30, 496
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1378, %dx.types.Handle %74, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  br label %1381

; <label>:1381                                    ; preds = %1373, %1348
  %1382 = phi float [ %1380, %1373 ], [ 1.000000e+00, %1348 ]
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 33554432
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1493, label %1387

; <label>:1387                                    ; preds = %1381
  %1388 = add i32 %30, 240
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1390, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = add i32 %30, 244
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 65535
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = lshr i32 %1401, 24
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = and i32 %1401, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = lshr i32 %1401, 8
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = lshr i32 %1401, 16
  %1413 = and i32 %1412, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101020000000
  %1416 = add i32 %30, 236
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = lshr i32 %1418, 24
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = and i32 %1418, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = lshr i32 %1418, 8
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101020000000
  %1429 = lshr i32 %1418, 16
  %1430 = and i32 %1429, 255
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3F70101020000000
  %1433 = bitcast float %1357 to i32
  %1434 = ashr i32 %1433, 1
  %1435 = sub nsw i32 1597463174, %1434
  %1436 = bitcast i32 %1435 to float
  %1437 = fmul fast float %1357, 5.000000e-01
  %1438 = fmul fast float %1436, %1436
  %1439 = fmul fast float %1438, %1437
  %1440 = fsub fast float 1.500000e+00, %1439
  %1441 = fmul fast float %1436, %1357
  %1442 = fmul fast float %1441, %1440
  %1443 = bitcast float %1358 to i32
  %1444 = ashr i32 %1443, 1
  %1445 = sub nsw i32 1597463174, %1444
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1358, 5.000000e-01
  %1448 = fmul fast float %1446, %1446
  %1449 = fmul fast float %1448, %1447
  %1450 = fsub fast float 1.500000e+00, %1449
  %1451 = fmul fast float %1446, %1358
  %1452 = fmul fast float %1451, %1450
  %1453 = bitcast float %1359 to i32
  %1454 = ashr i32 %1453, 1
  %1455 = sub nsw i32 1597463174, %1454
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1359, 5.000000e-01
  %1458 = fmul fast float %1456, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = fsub fast float 1.500000e+00, %1459
  %1461 = fmul fast float %1456, %1359
  %1462 = fmul fast float %1461, %1460
  %1463 = fsub fast float %1442, %1424
  %1464 = fsub fast float %1452, %1428
  %1465 = fsub fast float %1462, %1432
  %1466 = fmul fast float %1463, %1392
  %1467 = fmul fast float %1464, %1394
  %1468 = fmul fast float %1465, %1399
  %1469 = fadd fast float %1466, %1407
  %1470 = fadd fast float %1467, %1411
  %1471 = fadd fast float %1468, %1415
  %1472 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1473 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1474 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1475 = fmul fast float %1472, %1472
  %1476 = fmul fast float %1473, %1473
  %1477 = fmul fast float %1474, %1474
  %1478 = fsub fast float %1475, %1357
  %1479 = fsub fast float %1476, %1358
  %1480 = fsub fast float %1477, %1359
  %1481 = fmul fast float %1478, %1382
  %1482 = fmul fast float %1479, %1382
  %1483 = fmul fast float %1480, %1382
  %1484 = fadd fast float %1481, %1357
  %1485 = fadd fast float %1482, %1358
  %1486 = fadd fast float %1483, %1359
  %1487 = fadd fast float %1404, %1368
  %1488 = fsub fast float %1487, %1421
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = fsub fast float %1489, %1368
  %1491 = fmul fast float %1490, %1382
  %1492 = fadd fast float %1491, %1368
  br label %1546

; <label>:1493                                    ; preds = %1381
  %1494 = and i32 %1384, 134217728
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1530, label %1496

; <label>:1496                                    ; preds = %1493
  %1497 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %1498 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %1499 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1500 = fadd fast float %1497, -5.000000e-01
  %1501 = fadd fast float %1498, -5.000000e-01
  %1502 = fadd fast float %1499, -5.000000e-01
  %1503 = fmul fast float %1500, %1382
  %1504 = fmul fast float %1501, %1382
  %1505 = fmul fast float %1502, %1382
  %1506 = fadd fast float %1503, 5.000000e-01
  %1507 = fadd fast float %1504, 5.000000e-01
  %1508 = fadd fast float %1505, 5.000000e-01
  %1509 = call float @dx.op.unary.f32(i32 24, float %1357)  ; Sqrt(value)
  %1510 = call float @dx.op.unary.f32(i32 24, float %1358)  ; Sqrt(value)
  %1511 = call float @dx.op.unary.f32(i32 24, float %1359)  ; Sqrt(value)
  %1512 = fmul fast float %1506, 2.000000e+00
  %1513 = fsub fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1513, %1509
  %1515 = fadd fast float %1514, %1512
  %1516 = fmul fast float %1515, %1509
  %1517 = fmul fast float %1507, 2.000000e+00
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1518, %1510
  %1520 = fadd fast float %1519, %1517
  %1521 = fmul fast float %1520, %1510
  %1522 = fmul fast float %1508, 2.000000e+00
  %1523 = fsub fast float 1.000000e+00, %1522
  %1524 = fmul fast float %1523, %1511
  %1525 = fadd fast float %1524, %1522
  %1526 = fmul fast float %1525, %1511
  %1527 = fmul fast float %1516, %1516
  %1528 = fmul fast float %1521, %1521
  %1529 = fmul fast float %1526, %1526
  br label %1546

; <label>:1530                                    ; preds = %1493
  %1531 = fmul fast float %351, %351
  %1532 = fmul fast float %352, %352
  %1533 = fmul fast float %353, %353
  %1534 = fadd fast float %1531, -1.000000e+00
  %1535 = fadd fast float %1532, -1.000000e+00
  %1536 = fadd fast float %1533, -1.000000e+00
  %1537 = fmul fast float %1382, %1534
  %1538 = fmul fast float %1382, %1535
  %1539 = fmul fast float %1382, %1536
  %1540 = fadd fast float %1537, 1.000000e+00
  %1541 = fadd fast float %1538, 1.000000e+00
  %1542 = fadd fast float %1539, 1.000000e+00
  %1543 = fmul fast float %1540, %1357
  %1544 = fmul fast float %1541, %1358
  %1545 = fmul fast float %1542, %1359
  br label %1546

; <label>:1546                                    ; preds = %1530, %1496, %1387, %1343
  %1547 = phi float [ %1492, %1387 ], [ %1368, %1496 ], [ %1368, %1530 ], [ 0x3FA23C0BE0000000, %1343 ]
  %1548 = phi float [ %1484, %1387 ], [ %1527, %1496 ], [ %1543, %1530 ], [ 1.000000e+00, %1343 ]
  %1549 = phi float [ %1485, %1387 ], [ %1528, %1496 ], [ %1544, %1530 ], [ 1.000000e+00, %1343 ]
  %1550 = phi float [ %1486, %1387 ], [ %1529, %1496 ], [ %1545, %1530 ], [ 1.000000e+00, %1343 ]
  %1551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.i32 %1551, 1
  %1553 = and i32 %1552, 1
  %1554 = icmp ne i32 %1553, 0
  %1555 = add i32 %30, 356
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 32
  %1559 = icmp ne i32 %1558, 0
  %1560 = and i1 %1554, %1559
  %1561 = select i1 %1560, float 1.000000e+00, float %1548
  %1562 = select i1 %1560, float 0x3FD3333340000000, float %1549
  %1563 = select i1 %1560, float 0x3FD3333340000000, float %1550
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 32
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1640, label %1568

; <label>:1568                                    ; preds = %1546
  %1569 = add i32 %30, 108
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %30, 428
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %73, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1581 = extractvalue %dx.types.ResRet.f32 %1577, 3
  %1582 = and i32 %1571, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = lshr i32 %1571, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = lshr i32 %1571, 16
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = fmul fast float %1589, 0x3F70101000000000
  %1591 = fmul fast float %1578, %1583
  %1592 = fadd fast float %1591, %1586
  %1593 = fmul fast float %1592, 0x3F70101000000000
  %1594 = fadd fast float %1579, -5.000000e-01
  %1595 = fadd fast float %1581, -5.000000e-01
  %1596 = fmul fast float %1594, %1590
  %1597 = fmul fast float %1595, %1590
  %1598 = fadd fast float %1596, 5.000000e-01
  %1599 = fadd fast float %1597, 5.000000e-01
  %1600 = fmul fast float %1598, 2.000000e+00
  %1601 = fadd fast float %1600, -1.000000e+00
  %1602 = fmul fast float %1599, 2.000000e+00
  %1603 = fadd fast float %1602, -1.000000e+00
  %1604 = fadd fast float %1601, %1603
  %1605 = fmul fast float %1604, 5.000000e-01
  %1606 = fsub fast float %1601, %1603
  %1607 = fmul fast float %1606, 5.000000e-01
  %1608 = call float @dx.op.unary.f32(i32 6, float %1605)  ; FAbs(value)
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = call float @dx.op.unary.f32(i32 6, float %1607)  ; FAbs(value)
  %1611 = fsub fast float %1609, %1610
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1605, float %1607, float %1611, float %1605, float %1607, float %1611)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call float @dx.op.unary.f32(i32 25, float %1612)  ; Rsqrt(value)
  %1614 = fmul fast float %1605, %1613
  %1615 = fmul fast float %1607, %1613
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 67108864
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1636, label %1620

; <label>:1620                                    ; preds = %1568
  %1621 = add i32 %30, 296
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 65535
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = lshr i32 %1623, 16
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = fsub fast float %1593, %1631
  %1633 = fmul fast float %1632, %1625
  %1634 = fadd fast float %1633, %1629
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  br label %1636

; <label>:1636                                    ; preds = %1620, %1568
  %1637 = phi float [ %1635, %1620 ], [ %1593, %1568 ]
  %1638 = call float @dx.op.dot2.f32(i32 54, float %1614, float %1615, float %1172, float %1173)  ; Dot2(ax,ay,bx,by)
  %1639 = call float @dx.op.dot2.f32(i32 54, float %1614, float %1615, float %1174, float %1175)  ; Dot2(ax,ay,bx,by)
  br label %1640

; <label>:1640                                    ; preds = %1636, %1546
  %1641 = phi float [ %1637, %1636 ], [ 0x3FD6666660000000, %1546 ]
  %1642 = phi float [ %1638, %1636 ], [ 0.000000e+00, %1546 ]
  %1643 = phi float [ %1639, %1636 ], [ 0.000000e+00, %1546 ]
  %1644 = phi float [ %1580, %1636 ], [ 1.000000e+00, %1546 ]
  %1645 = add i32 %30, 176
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = lshr i32 %1647, 22
  %1649 = shl nuw nsw i32 %1648, 5
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 64
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1688, label %1655

; <label>:1655                                    ; preds = %1640
  %1656 = add i32 %30, 444
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = add i32 %1658, 0
  %1660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 131072
  %1664 = icmp eq i32 %1663, 0
  %1665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1660, %dx.types.Handle %73, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = extractvalue %dx.types.ResRet.f32 %1665, 2
  %1669 = fmul fast float %334, %1666
  %1670 = fmul fast float %335, %1667
  %1671 = fmul fast float %336, %1668
  br i1 %1664, label %1678, label %1672

; <label>:1672                                    ; preds = %1655
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = fmul fast float %1674, %1669
  %1676 = fmul fast float %1674, %1670
  %1677 = fmul fast float %1674, %1671
  br label %1678

; <label>:1678                                    ; preds = %1672, %1655
  %1679 = phi float [ %1675, %1672 ], [ %1669, %1655 ]
  %1680 = phi float [ %1676, %1672 ], [ %1670, %1655 ]
  %1681 = phi float [ %1677, %1672 ], [ %1671, %1655 ]
  %1682 = fmul fast float %1679, %1650
  %1683 = select i1 %216, float %1682, float %1679
  %1684 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1680, float %1681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1685 = select i1 %216, float 0.000000e+00, float %1679
  %1686 = select i1 %216, float %1684, float %1680
  %1687 = select i1 %216, float 0.000000e+00, float %1681
  br label %1688

; <label>:1688                                    ; preds = %1678, %1640
  %1689 = phi float [ %1685, %1678 ], [ 0.000000e+00, %1640 ]
  %1690 = phi float [ %1686, %1678 ], [ 0.000000e+00, %1640 ]
  %1691 = phi float [ %1687, %1678 ], [ 0.000000e+00, %1640 ]
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, 4096
  %1695 = icmp eq i32 %1694, 0
  br i1 %1695, label %1716, label %1696

; <label>:1696                                    ; preds = %1688
  %1697 = and i32 %1693, 1048576
  %1698 = icmp ne i32 %1697, 0
  %1699 = add i32 %30, 512
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = add i32 %1701, 0
  %1703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1703, %dx.types.Handle %74, float %1268, float %1269, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1706 = select i1 %1698, float 1.000000e+00, float %1705
  %1707 = add i32 %30, 180
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = lshr i32 %1709, 16
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = fmul fast float %1711, %1706
  %1715 = fadd fast float %1714, %1713
  br label %1716

; <label>:1716                                    ; preds = %1696, %1688
  %1717 = phi float [ %1715, %1696 ], [ 0.000000e+00, %1688 ]
  %1718 = add i32 %30, 112
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 255
  %1722 = uitofp i32 %1721 to float
  %1723 = lshr i32 %1720, 8
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1562, float %1563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1727 = fmul fast float %1725, %1726
  %1728 = fadd fast float %1727, %1722
  %1729 = fmul fast float %1728, 0x3F70101020000000
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  br i1 %1160, label %1731, label %1739

; <label>:1731                                    ; preds = %1716
  %1732 = fsub fast float 1.000000e+00, %1341
  %1733 = fmul fast float %1732, %1150
  %1734 = fmul fast float %1732, %1151
  %1735 = fmul fast float %1732, %1152
  %1736 = fmul fast float %1732, %1147
  %1737 = fmul fast float %1732, %1148
  %1738 = fmul fast float %1732, %1149
  br label %1739

; <label>:1739                                    ; preds = %1731, %1716
  %1740 = phi float [ %1736, %1731 ], [ %1147, %1716 ]
  %1741 = phi float [ %1737, %1731 ], [ %1148, %1716 ]
  %1742 = phi float [ %1738, %1731 ], [ %1149, %1716 ]
  %1743 = phi float [ %1733, %1731 ], [ %1150, %1716 ]
  %1744 = phi float [ %1734, %1731 ], [ %1151, %1716 ]
  %1745 = phi float [ %1735, %1731 ], [ %1152, %1716 ]
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = and i32 %1747, 3
  %1749 = icmp eq i32 %1748, 3
  br i1 %1749, label %1828, label %1750

; <label>:1750                                    ; preds = %1739
  %1751 = and i32 %1747, 16
  %1752 = icmp ne i32 %1751, 0
  %1753 = select i1 %1752, float %1341, float 0.000000e+00
  %1754 = icmp eq i32 %1748, 0
  br i1 %1754, label %1755, label %1783

; <label>:1755                                    ; preds = %1750
  %1756 = and i32 %1747, 64
  %1757 = icmp ne i32 %1756, 0
  %1758 = select i1 %1757, float %1341, float 0.000000e+00
  %1759 = fsub fast float %1561, %1743
  %1760 = fsub fast float %1562, %1744
  %1761 = fsub fast float %1563, %1745
  %1762 = fmul fast float %1753, %1759
  %1763 = fmul fast float %1753, %1760
  %1764 = fmul fast float %1753, %1761
  %1765 = fadd fast float %1762, %1743
  %1766 = fadd fast float %1763, %1744
  %1767 = fadd fast float %1764, %1745
  %1768 = fsub fast float %1547, %1153
  %1769 = fmul fast float %1753, %1768
  %1770 = fadd fast float %1769, %1153
  %1771 = fsub fast float %1689, %1740
  %1772 = fsub fast float %1690, %1741
  %1773 = fsub fast float %1691, %1742
  %1774 = fmul fast float %1758, %1771
  %1775 = fmul fast float %1758, %1772
  %1776 = fmul fast float %1758, %1773
  %1777 = fadd fast float %1774, %1740
  %1778 = fadd fast float %1775, %1741
  %1779 = fadd fast float %1776, %1742
  %1780 = fsub fast float %1730, %1158
  %1781 = fmul fast float %1753, %1780
  %1782 = fadd fast float %1781, %1158
  br label %1828

; <label>:1783                                    ; preds = %1750
  %1784 = icmp eq i32 %1748, 1
  br i1 %1784, label %1785, label %1798

; <label>:1785                                    ; preds = %1783
  %1786 = fadd fast float %1561, -1.000000e+00
  %1787 = fadd fast float %1562, -1.000000e+00
  %1788 = fadd fast float %1563, -1.000000e+00
  %1789 = fmul fast float %1753, %1786
  %1790 = fmul fast float %1753, %1787
  %1791 = fmul fast float %1753, %1788
  %1792 = fadd fast float %1789, 1.000000e+00
  %1793 = fadd fast float %1790, 1.000000e+00
  %1794 = fadd fast float %1791, 1.000000e+00
  %1795 = fmul fast float %1792, %1743
  %1796 = fmul fast float %1793, %1744
  %1797 = fmul fast float %1794, %1745
  br label %1828

; <label>:1798                                    ; preds = %1783
  %1799 = icmp eq i32 %1748, 2
  br i1 %1799, label %1800, label %1828

; <label>:1800                                    ; preds = %1798
  %1801 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1802 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1803 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1804 = fadd fast float %1801, -5.000000e-01
  %1805 = fadd fast float %1802, -5.000000e-01
  %1806 = fadd fast float %1803, -5.000000e-01
  %1807 = fmul fast float %1804, %1753
  %1808 = fmul fast float %1805, %1753
  %1809 = fmul fast float %1806, %1753
  %1810 = fadd fast float %1807, 5.000000e-01
  %1811 = fadd fast float %1808, 5.000000e-01
  %1812 = fadd fast float %1809, 5.000000e-01
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = fmul fast float %1814, %1743
  %1816 = fadd fast float %1815, %1813
  %1817 = fmul fast float %1816, %1743
  %1818 = fmul fast float %1811, 2.000000e+00
  %1819 = fsub fast float 1.000000e+00, %1818
  %1820 = fmul fast float %1819, %1744
  %1821 = fadd fast float %1820, %1818
  %1822 = fmul fast float %1821, %1744
  %1823 = fmul fast float %1812, 2.000000e+00
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = fmul fast float %1824, %1745
  %1826 = fadd fast float %1825, %1823
  %1827 = fmul fast float %1826, %1745
  br label %1828

; <label>:1828                                    ; preds = %1800, %1798, %1785, %1755, %1739
  %1829 = phi float [ %1740, %1739 ], [ %1740, %1800 ], [ %1740, %1798 ], [ %1740, %1785 ], [ %1777, %1755 ]
  %1830 = phi float [ %1741, %1739 ], [ %1741, %1800 ], [ %1741, %1798 ], [ %1741, %1785 ], [ %1778, %1755 ]
  %1831 = phi float [ %1742, %1739 ], [ %1742, %1800 ], [ %1742, %1798 ], [ %1742, %1785 ], [ %1779, %1755 ]
  %1832 = phi float [ %1743, %1739 ], [ %1817, %1800 ], [ %1743, %1798 ], [ %1795, %1785 ], [ %1765, %1755 ]
  %1833 = phi float [ %1744, %1739 ], [ %1822, %1800 ], [ %1744, %1798 ], [ %1796, %1785 ], [ %1766, %1755 ]
  %1834 = phi float [ %1745, %1739 ], [ %1827, %1800 ], [ %1745, %1798 ], [ %1797, %1785 ], [ %1767, %1755 ]
  %1835 = phi float [ %1153, %1739 ], [ %1153, %1800 ], [ %1153, %1798 ], [ %1153, %1785 ], [ %1770, %1755 ]
  %1836 = phi float [ %1158, %1739 ], [ %1158, %1800 ], [ %1158, %1798 ], [ %1158, %1785 ], [ %1782, %1755 ]
  %1837 = and i32 %1747, 12
  %1838 = icmp eq i32 %1837, 12
  br i1 %1838, label %1921, label %1839

; <label>:1839                                    ; preds = %1828
  %1840 = and i32 %1747, 2097184
  %1841 = icmp eq i32 %1840, 2097184
  %1842 = select i1 %1841, float %1341, float 0.000000e+00
  %1843 = and i32 %1747, 4194336
  %1844 = icmp eq i32 %1843, 4194336
  %1845 = select i1 %1844, float %1341, float 0.000000e+00
  %1846 = and i32 %1747, 8388640
  %1847 = icmp eq i32 %1846, 8388640
  %1848 = select i1 %1847, float %1341, float 0.000000e+00
  %1849 = and i32 %1747, 4096
  %1850 = icmp ne i32 %1849, 0
  %1851 = select i1 %1850, float %1341, float 0.000000e+00
  %1852 = icmp eq i32 %1837, 0
  br i1 %1852, label %1853, label %1869

; <label>:1853                                    ; preds = %1839
  %1854 = fsub fast float %1642, %1145
  %1855 = fsub fast float %1643, %1146
  %1856 = fmul fast float %1842, %1854
  %1857 = fmul fast float %1842, %1855
  %1858 = fadd fast float %1856, %1145
  %1859 = fadd fast float %1857, %1146
  %1860 = fsub fast float %1644, %1156
  %1861 = fmul fast float %1845, %1860
  %1862 = fadd fast float %1861, %1156
  %1863 = fsub fast float %1641, %1155
  %1864 = fmul fast float %1848, %1863
  %1865 = fadd fast float %1864, %1155
  %1866 = fsub fast float %1717, %1157
  %1867 = fmul fast float %1851, %1866
  %1868 = fadd fast float %1867, %1157
  br label %1921

; <label>:1869                                    ; preds = %1839
  %1870 = icmp eq i32 %1837, 4
  br i1 %1870, label %1871, label %1905

; <label>:1871                                    ; preds = %1869
  %1872 = fmul fast float %1842, %1642
  %1873 = fmul fast float %1842, %1643
  %1874 = fadd fast float %1872, %1145
  %1875 = fadd fast float %1873, %1146
  %1876 = call float @dx.op.binary.f32(i32 36, float %1156, float %1644)  ; FMin(a,b)
  %1877 = fsub fast float %1876, %1156
  %1878 = fmul fast float %1877, %1845
  %1879 = fadd fast float %1878, %1156
  %1880 = fadd fast float %1641, %1155
  %1881 = fmul fast float %1880, 0x3FF337FAE0000000
  %1882 = fmul fast float %1155, %1155
  %1883 = fmul fast float %1641, %1641
  %1884 = fadd fast float %1883, %1882
  %1885 = fmul fast float %1884, 0x3FE5152B00000000
  %1886 = fmul fast float %1155, 0xBFCC1F85E0000000
  %1887 = fmul fast float %1886, %1641
  %1888 = fadd fast float %1887, 0xBFE1363700000000
  %1889 = fadd fast float %1888, %1881
  %1890 = fsub fast float %1889, %1885
  %1891 = fmul fast float %1880, 0x3FBA6F0D00000000
  %1892 = fmul fast float %1884, 0x3FD0432880000000
  %1893 = fmul fast float %1155, 0xBFEF110800000000
  %1894 = fmul fast float %1893, %1641
  %1895 = fadd fast float %1894, 1.000000e+00
  %1896 = fsub fast float %1895, %1891
  %1897 = fadd fast float %1896, %1892
  %1898 = fdiv fast float %1890, %1897
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  %1900 = fsub fast float %1899, %1155
  %1901 = fmul fast float %1900, %1848
  %1902 = fadd fast float %1901, %1155
  %1903 = fmul fast float %1851, %1717
  %1904 = fadd fast float %1903, %1157
  br label %1921

; <label>:1905                                    ; preds = %1869
  %1906 = icmp eq i32 %1837, 8
  br i1 %1906, label %1907, label %1921

; <label>:1907                                    ; preds = %1905
  %1908 = fmul fast float %1842, %1642
  %1909 = fmul fast float %1842, %1643
  %1910 = fadd fast float %1908, %1145
  %1911 = fadd fast float %1909, %1146
  %1912 = call float @dx.op.binary.f32(i32 36, float %1156, float %1644)  ; FMin(a,b)
  %1913 = fsub fast float %1912, %1156
  %1914 = fmul fast float %1913, %1845
  %1915 = fadd fast float %1914, %1156
  %1916 = fsub fast float %1641, %1155
  %1917 = fmul fast float %1848, %1916
  %1918 = fadd fast float %1917, %1155
  %1919 = fmul fast float %1851, %1717
  %1920 = fadd fast float %1919, %1157
  br label %1921

; <label>:1921                                    ; preds = %1907, %1905, %1871, %1853, %1828, %1340, %1159, %1144
  %1922 = phi float [ %1145, %1828 ], [ %1145, %1340 ], [ %1145, %1144 ], [ %1910, %1907 ], [ %1145, %1905 ], [ %1874, %1871 ], [ %1858, %1853 ], [ %1145, %1159 ]
  %1923 = phi float [ %1146, %1828 ], [ %1146, %1340 ], [ %1146, %1144 ], [ %1911, %1907 ], [ %1146, %1905 ], [ %1875, %1871 ], [ %1859, %1853 ], [ %1146, %1159 ]
  %1924 = phi float [ %1829, %1828 ], [ %1147, %1340 ], [ %1147, %1144 ], [ %1829, %1907 ], [ %1829, %1905 ], [ %1829, %1871 ], [ %1829, %1853 ], [ %1147, %1159 ]
  %1925 = phi float [ %1830, %1828 ], [ %1148, %1340 ], [ %1148, %1144 ], [ %1830, %1907 ], [ %1830, %1905 ], [ %1830, %1871 ], [ %1830, %1853 ], [ %1148, %1159 ]
  %1926 = phi float [ %1831, %1828 ], [ %1149, %1340 ], [ %1149, %1144 ], [ %1831, %1907 ], [ %1831, %1905 ], [ %1831, %1871 ], [ %1831, %1853 ], [ %1149, %1159 ]
  %1927 = phi float [ %1832, %1828 ], [ %1150, %1340 ], [ %1150, %1144 ], [ %1832, %1907 ], [ %1832, %1905 ], [ %1832, %1871 ], [ %1832, %1853 ], [ %1150, %1159 ]
  %1928 = phi float [ %1833, %1828 ], [ %1151, %1340 ], [ %1151, %1144 ], [ %1833, %1907 ], [ %1833, %1905 ], [ %1833, %1871 ], [ %1833, %1853 ], [ %1151, %1159 ]
  %1929 = phi float [ %1834, %1828 ], [ %1152, %1340 ], [ %1152, %1144 ], [ %1834, %1907 ], [ %1834, %1905 ], [ %1834, %1871 ], [ %1834, %1853 ], [ %1152, %1159 ]
  %1930 = phi float [ %1835, %1828 ], [ %1153, %1340 ], [ %1153, %1144 ], [ %1835, %1907 ], [ %1835, %1905 ], [ %1835, %1871 ], [ %1835, %1853 ], [ %1153, %1159 ]
  %1931 = phi float [ %1155, %1828 ], [ %1155, %1340 ], [ %1155, %1144 ], [ %1918, %1907 ], [ %1155, %1905 ], [ %1902, %1871 ], [ %1865, %1853 ], [ %1155, %1159 ]
  %1932 = phi float [ %1156, %1828 ], [ %1156, %1340 ], [ %1156, %1144 ], [ %1915, %1907 ], [ %1156, %1905 ], [ %1879, %1871 ], [ %1862, %1853 ], [ %1156, %1159 ]
  %1933 = phi float [ %1157, %1828 ], [ %1157, %1340 ], [ %1157, %1144 ], [ %1920, %1907 ], [ %1157, %1905 ], [ %1904, %1871 ], [ %1868, %1853 ], [ %1157, %1159 ]
  %1934 = phi float [ %1836, %1828 ], [ %1158, %1340 ], [ %1158, %1144 ], [ %1836, %1907 ], [ %1836, %1905 ], [ %1836, %1871 ], [ %1836, %1853 ], [ %1158, %1159 ]
  br i1 %598, label %2697, label %1935

; <label>:1935                                    ; preds = %1921
  %1936 = icmp ult i32 %651, 3
  %1937 = add i32 %30, 56
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = add i32 %30, 60
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = or i32 %1942, %1939
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %2697, label %1945

; <label>:1945                                    ; preds = %1935
  %1946 = and i32 %1939, 262144
  %1947 = icmp ne i32 %1946, 0
  %1948 = select i1 %1947, float %37, float 1.000000e+00
  %1949 = select i1 %1947, float %38, float 0.000000e+00
  %1950 = select i1 %1947, float %39, float 0.000000e+00
  %1951 = select i1 %1947, float %40, float 1.000000e+00
  %1952 = select i1 %1947, float %41, float %65
  %1953 = select i1 %1947, float %42, float %66
  %1954 = add i32 %30, 316
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = lshr i32 %1956, 16
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = fmul fast float %1958, 0x3F50624DE0000000
  %1960 = add i32 %30, 120
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = lshr i32 %1962, 16
  %1964 = and i32 %1963, 255
  %1965 = lshr i32 %1962, 24
  %1966 = add i32 %30, 324
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 65535
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = lshr i32 %1968, 16
  %1972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1971)  ; LegacyF16ToF32(value)
  %1973 = add i32 %30, 64
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = lshr i32 %1975, 22
  %1977 = shl nuw nsw i32 %1976, 5
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = shl i32 %1975, 4
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = lshr i32 %1975, 7
  %1983 = and i32 %1982, 32752
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 3
  %1987 = fmul fast float %1986, 1.000000e+03
  %1988 = fmul fast float %1987, %482
  %1989 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %1990 = fadd fast float %1989, %470
  %1991 = fmul fast float %1987, %484
  %1992 = call float @dx.op.unary.f32(i32 22, float %1991)  ; Frc(value)
  %1993 = fadd fast float %1992, %471
  %1994 = fmul fast float %1959, %1987
  %1995 = call float @dx.op.unary.f32(i32 22, float %1994)  ; Frc(value)
  %1996 = fmul fast float %1995, 0x401921FB60000000
  %1997 = fadd fast float %1996, %1978
  %1998 = call float @dx.op.unary.f32(i32 13, float %1997)  ; Sin(value)
  %1999 = call float @dx.op.unary.f32(i32 12, float %1997)  ; Cos(value)
  %2000 = fsub fast float -0.000000e+00, %1998
  %2001 = fadd fast float %1952, -5.000000e-01
  %2002 = fadd fast float %1953, -5.000000e-01
  %2003 = fmul fast float %1970, %2001
  %2004 = fmul fast float %1972, %2002
  %2005 = fadd fast float %2003, 5.000000e-01
  %2006 = fadd fast float %2004, 5.000000e-01
  %2007 = fmul fast float %1981, %2005
  %2008 = fmul fast float %1984, %2006
  %2009 = fmul fast float %1999, %2007
  %2010 = call float @dx.op.tertiary.f32(i32 46, float %2000, float %2008, float %2009)  ; FMad(a,b,c)
  %2011 = fmul fast float %1998, %2007
  %2012 = call float @dx.op.tertiary.f32(i32 46, float %1999, float %2008, float %2011)  ; FMad(a,b,c)
  %2013 = fadd fast float %1990, %2010
  %2014 = fadd fast float %1993, %2012
  %2015 = icmp ugt i32 %1964, 1
  %2016 = icmp ugt i32 %1962, 33554431
  %2017 = or i1 %2016, %2015
  br i1 %2017, label %2018, label %2043

; <label>:2018                                    ; preds = %1945
  %2019 = add i32 %30, 260
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = lshr i32 %2021, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = fmul fast float %1986, %2023
  %2025 = call float @dx.op.unary.f32(i32 22, float %2024)  ; Frc(value)
  %2026 = mul nuw nsw i32 %1964, %1965
  %2027 = uitofp i32 %2026 to float
  %2028 = fmul fast float %2025, %2027
  %2029 = call float @dx.op.unary.f32(i32 27, float %2028)  ; Round_ni(value)
  %2030 = fptoui float %2029 to i32
  %2031 = urem i32 %2030, %1964
  %2032 = udiv i32 %2030, %1965
  %2033 = call float @dx.op.unary.f32(i32 22, float %2013)  ; Frc(value)
  %2034 = call float @dx.op.unary.f32(i32 22, float %2014)  ; Frc(value)
  %2035 = uitofp i32 %2031 to float
  %2036 = uitofp i32 %2032 to float
  %2037 = fadd fast float %2033, %2035
  %2038 = fadd fast float %2034, %2036
  %2039 = uitofp i32 %1964 to float
  %2040 = uitofp i32 %1965 to float
  %2041 = fdiv fast float %2037, %2039
  %2042 = fdiv fast float %2038, %2040
  br label %2043

; <label>:2043                                    ; preds = %2018, %1945
  %2044 = phi float [ %2041, %2018 ], [ %2013, %1945 ]
  %2045 = phi float [ %2042, %2018 ], [ %2014, %1945 ]
  %2046 = and i32 %1939, 256
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2094, label %2048

; <label>:2048                                    ; preds = %2043
  %2049 = add i32 %30, 480
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = add i32 %2051, 0
  %2053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2053, %dx.types.Handle %74, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = add i32 %30, 132
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = shl i32 %2058, 4
  %2060 = and i32 %2059, 32752
  %2061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2060)  ; LegacyF16ToF32(value)
  %2062 = lshr i32 %2058, 7
  %2063 = and i32 %2062, 32752
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = fsub fast float 1.000000e+00, %647
  %2066 = call float @dx.op.binary.f32(i32 35, float %2065, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2067 = bitcast float %647 to i32
  %2068 = sitofp i32 %2067 to float
  %2069 = fadd fast float %2068, 0xC1CFBF8940000000
  %2070 = fmul fast float %2064, %2069
  %2071 = fadd fast float %2070, 0x41CFBF8940000000
  %2072 = fptosi float %2071 to i32
  %2073 = bitcast i32 %2072 to float
  %2074 = bitcast float %2066 to i32
  %2075 = sitofp i32 %2074 to float
  %2076 = fadd fast float %2075, 0xC1CFBF8940000000
  %2077 = fmul fast float %2076, %2064
  %2078 = fadd fast float %2077, 0x41CFBF8940000000
  %2079 = fptosi float %2078 to i32
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %2073, %2061
  %2082 = fmul fast float %2080, %2061
  %2083 = fsub fast float %2066, %2081
  %2084 = fadd fast float %2082, %2066
  %2085 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2086 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2087 = fsub fast float %2055, %2085
  %2088 = fsub fast float %2086, %2085
  %2089 = bitcast float %2088 to i32
  %2090 = sub nsw i32 2129859010, %2089
  %2091 = bitcast i32 %2090 to float
  %2092 = fmul fast float %2091, %2087
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  br label %2094

; <label>:2094                                    ; preds = %2048, %2043
  %2095 = phi float [ %2093, %2048 ], [ %647, %2043 ]
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 128
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2116, label %2100

; <label>:2100                                    ; preds = %2094
  %2101 = add i32 %30, 464
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = add i32 %2103, 0
  %2105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2105, %dx.types.Handle %74, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 524288
  %2111 = icmp ne i32 %2110, 0
  %2112 = fcmp fast ogt float %2107, 0x3FE0101020000000
  %2113 = select i1 %2112, float 1.000000e+00, float 0.000000e+00
  %2114 = select i1 %2111, float %2113, float %2107
  %2115 = fmul fast float %2114, %2095
  br label %2116

; <label>:2116                                    ; preds = %2100, %2094
  %2117 = phi float [ %2115, %2100 ], [ %2095, %2094 ]
  %2118 = fcmp fast ult float %2117, 0x3F70101020000000
  br i1 %2118, label %2697, label %2119

; <label>:2119                                    ; preds = %2116
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 16
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2322, label %2124

; <label>:2124                                    ; preds = %2119
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = add i32 %30, 416
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %2129, 0
  %2131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2131, %dx.types.Handle %73, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.ResRet.f32 %2132, 1
  %2135 = extractvalue %dx.types.ResRet.f32 %2132, 2
  %2136 = extractvalue %dx.types.ResRet.f32 %2132, 3
  %2137 = and i32 %2126, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = lshr i32 %2126, 8
  %2140 = and i32 %2139, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2136, %2138
  %2143 = fadd fast float %2142, %2141
  %2144 = fmul fast float %2143, 0x3F70101000000000
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 512
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2157, label %2149

; <label>:2149                                    ; preds = %2124
  %2150 = add i32 %30, 500
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %2152, 0
  %2154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2154, %dx.types.Handle %74, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  br label %2157

; <label>:2157                                    ; preds = %2149, %2124
  %2158 = phi float [ %2156, %2149 ], [ 1.000000e+00, %2124 ]
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 33554432
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2269, label %2163

; <label>:2163                                    ; preds = %2157
  %2164 = add i32 %30, 256
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 65535
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = lshr i32 %2166, 16
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = add i32 %30, 260
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 65535
  %2175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2174)  ; LegacyF16ToF32(value)
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = lshr i32 %2177, 24
  %2179 = uitofp i32 %2178 to float
  %2180 = fmul fast float %2179, 0x3F70101020000000
  %2181 = and i32 %2177, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = lshr i32 %2177, 8
  %2185 = and i32 %2184, 255
  %2186 = uitofp i32 %2185 to float
  %2187 = fmul fast float %2186, 0x3F70101020000000
  %2188 = lshr i32 %2177, 16
  %2189 = and i32 %2188, 255
  %2190 = uitofp i32 %2189 to float
  %2191 = fmul fast float %2190, 0x3F70101020000000
  %2192 = add i32 %30, 252
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = lshr i32 %2194, 24
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = and i32 %2194, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = lshr i32 %2194, 8
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2203, 0x3F70101020000000
  %2205 = lshr i32 %2194, 16
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2207, 0x3F70101020000000
  %2209 = bitcast float %2133 to i32
  %2210 = ashr i32 %2209, 1
  %2211 = sub nsw i32 1597463174, %2210
  %2212 = bitcast i32 %2211 to float
  %2213 = fmul fast float %2133, 5.000000e-01
  %2214 = fmul fast float %2212, %2212
  %2215 = fmul fast float %2214, %2213
  %2216 = fsub fast float 1.500000e+00, %2215
  %2217 = fmul fast float %2212, %2133
  %2218 = fmul fast float %2217, %2216
  %2219 = bitcast float %2134 to i32
  %2220 = ashr i32 %2219, 1
  %2221 = sub nsw i32 1597463174, %2220
  %2222 = bitcast i32 %2221 to float
  %2223 = fmul fast float %2134, 5.000000e-01
  %2224 = fmul fast float %2222, %2222
  %2225 = fmul fast float %2224, %2223
  %2226 = fsub fast float 1.500000e+00, %2225
  %2227 = fmul fast float %2222, %2134
  %2228 = fmul fast float %2227, %2226
  %2229 = bitcast float %2135 to i32
  %2230 = ashr i32 %2229, 1
  %2231 = sub nsw i32 1597463174, %2230
  %2232 = bitcast i32 %2231 to float
  %2233 = fmul fast float %2135, 5.000000e-01
  %2234 = fmul fast float %2232, %2232
  %2235 = fmul fast float %2234, %2233
  %2236 = fsub fast float 1.500000e+00, %2235
  %2237 = fmul fast float %2232, %2135
  %2238 = fmul fast float %2237, %2236
  %2239 = fsub fast float %2218, %2200
  %2240 = fsub fast float %2228, %2204
  %2241 = fsub fast float %2238, %2208
  %2242 = fmul fast float %2239, %2168
  %2243 = fmul fast float %2240, %2170
  %2244 = fmul fast float %2241, %2175
  %2245 = fadd fast float %2242, %2183
  %2246 = fadd fast float %2243, %2187
  %2247 = fadd fast float %2244, %2191
  %2248 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2249 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2250 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2251 = fmul fast float %2248, %2248
  %2252 = fmul fast float %2249, %2249
  %2253 = fmul fast float %2250, %2250
  %2254 = fsub fast float %2251, %2133
  %2255 = fsub fast float %2252, %2134
  %2256 = fsub fast float %2253, %2135
  %2257 = fmul fast float %2254, %2158
  %2258 = fmul fast float %2255, %2158
  %2259 = fmul fast float %2256, %2158
  %2260 = fadd fast float %2257, %2133
  %2261 = fadd fast float %2258, %2134
  %2262 = fadd fast float %2259, %2135
  %2263 = fadd fast float %2180, %2144
  %2264 = fsub fast float %2263, %2197
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fsub fast float %2265, %2144
  %2267 = fmul fast float %2266, %2158
  %2268 = fadd fast float %2267, %2144
  br label %2322

; <label>:2269                                    ; preds = %2157
  %2270 = and i32 %2160, 134217728
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2306, label %2272

; <label>:2272                                    ; preds = %2269
  %2273 = call float @dx.op.unary.f32(i32 24, float %458)  ; Sqrt(value)
  %2274 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %2275 = call float @dx.op.unary.f32(i32 24, float %460)  ; Sqrt(value)
  %2276 = fadd fast float %2273, -5.000000e-01
  %2277 = fadd fast float %2274, -5.000000e-01
  %2278 = fadd fast float %2275, -5.000000e-01
  %2279 = fmul fast float %2276, %2158
  %2280 = fmul fast float %2277, %2158
  %2281 = fmul fast float %2278, %2158
  %2282 = fadd fast float %2279, 5.000000e-01
  %2283 = fadd fast float %2280, 5.000000e-01
  %2284 = fadd fast float %2281, 5.000000e-01
  %2285 = call float @dx.op.unary.f32(i32 24, float %2133)  ; Sqrt(value)
  %2286 = call float @dx.op.unary.f32(i32 24, float %2134)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %2135)  ; Sqrt(value)
  %2288 = fmul fast float %2282, 2.000000e+00
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = fmul fast float %2289, %2285
  %2291 = fadd fast float %2290, %2288
  %2292 = fmul fast float %2291, %2285
  %2293 = fmul fast float %2283, 2.000000e+00
  %2294 = fsub fast float 1.000000e+00, %2293
  %2295 = fmul fast float %2294, %2286
  %2296 = fadd fast float %2295, %2293
  %2297 = fmul fast float %2296, %2286
  %2298 = fmul fast float %2284, 2.000000e+00
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %2299, %2287
  %2301 = fadd fast float %2300, %2298
  %2302 = fmul fast float %2301, %2287
  %2303 = fmul fast float %2292, %2292
  %2304 = fmul fast float %2297, %2297
  %2305 = fmul fast float %2302, %2302
  br label %2322

; <label>:2306                                    ; preds = %2269
  %2307 = fmul fast float %458, %458
  %2308 = fmul fast float %459, %459
  %2309 = fmul fast float %460, %460
  %2310 = fadd fast float %2307, -1.000000e+00
  %2311 = fadd fast float %2308, -1.000000e+00
  %2312 = fadd fast float %2309, -1.000000e+00
  %2313 = fmul fast float %2158, %2310
  %2314 = fmul fast float %2158, %2311
  %2315 = fmul fast float %2158, %2312
  %2316 = fadd fast float %2313, 1.000000e+00
  %2317 = fadd fast float %2314, 1.000000e+00
  %2318 = fadd fast float %2315, 1.000000e+00
  %2319 = fmul fast float %2316, %2133
  %2320 = fmul fast float %2317, %2134
  %2321 = fmul fast float %2318, %2135
  br label %2322

; <label>:2322                                    ; preds = %2306, %2272, %2163, %2119
  %2323 = phi float [ %2268, %2163 ], [ %2144, %2272 ], [ %2144, %2306 ], [ 0x3FA23C0BE0000000, %2119 ]
  %2324 = phi float [ %2260, %2163 ], [ %2303, %2272 ], [ %2319, %2306 ], [ 1.000000e+00, %2119 ]
  %2325 = phi float [ %2261, %2163 ], [ %2304, %2272 ], [ %2320, %2306 ], [ 1.000000e+00, %2119 ]
  %2326 = phi float [ %2262, %2163 ], [ %2305, %2272 ], [ %2321, %2306 ], [ 1.000000e+00, %2119 ]
  %2327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.i32 %2327, 1
  %2329 = and i32 %2328, 1
  %2330 = icmp ne i32 %2329, 0
  %2331 = add i32 %30, 356
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 32
  %2335 = icmp ne i32 %2334, 0
  %2336 = and i1 %2330, %2335
  %2337 = select i1 %2336, float 1.000000e+00, float %2324
  %2338 = select i1 %2336, float 0x3FD3333340000000, float %2325
  %2339 = select i1 %2336, float 0x3FD3333340000000, float %2326
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 32
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2416, label %2344

; <label>:2344                                    ; preds = %2322
  %2345 = add i32 %30, 124
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = add i32 %30, 432
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %2350, 0
  %2352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2352, %dx.types.Handle %73, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2354 = extractvalue %dx.types.ResRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.ResRet.f32 %2353, 1
  %2356 = extractvalue %dx.types.ResRet.f32 %2353, 2
  %2357 = extractvalue %dx.types.ResRet.f32 %2353, 3
  %2358 = and i32 %2347, 255
  %2359 = uitofp i32 %2358 to float
  %2360 = lshr i32 %2347, 8
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = lshr i32 %2347, 16
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101000000000
  %2367 = fmul fast float %2354, %2359
  %2368 = fadd fast float %2367, %2362
  %2369 = fmul fast float %2368, 0x3F70101000000000
  %2370 = fadd fast float %2355, -5.000000e-01
  %2371 = fadd fast float %2357, -5.000000e-01
  %2372 = fmul fast float %2370, %2366
  %2373 = fmul fast float %2371, %2366
  %2374 = fadd fast float %2372, 5.000000e-01
  %2375 = fadd fast float %2373, 5.000000e-01
  %2376 = fmul fast float %2374, 2.000000e+00
  %2377 = fadd fast float %2376, -1.000000e+00
  %2378 = fmul fast float %2375, 2.000000e+00
  %2379 = fadd fast float %2378, -1.000000e+00
  %2380 = fadd fast float %2377, %2379
  %2381 = fmul fast float %2380, 5.000000e-01
  %2382 = fsub fast float %2377, %2379
  %2383 = fmul fast float %2382, 5.000000e-01
  %2384 = call float @dx.op.unary.f32(i32 6, float %2381)  ; FAbs(value)
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2387 = fsub fast float %2385, %2386
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2381, float %2383, float %2387, float %2381, float %2383, float %2387)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = call float @dx.op.unary.f32(i32 25, float %2388)  ; Rsqrt(value)
  %2390 = fmul fast float %2381, %2389
  %2391 = fmul fast float %2383, %2389
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 67108864
  %2395 = icmp eq i32 %2394, 0
  br i1 %2395, label %2412, label %2396

; <label>:2396                                    ; preds = %2344
  %2397 = add i32 %30, 312
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 65535
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 65535
  %2405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2404)  ; LegacyF16ToF32(value)
  %2406 = lshr i32 %2399, 16
  %2407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2406)  ; LegacyF16ToF32(value)
  %2408 = fsub fast float %2369, %2407
  %2409 = fmul fast float %2408, %2401
  %2410 = fadd fast float %2409, %2405
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  br label %2412

; <label>:2412                                    ; preds = %2396, %2344
  %2413 = phi float [ %2411, %2396 ], [ %2369, %2344 ]
  %2414 = call float @dx.op.dot2.f32(i32 54, float %2390, float %2391, float %1948, float %1949)  ; Dot2(ax,ay,bx,by)
  %2415 = call float @dx.op.dot2.f32(i32 54, float %2390, float %2391, float %1950, float %1951)  ; Dot2(ax,ay,bx,by)
  br label %2416

; <label>:2416                                    ; preds = %2412, %2322
  %2417 = phi float [ %2413, %2412 ], [ 0x3FD6666660000000, %2322 ]
  %2418 = phi float [ %2414, %2412 ], [ 0.000000e+00, %2322 ]
  %2419 = phi float [ %2415, %2412 ], [ 0.000000e+00, %2322 ]
  %2420 = phi float [ %2356, %2412 ], [ 1.000000e+00, %2322 ]
  %2421 = add i32 %30, 192
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = lshr i32 %2423, 22
  %2425 = shl nuw nsw i32 %2424, 5
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 64
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2464, label %2431

; <label>:2431                                    ; preds = %2416
  %2432 = add i32 %30, 448
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = add i32 %2434, 0
  %2436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 131072
  %2440 = icmp eq i32 %2439, 0
  %2441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2436, %dx.types.Handle %73, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = fmul fast float %441, %2442
  %2446 = fmul fast float %442, %2443
  %2447 = fmul fast float %443, %2444
  br i1 %2440, label %2454, label %2448

; <label>:2448                                    ; preds = %2431
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = fmul fast float %2450, %2445
  %2452 = fmul fast float %2450, %2446
  %2453 = fmul fast float %2450, %2447
  br label %2454

; <label>:2454                                    ; preds = %2448, %2431
  %2455 = phi float [ %2451, %2448 ], [ %2445, %2431 ]
  %2456 = phi float [ %2452, %2448 ], [ %2446, %2431 ]
  %2457 = phi float [ %2453, %2448 ], [ %2447, %2431 ]
  %2458 = fmul fast float %2455, %2426
  %2459 = select i1 %216, float %2458, float %2455
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2459, float %2456, float %2457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = select i1 %216, float 0.000000e+00, float %2455
  %2462 = select i1 %216, float %2460, float %2456
  %2463 = select i1 %216, float 0.000000e+00, float %2457
  br label %2464

; <label>:2464                                    ; preds = %2454, %2416
  %2465 = phi float [ %2461, %2454 ], [ 0.000000e+00, %2416 ]
  %2466 = phi float [ %2462, %2454 ], [ 0.000000e+00, %2416 ]
  %2467 = phi float [ %2463, %2454 ], [ 0.000000e+00, %2416 ]
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 4096
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2492, label %2472

; <label>:2472                                    ; preds = %2464
  %2473 = and i32 %2469, 1048576
  %2474 = icmp ne i32 %2473, 0
  %2475 = add i32 %30, 516
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = add i32 %2477, 0
  %2479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2479, %dx.types.Handle %74, float %2044, float %2045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2481 = extractvalue %dx.types.ResRet.f32 %2480, 2
  %2482 = select i1 %2474, float 1.000000e+00, float %2481
  %2483 = add i32 %30, 196
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 65535
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = lshr i32 %2485, 16
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = fmul fast float %2487, %2482
  %2491 = fadd fast float %2490, %2489
  br label %2492

; <label>:2492                                    ; preds = %2472, %2464
  %2493 = phi float [ %2491, %2472 ], [ 0.000000e+00, %2464 ]
  %2494 = add i32 %30, 128
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 255
  %2498 = uitofp i32 %2497 to float
  %2499 = lshr i32 %2496, 8
  %2500 = and i32 %2499, 255
  %2501 = uitofp i32 %2500 to float
  %2502 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2503 = fmul fast float %2501, %2502
  %2504 = fadd fast float %2503, %2498
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  br i1 %1936, label %2507, label %2515

; <label>:2507                                    ; preds = %2492
  %2508 = fsub fast float 1.000000e+00, %2117
  %2509 = fmul fast float %2508, %1927
  %2510 = fmul fast float %2508, %1928
  %2511 = fmul fast float %2508, %1929
  %2512 = fmul fast float %2508, %1924
  %2513 = fmul fast float %2508, %1925
  %2514 = fmul fast float %2508, %1926
  br label %2515

; <label>:2515                                    ; preds = %2507, %2492
  %2516 = phi float [ %2512, %2507 ], [ %1924, %2492 ]
  %2517 = phi float [ %2513, %2507 ], [ %1925, %2492 ]
  %2518 = phi float [ %2514, %2507 ], [ %1926, %2492 ]
  %2519 = phi float [ %2509, %2507 ], [ %1927, %2492 ]
  %2520 = phi float [ %2510, %2507 ], [ %1928, %2492 ]
  %2521 = phi float [ %2511, %2507 ], [ %1929, %2492 ]
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 3
  %2525 = icmp eq i32 %2524, 3
  br i1 %2525, label %2604, label %2526

; <label>:2526                                    ; preds = %2515
  %2527 = and i32 %2523, 16
  %2528 = icmp ne i32 %2527, 0
  %2529 = select i1 %2528, float %2117, float 0.000000e+00
  %2530 = icmp eq i32 %2524, 0
  br i1 %2530, label %2531, label %2559

; <label>:2531                                    ; preds = %2526
  %2532 = and i32 %2523, 64
  %2533 = icmp ne i32 %2532, 0
  %2534 = select i1 %2533, float %2117, float 0.000000e+00
  %2535 = fsub fast float %2337, %2519
  %2536 = fsub fast float %2338, %2520
  %2537 = fsub fast float %2339, %2521
  %2538 = fmul fast float %2529, %2535
  %2539 = fmul fast float %2529, %2536
  %2540 = fmul fast float %2529, %2537
  %2541 = fadd fast float %2538, %2519
  %2542 = fadd fast float %2539, %2520
  %2543 = fadd fast float %2540, %2521
  %2544 = fsub fast float %2323, %1930
  %2545 = fmul fast float %2529, %2544
  %2546 = fadd fast float %2545, %1930
  %2547 = fsub fast float %2465, %2516
  %2548 = fsub fast float %2466, %2517
  %2549 = fsub fast float %2467, %2518
  %2550 = fmul fast float %2534, %2547
  %2551 = fmul fast float %2534, %2548
  %2552 = fmul fast float %2534, %2549
  %2553 = fadd fast float %2550, %2516
  %2554 = fadd fast float %2551, %2517
  %2555 = fadd fast float %2552, %2518
  %2556 = fsub fast float %2506, %1934
  %2557 = fmul fast float %2529, %2556
  %2558 = fadd fast float %2557, %1934
  br label %2604

; <label>:2559                                    ; preds = %2526
  %2560 = icmp eq i32 %2524, 1
  br i1 %2560, label %2561, label %2574

; <label>:2561                                    ; preds = %2559
  %2562 = fadd fast float %2337, -1.000000e+00
  %2563 = fadd fast float %2338, -1.000000e+00
  %2564 = fadd fast float %2339, -1.000000e+00
  %2565 = fmul fast float %2529, %2562
  %2566 = fmul fast float %2529, %2563
  %2567 = fmul fast float %2529, %2564
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fadd fast float %2566, 1.000000e+00
  %2570 = fadd fast float %2567, 1.000000e+00
  %2571 = fmul fast float %2568, %2519
  %2572 = fmul fast float %2569, %2520
  %2573 = fmul fast float %2570, %2521
  br label %2604

; <label>:2574                                    ; preds = %2559
  %2575 = icmp eq i32 %2524, 2
  br i1 %2575, label %2576, label %2604

; <label>:2576                                    ; preds = %2574
  %2577 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2578 = call float @dx.op.unary.f32(i32 24, float %2338)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %2339)  ; Sqrt(value)
  %2580 = fadd fast float %2577, -5.000000e-01
  %2581 = fadd fast float %2578, -5.000000e-01
  %2582 = fadd fast float %2579, -5.000000e-01
  %2583 = fmul fast float %2580, %2529
  %2584 = fmul fast float %2581, %2529
  %2585 = fmul fast float %2582, %2529
  %2586 = fadd fast float %2583, 5.000000e-01
  %2587 = fadd fast float %2584, 5.000000e-01
  %2588 = fadd fast float %2585, 5.000000e-01
  %2589 = fmul fast float %2586, 2.000000e+00
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2590, %2519
  %2592 = fadd fast float %2591, %2589
  %2593 = fmul fast float %2592, %2519
  %2594 = fmul fast float %2587, 2.000000e+00
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = fmul fast float %2595, %2520
  %2597 = fadd fast float %2596, %2594
  %2598 = fmul fast float %2597, %2520
  %2599 = fmul fast float %2588, 2.000000e+00
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = fmul fast float %2600, %2521
  %2602 = fadd fast float %2601, %2599
  %2603 = fmul fast float %2602, %2521
  br label %2604

; <label>:2604                                    ; preds = %2576, %2574, %2561, %2531, %2515
  %2605 = phi float [ %2516, %2515 ], [ %2516, %2576 ], [ %2516, %2574 ], [ %2516, %2561 ], [ %2553, %2531 ]
  %2606 = phi float [ %2517, %2515 ], [ %2517, %2576 ], [ %2517, %2574 ], [ %2517, %2561 ], [ %2554, %2531 ]
  %2607 = phi float [ %2518, %2515 ], [ %2518, %2576 ], [ %2518, %2574 ], [ %2518, %2561 ], [ %2555, %2531 ]
  %2608 = phi float [ %2519, %2515 ], [ %2593, %2576 ], [ %2519, %2574 ], [ %2571, %2561 ], [ %2541, %2531 ]
  %2609 = phi float [ %2520, %2515 ], [ %2598, %2576 ], [ %2520, %2574 ], [ %2572, %2561 ], [ %2542, %2531 ]
  %2610 = phi float [ %2521, %2515 ], [ %2603, %2576 ], [ %2521, %2574 ], [ %2573, %2561 ], [ %2543, %2531 ]
  %2611 = phi float [ %1930, %2515 ], [ %1930, %2576 ], [ %1930, %2574 ], [ %1930, %2561 ], [ %2546, %2531 ]
  %2612 = phi float [ %1934, %2515 ], [ %1934, %2576 ], [ %1934, %2574 ], [ %1934, %2561 ], [ %2558, %2531 ]
  %2613 = and i32 %2523, 12
  %2614 = icmp eq i32 %2613, 12
  br i1 %2614, label %2697, label %2615

; <label>:2615                                    ; preds = %2604
  %2616 = and i32 %2523, 2097184
  %2617 = icmp eq i32 %2616, 2097184
  %2618 = select i1 %2617, float %2117, float 0.000000e+00
  %2619 = and i32 %2523, 4194336
  %2620 = icmp eq i32 %2619, 4194336
  %2621 = select i1 %2620, float %2117, float 0.000000e+00
  %2622 = and i32 %2523, 8388640
  %2623 = icmp eq i32 %2622, 8388640
  %2624 = select i1 %2623, float %2117, float 0.000000e+00
  %2625 = and i32 %2523, 4096
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %2117, float 0.000000e+00
  %2628 = icmp eq i32 %2613, 0
  br i1 %2628, label %2629, label %2645

; <label>:2629                                    ; preds = %2615
  %2630 = fsub fast float %2418, %1922
  %2631 = fsub fast float %2419, %1923
  %2632 = fmul fast float %2618, %2630
  %2633 = fmul fast float %2618, %2631
  %2634 = fadd fast float %2632, %1922
  %2635 = fadd fast float %2633, %1923
  %2636 = fsub fast float %2420, %1932
  %2637 = fmul fast float %2621, %2636
  %2638 = fadd fast float %2637, %1932
  %2639 = fsub fast float %2417, %1931
  %2640 = fmul fast float %2624, %2639
  %2641 = fadd fast float %2640, %1931
  %2642 = fsub fast float %2493, %1933
  %2643 = fmul fast float %2627, %2642
  %2644 = fadd fast float %2643, %1933
  br label %2697

; <label>:2645                                    ; preds = %2615
  %2646 = icmp eq i32 %2613, 4
  br i1 %2646, label %2647, label %2681

; <label>:2647                                    ; preds = %2645
  %2648 = fmul fast float %2618, %2418
  %2649 = fmul fast float %2618, %2419
  %2650 = fadd fast float %2648, %1922
  %2651 = fadd fast float %2649, %1923
  %2652 = call float @dx.op.binary.f32(i32 36, float %1932, float %2420)  ; FMin(a,b)
  %2653 = fsub fast float %2652, %1932
  %2654 = fmul fast float %2653, %2621
  %2655 = fadd fast float %2654, %1932
  %2656 = fadd fast float %2417, %1931
  %2657 = fmul fast float %2656, 0x3FF337FAE0000000
  %2658 = fmul fast float %1931, %1931
  %2659 = fmul fast float %2417, %2417
  %2660 = fadd fast float %2659, %2658
  %2661 = fmul fast float %2660, 0x3FE5152B00000000
  %2662 = fmul fast float %1931, 0xBFCC1F85E0000000
  %2663 = fmul fast float %2662, %2417
  %2664 = fadd fast float %2663, 0xBFE1363700000000
  %2665 = fadd fast float %2664, %2657
  %2666 = fsub fast float %2665, %2661
  %2667 = fmul fast float %2656, 0x3FBA6F0D00000000
  %2668 = fmul fast float %2660, 0x3FD0432880000000
  %2669 = fmul fast float %1931, 0xBFEF110800000000
  %2670 = fmul fast float %2669, %2417
  %2671 = fadd fast float %2670, 1.000000e+00
  %2672 = fsub fast float %2671, %2667
  %2673 = fadd fast float %2672, %2668
  %2674 = fdiv fast float %2666, %2673
  %2675 = call float @dx.op.unary.f32(i32 7, float %2674)  ; Saturate(value)
  %2676 = fsub fast float %2675, %1931
  %2677 = fmul fast float %2676, %2624
  %2678 = fadd fast float %2677, %1931
  %2679 = fmul fast float %2627, %2493
  %2680 = fadd fast float %2679, %1933
  br label %2697

; <label>:2681                                    ; preds = %2645
  %2682 = icmp eq i32 %2613, 8
  br i1 %2682, label %2683, label %2697

; <label>:2683                                    ; preds = %2681
  %2684 = fmul fast float %2618, %2418
  %2685 = fmul fast float %2618, %2419
  %2686 = fadd fast float %2684, %1922
  %2687 = fadd fast float %2685, %1923
  %2688 = call float @dx.op.binary.f32(i32 36, float %1932, float %2420)  ; FMin(a,b)
  %2689 = fsub fast float %2688, %1932
  %2690 = fmul fast float %2689, %2621
  %2691 = fadd fast float %2690, %1932
  %2692 = fsub fast float %2417, %1931
  %2693 = fmul fast float %2624, %2692
  %2694 = fadd fast float %2693, %1931
  %2695 = fmul fast float %2627, %2493
  %2696 = fadd fast float %2695, %1933
  br label %2697

; <label>:2697                                    ; preds = %2683, %2681, %2647, %2629, %2604, %2116, %1935, %1921
  %2698 = phi float [ %1922, %2604 ], [ %1922, %2116 ], [ %1922, %1921 ], [ %2686, %2683 ], [ %1922, %2681 ], [ %2650, %2647 ], [ %2634, %2629 ], [ %1922, %1935 ]
  %2699 = phi float [ %1923, %2604 ], [ %1923, %2116 ], [ %1923, %1921 ], [ %2687, %2683 ], [ %1923, %2681 ], [ %2651, %2647 ], [ %2635, %2629 ], [ %1923, %1935 ]
  %2700 = phi float [ %2605, %2604 ], [ %1924, %2116 ], [ %1924, %1921 ], [ %2605, %2683 ], [ %2605, %2681 ], [ %2605, %2647 ], [ %2605, %2629 ], [ %1924, %1935 ]
  %2701 = phi float [ %2606, %2604 ], [ %1925, %2116 ], [ %1925, %1921 ], [ %2606, %2683 ], [ %2606, %2681 ], [ %2606, %2647 ], [ %2606, %2629 ], [ %1925, %1935 ]
  %2702 = phi float [ %2607, %2604 ], [ %1926, %2116 ], [ %1926, %1921 ], [ %2607, %2683 ], [ %2607, %2681 ], [ %2607, %2647 ], [ %2607, %2629 ], [ %1926, %1935 ]
  %2703 = phi float [ %2608, %2604 ], [ %1927, %2116 ], [ %1927, %1921 ], [ %2608, %2683 ], [ %2608, %2681 ], [ %2608, %2647 ], [ %2608, %2629 ], [ %1927, %1935 ]
  %2704 = phi float [ %2609, %2604 ], [ %1928, %2116 ], [ %1928, %1921 ], [ %2609, %2683 ], [ %2609, %2681 ], [ %2609, %2647 ], [ %2609, %2629 ], [ %1928, %1935 ]
  %2705 = phi float [ %2610, %2604 ], [ %1929, %2116 ], [ %1929, %1921 ], [ %2610, %2683 ], [ %2610, %2681 ], [ %2610, %2647 ], [ %2610, %2629 ], [ %1929, %1935 ]
  %2706 = phi float [ %2611, %2604 ], [ %1930, %2116 ], [ %1930, %1921 ], [ %2611, %2683 ], [ %2611, %2681 ], [ %2611, %2647 ], [ %2611, %2629 ], [ %1930, %1935 ]
  %2707 = phi float [ %1931, %2604 ], [ %1931, %2116 ], [ %1931, %1921 ], [ %2694, %2683 ], [ %1931, %2681 ], [ %2678, %2647 ], [ %2641, %2629 ], [ %1931, %1935 ]
  %2708 = phi float [ %1932, %2604 ], [ %1932, %2116 ], [ %1932, %1921 ], [ %2691, %2683 ], [ %1932, %2681 ], [ %2655, %2647 ], [ %2638, %2629 ], [ %1932, %1935 ]
  %2709 = phi float [ %1933, %2604 ], [ %1933, %2116 ], [ %1933, %1921 ], [ %2696, %2683 ], [ %1933, %2681 ], [ %2680, %2647 ], [ %2644, %2629 ], [ %1933, %1935 ]
  %2710 = phi float [ %2612, %2604 ], [ %1934, %2116 ], [ %1934, %1921 ], [ %2612, %2683 ], [ %2612, %2681 ], [ %2612, %2647 ], [ %2612, %2629 ], [ %1934, %1935 ]
  br i1 %600, label %3473, label %2711

; <label>:2711                                    ; preds = %2697
  %2712 = icmp ult i32 %651, 4
  %2713 = add i32 %30, 72
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %30, 76
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = or i32 %2718, %2715
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %3473, label %2721

; <label>:2721                                    ; preds = %2711
  %2722 = and i32 %2715, 262144
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %37, float 1.000000e+00
  %2725 = select i1 %2723, float %38, float 0.000000e+00
  %2726 = select i1 %2723, float %39, float 0.000000e+00
  %2727 = select i1 %2723, float %40, float 1.000000e+00
  %2728 = select i1 %2723, float %41, float %65
  %2729 = select i1 %2723, float %42, float %66
  %2730 = add i32 %30, 332
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = lshr i32 %2732, 16
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fmul fast float %2734, 0x3F50624DE0000000
  %2736 = add i32 %30, 136
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 16
  %2740 = and i32 %2739, 255
  %2741 = lshr i32 %2738, 24
  %2742 = add i32 %30, 340
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %2744, 65535
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = lshr i32 %2744, 16
  %2748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2747)  ; LegacyF16ToF32(value)
  %2749 = add i32 %30, 80
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 22
  %2753 = shl nuw nsw i32 %2752, 5
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = shl i32 %2751, 4
  %2756 = and i32 %2755, 32752
  %2757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2756)  ; LegacyF16ToF32(value)
  %2758 = lshr i32 %2751, 7
  %2759 = and i32 %2758, 32752
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2763 = fmul fast float %2762, 1.000000e+03
  %2764 = fmul fast float %2763, %589
  %2765 = call float @dx.op.unary.f32(i32 22, float %2764)  ; Frc(value)
  %2766 = fadd fast float %2765, %577
  %2767 = fmul fast float %2763, %591
  %2768 = call float @dx.op.unary.f32(i32 22, float %2767)  ; Frc(value)
  %2769 = fadd fast float %2768, %578
  %2770 = fmul fast float %2735, %2763
  %2771 = call float @dx.op.unary.f32(i32 22, float %2770)  ; Frc(value)
  %2772 = fmul fast float %2771, 0x401921FB60000000
  %2773 = fadd fast float %2772, %2754
  %2774 = call float @dx.op.unary.f32(i32 13, float %2773)  ; Sin(value)
  %2775 = call float @dx.op.unary.f32(i32 12, float %2773)  ; Cos(value)
  %2776 = fsub fast float -0.000000e+00, %2774
  %2777 = fadd fast float %2728, -5.000000e-01
  %2778 = fadd fast float %2729, -5.000000e-01
  %2779 = fmul fast float %2746, %2777
  %2780 = fmul fast float %2748, %2778
  %2781 = fadd fast float %2779, 5.000000e-01
  %2782 = fadd fast float %2780, 5.000000e-01
  %2783 = fmul fast float %2757, %2781
  %2784 = fmul fast float %2760, %2782
  %2785 = fmul fast float %2775, %2783
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2776, float %2784, float %2785)  ; FMad(a,b,c)
  %2787 = fmul fast float %2774, %2783
  %2788 = call float @dx.op.tertiary.f32(i32 46, float %2775, float %2784, float %2787)  ; FMad(a,b,c)
  %2789 = fadd fast float %2766, %2786
  %2790 = fadd fast float %2769, %2788
  %2791 = icmp ugt i32 %2740, 1
  %2792 = icmp ugt i32 %2738, 33554431
  %2793 = or i1 %2792, %2791
  br i1 %2793, label %2794, label %2819

; <label>:2794                                    ; preds = %2721
  %2795 = add i32 %30, 276
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = lshr i32 %2797, 16
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = fmul fast float %2762, %2799
  %2801 = call float @dx.op.unary.f32(i32 22, float %2800)  ; Frc(value)
  %2802 = mul nuw nsw i32 %2740, %2741
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2801, %2803
  %2805 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2806 = fptoui float %2805 to i32
  %2807 = urem i32 %2806, %2740
  %2808 = udiv i32 %2806, %2741
  %2809 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2810 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2811 = uitofp i32 %2807 to float
  %2812 = uitofp i32 %2808 to float
  %2813 = fadd fast float %2809, %2811
  %2814 = fadd fast float %2810, %2812
  %2815 = uitofp i32 %2740 to float
  %2816 = uitofp i32 %2741 to float
  %2817 = fdiv fast float %2813, %2815
  %2818 = fdiv fast float %2814, %2816
  br label %2819

; <label>:2819                                    ; preds = %2794, %2721
  %2820 = phi float [ %2817, %2794 ], [ %2789, %2721 ]
  %2821 = phi float [ %2818, %2794 ], [ %2790, %2721 ]
  %2822 = and i32 %2715, 256
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2870, label %2824

; <label>:2824                                    ; preds = %2819
  %2825 = add i32 %30, 484
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %2827, 0
  %2829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2829, %dx.types.Handle %74, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = add i32 %30, 148
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = shl i32 %2834, 4
  %2836 = and i32 %2835, 32752
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = lshr i32 %2834, 7
  %2839 = and i32 %2838, 32752
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = fsub fast float 1.000000e+00, %646
  %2842 = call float @dx.op.binary.f32(i32 35, float %2841, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2843 = bitcast float %646 to i32
  %2844 = sitofp i32 %2843 to float
  %2845 = fadd fast float %2844, 0xC1CFBF8940000000
  %2846 = fmul fast float %2840, %2845
  %2847 = fadd fast float %2846, 0x41CFBF8940000000
  %2848 = fptosi float %2847 to i32
  %2849 = bitcast i32 %2848 to float
  %2850 = bitcast float %2842 to i32
  %2851 = sitofp i32 %2850 to float
  %2852 = fadd fast float %2851, 0xC1CFBF8940000000
  %2853 = fmul fast float %2852, %2840
  %2854 = fadd fast float %2853, 0x41CFBF8940000000
  %2855 = fptosi float %2854 to i32
  %2856 = bitcast i32 %2855 to float
  %2857 = fmul fast float %2849, %2837
  %2858 = fmul fast float %2856, %2837
  %2859 = fsub fast float %2842, %2857
  %2860 = fadd fast float %2858, %2842
  %2861 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2862 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2863 = fsub fast float %2831, %2861
  %2864 = fsub fast float %2862, %2861
  %2865 = bitcast float %2864 to i32
  %2866 = sub nsw i32 2129859010, %2865
  %2867 = bitcast i32 %2866 to float
  %2868 = fmul fast float %2867, %2863
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  br label %2870

; <label>:2870                                    ; preds = %2824, %2819
  %2871 = phi float [ %2869, %2824 ], [ %646, %2819 ]
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 128
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2892, label %2876

; <label>:2876                                    ; preds = %2870
  %2877 = add i32 %30, 468
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %2879, 0
  %2881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2881, %dx.types.Handle %74, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 524288
  %2887 = icmp ne i32 %2886, 0
  %2888 = fcmp fast ogt float %2883, 0x3FE0101020000000
  %2889 = select i1 %2888, float 1.000000e+00, float 0.000000e+00
  %2890 = select i1 %2887, float %2889, float %2883
  %2891 = fmul fast float %2890, %2871
  br label %2892

; <label>:2892                                    ; preds = %2876, %2870
  %2893 = phi float [ %2891, %2876 ], [ %2871, %2870 ]
  %2894 = fcmp fast ult float %2893, 0x3F70101020000000
  br i1 %2894, label %3473, label %2895

; <label>:2895                                    ; preds = %2892
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 16
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %3098, label %2900

; <label>:2900                                    ; preds = %2895
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %30, 420
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2907, %dx.types.Handle %73, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.ResRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.ResRet.f32 %2908, 2
  %2912 = extractvalue %dx.types.ResRet.f32 %2908, 3
  %2913 = and i32 %2902, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = lshr i32 %2902, 8
  %2916 = and i32 %2915, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2912, %2914
  %2919 = fadd fast float %2918, %2917
  %2920 = fmul fast float %2919, 0x3F70101000000000
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 512
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2933, label %2925

; <label>:2925                                    ; preds = %2900
  %2926 = add i32 %30, 504
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %74, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  br label %2933

; <label>:2933                                    ; preds = %2925, %2900
  %2934 = phi float [ %2932, %2925 ], [ 1.000000e+00, %2900 ]
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 33554432
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3045, label %2939

; <label>:2939                                    ; preds = %2933
  %2940 = add i32 %30, 272
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 65535
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = lshr i32 %2942, 16
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = add i32 %30, 276
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 65535
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = lshr i32 %2953, 24
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = and i32 %2953, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2953, 8
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = lshr i32 %2953, 16
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = add i32 %30, 268
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 24
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = and i32 %2970, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2970, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = lshr i32 %2970, 16
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = bitcast float %2909 to i32
  %2986 = ashr i32 %2985, 1
  %2987 = sub nsw i32 1597463174, %2986
  %2988 = bitcast i32 %2987 to float
  %2989 = fmul fast float %2909, 5.000000e-01
  %2990 = fmul fast float %2988, %2988
  %2991 = fmul fast float %2990, %2989
  %2992 = fsub fast float 1.500000e+00, %2991
  %2993 = fmul fast float %2988, %2909
  %2994 = fmul fast float %2993, %2992
  %2995 = bitcast float %2910 to i32
  %2996 = ashr i32 %2995, 1
  %2997 = sub nsw i32 1597463174, %2996
  %2998 = bitcast i32 %2997 to float
  %2999 = fmul fast float %2910, 5.000000e-01
  %3000 = fmul fast float %2998, %2998
  %3001 = fmul fast float %3000, %2999
  %3002 = fsub fast float 1.500000e+00, %3001
  %3003 = fmul fast float %2998, %2910
  %3004 = fmul fast float %3003, %3002
  %3005 = bitcast float %2911 to i32
  %3006 = ashr i32 %3005, 1
  %3007 = sub nsw i32 1597463174, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %2911, 5.000000e-01
  %3010 = fmul fast float %3008, %3008
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float 1.500000e+00, %3011
  %3013 = fmul fast float %3008, %2911
  %3014 = fmul fast float %3013, %3012
  %3015 = fsub fast float %2994, %2976
  %3016 = fsub fast float %3004, %2980
  %3017 = fsub fast float %3014, %2984
  %3018 = fmul fast float %3015, %2944
  %3019 = fmul fast float %3016, %2946
  %3020 = fmul fast float %3017, %2951
  %3021 = fadd fast float %3018, %2959
  %3022 = fadd fast float %3019, %2963
  %3023 = fadd fast float %3020, %2967
  %3024 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3025 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3026 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3027 = fmul fast float %3024, %3024
  %3028 = fmul fast float %3025, %3025
  %3029 = fmul fast float %3026, %3026
  %3030 = fsub fast float %3027, %2909
  %3031 = fsub fast float %3028, %2910
  %3032 = fsub fast float %3029, %2911
  %3033 = fmul fast float %3030, %2934
  %3034 = fmul fast float %3031, %2934
  %3035 = fmul fast float %3032, %2934
  %3036 = fadd fast float %3033, %2909
  %3037 = fadd fast float %3034, %2910
  %3038 = fadd fast float %3035, %2911
  %3039 = fadd fast float %2956, %2920
  %3040 = fsub fast float %3039, %2973
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = fsub fast float %3041, %2920
  %3043 = fmul fast float %3042, %2934
  %3044 = fadd fast float %3043, %2920
  br label %3098

; <label>:3045                                    ; preds = %2933
  %3046 = and i32 %2936, 134217728
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3082, label %3048

; <label>:3048                                    ; preds = %3045
  %3049 = call float @dx.op.unary.f32(i32 24, float %565)  ; Sqrt(value)
  %3050 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %3051 = call float @dx.op.unary.f32(i32 24, float %567)  ; Sqrt(value)
  %3052 = fadd fast float %3049, -5.000000e-01
  %3053 = fadd fast float %3050, -5.000000e-01
  %3054 = fadd fast float %3051, -5.000000e-01
  %3055 = fmul fast float %3052, %2934
  %3056 = fmul fast float %3053, %2934
  %3057 = fmul fast float %3054, %2934
  %3058 = fadd fast float %3055, 5.000000e-01
  %3059 = fadd fast float %3056, 5.000000e-01
  %3060 = fadd fast float %3057, 5.000000e-01
  %3061 = call float @dx.op.unary.f32(i32 24, float %2909)  ; Sqrt(value)
  %3062 = call float @dx.op.unary.f32(i32 24, float %2910)  ; Sqrt(value)
  %3063 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %3064 = fmul fast float %3058, 2.000000e+00
  %3065 = fsub fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3065, %3061
  %3067 = fadd fast float %3066, %3064
  %3068 = fmul fast float %3067, %3061
  %3069 = fmul fast float %3059, 2.000000e+00
  %3070 = fsub fast float 1.000000e+00, %3069
  %3071 = fmul fast float %3070, %3062
  %3072 = fadd fast float %3071, %3069
  %3073 = fmul fast float %3072, %3062
  %3074 = fmul fast float %3060, 2.000000e+00
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = fmul fast float %3075, %3063
  %3077 = fadd fast float %3076, %3074
  %3078 = fmul fast float %3077, %3063
  %3079 = fmul fast float %3068, %3068
  %3080 = fmul fast float %3073, %3073
  %3081 = fmul fast float %3078, %3078
  br label %3098

; <label>:3082                                    ; preds = %3045
  %3083 = fmul fast float %565, %565
  %3084 = fmul fast float %566, %566
  %3085 = fmul fast float %567, %567
  %3086 = fadd fast float %3083, -1.000000e+00
  %3087 = fadd fast float %3084, -1.000000e+00
  %3088 = fadd fast float %3085, -1.000000e+00
  %3089 = fmul fast float %2934, %3086
  %3090 = fmul fast float %2934, %3087
  %3091 = fmul fast float %2934, %3088
  %3092 = fadd fast float %3089, 1.000000e+00
  %3093 = fadd fast float %3090, 1.000000e+00
  %3094 = fadd fast float %3091, 1.000000e+00
  %3095 = fmul fast float %3092, %2909
  %3096 = fmul fast float %3093, %2910
  %3097 = fmul fast float %3094, %2911
  br label %3098

; <label>:3098                                    ; preds = %3082, %3048, %2939, %2895
  %3099 = phi float [ %3044, %2939 ], [ %2920, %3048 ], [ %2920, %3082 ], [ 0x3FA23C0BE0000000, %2895 ]
  %3100 = phi float [ %3036, %2939 ], [ %3079, %3048 ], [ %3095, %3082 ], [ 1.000000e+00, %2895 ]
  %3101 = phi float [ %3037, %2939 ], [ %3080, %3048 ], [ %3096, %3082 ], [ 1.000000e+00, %2895 ]
  %3102 = phi float [ %3038, %2939 ], [ %3081, %3048 ], [ %3097, %3082 ], [ 1.000000e+00, %2895 ]
  %3103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3104 = extractvalue %dx.types.CBufRet.i32 %3103, 1
  %3105 = and i32 %3104, 1
  %3106 = icmp ne i32 %3105, 0
  %3107 = add i32 %30, 356
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 32
  %3111 = icmp ne i32 %3110, 0
  %3112 = and i1 %3106, %3111
  %3113 = select i1 %3112, float 1.000000e+00, float %3100
  %3114 = select i1 %3112, float 0x3FD3333340000000, float %3101
  %3115 = select i1 %3112, float 0x3FD3333340000000, float %3102
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 32
  %3119 = icmp eq i32 %3118, 0
  br i1 %3119, label %3192, label %3120

; <label>:3120                                    ; preds = %3098
  %3121 = add i32 %30, 140
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %30, 436
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %3126, 0
  %3128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3128, %dx.types.Handle %73, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.ResRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.ResRet.f32 %3129, 2
  %3133 = extractvalue %dx.types.ResRet.f32 %3129, 3
  %3134 = and i32 %3123, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = lshr i32 %3123, 8
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = lshr i32 %3123, 16
  %3140 = and i32 %3139, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = fmul fast float %3141, 0x3F70101000000000
  %3143 = fmul fast float %3130, %3135
  %3144 = fadd fast float %3143, %3138
  %3145 = fmul fast float %3144, 0x3F70101000000000
  %3146 = fadd fast float %3131, -5.000000e-01
  %3147 = fadd fast float %3133, -5.000000e-01
  %3148 = fmul fast float %3146, %3142
  %3149 = fmul fast float %3147, %3142
  %3150 = fadd fast float %3148, 5.000000e-01
  %3151 = fadd fast float %3149, 5.000000e-01
  %3152 = fmul fast float %3150, 2.000000e+00
  %3153 = fadd fast float %3152, -1.000000e+00
  %3154 = fmul fast float %3151, 2.000000e+00
  %3155 = fadd fast float %3154, -1.000000e+00
  %3156 = fadd fast float %3153, %3155
  %3157 = fmul fast float %3156, 5.000000e-01
  %3158 = fsub fast float %3153, %3155
  %3159 = fmul fast float %3158, 5.000000e-01
  %3160 = call float @dx.op.unary.f32(i32 6, float %3157)  ; FAbs(value)
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = call float @dx.op.unary.f32(i32 6, float %3159)  ; FAbs(value)
  %3163 = fsub fast float %3161, %3162
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3157, float %3159, float %3163, float %3157, float %3159, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.unary.f32(i32 25, float %3164)  ; Rsqrt(value)
  %3166 = fmul fast float %3157, %3165
  %3167 = fmul fast float %3159, %3165
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 67108864
  %3171 = icmp eq i32 %3170, 0
  br i1 %3171, label %3188, label %3172

; <label>:3172                                    ; preds = %3120
  %3173 = add i32 %30, 328
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 65535
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = lshr i32 %3175, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = fsub fast float %3145, %3183
  %3185 = fmul fast float %3184, %3177
  %3186 = fadd fast float %3185, %3181
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  br label %3188

; <label>:3188                                    ; preds = %3172, %3120
  %3189 = phi float [ %3187, %3172 ], [ %3145, %3120 ]
  %3190 = call float @dx.op.dot2.f32(i32 54, float %3166, float %3167, float %2724, float %2725)  ; Dot2(ax,ay,bx,by)
  %3191 = call float @dx.op.dot2.f32(i32 54, float %3166, float %3167, float %2726, float %2727)  ; Dot2(ax,ay,bx,by)
  br label %3192

; <label>:3192                                    ; preds = %3188, %3098
  %3193 = phi float [ %3189, %3188 ], [ 0x3FD6666660000000, %3098 ]
  %3194 = phi float [ %3190, %3188 ], [ 0.000000e+00, %3098 ]
  %3195 = phi float [ %3191, %3188 ], [ 0.000000e+00, %3098 ]
  %3196 = phi float [ %3132, %3188 ], [ 1.000000e+00, %3098 ]
  %3197 = add i32 %30, 208
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 22
  %3201 = shl nuw nsw i32 %3200, 5
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 64
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3240, label %3207

; <label>:3207                                    ; preds = %3192
  %3208 = add i32 %30, 452
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = add i32 %3210, 0
  %3212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 131072
  %3216 = icmp eq i32 %3215, 0
  %3217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3212, %dx.types.Handle %73, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = fmul fast float %548, %3218
  %3222 = fmul fast float %549, %3219
  %3223 = fmul fast float %550, %3220
  br i1 %3216, label %3230, label %3224

; <label>:3224                                    ; preds = %3207
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = fmul fast float %3226, %3221
  %3228 = fmul fast float %3226, %3222
  %3229 = fmul fast float %3226, %3223
  br label %3230

; <label>:3230                                    ; preds = %3224, %3207
  %3231 = phi float [ %3227, %3224 ], [ %3221, %3207 ]
  %3232 = phi float [ %3228, %3224 ], [ %3222, %3207 ]
  %3233 = phi float [ %3229, %3224 ], [ %3223, %3207 ]
  %3234 = fmul fast float %3231, %3202
  %3235 = select i1 %216, float %3234, float %3231
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3232, float %3233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = select i1 %216, float 0.000000e+00, float %3231
  %3238 = select i1 %216, float %3236, float %3232
  %3239 = select i1 %216, float 0.000000e+00, float %3233
  br label %3240

; <label>:3240                                    ; preds = %3230, %3192
  %3241 = phi float [ %3237, %3230 ], [ 0.000000e+00, %3192 ]
  %3242 = phi float [ %3238, %3230 ], [ 0.000000e+00, %3192 ]
  %3243 = phi float [ %3239, %3230 ], [ 0.000000e+00, %3192 ]
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = and i32 %3245, 4096
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3268, label %3248

; <label>:3248                                    ; preds = %3240
  %3249 = and i32 %3245, 1048576
  %3250 = icmp ne i32 %3249, 0
  %3251 = add i32 %30, 520
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = add i32 %3253, 0
  %3255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3255, %dx.types.Handle %74, float %2820, float %2821, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3258 = select i1 %3250, float 1.000000e+00, float %3257
  %3259 = add i32 %30, 212
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 65535
  %3263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3262)  ; LegacyF16ToF32(value)
  %3264 = lshr i32 %3261, 16
  %3265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3264)  ; LegacyF16ToF32(value)
  %3266 = fmul fast float %3263, %3258
  %3267 = fadd fast float %3266, %3265
  br label %3268

; <label>:3268                                    ; preds = %3248, %3240
  %3269 = phi float [ %3267, %3248 ], [ 0.000000e+00, %3240 ]
  %3270 = add i32 %30, 144
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = lshr i32 %3272, 8
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3114, float %3115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fmul fast float %3277, %3278
  %3280 = fadd fast float %3279, %3274
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  br i1 %2712, label %3283, label %3291

; <label>:3283                                    ; preds = %3268
  %3284 = fsub fast float 1.000000e+00, %2893
  %3285 = fmul fast float %3284, %2703
  %3286 = fmul fast float %3284, %2704
  %3287 = fmul fast float %3284, %2705
  %3288 = fmul fast float %3284, %2700
  %3289 = fmul fast float %3284, %2701
  %3290 = fmul fast float %3284, %2702
  br label %3291

; <label>:3291                                    ; preds = %3283, %3268
  %3292 = phi float [ %3288, %3283 ], [ %2700, %3268 ]
  %3293 = phi float [ %3289, %3283 ], [ %2701, %3268 ]
  %3294 = phi float [ %3290, %3283 ], [ %2702, %3268 ]
  %3295 = phi float [ %3285, %3283 ], [ %2703, %3268 ]
  %3296 = phi float [ %3286, %3283 ], [ %2704, %3268 ]
  %3297 = phi float [ %3287, %3283 ], [ %2705, %3268 ]
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 3
  %3301 = icmp eq i32 %3300, 3
  br i1 %3301, label %3380, label %3302

; <label>:3302                                    ; preds = %3291
  %3303 = and i32 %3299, 16
  %3304 = icmp ne i32 %3303, 0
  %3305 = select i1 %3304, float %2893, float 0.000000e+00
  %3306 = icmp eq i32 %3300, 0
  br i1 %3306, label %3307, label %3335

; <label>:3307                                    ; preds = %3302
  %3308 = and i32 %3299, 64
  %3309 = icmp ne i32 %3308, 0
  %3310 = select i1 %3309, float %2893, float 0.000000e+00
  %3311 = fsub fast float %3113, %3295
  %3312 = fsub fast float %3114, %3296
  %3313 = fsub fast float %3115, %3297
  %3314 = fmul fast float %3305, %3311
  %3315 = fmul fast float %3305, %3312
  %3316 = fmul fast float %3305, %3313
  %3317 = fadd fast float %3314, %3295
  %3318 = fadd fast float %3315, %3296
  %3319 = fadd fast float %3316, %3297
  %3320 = fsub fast float %3099, %2706
  %3321 = fmul fast float %3305, %3320
  %3322 = fadd fast float %3321, %2706
  %3323 = fsub fast float %3241, %3292
  %3324 = fsub fast float %3242, %3293
  %3325 = fsub fast float %3243, %3294
  %3326 = fmul fast float %3310, %3323
  %3327 = fmul fast float %3310, %3324
  %3328 = fmul fast float %3310, %3325
  %3329 = fadd fast float %3326, %3292
  %3330 = fadd fast float %3327, %3293
  %3331 = fadd fast float %3328, %3294
  %3332 = fsub fast float %3282, %2710
  %3333 = fmul fast float %3305, %3332
  %3334 = fadd fast float %3333, %2710
  br label %3380

; <label>:3335                                    ; preds = %3302
  %3336 = icmp eq i32 %3300, 1
  br i1 %3336, label %3337, label %3350

; <label>:3337                                    ; preds = %3335
  %3338 = fadd fast float %3113, -1.000000e+00
  %3339 = fadd fast float %3114, -1.000000e+00
  %3340 = fadd fast float %3115, -1.000000e+00
  %3341 = fmul fast float %3305, %3338
  %3342 = fmul fast float %3305, %3339
  %3343 = fmul fast float %3305, %3340
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fmul fast float %3344, %3295
  %3348 = fmul fast float %3345, %3296
  %3349 = fmul fast float %3346, %3297
  br label %3380

; <label>:3350                                    ; preds = %3335
  %3351 = icmp eq i32 %3300, 2
  br i1 %3351, label %3352, label %3380

; <label>:3352                                    ; preds = %3350
  %3353 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3114)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fmul fast float %3356, %3305
  %3360 = fmul fast float %3357, %3305
  %3361 = fmul fast float %3358, %3305
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = fmul fast float %3362, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3295
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3295
  %3370 = fmul fast float %3363, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3296
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3296
  %3375 = fmul fast float %3364, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3297
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3297
  br label %3380

; <label>:3380                                    ; preds = %3352, %3350, %3337, %3307, %3291
  %3381 = phi float [ %3292, %3291 ], [ %3292, %3352 ], [ %3292, %3350 ], [ %3292, %3337 ], [ %3329, %3307 ]
  %3382 = phi float [ %3293, %3291 ], [ %3293, %3352 ], [ %3293, %3350 ], [ %3293, %3337 ], [ %3330, %3307 ]
  %3383 = phi float [ %3294, %3291 ], [ %3294, %3352 ], [ %3294, %3350 ], [ %3294, %3337 ], [ %3331, %3307 ]
  %3384 = phi float [ %3295, %3291 ], [ %3369, %3352 ], [ %3295, %3350 ], [ %3347, %3337 ], [ %3317, %3307 ]
  %3385 = phi float [ %3296, %3291 ], [ %3374, %3352 ], [ %3296, %3350 ], [ %3348, %3337 ], [ %3318, %3307 ]
  %3386 = phi float [ %3297, %3291 ], [ %3379, %3352 ], [ %3297, %3350 ], [ %3349, %3337 ], [ %3319, %3307 ]
  %3387 = phi float [ %2706, %3291 ], [ %2706, %3352 ], [ %2706, %3350 ], [ %2706, %3337 ], [ %3322, %3307 ]
  %3388 = phi float [ %2710, %3291 ], [ %2710, %3352 ], [ %2710, %3350 ], [ %2710, %3337 ], [ %3334, %3307 ]
  %3389 = and i32 %3299, 12
  %3390 = icmp eq i32 %3389, 12
  br i1 %3390, label %3473, label %3391

; <label>:3391                                    ; preds = %3380
  %3392 = and i32 %3299, 2097184
  %3393 = icmp eq i32 %3392, 2097184
  %3394 = select i1 %3393, float %2893, float 0.000000e+00
  %3395 = and i32 %3299, 4194336
  %3396 = icmp eq i32 %3395, 4194336
  %3397 = select i1 %3396, float %2893, float 0.000000e+00
  %3398 = and i32 %3299, 8388640
  %3399 = icmp eq i32 %3398, 8388640
  %3400 = select i1 %3399, float %2893, float 0.000000e+00
  %3401 = and i32 %3299, 4096
  %3402 = icmp ne i32 %3401, 0
  %3403 = select i1 %3402, float %2893, float 0.000000e+00
  %3404 = icmp eq i32 %3389, 0
  br i1 %3404, label %3405, label %3421

; <label>:3405                                    ; preds = %3391
  %3406 = fsub fast float %3194, %2698
  %3407 = fsub fast float %3195, %2699
  %3408 = fmul fast float %3394, %3406
  %3409 = fmul fast float %3394, %3407
  %3410 = fadd fast float %3408, %2698
  %3411 = fadd fast float %3409, %2699
  %3412 = fsub fast float %3196, %2708
  %3413 = fmul fast float %3397, %3412
  %3414 = fadd fast float %3413, %2708
  %3415 = fsub fast float %3193, %2707
  %3416 = fmul fast float %3400, %3415
  %3417 = fadd fast float %3416, %2707
  %3418 = fsub fast float %3269, %2709
  %3419 = fmul fast float %3403, %3418
  %3420 = fadd fast float %3419, %2709
  br label %3473

; <label>:3421                                    ; preds = %3391
  %3422 = icmp eq i32 %3389, 4
  br i1 %3422, label %3423, label %3457

; <label>:3423                                    ; preds = %3421
  %3424 = fmul fast float %3394, %3194
  %3425 = fmul fast float %3394, %3195
  %3426 = fadd fast float %3424, %2698
  %3427 = fadd fast float %3425, %2699
  %3428 = call float @dx.op.binary.f32(i32 36, float %2708, float %3196)  ; FMin(a,b)
  %3429 = fsub fast float %3428, %2708
  %3430 = fmul fast float %3429, %3397
  %3431 = fadd fast float %3430, %2708
  %3432 = fadd fast float %3193, %2707
  %3433 = fmul fast float %3432, 0x3FF337FAE0000000
  %3434 = fmul fast float %2707, %2707
  %3435 = fmul fast float %3193, %3193
  %3436 = fadd fast float %3435, %3434
  %3437 = fmul fast float %3436, 0x3FE5152B00000000
  %3438 = fmul fast float %2707, 0xBFCC1F85E0000000
  %3439 = fmul fast float %3438, %3193
  %3440 = fadd fast float %3439, 0xBFE1363700000000
  %3441 = fadd fast float %3440, %3433
  %3442 = fsub fast float %3441, %3437
  %3443 = fmul fast float %3432, 0x3FBA6F0D00000000
  %3444 = fmul fast float %3436, 0x3FD0432880000000
  %3445 = fmul fast float %2707, 0xBFEF110800000000
  %3446 = fmul fast float %3445, %3193
  %3447 = fadd fast float %3446, 1.000000e+00
  %3448 = fsub fast float %3447, %3443
  %3449 = fadd fast float %3448, %3444
  %3450 = fdiv fast float %3442, %3449
  %3451 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3452 = fsub fast float %3451, %2707
  %3453 = fmul fast float %3452, %3400
  %3454 = fadd fast float %3453, %2707
  %3455 = fmul fast float %3403, %3269
  %3456 = fadd fast float %3455, %2709
  br label %3473

; <label>:3457                                    ; preds = %3421
  %3458 = icmp eq i32 %3389, 8
  br i1 %3458, label %3459, label %3473

; <label>:3459                                    ; preds = %3457
  %3460 = fmul fast float %3394, %3194
  %3461 = fmul fast float %3394, %3195
  %3462 = fadd fast float %3460, %2698
  %3463 = fadd fast float %3461, %2699
  %3464 = call float @dx.op.binary.f32(i32 36, float %2708, float %3196)  ; FMin(a,b)
  %3465 = fsub fast float %3464, %2708
  %3466 = fmul fast float %3465, %3397
  %3467 = fadd fast float %3466, %2708
  %3468 = fsub fast float %3193, %2707
  %3469 = fmul fast float %3400, %3468
  %3470 = fadd fast float %3469, %2707
  %3471 = fmul fast float %3403, %3269
  %3472 = fadd fast float %3471, %2709
  br label %3473

; <label>:3473                                    ; preds = %3459, %3457, %3423, %3405, %3380, %2892, %2711, %2697
  %3474 = phi float [ %2698, %3380 ], [ %2698, %2892 ], [ %2698, %2697 ], [ %2698, %2711 ], [ %3410, %3405 ], [ %3426, %3423 ], [ %2698, %3457 ], [ %3462, %3459 ]
  %3475 = phi float [ %2699, %3380 ], [ %2699, %2892 ], [ %2699, %2697 ], [ %2699, %2711 ], [ %3411, %3405 ], [ %3427, %3423 ], [ %2699, %3457 ], [ %3463, %3459 ]
  %3476 = phi float [ %3381, %3380 ], [ %2700, %2892 ], [ %2700, %2697 ], [ %2700, %2711 ], [ %3381, %3405 ], [ %3381, %3423 ], [ %3381, %3457 ], [ %3381, %3459 ]
  %3477 = phi float [ %3382, %3380 ], [ %2701, %2892 ], [ %2701, %2697 ], [ %2701, %2711 ], [ %3382, %3405 ], [ %3382, %3423 ], [ %3382, %3457 ], [ %3382, %3459 ]
  %3478 = phi float [ %3383, %3380 ], [ %2702, %2892 ], [ %2702, %2697 ], [ %2702, %2711 ], [ %3383, %3405 ], [ %3383, %3423 ], [ %3383, %3457 ], [ %3383, %3459 ]
  %3479 = phi float [ %3384, %3380 ], [ %2703, %2892 ], [ %2703, %2697 ], [ %2703, %2711 ], [ %3384, %3405 ], [ %3384, %3423 ], [ %3384, %3457 ], [ %3384, %3459 ]
  %3480 = phi float [ %3385, %3380 ], [ %2704, %2892 ], [ %2704, %2697 ], [ %2704, %2711 ], [ %3385, %3405 ], [ %3385, %3423 ], [ %3385, %3457 ], [ %3385, %3459 ]
  %3481 = phi float [ %3386, %3380 ], [ %2705, %2892 ], [ %2705, %2697 ], [ %2705, %2711 ], [ %3386, %3405 ], [ %3386, %3423 ], [ %3386, %3457 ], [ %3386, %3459 ]
  %3482 = phi float [ %3387, %3380 ], [ %2706, %2892 ], [ %2706, %2697 ], [ %2706, %2711 ], [ %3387, %3405 ], [ %3387, %3423 ], [ %3387, %3457 ], [ %3387, %3459 ]
  %3483 = phi float [ %2707, %3380 ], [ %2707, %2892 ], [ %2707, %2697 ], [ %2707, %2711 ], [ %3417, %3405 ], [ %3454, %3423 ], [ %2707, %3457 ], [ %3470, %3459 ]
  %3484 = phi float [ %2708, %3380 ], [ %2708, %2892 ], [ %2708, %2697 ], [ %2708, %2711 ], [ %3414, %3405 ], [ %3431, %3423 ], [ %2708, %3457 ], [ %3467, %3459 ]
  %3485 = phi float [ %2709, %3380 ], [ %2709, %2892 ], [ %2709, %2697 ], [ %2709, %2711 ], [ %3420, %3405 ], [ %3456, %3423 ], [ %2709, %3457 ], [ %3472, %3459 ]
  %3486 = phi float [ %3388, %3380 ], [ %2710, %2892 ], [ %2710, %2697 ], [ %2710, %2711 ], [ %3388, %3405 ], [ %3388, %3423 ], [ %3388, %3457 ], [ %3388, %3459 ]
  %3487 = add i32 %30, 360
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.i32 %3488, 1
  %3491 = bitcast i32 %3489 to float
  %3492 = bitcast i32 %3490 to float
  %3493 = fcmp fast oge float %3491, 0.000000e+00
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = select i1 %3493, float %3491, float %3495
  %3497 = fadd fast float %3496, %178
  %3498 = fmul fast float %3492, %179
  %3499 = add i32 %30, 488
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = add i32 %3501, 0
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3503, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = fmul fast float %3498, %3505
  %3507 = fadd fast float %3497, %3506
  %3508 = and i32 %170, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %170, 16
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = and i32 %171, 65535
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = fmul fast float %3509, %3479
  %3515 = fmul fast float %3511, %3480
  %3516 = fmul fast float %3513, %3481
  %3517 = shl i32 %172, 4
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = lshr i32 %172, 7
  %3521 = and i32 %3520, 32752
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = lshr i32 %172, 22
  %3524 = shl nuw nsw i32 %3523, 5
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = and i32 %173, 65535
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = fmul fast float %3519, %3476
  %3529 = fmul fast float %3528, %3527
  %3530 = fmul fast float %3522, %3477
  %3531 = fmul fast float %3530, %3527
  %3532 = fmul fast float %3525, %3478
  %3533 = fmul fast float %3532, %3527
  %3534 = call float @dx.op.dot2.f32(i32 54, float %3474, float %3475, float %3474, float %3475)  ; Dot2(ax,ay,bx,by)
  %3535 = fmul fast float %3534, 0x3FE3333340000000
  %3536 = fsub fast float 1.000000e+00, %3535
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3474, float %3475, float %3536, float %3474, float %3475, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 25, float %3537)  ; Rsqrt(value)
  %3539 = fmul fast float %3538, %3474
  %3540 = fmul fast float %3538, %3475
  %3541 = fmul fast float %3536, %3538
  %3542 = fmul fast float %3541, %84
  %3543 = fmul fast float %3541, %85
  %3544 = fmul fast float %3541, %86
  %3545 = fmul fast float %3539, %58
  %3546 = fmul fast float %3539, %59
  %3547 = fmul fast float %3539, %60
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = fmul fast float %96, %3540
  %3552 = fmul fast float %97, %3540
  %3553 = fmul fast float %98, %3540
  %3554 = fadd fast float %3548, %3551
  %3555 = fadd fast float %3549, %3552
  %3556 = fadd fast float %3550, %3553
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3554, float %3555, float %3556, float %3554, float %3555, float %3556)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = call float @dx.op.unary.f32(i32 25, float %3557)  ; Rsqrt(value)
  %3559 = fmul fast float %3554, %3558
  %3560 = fmul fast float %3555, %3558
  %3561 = fmul fast float %3556, %3558
  %3562 = fadd fast float %3482, 0xBFB99999A0000000
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3563, 0x3FF1C71C80000000
  %3565 = call float @dx.op.binary.f32(i32 36, float %3482, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3566 = fsub fast float 1.000000e+00, %3564
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3567, %3514
  %3569 = fmul fast float %3567, %3515
  %3570 = fmul fast float %3567, %3516
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = fmul fast float %3564, %3514
  %3575 = fmul fast float %3564, %3515
  %3576 = fmul fast float %3564, %3516
  %3577 = fadd fast float %3574, %3565
  %3578 = fadd fast float %3575, %3565
  %3579 = fadd fast float %3576, %3565
  %3580 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.i32 %3584, 3
  %3586 = and i32 %3585, 8
  %3587 = icmp ne i32 %3586, 0
  %3588 = call float @dx.op.binary.f32(i32 35, float %3571, float %3514)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3572, float %3514)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3573, float %3514)  ; FMax(a,b)
  %3591 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3592 = select i1 %216, float %3514, float %3571
  %3593 = select i1 %216, float %3591, float %3572
  %3594 = select i1 %216, float 1.000000e+00, float %3573
  %3595 = select i1 %3587, float %3588, float %3592
  %3596 = select i1 %3587, float %3589, float %3593
  %3597 = select i1 %3587, float %3590, float %3594
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3602 = fadd fast float %3599, %164
  %3603 = fadd fast float %3600, %165
  %3604 = fadd fast float %3601, %166
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = fsub fast float %3602, %3606
  %3609 = fsub fast float %3603, %3607
  %3610 = fmul fast float %3608, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fadd fast float %3610, %3611
  %3613 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3615 = fcmp fast olt float %3613, %3614
  br i1 %3615, label %3616, label %3683

; <label>:3616                                    ; preds = %3473
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 0
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3624 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3625 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3626 = extractvalue %dx.types.CBufRet.f32 %3617, 3
  %3627 = extractvalue %dx.types.CBufRet.f32 %3619, 3
  %3628 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3629 = fadd fast float %3626, %3602
  %3630 = fadd fast float %3627, %3603
  %3631 = fadd fast float %3628, %3604
  %3632 = fmul fast float %3629, %3618
  %3633 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3620, float %3632)  ; FMad(a,b,c)
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3622, float %3633)  ; FMad(a,b,c)
  %3635 = fmul fast float %3629, %3623
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3624, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3631, float %3625, float %3636)  ; FMad(a,b,c)
  %3638 = fsub fast float %3634, %3626
  %3639 = fsub fast float %3637, %3627
  %3640 = fsub fast float %3638, %3606
  %3641 = fadd fast float %3640, %3614
  %3642 = fsub fast float %3639, %3607
  %3643 = fadd fast float %3642, %3614
  %3644 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3645 = fmul fast float %3641, %3644
  %3646 = fmul fast float %3643, %3644
  %3647 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3648 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3649 = fsub fast float 1.000000e+00, %3647
  %3650 = fsub fast float 1.000000e+00, %3648
  %3651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %26, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = fcmp fast ugt float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %3957

; <label>:3654                                    ; preds = %3616
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3657 = fmul fast float %3656, %3652
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3659 = fadd fast float %3658, %3657
  %3660 = extractvalue %dx.types.CBufRet.f32 %3621, 2
  %3661 = fadd fast float %3659, %3628
  %3662 = fmul fast float %3634, %3622
  %3663 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3625, float %3662)  ; FMad(a,b,c)
  %3664 = call float @dx.op.tertiary.f32(i32 46, float %3661, float %3660, float %3663)  ; FMad(a,b,c)
  %3665 = fsub fast float %3664, %3628
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3668 = fsub fast float %3665, %3667
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %26, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %26, float %3649, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = fadd fast float %3674, %3670
  %3678 = fmul fast float %3677, 0x3F847AE140000000
  %3679 = fadd fast float %3675, %3671
  %3680 = fmul fast float %3679, 0x3F847AE140000000
  %3681 = fadd fast float %3676, %3672
  %3682 = fmul fast float %3681, 0x3F847AE140000000
  br label %3957

; <label>:3683                                    ; preds = %3473
  %3684 = and i32 %195, 1
  %3685 = icmp eq i32 %3684, 0
  br i1 %3685, label %3957, label %3686

; <label>:3686                                    ; preds = %3683
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3696 = extractvalue %dx.types.CBufRet.f32 %3687, 3
  %3697 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3698 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3699 = fadd fast float %3696, %3602
  %3700 = fadd fast float %3697, %3603
  %3701 = fadd fast float %3698, %3604
  %3702 = fmul fast float %3699, %3688
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3690, float %3702)  ; FMad(a,b,c)
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3692, float %3703)  ; FMad(a,b,c)
  %3705 = fmul fast float %3699, %3693
  %3706 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3694, float %3705)  ; FMad(a,b,c)
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3701, float %3695, float %3706)  ; FMad(a,b,c)
  %3708 = fsub fast float %3704, %3696
  %3709 = fsub fast float %3707, %3697
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3714 = extractvalue %dx.types.CBufRet.f32 %3710, 3
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.i32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.i32 %3717, 1
  %3720 = udiv i32 %3719, %3718
  %3721 = fsub fast float %3708, %3711
  %3722 = fsub fast float %3709, %3712
  %3723 = call float @dx.op.binary.f32(i32 35, float %3721, float 0.000000e+00)  ; FMax(a,b)
  %3724 = call float @dx.op.binary.f32(i32 35, float %3722, float 0.000000e+00)  ; FMax(a,b)
  %3725 = call float @dx.op.binary.f32(i32 36, float %3723, float %3713)  ; FMin(a,b)
  %3726 = call float @dx.op.binary.f32(i32 36, float %3724, float %3714)  ; FMin(a,b)
  %3727 = add i32 %3718, -1
  %3728 = add i32 %3720, -1
  %3729 = fmul fast float %3725, %3716
  %3730 = fmul fast float %3726, %3716
  %3731 = fptoui float %3729 to i32
  %3732 = fptoui float %3730 to i32
  %3733 = call i32 @dx.op.binary.i32(i32 40, i32 %3731, i32 %3727)  ; UMin(a,b)
  %3734 = call i32 @dx.op.binary.i32(i32 40, i32 %3732, i32 %3728)  ; UMin(a,b)
  %3735 = mul i32 %3734, %3718
  %3736 = add i32 %3735, %3733
  %3737 = shl i32 %3736, 2
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = icmp eq i32 %3739, -1
  br i1 %3740, label %3957, label %3741

; <label>:3741                                    ; preds = %3686
  %3742 = mul i32 %3739, 148
  %3743 = add i32 %3742, 4
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = add i32 %3742, 8
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = add i32 %3742, 36
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = add i32 %3742, 60
  %3753 = add i32 %3742, 92
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = add i32 %3742, 116
  %3757 = fsub fast float %3708, %3745
  %3758 = fsub fast float %3709, %3748
  %3759 = fmul fast float %3716, %3757
  %3760 = fmul fast float %3716, %3758
  %3761 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3763 = fsub fast float 1.000000e+00, %3762
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3766 = call float @dx.op.unary.f32(i32 83, float %3761)  ; DerivCoarseX(value)
  %3767 = call float @dx.op.unary.f32(i32 83, float %3763)  ; DerivCoarseX(value)
  %3768 = call float @dx.op.unary.f32(i32 84, float %3761)  ; DerivCoarseY(value)
  %3769 = call float @dx.op.unary.f32(i32 84, float %3763)  ; DerivCoarseY(value)
  %3770 = fmul fast float %3766, %3765
  %3771 = fmul fast float %3767, %3765
  %3772 = fmul fast float %3768, %3765
  %3773 = fmul fast float %3769, %3765
  %3774 = call float @dx.op.dot2.f32(i32 54, float %3772, float %3773, float %3772, float %3773)  ; Dot2(ax,ay,bx,by)
  %3775 = call float @dx.op.dot2.f32(i32 54, float %3770, float %3771, float %3770, float %3771)  ; Dot2(ax,ay,bx,by)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3775, float %3774)  ; FMax(a,b)
  %3777 = call float @dx.op.unary.f32(i32 23, float %3776)  ; Log(value)
  %3778 = fmul fast float %3777, 5.000000e-01
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3781 = fadd fast float %3780, %3778
  %3782 = call float @dx.op.binary.f32(i32 35, float %3781, float 0.000000e+00)  ; FMax(a,b)
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3785 = fadd fast float %3784, %3782
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3788 = fadd fast float %3785, %3787
  %3789 = add i32 %3755, 0
  %3790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3791 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3790, i32 0)  ; GetDimensions(handle,mipLevel)
  %3792 = extractvalue %dx.types.Dimensions %3791, 0
  %3793 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3792)  ; FirstbitLo(value)
  %3794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.i32 %3794, 1
  %3796 = sub nsw i32 %3795, %3793
  %3797 = sitofp i32 %3796 to float
  %3798 = fsub fast float %3788, %3797
  %3799 = call float @dx.op.binary.f32(i32 35, float %3798, float 0.000000e+00)  ; FMax(a,b)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3790, %dx.types.Handle %25, float %3761, float %3763, float %3751, float undef, i32 0, i32 0, i32 undef, float %3799)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = fcmp ule float %3801, 0x3FE0101020000000
  %3803 = extractvalue %dx.types.CBufRet.i32 %3794, 0
  %3804 = and i32 %3803, 128
  %3805 = icmp ne i32 %3804, 0
  %3806 = and i1 %3802, %3805
  br i1 %3806, label %3957, label %3807

; <label>:3807                                    ; preds = %3741
  %3808 = add i32 %3742, 20
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = add i32 %3742, 24
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = add i32 %3742, 40
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = add i32 %3742, 96
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3822 = fmul fast float %3821, %3761
  %3823 = fmul fast float %3821, %3763
  %3824 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3825 = fadd fast float %3822, %3824
  %3826 = fadd fast float %3823, %3824
  %3827 = add i32 %3819, 0
  %3828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3829 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3828, i32 0)  ; GetDimensions(handle,mipLevel)
  %3830 = extractvalue %dx.types.Dimensions %3829, 0
  %3831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3830)  ; FirstbitLo(value)
  %3832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.i32 %3832, 1
  %3834 = sub nsw i32 %3833, %3831
  %3835 = sitofp i32 %3834 to float
  %3836 = fsub fast float %3785, %3835
  %3837 = call float @dx.op.binary.f32(i32 35, float %3836, float 0.000000e+00)  ; FMax(a,b)
  %3838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3828, %dx.types.Handle %25, float %3825, float %3826, float %3816, float undef, i32 0, i32 0, i32 undef, float %3837)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = fmul fast float %3839, %3810
  %3841 = fadd fast float %3840, %3813
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.CBufRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.CBufRet.f32 %3842, 2
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3850 = extractvalue %dx.types.CBufRet.f32 %3842, 3
  %3851 = fadd fast float %3847, %3708
  %3852 = fadd fast float %3849, %3709
  %3853 = fadd fast float %3841, %3850
  %3854 = fmul fast float %3851, %3843
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3844, float %3854)  ; FMad(a,b,c)
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3853, float %3845, float %3855)  ; FMad(a,b,c)
  %3857 = fsub fast float %3856, %3850
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3860 = fsub fast float %3857, %3859
  %3861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.i32 %3861, 0
  %3863 = call i32 @dx.op.binary.i32(i32 40, i32 %3739, i32 %3862)  ; UMin(a,b)
  %3864 = mul i32 %3863, 36
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = add i32 %3864, 4
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = fmul fast float %3869, %3761
  %3871 = fmul fast float %3869, %3763
  %3872 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3873 = fadd fast float %3870, %3872
  %3874 = fadd fast float %3871, %3872
  %3875 = icmp eq i32 %3866, 0
  br i1 %3875, label %3944, label %3876

; <label>:3876                                    ; preds = %3807
  br label %3877

; <label>:3877                                    ; preds = %3934, %3876
  %3878 = phi float [ %3935, %3934 ], [ 0.000000e+00, %3876 ]
  %3879 = phi float [ %3936, %3934 ], [ 0.000000e+00, %3876 ]
  %3880 = phi float [ %3937, %3934 ], [ 0.000000e+00, %3876 ]
  %3881 = phi float [ %3938, %3934 ], [ 0.000000e+00, %3876 ]
  %3882 = phi float [ %3939, %3934 ], [ 0.000000e+00, %3876 ]
  %3883 = phi float [ %3940, %3934 ], [ 0.000000e+00, %3876 ]
  %3884 = phi i32 [ %3941, %3934 ], [ 0, %3876 ]
  %3885 = shl i32 %3884, 2
  %3886 = add i32 %3752, %3885
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = add i32 %3756, %3885
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %3891, 0
  %3893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3892, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3894 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3893, i32 0)  ; GetDimensions(handle,mipLevel)
  %3895 = extractvalue %dx.types.Dimensions %3894, 0
  %3896 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3895)  ; FirstbitLo(value)
  %3897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.i32 %3897, 1
  %3899 = sub nsw i32 %3898, %3896
  %3900 = sitofp i32 %3899 to float
  %3901 = fsub fast float %3785, %3900
  %3902 = call float @dx.op.binary.f32(i32 35, float %3901, float 0.000000e+00)  ; FMax(a,b)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3893, %dx.types.Handle %25, float %3873, float %3874, float %3888, float undef, i32 0, i32 0, i32 undef, float %3902)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = fcmp fast ogt float %3904, 0.000000e+00
  br i1 %3905, label %3906, label %3934

; <label>:3906                                    ; preds = %3877
  %3907 = add i32 %3867, %3885
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, 32767
  %3911 = mul nuw nsw i32 %3910, 928
  %3912 = add nuw nsw i32 %3911, 48
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = add nuw nsw i32 %3911, 60
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = fmul fast float %3914, %3904
  %3923 = fmul fast float %3915, %3904
  %3924 = fmul fast float %3916, %3904
  %3925 = fadd fast float %3922, %3878
  %3926 = fadd fast float %3923, %3879
  %3927 = fadd fast float %3924, %3880
  %3928 = fmul fast float %3919, %3904
  %3929 = fmul fast float %3920, %3904
  %3930 = fmul fast float %3921, %3904
  %3931 = fadd fast float %3928, %3881
  %3932 = fadd fast float %3929, %3882
  %3933 = fadd fast float %3930, %3883
  br label %3934

; <label>:3934                                    ; preds = %3906, %3877
  %3935 = phi float [ %3925, %3906 ], [ %3878, %3877 ]
  %3936 = phi float [ %3926, %3906 ], [ %3879, %3877 ]
  %3937 = phi float [ %3927, %3906 ], [ %3880, %3877 ]
  %3938 = phi float [ %3931, %3906 ], [ %3881, %3877 ]
  %3939 = phi float [ %3932, %3906 ], [ %3882, %3877 ]
  %3940 = phi float [ %3933, %3906 ], [ %3883, %3877 ]
  %3941 = add nuw i32 %3884, 1
  %3942 = icmp eq i32 %3941, %3866
  br i1 %3942, label %3943, label %3877

; <label>:3943                                    ; preds = %3934
  br label %3944

; <label>:3944                                    ; preds = %3943, %3807
  %3945 = phi float [ 0.000000e+00, %3807 ], [ %3935, %3943 ]
  %3946 = phi float [ 0.000000e+00, %3807 ], [ %3936, %3943 ]
  %3947 = phi float [ 0.000000e+00, %3807 ], [ %3937, %3943 ]
  %3948 = phi float [ 0.000000e+00, %3807 ], [ %3938, %3943 ]
  %3949 = phi float [ 0.000000e+00, %3807 ], [ %3939, %3943 ]
  %3950 = phi float [ 0.000000e+00, %3807 ], [ %3940, %3943 ]
  %3951 = fadd fast float %3948, %3945
  %3952 = fmul fast float %3951, 0x3F847AE140000000
  %3953 = fadd fast float %3949, %3946
  %3954 = fmul fast float %3953, 0x3F847AE140000000
  %3955 = fadd fast float %3950, %3947
  %3956 = fmul fast float %3955, 0x3F847AE140000000
  br label %3957

; <label>:3957                                    ; preds = %3944, %3741, %3686, %3683, %3654, %3616
  %3958 = phi float [ %3668, %3654 ], [ -1.310720e+05, %3616 ], [ %3860, %3944 ], [ -1.310720e+05, %3686 ], [ -1.310720e+05, %3741 ], [ -1.310720e+05, %3683 ]
  %3959 = phi float [ %3678, %3654 ], [ 0.000000e+00, %3616 ], [ %3952, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3960 = phi float [ %3680, %3654 ], [ 0.000000e+00, %3616 ], [ %3954, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3961 = phi float [ %3682, %3654 ], [ 0.000000e+00, %3616 ], [ %3956, %3944 ], [ 0.000000e+00, %3686 ], [ 0.000000e+00, %3741 ], [ 0.000000e+00, %3683 ]
  %3962 = phi i1 [ true, %3654 ], [ false, %3616 ], [ true, %3944 ], [ false, %3686 ], [ false, %3741 ], [ false, %3683 ]
  %3963 = and i32 %195, 3
  %3964 = icmp eq i32 %3963, 1
  %3965 = select i1 %3964, float 1.000000e+00, float 0.000000e+00
  %3966 = fsub fast float %3958, %166
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = select i1 %3962, float %3967, float 1.000000e+00
  %3969 = fmul fast float %3968, %3965
  %3970 = icmp eq i32 %3963, 3
  %3971 = select i1 %3970, float 1.000000e+00, float %3969
  %3972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3971)  ; FMax(a,b)
  %3973 = fcmp fast olt float %3971, 1.000000e+00
  %3974 = fcmp uge float %47, 0.000000e+00
  %3975 = and i1 %3974, %3973
  br i1 %3975, label %3976, label %3986

; <label>:3976                                    ; preds = %3957
  %3977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %25, float %47, float %48, float %49, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.ResRet.f32 %3977, 1
  %3980 = extractvalue %dx.types.ResRet.f32 %3977, 2
  %3981 = fadd fast float %3978, %3972
  %3982 = fcmp ule float %46, 0.000000e+00
  %3983 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = select i1 %3982, float %3983, float 1.000000e+00
  %3985 = fmul fast float %3984, %3980
  br label %3986

; <label>:3986                                    ; preds = %3976, %3957
  %3987 = phi float [ %3981, %3976 ], [ %3972, %3957 ]
  %3988 = phi float [ %3979, %3976 ], [ 0.000000e+00, %3957 ]
  %3989 = phi float [ %3985, %3976 ], [ 0.000000e+00, %3957 ]
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = fcmp fast une float %3991, 0.000000e+00
  %3994 = fcmp fast une float %3992, 0.000000e+00
  %3995 = or i1 %3993, %3994
  br i1 %3995, label %3996, label %4555

; <label>:3996                                    ; preds = %3986
  br i1 %3993, label %3997, label %4270

; <label>:3997                                    ; preds = %3996
  %3998 = call float @dx.op.unary.f32(i32 23, float %3484)  ; Log(value)
  %3999 = fmul fast float %3998, 4.000000e+00
  %4000 = call float @dx.op.unary.f32(i32 21, float %3999)  ; Exp(value)
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %33
  %4004 = fmul fast float %4002, %34
  %4005 = fmul fast float %4002, %35
  %4006 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4007 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4009 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4010 = call float @dx.op.unary.f32(i32 23, float %4007)  ; Log(value)
  %4011 = call float @dx.op.unary.f32(i32 23, float %4008)  ; Log(value)
  %4012 = fmul fast float %4009, 4.000000e+00
  %4013 = fmul fast float %4010, 4.000000e+00
  %4014 = fmul fast float %4011, 4.000000e+00
  %4015 = call float @dx.op.unary.f32(i32 21, float %4012)  ; Exp(value)
  %4016 = call float @dx.op.unary.f32(i32 21, float %4013)  ; Exp(value)
  %4017 = call float @dx.op.unary.f32(i32 21, float %4014)  ; Exp(value)
  %4018 = fadd fast float %4016, %4015
  %4019 = fadd fast float %4018, %4017
  %4020 = fdiv fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4020, %4015
  %4022 = fcmp fast ogt float %43, 0.000000e+00
  %4023 = fcmp fast ogt float %44, 0.000000e+00
  %4024 = fcmp fast ogt float %45, 0.000000e+00
  %4025 = fcmp fast olt float %43, 0.000000e+00
  %4026 = fcmp fast olt float %44, 0.000000e+00
  %4027 = fcmp fast olt float %45, 0.000000e+00
  %4028 = zext i1 %4022 to i32
  %4029 = zext i1 %4023 to i32
  %4030 = zext i1 %4024 to i32
  %4031 = zext i1 %4025 to i32
  %4032 = zext i1 %4026 to i32
  %4033 = zext i1 %4027 to i32
  %4034 = sub nsw i32 %4028, %4031
  %4035 = sub nsw i32 %4029, %4032
  %4036 = sub nsw i32 %4030, %4033
  %4037 = call float @dx.op.unary.f32(i32 83, float %4003)  ; DerivCoarseX(value)
  %4038 = call float @dx.op.unary.f32(i32 83, float %4004)  ; DerivCoarseX(value)
  %4039 = call float @dx.op.unary.f32(i32 83, float %4005)  ; DerivCoarseX(value)
  %4040 = call float @dx.op.unary.f32(i32 84, float %4003)  ; DerivCoarseY(value)
  %4041 = call float @dx.op.unary.f32(i32 84, float %4004)  ; DerivCoarseY(value)
  %4042 = call float @dx.op.unary.f32(i32 84, float %4005)  ; DerivCoarseY(value)
  %4043 = fcmp fast ole float %227, %4021
  %4044 = fmul fast float %4020, %4018
  %4045 = fcmp fast ole float %227, %4044
  %4046 = select i1 %4045, float %4005, float %4003
  %4047 = select i1 %4045, float %4003, float %4004
  %4048 = select i1 %4043, float %4004, float %4046
  %4049 = select i1 %4043, float %4005, float %4047
  %4050 = select i1 %4045, float %4039, float %4037
  %4051 = select i1 %4045, float %4037, float %4038
  %4052 = select i1 %4043, float %4038, float %4050
  %4053 = select i1 %4043, float %4039, float %4051
  %4054 = select i1 %4045, float %4042, float %4040
  %4055 = select i1 %4045, float %4040, float %4041
  %4056 = select i1 %4043, float %4041, float %4054
  %4057 = select i1 %4043, float %4042, float %4055
  %4058 = call float @dx.op.unary.f32(i32 27, float %4048)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4060 = fptosi float %4058 to i32
  %4061 = fptosi float %4059 to i32
  %4062 = xor i32 %4061, %4060
  %4063 = sitofp i32 %4062 to float
  %4064 = fptosi float %4063 to i32
  %4065 = sitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3FE3C6EF40000000
  %4067 = frem fast float %4058, 2.560000e+02
  %4068 = frem fast float %4059, 2.560000e+02
  %4069 = fptoui float %4067 to i32
  %4070 = fptoui float %4068 to i32
  %4071 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4069, i32 %4070, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = fadd fast float %4072, %4066
  %4076 = fadd fast float %4073, %4066
  %4077 = fadd fast float %4074, %4066
  %4078 = call float @dx.op.unary.f32(i32 22, float %4075)  ; Frc(value)
  %4079 = call float @dx.op.unary.f32(i32 22, float %4076)  ; Frc(value)
  %4080 = call float @dx.op.unary.f32(i32 22, float %4077)  ; Frc(value)
  %4081 = fmul fast float %4080, 0x401921FB60000000
  %4082 = call float @dx.op.unary.f32(i32 13, float %4081)  ; Sin(value)
  %4083 = call float @dx.op.unary.f32(i32 12, float %4081)  ; Cos(value)
  %4084 = fsub fast float -0.000000e+00, %4083
  %4085 = fmul fast float %4083, %4048
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4049, float %4085)  ; FMad(a,b,c)
  %4087 = fmul fast float %4082, %4048
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4049, float %4087)  ; FMad(a,b,c)
  %4089 = fadd fast float %4086, %4078
  %4090 = fadd fast float %4088, %4079
  %4091 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4092 = bitcast float %4091 to i32
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4132, label %4094

; <label>:4094                                    ; preds = %3997
  %4095 = add i32 %4092, 0
  %4096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4096, %dx.types.Handle %74, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4102 = fsub fast float 1.000000e+00, %3991
  %4103 = call float @dx.op.binary.f32(i32 35, float %4102, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4104 = bitcast float %3991 to i32
  %4105 = sitofp i32 %4104 to float
  %4106 = fadd fast float %4105, 0xC1CFBF8940000000
  %4107 = fmul fast float %4101, %4106
  %4108 = fadd fast float %4107, 0x41CFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = bitcast float %4103 to i32
  %4112 = sitofp i32 %4111 to float
  %4113 = fadd fast float %4112, 0xC1CFBF8940000000
  %4114 = fmul fast float %4113, %4101
  %4115 = fadd fast float %4114, 0x41CFBF8940000000
  %4116 = fptosi float %4115 to i32
  %4117 = bitcast i32 %4116 to float
  %4118 = fmul fast float %4110, %4100
  %4119 = fmul fast float %4117, %4100
  %4120 = fsub fast float %4103, %4118
  %4121 = fadd fast float %4119, %4103
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = fsub fast float %4098, %4122
  %4125 = fsub fast float %4123, %4122
  %4126 = bitcast float %4125 to i32
  %4127 = sub nsw i32 2129859010, %4126
  %4128 = bitcast i32 %4127 to float
  %4129 = fmul fast float %4128, %4124
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fcmp fast olt float %4130, 0x3F70101020000000
  br i1 %4131, label %4270, label %4132

; <label>:4132                                    ; preds = %4094, %3997
  %4133 = phi float [ %4130, %4094 ], [ %3991, %3997 ]
  %4134 = fmul fast float %4133, %4000
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4137 = extractvalue %dx.types.CBufRet.i32 %4135, 0
  %4138 = add i32 %4137, 0
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4139, %dx.types.Handle %73, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = and i32 %4136, 255
  %4146 = uitofp i32 %4145 to float
  %4147 = lshr i32 %4136, 8
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = fmul fast float %4144, %4146
  %4151 = fadd fast float %4150, %4149
  %4152 = fmul fast float %4151, 0x3F70101000000000
  %4153 = fadd fast float %4152, 0xBFB99999A0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, 0x3FF1C71C80000000
  %4156 = call float @dx.op.binary.f32(i32 36, float %4152, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4158, %4141
  %4160 = fmul fast float %4158, %4142
  %4161 = fmul fast float %4158, %4143
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4155, %4141
  %4166 = fmul fast float %4155, %4142
  %4167 = fmul fast float %4155, %4143
  %4168 = fadd fast float %4165, %4156
  %4169 = fadd fast float %4166, %4156
  %4170 = fadd fast float %4167, %4156
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.i32 %4174, 3
  %4176 = extractvalue %dx.types.CBufRet.i32 %4174, 2
  %4177 = add i32 %4176, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %73, float %4089, float %4090, float undef, float undef, i32 0, i32 0, i32 undef, float %4052, float %4053, float undef, float %4056, float %4057, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = and i32 %4175, 255
  %4185 = uitofp i32 %4184 to float
  %4186 = lshr i32 %4175, 8
  %4187 = and i32 %4186, 255
  %4188 = uitofp i32 %4187 to float
  %4189 = lshr i32 %4175, 16
  %4190 = and i32 %4189, 255
  %4191 = uitofp i32 %4190 to float
  %4192 = fmul fast float %4191, 0x3F70101000000000
  %4193 = fmul fast float %4180, %4185
  %4194 = fadd fast float %4193, %4188
  %4195 = fmul fast float %4194, 0x3F70101000000000
  %4196 = fadd fast float %4181, -5.000000e-01
  %4197 = fadd fast float %4183, -5.000000e-01
  %4198 = fmul fast float %4196, %4192
  %4199 = fmul fast float %4197, %4192
  %4200 = fadd fast float %4198, 5.000000e-01
  %4201 = fadd fast float %4199, 5.000000e-01
  %4202 = fmul fast float %4200, 2.000000e+00
  %4203 = fadd fast float %4202, -1.000000e+00
  %4204 = fmul fast float %4201, 2.000000e+00
  %4205 = fadd fast float %4204, -1.000000e+00
  %4206 = fadd fast float %4203, %4205
  %4207 = fmul fast float %4206, 5.000000e-01
  %4208 = fsub fast float %4203, %4205
  %4209 = fmul fast float %4208, 5.000000e-01
  %4210 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4211 = fsub fast float 1.000000e+00, %4210
  %4212 = call float @dx.op.unary.f32(i32 6, float %4209)  ; FAbs(value)
  %4213 = fsub fast float %4211, %4212
  %4214 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4209, float %4213, float %4207, float %4209, float %4213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4215 = call float @dx.op.unary.f32(i32 25, float %4214)  ; Rsqrt(value)
  %4216 = fmul fast float %4207, %4215
  %4217 = fmul fast float %4209, %4215
  %4218 = select i1 %4045, i32 %4035, i32 %4036
  %4219 = select i1 %4043, i32 %4034, i32 %4218
  %4220 = sitofp i32 %4219 to float
  %4221 = fmul fast float %4213, %4220
  %4222 = fmul fast float %4221, %4215
  %4223 = select i1 %4045, float %4222, float %4217
  %4224 = select i1 %4045, float %4217, float %4222
  %4225 = select i1 %4043, float %4222, float %4216
  %4226 = select i1 %4043, float %4217, float %4223
  %4227 = select i1 %4043, float %4216, float %4224
  %4228 = fsub fast float %4162, %3595
  %4229 = fsub fast float %4163, %3596
  %4230 = fsub fast float %4164, %3597
  %4231 = fmul fast float %4228, %4134
  %4232 = fmul fast float %4229, %4134
  %4233 = fmul fast float %4230, %4134
  %4234 = fadd fast float %4231, %3595
  %4235 = fadd fast float %4232, %3596
  %4236 = fadd fast float %4233, %3597
  %4237 = fsub fast float %4171, %3580
  %4238 = fsub fast float %4172, %3581
  %4239 = fsub fast float %4173, %3582
  %4240 = fmul fast float %4237, %4134
  %4241 = fmul fast float %4238, %4134
  %4242 = fmul fast float %4239, %4134
  %4243 = fadd fast float %4240, %3580
  %4244 = fadd fast float %4241, %3581
  %4245 = fadd fast float %4242, %3582
  %4246 = fadd fast float %4225, %3559
  %4247 = fadd fast float %4226, %3560
  %4248 = fadd fast float %4227, %3561
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 25, float %4249)  ; Rsqrt(value)
  %4251 = fmul fast float %4246, %4250
  %4252 = fmul fast float %4247, %4250
  %4253 = fmul fast float %4248, %4250
  %4254 = fsub fast float %4251, %3559
  %4255 = fsub fast float %4252, %3560
  %4256 = fsub fast float %4253, %3561
  %4257 = fmul fast float %4254, %4134
  %4258 = fmul fast float %4255, %4134
  %4259 = fmul fast float %4256, %4134
  %4260 = fadd fast float %4257, %3559
  %4261 = fadd fast float %4258, %3560
  %4262 = fadd fast float %4259, %3561
  %4263 = call float @dx.op.binary.f32(i32 36, float %3484, float %4182)  ; FMin(a,b)
  %4264 = fsub fast float %4263, %3484
  %4265 = fmul fast float %4264, %4134
  %4266 = fadd fast float %4265, %3484
  %4267 = fsub fast float %4195, %3583
  %4268 = fmul fast float %4267, %4134
  %4269 = fadd fast float %4268, %3583
  br label %4270

; <label>:4270                                    ; preds = %4132, %4094, %3996
  %4271 = phi float [ %4234, %4132 ], [ %3595, %4094 ], [ %3595, %3996 ]
  %4272 = phi float [ %4235, %4132 ], [ %3596, %4094 ], [ %3596, %3996 ]
  %4273 = phi float [ %4236, %4132 ], [ %3597, %4094 ], [ %3597, %3996 ]
  %4274 = phi float [ %4260, %4132 ], [ %3559, %4094 ], [ %3559, %3996 ]
  %4275 = phi float [ %4261, %4132 ], [ %3560, %4094 ], [ %3560, %3996 ]
  %4276 = phi float [ %4262, %4132 ], [ %3561, %4094 ], [ %3561, %3996 ]
  %4277 = phi float [ %4243, %4132 ], [ %3580, %4094 ], [ %3580, %3996 ]
  %4278 = phi float [ %4244, %4132 ], [ %3581, %4094 ], [ %3581, %3996 ]
  %4279 = phi float [ %4245, %4132 ], [ %3582, %4094 ], [ %3582, %3996 ]
  %4280 = phi float [ %4269, %4132 ], [ %3583, %4094 ], [ %3583, %3996 ]
  %4281 = phi float [ %4266, %4132 ], [ %3484, %4094 ], [ %3484, %3996 ]
  br i1 %3994, label %4282, label %4555

; <label>:4282                                    ; preds = %4270
  %4283 = call float @dx.op.unary.f32(i32 23, float %4281)  ; Log(value)
  %4284 = fmul fast float %4283, 4.000000e+00
  %4285 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fmul fast float %4287, %33
  %4289 = fmul fast float %4287, %34
  %4290 = fmul fast float %4287, %35
  %4291 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %4294 = call float @dx.op.unary.f32(i32 23, float %4291)  ; Log(value)
  %4295 = call float @dx.op.unary.f32(i32 23, float %4292)  ; Log(value)
  %4296 = call float @dx.op.unary.f32(i32 23, float %4293)  ; Log(value)
  %4297 = fmul fast float %4294, 4.000000e+00
  %4298 = fmul fast float %4295, 4.000000e+00
  %4299 = fmul fast float %4296, 4.000000e+00
  %4300 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4301 = call float @dx.op.unary.f32(i32 21, float %4298)  ; Exp(value)
  %4302 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4303 = fadd fast float %4301, %4300
  %4304 = fadd fast float %4303, %4302
  %4305 = fdiv fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4305, %4300
  %4307 = fcmp fast ogt float %43, 0.000000e+00
  %4308 = fcmp fast ogt float %44, 0.000000e+00
  %4309 = fcmp fast ogt float %45, 0.000000e+00
  %4310 = fcmp fast olt float %43, 0.000000e+00
  %4311 = fcmp fast olt float %44, 0.000000e+00
  %4312 = fcmp fast olt float %45, 0.000000e+00
  %4313 = zext i1 %4307 to i32
  %4314 = zext i1 %4308 to i32
  %4315 = zext i1 %4309 to i32
  %4316 = zext i1 %4310 to i32
  %4317 = zext i1 %4311 to i32
  %4318 = zext i1 %4312 to i32
  %4319 = sub nsw i32 %4313, %4316
  %4320 = sub nsw i32 %4314, %4317
  %4321 = sub nsw i32 %4315, %4318
  %4322 = call float @dx.op.unary.f32(i32 83, float %4288)  ; DerivCoarseX(value)
  %4323 = call float @dx.op.unary.f32(i32 83, float %4289)  ; DerivCoarseX(value)
  %4324 = call float @dx.op.unary.f32(i32 83, float %4290)  ; DerivCoarseX(value)
  %4325 = call float @dx.op.unary.f32(i32 84, float %4288)  ; DerivCoarseY(value)
  %4326 = call float @dx.op.unary.f32(i32 84, float %4289)  ; DerivCoarseY(value)
  %4327 = call float @dx.op.unary.f32(i32 84, float %4290)  ; DerivCoarseY(value)
  %4328 = fcmp fast ole float %227, %4306
  %4329 = fmul fast float %4305, %4303
  %4330 = fcmp fast ole float %227, %4329
  %4331 = select i1 %4330, float %4290, float %4288
  %4332 = select i1 %4330, float %4288, float %4289
  %4333 = select i1 %4328, float %4289, float %4331
  %4334 = select i1 %4328, float %4290, float %4332
  %4335 = select i1 %4330, float %4324, float %4322
  %4336 = select i1 %4330, float %4322, float %4323
  %4337 = select i1 %4328, float %4323, float %4335
  %4338 = select i1 %4328, float %4324, float %4336
  %4339 = select i1 %4330, float %4327, float %4325
  %4340 = select i1 %4330, float %4325, float %4326
  %4341 = select i1 %4328, float %4326, float %4339
  %4342 = select i1 %4328, float %4327, float %4340
  %4343 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4344 = call float @dx.op.unary.f32(i32 27, float %4334)  ; Round_ni(value)
  %4345 = fptosi float %4343 to i32
  %4346 = fptosi float %4344 to i32
  %4347 = xor i32 %4346, %4345
  %4348 = sitofp i32 %4347 to float
  %4349 = fptosi float %4348 to i32
  %4350 = sitofp i32 %4349 to float
  %4351 = fmul fast float %4350, 0x3FE3C6EF40000000
  %4352 = frem fast float %4343, 2.560000e+02
  %4353 = frem fast float %4344, 2.560000e+02
  %4354 = fptoui float %4352 to i32
  %4355 = fptoui float %4353 to i32
  %4356 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %4354, i32 %4355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = fadd fast float %4357, %4351
  %4361 = fadd fast float %4358, %4351
  %4362 = fadd fast float %4359, %4351
  %4363 = call float @dx.op.unary.f32(i32 22, float %4360)  ; Frc(value)
  %4364 = call float @dx.op.unary.f32(i32 22, float %4361)  ; Frc(value)
  %4365 = call float @dx.op.unary.f32(i32 22, float %4362)  ; Frc(value)
  %4366 = fmul fast float %4365, 0x401921FB60000000
  %4367 = call float @dx.op.unary.f32(i32 13, float %4366)  ; Sin(value)
  %4368 = call float @dx.op.unary.f32(i32 12, float %4366)  ; Cos(value)
  %4369 = fsub fast float -0.000000e+00, %4368
  %4370 = fmul fast float %4368, %4333
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4334, float %4370)  ; FMad(a,b,c)
  %4372 = fmul fast float %4367, %4333
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4334, float %4372)  ; FMad(a,b,c)
  %4374 = fadd fast float %4371, %4363
  %4375 = fadd fast float %4373, %4364
  %4376 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4377 = bitcast float %4376 to i32
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4417, label %4379

; <label>:4379                                    ; preds = %4282
  %4380 = add i32 %4377, 0
  %4381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4381, %dx.types.Handle %74, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4387 = fsub fast float 1.000000e+00, %3992
  %4388 = call float @dx.op.binary.f32(i32 35, float %4387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4389 = bitcast float %3992 to i32
  %4390 = sitofp i32 %4389 to float
  %4391 = fadd fast float %4390, 0xC1CFBF8940000000
  %4392 = fmul fast float %4386, %4391
  %4393 = fadd fast float %4392, 0x41CFBF8940000000
  %4394 = fptosi float %4393 to i32
  %4395 = bitcast i32 %4394 to float
  %4396 = bitcast float %4388 to i32
  %4397 = sitofp i32 %4396 to float
  %4398 = fadd fast float %4397, 0xC1CFBF8940000000
  %4399 = fmul fast float %4398, %4386
  %4400 = fadd fast float %4399, 0x41CFBF8940000000
  %4401 = fptosi float %4400 to i32
  %4402 = bitcast i32 %4401 to float
  %4403 = fmul fast float %4395, %4385
  %4404 = fmul fast float %4402, %4385
  %4405 = fsub fast float %4388, %4403
  %4406 = fadd fast float %4404, %4388
  %4407 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = fsub fast float %4383, %4407
  %4410 = fsub fast float %4408, %4407
  %4411 = bitcast float %4410 to i32
  %4412 = sub nsw i32 2129859010, %4411
  %4413 = bitcast i32 %4412 to float
  %4414 = fmul fast float %4413, %4409
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fcmp fast olt float %4415, 0x3F70101020000000
  br i1 %4416, label %4555, label %4417

; <label>:4417                                    ; preds = %4379, %4282
  %4418 = phi float [ %4415, %4379 ], [ %3992, %4282 ]
  %4419 = fmul fast float %4418, %4285
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 1
  %4422 = extractvalue %dx.types.CBufRet.i32 %4420, 0
  %4423 = add i32 %4422, 0
  %4424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4425 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4424, %dx.types.Handle %73, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4426 = extractvalue %dx.types.ResRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.ResRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.ResRet.f32 %4425, 2
  %4429 = extractvalue %dx.types.ResRet.f32 %4425, 3
  %4430 = and i32 %4421, 255
  %4431 = uitofp i32 %4430 to float
  %4432 = lshr i32 %4421, 8
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = fmul fast float %4429, %4431
  %4436 = fadd fast float %4435, %4434
  %4437 = fmul fast float %4436, 0x3F70101000000000
  %4438 = fadd fast float %4437, 0xBFB99999A0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, 0x3FF1C71C80000000
  %4441 = call float @dx.op.binary.f32(i32 36, float %4437, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4442 = fsub fast float 1.000000e+00, %4440
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4443, %4426
  %4445 = fmul fast float %4443, %4427
  %4446 = fmul fast float %4443, %4428
  %4447 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = fmul fast float %4440, %4426
  %4451 = fmul fast float %4440, %4427
  %4452 = fmul fast float %4440, %4428
  %4453 = fadd fast float %4450, %4441
  %4454 = fadd fast float %4451, %4441
  %4455 = fadd fast float %4452, %4441
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 3
  %4461 = extractvalue %dx.types.CBufRet.i32 %4459, 2
  %4462 = add i32 %4461, 0
  %4463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4464 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4463, %dx.types.Handle %73, float %4374, float %4375, float undef, float undef, i32 0, i32 0, i32 undef, float %4337, float %4338, float undef, float %4341, float %4342, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = and i32 %4460, 255
  %4470 = uitofp i32 %4469 to float
  %4471 = lshr i32 %4460, 8
  %4472 = and i32 %4471, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4460, 16
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = fmul fast float %4476, 0x3F70101000000000
  %4478 = fmul fast float %4465, %4470
  %4479 = fadd fast float %4478, %4473
  %4480 = fmul fast float %4479, 0x3F70101000000000
  %4481 = fadd fast float %4466, -5.000000e-01
  %4482 = fadd fast float %4468, -5.000000e-01
  %4483 = fmul fast float %4481, %4477
  %4484 = fmul fast float %4482, %4477
  %4485 = fadd fast float %4483, 5.000000e-01
  %4486 = fadd fast float %4484, 5.000000e-01
  %4487 = fmul fast float %4485, 2.000000e+00
  %4488 = fadd fast float %4487, -1.000000e+00
  %4489 = fmul fast float %4486, 2.000000e+00
  %4490 = fadd fast float %4489, -1.000000e+00
  %4491 = fadd fast float %4488, %4490
  %4492 = fmul fast float %4491, 5.000000e-01
  %4493 = fsub fast float %4488, %4490
  %4494 = fmul fast float %4493, 5.000000e-01
  %4495 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = call float @dx.op.unary.f32(i32 6, float %4494)  ; FAbs(value)
  %4498 = fsub fast float %4496, %4497
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4494, float %4498, float %4492, float %4494, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4492, %4500
  %4502 = fmul fast float %4494, %4500
  %4503 = select i1 %4330, i32 %4320, i32 %4321
  %4504 = select i1 %4328, i32 %4319, i32 %4503
  %4505 = sitofp i32 %4504 to float
  %4506 = fmul fast float %4498, %4505
  %4507 = fmul fast float %4506, %4500
  %4508 = select i1 %4330, float %4507, float %4502
  %4509 = select i1 %4330, float %4502, float %4507
  %4510 = select i1 %4328, float %4507, float %4501
  %4511 = select i1 %4328, float %4502, float %4508
  %4512 = select i1 %4328, float %4501, float %4509
  %4513 = fsub fast float %4447, %4271
  %4514 = fsub fast float %4448, %4272
  %4515 = fsub fast float %4449, %4273
  %4516 = fmul fast float %4513, %4419
  %4517 = fmul fast float %4514, %4419
  %4518 = fmul fast float %4515, %4419
  %4519 = fadd fast float %4516, %4271
  %4520 = fadd fast float %4517, %4272
  %4521 = fadd fast float %4518, %4273
  %4522 = fsub fast float %4456, %4277
  %4523 = fsub fast float %4457, %4278
  %4524 = fsub fast float %4458, %4279
  %4525 = fmul fast float %4522, %4419
  %4526 = fmul fast float %4523, %4419
  %4527 = fmul fast float %4524, %4419
  %4528 = fadd fast float %4525, %4277
  %4529 = fadd fast float %4526, %4278
  %4530 = fadd fast float %4527, %4279
  %4531 = fadd fast float %4510, %4274
  %4532 = fadd fast float %4511, %4275
  %4533 = fadd fast float %4512, %4276
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 25, float %4534)  ; Rsqrt(value)
  %4536 = fmul fast float %4531, %4535
  %4537 = fmul fast float %4532, %4535
  %4538 = fmul fast float %4533, %4535
  %4539 = fsub fast float %4536, %4274
  %4540 = fsub fast float %4537, %4275
  %4541 = fsub fast float %4538, %4276
  %4542 = fmul fast float %4539, %4419
  %4543 = fmul fast float %4540, %4419
  %4544 = fmul fast float %4541, %4419
  %4545 = fadd fast float %4542, %4274
  %4546 = fadd fast float %4543, %4275
  %4547 = fadd fast float %4544, %4276
  %4548 = call float @dx.op.binary.f32(i32 36, float %4281, float %4467)  ; FMin(a,b)
  %4549 = fsub fast float %4548, %4281
  %4550 = fmul fast float %4549, %4419
  %4551 = fadd fast float %4550, %4281
  %4552 = fsub fast float %4480, %4280
  %4553 = fmul fast float %4552, %4419
  %4554 = fadd fast float %4553, %4280
  br label %4555

; <label>:4555                                    ; preds = %4417, %4379, %4270, %3986
  %4556 = phi float [ %4519, %4417 ], [ %4271, %4379 ], [ %4271, %4270 ], [ %3595, %3986 ]
  %4557 = phi float [ %4520, %4417 ], [ %4272, %4379 ], [ %4272, %4270 ], [ %3596, %3986 ]
  %4558 = phi float [ %4521, %4417 ], [ %4273, %4379 ], [ %4273, %4270 ], [ %3597, %3986 ]
  %4559 = phi float [ %4545, %4417 ], [ %4274, %4379 ], [ %4274, %4270 ], [ %3559, %3986 ]
  %4560 = phi float [ %4546, %4417 ], [ %4275, %4379 ], [ %4275, %4270 ], [ %3560, %3986 ]
  %4561 = phi float [ %4547, %4417 ], [ %4276, %4379 ], [ %4276, %4270 ], [ %3561, %3986 ]
  %4562 = phi float [ %4528, %4417 ], [ %4277, %4379 ], [ %4277, %4270 ], [ %3580, %3986 ]
  %4563 = phi float [ %4529, %4417 ], [ %4278, %4379 ], [ %4278, %4270 ], [ %3581, %3986 ]
  %4564 = phi float [ %4530, %4417 ], [ %4279, %4379 ], [ %4279, %4270 ], [ %3582, %3986 ]
  %4565 = phi float [ %4554, %4417 ], [ %4280, %4379 ], [ %4280, %4270 ], [ %3583, %3986 ]
  %4566 = phi float [ %4551, %4417 ], [ %4281, %4379 ], [ %4281, %4270 ], [ %3484, %3986 ]
  %4567 = fcmp fast une float %3990, 0.000000e+00
  %4568 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = call float @dx.op.unary.f32(i32 25, float %4568)  ; Rsqrt(value)
  br i1 %4567, label %4577, label %4570

; <label>:4570                                    ; preds = %4555
  %4571 = fmul fast float %4569, %164
  %4572 = fmul fast float %4569, %165
  %4573 = fmul fast float %4569, %166
  %4574 = fsub fast float -0.000000e+00, %4571
  %4575 = fsub fast float -0.000000e+00, %4572
  %4576 = fsub fast float -0.000000e+00, %4573
  br label %4744

; <label>:4577                                    ; preds = %4555
  %4578 = fmul fast float %164, %4569
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = fmul fast float %165, %4569
  %4581 = fsub fast float -0.000000e+00, %4580
  %4582 = fmul fast float %166, %4569
  %4583 = fsub fast float -0.000000e+00, %4582
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4581, float %4583, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fmul fast float %3990, 2.500000e+00
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %3990, 0x4013FFFFE0000000
  %4588 = fadd fast float %4587, 0xBFFFFFFFE0000000
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %3990, 0x4004000020000000
  %4591 = fadd fast float %4590, 0xBFF8000040000000
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = fmul fast float %3562, 1.000000e+01
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, 2.000000e+00
  %4596 = fsub fast float 3.000000e+00, %4595
  %4597 = fmul fast float %4594, %4594
  %4598 = fmul fast float %4597, %4596
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = fsub fast float 0x3FE3333340000000, %4565
  %4601 = fmul fast float %4600, 0x400AAAAAA0000000
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fmul fast float %4599, %4602
  %4604 = fmul fast float %4556, 0x3FEA2B8620000000
  %4605 = fmul fast float %4557, 0x3FEA2B8620000000
  %4606 = fmul fast float %4558, 0x3FEA2B8620000000
  %4607 = fadd fast float %4604, 0x3FC81DFBA0000000
  %4608 = fmul fast float %4607, %4556
  %4609 = fadd fast float %4608, 0x3F910E6020000000
  %4610 = fadd fast float %4605, 0x3FC81DFBA0000000
  %4611 = fmul fast float %4610, %4557
  %4612 = fadd fast float %4611, 0x3F910E6020000000
  %4613 = fadd fast float %4606, 0x3FC81DFBA0000000
  %4614 = fmul fast float %4613, %4558
  %4615 = fadd fast float %4614, 0x3F910E6020000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4619 = fsub fast float %4616, %4556
  %4620 = fsub fast float %4617, %4557
  %4621 = fsub fast float %4618, %4558
  %4622 = fmul fast float %4619, %4586
  %4623 = fmul fast float %4622, %4603
  %4624 = fmul fast float %4620, %4586
  %4625 = fmul fast float %4624, %4603
  %4626 = fmul fast float %4621, %4586
  %4627 = fmul fast float %4626, %4603
  %4628 = fadd fast float %4623, %4556
  %4629 = fadd fast float %4625, %4557
  %4630 = fadd fast float %4627, %4558
  %4631 = fmul fast float %4566, %4566
  %4632 = fmul fast float %4631, %4631
  %4633 = fadd fast float %4589, 1.000000e+00
  %4634 = fsub fast float %4633, %4603
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fsub fast float 1.000000e+00, %4632
  %4639 = call float @dx.op.binary.f32(i32 36, float %4635, float %4638)  ; FMin(a,b)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4641 = call float @dx.op.binary.f32(i32 35, float %4639, float %4640)  ; FMax(a,b)
  %4642 = fadd fast float %4637, 0xBFE4CCCCC0000000
  %4643 = fmul fast float %4642, 0x4006DB6DA0000000
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fsub fast float 3.000000e+00, %4645
  %4647 = bitcast float %4562 to i32
  %4648 = ashr i32 %4647, 1
  %4649 = add nsw i32 %4648, 532487669
  %4650 = bitcast i32 %4649 to float
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, 2.000000e+00
  %4656 = bitcast float %4563 to i32
  %4657 = ashr i32 %4656, 1
  %4658 = add nsw i32 %4657, 532487669
  %4659 = bitcast i32 %4658 to float
  %4660 = fsub fast float 1.000000e+00, %4659
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, 2.000000e+00
  %4665 = bitcast float %4564 to i32
  %4666 = ashr i32 %4665, 1
  %4667 = add nsw i32 %4666, 532487669
  %4668 = bitcast i32 %4667 to float
  %4669 = fsub fast float 1.000000e+00, %4668
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = fmul fast float %4672, 2.000000e+00
  %4674 = fsub fast float 0x4002A9FBE0000000, %4655
  %4675 = fadd fast float %4655, 0x3FD54FDF00000000
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, %4674
  %4680 = fmul fast float %4679, %4679
  %4681 = fsub fast float 0x4002A9FBE0000000, %4664
  %4682 = fadd fast float %4664, 0x3FD54FDF00000000
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul fast float %4685, %4681
  %4687 = fmul fast float %4686, %4686
  %4688 = fsub fast float 0x4002A9FBE0000000, %4673
  %4689 = fadd fast float %4673, 0x3FD54FDF00000000
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, %4688
  %4694 = fmul fast float %4693, %4693
  %4695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4680)  ; FMax(a,b)
  %4696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4687)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4694)  ; FMax(a,b)
  %4698 = fsub fast float 1.000000e+00, %4584
  %4699 = fadd fast float %4698, %4599
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fsub fast float 1.000000e+00, %3971
  %4702 = fmul fast float %4641, %4701
  %4703 = fmul fast float %4644, %4644
  %4704 = fmul fast float %4703, %4702
  %4705 = fmul fast float %4704, %4646
  %4706 = fmul fast float %4701, 0xBFE99999A0000000
  %4707 = fmul fast float %4706, %4586
  %4708 = fmul fast float %4707, %4603
  %4709 = fadd fast float %4708, 1.000000e+00
  %4710 = fadd fast float %4565, -1.000000e+00
  %4711 = fmul fast float %4709, %4710
  %4712 = fadd fast float %4711, 1.000000e+00
  %4713 = fsub fast float %4695, %4562
  %4714 = fsub fast float %4696, %4563
  %4715 = fsub fast float %4697, %4564
  %4716 = fmul fast float %4705, %4713
  %4717 = fmul fast float %4705, %4714
  %4718 = fmul fast float %4705, %4715
  %4719 = fadd fast float %4716, %4562
  %4720 = fadd fast float %4717, %4563
  %4721 = fadd fast float %4718, %4564
  %4722 = fsub fast float %84, %4559
  %4723 = fsub fast float %85, %4560
  %4724 = fsub fast float %86, %4561
  %4725 = fmul fast float %4705, %4722
  %4726 = fmul fast float %4705, %4723
  %4727 = fmul fast float %4705, %4724
  %4728 = fadd fast float %4725, %4559
  %4729 = fadd fast float %4726, %4560
  %4730 = fadd fast float %4727, %4561
  %4731 = fmul fast float %4705, %4700
  %4732 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = fmul fast float %4731, %4733
  %4735 = fadd fast float %4734, %4732
  %4736 = fsub fast float 1.000000e+00, %4566
  %4737 = fmul fast float %4705, %4736
  %4738 = fadd fast float %4737, %4566
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4728, float %4729, float %4730, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.unary.f32(i32 25, float %4739)  ; Rsqrt(value)
  %4741 = fmul fast float %4728, %4740
  %4742 = fmul fast float %4729, %4740
  %4743 = fmul fast float %4730, %4740
  br label %4744

; <label>:4744                                    ; preds = %4577, %4570
  %4745 = phi float [ %4576, %4570 ], [ %4583, %4577 ]
  %4746 = phi float [ %4575, %4570 ], [ %4581, %4577 ]
  %4747 = phi float [ %4574, %4570 ], [ %4579, %4577 ]
  %4748 = phi float [ %4573, %4570 ], [ %4582, %4577 ]
  %4749 = phi float [ %4572, %4570 ], [ %4580, %4577 ]
  %4750 = phi float [ %4571, %4570 ], [ %4578, %4577 ]
  %4751 = phi float [ %4556, %4570 ], [ %4628, %4577 ]
  %4752 = phi float [ %4557, %4570 ], [ %4629, %4577 ]
  %4753 = phi float [ %4558, %4570 ], [ %4630, %4577 ]
  %4754 = phi float [ %4559, %4570 ], [ %4741, %4577 ]
  %4755 = phi float [ %4560, %4570 ], [ %4742, %4577 ]
  %4756 = phi float [ %4561, %4570 ], [ %4743, %4577 ]
  %4757 = phi float [ %4562, %4570 ], [ %4719, %4577 ]
  %4758 = phi float [ %4563, %4570 ], [ %4720, %4577 ]
  %4759 = phi float [ %4564, %4570 ], [ %4721, %4577 ]
  %4760 = phi float [ %4565, %4570 ], [ %4735, %4577 ]
  %4761 = phi float [ %4566, %4570 ], [ %4738, %4577 ]
  %4762 = select i1 %216, float 0.000000e+00, float %4759
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %4747, float %4746, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4749, float %4748, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = fmul fast float %4765, 2.000000e+00
  %4767 = fmul fast float %4766, %4754
  %4768 = fmul fast float %4766, %4755
  %4769 = fmul fast float %4766, %4756
  %4770 = fsub fast float %4750, %4767
  %4771 = fsub fast float %4749, %4768
  %4772 = fsub fast float %4748, %4769
  %4773 = call float @dx.op.binary.f32(i32 36, float %4761, float 1.000000e+00)  ; FMin(a,b)
  %4774 = fsub fast float 1.000000e+00, %4761
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = fsub fast float 1.000000e+00, %54
  %4778 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4778, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4780 = fdiv fast float %4777, %4779
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4782, 5.000000e-01
  %4784 = fadd fast float %4783, 5.000000e-01
  %4785 = fmul fast float %4784, %54
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, %4780
  %4789 = fadd fast float %4785, %4788
  %4790 = fsub fast float 5.000000e-01, %4783
  %4791 = fmul fast float %4790, %4751
  %4792 = fmul fast float %4790, %4752
  %4793 = fmul fast float %4790, %4753
  %4794 = fadd fast float %4789, %4791
  %4795 = fadd fast float %4789, %4792
  %4796 = fadd fast float %4789, %4793
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fmul fast float %4798, 5.000000e-01
  %4800 = fadd fast float %4799, 5.000000e-01
  %4801 = fmul fast float %4800, %54
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %4772, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, %4780
  %4805 = fadd fast float %4801, %4804
  %4806 = fsub fast float 5.000000e-01, %4799
  %4807 = fmul fast float %4806, %4751
  %4808 = fmul fast float %4806, %4752
  %4809 = fmul fast float %4806, %4753
  %4810 = fadd fast float %4805, %4807
  %4811 = fadd fast float %4805, %4808
  %4812 = fadd fast float %4805, %4809
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = call float @dx.op.binary.f32(i32 36, float %4751, float %4814)  ; FMin(a,b)
  %4816 = fsub fast float 1.000000e+00, %4773
  %4817 = fmul fast float %4815, %4816
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = call float @dx.op.binary.f32(i32 36, float %4752, float %4814)  ; FMin(a,b)
  %4823 = fmul fast float %4822, %4816
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = call float @dx.op.binary.f32(i32 36, float %4753, float %4814)  ; FMin(a,b)
  %4829 = fmul fast float %4828, %4816
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4773, %55
  %4835 = fmul fast float %4834, %4794
  %4836 = fmul fast float %4835, %4821
  %4837 = fmul fast float %4773, %56
  %4838 = fmul fast float %4837, %4795
  %4839 = fmul fast float %4838, %4827
  %4840 = fmul fast float %4773, %57
  %4841 = fmul fast float %4840, %4796
  %4842 = fmul fast float %4841, %4833
  %4843 = call float @dx.op.binary.f32(i32 36, float %4757, float %4814)  ; FMin(a,b)
  %4844 = fmul fast float %4843, %4816
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = call float @dx.op.binary.f32(i32 36, float %4758, float %4814)  ; FMin(a,b)
  %4850 = fmul fast float %4849, %4816
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = call float @dx.op.binary.f32(i32 36, float %4762, float %4814)  ; FMin(a,b)
  %4856 = fmul fast float %4855, %4816
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4834, %4810
  %4862 = fmul fast float %4861, %4848
  %4863 = fmul fast float %4837, %4811
  %4864 = fmul fast float %4863, %4854
  %4865 = fmul fast float %4840, %4812
  %4866 = fmul fast float %4865, %4860
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4839, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = select i1 %216, float 0.000000e+00, float %4836
  %4869 = select i1 %216, float %4867, float %4839
  %4870 = select i1 %216, float 0.000000e+00, float %4842
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4864, float %4866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = select i1 %216, float 0.000000e+00, float %4862
  %4873 = select i1 %216, float %4871, float %4864
  %4874 = select i1 %216, float 0.000000e+00, float %4866
  %4875 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %4876 = fmul fast float %4875, %4868
  %4877 = fmul fast float %4875, %4869
  %4878 = fmul fast float %4870, %4875
  %4879 = fmul fast float %4764, 9.843750e-01
  %4880 = fmul fast float %4760, 9.843750e-01
  %4881 = fadd fast float %4879, 7.812500e-03
  %4882 = fadd fast float %4880, 7.812500e-03
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %4881, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 2
  %4885 = extractvalue %dx.types.ResRet.f32 %4883, 3
  %4886 = fmul fast float %4884, %4757
  %4887 = fmul fast float %4884, %4758
  %4888 = fmul fast float %4884, %4762
  %4889 = fadd fast float %4886, %4885
  %4890 = fadd fast float %4887, %4885
  %4891 = fadd fast float %4888, %4885
  %4892 = fcmp fast ogt float %3485, 0.000000e+00
  br i1 %4892, label %4893, label %4919

; <label>:4893                                    ; preds = %4744
  %4894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %3485, float %4764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.ResRet.f32 %4894, 2
  %4898 = fadd fast float %4895, -5.000000e-01
  %4899 = fadd fast float %4896, -5.000000e-01
  %4900 = fadd fast float %4897, -5.000000e-01
  %4901 = fsub fast float 1.000000e+00, %4757
  %4902 = fsub fast float 1.000000e+00, %4758
  %4903 = fsub fast float 1.000000e+00, %4762
  %4904 = fmul fast float %4757, 4.000000e+00
  %4905 = fmul fast float %4904, %4901
  %4906 = fmul fast float %4905, %4898
  %4907 = fmul fast float %4758, 4.000000e+00
  %4908 = fmul fast float %4907, %4902
  %4909 = fmul fast float %4908, %4899
  %4910 = fmul fast float %4762, 4.000000e+00
  %4911 = fmul fast float %4910, %4903
  %4912 = fmul fast float %4911, %4900
  %4913 = fadd fast float %4906, %4889
  %4914 = fadd fast float %4909, %4890
  %4915 = fadd fast float %4912, %4891
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  br label %4919

; <label>:4919                                    ; preds = %4893, %4744
  %4920 = phi float [ %4916, %4893 ], [ %4889, %4744 ]
  %4921 = phi float [ %4917, %4893 ], [ %4890, %4744 ]
  %4922 = phi float [ %4918, %4893 ], [ %4891, %4744 ]
  %4923 = call float @dx.op.binary.f32(i32 35, float %4921, float %4922)  ; FMax(a,b)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4920, float %4923)  ; FMax(a,b)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = fmul fast float %164, %164
  %4927 = fmul fast float %165, %165
  %4928 = fadd fast float %4926, %4927
  %4929 = fmul fast float %166, %166
  %4930 = fadd fast float %4928, %4929
  %4931 = call float @dx.op.unary.f32(i32 24, float %4930)  ; Sqrt(value)
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 1
  %4934 = fsub fast float %4931, %4933
  %4935 = extractvalue %dx.types.CBufRet.f32 %4932, 2
  %4936 = fmul fast float %4934, %4935
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4939 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4941 = extractvalue %dx.types.ResRet.i32 %4940, 0
  %4942 = and i32 %4941, 4194304
  %4943 = icmp ne i32 %4942, 0
  %4944 = and i32 %4941, 8388608
  %4945 = icmp ne i32 %4944, 0
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4950 = extractvalue %dx.types.CBufRet.f32 %4946, 3
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.CBufRet.f32 %4951, 2
  %4955 = extractvalue %dx.types.CBufRet.f32 %4951, 3
  %4956 = select i1 %4943, float %4947, float %4952
  %4957 = select i1 %4943, float %4948, float %4953
  %4958 = select i1 %4943, float %4949, float %4954
  %4959 = select i1 %4943, float %4950, float %4955
  %4960 = select i1 %4945, float 0.000000e+00, float %4959
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = select i1 %4943, float %4962, float %4963
  %4965 = select i1 %4945, float 0.000000e+00, float %4964
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4967 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4968 = select i1 %4943, float %4966, float %4967
  %4969 = select i1 %4945, float 0.000000e+00, float %4968
  %4970 = fmul fast float %4937, %36
  %4971 = fmul fast float %4970, %4939
  %4972 = fmul fast float %4971, %4969
  %4973 = fadd fast float %4972, 1.000000e+00
  %4974 = fmul fast float %4925, %4876
  %4975 = fmul fast float %4974, %4973
  %4976 = fmul fast float %4925, %4877
  %4977 = fmul fast float %4976, %4973
  %4978 = fmul fast float %4925, %4878
  %4979 = fmul fast float %4978, %4973
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = fcmp fast ogt float %4980, 0x3E7FF19E20000000
  %4982 = fdiv fast float 1.000000e+00, %4980
  %4983 = select i1 %4981, float %4982, float 0.000000e+00
  %4984 = fmul fast float %4983, %4751
  %4985 = fmul fast float %4983, %4752
  %4986 = fmul fast float %4983, %4753
  %4987 = fadd fast float %4984, -1.000000e+00
  %4988 = fadd fast float %4985, -1.000000e+00
  %4989 = fadd fast float %4986, -1.000000e+00
  %4990 = fmul fast float %4987, 5.000000e-01
  %4991 = fmul fast float %4988, 5.000000e-01
  %4992 = fmul fast float %4989, 5.000000e-01
  %4993 = fadd fast float %4990, 1.000000e+00
  %4994 = fadd fast float %4991, 1.000000e+00
  %4995 = fadd fast float %4992, 1.000000e+00
  %4996 = fsub fast float %4956, %4993
  %4997 = fsub fast float %4957, %4994
  %4998 = fsub fast float %4958, %4995
  %4999 = fmul fast float %4996, %4960
  %5000 = fmul fast float %4997, %4960
  %5001 = fmul fast float %4998, %4960
  %5002 = fadd fast float %4999, %4993
  %5003 = fadd fast float %5000, %4994
  %5004 = fadd fast float %5001, %4995
  %5005 = fmul fast float %4920, %4872
  %5006 = fmul fast float %4921, %4873
  %5007 = fmul fast float %4922, %4874
  %5008 = fsub fast float 1.000000e+00, %4764
  %5009 = bitcast float %5008 to i32
  %5010 = sitofp i32 %5009 to float
  %5011 = fmul fast float %5010, 5.000000e+00
  %5012 = fadd fast float %5011, 0xC1EFBF8940000000
  %5013 = fptosi float %5012 to i32
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, %36
  %5016 = fmul fast float %5015, %4937
  %5017 = fmul fast float %5016, %4938
  %5018 = fmul fast float %5017, %4965
  %5019 = fmul fast float %4974, %5018
  %5020 = fmul fast float %5019, %5002
  %5021 = fmul fast float %4976, %5018
  %5022 = fmul fast float %5021, %5003
  %5023 = fmul fast float %4978, %5018
  %5024 = fmul fast float %5023, %5004
  %5025 = fmul fast float %4975, %1154
  %5026 = fmul fast float %4977, %1154
  %5027 = fmul fast float %4979, %1154
  %5028 = fadd fast float %5005, %3529
  %5029 = fadd fast float %5028, %5020
  %5030 = fmul fast float %5029, %1154
  %5031 = fadd fast float %5006, %3531
  %5032 = fadd fast float %5031, %5022
  %5033 = fmul fast float %5032, %1154
  %5034 = fadd fast float %5007, %3533
  %5035 = fadd fast float %5034, %5024
  %5036 = fmul fast float %5035, %1154
  %5037 = bitcast i32 %4776 to float
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5040 = fcmp fast oeq float %5039, 0.000000e+00
  br i1 %5040, label %5253, label %5041

; <label>:5041                                    ; preds = %4919
  %5042 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5044 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.CBufRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.CBufRet.f32 %5045, 2
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = select i1 %216, float %5050, float %5046
  %5054 = select i1 %216, float %5052, float %5047
  %5055 = select i1 %216, float %5051, float %5048
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5058 = fcmp fast une float %5057, 0.000000e+00
  br i1 %5058, label %5059, label %5076

; <label>:5059                                    ; preds = %5041
  %5060 = fptoui float %77 to i32
  %5061 = fptoui float %78 to i32
  %5062 = lshr i32 %5060, 4
  %5063 = lshr i32 %5061, 4
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = fptoui float %5065 to i32
  %5067 = add i32 %5066, 15
  %5068 = lshr i32 %5067, 4
  %5069 = mul i32 %5068, %5063
  %5070 = add i32 %5069, %5062
  %5071 = shl i32 %5070, 3
  %5072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.i32 %5072, 0
  %5074 = and i32 %5073, -268435456
  %5075 = icmp eq i32 %5074, -1342177280
  br i1 %5075, label %5086, label %5076

; <label>:5076                                    ; preds = %5059, %5041
  %5077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.f32 %5077, 2
  %5079 = extractvalue %dx.types.CBufRet.f32 %5077, 3
  %5080 = fmul fast float %5078, %77
  %5081 = fmul fast float %5079, %78
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %27, float %5080, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  br label %5086

; <label>:5086                                    ; preds = %5076, %5059
  %5087 = phi float [ %5083, %5076 ], [ 0.000000e+00, %5059 ]
  %5088 = phi float [ %5084, %5076 ], [ 0.000000e+00, %5059 ]
  %5089 = phi float [ %5085, %5076 ], [ 0.000000e+00, %5059 ]
  %5090 = call float @dx.op.binary.f32(i32 36, float %5088, float %5089)  ; FMin(a,b)
  %5091 = call float @dx.op.binary.f32(i32 36, float %5087, float %5090)  ; FMin(a,b)
  %5092 = fcmp fast ogt float %5091, 0.000000e+00
  br i1 %5092, label %5093, label %5253, !dx.controlflow.hints !73

; <label>:5093                                    ; preds = %5086
  %5094 = fmul fast float %5087, %5053
  %5095 = fmul fast float %5088, %5054
  %5096 = fmul fast float %5089, %5055
  %5097 = fsub fast float %5042, %4750
  %5098 = fsub fast float %5043, %4749
  %5099 = fsub fast float %5044, %4748
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float %5097, float %5098, float %5099)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 25, float %5100)  ; Rsqrt(value)
  %5102 = fmul fast float %5101, %5097
  %5103 = fmul fast float %5101, %5098
  %5104 = fmul fast float %5101, %5099
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5043, float %5044, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4746, float %4745, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5108 = fmul fast float %5107, %5107
  %5109 = fmul fast float %5108, %5037
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5110, %5107
  %5112 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %5112, %5112
  %5114 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5115 = fsub fast float 1.000000e+00, %4760
  %5116 = call float @dx.op.binary.f32(i32 35, float %5115, float 0x3F847AE140000000)  ; FMax(a,b)
  %5117 = fmul fast float %5116, %5116
  %5118 = fmul fast float %5117, %5117
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = fmul fast float %4764, %4764
  %5121 = fmul fast float %5120, %5119
  %5122 = fadd fast float %5121, %5118
  %5123 = bitcast float %5122 to i32
  %5124 = ashr i32 %5123, 1
  %5125 = add nsw i32 %5124, 532487669
  %5126 = bitcast i32 %5125 to float
  %5127 = fadd fast float %5126, %4764
  %5128 = fmul fast float %5118, %5113
  %5129 = fsub fast float 1.000000e+00, %5113
  %5130 = fadd fast float %5129, %5128
  %5131 = fmul fast float %5114, %5114
  %5132 = fmul fast float %5131, %5119
  %5133 = fadd fast float %5132, %5118
  %5134 = bitcast float %5133 to i32
  %5135 = ashr i32 %5134, 1
  %5136 = add nsw i32 %5135, 532487669
  %5137 = bitcast i32 %5136 to float
  %5138 = fadd fast float %5137, %5114
  %5139 = fmul fast float %5130, %5130
  %5140 = fmul fast float %5139, %5127
  %5141 = fmul fast float %5140, %5138
  %5142 = fdiv fast float 0x3FF0A00000000000, %5141
  %5143 = fmul fast float %5142, %5118
  %5144 = call float @dx.op.unary.f32(i32 6, float %5106)  ; FAbs(value)
  %5145 = fsub fast float 1.000000e+00, %5144
  %5146 = bitcast float %5145 to i32
  %5147 = sitofp i32 %5146 to float
  %5148 = fmul fast float %5147, 5.000000e+00
  %5149 = fadd fast float %5148, 0xC1EFBF8940000000
  %5150 = fptosi float %5149 to i32
  %5151 = bitcast i32 %5150 to float
  %5152 = fsub fast float 1.000000e+00, %4757
  %5153 = fsub fast float 1.000000e+00, %4758
  %5154 = fsub fast float 1.000000e+00, %4762
  %5155 = fmul fast float %5151, %5152
  %5156 = fmul fast float %5151, %5153
  %5157 = fmul fast float %5151, %5154
  %5158 = fadd fast float %5155, %4757
  %5159 = fadd fast float %5156, %4758
  %5160 = fadd fast float %5157, %4762
  br i1 %4892, label %5161, label %5184

; <label>:5161                                    ; preds = %5093
  %5162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %3485, float %5144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5163 = extractvalue %dx.types.ResRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.ResRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.ResRet.f32 %5162, 2
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fadd fast float %5164, -5.000000e-01
  %5168 = fadd fast float %5165, -5.000000e-01
  %5169 = fmul fast float %4757, 4.000000e+00
  %5170 = fmul fast float %5169, %5152
  %5171 = fmul fast float %5170, %5166
  %5172 = fmul fast float %4758, 4.000000e+00
  %5173 = fmul fast float %5172, %5153
  %5174 = fmul fast float %5173, %5167
  %5175 = fmul fast float %4762, 4.000000e+00
  %5176 = fmul fast float %5175, %5154
  %5177 = fmul fast float %5176, %5168
  %5178 = fadd fast float %5171, %5158
  %5179 = fadd fast float %5174, %5159
  %5180 = fadd fast float %5177, %5160
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5182 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  br label %5184

; <label>:5184                                    ; preds = %5161, %5093
  %5185 = phi float [ %5181, %5161 ], [ %5158, %5093 ]
  %5186 = phi float [ %5182, %5161 ], [ %5159, %5093 ]
  %5187 = phi float [ %5183, %5161 ], [ %5160, %5093 ]
  %5188 = fmul fast float %5105, 9.843750e-01
  %5189 = fadd fast float %5188, 7.812500e-03
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %5189, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 3
  %5193 = fmul fast float %5191, %4757
  %5194 = fmul fast float %5191, %4758
  %5195 = fmul fast float %5191, %4762
  %5196 = fadd fast float %5193, %5192
  %5197 = fadd fast float %5194, %5192
  %5198 = fadd fast float %5195, %5192
  br i1 %4892, label %5199, label %5222

; <label>:5199                                    ; preds = %5184
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %3485, float %5105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = extractvalue %dx.types.ResRet.f32 %5200, 1
  %5203 = extractvalue %dx.types.ResRet.f32 %5200, 2
  %5204 = fadd fast float %5201, -5.000000e-01
  %5205 = fadd fast float %5202, -5.000000e-01
  %5206 = fadd fast float %5203, -5.000000e-01
  %5207 = fmul fast float %4757, 4.000000e+00
  %5208 = fmul fast float %5207, %5152
  %5209 = fmul fast float %5208, %5204
  %5210 = fmul fast float %4758, 4.000000e+00
  %5211 = fmul fast float %5210, %5153
  %5212 = fmul fast float %5211, %5205
  %5213 = fmul fast float %4762, 4.000000e+00
  %5214 = fmul fast float %5213, %5154
  %5215 = fmul fast float %5214, %5206
  %5216 = fadd fast float %5209, %5196
  %5217 = fadd fast float %5212, %5197
  %5218 = fadd fast float %5215, %5198
  %5219 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5220 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5221 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  br label %5222

; <label>:5222                                    ; preds = %5199, %5184
  %5223 = phi float [ %5219, %5199 ], [ %5196, %5184 ]
  %5224 = phi float [ %5220, %5199 ], [ %5197, %5184 ]
  %5225 = phi float [ %5221, %5199 ], [ %5198, %5184 ]
  %5226 = call float @dx.op.binary.f32(i32 35, float %5224, float %5225)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 35, float %5223, float %5226)  ; FMax(a,b)
  %5228 = fsub fast float 1.000000e+00, %5227
  %5229 = fmul fast float %5111, %5094
  %5230 = fmul fast float %5229, %5228
  %5231 = fmul fast float %5111, %5095
  %5232 = fmul fast float %5231, %5228
  %5233 = fmul fast float %5111, %5096
  %5234 = fmul fast float %5233, %5228
  %5235 = fmul fast float %5229, %5143
  %5236 = fmul fast float %5235, %5185
  %5237 = fmul fast float %5231, %5143
  %5238 = fmul fast float %5237, %5186
  %5239 = fmul fast float %5233, %5143
  %5240 = fmul fast float %5239, %5187
  %5241 = fadd fast float %5230, %4975
  %5242 = fmul fast float %5241, %1154
  %5243 = fadd fast float %5232, %4977
  %5244 = fmul fast float %5243, %1154
  %5245 = fadd fast float %5234, %4979
  %5246 = fmul fast float %5245, %1154
  %5247 = fadd fast float %5236, %5029
  %5248 = fmul fast float %5247, %1154
  %5249 = fadd fast float %5238, %5032
  %5250 = fmul fast float %5249, %1154
  %5251 = fadd fast float %5240, %5035
  %5252 = fmul fast float %5251, %1154
  br label %5253

; <label>:5253                                    ; preds = %5222, %5086, %4919
  %5254 = phi float [ %5030, %4919 ], [ %5030, %5086 ], [ %5248, %5222 ]
  %5255 = phi float [ %5033, %4919 ], [ %5033, %5086 ], [ %5250, %5222 ]
  %5256 = phi float [ %5036, %4919 ], [ %5036, %5086 ], [ %5252, %5222 ]
  %5257 = phi float [ %5025, %4919 ], [ %5025, %5086 ], [ %5242, %5222 ]
  %5258 = phi float [ %5026, %4919 ], [ %5026, %5086 ], [ %5244, %5222 ]
  %5259 = phi float [ %5027, %4919 ], [ %5027, %5086 ], [ %5246, %5222 ]
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 0
  %5262 = icmp eq i32 %5261, 0
  br i1 %5262, label %5682, label %5263

; <label>:5263                                    ; preds = %5253
  %5264 = fptoui float %77 to i32
  %5265 = fptoui float %78 to i32
  %5266 = lshr i32 %5264, 4
  %5267 = lshr i32 %5265, 4
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 0
  %5270 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5267, i32 %5269, i32 %5266)  ; UMad(a,b,c)
  %5271 = add nsw i32 %5261, -1
  %5272 = call i32 @dx.op.binary.i32(i32 37, i32 %5271, i32 0)  ; IMax(a,b)
  %5273 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5274 = fptoui float %5273 to i32
  %5275 = lshr i32 %5274, 5
  %5276 = call i32 @dx.op.binary.i32(i32 40, i32 %5275, i32 8191)  ; UMin(a,b)
  %5277 = shl i32 %5276, 2
  %5278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.i32 %5278, 0
  %5280 = lshr i32 %5279, 16
  %5281 = and i32 %5279, 65535
  %5282 = lshr i32 %5279, 21
  %5283 = lshr i32 %5281, 5
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5283, i32 %5272)  ; UMin(a,b)
  %5285 = icmp ugt i32 %5282, %5284
  br i1 %5285, label %5682, label %5286

; <label>:5286                                    ; preds = %5263
  br label %5287

; <label>:5287                                    ; preds = %5672, %5286
  %5288 = phi i32 [ %5679, %5672 ], [ %5282, %5286 ]
  %5289 = phi float [ %5673, %5672 ], [ %5254, %5286 ]
  %5290 = phi float [ %5674, %5672 ], [ %5255, %5286 ]
  %5291 = phi float [ %5675, %5672 ], [ %5256, %5286 ]
  %5292 = phi float [ %5676, %5672 ], [ %5257, %5286 ]
  %5293 = phi float [ %5677, %5672 ], [ %5258, %5286 ]
  %5294 = phi float [ %5678, %5672 ], [ %5259, %5286 ]
  %5295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.i32 %5295, 0
  %5297 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5270, i32 %5296, i32 %5288)  ; UMad(a,b,c)
  %5298 = shl i32 %5297, 2
  %5299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.i32 %5299, 0
  %5301 = shl i32 %5288, 5
  %5302 = sub nsw i32 %5280, %5301
  %5303 = call i32 @dx.op.binary.i32(i32 37, i32 %5302, i32 0)  ; IMax(a,b)
  %5304 = call i32 @dx.op.binary.i32(i32 38, i32 %5303, i32 31)  ; IMin(a,b)
  %5305 = sub nsw i32 1, %5280
  %5306 = add nsw i32 %5305, %5281
  %5307 = call i32 @dx.op.binary.i32(i32 37, i32 %5306, i32 0)  ; IMax(a,b)
  %5308 = call i32 @dx.op.binary.i32(i32 38, i32 %5307, i32 32)  ; IMin(a,b)
  %5309 = and i32 %5308, 31
  %5310 = shl i32 -1, %5309
  %5311 = xor i32 %5310, -1
  %5312 = and i32 %5304, 31
  %5313 = shl i32 %5311, %5312
  %5314 = icmp eq i32 %5308, 32
  %5315 = select i1 %5314, i32 -1, i32 %5313
  %5316 = and i32 %5315, %5300
  %5317 = icmp eq i32 %5316, 0
  br i1 %5317, label %5672, label %5318

; <label>:5318                                    ; preds = %5287
  br label %5319

; <label>:5319                                    ; preds = %5399, %5318
  %5320 = phi i32 [ %5331, %5399 ], [ %5316, %5318 ]
  %5321 = phi float [ %5400, %5399 ], [ %5289, %5318 ]
  %5322 = phi float [ %5401, %5399 ], [ %5290, %5318 ]
  %5323 = phi float [ %5402, %5399 ], [ %5291, %5318 ]
  %5324 = phi float [ %5403, %5399 ], [ %5292, %5318 ]
  %5325 = phi float [ %5404, %5399 ], [ %5293, %5318 ]
  %5326 = phi float [ %5405, %5399 ], [ %5294, %5318 ]
  %5327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5320)  ; FirstbitLo(value)
  %5328 = add i32 %5327, %5301
  %5329 = and i32 %5327, 31
  %5330 = shl i32 1, %5329
  %5331 = xor i32 %5330, %5320
  %5332 = mul i32 %5328, 112
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5337 = or i32 %5332, 12
  %5338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5337, i32 undef)  ; BufferLoad(srv,index,wot)
  %5339 = extractvalue %dx.types.ResRet.f32 %5338, 0
  %5340 = add i32 %5332, 44
  %5341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5340, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = add i32 %5332, 48
  %5344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.ResRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.ResRet.f32 %5344, 2
  %5348 = add i32 %5332, 80
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = select i1 %216, float %5350, float %5334
  %5354 = select i1 %216, float %5352, float %5335
  %5355 = select i1 %216, float %5351, float %5336
  %5356 = fsub fast float %5345, %164
  %5357 = fsub fast float %5346, %165
  %5358 = fsub fast float %5347, %166
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 24, float %5359)  ; Sqrt(value)
  %5361 = fdiv fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5361, %5356
  %5363 = fmul fast float %5361, %5357
  %5364 = fmul fast float %5361, %5358
  %5365 = fadd fast float %5360, %5339
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = fmul float %5342, %5366
  %5368 = fmul float %5367, %5367
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = and i32 %5330, %5316
  %5371 = icmp eq i32 %5370, 0
  br i1 %5371, label %5394, label %5372, !dx.controlflow.hints !74

; <label>:5372                                    ; preds = %5319
  %5373 = lshr i32 %5264, 5
  %5374 = lshr i32 %5265, 5
  %5375 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %5373, i32 %5374, i32 %5328, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5376 = extractvalue %dx.types.ResRet.i32 %5375, 0
  %5377 = and i32 %5376, 3
  %5378 = icmp eq i32 %5377, 0
  %5379 = select i1 %5378, float 1.000000e+00, float 0.000000e+00
  %5380 = icmp eq i32 %5377, 3
  br i1 %5380, label %5381, label %5394

; <label>:5381                                    ; preds = %5372
  %5382 = lshr i32 %5376, 10
  %5383 = and i32 %5382, 8160
  %5384 = and i32 %5265, 31
  %5385 = or i32 %5383, %5384
  %5386 = lshr i32 %5376, 1
  %5387 = and i32 %5386, 16352
  %5388 = and i32 %5264, 31
  %5389 = or i32 %5387, %5388
  %5390 = lshr i32 %5376, 23
  %5391 = and i32 %5390, 255
  %5392 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %5389, i32 %5385, i32 %5391, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  br label %5394

; <label>:5394                                    ; preds = %5381, %5372, %5319
  %5395 = phi float [ %5393, %5381 ], [ %5379, %5372 ], [ 0.000000e+00, %5319 ]
  %5396 = call float @dx.op.binary.f32(i32 36, float %5395, float %5395)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5395, float %5396)  ; FMin(a,b)
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  br i1 %5398, label %5407, label %5399, !dx.controlflow.hints !75

; <label>:5399                                    ; preds = %5643, %5394
  %5400 = phi float [ %5321, %5394 ], [ %5668, %5643 ]
  %5401 = phi float [ %5322, %5394 ], [ %5669, %5643 ]
  %5402 = phi float [ %5323, %5394 ], [ %5670, %5643 ]
  %5403 = phi float [ %5324, %5394 ], [ %5659, %5643 ]
  %5404 = phi float [ %5325, %5394 ], [ %5660, %5643 ]
  %5405 = phi float [ %5326, %5394 ], [ %5661, %5643 ]
  %5406 = icmp eq i32 %5320, %5330
  br i1 %5406, label %5671, label %5319

; <label>:5407                                    ; preds = %5394
  %5408 = fmul fast float %5395, %5353
  %5409 = fmul fast float %5395, %5354
  %5410 = fmul fast float %5395, %5355
  %5411 = fsub fast float %5347, %3958
  %5412 = fcmp fast ogt float %5411, 0.000000e+00
  %5413 = fsub fast float %166, %3958
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  %5415 = xor i1 %5414, %5412
  %5416 = fsub fast float %3958, %5347
  %5417 = fmul fast float %5416, 2.000000e+00
  %5418 = fadd fast float %5417, %5347
  %5419 = select i1 %5415, float %5347, float %5418
  %5420 = fsub fast float %5419, %166
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5420, float %5356, float %5357, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.unary.f32(i32 25, float %5421)  ; Rsqrt(value)
  %5423 = fmul fast float %5422, %5356
  %5424 = fmul fast float %5422, %5357
  %5425 = fmul fast float %5422, %5420
  %5426 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = fdiv fast float 1.000000e+00, %5427
  %5429 = fmul fast float %5428, %5426
  %5430 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5413, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fcmp fast ogt float %5430, 0.000000e+00
  %5432 = fcmp fast olt float %5430, 0.000000e+00
  %5433 = zext i1 %5431 to i32
  %5434 = zext i1 %5432 to i32
  %5435 = sub nsw i32 %5433, %5434
  %5436 = sitofp i32 %5435 to float
  %5437 = fsub fast float %5419, %3958
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5437, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = fcmp fast ogt float %5438, 0.000000e+00
  %5440 = fcmp fast olt float %5438, 0.000000e+00
  %5441 = zext i1 %5439 to i32
  %5442 = zext i1 %5440 to i32
  %5443 = sub nsw i32 %5441, %5442
  %5444 = sitofp i32 %5443 to float
  %5445 = fcmp fast une float %5436, %5444
  br i1 %5445, label %5446, label %5456

; <label>:5446                                    ; preds = %5407
  %5447 = fmul fast float %5429, %5425
  %5448 = fmul fast float %5429, %5424
  %5449 = fmul fast float %5429, %5423
  %5450 = fmul fast float %5449, %5449
  %5451 = fmul fast float %5448, %5448
  %5452 = fadd fast float %5450, %5451
  %5453 = fmul fast float %5447, %5447
  %5454 = fadd fast float %5452, %5453
  %5455 = call float @dx.op.unary.f32(i32 24, float %5454)  ; Sqrt(value)
  br label %5468

; <label>:5456                                    ; preds = %5407
  %5457 = icmp slt i32 %5435, 0
  br i1 %5457, label %5458, label %5468

; <label>:5458                                    ; preds = %5456
  %5459 = fsub fast float %164, %5345
  %5460 = fsub fast float %165, %5346
  %5461 = fsub fast float %166, %5419
  %5462 = fmul fast float %5459, %5459
  %5463 = fmul fast float %5460, %5460
  %5464 = fadd fast float %5462, %5463
  %5465 = fmul fast float %5461, %5461
  %5466 = fadd fast float %5464, %5465
  %5467 = call float @dx.op.unary.f32(i32 24, float %5466)  ; Sqrt(value)
  br label %5468

; <label>:5468                                    ; preds = %5458, %5456, %5446
  %5469 = phi float [ %5455, %5446 ], [ %5467, %5458 ], [ 0.000000e+00, %5456 ]
  %5470 = and i1 %5414, %5412
  %5471 = fsub fast float -0.000000e+00, %5469
  %5472 = select i1 %5470, float -0.000000e+00, float %5471
  %5473 = fmul fast float %3959, 0x3FF7154760000000
  %5474 = fmul fast float %5473, %5472
  %5475 = fmul fast float %3960, 0x3FF7154760000000
  %5476 = fmul fast float %5475, %5472
  %5477 = fmul fast float %3961, 0x3FF7154760000000
  %5478 = fmul fast float %5477, %5472
  %5479 = call float @dx.op.unary.f32(i32 21, float %5474)  ; Exp(value)
  %5480 = call float @dx.op.unary.f32(i32 21, float %5476)  ; Exp(value)
  %5481 = call float @dx.op.unary.f32(i32 21, float %5478)  ; Exp(value)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5484 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5485 = fmul fast float %5408, %5482
  %5486 = fmul fast float %5409, %5483
  %5487 = fmul fast float %5410, %5484
  %5488 = fsub fast float %5362, %4750
  %5489 = fsub fast float %5363, %4749
  %5490 = fsub fast float %5364, %4748
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 25, float %5491)  ; Rsqrt(value)
  %5493 = fmul fast float %5492, %5488
  %5494 = fmul fast float %5492, %5489
  %5495 = fmul fast float %5492, %5490
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5363, float %5364, float %4754, float %4755, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4746, float %4745, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5499 = fmul fast float %5498, %5369
  %5500 = fmul fast float %5498, %5498
  %5501 = fmul fast float %5500, %5037
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %5499, %5502
  %5504 = bitcast float %5359 to i32
  %5505 = ashr i32 %5504, 1
  %5506 = sub nsw i32 1597463007, %5505
  %5507 = bitcast i32 %5506 to float
  %5508 = fmul fast float %5507, %5356
  %5509 = fmul fast float %5507, %5357
  %5510 = fmul fast float %5507, %5358
  %5511 = fsub fast float %5508, %4750
  %5512 = fsub fast float %5509, %4749
  %5513 = fsub fast float %5510, %4748
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  %5516 = fmul fast float %5511, %5515
  %5517 = fmul fast float %5512, %5515
  %5518 = fmul fast float %5513, %5515
  %5519 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fmul fast float %5519, %5519
  %5521 = call float @dx.op.unary.f32(i32 6, float %5496)  ; FAbs(value)
  %5522 = fsub fast float 1.000000e+00, %4760
  %5523 = call float @dx.op.binary.f32(i32 35, float %5522, float 0x3F847AE140000000)  ; FMax(a,b)
  %5524 = fmul fast float %5523, %5523
  %5525 = fmul fast float %5524, %5524
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = fmul fast float %4764, %4764
  %5528 = fmul fast float %5527, %5526
  %5529 = fadd fast float %5528, %5525
  %5530 = bitcast float %5529 to i32
  %5531 = ashr i32 %5530, 1
  %5532 = add nsw i32 %5531, 532487669
  %5533 = bitcast i32 %5532 to float
  %5534 = fadd fast float %5533, %4764
  %5535 = fmul fast float %5525, %5520
  %5536 = fsub fast float 1.000000e+00, %5520
  %5537 = fadd fast float %5536, %5535
  %5538 = fmul fast float %5521, %5521
  %5539 = fmul fast float %5538, %5526
  %5540 = fadd fast float %5539, %5525
  %5541 = bitcast float %5540 to i32
  %5542 = ashr i32 %5541, 1
  %5543 = add nsw i32 %5542, 532487669
  %5544 = bitcast i32 %5543 to float
  %5545 = fadd fast float %5544, %5521
  %5546 = fmul fast float %5537, %5537
  %5547 = fmul fast float %5546, %5534
  %5548 = fmul fast float %5547, %5545
  %5549 = fdiv fast float 1.000000e+00, %5548
  %5550 = bitcast float %5525 to i32
  %5551 = sitofp i32 %5550 to float
  %5552 = fmul fast float %5551, 0x3FE7F73180000000
  %5553 = fadd fast float %5552, 0x41AFE27C40000000
  %5554 = fptosi float %5553 to i32
  %5555 = bitcast i32 %5554 to float
  %5556 = fmul fast float %5342, 0x3FD80E9D60000000
  %5557 = fmul fast float %5556, %5507
  %5558 = fadd fast float %5555, %5557
  %5559 = bitcast float %5558 to i32
  %5560 = sub nsw i32 2129859010, %5559
  %5561 = bitcast i32 %5560 to float
  %5562 = fmul fast float %5525, %5549
  %5563 = fmul fast float %5562, %5555
  %5564 = fmul fast float %5563, %5561
  %5565 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = bitcast float %5566 to i32
  %5568 = sitofp i32 %5567 to float
  %5569 = fmul fast float %5568, 5.000000e+00
  %5570 = fadd fast float %5569, 0xC1EFBF8940000000
  %5571 = fptosi float %5570 to i32
  %5572 = bitcast i32 %5571 to float
  %5573 = fsub fast float 1.000000e+00, %4757
  %5574 = fsub fast float 1.000000e+00, %4758
  %5575 = fsub fast float 1.000000e+00, %4762
  %5576 = fmul fast float %5572, %5573
  %5577 = fmul fast float %5572, %5574
  %5578 = fmul fast float %5572, %5575
  %5579 = fadd fast float %5576, %4757
  %5580 = fadd fast float %5577, %4758
  %5581 = fadd fast float %5578, %4762
  br i1 %4892, label %5582, label %5605

; <label>:5582                                    ; preds = %5468
  %5583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %3485, float %5565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.ResRet.f32 %5583, 2
  %5587 = fadd fast float %5584, -5.000000e-01
  %5588 = fadd fast float %5585, -5.000000e-01
  %5589 = fadd fast float %5586, -5.000000e-01
  %5590 = fmul fast float %4757, 4.000000e+00
  %5591 = fmul fast float %5590, %5573
  %5592 = fmul fast float %5591, %5587
  %5593 = fmul fast float %4758, 4.000000e+00
  %5594 = fmul fast float %5593, %5574
  %5595 = fmul fast float %5594, %5588
  %5596 = fmul fast float %4762, 4.000000e+00
  %5597 = fmul fast float %5596, %5575
  %5598 = fmul fast float %5597, %5589
  %5599 = fadd fast float %5592, %5579
  %5600 = fadd fast float %5595, %5580
  %5601 = fadd fast float %5598, %5581
  %5602 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  br label %5605

; <label>:5605                                    ; preds = %5582, %5468
  %5606 = phi float [ %5602, %5582 ], [ %5579, %5468 ]
  %5607 = phi float [ %5603, %5582 ], [ %5580, %5468 ]
  %5608 = phi float [ %5604, %5582 ], [ %5581, %5468 ]
  %5609 = fmul fast float %5496, 9.843750e-01
  %5610 = fadd fast float %5609, 7.812500e-03
  %5611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %5610, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5612 = extractvalue %dx.types.ResRet.f32 %5611, 2
  %5613 = extractvalue %dx.types.ResRet.f32 %5611, 3
  %5614 = fmul fast float %5612, %4757
  %5615 = fmul fast float %5612, %4758
  %5616 = fmul fast float %5612, %4762
  %5617 = fadd fast float %5614, %5613
  %5618 = fadd fast float %5615, %5613
  %5619 = fadd fast float %5616, %5613
  br i1 %4892, label %5620, label %5643

; <label>:5620                                    ; preds = %5605
  %5621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %3485, float %5496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5625 = fadd fast float %5622, -5.000000e-01
  %5626 = fadd fast float %5623, -5.000000e-01
  %5627 = fadd fast float %5624, -5.000000e-01
  %5628 = fmul fast float %4757, 4.000000e+00
  %5629 = fmul fast float %5628, %5573
  %5630 = fmul fast float %5629, %5625
  %5631 = fmul fast float %4758, 4.000000e+00
  %5632 = fmul fast float %5631, %5574
  %5633 = fmul fast float %5632, %5626
  %5634 = fmul fast float %4762, 4.000000e+00
  %5635 = fmul fast float %5634, %5575
  %5636 = fmul fast float %5635, %5627
  %5637 = fadd fast float %5630, %5617
  %5638 = fadd fast float %5633, %5618
  %5639 = fadd fast float %5636, %5619
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  br label %5643

; <label>:5643                                    ; preds = %5620, %5605
  %5644 = phi float [ %5640, %5620 ], [ %5617, %5605 ]
  %5645 = phi float [ %5641, %5620 ], [ %5618, %5605 ]
  %5646 = phi float [ %5642, %5620 ], [ %5619, %5605 ]
  %5647 = call float @dx.op.binary.f32(i32 35, float %5645, float %5646)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5644, float %5647)  ; FMax(a,b)
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = fmul fast float %5485, %1154
  %5651 = fmul fast float %5650, %5503
  %5652 = fmul fast float %5651, %5649
  %5653 = fmul fast float %5486, %1154
  %5654 = fmul fast float %5653, %5503
  %5655 = fmul fast float %5654, %5649
  %5656 = fmul fast float %5487, %1154
  %5657 = fmul fast float %5656, %5503
  %5658 = fmul fast float %5657, %5649
  %5659 = fadd fast float %5652, %5324
  %5660 = fadd fast float %5655, %5325
  %5661 = fadd fast float %5658, %5326
  %5662 = fmul fast float %5651, %5564
  %5663 = fmul fast float %5662, %5606
  %5664 = fmul fast float %5654, %5564
  %5665 = fmul fast float %5664, %5607
  %5666 = fmul fast float %5657, %5564
  %5667 = fmul fast float %5666, %5608
  %5668 = fadd fast float %5663, %5321
  %5669 = fadd fast float %5665, %5322
  %5670 = fadd fast float %5667, %5323
  br label %5399

; <label>:5671                                    ; preds = %5399
  br label %5672

; <label>:5672                                    ; preds = %5671, %5287
  %5673 = phi float [ %5289, %5287 ], [ %5400, %5671 ]
  %5674 = phi float [ %5290, %5287 ], [ %5401, %5671 ]
  %5675 = phi float [ %5291, %5287 ], [ %5402, %5671 ]
  %5676 = phi float [ %5292, %5287 ], [ %5403, %5671 ]
  %5677 = phi float [ %5293, %5287 ], [ %5404, %5671 ]
  %5678 = phi float [ %5294, %5287 ], [ %5405, %5671 ]
  %5679 = add i32 %5288, 1
  %5680 = icmp ugt i32 %5679, %5284
  br i1 %5680, label %5681, label %5287

; <label>:5681                                    ; preds = %5672
  br label %5682

; <label>:5682                                    ; preds = %5681, %5263, %5253
  %5683 = phi float [ %5254, %5253 ], [ %5254, %5263 ], [ %5673, %5681 ]
  %5684 = phi float [ %5255, %5253 ], [ %5255, %5263 ], [ %5674, %5681 ]
  %5685 = phi float [ %5256, %5253 ], [ %5256, %5263 ], [ %5675, %5681 ]
  %5686 = phi float [ %5257, %5253 ], [ %5257, %5263 ], [ %5676, %5681 ]
  %5687 = phi float [ %5258, %5253 ], [ %5258, %5263 ], [ %5677, %5681 ]
  %5688 = phi float [ %5259, %5253 ], [ %5259, %5263 ], [ %5678, %5681 ]
  %5689 = call float @dx.op.unary.f32(i32 24, float %4751)  ; Sqrt(value)
  %5690 = call float @dx.op.unary.f32(i32 24, float %4752)  ; Sqrt(value)
  %5691 = call float @dx.op.unary.f32(i32 24, float %4753)  ; Sqrt(value)
  %5692 = fmul fast float %5689, %5686
  %5693 = fmul fast float %5690, %5687
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 0
  br i1 %216, label %5696, label %5716

; <label>:5696                                    ; preds = %5682
  %5697 = fadd fast float %3507, %5688
  %5698 = fmul fast float %5697, %3486
  %5699 = fsub fast float 1.000000e+00, %3486
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 3
  %5703 = fmul fast float %5702, %5700
  %5704 = fadd fast float %5703, %5698
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = fmul fast float %5706, %5008
  %5708 = fsub fast float %5704, %5707
  %5709 = fadd fast float %5693, %5692
  %5710 = fmul fast float %5695, %5709
  %5711 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5712 = fsub fast float %5708, %5711
  %5713 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5714 = fmul fast float %5712, %5713
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  br label %5732

; <label>:5716                                    ; preds = %5682
  %5717 = fmul fast float %5691, %5688
  %5718 = fmul fast float %5695, %5692
  %5719 = fmul fast float %5695, %5693
  %5720 = fmul fast float %5717, %5695
  %5721 = add i32 %30, 356
  %5722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5721, i32 undef)  ; BufferLoad(srv,index,wot)
  %5723 = extractvalue %dx.types.ResRet.i32 %5722, 0
  %5724 = and i32 %5723, 32
  %5725 = icmp eq i32 %5724, 0
  br i1 %5725, label %5732, label %5726

; <label>:5726                                    ; preds = %5716
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = fmul fast float %5728, 0x3FE99999A0000000
  %5730 = fadd fast float %5728, %5718
  %5731 = fadd fast float %5729, %5720
  br label %5732

; <label>:5732                                    ; preds = %5726, %5716, %5696
  %5733 = phi float [ %5710, %5696 ], [ %5730, %5726 ], [ %5718, %5716 ]
  %5734 = phi float [ %5715, %5696 ], [ %5719, %5726 ], [ %5719, %5716 ]
  %5735 = phi float [ 1.000000e+00, %5696 ], [ %5731, %5726 ], [ %5720, %5716 ]
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = fmul fast float %5737, %5684
  %5739 = fmul fast float %5737, %5685
  %5740 = fadd fast float %5684, %5683
  %5741 = select i1 %216, float %5740, float %5683
  %5742 = fmul float %5741, %5737
  %5743 = select i1 %216, float 0.000000e+00, float %5738
  %5744 = select i1 %216, float 0.000000e+00, float %5739
  %5745 = fmul fast float %5733, %5689
  %5746 = fmul fast float %5734, %5690
  %5747 = fmul fast float %5735, %5691
  %5748 = fadd fast float %5742, %5745
  %5749 = fadd fast float %5743, %5746
  %5750 = fadd fast float %5744, %5747
  %5751 = select i1 %216, float %5734, float %5749
  %5752 = select i1 %216, float %5735, float %5750
  %5753 = call float @dx.op.binary.f32(i32 36, float %5748, float 3.225500e+04)  ; FMin(a,b)
  %5754 = call float @dx.op.binary.f32(i32 36, float %5751, float 3.225500e+04)  ; FMin(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5752, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5753)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5754)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5755)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!43}
!dx.entryPoints = !{!44}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!38 = !{!39, !40, !41, !42}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!44 = !{void ()* @ps_main, !"ps_main", !45, !4, !72}
!45 = !{!46, !70, null}
!46 = !{!47, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69}
!47 = !{i32 0, !"SV_Position", i8 9, i8 3, !48, i8 4, i32 1, i8 4, i32 0, i8 0, !49}
!48 = !{i32 0}
!49 = !{i32 3, i32 11}
!50 = !{i32 1, !"COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 1, i8 0, !51}
!51 = !{i32 3, i32 14}
!52 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 2, i8 0, !53}
!53 = !{i32 3, i32 3}
!54 = !{i32 3, !"NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 3, i8 0, !55}
!55 = !{i32 3, i32 7}
!56 = !{i32 4, !"TANGENT", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !57}
!57 = !{i32 3, i32 15}
!58 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 5, i8 0, !55}
!59 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 6, i8 0, !57}
!60 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !48, i8 2, i32 1, i8 1, i32 3, i8 3, !61}
!61 = !{i32 3, i32 1}
!62 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 7, i8 0, !55}
!63 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 8, i8 0, !57}
!64 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 9, i8 0, !53}
!65 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 10, i8 0, !57}
!66 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 11, i8 0, !57}
!67 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !48, i8 1, i32 1, i8 2, i32 12, i8 0, !53}
!68 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !48, i8 1, i32 1, i8 4, i32 13, i8 0, !61}
!69 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !48, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 0, i8 0, !57}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

