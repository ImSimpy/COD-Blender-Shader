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
; ENTITY_IDS               0   xy         12     NONE    uint   x   
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
; shader hash: 56a366601d42df0c556d1860ae93e1a1
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
; cbuffer 
; {
;
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb5     1
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
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     u32     2darray     T11     t11,space2     1
;                                   texture     f32     2darray     T12     t10,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14             t1     1
;                                   texture     f32          2d     T15             t2     1
;                                   texture     f32          2d     T16             t3     1
;                                   texture     f32          2d     T17             t4     1
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32          2d     T20             t5     1
;                                   texture     f32     2darray     T21     t49,space2     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     f32     2darray     T31     t35,space2     1
;                                   texture     f32          3d     T32     t31,space2     1
;                                   texture    byte         r/o     T33     t10,space1     1
;                                   texture    byte         r/o     T34     t68,space1     1
;                                   texture     f32          2d     T35      t0,space2     1
;                                   texture    byte         r/o     T36     t11,space1     1
;                                   texture    byte         r/o     T37     t13,space1     1
;                                   texture     f32          2d     T38     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
%CinematicConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %86, %80
  %88 = fmul fast float %86, %81
  %89 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %72
  %95 = fmul fast float %93, %73
  %96 = fmul fast float %93, %74
  %97 = fmul fast float %73, %70
  %98 = fmul fast float %74, %69
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %74, %68
  %101 = fmul fast float %72, %70
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %72, %69
  %104 = fmul fast float %73, %68
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %99, %71
  %107 = fmul fast float %102, %71
  %108 = fmul fast float %105, %71
  %109 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = bitcast float %109 to i32
  %111 = ashr i32 %110, 1
  %112 = sub nsw i32 1597250115, %111
  %113 = bitcast i32 %112 to float
  %114 = fmul fast float %113, %61
  %115 = fmul fast float %113, %62
  %116 = fmul fast float %113, %63
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fcmp fast une float %118, 0.000000e+00
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %87, 2.000000e+00
  %124 = fmul fast float %123, %121
  %125 = fmul fast float %88, 2.000000e+00
  %126 = fmul fast float %125, %122
  %127 = fsub fast float 1.000000e+00, %124
  %128 = fsub fast float 1.000000e+00, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = select i1 %119, float %130, float %134
  %138 = select i1 %119, float %131, float %135
  %139 = select i1 %119, float %132, float %136
  %140 = fmul fast float %137, %127
  %141 = fmul fast float %138, %127
  %142 = fmul fast float %139, %127
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %119, float %144, float %148
  %152 = select i1 %119, float %145, float %149
  %153 = select i1 %119, float %146, float %150
  %154 = fmul fast float %151, %128
  %155 = fmul fast float %152, %128
  %156 = fmul fast float %153, %128
  %157 = fadd fast float %154, %140
  %158 = fadd fast float %155, %141
  %159 = fadd fast float %156, %142
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %119, float %161, float %165
  %169 = select i1 %119, float %162, float %166
  %170 = select i1 %119, float %163, float %167
  %171 = fadd fast float %157, %168
  %172 = fadd fast float %158, %169
  %173 = fadd fast float %159, %170
  %174 = fmul fast float %171, %82
  %175 = fmul fast float %172, %82
  %176 = fmul fast float %173, %82
  %177 = shl i32 %44, 5
  %178 = add i32 %177, 4194304
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = extractvalue %dx.types.ResRet.i32 %179, 1
  %182 = extractvalue %dx.types.ResRet.i32 %179, 2
  %183 = extractvalue %dx.types.ResRet.i32 %179, 3
  %184 = add i32 %177, 4194320
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = extractvalue %dx.types.ResRet.i32 %185, 1
  %188 = bitcast i32 %186 to float
  %189 = bitcast i32 %187 to float
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %87
  %194 = fmul fast float %192, %88
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = select i1 %198, i32 %204, i32 0
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %222

; <label>:213                                     ; preds = %0
  %214 = fmul fast float %122, %88
  %215 = fmul fast float %121, %87
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %215, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fcmp fast olt float %218, %220
  br label %225

; <label>:222                                     ; preds = %0
  %223 = icmp eq i32 %210, 0
  %224 = and i1 %209, %223
  br label %225

; <label>:225                                     ; preds = %222, %213
  %226 = phi i1 [ %221, %213 ], [ %224, %222 ]
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fmul fast float %228, 0x3FE3C6EF40000000
  %230 = frem fast float %87, 2.560000e+02
  %231 = frem fast float %88, 2.560000e+02
  %232 = fptoui float %230 to i32
  %233 = fptoui float %231 to i32
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = fadd fast float %235, %229
  %238 = fadd fast float %236, %229
  %239 = call float @dx.op.unary.f32(i32 22, float %237)  ; Frc(value)
  %240 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %241 = add i32 %43, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %43, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %43, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %43, 232
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %43, 52
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %43, 304
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %43, 248
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %43, 68
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %43, 320
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = add i32 %43, 264
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %43, 84
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %43, 336
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %43, 348
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 32
  %365 = icmp eq i32 %364, 0
  %366 = and i32 %363, 64
  %367 = icmp eq i32 %366, 0
  %368 = and i32 %363, 128
  %369 = icmp eq i32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 2
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %387, label %374

; <label>:374                                     ; preds = %225
  %375 = add i32 %43, 508
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = add i32 %377, 0
  %379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %379, %dx.types.Handle %84, float %75, float %76, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = fmul fast float %381, %77
  %385 = fmul fast float %382, %78
  %386 = fmul fast float %383, %79
  br label %387

; <label>:387                                     ; preds = %374, %225
  %388 = phi float [ %79, %225 ], [ %386, %374 ]
  %389 = phi float [ %78, %225 ], [ %385, %374 ]
  %390 = phi float [ %77, %225 ], [ %384, %374 ]
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %414, label %395

; <label>:395                                     ; preds = %387
  %396 = add i32 %43, 44
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 1
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %390, float 1.000000e+00
  %402 = add i32 %43, 60
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 1
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %389, float 1.000000e+00
  %408 = add i32 %43, 76
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %388, float 1.000000e+00
  br label %414

; <label>:414                                     ; preds = %395, %387
  %415 = phi float [ %388, %387 ], [ %413, %395 ]
  %416 = phi float [ %389, %387 ], [ %407, %395 ]
  %417 = phi float [ %390, %387 ], [ %401, %395 ]
  %418 = lshr i32 %392, 20
  %419 = and i32 %418, 3
  %420 = add nuw nsw i32 %419, 1
  %421 = add i32 %43, 24
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %43, 28
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = or i32 %426, %423
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %840, label %429

; <label>:429                                     ; preds = %414
  %430 = and i32 %423, 262144
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %431, float %48, float 1.000000e+00
  %433 = select i1 %431, float %49, float 0.000000e+00
  %434 = select i1 %431, float %50, float 0.000000e+00
  %435 = select i1 %431, float %51, float 1.000000e+00
  %436 = select i1 %431, float %52, float %75
  %437 = select i1 %431, float %53, float %76
  %438 = add i32 %43, 284
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %442, 0x3F50624DE0000000
  %444 = add i32 %43, 88
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = lshr i32 %446, 16
  %448 = and i32 %447, 255
  %449 = lshr i32 %446, 24
  %450 = add i32 %43, 292
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = add i32 %43, 32
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = lshr i32 %459, 22
  %461 = shl nuw nsw i32 %460, 5
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = shl i32 %459, 4
  %464 = and i32 %463, 32752
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %459, 7
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 3
  %471 = fmul fast float %470, 1.000000e+03
  %472 = fmul fast float %269, %471
  %473 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %474 = fadd fast float %473, %259
  %475 = fmul fast float %270, %471
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %261
  %478 = fmul fast float %443, %471
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fmul fast float %479, 0x401921FB60000000
  %481 = fadd fast float %480, %462
  %482 = call float @dx.op.unary.f32(i32 13, float %481)  ; Sin(value)
  %483 = call float @dx.op.unary.f32(i32 12, float %481)  ; Cos(value)
  %484 = fsub fast float -0.000000e+00, %482
  %485 = fadd fast float %436, -5.000000e-01
  %486 = fadd fast float %437, -5.000000e-01
  %487 = fmul fast float %454, %485
  %488 = fmul fast float %456, %486
  %489 = fadd fast float %487, 5.000000e-01
  %490 = fadd fast float %488, 5.000000e-01
  %491 = fmul fast float %465, %489
  %492 = fmul fast float %468, %490
  %493 = fmul fast float %483, %491
  %494 = call float @dx.op.tertiary.f32(i32 46, float %484, float %492, float %493)  ; FMad(a,b,c)
  %495 = fmul fast float %482, %491
  %496 = call float @dx.op.tertiary.f32(i32 46, float %483, float %492, float %495)  ; FMad(a,b,c)
  %497 = fadd fast float %474, %494
  %498 = fadd fast float %477, %496
  %499 = icmp ugt i32 %448, 1
  %500 = icmp ugt i32 %446, 33554431
  %501 = or i1 %500, %499
  br i1 %501, label %502, label %527

; <label>:502                                     ; preds = %429
  %503 = add i32 %43, 228
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 16
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = fmul fast float %470, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = mul nuw nsw i32 %448, %449
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %509, %511
  %513 = call float @dx.op.unary.f32(i32 27, float %512)  ; Round_ni(value)
  %514 = fptoui float %513 to i32
  %515 = urem i32 %514, %448
  %516 = udiv i32 %514, %449
  %517 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %518 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %519 = uitofp i32 %515 to float
  %520 = uitofp i32 %516 to float
  %521 = fadd fast float %517, %519
  %522 = fadd fast float %518, %520
  %523 = uitofp i32 %448 to float
  %524 = uitofp i32 %449 to float
  %525 = fdiv fast float %521, %523
  %526 = fdiv fast float %522, %524
  br label %527

; <label>:527                                     ; preds = %502, %429
  %528 = phi float [ %525, %502 ], [ %497, %429 ]
  %529 = phi float [ %526, %502 ], [ %498, %429 ]
  %530 = and i32 %423, 16
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %728, label %532

; <label>:532                                     ; preds = %527
  %533 = add i32 %43, 392
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = add i32 %535, 0
  %537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %537, %dx.types.Handle %83, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = and i32 %446, 255
  %544 = uitofp i32 %543 to float
  %545 = lshr i32 %446, 8
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %542, %544
  %549 = fadd fast float %548, %547
  %550 = fmul fast float %549, 0x3F70101000000000
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 512
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %563, label %555

; <label>:555                                     ; preds = %532
  %556 = add i32 %43, 476
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = add i32 %558, 0
  %560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %560, %dx.types.Handle %84, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  br label %563

; <label>:563                                     ; preds = %555, %532
  %564 = phi float [ %562, %555 ], [ 1.000000e+00, %532 ]
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 33554432
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %675, label %569

; <label>:569                                     ; preds = %563
  %570 = add i32 %43, 224
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %43, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = lshr i32 %583, 24
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = and i32 %583, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %583, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %583, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = add i32 %43, 220
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = lshr i32 %600, 24
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = and i32 %600, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %600, 8
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %600, 16
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = bitcast float %539 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %539, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %539
  %624 = fmul fast float %623, %622
  %625 = bitcast float %540 to i32
  %626 = ashr i32 %625, 1
  %627 = sub nsw i32 1597463174, %626
  %628 = bitcast i32 %627 to float
  %629 = fmul fast float %540, 5.000000e-01
  %630 = fmul fast float %628, %628
  %631 = fmul fast float %630, %629
  %632 = fsub fast float 1.500000e+00, %631
  %633 = fmul fast float %628, %540
  %634 = fmul fast float %633, %632
  %635 = bitcast float %541 to i32
  %636 = ashr i32 %635, 1
  %637 = sub nsw i32 1597463174, %636
  %638 = bitcast i32 %637 to float
  %639 = fmul fast float %541, 5.000000e-01
  %640 = fmul fast float %638, %638
  %641 = fmul fast float %640, %639
  %642 = fsub fast float 1.500000e+00, %641
  %643 = fmul fast float %638, %541
  %644 = fmul fast float %643, %642
  %645 = fsub fast float %624, %606
  %646 = fsub fast float %634, %610
  %647 = fsub fast float %644, %614
  %648 = fmul fast float %645, %574
  %649 = fmul fast float %646, %576
  %650 = fmul fast float %647, %581
  %651 = fadd fast float %648, %589
  %652 = fadd fast float %649, %593
  %653 = fadd fast float %650, %597
  %654 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %655 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %656 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %657 = fmul fast float %654, %654
  %658 = fmul fast float %655, %655
  %659 = fmul fast float %656, %656
  %660 = fsub fast float %657, %539
  %661 = fsub fast float %658, %540
  %662 = fsub fast float %659, %541
  %663 = fmul fast float %660, %564
  %664 = fmul fast float %661, %564
  %665 = fmul fast float %662, %564
  %666 = fadd fast float %663, %539
  %667 = fadd fast float %664, %540
  %668 = fadd fast float %665, %541
  %669 = fadd fast float %586, %550
  %670 = fsub fast float %669, %603
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = fsub fast float %671, %550
  %673 = fmul fast float %672, %564
  %674 = fadd fast float %673, %550
  br label %728

; <label>:675                                     ; preds = %563
  %676 = and i32 %566, 134217728
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %712, label %678

; <label>:678                                     ; preds = %675
  %679 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %680 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %681 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %682 = fadd fast float %679, -5.000000e-01
  %683 = fadd fast float %680, -5.000000e-01
  %684 = fadd fast float %681, -5.000000e-01
  %685 = fmul fast float %682, %564
  %686 = fmul fast float %683, %564
  %687 = fmul fast float %684, %564
  %688 = fadd fast float %685, 5.000000e-01
  %689 = fadd fast float %686, 5.000000e-01
  %690 = fadd fast float %687, 5.000000e-01
  %691 = call float @dx.op.unary.f32(i32 24, float %539)  ; Sqrt(value)
  %692 = call float @dx.op.unary.f32(i32 24, float %540)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %694 = fmul fast float %688, 2.000000e+00
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fmul fast float %695, %691
  %697 = fadd fast float %696, %694
  %698 = fmul fast float %697, %691
  %699 = fmul fast float %689, 2.000000e+00
  %700 = fsub fast float 1.000000e+00, %699
  %701 = fmul fast float %700, %692
  %702 = fadd fast float %701, %699
  %703 = fmul fast float %702, %692
  %704 = fmul fast float %690, 2.000000e+00
  %705 = fsub fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %693
  %707 = fadd fast float %706, %704
  %708 = fmul fast float %707, %693
  %709 = fmul fast float %698, %698
  %710 = fmul fast float %703, %703
  %711 = fmul fast float %708, %708
  br label %728

; <label>:712                                     ; preds = %675
  %713 = fmul fast float %246, %246
  %714 = fmul fast float %250, %250
  %715 = fmul fast float %254, %254
  %716 = fadd fast float %713, -1.000000e+00
  %717 = fadd fast float %714, -1.000000e+00
  %718 = fadd fast float %715, -1.000000e+00
  %719 = fmul fast float %564, %716
  %720 = fmul fast float %564, %717
  %721 = fmul fast float %564, %718
  %722 = fadd fast float %719, 1.000000e+00
  %723 = fadd fast float %720, 1.000000e+00
  %724 = fadd fast float %721, 1.000000e+00
  %725 = fmul fast float %722, %539
  %726 = fmul fast float %723, %540
  %727 = fmul fast float %724, %541
  br label %728

; <label>:728                                     ; preds = %712, %678, %569, %527
  %729 = phi float [ %674, %569 ], [ %550, %678 ], [ %550, %712 ], [ 0x3FA23C0BE0000000, %527 ]
  %730 = phi float [ %666, %569 ], [ %709, %678 ], [ %725, %712 ], [ 1.000000e+00, %527 ]
  %731 = phi float [ %667, %569 ], [ %710, %678 ], [ %726, %712 ], [ 1.000000e+00, %527 ]
  %732 = phi float [ %668, %569 ], [ %711, %678 ], [ %727, %712 ], [ 1.000000e+00, %527 ]
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 1
  %735 = and i32 %734, 1
  %736 = icmp ne i32 %735, 0
  %737 = add i32 %43, 356
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 32
  %741 = icmp ne i32 %740, 0
  %742 = and i1 %736, %741
  %743 = select i1 %742, float 1.000000e+00, float %730
  %744 = select i1 %742, float 0x3FD3333340000000, float %731
  %745 = select i1 %742, float 0x3FD3333340000000, float %732
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %822, label %750

; <label>:750                                     ; preds = %728
  %751 = add i32 %43, 92
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = add i32 %43, 408
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %756, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %758, %dx.types.Handle %83, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 67108864
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %818, label %802

; <label>:802                                     ; preds = %750
  %803 = add i32 %43, 280
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %820 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %432, float %433)  ; Dot2(ax,ay,bx,by)
  %821 = call float @dx.op.dot2.f32(i32 54, float %796, float %797, float %434, float %435)  ; Dot2(ax,ay,bx,by)
  br label %822

; <label>:822                                     ; preds = %818, %728
  %823 = phi float [ %819, %818 ], [ 0x3FD6666660000000, %728 ]
  %824 = phi float [ %820, %818 ], [ 0.000000e+00, %728 ]
  %825 = phi float [ %821, %818 ], [ 0.000000e+00, %728 ]
  %826 = phi float [ %762, %818 ], [ 1.000000e+00, %728 ]
  %827 = add i32 %43, 96
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = lshr i32 %829, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = fmul fast float %834, %835
  %837 = fadd fast float %836, %831
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  br label %840

; <label>:840                                     ; preds = %822, %414
  %841 = phi float [ 0.000000e+00, %414 ], [ %824, %822 ]
  %842 = phi float [ 0.000000e+00, %414 ], [ %825, %822 ]
  %843 = phi float [ 0.000000e+00, %414 ], [ %743, %822 ]
  %844 = phi float [ 0.000000e+00, %414 ], [ %744, %822 ]
  %845 = phi float [ 0.000000e+00, %414 ], [ %745, %822 ]
  %846 = phi float [ 0.000000e+00, %414 ], [ %729, %822 ]
  %847 = phi float [ 0.000000e+00, %414 ], [ 1.000000e+00, %822 ]
  %848 = phi float [ 0.000000e+00, %414 ], [ %823, %822 ]
  %849 = phi float [ 0.000000e+00, %414 ], [ %826, %822 ]
  %850 = phi float [ 0.000000e+00, %414 ], [ %839, %822 ]
  br i1 %365, label %1509, label %851

; <label>:851                                     ; preds = %840
  %852 = icmp ult i32 %420, 2
  %853 = add i32 %43, 40
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %43, 44
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = or i32 %858, %855
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %1509, label %861

; <label>:861                                     ; preds = %851
  %862 = and i32 %855, 262144
  %863 = icmp ne i32 %862, 0
  %864 = select i1 %863, float %48, float 1.000000e+00
  %865 = select i1 %863, float %49, float 0.000000e+00
  %866 = select i1 %863, float %50, float 0.000000e+00
  %867 = select i1 %863, float %51, float 1.000000e+00
  %868 = select i1 %863, float %52, float %75
  %869 = select i1 %863, float %53, float %76
  %870 = add i32 %43, 300
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = lshr i32 %872, 16
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = fmul fast float %874, 0x3F50624DE0000000
  %876 = add i32 %43, 104
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = and i32 %879, 255
  %881 = lshr i32 %878, 24
  %882 = add i32 %43, 308
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 65535
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = lshr i32 %884, 16
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = add i32 %43, 48
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = lshr i32 %891, 22
  %893 = shl nuw nsw i32 %892, 5
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = shl i32 %891, 4
  %896 = and i32 %895, 32752
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = lshr i32 %891, 7
  %899 = and i32 %898, 32752
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 3
  %903 = fmul fast float %902, 1.000000e+03
  %904 = fmul fast float %299, %903
  %905 = call float @dx.op.unary.f32(i32 22, float %904)  ; Frc(value)
  %906 = fadd fast float %905, %289
  %907 = fmul fast float %300, %903
  %908 = call float @dx.op.unary.f32(i32 22, float %907)  ; Frc(value)
  %909 = fadd fast float %908, %291
  %910 = fmul fast float %875, %903
  %911 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %912 = fmul fast float %911, 0x401921FB60000000
  %913 = fadd fast float %912, %894
  %914 = call float @dx.op.unary.f32(i32 13, float %913)  ; Sin(value)
  %915 = call float @dx.op.unary.f32(i32 12, float %913)  ; Cos(value)
  %916 = fsub fast float -0.000000e+00, %914
  %917 = fadd fast float %868, -5.000000e-01
  %918 = fadd fast float %869, -5.000000e-01
  %919 = fmul fast float %886, %917
  %920 = fmul fast float %888, %918
  %921 = fadd fast float %919, 5.000000e-01
  %922 = fadd fast float %920, 5.000000e-01
  %923 = fmul fast float %897, %921
  %924 = fmul fast float %900, %922
  %925 = fmul fast float %915, %923
  %926 = call float @dx.op.tertiary.f32(i32 46, float %916, float %924, float %925)  ; FMad(a,b,c)
  %927 = fmul fast float %914, %923
  %928 = call float @dx.op.tertiary.f32(i32 46, float %915, float %924, float %927)  ; FMad(a,b,c)
  %929 = fadd fast float %906, %926
  %930 = fadd fast float %909, %928
  %931 = icmp ugt i32 %880, 1
  %932 = icmp ugt i32 %878, 33554431
  %933 = or i1 %932, %931
  br i1 %933, label %934, label %959

; <label>:934                                     ; preds = %861
  %935 = add i32 %43, 244
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = fmul fast float %902, %939
  %941 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %942 = mul nuw nsw i32 %880, %881
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %941, %943
  %945 = call float @dx.op.unary.f32(i32 27, float %944)  ; Round_ni(value)
  %946 = fptoui float %945 to i32
  %947 = urem i32 %946, %880
  %948 = udiv i32 %946, %881
  %949 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %950 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %951 = uitofp i32 %947 to float
  %952 = uitofp i32 %948 to float
  %953 = fadd fast float %949, %951
  %954 = fadd fast float %950, %952
  %955 = uitofp i32 %880 to float
  %956 = uitofp i32 %881 to float
  %957 = fdiv fast float %953, %955
  %958 = fdiv fast float %954, %956
  br label %959

; <label>:959                                     ; preds = %934, %861
  %960 = phi float [ %957, %934 ], [ %929, %861 ]
  %961 = phi float [ %958, %934 ], [ %930, %861 ]
  %962 = and i32 %855, 256
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %1010, label %964

; <label>:964                                     ; preds = %959
  %965 = add i32 %43, 460
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = add i32 %967, 0
  %969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %969, %dx.types.Handle %84, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = add i32 %43, 116
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = shl i32 %974, 4
  %976 = and i32 %975, 32752
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %974, 7
  %979 = and i32 %978, 32752
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = fsub fast float 1.000000e+00, %417
  %982 = call float @dx.op.binary.f32(i32 35, float %981, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %983 = bitcast float %417 to i32
  %984 = sitofp i32 %983 to float
  %985 = fadd fast float %984, 0xC1CFBF8940000000
  %986 = fmul fast float %980, %985
  %987 = fadd fast float %986, 0x41CFBF8940000000
  %988 = fptosi float %987 to i32
  %989 = bitcast i32 %988 to float
  %990 = bitcast float %982 to i32
  %991 = sitofp i32 %990 to float
  %992 = fadd fast float %991, 0xC1CFBF8940000000
  %993 = fmul fast float %992, %980
  %994 = fadd fast float %993, 0x41CFBF8940000000
  %995 = fptosi float %994 to i32
  %996 = bitcast i32 %995 to float
  %997 = fmul fast float %989, %977
  %998 = fmul fast float %996, %977
  %999 = fsub fast float %982, %997
  %1000 = fadd fast float %998, %982
  %1001 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1002 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1003 = fsub fast float %971, %1001
  %1004 = fsub fast float %1002, %1001
  %1005 = bitcast float %1004 to i32
  %1006 = sub nsw i32 2129859010, %1005
  %1007 = bitcast i32 %1006 to float
  %1008 = fmul fast float %1007, %1003
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  br label %1010

; <label>:1010                                    ; preds = %964, %959
  %1011 = phi float [ %1009, %964 ], [ %417, %959 ]
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 128
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1032, label %1016

; <label>:1016                                    ; preds = %1010
  %1017 = add i32 %43, 444
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = add i32 %1019, 0
  %1021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1021, %dx.types.Handle %84, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 524288
  %1027 = icmp ne i32 %1026, 0
  %1028 = fcmp fast ogt float %1023, 0x3FE0101020000000
  %1029 = select i1 %1028, float 1.000000e+00, float 0.000000e+00
  %1030 = select i1 %1027, float %1029, float %1023
  %1031 = fmul fast float %1030, %1011
  br label %1032

; <label>:1032                                    ; preds = %1016, %1010
  %1033 = phi float [ %1031, %1016 ], [ %1011, %1010 ]
  %1034 = fcmp fast ult float %1033, 0x3F70101020000000
  br i1 %1034, label %1509, label %1035

; <label>:1035                                    ; preds = %1032
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 16
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1238, label %1040

; <label>:1040                                    ; preds = %1035
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = add i32 %43, 396
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %83, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = and i32 %1042, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = lshr i32 %1042, 8
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1052, %1054
  %1059 = fadd fast float %1058, %1057
  %1060 = fmul fast float %1059, 0x3F70101000000000
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 512
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1073, label %1065

; <label>:1065                                    ; preds = %1040
  %1066 = add i32 %43, 480
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %1068, 0
  %1070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1070, %dx.types.Handle %84, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  br label %1073

; <label>:1073                                    ; preds = %1065, %1040
  %1074 = phi float [ %1072, %1065 ], [ 1.000000e+00, %1040 ]
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 33554432
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1185, label %1079

; <label>:1079                                    ; preds = %1073
  %1080 = add i32 %43, 240
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1082, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = add i32 %43, 244
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = lshr i32 %1093, 24
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1095, 0x3F70101020000000
  %1097 = and i32 %1093, 255
  %1098 = uitofp i32 %1097 to float
  %1099 = fmul fast float %1098, 0x3F70101020000000
  %1100 = lshr i32 %1093, 8
  %1101 = and i32 %1100, 255
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F70101020000000
  %1104 = lshr i32 %1093, 16
  %1105 = and i32 %1104, 255
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F70101020000000
  %1108 = add i32 %43, 236
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = lshr i32 %1110, 24
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = and i32 %1110, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = lshr i32 %1110, 8
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = lshr i32 %1110, 16
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = bitcast float %1049 to i32
  %1126 = ashr i32 %1125, 1
  %1127 = sub nsw i32 1597463174, %1126
  %1128 = bitcast i32 %1127 to float
  %1129 = fmul fast float %1049, 5.000000e-01
  %1130 = fmul fast float %1128, %1128
  %1131 = fmul fast float %1130, %1129
  %1132 = fsub fast float 1.500000e+00, %1131
  %1133 = fmul fast float %1128, %1049
  %1134 = fmul fast float %1133, %1132
  %1135 = bitcast float %1050 to i32
  %1136 = ashr i32 %1135, 1
  %1137 = sub nsw i32 1597463174, %1136
  %1138 = bitcast i32 %1137 to float
  %1139 = fmul fast float %1050, 5.000000e-01
  %1140 = fmul fast float %1138, %1138
  %1141 = fmul fast float %1140, %1139
  %1142 = fsub fast float 1.500000e+00, %1141
  %1143 = fmul fast float %1138, %1050
  %1144 = fmul fast float %1143, %1142
  %1145 = bitcast float %1051 to i32
  %1146 = ashr i32 %1145, 1
  %1147 = sub nsw i32 1597463174, %1146
  %1148 = bitcast i32 %1147 to float
  %1149 = fmul fast float %1051, 5.000000e-01
  %1150 = fmul fast float %1148, %1148
  %1151 = fmul fast float %1150, %1149
  %1152 = fsub fast float 1.500000e+00, %1151
  %1153 = fmul fast float %1148, %1051
  %1154 = fmul fast float %1153, %1152
  %1155 = fsub fast float %1134, %1116
  %1156 = fsub fast float %1144, %1120
  %1157 = fsub fast float %1154, %1124
  %1158 = fmul fast float %1155, %1084
  %1159 = fmul fast float %1156, %1086
  %1160 = fmul fast float %1157, %1091
  %1161 = fadd fast float %1158, %1099
  %1162 = fadd fast float %1159, %1103
  %1163 = fadd fast float %1160, %1107
  %1164 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1165 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1166 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1167 = fmul fast float %1164, %1164
  %1168 = fmul fast float %1165, %1165
  %1169 = fmul fast float %1166, %1166
  %1170 = fsub fast float %1167, %1049
  %1171 = fsub fast float %1168, %1050
  %1172 = fsub fast float %1169, %1051
  %1173 = fmul fast float %1170, %1074
  %1174 = fmul fast float %1171, %1074
  %1175 = fmul fast float %1172, %1074
  %1176 = fadd fast float %1173, %1049
  %1177 = fadd fast float %1174, %1050
  %1178 = fadd fast float %1175, %1051
  %1179 = fadd fast float %1096, %1060
  %1180 = fsub fast float %1179, %1113
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1182 = fsub fast float %1181, %1060
  %1183 = fmul fast float %1182, %1074
  %1184 = fadd fast float %1183, %1060
  br label %1238

; <label>:1185                                    ; preds = %1073
  %1186 = and i32 %1076, 134217728
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1222, label %1188

; <label>:1188                                    ; preds = %1185
  %1189 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1190 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %1191 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1192 = fadd fast float %1189, -5.000000e-01
  %1193 = fadd fast float %1190, -5.000000e-01
  %1194 = fadd fast float %1191, -5.000000e-01
  %1195 = fmul fast float %1192, %1074
  %1196 = fmul fast float %1193, %1074
  %1197 = fmul fast float %1194, %1074
  %1198 = fadd fast float %1195, 5.000000e-01
  %1199 = fadd fast float %1196, 5.000000e-01
  %1200 = fadd fast float %1197, 5.000000e-01
  %1201 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1202 = call float @dx.op.unary.f32(i32 24, float %1050)  ; Sqrt(value)
  %1203 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1204 = fmul fast float %1198, 2.000000e+00
  %1205 = fsub fast float 1.000000e+00, %1204
  %1206 = fmul fast float %1205, %1201
  %1207 = fadd fast float %1206, %1204
  %1208 = fmul fast float %1207, %1201
  %1209 = fmul fast float %1199, 2.000000e+00
  %1210 = fsub fast float 1.000000e+00, %1209
  %1211 = fmul fast float %1210, %1202
  %1212 = fadd fast float %1211, %1209
  %1213 = fmul fast float %1212, %1202
  %1214 = fmul fast float %1200, 2.000000e+00
  %1215 = fsub fast float 1.000000e+00, %1214
  %1216 = fmul fast float %1215, %1203
  %1217 = fadd fast float %1216, %1214
  %1218 = fmul fast float %1217, %1203
  %1219 = fmul fast float %1208, %1208
  %1220 = fmul fast float %1213, %1213
  %1221 = fmul fast float %1218, %1218
  br label %1238

; <label>:1222                                    ; preds = %1185
  %1223 = fmul fast float %276, %276
  %1224 = fmul fast float %280, %280
  %1225 = fmul fast float %284, %284
  %1226 = fadd fast float %1223, -1.000000e+00
  %1227 = fadd fast float %1224, -1.000000e+00
  %1228 = fadd fast float %1225, -1.000000e+00
  %1229 = fmul fast float %1074, %1226
  %1230 = fmul fast float %1074, %1227
  %1231 = fmul fast float %1074, %1228
  %1232 = fadd fast float %1229, 1.000000e+00
  %1233 = fadd fast float %1230, 1.000000e+00
  %1234 = fadd fast float %1231, 1.000000e+00
  %1235 = fmul fast float %1232, %1049
  %1236 = fmul fast float %1233, %1050
  %1237 = fmul fast float %1234, %1051
  br label %1238

; <label>:1238                                    ; preds = %1222, %1188, %1079, %1035
  %1239 = phi float [ %1184, %1079 ], [ %1060, %1188 ], [ %1060, %1222 ], [ 0x3FA23C0BE0000000, %1035 ]
  %1240 = phi float [ %1176, %1079 ], [ %1219, %1188 ], [ %1235, %1222 ], [ 1.000000e+00, %1035 ]
  %1241 = phi float [ %1177, %1079 ], [ %1220, %1188 ], [ %1236, %1222 ], [ 1.000000e+00, %1035 ]
  %1242 = phi float [ %1178, %1079 ], [ %1221, %1188 ], [ %1237, %1222 ], [ 1.000000e+00, %1035 ]
  %1243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.i32 %1243, 1
  %1245 = and i32 %1244, 1
  %1246 = icmp ne i32 %1245, 0
  %1247 = add i32 %43, 356
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 32
  %1251 = icmp ne i32 %1250, 0
  %1252 = and i1 %1246, %1251
  %1253 = select i1 %1252, float 1.000000e+00, float %1240
  %1254 = select i1 %1252, float 0x3FD3333340000000, float %1241
  %1255 = select i1 %1252, float 0x3FD3333340000000, float %1242
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 32
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1332, label %1260

; <label>:1260                                    ; preds = %1238
  %1261 = add i32 %43, 108
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %43, 412
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %83, float %960, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = and i32 %1263, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = lshr i32 %1263, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = lshr i32 %1263, 16
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101000000000
  %1283 = fmul fast float %1270, %1275
  %1284 = fadd fast float %1283, %1278
  %1285 = fmul fast float %1284, 0x3F70101000000000
  %1286 = fadd fast float %1271, -5.000000e-01
  %1287 = fadd fast float %1273, -5.000000e-01
  %1288 = fmul fast float %1286, %1282
  %1289 = fmul fast float %1287, %1282
  %1290 = fadd fast float %1288, 5.000000e-01
  %1291 = fadd fast float %1289, 5.000000e-01
  %1292 = fmul fast float %1290, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1291, 2.000000e+00
  %1295 = fadd fast float %1294, -1.000000e+00
  %1296 = fadd fast float %1293, %1295
  %1297 = fmul fast float %1296, 5.000000e-01
  %1298 = fsub fast float %1293, %1295
  %1299 = fmul fast float %1298, 5.000000e-01
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1303 = fsub fast float %1301, %1302
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1299, float %1303, float %1297, float %1299, float %1303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  %1306 = fmul fast float %1297, %1305
  %1307 = fmul fast float %1299, %1305
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 67108864
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1328, label %1312

; <label>:1312                                    ; preds = %1260
  %1313 = add i32 %43, 296
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = and i32 %1315, 65535
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 65535
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = lshr i32 %1315, 16
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = fsub fast float %1285, %1323
  %1325 = fmul fast float %1324, %1317
  %1326 = fadd fast float %1325, %1321
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  br label %1328

; <label>:1328                                    ; preds = %1312, %1260
  %1329 = phi float [ %1327, %1312 ], [ %1285, %1260 ]
  %1330 = call float @dx.op.dot2.f32(i32 54, float %1306, float %1307, float %864, float %865)  ; Dot2(ax,ay,bx,by)
  %1331 = call float @dx.op.dot2.f32(i32 54, float %1306, float %1307, float %866, float %867)  ; Dot2(ax,ay,bx,by)
  br label %1332

; <label>:1332                                    ; preds = %1328, %1238
  %1333 = phi float [ %1329, %1328 ], [ 0x3FD6666660000000, %1238 ]
  %1334 = phi float [ %1330, %1328 ], [ 0.000000e+00, %1238 ]
  %1335 = phi float [ %1331, %1328 ], [ 0.000000e+00, %1238 ]
  %1336 = phi float [ %1272, %1328 ], [ 1.000000e+00, %1238 ]
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %43, 112
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = lshr i32 %1341, 8
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1253, float %1254, float %1255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = fmul fast float %1346, %1347
  %1349 = fadd fast float %1348, %1343
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  br i1 %852, label %1352, label %1357

; <label>:1352                                    ; preds = %1332
  %1353 = fsub fast float 1.000000e+00, %1033
  %1354 = fmul fast float %1353, %843
  %1355 = fmul fast float %1353, %844
  %1356 = fmul fast float %1353, %845
  br label %1357

; <label>:1357                                    ; preds = %1352, %1332
  %1358 = phi float [ %1354, %1352 ], [ %843, %1332 ]
  %1359 = phi float [ %1355, %1352 ], [ %844, %1332 ]
  %1360 = phi float [ %1356, %1352 ], [ %845, %1332 ]
  %1361 = and i32 %1338, 3
  %1362 = icmp eq i32 %1361, 3
  br i1 %1362, label %1429, label %1363

; <label>:1363                                    ; preds = %1357
  %1364 = and i32 %1338, 16
  %1365 = icmp ne i32 %1364, 0
  %1366 = select i1 %1365, float %1033, float 0.000000e+00
  %1367 = icmp eq i32 %1361, 0
  br i1 %1367, label %1368, label %1384

; <label>:1368                                    ; preds = %1363
  %1369 = fsub fast float %1253, %1358
  %1370 = fsub fast float %1254, %1359
  %1371 = fsub fast float %1255, %1360
  %1372 = fmul fast float %1366, %1369
  %1373 = fmul fast float %1366, %1370
  %1374 = fmul fast float %1366, %1371
  %1375 = fadd fast float %1372, %1358
  %1376 = fadd fast float %1373, %1359
  %1377 = fadd fast float %1374, %1360
  %1378 = fsub fast float %1239, %846
  %1379 = fmul fast float %1366, %1378
  %1380 = fadd fast float %1379, %846
  %1381 = fsub fast float %1351, %850
  %1382 = fmul fast float %1366, %1381
  %1383 = fadd fast float %1382, %850
  br label %1429

; <label>:1384                                    ; preds = %1363
  %1385 = icmp eq i32 %1361, 1
  br i1 %1385, label %1386, label %1399

; <label>:1386                                    ; preds = %1384
  %1387 = fadd fast float %1253, -1.000000e+00
  %1388 = fadd fast float %1254, -1.000000e+00
  %1389 = fadd fast float %1255, -1.000000e+00
  %1390 = fmul fast float %1366, %1387
  %1391 = fmul fast float %1366, %1388
  %1392 = fmul fast float %1366, %1389
  %1393 = fadd fast float %1390, 1.000000e+00
  %1394 = fadd fast float %1391, 1.000000e+00
  %1395 = fadd fast float %1392, 1.000000e+00
  %1396 = fmul fast float %1393, %1358
  %1397 = fmul fast float %1394, %1359
  %1398 = fmul fast float %1395, %1360
  br label %1429

; <label>:1399                                    ; preds = %1384
  %1400 = icmp eq i32 %1361, 2
  br i1 %1400, label %1401, label %1429

; <label>:1401                                    ; preds = %1399
  %1402 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1405 = fadd fast float %1402, -5.000000e-01
  %1406 = fadd fast float %1403, -5.000000e-01
  %1407 = fadd fast float %1404, -5.000000e-01
  %1408 = fmul fast float %1405, %1366
  %1409 = fmul fast float %1406, %1366
  %1410 = fmul fast float %1407, %1366
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fmul fast float %1411, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1358
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1358
  %1419 = fmul fast float %1412, 2.000000e+00
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = fmul fast float %1420, %1359
  %1422 = fadd fast float %1421, %1419
  %1423 = fmul fast float %1422, %1359
  %1424 = fmul fast float %1413, 2.000000e+00
  %1425 = fsub fast float 1.000000e+00, %1424
  %1426 = fmul fast float %1425, %1360
  %1427 = fadd fast float %1426, %1424
  %1428 = fmul fast float %1427, %1360
  br label %1429

; <label>:1429                                    ; preds = %1401, %1399, %1386, %1368, %1357
  %1430 = phi float [ %1358, %1357 ], [ %1418, %1401 ], [ %1358, %1399 ], [ %1396, %1386 ], [ %1375, %1368 ]
  %1431 = phi float [ %1359, %1357 ], [ %1423, %1401 ], [ %1359, %1399 ], [ %1397, %1386 ], [ %1376, %1368 ]
  %1432 = phi float [ %1360, %1357 ], [ %1428, %1401 ], [ %1360, %1399 ], [ %1398, %1386 ], [ %1377, %1368 ]
  %1433 = phi float [ %846, %1357 ], [ %846, %1401 ], [ %846, %1399 ], [ %846, %1386 ], [ %1380, %1368 ]
  %1434 = phi float [ %850, %1357 ], [ %850, %1401 ], [ %850, %1399 ], [ %850, %1386 ], [ %1383, %1368 ]
  %1435 = and i32 %1338, 12
  %1436 = icmp eq i32 %1435, 12
  br i1 %1436, label %1509, label %1437

; <label>:1437                                    ; preds = %1429
  %1438 = and i32 %1338, 2097184
  %1439 = icmp eq i32 %1438, 2097184
  %1440 = select i1 %1439, float %1033, float 0.000000e+00
  %1441 = and i32 %1338, 4194336
  %1442 = icmp eq i32 %1441, 4194336
  %1443 = select i1 %1442, float %1033, float 0.000000e+00
  %1444 = and i32 %1338, 8388640
  %1445 = icmp eq i32 %1444, 8388640
  %1446 = select i1 %1445, float %1033, float 0.000000e+00
  %1447 = icmp eq i32 %1435, 0
  br i1 %1447, label %1448, label %1461

; <label>:1448                                    ; preds = %1437
  %1449 = fsub fast float %1334, %841
  %1450 = fsub fast float %1335, %842
  %1451 = fmul fast float %1440, %1449
  %1452 = fmul fast float %1440, %1450
  %1453 = fadd fast float %1451, %841
  %1454 = fadd fast float %1452, %842
  %1455 = fsub fast float %1336, %849
  %1456 = fmul fast float %1443, %1455
  %1457 = fadd fast float %1456, %849
  %1458 = fsub fast float %1333, %848
  %1459 = fmul fast float %1446, %1458
  %1460 = fadd fast float %1459, %848
  br label %1509

; <label>:1461                                    ; preds = %1437
  %1462 = icmp eq i32 %1435, 4
  br i1 %1462, label %1463, label %1495

; <label>:1463                                    ; preds = %1461
  %1464 = fmul fast float %1440, %1334
  %1465 = fmul fast float %1440, %1335
  %1466 = fadd fast float %1464, %841
  %1467 = fadd fast float %1465, %842
  %1468 = call float @dx.op.binary.f32(i32 36, float %849, float %1336)  ; FMin(a,b)
  %1469 = fsub fast float %1468, %849
  %1470 = fmul fast float %1469, %1443
  %1471 = fadd fast float %1470, %849
  %1472 = fadd fast float %1333, %848
  %1473 = fmul fast float %1472, 0x3FF337FAE0000000
  %1474 = fmul fast float %848, %848
  %1475 = fmul fast float %1333, %1333
  %1476 = fadd fast float %1475, %1474
  %1477 = fmul fast float %1476, 0x3FE5152B00000000
  %1478 = fmul fast float %848, 0xBFCC1F85E0000000
  %1479 = fmul fast float %1478, %1333
  %1480 = fadd fast float %1479, 0xBFE1363700000000
  %1481 = fadd fast float %1480, %1473
  %1482 = fsub fast float %1481, %1477
  %1483 = fmul fast float %1472, 0x3FBA6F0D00000000
  %1484 = fmul fast float %1476, 0x3FD0432880000000
  %1485 = fmul fast float %848, 0xBFEF110800000000
  %1486 = fmul fast float %1485, %1333
  %1487 = fadd fast float %1486, 1.000000e+00
  %1488 = fsub fast float %1487, %1483
  %1489 = fadd fast float %1488, %1484
  %1490 = fdiv fast float %1482, %1489
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = fsub fast float %1491, %848
  %1493 = fmul fast float %1492, %1446
  %1494 = fadd fast float %1493, %848
  br label %1509

; <label>:1495                                    ; preds = %1461
  %1496 = icmp eq i32 %1435, 8
  br i1 %1496, label %1497, label %1509

; <label>:1497                                    ; preds = %1495
  %1498 = fmul fast float %1440, %1334
  %1499 = fmul fast float %1440, %1335
  %1500 = fadd fast float %1498, %841
  %1501 = fadd fast float %1499, %842
  %1502 = call float @dx.op.binary.f32(i32 36, float %849, float %1336)  ; FMin(a,b)
  %1503 = fsub fast float %1502, %849
  %1504 = fmul fast float %1503, %1443
  %1505 = fadd fast float %1504, %849
  %1506 = fsub fast float %1333, %848
  %1507 = fmul fast float %1446, %1506
  %1508 = fadd fast float %1507, %848
  br label %1509

; <label>:1509                                    ; preds = %1497, %1495, %1463, %1448, %1429, %1032, %851, %840
  %1510 = phi float [ %841, %1429 ], [ %841, %1032 ], [ %841, %840 ], [ %1500, %1497 ], [ %841, %1495 ], [ %1466, %1463 ], [ %1453, %1448 ], [ %841, %851 ]
  %1511 = phi float [ %842, %1429 ], [ %842, %1032 ], [ %842, %840 ], [ %1501, %1497 ], [ %842, %1495 ], [ %1467, %1463 ], [ %1454, %1448 ], [ %842, %851 ]
  %1512 = phi float [ %1430, %1429 ], [ %843, %1032 ], [ %843, %840 ], [ %1430, %1497 ], [ %1430, %1495 ], [ %1430, %1463 ], [ %1430, %1448 ], [ %843, %851 ]
  %1513 = phi float [ %1431, %1429 ], [ %844, %1032 ], [ %844, %840 ], [ %1431, %1497 ], [ %1431, %1495 ], [ %1431, %1463 ], [ %1431, %1448 ], [ %844, %851 ]
  %1514 = phi float [ %1432, %1429 ], [ %845, %1032 ], [ %845, %840 ], [ %1432, %1497 ], [ %1432, %1495 ], [ %1432, %1463 ], [ %1432, %1448 ], [ %845, %851 ]
  %1515 = phi float [ %1433, %1429 ], [ %846, %1032 ], [ %846, %840 ], [ %1433, %1497 ], [ %1433, %1495 ], [ %1433, %1463 ], [ %1433, %1448 ], [ %846, %851 ]
  %1516 = phi float [ %848, %1429 ], [ %848, %1032 ], [ %848, %840 ], [ %1508, %1497 ], [ %848, %1495 ], [ %1494, %1463 ], [ %1460, %1448 ], [ %848, %851 ]
  %1517 = phi float [ %849, %1429 ], [ %849, %1032 ], [ %849, %840 ], [ %1505, %1497 ], [ %849, %1495 ], [ %1471, %1463 ], [ %1457, %1448 ], [ %849, %851 ]
  %1518 = phi float [ %1434, %1429 ], [ %850, %1032 ], [ %850, %840 ], [ %1434, %1497 ], [ %1434, %1495 ], [ %1434, %1463 ], [ %1434, %1448 ], [ %850, %851 ]
  br i1 %367, label %2177, label %1519

; <label>:1519                                    ; preds = %1509
  %1520 = icmp ult i32 %420, 3
  %1521 = add i32 %43, 56
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %43, 60
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = or i32 %1526, %1523
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %2177, label %1529

; <label>:1529                                    ; preds = %1519
  %1530 = and i32 %1523, 262144
  %1531 = icmp ne i32 %1530, 0
  %1532 = select i1 %1531, float %48, float 1.000000e+00
  %1533 = select i1 %1531, float %49, float 0.000000e+00
  %1534 = select i1 %1531, float %50, float 0.000000e+00
  %1535 = select i1 %1531, float %51, float 1.000000e+00
  %1536 = select i1 %1531, float %52, float %75
  %1537 = select i1 %1531, float %53, float %76
  %1538 = add i32 %43, 316
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 16
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = fmul fast float %1542, 0x3F50624DE0000000
  %1544 = add i32 %43, 120
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = lshr i32 %1546, 16
  %1548 = and i32 %1547, 255
  %1549 = lshr i32 %1546, 24
  %1550 = add i32 %43, 324
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 65535
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = lshr i32 %1552, 16
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = add i32 %43, 64
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = lshr i32 %1559, 22
  %1561 = shl nuw nsw i32 %1560, 5
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = shl i32 %1559, 4
  %1564 = and i32 %1563, 32752
  %1565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1564)  ; LegacyF16ToF32(value)
  %1566 = lshr i32 %1559, 7
  %1567 = and i32 %1566, 32752
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1571 = fmul fast float %1570, 1.000000e+03
  %1572 = fmul fast float %329, %1571
  %1573 = call float @dx.op.unary.f32(i32 22, float %1572)  ; Frc(value)
  %1574 = fadd fast float %1573, %319
  %1575 = fmul fast float %330, %1571
  %1576 = call float @dx.op.unary.f32(i32 22, float %1575)  ; Frc(value)
  %1577 = fadd fast float %1576, %321
  %1578 = fmul fast float %1543, %1571
  %1579 = call float @dx.op.unary.f32(i32 22, float %1578)  ; Frc(value)
  %1580 = fmul fast float %1579, 0x401921FB60000000
  %1581 = fadd fast float %1580, %1562
  %1582 = call float @dx.op.unary.f32(i32 13, float %1581)  ; Sin(value)
  %1583 = call float @dx.op.unary.f32(i32 12, float %1581)  ; Cos(value)
  %1584 = fsub fast float -0.000000e+00, %1582
  %1585 = fadd fast float %1536, -5.000000e-01
  %1586 = fadd fast float %1537, -5.000000e-01
  %1587 = fmul fast float %1554, %1585
  %1588 = fmul fast float %1556, %1586
  %1589 = fadd fast float %1587, 5.000000e-01
  %1590 = fadd fast float %1588, 5.000000e-01
  %1591 = fmul fast float %1565, %1589
  %1592 = fmul fast float %1568, %1590
  %1593 = fmul fast float %1583, %1591
  %1594 = call float @dx.op.tertiary.f32(i32 46, float %1584, float %1592, float %1593)  ; FMad(a,b,c)
  %1595 = fmul fast float %1582, %1591
  %1596 = call float @dx.op.tertiary.f32(i32 46, float %1583, float %1592, float %1595)  ; FMad(a,b,c)
  %1597 = fadd fast float %1574, %1594
  %1598 = fadd fast float %1577, %1596
  %1599 = icmp ugt i32 %1548, 1
  %1600 = icmp ugt i32 %1546, 33554431
  %1601 = or i1 %1600, %1599
  br i1 %1601, label %1602, label %1627

; <label>:1602                                    ; preds = %1529
  %1603 = add i32 %43, 260
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 16
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = fmul fast float %1570, %1607
  %1609 = call float @dx.op.unary.f32(i32 22, float %1608)  ; Frc(value)
  %1610 = mul nuw nsw i32 %1548, %1549
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1609, %1611
  %1613 = call float @dx.op.unary.f32(i32 27, float %1612)  ; Round_ni(value)
  %1614 = fptoui float %1613 to i32
  %1615 = urem i32 %1614, %1548
  %1616 = udiv i32 %1614, %1549
  %1617 = call float @dx.op.unary.f32(i32 22, float %1597)  ; Frc(value)
  %1618 = call float @dx.op.unary.f32(i32 22, float %1598)  ; Frc(value)
  %1619 = uitofp i32 %1615 to float
  %1620 = uitofp i32 %1616 to float
  %1621 = fadd fast float %1617, %1619
  %1622 = fadd fast float %1618, %1620
  %1623 = uitofp i32 %1548 to float
  %1624 = uitofp i32 %1549 to float
  %1625 = fdiv fast float %1621, %1623
  %1626 = fdiv fast float %1622, %1624
  br label %1627

; <label>:1627                                    ; preds = %1602, %1529
  %1628 = phi float [ %1625, %1602 ], [ %1597, %1529 ]
  %1629 = phi float [ %1626, %1602 ], [ %1598, %1529 ]
  %1630 = and i32 %1523, 256
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1678, label %1632

; <label>:1632                                    ; preds = %1627
  %1633 = add i32 %43, 464
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = add i32 %1635, 0
  %1637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1637, %dx.types.Handle %84, float %1628, float %1629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = add i32 %43, 132
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = shl i32 %1642, 4
  %1644 = and i32 %1643, 32752
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = lshr i32 %1642, 7
  %1647 = and i32 %1646, 32752
  %1648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1647)  ; LegacyF16ToF32(value)
  %1649 = fsub fast float 1.000000e+00, %416
  %1650 = call float @dx.op.binary.f32(i32 35, float %1649, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1651 = bitcast float %416 to i32
  %1652 = sitofp i32 %1651 to float
  %1653 = fadd fast float %1652, 0xC1CFBF8940000000
  %1654 = fmul fast float %1648, %1653
  %1655 = fadd fast float %1654, 0x41CFBF8940000000
  %1656 = fptosi float %1655 to i32
  %1657 = bitcast i32 %1656 to float
  %1658 = bitcast float %1650 to i32
  %1659 = sitofp i32 %1658 to float
  %1660 = fadd fast float %1659, 0xC1CFBF8940000000
  %1661 = fmul fast float %1660, %1648
  %1662 = fadd fast float %1661, 0x41CFBF8940000000
  %1663 = fptosi float %1662 to i32
  %1664 = bitcast i32 %1663 to float
  %1665 = fmul fast float %1657, %1645
  %1666 = fmul fast float %1664, %1645
  %1667 = fsub fast float %1650, %1665
  %1668 = fadd fast float %1666, %1650
  %1669 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1670 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1671 = fsub fast float %1639, %1669
  %1672 = fsub fast float %1670, %1669
  %1673 = bitcast float %1672 to i32
  %1674 = sub nsw i32 2129859010, %1673
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1675, %1671
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  br label %1678

; <label>:1678                                    ; preds = %1632, %1627
  %1679 = phi float [ %1677, %1632 ], [ %416, %1627 ]
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 128
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1700, label %1684

; <label>:1684                                    ; preds = %1678
  %1685 = add i32 %43, 448
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = add i32 %1687, 0
  %1689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1689, %dx.types.Handle %84, float %1628, float %1629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = and i32 %1693, 524288
  %1695 = icmp ne i32 %1694, 0
  %1696 = fcmp fast ogt float %1691, 0x3FE0101020000000
  %1697 = select i1 %1696, float 1.000000e+00, float 0.000000e+00
  %1698 = select i1 %1695, float %1697, float %1691
  %1699 = fmul fast float %1698, %1679
  br label %1700

; <label>:1700                                    ; preds = %1684, %1678
  %1701 = phi float [ %1699, %1684 ], [ %1679, %1678 ]
  %1702 = fcmp fast ult float %1701, 0x3F70101020000000
  br i1 %1702, label %2177, label %1703

; <label>:1703                                    ; preds = %1700
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 16
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1906, label %1708

; <label>:1708                                    ; preds = %1703
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = add i32 %43, 400
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = add i32 %1713, 0
  %1715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1715, %dx.types.Handle %83, float %1628, float %1629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = extractvalue %dx.types.ResRet.f32 %1716, 3
  %1721 = and i32 %1710, 255
  %1722 = uitofp i32 %1721 to float
  %1723 = lshr i32 %1710, 8
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = fmul fast float %1720, %1722
  %1727 = fadd fast float %1726, %1725
  %1728 = fmul fast float %1727, 0x3F70101000000000
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 512
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1741, label %1733

; <label>:1733                                    ; preds = %1708
  %1734 = add i32 %43, 484
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %1736, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1738, %dx.types.Handle %84, float %1628, float %1629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  br label %1741

; <label>:1741                                    ; preds = %1733, %1708
  %1742 = phi float [ %1740, %1733 ], [ 1.000000e+00, %1708 ]
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 33554432
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1853, label %1747

; <label>:1747                                    ; preds = %1741
  %1748 = add i32 %43, 256
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 65535
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = lshr i32 %1750, 16
  %1754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1753)  ; LegacyF16ToF32(value)
  %1755 = add i32 %43, 260
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 65535
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 24
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1763, 0x3F70101020000000
  %1765 = and i32 %1761, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = lshr i32 %1761, 8
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = fmul fast float %1770, 0x3F70101020000000
  %1772 = lshr i32 %1761, 16
  %1773 = and i32 %1772, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = fmul fast float %1774, 0x3F70101020000000
  %1776 = add i32 %43, 252
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 24
  %1780 = uitofp i32 %1779 to float
  %1781 = fmul fast float %1780, 0x3F70101020000000
  %1782 = and i32 %1778, 255
  %1783 = uitofp i32 %1782 to float
  %1784 = fmul fast float %1783, 0x3F70101020000000
  %1785 = lshr i32 %1778, 8
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = fmul fast float %1787, 0x3F70101020000000
  %1789 = lshr i32 %1778, 16
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = fmul fast float %1791, 0x3F70101020000000
  %1793 = bitcast float %1717 to i32
  %1794 = ashr i32 %1793, 1
  %1795 = sub nsw i32 1597463174, %1794
  %1796 = bitcast i32 %1795 to float
  %1797 = fmul fast float %1717, 5.000000e-01
  %1798 = fmul fast float %1796, %1796
  %1799 = fmul fast float %1798, %1797
  %1800 = fsub fast float 1.500000e+00, %1799
  %1801 = fmul fast float %1796, %1717
  %1802 = fmul fast float %1801, %1800
  %1803 = bitcast float %1718 to i32
  %1804 = ashr i32 %1803, 1
  %1805 = sub nsw i32 1597463174, %1804
  %1806 = bitcast i32 %1805 to float
  %1807 = fmul fast float %1718, 5.000000e-01
  %1808 = fmul fast float %1806, %1806
  %1809 = fmul fast float %1808, %1807
  %1810 = fsub fast float 1.500000e+00, %1809
  %1811 = fmul fast float %1806, %1718
  %1812 = fmul fast float %1811, %1810
  %1813 = bitcast float %1719 to i32
  %1814 = ashr i32 %1813, 1
  %1815 = sub nsw i32 1597463174, %1814
  %1816 = bitcast i32 %1815 to float
  %1817 = fmul fast float %1719, 5.000000e-01
  %1818 = fmul fast float %1816, %1816
  %1819 = fmul fast float %1818, %1817
  %1820 = fsub fast float 1.500000e+00, %1819
  %1821 = fmul fast float %1816, %1719
  %1822 = fmul fast float %1821, %1820
  %1823 = fsub fast float %1802, %1784
  %1824 = fsub fast float %1812, %1788
  %1825 = fsub fast float %1822, %1792
  %1826 = fmul fast float %1823, %1752
  %1827 = fmul fast float %1824, %1754
  %1828 = fmul fast float %1825, %1759
  %1829 = fadd fast float %1826, %1767
  %1830 = fadd fast float %1827, %1771
  %1831 = fadd fast float %1828, %1775
  %1832 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1833 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1834 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  %1835 = fmul fast float %1832, %1832
  %1836 = fmul fast float %1833, %1833
  %1837 = fmul fast float %1834, %1834
  %1838 = fsub fast float %1835, %1717
  %1839 = fsub fast float %1836, %1718
  %1840 = fsub fast float %1837, %1719
  %1841 = fmul fast float %1838, %1742
  %1842 = fmul fast float %1839, %1742
  %1843 = fmul fast float %1840, %1742
  %1844 = fadd fast float %1841, %1717
  %1845 = fadd fast float %1842, %1718
  %1846 = fadd fast float %1843, %1719
  %1847 = fadd fast float %1764, %1728
  %1848 = fsub fast float %1847, %1781
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = fsub fast float %1849, %1728
  %1851 = fmul fast float %1850, %1742
  %1852 = fadd fast float %1851, %1728
  br label %1906

; <label>:1853                                    ; preds = %1741
  %1854 = and i32 %1744, 134217728
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %1890, label %1856

; <label>:1856                                    ; preds = %1853
  %1857 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1858 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1859 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %1860 = fadd fast float %1857, -5.000000e-01
  %1861 = fadd fast float %1858, -5.000000e-01
  %1862 = fadd fast float %1859, -5.000000e-01
  %1863 = fmul fast float %1860, %1742
  %1864 = fmul fast float %1861, %1742
  %1865 = fmul fast float %1862, %1742
  %1866 = fadd fast float %1863, 5.000000e-01
  %1867 = fadd fast float %1864, 5.000000e-01
  %1868 = fadd fast float %1865, 5.000000e-01
  %1869 = call float @dx.op.unary.f32(i32 24, float %1717)  ; Sqrt(value)
  %1870 = call float @dx.op.unary.f32(i32 24, float %1718)  ; Sqrt(value)
  %1871 = call float @dx.op.unary.f32(i32 24, float %1719)  ; Sqrt(value)
  %1872 = fmul fast float %1866, 2.000000e+00
  %1873 = fsub fast float 1.000000e+00, %1872
  %1874 = fmul fast float %1873, %1869
  %1875 = fadd fast float %1874, %1872
  %1876 = fmul fast float %1875, %1869
  %1877 = fmul fast float %1867, 2.000000e+00
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1878, %1870
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1870
  %1882 = fmul fast float %1868, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1871
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1871
  %1887 = fmul fast float %1876, %1876
  %1888 = fmul fast float %1881, %1881
  %1889 = fmul fast float %1886, %1886
  br label %1906

; <label>:1890                                    ; preds = %1853
  %1891 = fmul fast float %306, %306
  %1892 = fmul fast float %310, %310
  %1893 = fmul fast float %314, %314
  %1894 = fadd fast float %1891, -1.000000e+00
  %1895 = fadd fast float %1892, -1.000000e+00
  %1896 = fadd fast float %1893, -1.000000e+00
  %1897 = fmul fast float %1742, %1894
  %1898 = fmul fast float %1742, %1895
  %1899 = fmul fast float %1742, %1896
  %1900 = fadd fast float %1897, 1.000000e+00
  %1901 = fadd fast float %1898, 1.000000e+00
  %1902 = fadd fast float %1899, 1.000000e+00
  %1903 = fmul fast float %1900, %1717
  %1904 = fmul fast float %1901, %1718
  %1905 = fmul fast float %1902, %1719
  br label %1906

; <label>:1906                                    ; preds = %1890, %1856, %1747, %1703
  %1907 = phi float [ %1852, %1747 ], [ %1728, %1856 ], [ %1728, %1890 ], [ 0x3FA23C0BE0000000, %1703 ]
  %1908 = phi float [ %1844, %1747 ], [ %1887, %1856 ], [ %1903, %1890 ], [ 1.000000e+00, %1703 ]
  %1909 = phi float [ %1845, %1747 ], [ %1888, %1856 ], [ %1904, %1890 ], [ 1.000000e+00, %1703 ]
  %1910 = phi float [ %1846, %1747 ], [ %1889, %1856 ], [ %1905, %1890 ], [ 1.000000e+00, %1703 ]
  %1911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.i32 %1911, 1
  %1913 = and i32 %1912, 1
  %1914 = icmp ne i32 %1913, 0
  %1915 = add i32 %43, 356
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = and i32 %1917, 32
  %1919 = icmp ne i32 %1918, 0
  %1920 = and i1 %1914, %1919
  %1921 = select i1 %1920, float 1.000000e+00, float %1908
  %1922 = select i1 %1920, float 0x3FD3333340000000, float %1909
  %1923 = select i1 %1920, float 0x3FD3333340000000, float %1910
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 32
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %2000, label %1928

; <label>:1928                                    ; preds = %1906
  %1929 = add i32 %43, 124
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %43, 416
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1936, %dx.types.Handle %83, float %1628, float %1629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.ResRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.ResRet.f32 %1937, 2
  %1941 = extractvalue %dx.types.ResRet.f32 %1937, 3
  %1942 = and i32 %1931, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = lshr i32 %1931, 8
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = lshr i32 %1931, 16
  %1948 = and i32 %1947, 255
  %1949 = uitofp i32 %1948 to float
  %1950 = fmul fast float %1949, 0x3F70101000000000
  %1951 = fmul fast float %1938, %1943
  %1952 = fadd fast float %1951, %1946
  %1953 = fmul fast float %1952, 0x3F70101000000000
  %1954 = fadd fast float %1939, -5.000000e-01
  %1955 = fadd fast float %1941, -5.000000e-01
  %1956 = fmul fast float %1954, %1950
  %1957 = fmul fast float %1955, %1950
  %1958 = fadd fast float %1956, 5.000000e-01
  %1959 = fadd fast float %1957, 5.000000e-01
  %1960 = fmul fast float %1958, 2.000000e+00
  %1961 = fadd fast float %1960, -1.000000e+00
  %1962 = fmul fast float %1959, 2.000000e+00
  %1963 = fadd fast float %1962, -1.000000e+00
  %1964 = fadd fast float %1961, %1963
  %1965 = fmul fast float %1964, 5.000000e-01
  %1966 = fsub fast float %1961, %1963
  %1967 = fmul fast float %1966, 5.000000e-01
  %1968 = call float @dx.op.unary.f32(i32 6, float %1965)  ; FAbs(value)
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = call float @dx.op.unary.f32(i32 6, float %1967)  ; FAbs(value)
  %1971 = fsub fast float %1969, %1970
  %1972 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1967, float %1971, float %1965, float %1967, float %1971)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.unary.f32(i32 25, float %1972)  ; Rsqrt(value)
  %1974 = fmul fast float %1965, %1973
  %1975 = fmul fast float %1967, %1973
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 67108864
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1996, label %1980

; <label>:1980                                    ; preds = %1928
  %1981 = add i32 %43, 312
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 65535
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 65535
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = lshr i32 %1983, 16
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = fsub fast float %1953, %1991
  %1993 = fmul fast float %1992, %1985
  %1994 = fadd fast float %1993, %1989
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  br label %1996

; <label>:1996                                    ; preds = %1980, %1928
  %1997 = phi float [ %1995, %1980 ], [ %1953, %1928 ]
  %1998 = call float @dx.op.dot2.f32(i32 54, float %1974, float %1975, float %1532, float %1533)  ; Dot2(ax,ay,bx,by)
  %1999 = call float @dx.op.dot2.f32(i32 54, float %1974, float %1975, float %1534, float %1535)  ; Dot2(ax,ay,bx,by)
  br label %2000

; <label>:2000                                    ; preds = %1996, %1906
  %2001 = phi float [ %1997, %1996 ], [ 0x3FD6666660000000, %1906 ]
  %2002 = phi float [ %1998, %1996 ], [ 0.000000e+00, %1906 ]
  %2003 = phi float [ %1999, %1996 ], [ 0.000000e+00, %1906 ]
  %2004 = phi float [ %1940, %1996 ], [ 1.000000e+00, %1906 ]
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %43, 128
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = lshr i32 %2009, 8
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = fmul fast float %2014, %2015
  %2017 = fadd fast float %2016, %2011
  %2018 = fmul fast float %2017, 0x3F70101020000000
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  br i1 %1520, label %2020, label %2025

; <label>:2020                                    ; preds = %2000
  %2021 = fsub fast float 1.000000e+00, %1701
  %2022 = fmul fast float %2021, %1512
  %2023 = fmul fast float %2021, %1513
  %2024 = fmul fast float %2021, %1514
  br label %2025

; <label>:2025                                    ; preds = %2020, %2000
  %2026 = phi float [ %2022, %2020 ], [ %1512, %2000 ]
  %2027 = phi float [ %2023, %2020 ], [ %1513, %2000 ]
  %2028 = phi float [ %2024, %2020 ], [ %1514, %2000 ]
  %2029 = and i32 %2006, 3
  %2030 = icmp eq i32 %2029, 3
  br i1 %2030, label %2097, label %2031

; <label>:2031                                    ; preds = %2025
  %2032 = and i32 %2006, 16
  %2033 = icmp ne i32 %2032, 0
  %2034 = select i1 %2033, float %1701, float 0.000000e+00
  %2035 = icmp eq i32 %2029, 0
  br i1 %2035, label %2036, label %2052

; <label>:2036                                    ; preds = %2031
  %2037 = fsub fast float %1921, %2026
  %2038 = fsub fast float %1922, %2027
  %2039 = fsub fast float %1923, %2028
  %2040 = fmul fast float %2034, %2037
  %2041 = fmul fast float %2034, %2038
  %2042 = fmul fast float %2034, %2039
  %2043 = fadd fast float %2040, %2026
  %2044 = fadd fast float %2041, %2027
  %2045 = fadd fast float %2042, %2028
  %2046 = fsub fast float %1907, %1515
  %2047 = fmul fast float %2034, %2046
  %2048 = fadd fast float %2047, %1515
  %2049 = fsub fast float %2019, %1518
  %2050 = fmul fast float %2034, %2049
  %2051 = fadd fast float %2050, %1518
  br label %2097

; <label>:2052                                    ; preds = %2031
  %2053 = icmp eq i32 %2029, 1
  br i1 %2053, label %2054, label %2067

; <label>:2054                                    ; preds = %2052
  %2055 = fadd fast float %1921, -1.000000e+00
  %2056 = fadd fast float %1922, -1.000000e+00
  %2057 = fadd fast float %1923, -1.000000e+00
  %2058 = fmul fast float %2034, %2055
  %2059 = fmul fast float %2034, %2056
  %2060 = fmul fast float %2034, %2057
  %2061 = fadd fast float %2058, 1.000000e+00
  %2062 = fadd fast float %2059, 1.000000e+00
  %2063 = fadd fast float %2060, 1.000000e+00
  %2064 = fmul fast float %2061, %2026
  %2065 = fmul fast float %2062, %2027
  %2066 = fmul fast float %2063, %2028
  br label %2097

; <label>:2067                                    ; preds = %2052
  %2068 = icmp eq i32 %2029, 2
  br i1 %2068, label %2069, label %2097

; <label>:2069                                    ; preds = %2067
  %2070 = call float @dx.op.unary.f32(i32 24, float %1921)  ; Sqrt(value)
  %2071 = call float @dx.op.unary.f32(i32 24, float %1922)  ; Sqrt(value)
  %2072 = call float @dx.op.unary.f32(i32 24, float %1923)  ; Sqrt(value)
  %2073 = fadd fast float %2070, -5.000000e-01
  %2074 = fadd fast float %2071, -5.000000e-01
  %2075 = fadd fast float %2072, -5.000000e-01
  %2076 = fmul fast float %2073, %2034
  %2077 = fmul fast float %2074, %2034
  %2078 = fmul fast float %2075, %2034
  %2079 = fadd fast float %2076, 5.000000e-01
  %2080 = fadd fast float %2077, 5.000000e-01
  %2081 = fadd fast float %2078, 5.000000e-01
  %2082 = fmul fast float %2079, 2.000000e+00
  %2083 = fsub fast float 1.000000e+00, %2082
  %2084 = fmul fast float %2083, %2026
  %2085 = fadd fast float %2084, %2082
  %2086 = fmul fast float %2085, %2026
  %2087 = fmul fast float %2080, 2.000000e+00
  %2088 = fsub fast float 1.000000e+00, %2087
  %2089 = fmul fast float %2088, %2027
  %2090 = fadd fast float %2089, %2087
  %2091 = fmul fast float %2090, %2027
  %2092 = fmul fast float %2081, 2.000000e+00
  %2093 = fsub fast float 1.000000e+00, %2092
  %2094 = fmul fast float %2093, %2028
  %2095 = fadd fast float %2094, %2092
  %2096 = fmul fast float %2095, %2028
  br label %2097

; <label>:2097                                    ; preds = %2069, %2067, %2054, %2036, %2025
  %2098 = phi float [ %2026, %2025 ], [ %2086, %2069 ], [ %2026, %2067 ], [ %2064, %2054 ], [ %2043, %2036 ]
  %2099 = phi float [ %2027, %2025 ], [ %2091, %2069 ], [ %2027, %2067 ], [ %2065, %2054 ], [ %2044, %2036 ]
  %2100 = phi float [ %2028, %2025 ], [ %2096, %2069 ], [ %2028, %2067 ], [ %2066, %2054 ], [ %2045, %2036 ]
  %2101 = phi float [ %1515, %2025 ], [ %1515, %2069 ], [ %1515, %2067 ], [ %1515, %2054 ], [ %2048, %2036 ]
  %2102 = phi float [ %1518, %2025 ], [ %1518, %2069 ], [ %1518, %2067 ], [ %1518, %2054 ], [ %2051, %2036 ]
  %2103 = and i32 %2006, 12
  %2104 = icmp eq i32 %2103, 12
  br i1 %2104, label %2177, label %2105

; <label>:2105                                    ; preds = %2097
  %2106 = and i32 %2006, 2097184
  %2107 = icmp eq i32 %2106, 2097184
  %2108 = select i1 %2107, float %1701, float 0.000000e+00
  %2109 = and i32 %2006, 4194336
  %2110 = icmp eq i32 %2109, 4194336
  %2111 = select i1 %2110, float %1701, float 0.000000e+00
  %2112 = and i32 %2006, 8388640
  %2113 = icmp eq i32 %2112, 8388640
  %2114 = select i1 %2113, float %1701, float 0.000000e+00
  %2115 = icmp eq i32 %2103, 0
  br i1 %2115, label %2116, label %2129

; <label>:2116                                    ; preds = %2105
  %2117 = fsub fast float %2002, %1510
  %2118 = fsub fast float %2003, %1511
  %2119 = fmul fast float %2108, %2117
  %2120 = fmul fast float %2108, %2118
  %2121 = fadd fast float %2119, %1510
  %2122 = fadd fast float %2120, %1511
  %2123 = fsub fast float %2004, %1517
  %2124 = fmul fast float %2111, %2123
  %2125 = fadd fast float %2124, %1517
  %2126 = fsub fast float %2001, %1516
  %2127 = fmul fast float %2114, %2126
  %2128 = fadd fast float %2127, %1516
  br label %2177

; <label>:2129                                    ; preds = %2105
  %2130 = icmp eq i32 %2103, 4
  br i1 %2130, label %2131, label %2163

; <label>:2131                                    ; preds = %2129
  %2132 = fmul fast float %2108, %2002
  %2133 = fmul fast float %2108, %2003
  %2134 = fadd fast float %2132, %1510
  %2135 = fadd fast float %2133, %1511
  %2136 = call float @dx.op.binary.f32(i32 36, float %1517, float %2004)  ; FMin(a,b)
  %2137 = fsub fast float %2136, %1517
  %2138 = fmul fast float %2137, %2111
  %2139 = fadd fast float %2138, %1517
  %2140 = fadd fast float %2001, %1516
  %2141 = fmul fast float %2140, 0x3FF337FAE0000000
  %2142 = fmul fast float %1516, %1516
  %2143 = fmul fast float %2001, %2001
  %2144 = fadd fast float %2143, %2142
  %2145 = fmul fast float %2144, 0x3FE5152B00000000
  %2146 = fmul fast float %1516, 0xBFCC1F85E0000000
  %2147 = fmul fast float %2146, %2001
  %2148 = fadd fast float %2147, 0xBFE1363700000000
  %2149 = fadd fast float %2148, %2141
  %2150 = fsub fast float %2149, %2145
  %2151 = fmul fast float %2140, 0x3FBA6F0D00000000
  %2152 = fmul fast float %2144, 0x3FD0432880000000
  %2153 = fmul fast float %1516, 0xBFEF110800000000
  %2154 = fmul fast float %2153, %2001
  %2155 = fadd fast float %2154, 1.000000e+00
  %2156 = fsub fast float %2155, %2151
  %2157 = fadd fast float %2156, %2152
  %2158 = fdiv fast float %2150, %2157
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = fsub fast float %2159, %1516
  %2161 = fmul fast float %2160, %2114
  %2162 = fadd fast float %2161, %1516
  br label %2177

; <label>:2163                                    ; preds = %2129
  %2164 = icmp eq i32 %2103, 8
  br i1 %2164, label %2165, label %2177

; <label>:2165                                    ; preds = %2163
  %2166 = fmul fast float %2108, %2002
  %2167 = fmul fast float %2108, %2003
  %2168 = fadd fast float %2166, %1510
  %2169 = fadd fast float %2167, %1511
  %2170 = call float @dx.op.binary.f32(i32 36, float %1517, float %2004)  ; FMin(a,b)
  %2171 = fsub fast float %2170, %1517
  %2172 = fmul fast float %2171, %2111
  %2173 = fadd fast float %2172, %1517
  %2174 = fsub fast float %2001, %1516
  %2175 = fmul fast float %2114, %2174
  %2176 = fadd fast float %2175, %1516
  br label %2177

; <label>:2177                                    ; preds = %2165, %2163, %2131, %2116, %2097, %1700, %1519, %1509
  %2178 = phi float [ %1510, %2097 ], [ %1510, %1700 ], [ %1510, %1509 ], [ %2168, %2165 ], [ %1510, %2163 ], [ %2134, %2131 ], [ %2121, %2116 ], [ %1510, %1519 ]
  %2179 = phi float [ %1511, %2097 ], [ %1511, %1700 ], [ %1511, %1509 ], [ %2169, %2165 ], [ %1511, %2163 ], [ %2135, %2131 ], [ %2122, %2116 ], [ %1511, %1519 ]
  %2180 = phi float [ %2098, %2097 ], [ %1512, %1700 ], [ %1512, %1509 ], [ %2098, %2165 ], [ %2098, %2163 ], [ %2098, %2131 ], [ %2098, %2116 ], [ %1512, %1519 ]
  %2181 = phi float [ %2099, %2097 ], [ %1513, %1700 ], [ %1513, %1509 ], [ %2099, %2165 ], [ %2099, %2163 ], [ %2099, %2131 ], [ %2099, %2116 ], [ %1513, %1519 ]
  %2182 = phi float [ %2100, %2097 ], [ %1514, %1700 ], [ %1514, %1509 ], [ %2100, %2165 ], [ %2100, %2163 ], [ %2100, %2131 ], [ %2100, %2116 ], [ %1514, %1519 ]
  %2183 = phi float [ %2101, %2097 ], [ %1515, %1700 ], [ %1515, %1509 ], [ %2101, %2165 ], [ %2101, %2163 ], [ %2101, %2131 ], [ %2101, %2116 ], [ %1515, %1519 ]
  %2184 = phi float [ %1516, %2097 ], [ %1516, %1700 ], [ %1516, %1509 ], [ %2176, %2165 ], [ %1516, %2163 ], [ %2162, %2131 ], [ %2128, %2116 ], [ %1516, %1519 ]
  %2185 = phi float [ %1517, %2097 ], [ %1517, %1700 ], [ %1517, %1509 ], [ %2173, %2165 ], [ %1517, %2163 ], [ %2139, %2131 ], [ %2125, %2116 ], [ %1517, %1519 ]
  %2186 = phi float [ %2102, %2097 ], [ %1518, %1700 ], [ %1518, %1509 ], [ %2102, %2165 ], [ %2102, %2163 ], [ %2102, %2131 ], [ %2102, %2116 ], [ %1518, %1519 ]
  br i1 %369, label %2845, label %2187

; <label>:2187                                    ; preds = %2177
  %2188 = icmp ult i32 %420, 4
  %2189 = add i32 %43, 72
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %43, 76
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = or i32 %2194, %2191
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2845, label %2197

; <label>:2197                                    ; preds = %2187
  %2198 = and i32 %2191, 262144
  %2199 = icmp ne i32 %2198, 0
  %2200 = select i1 %2199, float %48, float 1.000000e+00
  %2201 = select i1 %2199, float %49, float 0.000000e+00
  %2202 = select i1 %2199, float %50, float 0.000000e+00
  %2203 = select i1 %2199, float %51, float 1.000000e+00
  %2204 = select i1 %2199, float %52, float %75
  %2205 = select i1 %2199, float %53, float %76
  %2206 = add i32 %43, 332
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 16
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = fmul fast float %2210, 0x3F50624DE0000000
  %2212 = add i32 %43, 136
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = lshr i32 %2214, 16
  %2216 = and i32 %2215, 255
  %2217 = lshr i32 %2214, 24
  %2218 = add i32 %43, 340
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2220, 16
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = add i32 %43, 80
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 22
  %2229 = shl nuw nsw i32 %2228, 5
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = shl i32 %2227, 4
  %2232 = and i32 %2231, 32752
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = lshr i32 %2227, 7
  %2235 = and i32 %2234, 32752
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2239 = fmul fast float %2238, 1.000000e+03
  %2240 = fmul fast float %359, %2239
  %2241 = call float @dx.op.unary.f32(i32 22, float %2240)  ; Frc(value)
  %2242 = fadd fast float %2241, %349
  %2243 = fmul fast float %360, %2239
  %2244 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2245 = fadd fast float %2244, %351
  %2246 = fmul fast float %2211, %2239
  %2247 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  %2248 = fmul fast float %2247, 0x401921FB60000000
  %2249 = fadd fast float %2248, %2230
  %2250 = call float @dx.op.unary.f32(i32 13, float %2249)  ; Sin(value)
  %2251 = call float @dx.op.unary.f32(i32 12, float %2249)  ; Cos(value)
  %2252 = fsub fast float -0.000000e+00, %2250
  %2253 = fadd fast float %2204, -5.000000e-01
  %2254 = fadd fast float %2205, -5.000000e-01
  %2255 = fmul fast float %2222, %2253
  %2256 = fmul fast float %2224, %2254
  %2257 = fadd fast float %2255, 5.000000e-01
  %2258 = fadd fast float %2256, 5.000000e-01
  %2259 = fmul fast float %2233, %2257
  %2260 = fmul fast float %2236, %2258
  %2261 = fmul fast float %2251, %2259
  %2262 = call float @dx.op.tertiary.f32(i32 46, float %2252, float %2260, float %2261)  ; FMad(a,b,c)
  %2263 = fmul fast float %2250, %2259
  %2264 = call float @dx.op.tertiary.f32(i32 46, float %2251, float %2260, float %2263)  ; FMad(a,b,c)
  %2265 = fadd fast float %2242, %2262
  %2266 = fadd fast float %2245, %2264
  %2267 = icmp ugt i32 %2216, 1
  %2268 = icmp ugt i32 %2214, 33554431
  %2269 = or i1 %2268, %2267
  br i1 %2269, label %2270, label %2295

; <label>:2270                                    ; preds = %2197
  %2271 = add i32 %43, 276
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = lshr i32 %2273, 16
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = fmul fast float %2238, %2275
  %2277 = call float @dx.op.unary.f32(i32 22, float %2276)  ; Frc(value)
  %2278 = mul nuw nsw i32 %2216, %2217
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2277, %2279
  %2281 = call float @dx.op.unary.f32(i32 27, float %2280)  ; Round_ni(value)
  %2282 = fptoui float %2281 to i32
  %2283 = urem i32 %2282, %2216
  %2284 = udiv i32 %2282, %2217
  %2285 = call float @dx.op.unary.f32(i32 22, float %2265)  ; Frc(value)
  %2286 = call float @dx.op.unary.f32(i32 22, float %2266)  ; Frc(value)
  %2287 = uitofp i32 %2283 to float
  %2288 = uitofp i32 %2284 to float
  %2289 = fadd fast float %2285, %2287
  %2290 = fadd fast float %2286, %2288
  %2291 = uitofp i32 %2216 to float
  %2292 = uitofp i32 %2217 to float
  %2293 = fdiv fast float %2289, %2291
  %2294 = fdiv fast float %2290, %2292
  br label %2295

; <label>:2295                                    ; preds = %2270, %2197
  %2296 = phi float [ %2293, %2270 ], [ %2265, %2197 ]
  %2297 = phi float [ %2294, %2270 ], [ %2266, %2197 ]
  %2298 = and i32 %2191, 256
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2346, label %2300

; <label>:2300                                    ; preds = %2295
  %2301 = add i32 %43, 468
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = add i32 %2303, 0
  %2305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2305, %dx.types.Handle %84, float %2296, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = add i32 %43, 148
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = shl i32 %2310, 4
  %2312 = and i32 %2311, 32752
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = lshr i32 %2310, 7
  %2315 = and i32 %2314, 32752
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = fsub fast float 1.000000e+00, %415
  %2318 = call float @dx.op.binary.f32(i32 35, float %2317, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2319 = bitcast float %415 to i32
  %2320 = sitofp i32 %2319 to float
  %2321 = fadd fast float %2320, 0xC1CFBF8940000000
  %2322 = fmul fast float %2316, %2321
  %2323 = fadd fast float %2322, 0x41CFBF8940000000
  %2324 = fptosi float %2323 to i32
  %2325 = bitcast i32 %2324 to float
  %2326 = bitcast float %2318 to i32
  %2327 = sitofp i32 %2326 to float
  %2328 = fadd fast float %2327, 0xC1CFBF8940000000
  %2329 = fmul fast float %2328, %2316
  %2330 = fadd fast float %2329, 0x41CFBF8940000000
  %2331 = fptosi float %2330 to i32
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2325, %2313
  %2334 = fmul fast float %2332, %2313
  %2335 = fsub fast float %2318, %2333
  %2336 = fadd fast float %2334, %2318
  %2337 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2338 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2339 = fsub fast float %2307, %2337
  %2340 = fsub fast float %2338, %2337
  %2341 = bitcast float %2340 to i32
  %2342 = sub nsw i32 2129859010, %2341
  %2343 = bitcast i32 %2342 to float
  %2344 = fmul fast float %2343, %2339
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  br label %2346

; <label>:2346                                    ; preds = %2300, %2295
  %2347 = phi float [ %2345, %2300 ], [ %415, %2295 ]
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 128
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2368, label %2352

; <label>:2352                                    ; preds = %2346
  %2353 = add i32 %43, 452
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2355, 0
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2357, %dx.types.Handle %84, float %2296, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 524288
  %2363 = icmp ne i32 %2362, 0
  %2364 = fcmp fast ogt float %2359, 0x3FE0101020000000
  %2365 = select i1 %2364, float 1.000000e+00, float 0.000000e+00
  %2366 = select i1 %2363, float %2365, float %2359
  %2367 = fmul fast float %2366, %2347
  br label %2368

; <label>:2368                                    ; preds = %2352, %2346
  %2369 = phi float [ %2367, %2352 ], [ %2347, %2346 ]
  %2370 = fcmp fast ult float %2369, 0x3F70101020000000
  br i1 %2370, label %2845, label %2371

; <label>:2371                                    ; preds = %2368
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 16
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2574, label %2376

; <label>:2376                                    ; preds = %2371
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = add i32 %43, 404
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = add i32 %2381, 0
  %2383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2383, %dx.types.Handle %83, float %2296, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = extractvalue %dx.types.ResRet.f32 %2384, 3
  %2389 = and i32 %2378, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = lshr i32 %2378, 8
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = fmul fast float %2388, %2390
  %2395 = fadd fast float %2394, %2393
  %2396 = fmul fast float %2395, 0x3F70101000000000
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 512
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2409, label %2401

; <label>:2401                                    ; preds = %2376
  %2402 = add i32 %43, 488
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = add i32 %2404, 0
  %2406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2406, %dx.types.Handle %84, float %2296, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  br label %2409

; <label>:2409                                    ; preds = %2401, %2376
  %2410 = phi float [ %2408, %2401 ], [ 1.000000e+00, %2376 ]
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 33554432
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2521, label %2415

; <label>:2415                                    ; preds = %2409
  %2416 = add i32 %43, 272
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 65535
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = lshr i32 %2418, 16
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = add i32 %43, 276
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 65535
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = lshr i32 %2429, 24
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101020000000
  %2433 = and i32 %2429, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F70101020000000
  %2436 = lshr i32 %2429, 8
  %2437 = and i32 %2436, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = fmul fast float %2438, 0x3F70101020000000
  %2440 = lshr i32 %2429, 16
  %2441 = and i32 %2440, 255
  %2442 = uitofp i32 %2441 to float
  %2443 = fmul fast float %2442, 0x3F70101020000000
  %2444 = add i32 %43, 268
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = lshr i32 %2446, 24
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3F70101020000000
  %2450 = and i32 %2446, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = fmul fast float %2451, 0x3F70101020000000
  %2453 = lshr i32 %2446, 8
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101020000000
  %2457 = lshr i32 %2446, 16
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = fmul fast float %2459, 0x3F70101020000000
  %2461 = bitcast float %2385 to i32
  %2462 = ashr i32 %2461, 1
  %2463 = sub nsw i32 1597463174, %2462
  %2464 = bitcast i32 %2463 to float
  %2465 = fmul fast float %2385, 5.000000e-01
  %2466 = fmul fast float %2464, %2464
  %2467 = fmul fast float %2466, %2465
  %2468 = fsub fast float 1.500000e+00, %2467
  %2469 = fmul fast float %2464, %2385
  %2470 = fmul fast float %2469, %2468
  %2471 = bitcast float %2386 to i32
  %2472 = ashr i32 %2471, 1
  %2473 = sub nsw i32 1597463174, %2472
  %2474 = bitcast i32 %2473 to float
  %2475 = fmul fast float %2386, 5.000000e-01
  %2476 = fmul fast float %2474, %2474
  %2477 = fmul fast float %2476, %2475
  %2478 = fsub fast float 1.500000e+00, %2477
  %2479 = fmul fast float %2474, %2386
  %2480 = fmul fast float %2479, %2478
  %2481 = bitcast float %2387 to i32
  %2482 = ashr i32 %2481, 1
  %2483 = sub nsw i32 1597463174, %2482
  %2484 = bitcast i32 %2483 to float
  %2485 = fmul fast float %2387, 5.000000e-01
  %2486 = fmul fast float %2484, %2484
  %2487 = fmul fast float %2486, %2485
  %2488 = fsub fast float 1.500000e+00, %2487
  %2489 = fmul fast float %2484, %2387
  %2490 = fmul fast float %2489, %2488
  %2491 = fsub fast float %2470, %2452
  %2492 = fsub fast float %2480, %2456
  %2493 = fsub fast float %2490, %2460
  %2494 = fmul fast float %2491, %2420
  %2495 = fmul fast float %2492, %2422
  %2496 = fmul fast float %2493, %2427
  %2497 = fadd fast float %2494, %2435
  %2498 = fadd fast float %2495, %2439
  %2499 = fadd fast float %2496, %2443
  %2500 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2501 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2502 = call float @dx.op.unary.f32(i32 7, float %2499)  ; Saturate(value)
  %2503 = fmul fast float %2500, %2500
  %2504 = fmul fast float %2501, %2501
  %2505 = fmul fast float %2502, %2502
  %2506 = fsub fast float %2503, %2385
  %2507 = fsub fast float %2504, %2386
  %2508 = fsub fast float %2505, %2387
  %2509 = fmul fast float %2506, %2410
  %2510 = fmul fast float %2507, %2410
  %2511 = fmul fast float %2508, %2410
  %2512 = fadd fast float %2509, %2385
  %2513 = fadd fast float %2510, %2386
  %2514 = fadd fast float %2511, %2387
  %2515 = fadd fast float %2432, %2396
  %2516 = fsub fast float %2515, %2449
  %2517 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2518 = fsub fast float %2517, %2396
  %2519 = fmul fast float %2518, %2410
  %2520 = fadd fast float %2519, %2396
  br label %2574

; <label>:2521                                    ; preds = %2409
  %2522 = and i32 %2412, 134217728
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2558, label %2524

; <label>:2524                                    ; preds = %2521
  %2525 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2528 = fadd fast float %2525, -5.000000e-01
  %2529 = fadd fast float %2526, -5.000000e-01
  %2530 = fadd fast float %2527, -5.000000e-01
  %2531 = fmul fast float %2528, %2410
  %2532 = fmul fast float %2529, %2410
  %2533 = fmul fast float %2530, %2410
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = fadd fast float %2532, 5.000000e-01
  %2536 = fadd fast float %2533, 5.000000e-01
  %2537 = call float @dx.op.unary.f32(i32 24, float %2385)  ; Sqrt(value)
  %2538 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2539 = call float @dx.op.unary.f32(i32 24, float %2387)  ; Sqrt(value)
  %2540 = fmul fast float %2534, 2.000000e+00
  %2541 = fsub fast float 1.000000e+00, %2540
  %2542 = fmul fast float %2541, %2537
  %2543 = fadd fast float %2542, %2540
  %2544 = fmul fast float %2543, %2537
  %2545 = fmul fast float %2535, 2.000000e+00
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = fmul fast float %2546, %2538
  %2548 = fadd fast float %2547, %2545
  %2549 = fmul fast float %2548, %2538
  %2550 = fmul fast float %2536, 2.000000e+00
  %2551 = fsub fast float 1.000000e+00, %2550
  %2552 = fmul fast float %2551, %2539
  %2553 = fadd fast float %2552, %2550
  %2554 = fmul fast float %2553, %2539
  %2555 = fmul fast float %2544, %2544
  %2556 = fmul fast float %2549, %2549
  %2557 = fmul fast float %2554, %2554
  br label %2574

; <label>:2558                                    ; preds = %2521
  %2559 = fmul fast float %336, %336
  %2560 = fmul fast float %340, %340
  %2561 = fmul fast float %344, %344
  %2562 = fadd fast float %2559, -1.000000e+00
  %2563 = fadd fast float %2560, -1.000000e+00
  %2564 = fadd fast float %2561, -1.000000e+00
  %2565 = fmul fast float %2410, %2562
  %2566 = fmul fast float %2410, %2563
  %2567 = fmul fast float %2410, %2564
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fadd fast float %2566, 1.000000e+00
  %2570 = fadd fast float %2567, 1.000000e+00
  %2571 = fmul fast float %2568, %2385
  %2572 = fmul fast float %2569, %2386
  %2573 = fmul fast float %2570, %2387
  br label %2574

; <label>:2574                                    ; preds = %2558, %2524, %2415, %2371
  %2575 = phi float [ %2520, %2415 ], [ %2396, %2524 ], [ %2396, %2558 ], [ 0x3FA23C0BE0000000, %2371 ]
  %2576 = phi float [ %2512, %2415 ], [ %2555, %2524 ], [ %2571, %2558 ], [ 1.000000e+00, %2371 ]
  %2577 = phi float [ %2513, %2415 ], [ %2556, %2524 ], [ %2572, %2558 ], [ 1.000000e+00, %2371 ]
  %2578 = phi float [ %2514, %2415 ], [ %2557, %2524 ], [ %2573, %2558 ], [ 1.000000e+00, %2371 ]
  %2579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.i32 %2579, 1
  %2581 = and i32 %2580, 1
  %2582 = icmp ne i32 %2581, 0
  %2583 = add i32 %43, 356
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 32
  %2587 = icmp ne i32 %2586, 0
  %2588 = and i1 %2582, %2587
  %2589 = select i1 %2588, float 1.000000e+00, float %2576
  %2590 = select i1 %2588, float 0x3FD3333340000000, float %2577
  %2591 = select i1 %2588, float 0x3FD3333340000000, float %2578
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 32
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2668, label %2596

; <label>:2596                                    ; preds = %2574
  %2597 = add i32 %43, 140
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = add i32 %43, 420
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2602, 0
  %2604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2604, %dx.types.Handle %83, float %2296, float %2297, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = extractvalue %dx.types.ResRet.f32 %2605, 3
  %2610 = and i32 %2599, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = lshr i32 %2599, 8
  %2613 = and i32 %2612, 255
  %2614 = uitofp i32 %2613 to float
  %2615 = lshr i32 %2599, 16
  %2616 = and i32 %2615, 255
  %2617 = uitofp i32 %2616 to float
  %2618 = fmul fast float %2617, 0x3F70101000000000
  %2619 = fmul fast float %2606, %2611
  %2620 = fadd fast float %2619, %2614
  %2621 = fmul fast float %2620, 0x3F70101000000000
  %2622 = fadd fast float %2607, -5.000000e-01
  %2623 = fadd fast float %2609, -5.000000e-01
  %2624 = fmul fast float %2622, %2618
  %2625 = fmul fast float %2623, %2618
  %2626 = fadd fast float %2624, 5.000000e-01
  %2627 = fadd fast float %2625, 5.000000e-01
  %2628 = fmul fast float %2626, 2.000000e+00
  %2629 = fadd fast float %2628, -1.000000e+00
  %2630 = fmul fast float %2627, 2.000000e+00
  %2631 = fadd fast float %2630, -1.000000e+00
  %2632 = fadd fast float %2629, %2631
  %2633 = fmul fast float %2632, 5.000000e-01
  %2634 = fsub fast float %2629, %2631
  %2635 = fmul fast float %2634, 5.000000e-01
  %2636 = call float @dx.op.unary.f32(i32 6, float %2633)  ; FAbs(value)
  %2637 = fsub fast float 1.000000e+00, %2636
  %2638 = call float @dx.op.unary.f32(i32 6, float %2635)  ; FAbs(value)
  %2639 = fsub fast float %2637, %2638
  %2640 = call float @dx.op.dot3.f32(i32 55, float %2633, float %2635, float %2639, float %2633, float %2635, float %2639)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = call float @dx.op.unary.f32(i32 25, float %2640)  ; Rsqrt(value)
  %2642 = fmul fast float %2633, %2641
  %2643 = fmul fast float %2635, %2641
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 67108864
  %2647 = icmp eq i32 %2646, 0
  br i1 %2647, label %2664, label %2648

; <label>:2648                                    ; preds = %2596
  %2649 = add i32 %43, 328
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 65535
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = lshr i32 %2651, 16
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = fsub fast float %2621, %2659
  %2661 = fmul fast float %2660, %2653
  %2662 = fadd fast float %2661, %2657
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  br label %2664

; <label>:2664                                    ; preds = %2648, %2596
  %2665 = phi float [ %2663, %2648 ], [ %2621, %2596 ]
  %2666 = call float @dx.op.dot2.f32(i32 54, float %2642, float %2643, float %2200, float %2201)  ; Dot2(ax,ay,bx,by)
  %2667 = call float @dx.op.dot2.f32(i32 54, float %2642, float %2643, float %2202, float %2203)  ; Dot2(ax,ay,bx,by)
  br label %2668

; <label>:2668                                    ; preds = %2664, %2574
  %2669 = phi float [ %2665, %2664 ], [ 0x3FD6666660000000, %2574 ]
  %2670 = phi float [ %2666, %2664 ], [ 0.000000e+00, %2574 ]
  %2671 = phi float [ %2667, %2664 ], [ 0.000000e+00, %2574 ]
  %2672 = phi float [ %2608, %2664 ], [ 1.000000e+00, %2574 ]
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = add i32 %43, 144
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = and i32 %2677, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = lshr i32 %2677, 8
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = fmul fast float %2682, %2683
  %2685 = fadd fast float %2684, %2679
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  br i1 %2188, label %2688, label %2693

; <label>:2688                                    ; preds = %2668
  %2689 = fsub fast float 1.000000e+00, %2369
  %2690 = fmul fast float %2689, %2180
  %2691 = fmul fast float %2689, %2181
  %2692 = fmul fast float %2689, %2182
  br label %2693

; <label>:2693                                    ; preds = %2688, %2668
  %2694 = phi float [ %2690, %2688 ], [ %2180, %2668 ]
  %2695 = phi float [ %2691, %2688 ], [ %2181, %2668 ]
  %2696 = phi float [ %2692, %2688 ], [ %2182, %2668 ]
  %2697 = and i32 %2674, 3
  %2698 = icmp eq i32 %2697, 3
  br i1 %2698, label %2765, label %2699

; <label>:2699                                    ; preds = %2693
  %2700 = and i32 %2674, 16
  %2701 = icmp ne i32 %2700, 0
  %2702 = select i1 %2701, float %2369, float 0.000000e+00
  %2703 = icmp eq i32 %2697, 0
  br i1 %2703, label %2704, label %2720

; <label>:2704                                    ; preds = %2699
  %2705 = fsub fast float %2589, %2694
  %2706 = fsub fast float %2590, %2695
  %2707 = fsub fast float %2591, %2696
  %2708 = fmul fast float %2702, %2705
  %2709 = fmul fast float %2702, %2706
  %2710 = fmul fast float %2702, %2707
  %2711 = fadd fast float %2708, %2694
  %2712 = fadd fast float %2709, %2695
  %2713 = fadd fast float %2710, %2696
  %2714 = fsub fast float %2575, %2183
  %2715 = fmul fast float %2702, %2714
  %2716 = fadd fast float %2715, %2183
  %2717 = fsub fast float %2687, %2186
  %2718 = fmul fast float %2702, %2717
  %2719 = fadd fast float %2718, %2186
  br label %2765

; <label>:2720                                    ; preds = %2699
  %2721 = icmp eq i32 %2697, 1
  br i1 %2721, label %2722, label %2735

; <label>:2722                                    ; preds = %2720
  %2723 = fadd fast float %2589, -1.000000e+00
  %2724 = fadd fast float %2590, -1.000000e+00
  %2725 = fadd fast float %2591, -1.000000e+00
  %2726 = fmul fast float %2702, %2723
  %2727 = fmul fast float %2702, %2724
  %2728 = fmul fast float %2702, %2725
  %2729 = fadd fast float %2726, 1.000000e+00
  %2730 = fadd fast float %2727, 1.000000e+00
  %2731 = fadd fast float %2728, 1.000000e+00
  %2732 = fmul fast float %2729, %2694
  %2733 = fmul fast float %2730, %2695
  %2734 = fmul fast float %2731, %2696
  br label %2765

; <label>:2735                                    ; preds = %2720
  %2736 = icmp eq i32 %2697, 2
  br i1 %2736, label %2737, label %2765

; <label>:2737                                    ; preds = %2735
  %2738 = call float @dx.op.unary.f32(i32 24, float %2589)  ; Sqrt(value)
  %2739 = call float @dx.op.unary.f32(i32 24, float %2590)  ; Sqrt(value)
  %2740 = call float @dx.op.unary.f32(i32 24, float %2591)  ; Sqrt(value)
  %2741 = fadd fast float %2738, -5.000000e-01
  %2742 = fadd fast float %2739, -5.000000e-01
  %2743 = fadd fast float %2740, -5.000000e-01
  %2744 = fmul fast float %2741, %2702
  %2745 = fmul fast float %2742, %2702
  %2746 = fmul fast float %2743, %2702
  %2747 = fadd fast float %2744, 5.000000e-01
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = fmul fast float %2747, 2.000000e+00
  %2751 = fsub fast float 1.000000e+00, %2750
  %2752 = fmul fast float %2751, %2694
  %2753 = fadd fast float %2752, %2750
  %2754 = fmul fast float %2753, %2694
  %2755 = fmul fast float %2748, 2.000000e+00
  %2756 = fsub fast float 1.000000e+00, %2755
  %2757 = fmul fast float %2756, %2695
  %2758 = fadd fast float %2757, %2755
  %2759 = fmul fast float %2758, %2695
  %2760 = fmul fast float %2749, 2.000000e+00
  %2761 = fsub fast float 1.000000e+00, %2760
  %2762 = fmul fast float %2761, %2696
  %2763 = fadd fast float %2762, %2760
  %2764 = fmul fast float %2763, %2696
  br label %2765

; <label>:2765                                    ; preds = %2737, %2735, %2722, %2704, %2693
  %2766 = phi float [ %2694, %2693 ], [ %2754, %2737 ], [ %2694, %2735 ], [ %2732, %2722 ], [ %2711, %2704 ]
  %2767 = phi float [ %2695, %2693 ], [ %2759, %2737 ], [ %2695, %2735 ], [ %2733, %2722 ], [ %2712, %2704 ]
  %2768 = phi float [ %2696, %2693 ], [ %2764, %2737 ], [ %2696, %2735 ], [ %2734, %2722 ], [ %2713, %2704 ]
  %2769 = phi float [ %2183, %2693 ], [ %2183, %2737 ], [ %2183, %2735 ], [ %2183, %2722 ], [ %2716, %2704 ]
  %2770 = phi float [ %2186, %2693 ], [ %2186, %2737 ], [ %2186, %2735 ], [ %2186, %2722 ], [ %2719, %2704 ]
  %2771 = and i32 %2674, 12
  %2772 = icmp eq i32 %2771, 12
  br i1 %2772, label %2845, label %2773

; <label>:2773                                    ; preds = %2765
  %2774 = and i32 %2674, 2097184
  %2775 = icmp eq i32 %2774, 2097184
  %2776 = select i1 %2775, float %2369, float 0.000000e+00
  %2777 = and i32 %2674, 4194336
  %2778 = icmp eq i32 %2777, 4194336
  %2779 = select i1 %2778, float %2369, float 0.000000e+00
  %2780 = and i32 %2674, 8388640
  %2781 = icmp eq i32 %2780, 8388640
  %2782 = select i1 %2781, float %2369, float 0.000000e+00
  %2783 = icmp eq i32 %2771, 0
  br i1 %2783, label %2784, label %2797

; <label>:2784                                    ; preds = %2773
  %2785 = fsub fast float %2670, %2178
  %2786 = fsub fast float %2671, %2179
  %2787 = fmul fast float %2776, %2785
  %2788 = fmul fast float %2776, %2786
  %2789 = fadd fast float %2787, %2178
  %2790 = fadd fast float %2788, %2179
  %2791 = fsub fast float %2672, %2185
  %2792 = fmul fast float %2779, %2791
  %2793 = fadd fast float %2792, %2185
  %2794 = fsub fast float %2669, %2184
  %2795 = fmul fast float %2782, %2794
  %2796 = fadd fast float %2795, %2184
  br label %2845

; <label>:2797                                    ; preds = %2773
  %2798 = icmp eq i32 %2771, 4
  br i1 %2798, label %2799, label %2831

; <label>:2799                                    ; preds = %2797
  %2800 = fmul fast float %2776, %2670
  %2801 = fmul fast float %2776, %2671
  %2802 = fadd fast float %2800, %2178
  %2803 = fadd fast float %2801, %2179
  %2804 = call float @dx.op.binary.f32(i32 36, float %2185, float %2672)  ; FMin(a,b)
  %2805 = fsub fast float %2804, %2185
  %2806 = fmul fast float %2805, %2779
  %2807 = fadd fast float %2806, %2185
  %2808 = fadd fast float %2669, %2184
  %2809 = fmul fast float %2808, 0x3FF337FAE0000000
  %2810 = fmul fast float %2184, %2184
  %2811 = fmul fast float %2669, %2669
  %2812 = fadd fast float %2811, %2810
  %2813 = fmul fast float %2812, 0x3FE5152B00000000
  %2814 = fmul fast float %2184, 0xBFCC1F85E0000000
  %2815 = fmul fast float %2814, %2669
  %2816 = fadd fast float %2815, 0xBFE1363700000000
  %2817 = fadd fast float %2816, %2809
  %2818 = fsub fast float %2817, %2813
  %2819 = fmul fast float %2808, 0x3FBA6F0D00000000
  %2820 = fmul fast float %2812, 0x3FD0432880000000
  %2821 = fmul fast float %2184, 0xBFEF110800000000
  %2822 = fmul fast float %2821, %2669
  %2823 = fadd fast float %2822, 1.000000e+00
  %2824 = fsub fast float %2823, %2819
  %2825 = fadd fast float %2824, %2820
  %2826 = fdiv fast float %2818, %2825
  %2827 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2828 = fsub fast float %2827, %2184
  %2829 = fmul fast float %2828, %2782
  %2830 = fadd fast float %2829, %2184
  br label %2845

; <label>:2831                                    ; preds = %2797
  %2832 = icmp eq i32 %2771, 8
  br i1 %2832, label %2833, label %2845

; <label>:2833                                    ; preds = %2831
  %2834 = fmul fast float %2776, %2670
  %2835 = fmul fast float %2776, %2671
  %2836 = fadd fast float %2834, %2178
  %2837 = fadd fast float %2835, %2179
  %2838 = call float @dx.op.binary.f32(i32 36, float %2185, float %2672)  ; FMin(a,b)
  %2839 = fsub fast float %2838, %2185
  %2840 = fmul fast float %2839, %2779
  %2841 = fadd fast float %2840, %2185
  %2842 = fsub fast float %2669, %2184
  %2843 = fmul fast float %2782, %2842
  %2844 = fadd fast float %2843, %2184
  br label %2845

; <label>:2845                                    ; preds = %2833, %2831, %2799, %2784, %2765, %2368, %2187, %2177
  %2846 = phi float [ %2178, %2765 ], [ %2178, %2368 ], [ %2178, %2177 ], [ %2178, %2187 ], [ %2789, %2784 ], [ %2802, %2799 ], [ %2178, %2831 ], [ %2836, %2833 ]
  %2847 = phi float [ %2179, %2765 ], [ %2179, %2368 ], [ %2179, %2177 ], [ %2179, %2187 ], [ %2790, %2784 ], [ %2803, %2799 ], [ %2179, %2831 ], [ %2837, %2833 ]
  %2848 = phi float [ %2766, %2765 ], [ %2180, %2368 ], [ %2180, %2177 ], [ %2180, %2187 ], [ %2766, %2784 ], [ %2766, %2799 ], [ %2766, %2831 ], [ %2766, %2833 ]
  %2849 = phi float [ %2767, %2765 ], [ %2181, %2368 ], [ %2181, %2177 ], [ %2181, %2187 ], [ %2767, %2784 ], [ %2767, %2799 ], [ %2767, %2831 ], [ %2767, %2833 ]
  %2850 = phi float [ %2768, %2765 ], [ %2182, %2368 ], [ %2182, %2177 ], [ %2182, %2187 ], [ %2768, %2784 ], [ %2768, %2799 ], [ %2768, %2831 ], [ %2768, %2833 ]
  %2851 = phi float [ %2769, %2765 ], [ %2183, %2368 ], [ %2183, %2177 ], [ %2183, %2187 ], [ %2769, %2784 ], [ %2769, %2799 ], [ %2769, %2831 ], [ %2769, %2833 ]
  %2852 = phi float [ %2184, %2765 ], [ %2184, %2368 ], [ %2184, %2177 ], [ %2184, %2187 ], [ %2796, %2784 ], [ %2830, %2799 ], [ %2184, %2831 ], [ %2844, %2833 ]
  %2853 = phi float [ %2185, %2765 ], [ %2185, %2368 ], [ %2185, %2177 ], [ %2185, %2187 ], [ %2793, %2784 ], [ %2807, %2799 ], [ %2185, %2831 ], [ %2841, %2833 ]
  %2854 = phi float [ %2770, %2765 ], [ %2186, %2368 ], [ %2186, %2177 ], [ %2186, %2187 ], [ %2770, %2784 ], [ %2770, %2799 ], [ %2770, %2831 ], [ %2770, %2833 ]
  %2855 = add i32 %43, 360
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.i32 %2856, 1
  %2859 = bitcast i32 %2857 to float
  %2860 = bitcast i32 %2858 to float
  %2861 = fcmp fast oge float %2859, 0.000000e+00
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = select i1 %2861, float %2859, float %2863
  %2865 = fadd fast float %2864, %188
  %2866 = fmul fast float %2860, %189
  %2867 = add i32 %43, 472
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = add i32 %2869, 0
  %2871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2871, %dx.types.Handle %84, float %75, float %76, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = fmul fast float %2866, %2873
  %2875 = fadd fast float %2865, %2874
  %2876 = call float @dx.op.unary.f32(i32 22, float %75)  ; Frc(value)
  %2877 = call float @dx.op.unary.f32(i32 22, float %76)  ; Frc(value)
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2880 = fcmp fast ogt float %2879, 5.000000e-01
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2885 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2886 = fmul fast float %2882, %2876
  %2887 = fmul fast float %2883, %2877
  %2888 = fmul fast float %2884, %2876
  %2889 = fmul fast float %2885, %2877
  %2890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %38, float %2886, float %2887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  br i1 %2880, label %2892, label %2896

; <label>:2892                                    ; preds = %2845
  %2893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %2888, float %2889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2894 = extractvalue %dx.types.ResRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.ResRet.f32 %2893, 1
  br label %2901

; <label>:2896                                    ; preds = %2845
  %2897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %38, float %2888, float %2889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %2888, float %2889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2900 = extractvalue %dx.types.ResRet.f32 %2899, 0
  br label %2901

; <label>:2901                                    ; preds = %2896, %2892
  %2902 = phi float [ %2894, %2892 ], [ %2898, %2896 ]
  %2903 = phi float [ %2895, %2892 ], [ %2900, %2896 ]
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2909 = call float @dx.op.dot4.f32(i32 56, float %2905, float %2906, float %2907, float %2908, float %2891, float %2902, float %2903, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2910 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %2916 = call float @dx.op.dot4.f32(i32 56, float %2912, float %2913, float %2914, float %2915, float %2891, float %2902, float %2903, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.CBufRet.f32 %2918, 1
  %2921 = extractvalue %dx.types.CBufRet.f32 %2918, 2
  %2922 = extractvalue %dx.types.CBufRet.f32 %2918, 3
  %2923 = call float @dx.op.dot4.f32(i32 56, float %2919, float %2920, float %2921, float %2922, float %2891, float %2902, float %2903, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %2886, float %2887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = fcmp fast ole float %2910, 0x3FA4B5DCC0000000
  %2928 = fmul fast float %2910, 0x3FB3D07220000000
  %2929 = fadd fast float %2910, 0x3FAC28F5C0000000
  %2930 = fmul fast float %2929, 0x3FEE54EDE0000000
  %2931 = call float @dx.op.unary.f32(i32 23, float %2930)  ; Log(value)
  %2932 = fmul fast float %2931, 0x4003333340000000
  %2933 = call float @dx.op.unary.f32(i32 21, float %2932)  ; Exp(value)
  %2934 = select i1 %2927, float %2928, float %2933
  %2935 = fcmp fast ole float %2917, 0x3FA4B5DCC0000000
  %2936 = fmul fast float %2917, 0x3FB3D07220000000
  %2937 = fadd fast float %2917, 0x3FAC28F5C0000000
  %2938 = fmul fast float %2937, 0x3FEE54EDE0000000
  %2939 = call float @dx.op.unary.f32(i32 23, float %2938)  ; Log(value)
  %2940 = fmul fast float %2939, 0x4003333340000000
  %2941 = call float @dx.op.unary.f32(i32 21, float %2940)  ; Exp(value)
  %2942 = select i1 %2935, float %2936, float %2941
  %2943 = fcmp fast ole float %2924, 0x3FA4B5DCC0000000
  %2944 = fmul fast float %2924, 0x3FB3D07220000000
  %2945 = fadd fast float %2924, 0x3FAC28F5C0000000
  %2946 = fmul fast float %2945, 0x3FEE54EDE0000000
  %2947 = call float @dx.op.unary.f32(i32 23, float %2946)  ; Log(value)
  %2948 = fmul fast float %2947, 0x4003333340000000
  %2949 = call float @dx.op.unary.f32(i32 21, float %2948)  ; Exp(value)
  %2950 = select i1 %2943, float %2944, float %2949
  %2951 = add i32 %43, 376
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = extractvalue %dx.types.ResRet.i32 %2952, 1
  %2955 = extractvalue %dx.types.ResRet.i32 %2952, 2
  %2956 = bitcast i32 %2953 to float
  %2957 = bitcast i32 %2954 to float
  %2958 = bitcast i32 %2955 to float
  %2959 = and i32 %180, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %180, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = and i32 %181, 65535
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = fmul fast float %2960, %2848
  %2966 = fmul fast float %2962, %2849
  %2967 = fmul fast float %2964, %2850
  %2968 = shl i32 %182, 4
  %2969 = and i32 %2968, 32752
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = lshr i32 %182, 7
  %2972 = and i32 %2971, 32752
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = lshr i32 %182, 22
  %2975 = shl nuw nsw i32 %2974, 5
  %2976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2975)  ; LegacyF16ToF32(value)
  %2977 = and i32 %183, 65535
  %2978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2977)  ; LegacyF16ToF32(value)
  %2979 = fmul fast float %2934, %2926
  %2980 = fmul fast float %2979, %2956
  %2981 = fmul fast float %2980, %2970
  %2982 = fmul fast float %2981, %2978
  %2983 = fmul fast float %2942, %2926
  %2984 = fmul fast float %2983, %2957
  %2985 = fmul fast float %2984, %2973
  %2986 = fmul fast float %2985, %2978
  %2987 = fmul fast float %2950, %2926
  %2988 = fmul fast float %2987, %2958
  %2989 = fmul fast float %2988, %2976
  %2990 = fmul fast float %2989, %2978
  %2991 = call float @dx.op.dot2.f32(i32 54, float %2846, float %2847, float %2846, float %2847)  ; Dot2(ax,ay,bx,by)
  %2992 = fmul fast float %2991, 0x3FE3333340000000
  %2993 = fsub fast float 1.000000e+00, %2992
  %2994 = call float @dx.op.dot3.f32(i32 55, float %2846, float %2847, float %2993, float %2846, float %2847, float %2993)  ; Dot3(ax,ay,az,bx,by,bz)
  %2995 = call float @dx.op.unary.f32(i32 25, float %2994)  ; Rsqrt(value)
  %2996 = fmul fast float %2995, %2846
  %2997 = fmul fast float %2995, %2847
  %2998 = fmul fast float %2993, %2995
  %2999 = fmul fast float %2998, %94
  %3000 = fmul fast float %2998, %95
  %3001 = fmul fast float %2998, %96
  %3002 = fmul fast float %2996, %68
  %3003 = fmul fast float %2996, %69
  %3004 = fmul fast float %2996, %70
  %3005 = fadd fast float %2999, %3002
  %3006 = fadd fast float %3000, %3003
  %3007 = fadd fast float %3001, %3004
  %3008 = fmul fast float %106, %2997
  %3009 = fmul fast float %107, %2997
  %3010 = fmul fast float %108, %2997
  %3011 = fadd fast float %3005, %3008
  %3012 = fadd fast float %3006, %3009
  %3013 = fadd fast float %3007, %3010
  %3014 = call float @dx.op.dot3.f32(i32 55, float %3011, float %3012, float %3013, float %3011, float %3012, float %3013)  ; Dot3(ax,ay,az,bx,by,bz)
  %3015 = call float @dx.op.unary.f32(i32 25, float %3014)  ; Rsqrt(value)
  %3016 = fmul fast float %3011, %3015
  %3017 = fmul fast float %3012, %3015
  %3018 = fmul fast float %3013, %3015
  %3019 = fadd fast float %2851, 0xBFB99999A0000000
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3021 = fmul fast float %3020, 0x3FF1C71C80000000
  %3022 = call float @dx.op.binary.f32(i32 36, float %2851, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3023 = fsub fast float 1.000000e+00, %3021
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = fmul fast float %3024, %2965
  %3026 = fmul fast float %3024, %2966
  %3027 = fmul fast float %3024, %2967
  %3028 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = fmul fast float %3021, %2965
  %3032 = fmul fast float %3021, %2966
  %3033 = fmul fast float %3021, %2967
  %3034 = fadd fast float %3031, %3022
  %3035 = fadd fast float %3032, %3022
  %3036 = fadd fast float %3033, %3022
  %3037 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3038 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3039 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  %3040 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %3041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.i32 %3041, 3
  %3043 = and i32 %3042, 8
  %3044 = icmp ne i32 %3043, 0
  %3045 = call float @dx.op.binary.f32(i32 35, float %3028, float %2965)  ; FMax(a,b)
  %3046 = call float @dx.op.binary.f32(i32 35, float %3029, float %2965)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %3030, float %2965)  ; FMax(a,b)
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3028, float %3029, float %3030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = select i1 %226, float %2965, float %3028
  %3050 = select i1 %226, float %3048, float %3029
  %3051 = select i1 %226, float 1.000000e+00, float %3030
  %3052 = select i1 %3044, float %3045, float %3049
  %3053 = select i1 %3044, float %3046, float %3050
  %3054 = select i1 %3044, float %3047, float %3051
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 0
  %3057 = extractvalue %dx.types.CBufRet.f32 %3055, 1
  %3058 = extractvalue %dx.types.CBufRet.f32 %3055, 2
  %3059 = fadd fast float %3056, %174
  %3060 = fadd fast float %3057, %175
  %3061 = fadd fast float %3058, %176
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3065 = fsub fast float %3059, %3063
  %3066 = fsub fast float %3060, %3064
  %3067 = fmul fast float %3065, %3065
  %3068 = fmul fast float %3066, %3066
  %3069 = fadd fast float %3067, %3068
  %3070 = call float @dx.op.unary.f32(i32 24, float %3069)  ; Sqrt(value)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3062, 2
  %3072 = fcmp fast olt float %3070, %3071
  br i1 %3072, label %3073, label %3140

; <label>:3073                                    ; preds = %2901
  %3074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3075 = extractvalue %dx.types.CBufRet.f32 %3074, 0
  %3076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3077 = extractvalue %dx.types.CBufRet.f32 %3076, 0
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.CBufRet.f32 %3074, 1
  %3081 = extractvalue %dx.types.CBufRet.f32 %3076, 1
  %3082 = extractvalue %dx.types.CBufRet.f32 %3078, 1
  %3083 = extractvalue %dx.types.CBufRet.f32 %3074, 3
  %3084 = extractvalue %dx.types.CBufRet.f32 %3076, 3
  %3085 = extractvalue %dx.types.CBufRet.f32 %3078, 3
  %3086 = fadd fast float %3083, %3059
  %3087 = fadd fast float %3084, %3060
  %3088 = fadd fast float %3085, %3061
  %3089 = fmul fast float %3086, %3075
  %3090 = call float @dx.op.tertiary.f32(i32 46, float %3087, float %3077, float %3089)  ; FMad(a,b,c)
  %3091 = call float @dx.op.tertiary.f32(i32 46, float %3088, float %3079, float %3090)  ; FMad(a,b,c)
  %3092 = fmul fast float %3086, %3080
  %3093 = call float @dx.op.tertiary.f32(i32 46, float %3087, float %3081, float %3092)  ; FMad(a,b,c)
  %3094 = call float @dx.op.tertiary.f32(i32 46, float %3088, float %3082, float %3093)  ; FMad(a,b,c)
  %3095 = fsub fast float %3091, %3083
  %3096 = fsub fast float %3094, %3084
  %3097 = fsub fast float %3095, %3063
  %3098 = fadd fast float %3097, %3071
  %3099 = fsub fast float %3096, %3064
  %3100 = fadd fast float %3099, %3071
  %3101 = extractvalue %dx.types.CBufRet.f32 %3062, 3
  %3102 = fmul fast float %3098, %3101
  %3103 = fmul fast float %3100, %3101
  %3104 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3105 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3106 = fsub fast float 1.000000e+00, %3104
  %3107 = fsub fast float 1.000000e+00, %3105
  %3108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %3106, float %3107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = fcmp fast ugt float %3109, 0.000000e+00
  br i1 %3110, label %3111, label %3414

; <label>:3111                                    ; preds = %3073
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = fmul fast float %3113, %3109
  %3115 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3116 = fadd fast float %3115, %3114
  %3117 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3118 = fadd fast float %3116, %3085
  %3119 = fmul fast float %3091, %3079
  %3120 = call float @dx.op.tertiary.f32(i32 46, float %3094, float %3082, float %3119)  ; FMad(a,b,c)
  %3121 = call float @dx.op.tertiary.f32(i32 46, float %3118, float %3117, float %3120)  ; FMad(a,b,c)
  %3122 = fsub fast float %3121, %3085
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 2
  %3125 = fsub fast float %3122, %3124
  %3126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %38, float %3106, float %3107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %38, float %3106, float %3107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = fadd fast float %3131, %3127
  %3135 = fmul fast float %3134, 0x3F847AE140000000
  %3136 = fadd fast float %3132, %3128
  %3137 = fmul fast float %3136, 0x3F847AE140000000
  %3138 = fadd fast float %3133, %3129
  %3139 = fmul fast float %3138, 0x3F847AE140000000
  br label %3414

; <label>:3140                                    ; preds = %2901
  %3141 = and i32 %205, 1
  %3142 = icmp eq i32 %3141, 0
  br i1 %3142, label %3414, label %3143

; <label>:3143                                    ; preds = %3140
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.CBufRet.f32 %3144, 1
  %3151 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3152 = extractvalue %dx.types.CBufRet.f32 %3148, 1
  %3153 = extractvalue %dx.types.CBufRet.f32 %3144, 3
  %3154 = extractvalue %dx.types.CBufRet.f32 %3146, 3
  %3155 = extractvalue %dx.types.CBufRet.f32 %3148, 3
  %3156 = fadd fast float %3153, %3059
  %3157 = fadd fast float %3154, %3060
  %3158 = fadd fast float %3155, %3061
  %3159 = fmul fast float %3156, %3145
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3147, float %3159)  ; FMad(a,b,c)
  %3161 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3149, float %3160)  ; FMad(a,b,c)
  %3162 = fmul fast float %3156, %3150
  %3163 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3151, float %3162)  ; FMad(a,b,c)
  %3164 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3152, float %3163)  ; FMad(a,b,c)
  %3165 = fsub fast float %3161, %3153
  %3166 = fsub fast float %3164, %3154
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.CBufRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.CBufRet.f32 %3167, 2
  %3171 = extractvalue %dx.types.CBufRet.f32 %3167, 3
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 3
  %3174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.i32 %3174, 0
  %3176 = extractvalue %dx.types.CBufRet.i32 %3174, 1
  %3177 = udiv i32 %3176, %3175
  %3178 = fsub fast float %3165, %3168
  %3179 = fsub fast float %3166, %3169
  %3180 = call float @dx.op.binary.f32(i32 35, float %3178, float 0.000000e+00)  ; FMax(a,b)
  %3181 = call float @dx.op.binary.f32(i32 35, float %3179, float 0.000000e+00)  ; FMax(a,b)
  %3182 = call float @dx.op.binary.f32(i32 36, float %3180, float %3170)  ; FMin(a,b)
  %3183 = call float @dx.op.binary.f32(i32 36, float %3181, float %3171)  ; FMin(a,b)
  %3184 = add i32 %3175, -1
  %3185 = add i32 %3177, -1
  %3186 = fmul fast float %3182, %3173
  %3187 = fmul fast float %3183, %3173
  %3188 = fptoui float %3186 to i32
  %3189 = fptoui float %3187 to i32
  %3190 = call i32 @dx.op.binary.i32(i32 40, i32 %3188, i32 %3184)  ; UMin(a,b)
  %3191 = call i32 @dx.op.binary.i32(i32 40, i32 %3189, i32 %3185)  ; UMin(a,b)
  %3192 = mul i32 %3191, %3175
  %3193 = add i32 %3192, %3190
  %3194 = shl i32 %3193, 2
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = icmp eq i32 %3196, -1
  br i1 %3197, label %3414, label %3198

; <label>:3198                                    ; preds = %3143
  %3199 = mul i32 %3196, 148
  %3200 = add i32 %3199, 4
  %3201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  %3203 = add i32 %3199, 8
  %3204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = add i32 %3199, 36
  %3207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.f32 %3207, 0
  %3209 = add i32 %3199, 60
  %3210 = add i32 %3199, 92
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = add i32 %3199, 116
  %3214 = fsub fast float %3165, %3202
  %3215 = fsub fast float %3166, %3205
  %3216 = fmul fast float %3173, %3214
  %3217 = fmul fast float %3173, %3215
  %3218 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = fsub fast float 1.000000e+00, %3219
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 2
  %3223 = call float @dx.op.unary.f32(i32 83, float %3218)  ; DerivCoarseX(value)
  %3224 = call float @dx.op.unary.f32(i32 83, float %3220)  ; DerivCoarseX(value)
  %3225 = call float @dx.op.unary.f32(i32 84, float %3218)  ; DerivCoarseY(value)
  %3226 = call float @dx.op.unary.f32(i32 84, float %3220)  ; DerivCoarseY(value)
  %3227 = fmul fast float %3223, %3222
  %3228 = fmul fast float %3224, %3222
  %3229 = fmul fast float %3225, %3222
  %3230 = fmul fast float %3226, %3222
  %3231 = call float @dx.op.dot2.f32(i32 54, float %3229, float %3230, float %3229, float %3230)  ; Dot2(ax,ay,bx,by)
  %3232 = call float @dx.op.dot2.f32(i32 54, float %3227, float %3228, float %3227, float %3228)  ; Dot2(ax,ay,bx,by)
  %3233 = call float @dx.op.binary.f32(i32 35, float %3232, float %3231)  ; FMax(a,b)
  %3234 = call float @dx.op.unary.f32(i32 23, float %3233)  ; Log(value)
  %3235 = fmul fast float %3234, 5.000000e-01
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3238 = fadd fast float %3237, %3235
  %3239 = call float @dx.op.binary.f32(i32 35, float %3238, float 0.000000e+00)  ; FMax(a,b)
  %3240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3241 = extractvalue %dx.types.CBufRet.f32 %3240, 3
  %3242 = fadd fast float %3241, %3239
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 3
  %3245 = fadd fast float %3242, %3244
  %3246 = add i32 %3212, 0
  %3247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3246, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3248 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3247, i32 0)  ; GetDimensions(handle,mipLevel)
  %3249 = extractvalue %dx.types.Dimensions %3248, 0
  %3250 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3249)  ; FirstbitLo(value)
  %3251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.i32 %3251, 1
  %3253 = sub nsw i32 %3252, %3250
  %3254 = sitofp i32 %3253 to float
  %3255 = fsub fast float %3245, %3254
  %3256 = call float @dx.op.binary.f32(i32 35, float %3255, float 0.000000e+00)  ; FMax(a,b)
  %3257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3247, %dx.types.Handle %37, float %3218, float %3220, float %3208, float undef, i32 0, i32 0, i32 undef, float %3256)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = fcmp ule float %3258, 0x3FE0101020000000
  %3260 = extractvalue %dx.types.CBufRet.i32 %3251, 0
  %3261 = and i32 %3260, 128
  %3262 = icmp ne i32 %3261, 0
  %3263 = and i1 %3259, %3262
  br i1 %3263, label %3414, label %3264

; <label>:3264                                    ; preds = %3198
  %3265 = add i32 %3199, 20
  %3266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = add i32 %3199, 24
  %3269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = add i32 %3199, 40
  %3272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = add i32 %3199, 96
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 2
  %3279 = fmul fast float %3278, %3218
  %3280 = fmul fast float %3278, %3220
  %3281 = extractvalue %dx.types.CBufRet.f32 %3277, 3
  %3282 = fadd fast float %3279, %3281
  %3283 = fadd fast float %3280, %3281
  %3284 = add i32 %3276, 0
  %3285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3284, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3286 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3285, i32 0)  ; GetDimensions(handle,mipLevel)
  %3287 = extractvalue %dx.types.Dimensions %3286, 0
  %3288 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3287)  ; FirstbitLo(value)
  %3289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.i32 %3289, 1
  %3291 = sub nsw i32 %3290, %3288
  %3292 = sitofp i32 %3291 to float
  %3293 = fsub fast float %3242, %3292
  %3294 = call float @dx.op.binary.f32(i32 35, float %3293, float 0.000000e+00)  ; FMax(a,b)
  %3295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3285, %dx.types.Handle %37, float %3282, float %3283, float %3273, float undef, i32 0, i32 0, i32 undef, float %3294)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = fmul fast float %3296, %3267
  %3298 = fadd fast float %3297, %3270
  %3299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.CBufRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.CBufRet.f32 %3299, 2
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3307 = extractvalue %dx.types.CBufRet.f32 %3299, 3
  %3308 = fadd fast float %3304, %3165
  %3309 = fadd fast float %3306, %3166
  %3310 = fadd fast float %3298, %3307
  %3311 = fmul fast float %3308, %3300
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %3309, float %3301, float %3311)  ; FMad(a,b,c)
  %3313 = call float @dx.op.tertiary.f32(i32 46, float %3310, float %3302, float %3312)  ; FMad(a,b,c)
  %3314 = fsub fast float %3313, %3307
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 2
  %3317 = fsub fast float %3314, %3316
  %3318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.i32 %3318, 0
  %3320 = call i32 @dx.op.binary.i32(i32 40, i32 %3196, i32 %3319)  ; UMin(a,b)
  %3321 = mul i32 %3320, 36
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = add i32 %3321, 4
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = fmul fast float %3326, %3218
  %3328 = fmul fast float %3326, %3220
  %3329 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3330 = fadd fast float %3327, %3329
  %3331 = fadd fast float %3328, %3329
  %3332 = icmp eq i32 %3323, 0
  br i1 %3332, label %3401, label %3333

; <label>:3333                                    ; preds = %3264
  br label %3334

; <label>:3334                                    ; preds = %3391, %3333
  %3335 = phi float [ %3392, %3391 ], [ 0.000000e+00, %3333 ]
  %3336 = phi float [ %3393, %3391 ], [ 0.000000e+00, %3333 ]
  %3337 = phi float [ %3394, %3391 ], [ 0.000000e+00, %3333 ]
  %3338 = phi float [ %3395, %3391 ], [ 0.000000e+00, %3333 ]
  %3339 = phi float [ %3396, %3391 ], [ 0.000000e+00, %3333 ]
  %3340 = phi float [ %3397, %3391 ], [ 0.000000e+00, %3333 ]
  %3341 = phi i32 [ %3398, %3391 ], [ 0, %3333 ]
  %3342 = shl i32 %3341, 2
  %3343 = add i32 %3209, %3342
  %3344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = add i32 %3213, %3342
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = add i32 %3348, 0
  %3350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3351 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3350, i32 0)  ; GetDimensions(handle,mipLevel)
  %3352 = extractvalue %dx.types.Dimensions %3351, 0
  %3353 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3352)  ; FirstbitLo(value)
  %3354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.i32 %3354, 1
  %3356 = sub nsw i32 %3355, %3353
  %3357 = sitofp i32 %3356 to float
  %3358 = fsub fast float %3242, %3357
  %3359 = call float @dx.op.binary.f32(i32 35, float %3358, float 0.000000e+00)  ; FMax(a,b)
  %3360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3350, %dx.types.Handle %37, float %3330, float %3331, float %3345, float undef, i32 0, i32 0, i32 undef, float %3359)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = fcmp fast ogt float %3361, 0.000000e+00
  br i1 %3362, label %3363, label %3391

; <label>:3363                                    ; preds = %3334
  %3364 = add i32 %3324, %3342
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 32767
  %3368 = mul nuw nsw i32 %3367, 928
  %3369 = add nuw nsw i32 %3368, 48
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.f32 %3370, 1
  %3373 = extractvalue %dx.types.ResRet.f32 %3370, 2
  %3374 = add nuw nsw i32 %3368, 60
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = fmul fast float %3371, %3361
  %3380 = fmul fast float %3372, %3361
  %3381 = fmul fast float %3373, %3361
  %3382 = fadd fast float %3379, %3335
  %3383 = fadd fast float %3380, %3336
  %3384 = fadd fast float %3381, %3337
  %3385 = fmul fast float %3376, %3361
  %3386 = fmul fast float %3377, %3361
  %3387 = fmul fast float %3378, %3361
  %3388 = fadd fast float %3385, %3338
  %3389 = fadd fast float %3386, %3339
  %3390 = fadd fast float %3387, %3340
  br label %3391

; <label>:3391                                    ; preds = %3363, %3334
  %3392 = phi float [ %3382, %3363 ], [ %3335, %3334 ]
  %3393 = phi float [ %3383, %3363 ], [ %3336, %3334 ]
  %3394 = phi float [ %3384, %3363 ], [ %3337, %3334 ]
  %3395 = phi float [ %3388, %3363 ], [ %3338, %3334 ]
  %3396 = phi float [ %3389, %3363 ], [ %3339, %3334 ]
  %3397 = phi float [ %3390, %3363 ], [ %3340, %3334 ]
  %3398 = add nuw i32 %3341, 1
  %3399 = icmp eq i32 %3398, %3323
  br i1 %3399, label %3400, label %3334

; <label>:3400                                    ; preds = %3391
  br label %3401

; <label>:3401                                    ; preds = %3400, %3264
  %3402 = phi float [ 0.000000e+00, %3264 ], [ %3392, %3400 ]
  %3403 = phi float [ 0.000000e+00, %3264 ], [ %3393, %3400 ]
  %3404 = phi float [ 0.000000e+00, %3264 ], [ %3394, %3400 ]
  %3405 = phi float [ 0.000000e+00, %3264 ], [ %3395, %3400 ]
  %3406 = phi float [ 0.000000e+00, %3264 ], [ %3396, %3400 ]
  %3407 = phi float [ 0.000000e+00, %3264 ], [ %3397, %3400 ]
  %3408 = fadd fast float %3405, %3402
  %3409 = fmul fast float %3408, 0x3F847AE140000000
  %3410 = fadd fast float %3406, %3403
  %3411 = fmul fast float %3410, 0x3F847AE140000000
  %3412 = fadd fast float %3407, %3404
  %3413 = fmul fast float %3412, 0x3F847AE140000000
  br label %3414

; <label>:3414                                    ; preds = %3401, %3198, %3143, %3140, %3111, %3073
  %3415 = phi float [ %3125, %3111 ], [ -1.310720e+05, %3073 ], [ %3317, %3401 ], [ -1.310720e+05, %3143 ], [ -1.310720e+05, %3198 ], [ -1.310720e+05, %3140 ]
  %3416 = phi float [ %3135, %3111 ], [ 0.000000e+00, %3073 ], [ %3409, %3401 ], [ 0.000000e+00, %3143 ], [ 0.000000e+00, %3198 ], [ 0.000000e+00, %3140 ]
  %3417 = phi float [ %3137, %3111 ], [ 0.000000e+00, %3073 ], [ %3411, %3401 ], [ 0.000000e+00, %3143 ], [ 0.000000e+00, %3198 ], [ 0.000000e+00, %3140 ]
  %3418 = phi float [ %3139, %3111 ], [ 0.000000e+00, %3073 ], [ %3413, %3401 ], [ 0.000000e+00, %3143 ], [ 0.000000e+00, %3198 ], [ 0.000000e+00, %3140 ]
  %3419 = phi i1 [ true, %3111 ], [ false, %3073 ], [ true, %3401 ], [ false, %3143 ], [ false, %3198 ], [ false, %3140 ]
  %3420 = and i32 %205, 3
  %3421 = icmp eq i32 %3420, 1
  %3422 = select i1 %3421, float 1.000000e+00, float 0.000000e+00
  %3423 = fsub fast float %3415, %176
  %3424 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3425 = select i1 %3419, float %3424, float 1.000000e+00
  %3426 = fmul fast float %3425, %3422
  %3427 = icmp eq i32 %3420, 3
  %3428 = select i1 %3427, float 1.000000e+00, float %3426
  %3429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3428)  ; FMax(a,b)
  %3430 = fcmp fast olt float %3428, 1.000000e+00
  %3431 = fcmp uge float %58, 0.000000e+00
  %3432 = and i1 %3431, %3430
  br i1 %3432, label %3433, label %3443

; <label>:3433                                    ; preds = %3414
  %3434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %37, float %58, float %59, float %60, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = fadd fast float %3435, %3429
  %3439 = fcmp ule float %57, 0.000000e+00
  %3440 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = select i1 %3439, float %3440, float 1.000000e+00
  %3442 = fmul fast float %3441, %3437
  br label %3443

; <label>:3443                                    ; preds = %3433, %3414
  %3444 = phi float [ %3438, %3433 ], [ %3429, %3414 ]
  %3445 = phi float [ %3436, %3433 ], [ 0.000000e+00, %3414 ]
  %3446 = phi float [ %3442, %3433 ], [ 0.000000e+00, %3414 ]
  %3447 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3448 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3449 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3450 = fcmp fast une float %3448, 0.000000e+00
  %3451 = fcmp fast une float %3449, 0.000000e+00
  %3452 = or i1 %3450, %3451
  br i1 %3452, label %3453, label %4012

; <label>:3453                                    ; preds = %3443
  br i1 %3450, label %3454, label %3727

; <label>:3454                                    ; preds = %3453
  %3455 = call float @dx.op.unary.f32(i32 23, float %2853)  ; Log(value)
  %3456 = fmul fast float %3455, 4.000000e+00
  %3457 = call float @dx.op.unary.f32(i32 21, float %3456)  ; Exp(value)
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 0
  %3460 = fmul fast float %3459, %45
  %3461 = fmul fast float %3459, %46
  %3462 = fmul fast float %3459, %47
  %3463 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %3464 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %3465 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %3466 = call float @dx.op.unary.f32(i32 23, float %3463)  ; Log(value)
  %3467 = call float @dx.op.unary.f32(i32 23, float %3464)  ; Log(value)
  %3468 = call float @dx.op.unary.f32(i32 23, float %3465)  ; Log(value)
  %3469 = fmul fast float %3466, 4.000000e+00
  %3470 = fmul fast float %3467, 4.000000e+00
  %3471 = fmul fast float %3468, 4.000000e+00
  %3472 = call float @dx.op.unary.f32(i32 21, float %3469)  ; Exp(value)
  %3473 = call float @dx.op.unary.f32(i32 21, float %3470)  ; Exp(value)
  %3474 = call float @dx.op.unary.f32(i32 21, float %3471)  ; Exp(value)
  %3475 = fadd fast float %3473, %3472
  %3476 = fadd fast float %3475, %3474
  %3477 = fdiv fast float 1.000000e+00, %3476
  %3478 = fmul fast float %3477, %3472
  %3479 = fcmp fast ogt float %54, 0.000000e+00
  %3480 = fcmp fast ogt float %55, 0.000000e+00
  %3481 = fcmp fast ogt float %56, 0.000000e+00
  %3482 = fcmp fast olt float %54, 0.000000e+00
  %3483 = fcmp fast olt float %55, 0.000000e+00
  %3484 = fcmp fast olt float %56, 0.000000e+00
  %3485 = zext i1 %3479 to i32
  %3486 = zext i1 %3480 to i32
  %3487 = zext i1 %3481 to i32
  %3488 = zext i1 %3482 to i32
  %3489 = zext i1 %3483 to i32
  %3490 = zext i1 %3484 to i32
  %3491 = sub nsw i32 %3485, %3488
  %3492 = sub nsw i32 %3486, %3489
  %3493 = sub nsw i32 %3487, %3490
  %3494 = call float @dx.op.unary.f32(i32 83, float %3460)  ; DerivCoarseX(value)
  %3495 = call float @dx.op.unary.f32(i32 83, float %3461)  ; DerivCoarseX(value)
  %3496 = call float @dx.op.unary.f32(i32 83, float %3462)  ; DerivCoarseX(value)
  %3497 = call float @dx.op.unary.f32(i32 84, float %3460)  ; DerivCoarseY(value)
  %3498 = call float @dx.op.unary.f32(i32 84, float %3461)  ; DerivCoarseY(value)
  %3499 = call float @dx.op.unary.f32(i32 84, float %3462)  ; DerivCoarseY(value)
  %3500 = fcmp fast ole float %239, %3478
  %3501 = fmul fast float %3477, %3475
  %3502 = fcmp fast ole float %239, %3501
  %3503 = select i1 %3502, float %3462, float %3460
  %3504 = select i1 %3502, float %3460, float %3461
  %3505 = select i1 %3500, float %3461, float %3503
  %3506 = select i1 %3500, float %3462, float %3504
  %3507 = select i1 %3502, float %3496, float %3494
  %3508 = select i1 %3502, float %3494, float %3495
  %3509 = select i1 %3500, float %3495, float %3507
  %3510 = select i1 %3500, float %3496, float %3508
  %3511 = select i1 %3502, float %3499, float %3497
  %3512 = select i1 %3502, float %3497, float %3498
  %3513 = select i1 %3500, float %3498, float %3511
  %3514 = select i1 %3500, float %3499, float %3512
  %3515 = call float @dx.op.unary.f32(i32 27, float %3505)  ; Round_ni(value)
  %3516 = call float @dx.op.unary.f32(i32 27, float %3506)  ; Round_ni(value)
  %3517 = fptosi float %3515 to i32
  %3518 = fptosi float %3516 to i32
  %3519 = xor i32 %3518, %3517
  %3520 = sitofp i32 %3519 to float
  %3521 = fptosi float %3520 to i32
  %3522 = sitofp i32 %3521 to float
  %3523 = fmul fast float %3522, 0x3FE3C6EF40000000
  %3524 = frem fast float %3515, 2.560000e+02
  %3525 = frem fast float %3516, 2.560000e+02
  %3526 = fptoui float %3524 to i32
  %3527 = fptoui float %3525 to i32
  %3528 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %3526, i32 %3527, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.ResRet.f32 %3528, 1
  %3531 = extractvalue %dx.types.ResRet.f32 %3528, 2
  %3532 = fadd fast float %3529, %3523
  %3533 = fadd fast float %3530, %3523
  %3534 = fadd fast float %3531, %3523
  %3535 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3536 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3534)  ; Frc(value)
  %3538 = fmul fast float %3537, 0x401921FB60000000
  %3539 = call float @dx.op.unary.f32(i32 13, float %3538)  ; Sin(value)
  %3540 = call float @dx.op.unary.f32(i32 12, float %3538)  ; Cos(value)
  %3541 = fsub fast float -0.000000e+00, %3540
  %3542 = fmul fast float %3540, %3505
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3506, float %3542)  ; FMad(a,b,c)
  %3544 = fmul fast float %3539, %3505
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3506, float %3544)  ; FMad(a,b,c)
  %3546 = fadd fast float %3543, %3535
  %3547 = fadd fast float %3545, %3536
  %3548 = extractvalue %dx.types.CBufRet.f32 %3458, 3
  %3549 = bitcast float %3548 to i32
  %3550 = icmp eq i32 %3549, 0
  br i1 %3550, label %3589, label %3551

; <label>:3551                                    ; preds = %3454
  %3552 = add i32 %3549, 0
  %3553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3554 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3553, %dx.types.Handle %84, float %3546, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3509, float %3510, float undef, float %3513, float %3514, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3556, 2
  %3559 = fsub fast float 1.000000e+00, %3448
  %3560 = call float @dx.op.binary.f32(i32 35, float %3559, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3561 = bitcast float %3448 to i32
  %3562 = sitofp i32 %3561 to float
  %3563 = fadd fast float %3562, 0xC1CFBF8940000000
  %3564 = fmul fast float %3558, %3563
  %3565 = fadd fast float %3564, 0x41CFBF8940000000
  %3566 = fptosi float %3565 to i32
  %3567 = bitcast i32 %3566 to float
  %3568 = bitcast float %3560 to i32
  %3569 = sitofp i32 %3568 to float
  %3570 = fadd fast float %3569, 0xC1CFBF8940000000
  %3571 = fmul fast float %3570, %3558
  %3572 = fadd fast float %3571, 0x41CFBF8940000000
  %3573 = fptosi float %3572 to i32
  %3574 = bitcast i32 %3573 to float
  %3575 = fmul fast float %3567, %3557
  %3576 = fmul fast float %3574, %3557
  %3577 = fsub fast float %3560, %3575
  %3578 = fadd fast float %3576, %3560
  %3579 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3580 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3581 = fsub fast float %3555, %3579
  %3582 = fsub fast float %3580, %3579
  %3583 = bitcast float %3582 to i32
  %3584 = sub nsw i32 2129859010, %3583
  %3585 = bitcast i32 %3584 to float
  %3586 = fmul fast float %3585, %3581
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  %3588 = fcmp fast olt float %3587, 0x3F70101020000000
  br i1 %3588, label %3727, label %3589

; <label>:3589                                    ; preds = %3551, %3454
  %3590 = phi float [ %3587, %3551 ], [ %3448, %3454 ]
  %3591 = fmul fast float %3590, %3457
  %3592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.i32 %3592, 1
  %3594 = extractvalue %dx.types.CBufRet.i32 %3592, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3596, %dx.types.Handle %83, float %3546, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3509, float %3510, float undef, float %3513, float %3514, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3602 = and i32 %3593, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = lshr i32 %3593, 8
  %3605 = and i32 %3604, 255
  %3606 = uitofp i32 %3605 to float
  %3607 = fmul fast float %3601, %3603
  %3608 = fadd fast float %3607, %3606
  %3609 = fmul fast float %3608, 0x3F70101000000000
  %3610 = fadd fast float %3609, 0xBFB99999A0000000
  %3611 = call float @dx.op.unary.f32(i32 7, float %3610)  ; Saturate(value)
  %3612 = fmul fast float %3611, 0x3FF1C71C80000000
  %3613 = call float @dx.op.binary.f32(i32 36, float %3609, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3614 = fsub fast float 1.000000e+00, %3612
  %3615 = call float @dx.op.unary.f32(i32 7, float %3614)  ; Saturate(value)
  %3616 = fmul fast float %3615, %3598
  %3617 = fmul fast float %3615, %3599
  %3618 = fmul fast float %3615, %3600
  %3619 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  %3620 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3621 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3622 = fmul fast float %3612, %3598
  %3623 = fmul fast float %3612, %3599
  %3624 = fmul fast float %3612, %3600
  %3625 = fadd fast float %3622, %3613
  %3626 = fadd fast float %3623, %3613
  %3627 = fadd fast float %3624, %3613
  %3628 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3632 = extractvalue %dx.types.CBufRet.i32 %3631, 3
  %3633 = extractvalue %dx.types.CBufRet.i32 %3631, 2
  %3634 = add i32 %3633, 0
  %3635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3635, %dx.types.Handle %83, float %3546, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3509, float %3510, float undef, float %3513, float %3514, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = and i32 %3632, 255
  %3642 = uitofp i32 %3641 to float
  %3643 = lshr i32 %3632, 8
  %3644 = and i32 %3643, 255
  %3645 = uitofp i32 %3644 to float
  %3646 = lshr i32 %3632, 16
  %3647 = and i32 %3646, 255
  %3648 = uitofp i32 %3647 to float
  %3649 = fmul fast float %3648, 0x3F70101000000000
  %3650 = fmul fast float %3637, %3642
  %3651 = fadd fast float %3650, %3645
  %3652 = fmul fast float %3651, 0x3F70101000000000
  %3653 = fadd fast float %3638, -5.000000e-01
  %3654 = fadd fast float %3640, -5.000000e-01
  %3655 = fmul fast float %3653, %3649
  %3656 = fmul fast float %3654, %3649
  %3657 = fadd fast float %3655, 5.000000e-01
  %3658 = fadd fast float %3656, 5.000000e-01
  %3659 = fmul fast float %3657, 2.000000e+00
  %3660 = fadd fast float %3659, -1.000000e+00
  %3661 = fmul fast float %3658, 2.000000e+00
  %3662 = fadd fast float %3661, -1.000000e+00
  %3663 = fadd fast float %3660, %3662
  %3664 = fmul fast float %3663, 5.000000e-01
  %3665 = fsub fast float %3660, %3662
  %3666 = fmul fast float %3665, 5.000000e-01
  %3667 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = call float @dx.op.unary.f32(i32 6, float %3666)  ; FAbs(value)
  %3670 = fsub fast float %3668, %3669
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3666, float %3670, float %3664, float %3666, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 25, float %3671)  ; Rsqrt(value)
  %3673 = fmul fast float %3664, %3672
  %3674 = fmul fast float %3666, %3672
  %3675 = select i1 %3502, i32 %3492, i32 %3493
  %3676 = select i1 %3500, i32 %3491, i32 %3675
  %3677 = sitofp i32 %3676 to float
  %3678 = fmul fast float %3670, %3677
  %3679 = fmul fast float %3678, %3672
  %3680 = select i1 %3502, float %3679, float %3674
  %3681 = select i1 %3502, float %3674, float %3679
  %3682 = select i1 %3500, float %3679, float %3673
  %3683 = select i1 %3500, float %3674, float %3680
  %3684 = select i1 %3500, float %3673, float %3681
  %3685 = fsub fast float %3619, %3052
  %3686 = fsub fast float %3620, %3053
  %3687 = fsub fast float %3621, %3054
  %3688 = fmul fast float %3685, %3591
  %3689 = fmul fast float %3686, %3591
  %3690 = fmul fast float %3687, %3591
  %3691 = fadd fast float %3688, %3052
  %3692 = fadd fast float %3689, %3053
  %3693 = fadd fast float %3690, %3054
  %3694 = fsub fast float %3628, %3037
  %3695 = fsub fast float %3629, %3038
  %3696 = fsub fast float %3630, %3039
  %3697 = fmul fast float %3694, %3591
  %3698 = fmul fast float %3695, %3591
  %3699 = fmul fast float %3696, %3591
  %3700 = fadd fast float %3697, %3037
  %3701 = fadd fast float %3698, %3038
  %3702 = fadd fast float %3699, %3039
  %3703 = fadd fast float %3682, %3016
  %3704 = fadd fast float %3683, %3017
  %3705 = fadd fast float %3684, %3018
  %3706 = call float @dx.op.dot3.f32(i32 55, float %3703, float %3704, float %3705, float %3703, float %3704, float %3705)  ; Dot3(ax,ay,az,bx,by,bz)
  %3707 = call float @dx.op.unary.f32(i32 25, float %3706)  ; Rsqrt(value)
  %3708 = fmul fast float %3703, %3707
  %3709 = fmul fast float %3704, %3707
  %3710 = fmul fast float %3705, %3707
  %3711 = fsub fast float %3708, %3016
  %3712 = fsub fast float %3709, %3017
  %3713 = fsub fast float %3710, %3018
  %3714 = fmul fast float %3711, %3591
  %3715 = fmul fast float %3712, %3591
  %3716 = fmul fast float %3713, %3591
  %3717 = fadd fast float %3714, %3016
  %3718 = fadd fast float %3715, %3017
  %3719 = fadd fast float %3716, %3018
  %3720 = call float @dx.op.binary.f32(i32 36, float %2853, float %3639)  ; FMin(a,b)
  %3721 = fsub fast float %3720, %2853
  %3722 = fmul fast float %3721, %3591
  %3723 = fadd fast float %3722, %2853
  %3724 = fsub fast float %3652, %3040
  %3725 = fmul fast float %3724, %3591
  %3726 = fadd fast float %3725, %3040
  br label %3727

; <label>:3727                                    ; preds = %3589, %3551, %3453
  %3728 = phi float [ %3700, %3589 ], [ %3037, %3551 ], [ %3037, %3453 ]
  %3729 = phi float [ %3701, %3589 ], [ %3038, %3551 ], [ %3038, %3453 ]
  %3730 = phi float [ %3702, %3589 ], [ %3039, %3551 ], [ %3039, %3453 ]
  %3731 = phi float [ %3691, %3589 ], [ %3052, %3551 ], [ %3052, %3453 ]
  %3732 = phi float [ %3692, %3589 ], [ %3053, %3551 ], [ %3053, %3453 ]
  %3733 = phi float [ %3693, %3589 ], [ %3054, %3551 ], [ %3054, %3453 ]
  %3734 = phi float [ %3717, %3589 ], [ %3016, %3551 ], [ %3016, %3453 ]
  %3735 = phi float [ %3718, %3589 ], [ %3017, %3551 ], [ %3017, %3453 ]
  %3736 = phi float [ %3719, %3589 ], [ %3018, %3551 ], [ %3018, %3453 ]
  %3737 = phi float [ %3726, %3589 ], [ %3040, %3551 ], [ %3040, %3453 ]
  %3738 = phi float [ %3723, %3589 ], [ %2853, %3551 ], [ %2853, %3453 ]
  br i1 %3451, label %3739, label %4012

; <label>:3739                                    ; preds = %3727
  %3740 = call float @dx.op.unary.f32(i32 23, float %3738)  ; Log(value)
  %3741 = fmul fast float %3740, 4.000000e+00
  %3742 = call float @dx.op.unary.f32(i32 21, float %3741)  ; Exp(value)
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = fmul fast float %3744, %45
  %3746 = fmul fast float %3744, %46
  %3747 = fmul fast float %3744, %47
  %3748 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %3749 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %3750 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %3751 = call float @dx.op.unary.f32(i32 23, float %3748)  ; Log(value)
  %3752 = call float @dx.op.unary.f32(i32 23, float %3749)  ; Log(value)
  %3753 = call float @dx.op.unary.f32(i32 23, float %3750)  ; Log(value)
  %3754 = fmul fast float %3751, 4.000000e+00
  %3755 = fmul fast float %3752, 4.000000e+00
  %3756 = fmul fast float %3753, 4.000000e+00
  %3757 = call float @dx.op.unary.f32(i32 21, float %3754)  ; Exp(value)
  %3758 = call float @dx.op.unary.f32(i32 21, float %3755)  ; Exp(value)
  %3759 = call float @dx.op.unary.f32(i32 21, float %3756)  ; Exp(value)
  %3760 = fadd fast float %3758, %3757
  %3761 = fadd fast float %3760, %3759
  %3762 = fdiv fast float 1.000000e+00, %3761
  %3763 = fmul fast float %3762, %3757
  %3764 = fcmp fast ogt float %54, 0.000000e+00
  %3765 = fcmp fast ogt float %55, 0.000000e+00
  %3766 = fcmp fast ogt float %56, 0.000000e+00
  %3767 = fcmp fast olt float %54, 0.000000e+00
  %3768 = fcmp fast olt float %55, 0.000000e+00
  %3769 = fcmp fast olt float %56, 0.000000e+00
  %3770 = zext i1 %3764 to i32
  %3771 = zext i1 %3765 to i32
  %3772 = zext i1 %3766 to i32
  %3773 = zext i1 %3767 to i32
  %3774 = zext i1 %3768 to i32
  %3775 = zext i1 %3769 to i32
  %3776 = sub nsw i32 %3770, %3773
  %3777 = sub nsw i32 %3771, %3774
  %3778 = sub nsw i32 %3772, %3775
  %3779 = call float @dx.op.unary.f32(i32 83, float %3745)  ; DerivCoarseX(value)
  %3780 = call float @dx.op.unary.f32(i32 83, float %3746)  ; DerivCoarseX(value)
  %3781 = call float @dx.op.unary.f32(i32 83, float %3747)  ; DerivCoarseX(value)
  %3782 = call float @dx.op.unary.f32(i32 84, float %3745)  ; DerivCoarseY(value)
  %3783 = call float @dx.op.unary.f32(i32 84, float %3746)  ; DerivCoarseY(value)
  %3784 = call float @dx.op.unary.f32(i32 84, float %3747)  ; DerivCoarseY(value)
  %3785 = fcmp fast ole float %239, %3763
  %3786 = fmul fast float %3762, %3760
  %3787 = fcmp fast ole float %239, %3786
  %3788 = select i1 %3787, float %3747, float %3745
  %3789 = select i1 %3787, float %3745, float %3746
  %3790 = select i1 %3785, float %3746, float %3788
  %3791 = select i1 %3785, float %3747, float %3789
  %3792 = select i1 %3787, float %3781, float %3779
  %3793 = select i1 %3787, float %3779, float %3780
  %3794 = select i1 %3785, float %3780, float %3792
  %3795 = select i1 %3785, float %3781, float %3793
  %3796 = select i1 %3787, float %3784, float %3782
  %3797 = select i1 %3787, float %3782, float %3783
  %3798 = select i1 %3785, float %3783, float %3796
  %3799 = select i1 %3785, float %3784, float %3797
  %3800 = call float @dx.op.unary.f32(i32 27, float %3790)  ; Round_ni(value)
  %3801 = call float @dx.op.unary.f32(i32 27, float %3791)  ; Round_ni(value)
  %3802 = fptosi float %3800 to i32
  %3803 = fptosi float %3801 to i32
  %3804 = xor i32 %3803, %3802
  %3805 = sitofp i32 %3804 to float
  %3806 = fptosi float %3805 to i32
  %3807 = sitofp i32 %3806 to float
  %3808 = fmul fast float %3807, 0x3FE3C6EF40000000
  %3809 = frem fast float %3800, 2.560000e+02
  %3810 = frem fast float %3801, 2.560000e+02
  %3811 = fptoui float %3809 to i32
  %3812 = fptoui float %3810 to i32
  %3813 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %3811, i32 %3812, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = fadd fast float %3814, %3808
  %3818 = fadd fast float %3815, %3808
  %3819 = fadd fast float %3816, %3808
  %3820 = call float @dx.op.unary.f32(i32 22, float %3817)  ; Frc(value)
  %3821 = call float @dx.op.unary.f32(i32 22, float %3818)  ; Frc(value)
  %3822 = call float @dx.op.unary.f32(i32 22, float %3819)  ; Frc(value)
  %3823 = fmul fast float %3822, 0x401921FB60000000
  %3824 = call float @dx.op.unary.f32(i32 13, float %3823)  ; Sin(value)
  %3825 = call float @dx.op.unary.f32(i32 12, float %3823)  ; Cos(value)
  %3826 = fsub fast float -0.000000e+00, %3825
  %3827 = fmul fast float %3825, %3790
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3791, float %3827)  ; FMad(a,b,c)
  %3829 = fmul fast float %3824, %3790
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3791, float %3829)  ; FMad(a,b,c)
  %3831 = fadd fast float %3828, %3820
  %3832 = fadd fast float %3830, %3821
  %3833 = extractvalue %dx.types.CBufRet.f32 %3743, 3
  %3834 = bitcast float %3833 to i32
  %3835 = icmp eq i32 %3834, 0
  br i1 %3835, label %3874, label %3836

; <label>:3836                                    ; preds = %3739
  %3837 = add i32 %3834, 0
  %3838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3838, %dx.types.Handle %84, float %3831, float %3832, float undef, float undef, i32 0, i32 0, i32 undef, float %3794, float %3795, float undef, float %3798, float %3799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3841, 2
  %3844 = fsub fast float 1.000000e+00, %3449
  %3845 = call float @dx.op.binary.f32(i32 35, float %3844, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3846 = bitcast float %3449 to i32
  %3847 = sitofp i32 %3846 to float
  %3848 = fadd fast float %3847, 0xC1CFBF8940000000
  %3849 = fmul fast float %3843, %3848
  %3850 = fadd fast float %3849, 0x41CFBF8940000000
  %3851 = fptosi float %3850 to i32
  %3852 = bitcast i32 %3851 to float
  %3853 = bitcast float %3845 to i32
  %3854 = sitofp i32 %3853 to float
  %3855 = fadd fast float %3854, 0xC1CFBF8940000000
  %3856 = fmul fast float %3855, %3843
  %3857 = fadd fast float %3856, 0x41CFBF8940000000
  %3858 = fptosi float %3857 to i32
  %3859 = bitcast i32 %3858 to float
  %3860 = fmul fast float %3852, %3842
  %3861 = fmul fast float %3859, %3842
  %3862 = fsub fast float %3845, %3860
  %3863 = fadd fast float %3861, %3845
  %3864 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3866 = fsub fast float %3840, %3864
  %3867 = fsub fast float %3865, %3864
  %3868 = bitcast float %3867 to i32
  %3869 = sub nsw i32 2129859010, %3868
  %3870 = bitcast i32 %3869 to float
  %3871 = fmul fast float %3870, %3866
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = fcmp fast olt float %3872, 0x3F70101020000000
  br i1 %3873, label %4012, label %3874

; <label>:3874                                    ; preds = %3836, %3739
  %3875 = phi float [ %3872, %3836 ], [ %3449, %3739 ]
  %3876 = fmul fast float %3875, %3742
  %3877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.i32 %3877, 1
  %3879 = extractvalue %dx.types.CBufRet.i32 %3877, 0
  %3880 = add i32 %3879, 0
  %3881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3882 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3881, %dx.types.Handle %83, float %3831, float %3832, float undef, float undef, i32 0, i32 0, i32 undef, float %3794, float %3795, float undef, float %3798, float %3799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = extractvalue %dx.types.ResRet.f32 %3882, 3
  %3887 = and i32 %3878, 255
  %3888 = uitofp i32 %3887 to float
  %3889 = lshr i32 %3878, 8
  %3890 = and i32 %3889, 255
  %3891 = uitofp i32 %3890 to float
  %3892 = fmul fast float %3886, %3888
  %3893 = fadd fast float %3892, %3891
  %3894 = fmul fast float %3893, 0x3F70101000000000
  %3895 = fadd fast float %3894, 0xBFB99999A0000000
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3896, 0x3FF1C71C80000000
  %3898 = call float @dx.op.binary.f32(i32 36, float %3894, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3899 = fsub fast float 1.000000e+00, %3897
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fmul fast float %3900, %3883
  %3902 = fmul fast float %3900, %3884
  %3903 = fmul fast float %3900, %3885
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3907 = fmul fast float %3897, %3883
  %3908 = fmul fast float %3897, %3884
  %3909 = fmul fast float %3897, %3885
  %3910 = fadd fast float %3907, %3898
  %3911 = fadd fast float %3908, %3898
  %3912 = fadd fast float %3909, %3898
  %3913 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.i32 %3916, 3
  %3918 = extractvalue %dx.types.CBufRet.i32 %3916, 2
  %3919 = add i32 %3918, 0
  %3920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3921 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3920, %dx.types.Handle %83, float %3831, float %3832, float undef, float undef, i32 0, i32 0, i32 undef, float %3794, float %3795, float undef, float %3798, float %3799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = and i32 %3917, 255
  %3927 = uitofp i32 %3926 to float
  %3928 = lshr i32 %3917, 8
  %3929 = and i32 %3928, 255
  %3930 = uitofp i32 %3929 to float
  %3931 = lshr i32 %3917, 16
  %3932 = and i32 %3931, 255
  %3933 = uitofp i32 %3932 to float
  %3934 = fmul fast float %3933, 0x3F70101000000000
  %3935 = fmul fast float %3922, %3927
  %3936 = fadd fast float %3935, %3930
  %3937 = fmul fast float %3936, 0x3F70101000000000
  %3938 = fadd fast float %3923, -5.000000e-01
  %3939 = fadd fast float %3925, -5.000000e-01
  %3940 = fmul fast float %3938, %3934
  %3941 = fmul fast float %3939, %3934
  %3942 = fadd fast float %3940, 5.000000e-01
  %3943 = fadd fast float %3941, 5.000000e-01
  %3944 = fmul fast float %3942, 2.000000e+00
  %3945 = fadd fast float %3944, -1.000000e+00
  %3946 = fmul fast float %3943, 2.000000e+00
  %3947 = fadd fast float %3946, -1.000000e+00
  %3948 = fadd fast float %3945, %3947
  %3949 = fmul fast float %3948, 5.000000e-01
  %3950 = fsub fast float %3945, %3947
  %3951 = fmul fast float %3950, 5.000000e-01
  %3952 = call float @dx.op.unary.f32(i32 6, float %3949)  ; FAbs(value)
  %3953 = fsub fast float 1.000000e+00, %3952
  %3954 = call float @dx.op.unary.f32(i32 6, float %3951)  ; FAbs(value)
  %3955 = fsub fast float %3953, %3954
  %3956 = call float @dx.op.dot3.f32(i32 55, float %3949, float %3951, float %3955, float %3949, float %3951, float %3955)  ; Dot3(ax,ay,az,bx,by,bz)
  %3957 = call float @dx.op.unary.f32(i32 25, float %3956)  ; Rsqrt(value)
  %3958 = fmul fast float %3949, %3957
  %3959 = fmul fast float %3951, %3957
  %3960 = select i1 %3787, i32 %3777, i32 %3778
  %3961 = select i1 %3785, i32 %3776, i32 %3960
  %3962 = sitofp i32 %3961 to float
  %3963 = fmul fast float %3955, %3962
  %3964 = fmul fast float %3963, %3957
  %3965 = select i1 %3787, float %3964, float %3959
  %3966 = select i1 %3787, float %3959, float %3964
  %3967 = select i1 %3785, float %3964, float %3958
  %3968 = select i1 %3785, float %3959, float %3965
  %3969 = select i1 %3785, float %3958, float %3966
  %3970 = fsub fast float %3904, %3731
  %3971 = fsub fast float %3905, %3732
  %3972 = fsub fast float %3906, %3733
  %3973 = fmul fast float %3970, %3876
  %3974 = fmul fast float %3971, %3876
  %3975 = fmul fast float %3972, %3876
  %3976 = fadd fast float %3973, %3731
  %3977 = fadd fast float %3974, %3732
  %3978 = fadd fast float %3975, %3733
  %3979 = fsub fast float %3913, %3728
  %3980 = fsub fast float %3914, %3729
  %3981 = fsub fast float %3915, %3730
  %3982 = fmul fast float %3979, %3876
  %3983 = fmul fast float %3980, %3876
  %3984 = fmul fast float %3981, %3876
  %3985 = fadd fast float %3982, %3728
  %3986 = fadd fast float %3983, %3729
  %3987 = fadd fast float %3984, %3730
  %3988 = fadd fast float %3967, %3734
  %3989 = fadd fast float %3968, %3735
  %3990 = fadd fast float %3969, %3736
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %3990, float %3988, float %3989, float %3990)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = call float @dx.op.unary.f32(i32 25, float %3991)  ; Rsqrt(value)
  %3993 = fmul fast float %3988, %3992
  %3994 = fmul fast float %3989, %3992
  %3995 = fmul fast float %3990, %3992
  %3996 = fsub fast float %3993, %3734
  %3997 = fsub fast float %3994, %3735
  %3998 = fsub fast float %3995, %3736
  %3999 = fmul fast float %3996, %3876
  %4000 = fmul fast float %3997, %3876
  %4001 = fmul fast float %3998, %3876
  %4002 = fadd fast float %3999, %3734
  %4003 = fadd fast float %4000, %3735
  %4004 = fadd fast float %4001, %3736
  %4005 = call float @dx.op.binary.f32(i32 36, float %3738, float %3924)  ; FMin(a,b)
  %4006 = fsub fast float %4005, %3738
  %4007 = fmul fast float %4006, %3876
  %4008 = fadd fast float %4007, %3738
  %4009 = fsub fast float %3937, %3737
  %4010 = fmul fast float %4009, %3876
  %4011 = fadd fast float %4010, %3737
  br label %4012

; <label>:4012                                    ; preds = %3874, %3836, %3727, %3443
  %4013 = phi float [ %3985, %3874 ], [ %3728, %3836 ], [ %3728, %3727 ], [ %3037, %3443 ]
  %4014 = phi float [ %3986, %3874 ], [ %3729, %3836 ], [ %3729, %3727 ], [ %3038, %3443 ]
  %4015 = phi float [ %3987, %3874 ], [ %3730, %3836 ], [ %3730, %3727 ], [ %3039, %3443 ]
  %4016 = phi float [ %3976, %3874 ], [ %3731, %3836 ], [ %3731, %3727 ], [ %3052, %3443 ]
  %4017 = phi float [ %3977, %3874 ], [ %3732, %3836 ], [ %3732, %3727 ], [ %3053, %3443 ]
  %4018 = phi float [ %3978, %3874 ], [ %3733, %3836 ], [ %3733, %3727 ], [ %3054, %3443 ]
  %4019 = phi float [ %4002, %3874 ], [ %3734, %3836 ], [ %3734, %3727 ], [ %3016, %3443 ]
  %4020 = phi float [ %4003, %3874 ], [ %3735, %3836 ], [ %3735, %3727 ], [ %3017, %3443 ]
  %4021 = phi float [ %4004, %3874 ], [ %3736, %3836 ], [ %3736, %3727 ], [ %3018, %3443 ]
  %4022 = phi float [ %4011, %3874 ], [ %3737, %3836 ], [ %3737, %3727 ], [ %3040, %3443 ]
  %4023 = phi float [ %4008, %3874 ], [ %3738, %3836 ], [ %3738, %3727 ], [ %2853, %3443 ]
  %4024 = fcmp fast une float %3447, 0.000000e+00
  %4025 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %174, float %175, float %176)  ; Dot3(ax,ay,az,bx,by,bz)
  %4026 = call float @dx.op.unary.f32(i32 25, float %4025)  ; Rsqrt(value)
  br i1 %4024, label %4034, label %4027

; <label>:4027                                    ; preds = %4012
  %4028 = fmul fast float %4026, %174
  %4029 = fmul fast float %4026, %175
  %4030 = fmul fast float %4026, %176
  %4031 = fsub fast float -0.000000e+00, %4028
  %4032 = fsub fast float -0.000000e+00, %4029
  %4033 = fsub fast float -0.000000e+00, %4030
  br label %4201

; <label>:4034                                    ; preds = %4012
  %4035 = fmul fast float %174, %4026
  %4036 = fsub fast float -0.000000e+00, %4035
  %4037 = fmul fast float %175, %4026
  %4038 = fsub fast float -0.000000e+00, %4037
  %4039 = fmul fast float %176, %4026
  %4040 = fsub fast float -0.000000e+00, %4039
  %4041 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4038, float %4040, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4042 = fmul fast float %3447, 2.500000e+00
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %3447, 0x4013FFFFE0000000
  %4045 = fadd fast float %4044, 0xBFFFFFFFE0000000
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = fmul fast float %3447, 0x4004000020000000
  %4048 = fadd fast float %4047, 0xBFF8000040000000
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = fmul fast float %3019, 1.000000e+01
  %4051 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4052 = fmul fast float %4051, 2.000000e+00
  %4053 = fsub fast float 3.000000e+00, %4052
  %4054 = fmul fast float %4051, %4051
  %4055 = fmul fast float %4054, %4053
  %4056 = fsub fast float 1.000000e+00, %4055
  %4057 = fsub fast float 0x3FE3333340000000, %4022
  %4058 = fmul fast float %4057, 0x400AAAAAA0000000
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %4056, %4059
  %4061 = fmul fast float %4016, 0x3FEA2B8620000000
  %4062 = fmul fast float %4017, 0x3FEA2B8620000000
  %4063 = fmul fast float %4018, 0x3FEA2B8620000000
  %4064 = fadd fast float %4061, 0x3FC81DFBA0000000
  %4065 = fmul fast float %4064, %4016
  %4066 = fadd fast float %4065, 0x3F910E6020000000
  %4067 = fadd fast float %4062, 0x3FC81DFBA0000000
  %4068 = fmul fast float %4067, %4017
  %4069 = fadd fast float %4068, 0x3F910E6020000000
  %4070 = fadd fast float %4063, 0x3FC81DFBA0000000
  %4071 = fmul fast float %4070, %4018
  %4072 = fadd fast float %4071, 0x3F910E6020000000
  %4073 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4075 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4076 = fsub fast float %4073, %4016
  %4077 = fsub fast float %4074, %4017
  %4078 = fsub fast float %4075, %4018
  %4079 = fmul fast float %4076, %4043
  %4080 = fmul fast float %4079, %4060
  %4081 = fmul fast float %4077, %4043
  %4082 = fmul fast float %4081, %4060
  %4083 = fmul fast float %4078, %4043
  %4084 = fmul fast float %4083, %4060
  %4085 = fadd fast float %4080, %4016
  %4086 = fadd fast float %4082, %4017
  %4087 = fadd fast float %4084, %4018
  %4088 = fmul fast float %4023, %4023
  %4089 = fmul fast float %4088, %4088
  %4090 = fadd fast float %4046, 1.000000e+00
  %4091 = fsub fast float %4090, %4060
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = fsub fast float 1.000000e+00, %4089
  %4096 = call float @dx.op.binary.f32(i32 36, float %4092, float %4095)  ; FMin(a,b)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4096, float %4097)  ; FMax(a,b)
  %4099 = fadd fast float %4094, 0xBFE4CCCCC0000000
  %4100 = fmul fast float %4099, 0x4006DB6DA0000000
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %4101, 2.000000e+00
  %4103 = fsub fast float 3.000000e+00, %4102
  %4104 = bitcast float %4013 to i32
  %4105 = ashr i32 %4104, 1
  %4106 = add nsw i32 %4105, 532487669
  %4107 = bitcast i32 %4106 to float
  %4108 = fsub fast float 1.000000e+00, %4107
  %4109 = bitcast float %4108 to i32
  %4110 = sub nsw i32 2129859010, %4109
  %4111 = bitcast i32 %4110 to float
  %4112 = fmul fast float %4111, 2.000000e+00
  %4113 = bitcast float %4014 to i32
  %4114 = ashr i32 %4113, 1
  %4115 = add nsw i32 %4114, 532487669
  %4116 = bitcast i32 %4115 to float
  %4117 = fsub fast float 1.000000e+00, %4116
  %4118 = bitcast float %4117 to i32
  %4119 = sub nsw i32 2129859010, %4118
  %4120 = bitcast i32 %4119 to float
  %4121 = fmul fast float %4120, 2.000000e+00
  %4122 = bitcast float %4015 to i32
  %4123 = ashr i32 %4122, 1
  %4124 = add nsw i32 %4123, 532487669
  %4125 = bitcast i32 %4124 to float
  %4126 = fsub fast float 1.000000e+00, %4125
  %4127 = bitcast float %4126 to i32
  %4128 = sub nsw i32 2129859010, %4127
  %4129 = bitcast i32 %4128 to float
  %4130 = fmul fast float %4129, 2.000000e+00
  %4131 = fsub fast float 0x4002A9FBE0000000, %4112
  %4132 = fadd fast float %4112, 0x3FD54FDF00000000
  %4133 = bitcast float %4132 to i32
  %4134 = sub nsw i32 2129859010, %4133
  %4135 = bitcast i32 %4134 to float
  %4136 = fmul fast float %4135, %4131
  %4137 = fmul fast float %4136, %4136
  %4138 = fsub fast float 0x4002A9FBE0000000, %4121
  %4139 = fadd fast float %4121, 0x3FD54FDF00000000
  %4140 = bitcast float %4139 to i32
  %4141 = sub nsw i32 2129859010, %4140
  %4142 = bitcast i32 %4141 to float
  %4143 = fmul fast float %4142, %4138
  %4144 = fmul fast float %4143, %4143
  %4145 = fsub fast float 0x4002A9FBE0000000, %4130
  %4146 = fadd fast float %4130, 0x3FD54FDF00000000
  %4147 = bitcast float %4146 to i32
  %4148 = sub nsw i32 2129859010, %4147
  %4149 = bitcast i32 %4148 to float
  %4150 = fmul fast float %4149, %4145
  %4151 = fmul fast float %4150, %4150
  %4152 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4137)  ; FMax(a,b)
  %4153 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4144)  ; FMax(a,b)
  %4154 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4151)  ; FMax(a,b)
  %4155 = fsub fast float 1.000000e+00, %4041
  %4156 = fadd fast float %4155, %4056
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fsub fast float 1.000000e+00, %3428
  %4159 = fmul fast float %4098, %4158
  %4160 = fmul fast float %4101, %4101
  %4161 = fmul fast float %4160, %4159
  %4162 = fmul fast float %4161, %4103
  %4163 = fmul fast float %4158, 0xBFE99999A0000000
  %4164 = fmul fast float %4163, %4043
  %4165 = fmul fast float %4164, %4060
  %4166 = fadd fast float %4165, 1.000000e+00
  %4167 = fadd fast float %4022, -1.000000e+00
  %4168 = fmul fast float %4166, %4167
  %4169 = fadd fast float %4168, 1.000000e+00
  %4170 = fsub fast float %4152, %4013
  %4171 = fsub fast float %4153, %4014
  %4172 = fsub fast float %4154, %4015
  %4173 = fmul fast float %4162, %4170
  %4174 = fmul fast float %4162, %4171
  %4175 = fmul fast float %4162, %4172
  %4176 = fadd fast float %4173, %4013
  %4177 = fadd fast float %4174, %4014
  %4178 = fadd fast float %4175, %4015
  %4179 = fsub fast float %94, %4019
  %4180 = fsub fast float %95, %4020
  %4181 = fsub fast float %96, %4021
  %4182 = fmul fast float %4162, %4179
  %4183 = fmul fast float %4162, %4180
  %4184 = fmul fast float %4162, %4181
  %4185 = fadd fast float %4182, %4019
  %4186 = fadd fast float %4183, %4020
  %4187 = fadd fast float %4184, %4021
  %4188 = fmul fast float %4162, %4157
  %4189 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4190 = fsub fast float 1.000000e+00, %4189
  %4191 = fmul fast float %4188, %4190
  %4192 = fadd fast float %4191, %4189
  %4193 = fsub fast float 1.000000e+00, %4023
  %4194 = fmul fast float %4162, %4193
  %4195 = fadd fast float %4194, %4023
  %4196 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %4185, float %4186, float %4187)  ; Dot3(ax,ay,az,bx,by,bz)
  %4197 = call float @dx.op.unary.f32(i32 25, float %4196)  ; Rsqrt(value)
  %4198 = fmul fast float %4185, %4197
  %4199 = fmul fast float %4186, %4197
  %4200 = fmul fast float %4187, %4197
  br label %4201

; <label>:4201                                    ; preds = %4034, %4027
  %4202 = phi float [ %4033, %4027 ], [ %4040, %4034 ]
  %4203 = phi float [ %4032, %4027 ], [ %4038, %4034 ]
  %4204 = phi float [ %4031, %4027 ], [ %4036, %4034 ]
  %4205 = phi float [ %4030, %4027 ], [ %4039, %4034 ]
  %4206 = phi float [ %4029, %4027 ], [ %4037, %4034 ]
  %4207 = phi float [ %4028, %4027 ], [ %4035, %4034 ]
  %4208 = phi float [ %4013, %4027 ], [ %4176, %4034 ]
  %4209 = phi float [ %4014, %4027 ], [ %4177, %4034 ]
  %4210 = phi float [ %4015, %4027 ], [ %4178, %4034 ]
  %4211 = phi float [ %4016, %4027 ], [ %4085, %4034 ]
  %4212 = phi float [ %4017, %4027 ], [ %4086, %4034 ]
  %4213 = phi float [ %4018, %4027 ], [ %4087, %4034 ]
  %4214 = phi float [ %4019, %4027 ], [ %4198, %4034 ]
  %4215 = phi float [ %4020, %4027 ], [ %4199, %4034 ]
  %4216 = phi float [ %4021, %4027 ], [ %4200, %4034 ]
  %4217 = phi float [ %4022, %4027 ], [ %4192, %4034 ]
  %4218 = phi float [ %4023, %4027 ], [ %4195, %4034 ]
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4222 = fmul fast float %4220, %87
  %4223 = fmul fast float %4221, %88
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %4222, float %4223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = fmul fast float %4228, %4226
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fadd fast float %4230, -1.000000e+00
  %4232 = fmul fast float %4231, %4225
  %4233 = fadd fast float %4232, 1.000000e+00
  %4234 = select i1 %226, float 0.000000e+00, float %4210
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %4204, float %4203, float %4202)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4206, float %4205, float %4214, float %4215, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = fmul fast float %4237, 2.000000e+00
  %4239 = fmul fast float %4238, %4214
  %4240 = fmul fast float %4238, %4215
  %4241 = fmul fast float %4238, %4216
  %4242 = fsub fast float %4207, %4239
  %4243 = fsub fast float %4206, %4240
  %4244 = fsub fast float %4205, %4241
  %4245 = call float @dx.op.binary.f32(i32 36, float %4218, float %4233)  ; FMin(a,b)
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = bitcast float %4246 to i32
  %4248 = ashr i32 %4247, 1
  %4249 = add nsw i32 %4248, 532487669
  %4250 = bitcast i32 %4249 to float
  %4251 = fsub fast float 1.000000e+00, %4217
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float 0x3F847AE140000000)  ; FMax(a,b)
  %4253 = fmul fast float %4252, %4252
  %4254 = fmul fast float %4253, %4253
  %4255 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %4250, float %4254, float %4255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = fsub fast float 1.000000e+00, %4218
  %4259 = bitcast float %4258 to i32
  %4260 = sub nsw i32 2129859010, %4259
  %4261 = fsub fast float 1.000000e+00, %64
  %4262 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4262, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4264 = fdiv fast float %4261, %4263
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = fmul fast float %4266, 5.000000e-01
  %4268 = fadd fast float %4267, 5.000000e-01
  %4269 = fmul fast float %4268, %64
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fmul fast float %4271, %4264
  %4273 = fadd fast float %4269, %4272
  %4274 = fsub fast float 5.000000e-01, %4267
  %4275 = fmul fast float %4274, %4211
  %4276 = fmul fast float %4274, %4212
  %4277 = fmul fast float %4274, %4213
  %4278 = fadd fast float %4273, %4275
  %4279 = fadd fast float %4273, %4276
  %4280 = fadd fast float %4273, %4277
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4242, float %4243, float %4244, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4282, 5.000000e-01
  %4284 = fadd fast float %4283, 5.000000e-01
  %4285 = fmul fast float %4284, %64
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4242, float %4243, float %4244, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fmul fast float %4287, %4264
  %4289 = fadd fast float %4285, %4288
  %4290 = fsub fast float 5.000000e-01, %4283
  %4291 = fmul fast float %4290, %4211
  %4292 = fmul fast float %4290, %4212
  %4293 = fmul fast float %4290, %4213
  %4294 = fadd fast float %4289, %4291
  %4295 = fadd fast float %4289, %4292
  %4296 = fadd fast float %4289, %4293
  %4297 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = call float @dx.op.binary.f32(i32 36, float %4211, float %4299)  ; FMin(a,b)
  %4301 = fmul fast float %4300, %4246
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = bitcast float %4302 to i32
  %4304 = sub nsw i32 2129859010, %4303
  %4305 = bitcast i32 %4304 to float
  %4306 = call float @dx.op.binary.f32(i32 36, float %4212, float %4299)  ; FMin(a,b)
  %4307 = fmul fast float %4306, %4246
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = bitcast float %4308 to i32
  %4310 = sub nsw i32 2129859010, %4309
  %4311 = bitcast i32 %4310 to float
  %4312 = call float @dx.op.binary.f32(i32 36, float %4213, float %4299)  ; FMin(a,b)
  %4313 = fmul fast float %4312, %4246
  %4314 = fsub fast float 1.000000e+00, %4313
  %4315 = bitcast float %4314 to i32
  %4316 = sub nsw i32 2129859010, %4315
  %4317 = bitcast i32 %4316 to float
  %4318 = fmul fast float %4245, %65
  %4319 = fmul fast float %4318, %4278
  %4320 = fmul fast float %4319, %4305
  %4321 = fmul fast float %4245, %66
  %4322 = fmul fast float %4321, %4279
  %4323 = fmul fast float %4322, %4311
  %4324 = fmul fast float %4245, %67
  %4325 = fmul fast float %4324, %4280
  %4326 = fmul fast float %4325, %4317
  %4327 = call float @dx.op.binary.f32(i32 36, float %4208, float %4299)  ; FMin(a,b)
  %4328 = fmul fast float %4327, %4246
  %4329 = fsub fast float 1.000000e+00, %4328
  %4330 = bitcast float %4329 to i32
  %4331 = sub nsw i32 2129859010, %4330
  %4332 = bitcast i32 %4331 to float
  %4333 = call float @dx.op.binary.f32(i32 36, float %4209, float %4299)  ; FMin(a,b)
  %4334 = fmul fast float %4333, %4246
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = bitcast float %4335 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = call float @dx.op.binary.f32(i32 36, float %4234, float %4299)  ; FMin(a,b)
  %4340 = fmul fast float %4339, %4246
  %4341 = fsub fast float 1.000000e+00, %4340
  %4342 = bitcast float %4341 to i32
  %4343 = sub nsw i32 2129859010, %4342
  %4344 = bitcast i32 %4343 to float
  %4345 = fmul fast float %4318, %4294
  %4346 = fmul fast float %4345, %4332
  %4347 = fmul fast float %4321, %4295
  %4348 = fmul fast float %4347, %4338
  %4349 = fmul fast float %4324, %4296
  %4350 = fmul fast float %4349, %4344
  %4351 = call float @dx.op.dot3.f32(i32 55, float %4320, float %4323, float %4326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = select i1 %226, float 0.000000e+00, float %4320
  %4353 = select i1 %226, float %4351, float %4323
  %4354 = select i1 %226, float 0.000000e+00, float %4326
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4346, float %4348, float %4350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = select i1 %226, float 0.000000e+00, float %4346
  %4357 = select i1 %226, float %4355, float %4348
  %4358 = select i1 %226, float 0.000000e+00, float %4350
  %4359 = fmul fast float %4236, 9.843750e-01
  %4360 = fmul fast float %4217, 9.843750e-01
  %4361 = fadd fast float %4359, 7.812500e-03
  %4362 = fadd fast float %4360, 7.812500e-03
  %4363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4361, float %4362, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 2
  %4365 = extractvalue %dx.types.ResRet.f32 %4363, 3
  %4366 = fmul fast float %4364, %4208
  %4367 = fmul fast float %4364, %4209
  %4368 = fmul fast float %4364, %4234
  %4369 = fadd fast float %4366, %4365
  %4370 = fadd fast float %4367, %4365
  %4371 = fadd fast float %4368, %4365
  %4372 = call float @dx.op.binary.f32(i32 35, float %4370, float %4371)  ; FMax(a,b)
  %4373 = call float @dx.op.binary.f32(i32 35, float %4369, float %4372)  ; FMax(a,b)
  %4374 = fsub fast float 1.000000e+00, %4373
  %4375 = fmul fast float %4373, %4217
  %4376 = fadd fast float %4375, %4217
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4382 = fmul fast float %4376, %4378
  %4383 = fadd fast float %4382, %4379
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4380, %4376
  %4386 = fadd fast float %4385, %4381
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fsub fast float 1.000000e+00, %4257
  %4389 = fadd fast float %4388, %4387
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fcmp fast olt float %4390, 1.000000e+00
  br i1 %4391, label %4392, label %5247

; <label>:4392                                    ; preds = %4201
  %4393 = fcmp fast olt float %4384, 1.000000e+00
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = fcmp fast ogt float %4395, 0.000000e+00
  %4397 = or i1 %4393, %4396
  %4398 = or i1 %4393, %4396
  %4399 = xor i1 %4398, true
  %4400 = zext i1 %4399 to i32
  br i1 %4397, label %4401, label %4644

; <label>:4401                                    ; preds = %4392
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.CBufRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.CBufRet.f32 %4422, 2
  %4426 = extractvalue %dx.types.CBufRet.f32 %4422, 3
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4428, float %4429, float %4430, float %4242, float %4243, float %4244)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call float @dx.op.unary.f32(i32 6, float %4433)  ; FAbs(value)
  %4435 = fmul fast float %4434, 8.000000e+00
  %4436 = fadd fast float %4435, -6.000000e+00
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4432, 8.000000e+00
  %4439 = fmul fast float %4438, %4395
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fcmp fast ogt float %4440, 0.000000e+00
  br i1 %4441, label %4442, label %4619, !dx.controlflow.hints !85

; <label>:4442                                    ; preds = %4401
  %4443 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4444 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4445 = fsub fast float %4443, %4444
  %4446 = fmul fast float %4445, %4217
  %4447 = fadd fast float %4446, %4444
  %4448 = fmul fast float %239, 2.000000e+00
  %4449 = fmul fast float %240, 2.000000e+00
  %4450 = fadd fast float %4448, -1.000000e+00
  %4451 = fadd fast float %4449, -1.000000e+00
  %4452 = fmul fast float %4447, %4450
  %4453 = fmul fast float %4447, %4451
  %4454 = fadd fast float %4452, %87
  %4455 = fadd fast float %4453, %88
  %4456 = fmul fast float %4454, %4220
  %4457 = fmul fast float %4455, %4221
  %4458 = fadd fast float %4217, 0xBFE3333340000000
  %4459 = fmul fast float %4458, 0x4004000020000000
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = fmul fast float %4461, 3.000000e+00
  %4463 = fadd fast float %4462, %239
  %4464 = call float @dx.op.unary.f32(i32 27, float %4463)  ; Round_ni(value)
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4456, float %4457, float %4464, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 0
  %4467 = fcmp fast une float %4466, 0xFFF0000000000000
  %4468 = fcmp fast une float %4466, 0x7FF0000000000000
  %4469 = and i1 %4467, %4468
  %4470 = fcmp fast olt float %4466, 0.000000e+00
  %4471 = call float @dx.op.unary.f32(i32 6, float %4466)  ; FAbs(value)
  %4472 = fsub fast float 1.000000e+00, %4471
  %4473 = select i1 %4469, float 1.000000e+00, float 0.000000e+00
  %4474 = fmul fast float %4473, %4440
  %4475 = fcmp fast ogt float %4474, 0.000000e+00
  br i1 %4475, label %4476, label %4619, !dx.controlflow.hints !86

; <label>:4476                                    ; preds = %4442
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4481 = select i1 %4470, float 0.000000e+00, float %4478
  %4482 = select i1 %4470, float 0.000000e+00, float %4479
  %4483 = select i1 %4470, float 0.000000e+00, float %4480
  %4484 = select i1 %4470, float %4403, float %4418
  %4485 = select i1 %4470, float %4408, float %4423
  %4486 = select i1 %4470, float %4413, float %4428
  %4487 = select i1 %4470, float %4404, float %4419
  %4488 = select i1 %4470, float %4409, float %4424
  %4489 = select i1 %4470, float %4414, float %4429
  %4490 = select i1 %4470, float %4405, float %4420
  %4491 = select i1 %4470, float %4410, float %4425
  %4492 = select i1 %4470, float %4415, float %4430
  %4493 = select i1 %4470, float %4406, float %4421
  %4494 = select i1 %4470, float %4411, float %4426
  %4495 = select i1 %4470, float %4416, float %4431
  %4496 = fadd fast float %4481, %174
  %4497 = fadd fast float %4482, %175
  %4498 = fadd fast float %4483, %176
  %4499 = fmul fast float %4496, %4484
  %4500 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4487, float %4499)  ; FMad(a,b,c)
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4490, float %4500)  ; FMad(a,b,c)
  %4502 = fadd fast float %4501, %4493
  %4503 = fmul fast float %4496, %4485
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4488, float %4503)  ; FMad(a,b,c)
  %4505 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4491, float %4504)  ; FMad(a,b,c)
  %4506 = fadd fast float %4505, %4494
  %4507 = fmul fast float %4496, %4486
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4489, float %4507)  ; FMad(a,b,c)
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4492, float %4508)  ; FMad(a,b,c)
  %4510 = fadd fast float %4509, %4495
  %4511 = fdiv fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4511, %4502
  %4513 = fmul fast float %4511, %4506
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = fmul fast float %4512, %4515
  %4518 = fmul fast float %4513, %4516
  %4519 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4520 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4521 = fadd fast float %4517, %4519
  %4522 = fadd fast float %4518, %4520
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4525 = fmul fast float %4524, %4242
  %4526 = fmul fast float %4524, %4243
  %4527 = fmul fast float %4524, %4244
  %4528 = fadd fast float %4525, %4496
  %4529 = fadd fast float %4526, %4497
  %4530 = fadd fast float %4527, %4498
  %4531 = fmul fast float %4528, %4484
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4487, float %4531)  ; FMad(a,b,c)
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4490, float %4532)  ; FMad(a,b,c)
  %4534 = fadd fast float %4533, %4493
  %4535 = fmul fast float %4528, %4485
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4488, float %4535)  ; FMad(a,b,c)
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4491, float %4536)  ; FMad(a,b,c)
  %4538 = fadd fast float %4537, %4494
  %4539 = fmul fast float %4528, %4486
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4489, float %4539)  ; FMad(a,b,c)
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4492, float %4540)  ; FMad(a,b,c)
  %4542 = fadd fast float %4541, %4495
  %4543 = fdiv fast float 1.000000e+00, %4542
  %4544 = fmul fast float %4543, %4534
  %4545 = fmul fast float %4543, %4538
  %4546 = fmul fast float %4521, 2.000000e+00
  %4547 = fadd fast float %4546, -1.000000e+00
  %4548 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4549 = fmul fast float %4548, 5.000000e+00
  %4550 = fadd fast float %4549, -4.000000e+00
  %4551 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4552 = fmul fast float %4551, %4437
  %4553 = fsub fast float %4512, %4544
  %4554 = fmul fast float %4515, %4553
  %4555 = fmul fast float %4552, %4554
  %4556 = fsub fast float %4544, %4512
  %4557 = fmul fast float %4515, %4556
  %4558 = fadd fast float %4557, %4555
  %4559 = fsub fast float %4545, %4513
  %4560 = fmul fast float %4516, %4559
  %4561 = fmul fast float %4558, %4472
  %4562 = fmul fast float %4560, %4472
  %4563 = fadd fast float %4561, %4521
  %4564 = fadd fast float %4562, %4522
  %4565 = fsub fast float %4543, %4511
  %4566 = fmul fast float %4565, %4472
  %4567 = fadd fast float %4566, %4511
  %4568 = fdiv fast float 1.000000e+00, %4567
  %4569 = fadd fast float %4217, -1.000000e+00
  %4570 = fsub fast float %4568, %4510
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4573 = fmul fast float %4572, %4568
  %4574 = fdiv fast float 1.600000e+02, %4573
  %4575 = fmul fast float %4569, %4569
  %4576 = fmul fast float %4575, 0xBFB5B17960000000
  %4577 = fmul fast float %4576, %4570
  %4578 = fmul fast float %4577, %4574
  %4579 = call float @dx.op.unary.f32(i32 21, float %4578)  ; Exp(value)
  %4580 = fmul fast float %4579, 0x3FF04B2960000000
  %4581 = fsub fast float 0x3FF04B2960000000, %4580
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4582, 4.000000e+00
  %4584 = fadd fast float %239, -5.000000e-01
  %4585 = fadd fast float %240, -5.000000e-01
  %4586 = fmul fast float %4582, 0x3FBEB851E0000000
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4587, %4584
  %4589 = fmul fast float %4587, %4585
  %4590 = fadd fast float %4563, %4588
  %4591 = fadd fast float %4564, %4589
  %4592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %4590, float %4591, float undef, float undef, i32 0, i32 0, i32 undef, float %4583)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.ResRet.f32 %4592, 2
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4598 = fmul fast float %4597, %4593
  %4599 = fmul fast float %4597, %4594
  %4600 = fmul fast float %4597, %4595
  %4601 = select i1 %226, float 0.000000e+00, float %4599
  %4602 = select i1 %226, float 0.000000e+00, float %4600
  %4603 = fmul fast float %4590, 2.000000e+00
  %4604 = fmul fast float %4591, 2.000000e+00
  %4605 = fadd fast float %4603, -1.000000e+00
  %4606 = fadd fast float %4604, -1.000000e+00
  %4607 = fmul fast float %4605, %4605
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = fmul fast float %4610, %4437
  %4612 = fadd fast float %4611, %4609
  %4613 = fmul fast float %4606, %4606
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = fmul fast float %4612, %4615
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fmul fast float %4617, %4474
  br label %4619

; <label>:4619                                    ; preds = %4476, %4442, %4401
  %4620 = phi float [ %4598, %4476 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4401 ]
  %4621 = phi float [ %4601, %4476 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4401 ]
  %4622 = phi float [ %4602, %4476 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4401 ]
  %4623 = phi float [ %4618, %4476 ], [ 0.000000e+00, %4442 ], [ 0.000000e+00, %4401 ]
  %4624 = fcmp fast olt float %4623, 1.000000e+00
  %4625 = or i1 %4624, %4399
  %4626 = zext i1 %4625 to i32
  %4627 = fmul fast float %4623, %4384
  %4628 = fsub fast float %4623, %4627
  %4629 = fsub fast float 1.000000e+00, %4390
  %4630 = fmul fast float %4628, %4629
  %4631 = fadd fast float %4630, %4390
  %4632 = fsub fast float %4631, %4628
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fmul fast float %4633, %4356
  %4635 = fmul fast float %4633, %4357
  %4636 = fmul fast float %4633, %4358
  %4637 = fsub fast float -0.000000e+00, %4631
  %4638 = fmul fast float %4628, %4620
  %4639 = fmul fast float %4628, %4621
  %4640 = fmul fast float %4628, %4622
  %4641 = fadd fast float %4638, %4634
  %4642 = fadd fast float %4639, %4635
  %4643 = fadd fast float %4640, %4636
  br label %4644

; <label>:4644                                    ; preds = %4619, %4392
  %4645 = phi float [ %4390, %4392 ], [ %4637, %4619 ]
  %4646 = phi float [ %4356, %4392 ], [ %4641, %4619 ]
  %4647 = phi float [ %4357, %4392 ], [ %4642, %4619 ]
  %4648 = phi float [ %4358, %4392 ], [ %4643, %4619 ]
  %4649 = phi i32 [ %4400, %4392 ], [ %4626, %4619 ]
  %4650 = icmp eq i32 %4649, 0
  br i1 %4650, label %5247, label %4651

; <label>:4651                                    ; preds = %4644
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = extractvalue %dx.types.CBufRet.f32 %4652, 3
  %4655 = fmul fast float %4653, %87
  %4656 = fmul fast float %4654, %88
  %4657 = fptoui float %4655 to i32
  %4658 = fptoui float %4656 to i32
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %4662 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4663 = fadd fast float %82, -4.000000e+00
  %4664 = call float @dx.op.binary.f32(i32 35, float %4663, float 0.000000e+00)  ; FMax(a,b)
  %4665 = fadd fast float %4664, %4660
  %4666 = fmul fast float %4665, %4661
  %4667 = call float @dx.op.unary.f32(i32 23, float %4666)  ; Log(value)
  %4668 = fmul fast float %4667, %4662
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 2
  %4671 = fmul fast float %4668, %4670
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.i32 %4673, 1
  %4675 = add i32 %4674, -1
  %4676 = uitofp i32 %4674 to float
  %4677 = fmul fast float %4676, %4672
  %4678 = fptoui float %4677 to i32
  %4679 = call i32 @dx.op.binary.i32(i32 40, i32 %4678, i32 %4675)  ; UMin(a,b)
  %4680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.i32 %4680, 2
  %4682 = extractvalue %dx.types.CBufRet.i32 %4680, 3
  %4683 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4658, i32 %4681, i32 %4657)  ; UMad(a,b,c)
  %4684 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4679, i32 %4682, i32 %4683)  ; UMad(a,b,c)
  %4685 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4686 = fptoui float %4685 to i32
  %4687 = lshr i32 %4686, 5
  %4688 = call i32 @dx.op.binary.i32(i32 40, i32 %4687, i32 8191)  ; UMin(a,b)
  %4689 = fcmp fast ogt float %3424, 0.000000e+00
  %4690 = fcmp fast ogt float %4244, 0.000000e+00
  %4691 = and i1 %4690, %4689
  br i1 %4691, label %4692, label %4721

; <label>:4692                                    ; preds = %4651
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4242, float %4243, float %4244, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call float @dx.op.binary.f32(i32 35, float %4693, float -1.000000e+00)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 36, float %4694, float 1.000000e+00)  ; FMin(a,b)
  %4696 = fmul fast float %4695, %4695
  %4697 = fsub fast float 1.000000e+00, %4696
  %4698 = fmul fast float %4697, 0x3FFC6E2300000000
  %4699 = fsub fast float 1.000000e+00, %4698
  %4700 = fcmp fast ogt float %4699, 0.000000e+00
  %4701 = call float @dx.op.unary.f32(i32 24, float %4699)  ; Sqrt(value)
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = call float @dx.op.unary.f32(i32 23, float %4702)  ; Log(value)
  %4704 = fmul fast float %4703, 5.000000e+00
  %4705 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4706 = fmul fast float %4705, 0x3FEF591A60000000
  %4707 = fadd fast float %4706, 0x3F94DCB540000000
  %4708 = select i1 %4700, float %4707, float 1.000000e+00
  %4709 = fcmp fast oge float %4708, 1.000000e+00
  %4710 = fmul fast float %4693, 2.000000e+00
  %4711 = fadd fast float %4710, %4244
  %4712 = select i1 %4709, float %4711, float %4244
  %4713 = fsub fast float %4712, %4244
  %4714 = fmul fast float %4713, %3424
  %4715 = fadd fast float %4714, %4244
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4242, float %4243, float %4715, float %4242, float %4243, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.unary.f32(i32 25, float %4716)  ; Rsqrt(value)
  %4718 = fmul fast float %4717, %4242
  %4719 = fmul fast float %4717, %4243
  %4720 = fmul fast float %4715, %4717
  br label %4721

; <label>:4721                                    ; preds = %4692, %4651
  %4722 = phi float [ %4718, %4692 ], [ %4242, %4651 ]
  %4723 = phi float [ %4719, %4692 ], [ %4243, %4651 ]
  %4724 = phi float [ %4720, %4692 ], [ %4244, %4651 ]
  %4725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.i32 %4725, 2
  %4727 = add nsw i32 %4726, -1
  %4728 = call i32 @dx.op.binary.i32(i32 37, i32 %4727, i32 0)  ; IMax(a,b)
  %4729 = shl i32 %4688, 2
  %4730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.i32 %4730, 0
  %4732 = lshr i32 %4731, 16
  %4733 = and i32 %4731, 65535
  %4734 = lshr i32 %4731, 21
  %4735 = lshr i32 %4733, 5
  %4736 = call i32 @dx.op.binary.i32(i32 40, i32 %4735, i32 %4728)  ; UMin(a,b)
  %4737 = icmp ugt i32 %4734, %4736
  br i1 %4737, label %5119, label %4738

; <label>:4738                                    ; preds = %4721
  br label %4739

; <label>:4739                                    ; preds = %5108, %4738
  %4740 = phi float [ %5109, %5108 ], [ 0.000000e+00, %4738 ]
  %4741 = phi float [ %5110, %5108 ], [ 0.000000e+00, %4738 ]
  %4742 = phi float [ %5111, %5108 ], [ 0.000000e+00, %4738 ]
  %4743 = phi float [ %5112, %5108 ], [ 1.000000e+00, %4738 ]
  %4744 = phi i32 [ %5116, %5108 ], [ %4734, %4738 ]
  %4745 = phi float [ %5113, %5108 ], [ 0.000000e+00, %4738 ]
  %4746 = phi float [ %5114, %5108 ], [ 0.000000e+00, %4738 ]
  %4747 = phi float [ %5115, %5108 ], [ 0.000000e+00, %4738 ]
  %4748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.i32 %4748, 2
  %4750 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4684, i32 %4749, i32 %4744)  ; UMad(a,b,c)
  %4751 = shl i32 %4750, 2
  %4752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4751, i32 undef)  ; BufferLoad(srv,index,wot)
  %4753 = extractvalue %dx.types.ResRet.i32 %4752, 0
  %4754 = shl i32 %4744, 5
  %4755 = sub nsw i32 %4732, %4754
  %4756 = call i32 @dx.op.binary.i32(i32 37, i32 %4755, i32 0)  ; IMax(a,b)
  %4757 = call i32 @dx.op.binary.i32(i32 38, i32 %4756, i32 31)  ; IMin(a,b)
  %4758 = sub nsw i32 1, %4732
  %4759 = add nsw i32 %4758, %4733
  %4760 = call i32 @dx.op.binary.i32(i32 37, i32 %4759, i32 0)  ; IMax(a,b)
  %4761 = call i32 @dx.op.binary.i32(i32 38, i32 %4760, i32 32)  ; IMin(a,b)
  %4762 = and i32 %4761, 31
  %4763 = shl i32 -1, %4762
  %4764 = xor i32 %4763, -1
  %4765 = and i32 %4757, 31
  %4766 = shl i32 %4764, %4765
  %4767 = icmp eq i32 %4761, 32
  %4768 = select i1 %4767, i32 -1, i32 %4766
  %4769 = and i32 %4768, %4753
  %4770 = icmp eq i32 %4769, 0
  br i1 %4770, label %5108, label %4771

; <label>:4771                                    ; preds = %4739
  br label %4772

; <label>:4772                                    ; preds = %4882, %4771
  %4773 = phi float [ %4883, %4882 ], [ %4740, %4771 ]
  %4774 = phi float [ %4884, %4882 ], [ %4741, %4771 ]
  %4775 = phi float [ %4885, %4882 ], [ %4742, %4771 ]
  %4776 = phi float [ %4886, %4882 ], [ %4743, %4771 ]
  %4777 = phi i32 [ %4785, %4882 ], [ %4769, %4771 ]
  %4778 = phi float [ %4887, %4882 ], [ %4745, %4771 ]
  %4779 = phi float [ %4888, %4882 ], [ %4746, %4771 ]
  %4780 = phi float [ %4889, %4882 ], [ %4747, %4771 ]
  %4781 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4777)  ; FirstbitLo(value)
  %4782 = add i32 %4781, %4754
  %4783 = and i32 %4781, 31
  %4784 = shl i32 1, %4783
  %4785 = xor i32 %4784, %4777
  %4786 = mul i32 %4782, 72
  %4787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.ResRet.f32 %4787, 2
  %4791 = add i32 %4786, 12
  %4792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4791, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.i32 %4792, 0
  %4794 = add i32 %4786, 16
  %4795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  %4799 = add i32 %4786, 28
  %4800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4799, i32 undef)  ; BufferLoad(srv,index,wot)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = add i32 %4786, 32
  %4803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4802, i32 undef)  ; BufferLoad(srv,index,wot)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = extractvalue %dx.types.ResRet.f32 %4803, 3
  %4808 = add i32 %4786, 48
  %4809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4808, i32 undef)  ; BufferLoad(srv,index,wot)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = add i32 %4786, 56
  %4813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4812, i32 undef)  ; BufferLoad(srv,index,wot)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.ResRet.f32 %4813, 1
  %4816 = add i32 %4786, 64
  %4817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4816, i32 undef)  ; BufferLoad(srv,index,wot)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.ResRet.f32 %4817, 1
  %4820 = mul i32 %4782, 60
  %4821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.ResRet.f32 %4821, 2
  %4825 = add i32 %4820, 12
  %4826 = add i32 %4820, 48
  %4827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4826, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = and i32 %4793, 32767
  %4832 = bitcast float %4788 to i32
  %4833 = icmp eq i32 %4832, -1
  %4834 = bitcast float %4789 to i32
  %4835 = and i32 %4793, 32768
  %4836 = icmp ne i32 %4835, 0
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4841 = fsub fast float %4822, %4838
  %4842 = fsub fast float %4823, %4839
  %4843 = fsub fast float %4824, %4840
  %4844 = fsub fast float %174, %4841
  %4845 = fsub fast float %175, %4842
  %4846 = fsub fast float %176, %4843
  %4847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4825, i32 undef)  ; BufferLoad(srv,index,wot)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4848, float %4849, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = add i32 %4820, 24
  %4853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4852, i32 undef)  ; BufferLoad(srv,index,wot)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.ResRet.f32 %4853, 1
  %4856 = extractvalue %dx.types.ResRet.f32 %4853, 2
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4854, float %4855, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = add i32 %4820, 36
  %4859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4858, i32 undef)  ; BufferLoad(srv,index,wot)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4860, float %4861, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = call float @dx.op.unary.f32(i32 6, float %4851)  ; FAbs(value)
  %4865 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4866 = call float @dx.op.unary.f32(i32 6, float %4863)  ; FAbs(value)
  %4867 = fsub fast float %4828, %4864
  %4868 = fsub fast float %4829, %4865
  %4869 = fsub fast float %4830, %4866
  %4870 = fmul fast float %4867, %4796
  %4871 = fmul fast float %4868, %4797
  %4872 = fmul fast float %4869, %4798
  %4873 = call float @dx.op.binary.f32(i32 36, float %4871, float %4872)  ; FMin(a,b)
  %4874 = call float @dx.op.binary.f32(i32 36, float %4870, float %4873)  ; FMin(a,b)
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.binary.f32(i32 36, float %4776, float %4875)  ; FMin(a,b)
  %4877 = uitofp i1 %4836 to float
  %4878 = fadd fast float %3424, 1.000000e+00
  %4879 = fsub fast float %4878, %4877
  %4880 = fmul fast float %4876, %4879
  %4881 = fcmp fast ogt float %4880, 0.000000e+00
  br i1 %4881, label %4891, label %4882

; <label>:4882                                    ; preds = %5033, %4772
  %4883 = phi float [ %5097, %5033 ], [ %4773, %4772 ]
  %4884 = phi float [ %5098, %5033 ], [ %4774, %4772 ]
  %4885 = phi float [ %5099, %5033 ], [ %4775, %4772 ]
  %4886 = phi float [ %5106, %5033 ], [ %4776, %4772 ]
  %4887 = phi float [ %5103, %5033 ], [ %4778, %4772 ]
  %4888 = phi float [ %5104, %5033 ], [ %4779, %4772 ]
  %4889 = phi float [ %5105, %5033 ], [ %4780, %4772 ]
  %4890 = icmp eq i32 %4777, %4784
  br i1 %4890, label %5107, label %4772

; <label>:4891                                    ; preds = %4772
  br i1 %4833, label %4949, label %4892

; <label>:4892                                    ; preds = %4891
  %4893 = fsub fast float -0.000000e+00, %4848
  %4894 = fsub fast float -0.000000e+00, %4849
  %4895 = fsub fast float -0.000000e+00, %4850
  %4896 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = fsub fast float -0.000000e+00, %4896
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4893, float %4894, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = fadd fast float %4898, %4811
  %4900 = fadd fast float %4810, %4898
  %4901 = fsub fast float -0.000000e+00, %4900
  %4902 = fcmp ogt float %4896, -0.000000e+00
  %4903 = select i1 %4902, float %4901, float %4899
  %4904 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4905 = fdiv fast float 1.000000e+00, %4904
  %4906 = fmul fast float %4903, %4905
  %4907 = call float @dx.op.binary.f32(i32 35, float %4906, float 0.000000e+00)  ; FMax(a,b)
  %4908 = fsub fast float -0.000000e+00, %4854
  %4909 = fsub fast float -0.000000e+00, %4855
  %4910 = fsub fast float -0.000000e+00, %4856
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = fsub fast float -0.000000e+00, %4911
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fadd fast float %4913, %4815
  %4915 = fadd fast float %4814, %4913
  %4916 = fsub fast float -0.000000e+00, %4915
  %4917 = fcmp ogt float %4911, -0.000000e+00
  %4918 = select i1 %4917, float %4916, float %4914
  %4919 = call float @dx.op.unary.f32(i32 6, float %4912)  ; FAbs(value)
  %4920 = fdiv fast float 1.000000e+00, %4919
  %4921 = fmul fast float %4918, %4920
  %4922 = call float @dx.op.binary.f32(i32 35, float %4921, float 0.000000e+00)  ; FMax(a,b)
  %4923 = fsub fast float -0.000000e+00, %4860
  %4924 = fsub fast float -0.000000e+00, %4861
  %4925 = fsub fast float -0.000000e+00, %4862
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = fsub fast float -0.000000e+00, %4926
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = fadd fast float %4928, %4819
  %4930 = fadd fast float %4818, %4928
  %4931 = fsub fast float -0.000000e+00, %4930
  %4932 = fcmp ogt float %4926, -0.000000e+00
  %4933 = select i1 %4932, float %4931, float %4929
  %4934 = call float @dx.op.unary.f32(i32 6, float %4927)  ; FAbs(value)
  %4935 = fdiv fast float 1.000000e+00, %4934
  %4936 = fmul fast float %4933, %4935
  %4937 = call float @dx.op.binary.f32(i32 35, float %4936, float 0.000000e+00)  ; FMax(a,b)
  %4938 = call float @dx.op.binary.f32(i32 36, float %4922, float %4937)  ; FMin(a,b)
  %4939 = call float @dx.op.binary.f32(i32 36, float %4907, float %4938)  ; FMin(a,b)
  %4940 = fmul fast float %4939, %4722
  %4941 = fmul fast float %4939, %4723
  %4942 = fmul fast float %4939, %4724
  %4943 = fadd fast float %4940, %174
  %4944 = fadd fast float %4941, %175
  %4945 = fadd fast float %4942, %176
  %4946 = fsub fast float %4943, %4788
  %4947 = fsub fast float %4944, %4789
  %4948 = fsub fast float %4945, %4790
  br label %4956

; <label>:4949                                    ; preds = %4891
  %4950 = fmul fast float %4722, 8.096000e+03
  %4951 = fmul fast float %4723, 8.096000e+03
  %4952 = fmul fast float %4724, 8.096000e+03
  %4953 = fadd fast float %4950, %174
  %4954 = fadd fast float %4951, %175
  %4955 = fadd fast float %4952, %176
  br label %4956

; <label>:4956                                    ; preds = %4949, %4892
  %4957 = phi float [ %4722, %4949 ], [ %4946, %4892 ]
  %4958 = phi float [ %4723, %4949 ], [ %4947, %4892 ]
  %4959 = phi float [ %4724, %4949 ], [ %4948, %4892 ]
  %4960 = phi float [ %4953, %4949 ], [ %4943, %4892 ]
  %4961 = phi float [ %4954, %4949 ], [ %4944, %4892 ]
  %4962 = phi float [ %4955, %4949 ], [ %4945, %4892 ]
  %4963 = fcmp fast olt float %4807, 1.000000e+00
  br i1 %4963, label %4964, label %4995, !dx.controlflow.hints !87

; <label>:4964                                    ; preds = %4956
  %4965 = fmul fast float %4959, %4805
  %4966 = fmul fast float %4958, %4806
  %4967 = fsub fast float %4965, %4966
  %4968 = fmul fast float %4957, %4806
  %4969 = fmul fast float %4959, %4804
  %4970 = fsub fast float %4968, %4969
  %4971 = fmul fast float %4958, %4804
  %4972 = fmul fast float %4957, %4805
  %4973 = fsub fast float %4971, %4972
  %4974 = fmul fast float %4967, 2.000000e+00
  %4975 = fmul fast float %4970, 2.000000e+00
  %4976 = fmul fast float %4973, 2.000000e+00
  %4977 = fmul fast float %4974, %4807
  %4978 = fmul fast float %4975, %4807
  %4979 = fmul fast float %4976, %4807
  %4980 = fmul fast float %4976, %4805
  %4981 = fmul fast float %4975, %4806
  %4982 = fmul fast float %4974, %4806
  %4983 = fmul fast float %4976, %4804
  %4984 = fmul fast float %4975, %4804
  %4985 = fmul fast float %4974, %4805
  %4986 = fadd fast float %4980, %4957
  %4987 = fadd fast float %4986, %4977
  %4988 = fsub fast float %4987, %4981
  %4989 = fsub fast float %4958, %4983
  %4990 = fadd fast float %4989, %4978
  %4991 = fadd fast float %4990, %4982
  %4992 = fadd fast float %4979, %4959
  %4993 = fsub fast float %4992, %4985
  %4994 = fadd fast float %4993, %4984
  br label %4995

; <label>:4995                                    ; preds = %4964, %4956
  %4996 = phi float [ %4988, %4964 ], [ %4957, %4956 ]
  %4997 = phi float [ %4991, %4964 ], [ %4958, %4956 ]
  %4998 = phi float [ %4994, %4964 ], [ %4959, %4956 ]
  br i1 %4833, label %5030, label %4999

; <label>:4999                                    ; preds = %4995
  %5000 = fmul fast float %4217, 0x400187C840000000
  %5001 = fadd fast float %5000, 0xC00EFC2120000000
  %5002 = fmul fast float %5001, %4217
  %5003 = fadd fast float %5002, 0x3FE5D16340000000
  %5004 = fmul fast float %5003, %4217
  %5005 = fadd fast float %5004, 1.000000e+00
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fsub fast float %4960, %174
  %5008 = fsub fast float %4961, %175
  %5009 = fsub fast float %4962, %176
  %5010 = fsub fast float %4960, %4788
  %5011 = fsub fast float %4961, %4789
  %5012 = fsub fast float %4962, %4790
  %5013 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5010, float %5011, float %5012)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = fadd fast float %5014, 0x3EE4F8B580000000
  %5016 = fdiv fast float %5013, %5015
  %5017 = bitcast float %5016 to i32
  %5018 = ashr i32 %5017, 1
  %5019 = add nsw i32 %5018, 532487669
  %5020 = bitcast i32 %5019 to float
  %5021 = fmul fast float %5020, %5006
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, 0x4009981AE0000000
  %5024 = fsub fast float 0x40111BBD80000000, %5023
  %5025 = fmul fast float %5024, %5022
  %5026 = fadd fast float %5025, 0xC0009F6020000000
  %5027 = fmul fast float %5026, %5022
  %5028 = fadd fast float %5027, 1.000000e+00
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  br label %5033

; <label>:5030                                    ; preds = %4995
  %5031 = icmp ne i32 %4834, -1
  %5032 = zext i1 %5031 to i32
  br label %5033

; <label>:5033                                    ; preds = %5030, %4999
  %5034 = phi float [ %4217, %5030 ], [ %5029, %4999 ]
  %5035 = phi i32 [ %5032, %5030 ], [ 0, %4999 ]
  %5036 = fmul float %5034, 5.000000e+00
  %5037 = fsub float 5.000000e+00, %5036
  %5038 = icmp ne i32 %5035, 0
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5041 = fadd fast float %5040, %5037
  %5042 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5041)  ; FMax(a,b)
  %5043 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %5044 = call float @dx.op.unary.f32(i32 6, float %4997)  ; FAbs(value)
  %5045 = fadd fast float %5044, %5043
  %5046 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5047 = fadd fast float %5045, %5046
  %5048 = fcmp fast oeq float %5047, 0.000000e+00
  %5049 = fdiv fast float 1.000000e+00, %5047
  %5050 = select i1 %5048, float 1.000000e+00, float %5049
  %5051 = fmul fast float %5050, %4996
  %5052 = fmul fast float %5050, %4997
  %5053 = call float @dx.op.unary.f32(i32 6, float %5052)  ; FAbs(value)
  %5054 = call float @dx.op.unary.f32(i32 6, float %5051)  ; FAbs(value)
  %5055 = fsub fast float 1.000000e+00, %5053
  %5056 = fsub fast float 1.000000e+00, %5054
  %5057 = fcmp fast oge float %5051, 0.000000e+00
  %5058 = fcmp fast oge float %5052, 0.000000e+00
  %5059 = select i1 %5057, float 1.000000e+00, float -1.000000e+00
  %5060 = select i1 %5058, float 1.000000e+00, float -1.000000e+00
  %5061 = fcmp fast ole float %4998, 0.000000e+00
  %5062 = fmul fast float %5059, %5055
  %5063 = fmul fast float %5060, %5056
  %5064 = select i1 %5061, float %5062, float %5051
  %5065 = select i1 %5061, float %5063, float %5052
  %5066 = fmul fast float %5064, 5.000000e-01
  %5067 = fmul fast float %5065, 5.000000e-01
  %5068 = fadd fast float %5066, 5.000000e-01
  %5069 = fadd fast float %5067, 5.000000e-01
  %5070 = uitofp i32 %4831 to float
  %5071 = call float @dx.op.binary.f32(i32 36, float %5042, float 3.000000e+00)  ; FMin(a,b)
  %5072 = fadd fast float %5071, 2.000000e+00
  %5073 = call float @dx.op.unary.f32(i32 21, float %5072)  ; Exp(value)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5039, 1
  %5075 = fmul fast float %5074, %5073
  %5076 = fmul fast float %5075, 2.000000e+00
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5068, %5077
  %5079 = fmul fast float %5069, %5077
  %5080 = fadd fast float %5078, %5075
  %5081 = fadd fast float %5079, %5075
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %5080, float %5081, float %5070, float undef, i32 0, i32 0, i32 undef, float %5042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.ResRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.ResRet.f32 %5082, 2
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 3
  %5088 = fmul fast float %5087, %4801
  %5089 = call float @dx.op.binary.f32(i32 36, float %4297, float %5088)  ; FMin(a,b)
  %5090 = select i1 %5038, float %5089, float %5088
  %5091 = fmul fast float %5083, %4880
  %5092 = fmul fast float %5091, %5090
  %5093 = fmul fast float %5084, %4880
  %5094 = fmul fast float %5093, %5090
  %5095 = fmul fast float %5085, %4880
  %5096 = fmul fast float %5095, %5090
  %5097 = fadd fast float %5092, %4773
  %5098 = fadd fast float %5094, %4774
  %5099 = fadd fast float %5096, %4775
  %5100 = fmul fast float %4960, %4880
  %5101 = fmul fast float %4961, %4880
  %5102 = fmul fast float %4962, %4880
  %5103 = fadd fast float %5100, %4778
  %5104 = fadd fast float %5101, %4779
  %5105 = fadd fast float %5102, %4780
  %5106 = fsub fast float %4776, %4880
  br label %4882

; <label>:5107                                    ; preds = %4882
  br label %5108

; <label>:5108                                    ; preds = %5107, %4739
  %5109 = phi float [ %4740, %4739 ], [ %4883, %5107 ]
  %5110 = phi float [ %4741, %4739 ], [ %4884, %5107 ]
  %5111 = phi float [ %4742, %4739 ], [ %4885, %5107 ]
  %5112 = phi float [ %4743, %4739 ], [ %4886, %5107 ]
  %5113 = phi float [ %4745, %4739 ], [ %4887, %5107 ]
  %5114 = phi float [ %4746, %4739 ], [ %4888, %5107 ]
  %5115 = phi float [ %4747, %4739 ], [ %4889, %5107 ]
  %5116 = add i32 %4744, 1
  %5117 = icmp ugt i32 %5116, %4736
  br i1 %5117, label %5118, label %4739, !llvm.loop !88

; <label>:5118                                    ; preds = %5108
  br label %5119

; <label>:5119                                    ; preds = %5118, %4721
  %5120 = phi float [ 0.000000e+00, %4721 ], [ %5109, %5118 ]
  %5121 = phi float [ 0.000000e+00, %4721 ], [ %5110, %5118 ]
  %5122 = phi float [ 0.000000e+00, %4721 ], [ %5111, %5118 ]
  %5123 = phi float [ 0.000000e+00, %4721 ], [ %5113, %5118 ]
  %5124 = phi float [ 0.000000e+00, %4721 ], [ %5114, %5118 ]
  %5125 = phi float [ 0.000000e+00, %4721 ], [ %5115, %5118 ]
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = select i1 %226, float 0.000000e+00, float %5120
  %5128 = select i1 %226, float %5126, float %5121
  %5129 = select i1 %226, float 0.000000e+00, float %5122
  %5130 = fcmp fast olt float %4645, 0.000000e+00
  %5131 = call float @dx.op.unary.f32(i32 6, float %4645)  ; FAbs(value)
  %5132 = fmul fast float %5131, %4646
  %5133 = fmul fast float %5131, %4647
  %5134 = fmul fast float %5131, %4648
  %5135 = select i1 %5130, float %4646, float %5132
  %5136 = select i1 %5130, float %4647, float %5133
  %5137 = select i1 %5130, float %4648, float %5134
  %5138 = fsub fast float 1.000000e+00, %5131
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5139, %5127
  %5141 = fmul fast float %5139, %5128
  %5142 = fmul fast float %5139, %5129
  %5143 = fadd fast float %5135, %5140
  %5144 = fadd fast float %5136, %5141
  %5145 = fadd fast float %5137, %5142
  %5146 = fcmp fast une float %4395, 0.000000e+00
  br i1 %5146, label %5247, label %5147

; <label>:5147                                    ; preds = %5119
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5152 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5157 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5160, float %5161, float %4242, float %4243, float %4244)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float %5159, float %5160, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %5159, float %5160, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = fadd fast float %4217, -1.000000e+00
  %5167 = fsub fast float %5164, %5165
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5170 = fmul fast float %5169, %5164
  %5171 = fdiv fast float 1.600000e+02, %5170
  %5172 = fmul fast float %5166, %5166
  %5173 = fmul fast float %5172, 0xBFB5B17960000000
  %5174 = fmul fast float %5173, %5167
  %5175 = fmul fast float %5174, %5171
  %5176 = call float @dx.op.unary.f32(i32 21, float %5175)  ; Exp(value)
  %5177 = fmul fast float %5176, 0x3FF04B2960000000
  %5178 = fsub fast float 0x3FF04B2960000000, %5177
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, 4.000000e+00
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5185 = fadd fast float %5182, %5123
  %5186 = fadd fast float %5183, %5124
  %5187 = fadd fast float %5184, %5125
  %5188 = fmul fast float %5185, %5149
  %5189 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5150, float %5188)  ; FMad(a,b,c)
  %5190 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5151, float %5189)  ; FMad(a,b,c)
  %5191 = fadd fast float %5190, %5152
  %5192 = fmul fast float %5185, %5154
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5155, float %5192)  ; FMad(a,b,c)
  %5194 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5156, float %5193)  ; FMad(a,b,c)
  %5195 = fadd fast float %5194, %5157
  %5196 = fmul fast float %5185, %5159
  %5197 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5160, float %5196)  ; FMad(a,b,c)
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5161, float %5197)  ; FMad(a,b,c)
  %5199 = fadd fast float %5198, %5162
  %5200 = fdiv fast float %5191, %5199
  %5201 = fdiv fast float %5195, %5199
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.CBufRet.f32 %5202, 1
  %5205 = fmul fast float %5203, %5200
  %5206 = fmul fast float %5204, %5201
  %5207 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5208 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5209 = fadd fast float %5205, %5207
  %5210 = fadd fast float %5206, %5208
  %5211 = fmul fast float %5163, 8.000000e+00
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fmul fast float %5209, 2.000000e+00
  %5214 = fmul fast float %5210, 2.000000e+00
  %5215 = fadd fast float %5213, -1.000000e+00
  %5216 = fadd fast float %5214, -1.000000e+00
  %5217 = fmul fast float %5215, %5215
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5216, %5216
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5223 = fmul fast float %4395, %5219
  %5224 = fmul fast float %5223, %5222
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fmul fast float %5225, %5212
  %5227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %5209, float %5210, float undef, float undef, i32 0, i32 0, i32 undef, float %5180)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.ResRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.ResRet.f32 %5227, 2
  %5231 = select i1 %226, float 0.000000e+00, float %5229
  %5232 = select i1 %226, float 0.000000e+00, float %5230
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5235 = fmul fast float %5234, %5228
  %5236 = fmul fast float %5231, %5234
  %5237 = fmul fast float %5232, %5234
  %5238 = fsub fast float %5235, %5127
  %5239 = fsub fast float %5236, %5128
  %5240 = fsub fast float %5237, %5129
  %5241 = fmul fast float %5238, %5226
  %5242 = fmul fast float %5239, %5226
  %5243 = fmul fast float %5240, %5226
  %5244 = fadd fast float %5241, %5127
  %5245 = fadd fast float %5242, %5128
  %5246 = fadd fast float %5243, %5129
  br label %5247

; <label>:5247                                    ; preds = %5147, %5119, %4644, %4201
  %5248 = phi float [ %4646, %4644 ], [ %5143, %5119 ], [ %4356, %4201 ], [ %5244, %5147 ]
  %5249 = phi float [ %4647, %4644 ], [ %5144, %5119 ], [ %4357, %4201 ], [ %5245, %5147 ]
  %5250 = phi float [ %4648, %4644 ], [ %5145, %5119 ], [ %4358, %4201 ], [ %5246, %5147 ]
  %5251 = fmul fast float %4374, %4352
  %5252 = fmul fast float %4374, %4353
  %5253 = fmul fast float %4374, %4354
  %5254 = fmul fast float %5248, %4369
  %5255 = fmul fast float %5249, %4370
  %5256 = fmul fast float %5250, %4371
  %5257 = fmul fast float %5251, %847
  %5258 = fmul fast float %5252, %847
  %5259 = fmul fast float %5253, %847
  %5260 = fadd fast float %5254, %2982
  %5261 = fmul fast float %5260, %847
  %5262 = fadd fast float %5255, %2986
  %5263 = fmul fast float %5262, %847
  %5264 = fadd fast float %5256, %2990
  %5265 = fmul fast float %5264, %847
  %5266 = bitcast i32 %4260 to float
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5269 = fcmp fast oeq float %5268, 0.000000e+00
  br i1 %5269, label %5419, label %5270

; <label>:5270                                    ; preds = %5247
  %5271 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5272 = extractvalue %dx.types.CBufRet.f32 %5267, 1
  %5273 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = select i1 %226, float %5279, float %5275
  %5283 = select i1 %226, float %5281, float %5276
  %5284 = select i1 %226, float %5280, float %5277
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 1
  %5287 = fcmp fast une float %5286, 0.000000e+00
  br i1 %5287, label %5288, label %5305

; <label>:5288                                    ; preds = %5270
  %5289 = fptoui float %87 to i32
  %5290 = fptoui float %88 to i32
  %5291 = lshr i32 %5289, 4
  %5292 = lshr i32 %5290, 4
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = fptoui float %5294 to i32
  %5296 = add i32 %5295, 15
  %5297 = lshr i32 %5296, 4
  %5298 = mul i32 %5297, %5292
  %5299 = add i32 %5298, %5291
  %5300 = shl i32 %5299, 3
  %5301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.i32 %5301, 0
  %5303 = and i32 %5302, -268435456
  %5304 = icmp eq i32 %5303, -1342177280
  br i1 %5304, label %5310, label %5305

; <label>:5305                                    ; preds = %5288, %5270
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %39, float %4222, float %4223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.ResRet.f32 %5306, 2
  br label %5310

; <label>:5310                                    ; preds = %5305, %5288
  %5311 = phi float [ %5307, %5305 ], [ 0.000000e+00, %5288 ]
  %5312 = phi float [ %5308, %5305 ], [ 0.000000e+00, %5288 ]
  %5313 = phi float [ %5309, %5305 ], [ 0.000000e+00, %5288 ]
  %5314 = call float @dx.op.binary.f32(i32 36, float %5312, float %5313)  ; FMin(a,b)
  %5315 = call float @dx.op.binary.f32(i32 36, float %5311, float %5314)  ; FMin(a,b)
  %5316 = fcmp fast ogt float %5315, 0.000000e+00
  br i1 %5316, label %5317, label %5419, !dx.controlflow.hints !90

; <label>:5317                                    ; preds = %5310
  %5318 = fmul fast float %5311, %5282
  %5319 = fmul fast float %5312, %5283
  %5320 = fmul fast float %5313, %5284
  %5321 = fsub fast float %5271, %4207
  %5322 = fsub fast float %5272, %4206
  %5323 = fsub fast float %5273, %4205
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 25, float %5324)  ; Rsqrt(value)
  %5326 = fmul fast float %5325, %5321
  %5327 = fmul fast float %5325, %5322
  %5328 = fmul fast float %5325, %5323
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float %4214, float %4215, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.dot3.f32(i32 55, float %4204, float %4203, float %4202, float %5326, float %5327, float %5328)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5332 = fmul fast float %5331, %5331
  %5333 = fmul fast float %5332, %5266
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = fmul fast float %5334, %5331
  %5336 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %5326, float %5327, float %5328)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fmul fast float %5336, %5336
  %5338 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5339 = fsub fast float 1.000000e+00, %4254
  %5340 = fmul fast float %4236, %4236
  %5341 = fmul fast float %5340, %5339
  %5342 = fadd fast float %5341, %4254
  %5343 = bitcast float %5342 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fadd fast float %5346, %4236
  %5348 = fmul fast float %4254, %5337
  %5349 = fsub fast float 1.000000e+00, %5337
  %5350 = fadd fast float %5349, %5348
  %5351 = fmul fast float %5338, %5338
  %5352 = fmul fast float %5351, %5339
  %5353 = fadd fast float %5352, %4254
  %5354 = bitcast float %5353 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fadd fast float %5357, %5338
  %5359 = fmul fast float %5350, %5350
  %5360 = fmul fast float %5359, %5347
  %5361 = fmul fast float %5360, %5358
  %5362 = fdiv fast float 0x3FF0A00000000000, %5361
  %5363 = fmul fast float %5362, %4254
  %5364 = call float @dx.op.unary.f32(i32 6, float %5330)  ; FAbs(value)
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = bitcast float %5365 to i32
  %5367 = sitofp i32 %5366 to float
  %5368 = fmul fast float %5367, 5.000000e+00
  %5369 = fadd fast float %5368, 0xC1EFBF8940000000
  %5370 = fptosi float %5369 to i32
  %5371 = bitcast i32 %5370 to float
  %5372 = fsub fast float 1.000000e+00, %4208
  %5373 = fsub fast float 1.000000e+00, %4209
  %5374 = fsub fast float 1.000000e+00, %4234
  %5375 = fmul fast float %5371, %5372
  %5376 = fmul fast float %5371, %5373
  %5377 = fmul fast float %5371, %5374
  %5378 = fadd fast float %5375, %4208
  %5379 = fadd fast float %5376, %4209
  %5380 = fadd fast float %5377, %4234
  %5381 = fmul fast float %5329, 9.843750e-01
  %5382 = fadd fast float %5381, 7.812500e-03
  %5383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %5382, float %4362, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 3
  %5386 = fmul fast float %5384, %4208
  %5387 = fmul fast float %5384, %4209
  %5388 = fmul fast float %5384, %4234
  %5389 = fadd fast float %5386, %5385
  %5390 = fadd fast float %5387, %5385
  %5391 = fadd fast float %5388, %5385
  %5392 = call float @dx.op.binary.f32(i32 35, float %5390, float %5391)  ; FMax(a,b)
  %5393 = call float @dx.op.binary.f32(i32 35, float %5389, float %5392)  ; FMax(a,b)
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = fmul fast float %5335, %5318
  %5396 = fmul fast float %5395, %5394
  %5397 = fmul fast float %5335, %5319
  %5398 = fmul fast float %5397, %5394
  %5399 = fmul fast float %5335, %5320
  %5400 = fmul fast float %5399, %5394
  %5401 = fmul fast float %5395, %5363
  %5402 = fmul fast float %5401, %5378
  %5403 = fmul fast float %5397, %5363
  %5404 = fmul fast float %5403, %5379
  %5405 = fmul fast float %5399, %5363
  %5406 = fmul fast float %5405, %5380
  %5407 = fadd fast float %5396, %5251
  %5408 = fmul fast float %5407, %847
  %5409 = fadd fast float %5398, %5252
  %5410 = fmul fast float %5409, %847
  %5411 = fadd fast float %5400, %5253
  %5412 = fmul fast float %5411, %847
  %5413 = fadd fast float %5402, %5260
  %5414 = fmul fast float %5413, %847
  %5415 = fadd fast float %5404, %5262
  %5416 = fmul fast float %5415, %847
  %5417 = fadd fast float %5406, %5264
  %5418 = fmul fast float %5417, %847
  br label %5419

; <label>:5419                                    ; preds = %5317, %5310, %5247
  %5420 = phi float [ %5261, %5247 ], [ %5261, %5310 ], [ %5414, %5317 ]
  %5421 = phi float [ %5263, %5247 ], [ %5263, %5310 ], [ %5416, %5317 ]
  %5422 = phi float [ %5265, %5247 ], [ %5265, %5310 ], [ %5418, %5317 ]
  %5423 = phi float [ %5257, %5247 ], [ %5257, %5310 ], [ %5408, %5317 ]
  %5424 = phi float [ %5258, %5247 ], [ %5258, %5310 ], [ %5410, %5317 ]
  %5425 = phi float [ %5259, %5247 ], [ %5259, %5310 ], [ %5412, %5317 ]
  %5426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.i32 %5426, 0
  %5428 = icmp eq i32 %5427, 0
  br i1 %5428, label %5790, label %5429

; <label>:5429                                    ; preds = %5419
  %5430 = fptoui float %87 to i32
  %5431 = fptoui float %88 to i32
  %5432 = lshr i32 %5430, 4
  %5433 = lshr i32 %5431, 4
  %5434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.i32 %5434, 0
  %5436 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5433, i32 %5435, i32 %5432)  ; UMad(a,b,c)
  %5437 = add nsw i32 %5427, -1
  %5438 = call i32 @dx.op.binary.i32(i32 37, i32 %5437, i32 0)  ; IMax(a,b)
  %5439 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %5440 = fptoui float %5439 to i32
  %5441 = lshr i32 %5440, 5
  %5442 = call i32 @dx.op.binary.i32(i32 40, i32 %5441, i32 8191)  ; UMin(a,b)
  %5443 = shl i32 %5442, 2
  %5444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.i32 %5444, 0
  %5446 = lshr i32 %5445, 16
  %5447 = and i32 %5445, 65535
  %5448 = lshr i32 %5445, 21
  %5449 = lshr i32 %5447, 5
  %5450 = call i32 @dx.op.binary.i32(i32 40, i32 %5449, i32 %5438)  ; UMin(a,b)
  %5451 = icmp ugt i32 %5448, %5450
  br i1 %5451, label %5790, label %5452

; <label>:5452                                    ; preds = %5429
  br label %5453

; <label>:5453                                    ; preds = %5780, %5452
  %5454 = phi i32 [ %5787, %5780 ], [ %5448, %5452 ]
  %5455 = phi float [ %5781, %5780 ], [ %5420, %5452 ]
  %5456 = phi float [ %5782, %5780 ], [ %5421, %5452 ]
  %5457 = phi float [ %5783, %5780 ], [ %5422, %5452 ]
  %5458 = phi float [ %5784, %5780 ], [ %5423, %5452 ]
  %5459 = phi float [ %5785, %5780 ], [ %5424, %5452 ]
  %5460 = phi float [ %5786, %5780 ], [ %5425, %5452 ]
  %5461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.i32 %5461, 0
  %5463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5436, i32 %5462, i32 %5454)  ; UMad(a,b,c)
  %5464 = shl i32 %5463, 2
  %5465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.i32 %5465, 0
  %5467 = shl i32 %5454, 5
  %5468 = sub nsw i32 %5446, %5467
  %5469 = call i32 @dx.op.binary.i32(i32 37, i32 %5468, i32 0)  ; IMax(a,b)
  %5470 = call i32 @dx.op.binary.i32(i32 38, i32 %5469, i32 31)  ; IMin(a,b)
  %5471 = sub nsw i32 1, %5446
  %5472 = add nsw i32 %5471, %5447
  %5473 = call i32 @dx.op.binary.i32(i32 37, i32 %5472, i32 0)  ; IMax(a,b)
  %5474 = call i32 @dx.op.binary.i32(i32 38, i32 %5473, i32 32)  ; IMin(a,b)
  %5475 = and i32 %5474, 31
  %5476 = shl i32 -1, %5475
  %5477 = xor i32 %5476, -1
  %5478 = and i32 %5470, 31
  %5479 = shl i32 %5477, %5478
  %5480 = icmp eq i32 %5474, 32
  %5481 = select i1 %5480, i32 -1, i32 %5479
  %5482 = and i32 %5481, %5466
  %5483 = icmp eq i32 %5482, 0
  br i1 %5483, label %5780, label %5484

; <label>:5484                                    ; preds = %5453
  br label %5485

; <label>:5485                                    ; preds = %5565, %5484
  %5486 = phi i32 [ %5497, %5565 ], [ %5482, %5484 ]
  %5487 = phi float [ %5566, %5565 ], [ %5455, %5484 ]
  %5488 = phi float [ %5567, %5565 ], [ %5456, %5484 ]
  %5489 = phi float [ %5568, %5565 ], [ %5457, %5484 ]
  %5490 = phi float [ %5569, %5565 ], [ %5458, %5484 ]
  %5491 = phi float [ %5570, %5565 ], [ %5459, %5484 ]
  %5492 = phi float [ %5571, %5565 ], [ %5460, %5484 ]
  %5493 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5486)  ; FirstbitLo(value)
  %5494 = add i32 %5493, %5467
  %5495 = and i32 %5493, 31
  %5496 = shl i32 1, %5495
  %5497 = xor i32 %5496, %5486
  %5498 = mul i32 %5494, 112
  %5499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  %5503 = or i32 %5498, 12
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = add i32 %5498, 44
  %5507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = add i32 %5498, 48
  %5510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5509, i32 undef)  ; BufferLoad(srv,index,wot)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.ResRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.ResRet.f32 %5510, 2
  %5514 = add i32 %5498, 80
  %5515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5514, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 1
  %5517 = extractvalue %dx.types.ResRet.f32 %5515, 2
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5500, float %5501, float %5502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = select i1 %226, float %5516, float %5500
  %5520 = select i1 %226, float %5518, float %5501
  %5521 = select i1 %226, float %5517, float %5502
  %5522 = fsub fast float %5511, %174
  %5523 = fsub fast float %5512, %175
  %5524 = fsub fast float %5513, %176
  %5525 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %5522, float %5523, float %5524)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = call float @dx.op.unary.f32(i32 24, float %5525)  ; Sqrt(value)
  %5527 = fdiv fast float 1.000000e+00, %5526
  %5528 = fmul fast float %5527, %5522
  %5529 = fmul fast float %5527, %5523
  %5530 = fmul fast float %5527, %5524
  %5531 = fadd fast float %5526, %5505
  %5532 = fdiv fast float 1.000000e+00, %5531
  %5533 = fmul float %5508, %5532
  %5534 = fmul float %5533, %5533
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = and i32 %5496, %5482
  %5537 = icmp eq i32 %5536, 0
  br i1 %5537, label %5560, label %5538, !dx.controlflow.hints !91

; <label>:5538                                    ; preds = %5485
  %5539 = lshr i32 %5430, 5
  %5540 = lshr i32 %5431, 5
  %5541 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %5539, i32 %5540, i32 %5494, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5542 = extractvalue %dx.types.ResRet.i32 %5541, 0
  %5543 = and i32 %5542, 3
  %5544 = icmp eq i32 %5543, 0
  %5545 = select i1 %5544, float 1.000000e+00, float 0.000000e+00
  %5546 = icmp eq i32 %5543, 3
  br i1 %5546, label %5547, label %5560

; <label>:5547                                    ; preds = %5538
  %5548 = lshr i32 %5542, 10
  %5549 = and i32 %5548, 8160
  %5550 = and i32 %5431, 31
  %5551 = or i32 %5549, %5550
  %5552 = lshr i32 %5542, 1
  %5553 = and i32 %5552, 16352
  %5554 = and i32 %5430, 31
  %5555 = or i32 %5553, %5554
  %5556 = lshr i32 %5542, 23
  %5557 = and i32 %5556, 255
  %5558 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5555, i32 %5551, i32 %5557, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  br label %5560

; <label>:5560                                    ; preds = %5547, %5538, %5485
  %5561 = phi float [ %5559, %5547 ], [ %5545, %5538 ], [ 0.000000e+00, %5485 ]
  %5562 = call float @dx.op.binary.f32(i32 36, float %5561, float %5561)  ; FMin(a,b)
  %5563 = call float @dx.op.binary.f32(i32 36, float %5561, float %5562)  ; FMin(a,b)
  %5564 = fcmp fast ogt float %5563, 0.000000e+00
  br i1 %5564, label %5573, label %5565, !dx.controlflow.hints !92

; <label>:5565                                    ; preds = %5634, %5560
  %5566 = phi float [ %5487, %5560 ], [ %5776, %5634 ]
  %5567 = phi float [ %5488, %5560 ], [ %5777, %5634 ]
  %5568 = phi float [ %5489, %5560 ], [ %5778, %5634 ]
  %5569 = phi float [ %5490, %5560 ], [ %5767, %5634 ]
  %5570 = phi float [ %5491, %5560 ], [ %5768, %5634 ]
  %5571 = phi float [ %5492, %5560 ], [ %5769, %5634 ]
  %5572 = icmp eq i32 %5486, %5496
  br i1 %5572, label %5779, label %5485

; <label>:5573                                    ; preds = %5560
  %5574 = fmul fast float %5561, %5519
  %5575 = fmul fast float %5561, %5520
  %5576 = fmul fast float %5561, %5521
  %5577 = fsub fast float %5513, %3415
  %5578 = fcmp fast ogt float %5577, 0.000000e+00
  %5579 = fsub fast float %176, %3415
  %5580 = fcmp fast ogt float %5579, 0.000000e+00
  %5581 = xor i1 %5580, %5578
  %5582 = fsub fast float %3415, %5513
  %5583 = fmul fast float %5582, 2.000000e+00
  %5584 = fadd fast float %5583, %5513
  %5585 = select i1 %5581, float %5513, float %5584
  %5586 = fsub fast float %5585, %176
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5586, float %5522, float %5523, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.unary.f32(i32 25, float %5587)  ; Rsqrt(value)
  %5589 = fmul fast float %5588, %5522
  %5590 = fmul fast float %5588, %5523
  %5591 = fmul fast float %5588, %5586
  %5592 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fdiv fast float 1.000000e+00, %5593
  %5595 = fmul fast float %5594, %5592
  %5596 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5579, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fcmp fast ogt float %5596, 0.000000e+00
  %5598 = fcmp fast olt float %5596, 0.000000e+00
  %5599 = zext i1 %5597 to i32
  %5600 = zext i1 %5598 to i32
  %5601 = sub nsw i32 %5599, %5600
  %5602 = sitofp i32 %5601 to float
  %5603 = fsub fast float %5585, %3415
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5603, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fcmp fast ogt float %5604, 0.000000e+00
  %5606 = fcmp fast olt float %5604, 0.000000e+00
  %5607 = zext i1 %5605 to i32
  %5608 = zext i1 %5606 to i32
  %5609 = sub nsw i32 %5607, %5608
  %5610 = sitofp i32 %5609 to float
  %5611 = fcmp fast une float %5602, %5610
  br i1 %5611, label %5612, label %5622

; <label>:5612                                    ; preds = %5573
  %5613 = fmul fast float %5595, %5591
  %5614 = fmul fast float %5595, %5590
  %5615 = fmul fast float %5595, %5589
  %5616 = fmul fast float %5615, %5615
  %5617 = fmul fast float %5614, %5614
  %5618 = fadd fast float %5616, %5617
  %5619 = fmul fast float %5613, %5613
  %5620 = fadd fast float %5618, %5619
  %5621 = call float @dx.op.unary.f32(i32 24, float %5620)  ; Sqrt(value)
  br label %5634

; <label>:5622                                    ; preds = %5573
  %5623 = icmp slt i32 %5601, 0
  br i1 %5623, label %5624, label %5634

; <label>:5624                                    ; preds = %5622
  %5625 = fsub fast float %174, %5511
  %5626 = fsub fast float %175, %5512
  %5627 = fsub fast float %176, %5585
  %5628 = fmul fast float %5625, %5625
  %5629 = fmul fast float %5626, %5626
  %5630 = fadd fast float %5628, %5629
  %5631 = fmul fast float %5627, %5627
  %5632 = fadd fast float %5630, %5631
  %5633 = call float @dx.op.unary.f32(i32 24, float %5632)  ; Sqrt(value)
  br label %5634

; <label>:5634                                    ; preds = %5624, %5622, %5612
  %5635 = phi float [ %5621, %5612 ], [ %5633, %5624 ], [ 0.000000e+00, %5622 ]
  %5636 = and i1 %5580, %5578
  %5637 = fsub fast float -0.000000e+00, %5635
  %5638 = select i1 %5636, float -0.000000e+00, float %5637
  %5639 = fmul fast float %3416, 0x3FF7154760000000
  %5640 = fmul fast float %5639, %5638
  %5641 = fmul fast float %3417, 0x3FF7154760000000
  %5642 = fmul fast float %5641, %5638
  %5643 = fmul fast float %3418, 0x3FF7154760000000
  %5644 = fmul fast float %5643, %5638
  %5645 = call float @dx.op.unary.f32(i32 21, float %5640)  ; Exp(value)
  %5646 = call float @dx.op.unary.f32(i32 21, float %5642)  ; Exp(value)
  %5647 = call float @dx.op.unary.f32(i32 21, float %5644)  ; Exp(value)
  %5648 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5651 = fmul fast float %5574, %5648
  %5652 = fmul fast float %5575, %5649
  %5653 = fmul fast float %5576, %5650
  %5654 = fsub fast float %5528, %4207
  %5655 = fsub fast float %5529, %4206
  %5656 = fsub fast float %5530, %4205
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5655, float %5656, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 25, float %5657)  ; Rsqrt(value)
  %5659 = fmul fast float %5658, %5654
  %5660 = fmul fast float %5658, %5655
  %5661 = fmul fast float %5658, %5656
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %4214, float %4215, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.dot3.f32(i32 55, float %4204, float %4203, float %4202, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5665 = fmul fast float %5664, %5535
  %5666 = fmul fast float %5664, %5664
  %5667 = fmul fast float %5666, %5266
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = fmul fast float %5665, %5668
  %5670 = bitcast float %5525 to i32
  %5671 = ashr i32 %5670, 1
  %5672 = sub nsw i32 1597463007, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = fmul fast float %5673, %5522
  %5675 = fmul fast float %5673, %5523
  %5676 = fmul fast float %5673, %5524
  %5677 = fsub fast float %5674, %4207
  %5678 = fsub fast float %5675, %4206
  %5679 = fsub fast float %5676, %4205
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %5677, float %5678, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.unary.f32(i32 25, float %5680)  ; Rsqrt(value)
  %5682 = fmul fast float %5677, %5681
  %5683 = fmul fast float %5678, %5681
  %5684 = fmul fast float %5679, %5681
  %5685 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %5682, float %5683, float %5684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = fmul fast float %5685, %5685
  %5687 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %5688 = fsub fast float 1.000000e+00, %4254
  %5689 = fmul fast float %4236, %4236
  %5690 = fmul fast float %5689, %5688
  %5691 = fadd fast float %5690, %4254
  %5692 = bitcast float %5691 to i32
  %5693 = ashr i32 %5692, 1
  %5694 = add nsw i32 %5693, 532487669
  %5695 = bitcast i32 %5694 to float
  %5696 = fadd fast float %5695, %4236
  %5697 = fmul fast float %4254, %5686
  %5698 = fsub fast float 1.000000e+00, %5686
  %5699 = fadd fast float %5698, %5697
  %5700 = fmul fast float %5687, %5687
  %5701 = fmul fast float %5700, %5688
  %5702 = fadd fast float %5701, %4254
  %5703 = bitcast float %5702 to i32
  %5704 = ashr i32 %5703, 1
  %5705 = add nsw i32 %5704, 532487669
  %5706 = bitcast i32 %5705 to float
  %5707 = fadd fast float %5706, %5687
  %5708 = fmul fast float %5699, %5699
  %5709 = fmul fast float %5708, %5696
  %5710 = fmul fast float %5709, %5707
  %5711 = fdiv fast float 1.000000e+00, %5710
  %5712 = bitcast float %4254 to i32
  %5713 = sitofp i32 %5712 to float
  %5714 = fmul fast float %5713, 0x3FE7F73180000000
  %5715 = fadd fast float %5714, 0x41AFE27C40000000
  %5716 = fptosi float %5715 to i32
  %5717 = bitcast i32 %5716 to float
  %5718 = fmul fast float %5508, 0x3FD80E9D60000000
  %5719 = fmul fast float %5718, %5673
  %5720 = fadd fast float %5717, %5719
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = fmul fast float %4254, %5711
  %5725 = fmul fast float %5724, %5717
  %5726 = fmul fast float %5725, %5723
  %5727 = call float @dx.op.unary.f32(i32 6, float %5663)  ; FAbs(value)
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = bitcast float %5728 to i32
  %5730 = sitofp i32 %5729 to float
  %5731 = fmul fast float %5730, 5.000000e+00
  %5732 = fadd fast float %5731, 0xC1EFBF8940000000
  %5733 = fptosi float %5732 to i32
  %5734 = bitcast i32 %5733 to float
  %5735 = fsub fast float 1.000000e+00, %4208
  %5736 = fsub fast float 1.000000e+00, %4209
  %5737 = fsub fast float 1.000000e+00, %4234
  %5738 = fmul fast float %5734, %5735
  %5739 = fmul fast float %5734, %5736
  %5740 = fmul fast float %5734, %5737
  %5741 = fadd fast float %5738, %4208
  %5742 = fadd fast float %5739, %4209
  %5743 = fadd fast float %5740, %4234
  %5744 = fmul fast float %5662, 9.843750e-01
  %5745 = fadd fast float %5744, 7.812500e-03
  %5746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %5745, float %4362, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5747 = extractvalue %dx.types.ResRet.f32 %5746, 2
  %5748 = extractvalue %dx.types.ResRet.f32 %5746, 3
  %5749 = fmul fast float %5747, %4208
  %5750 = fmul fast float %5747, %4209
  %5751 = fmul fast float %5747, %4234
  %5752 = fadd fast float %5749, %5748
  %5753 = fadd fast float %5750, %5748
  %5754 = fadd fast float %5751, %5748
  %5755 = call float @dx.op.binary.f32(i32 35, float %5753, float %5754)  ; FMax(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5752, float %5755)  ; FMax(a,b)
  %5757 = fsub fast float 1.000000e+00, %5756
  %5758 = fmul fast float %5651, %847
  %5759 = fmul fast float %5758, %5669
  %5760 = fmul fast float %5759, %5757
  %5761 = fmul fast float %5652, %847
  %5762 = fmul fast float %5761, %5669
  %5763 = fmul fast float %5762, %5757
  %5764 = fmul fast float %5653, %847
  %5765 = fmul fast float %5764, %5669
  %5766 = fmul fast float %5765, %5757
  %5767 = fadd fast float %5760, %5490
  %5768 = fadd fast float %5763, %5491
  %5769 = fadd fast float %5766, %5492
  %5770 = fmul fast float %5759, %5741
  %5771 = fmul fast float %5770, %5726
  %5772 = fmul fast float %5762, %5742
  %5773 = fmul fast float %5772, %5726
  %5774 = fmul fast float %5765, %5743
  %5775 = fmul fast float %5774, %5726
  %5776 = fadd fast float %5771, %5487
  %5777 = fadd fast float %5773, %5488
  %5778 = fadd fast float %5775, %5489
  br label %5565

; <label>:5779                                    ; preds = %5565
  br label %5780

; <label>:5780                                    ; preds = %5779, %5453
  %5781 = phi float [ %5455, %5453 ], [ %5566, %5779 ]
  %5782 = phi float [ %5456, %5453 ], [ %5567, %5779 ]
  %5783 = phi float [ %5457, %5453 ], [ %5568, %5779 ]
  %5784 = phi float [ %5458, %5453 ], [ %5569, %5779 ]
  %5785 = phi float [ %5459, %5453 ], [ %5570, %5779 ]
  %5786 = phi float [ %5460, %5453 ], [ %5571, %5779 ]
  %5787 = add i32 %5454, 1
  %5788 = icmp ugt i32 %5787, %5450
  br i1 %5788, label %5789, label %5453

; <label>:5789                                    ; preds = %5780
  br label %5790

; <label>:5790                                    ; preds = %5789, %5429, %5419
  %5791 = phi float [ %5420, %5419 ], [ %5420, %5429 ], [ %5781, %5789 ]
  %5792 = phi float [ %5421, %5419 ], [ %5421, %5429 ], [ %5782, %5789 ]
  %5793 = phi float [ %5422, %5419 ], [ %5422, %5429 ], [ %5783, %5789 ]
  %5794 = phi float [ %5423, %5419 ], [ %5423, %5429 ], [ %5784, %5789 ]
  %5795 = phi float [ %5424, %5419 ], [ %5424, %5429 ], [ %5785, %5789 ]
  %5796 = phi float [ %5425, %5419 ], [ %5425, %5429 ], [ %5786, %5789 ]
  %5797 = call float @dx.op.unary.f32(i32 24, float %4211)  ; Sqrt(value)
  %5798 = call float @dx.op.unary.f32(i32 24, float %4212)  ; Sqrt(value)
  %5799 = call float @dx.op.unary.f32(i32 24, float %4213)  ; Sqrt(value)
  %5800 = fmul fast float %5797, %5794
  %5801 = fmul fast float %5798, %5795
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  br i1 %226, label %5804, label %5828

; <label>:5804                                    ; preds = %5790
  %5805 = fadd fast float %2875, %5796
  %5806 = fmul fast float %5805, %2854
  %5807 = fsub fast float 1.000000e+00, %2854
  %5808 = call float @dx.op.unary.f32(i32 7, float %5807)  ; Saturate(value)
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5811 = fmul fast float %5810, %5808
  %5812 = fsub fast float 1.000000e+00, %4236
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 0
  %5815 = fmul fast float %5814, %5812
  %5816 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %5817 = fmul fast float %5816, %4232
  %5818 = fadd fast float %5801, %5800
  %5819 = fmul fast float %5803, %5818
  %5820 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5821 = fadd fast float %5811, %5806
  %5822 = fsub fast float %5821, %5815
  %5823 = fadd fast float %5822, %5817
  %5824 = fsub fast float %5823, %5820
  %5825 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5826 = fmul fast float %5824, %5825
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  br label %5844

; <label>:5828                                    ; preds = %5790
  %5829 = fmul fast float %5799, %5796
  %5830 = fmul fast float %5803, %5800
  %5831 = fmul fast float %5803, %5801
  %5832 = fmul fast float %5829, %5803
  %5833 = add i32 %43, 356
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = and i32 %5835, 32
  %5837 = icmp eq i32 %5836, 0
  br i1 %5837, label %5844, label %5838

; <label>:5838                                    ; preds = %5828
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = fmul fast float %5840, 0x3FE99999A0000000
  %5842 = fadd fast float %5840, %5830
  %5843 = fadd fast float %5841, %5832
  br label %5844

; <label>:5844                                    ; preds = %5838, %5828, %5804
  %5845 = phi float [ %5819, %5804 ], [ %5842, %5838 ], [ %5830, %5828 ]
  %5846 = phi float [ %5827, %5804 ], [ %5831, %5838 ], [ %5831, %5828 ]
  %5847 = phi float [ 1.000000e+00, %5804 ], [ %5843, %5838 ], [ %5832, %5828 ]
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = fmul fast float %5849, %5792
  %5851 = fmul fast float %5849, %5793
  %5852 = fadd fast float %5792, %5791
  %5853 = select i1 %226, float %5852, float %5791
  %5854 = fmul float %5853, %5849
  %5855 = select i1 %226, float 0.000000e+00, float %5850
  %5856 = select i1 %226, float 0.000000e+00, float %5851
  %5857 = fmul fast float %5845, %5797
  %5858 = fmul fast float %5846, %5798
  %5859 = fmul fast float %5847, %5799
  %5860 = fadd fast float %5854, %5857
  %5861 = fadd fast float %5855, %5858
  %5862 = fadd fast float %5856, %5859
  %5863 = select i1 %226, float %5846, float %5861
  %5864 = select i1 %226, float %5847, float %5862
  %5865 = call float @dx.op.binary.f32(i32 36, float %5860, float 3.225500e+04)  ; FMin(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5863, float 3.225500e+04)  ; FMin(a,b)
  %5867 = call float @dx.op.binary.f32(i32 36, float %5864, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5865)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5866)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5867)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !47, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!47 = !{!48, !49, !50}
!48 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!49 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!50 = !{i32 2, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!51 = !{!52, !53, !54, !55}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !84}
!58 = !{!59, !82, null}
!59 = !{!60, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 11}
!63 = !{i32 1, !"COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 1, i8 0, !64}
!64 = !{i32 3, i32 14}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 5, i8 0, !68}
!72 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 6, i8 0, !70}
!73 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 7, i8 0, !68}
!74 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 8, i8 0, !70}
!75 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 9, i8 0, !66}
!76 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 10, i8 0, !70}
!77 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 11, i8 0, !68}
!78 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !61, i8 1, i32 1, i8 2, i32 12, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !61, i8 1, i32 1, i8 4, i32 13, i8 0, !79}
!81 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}

