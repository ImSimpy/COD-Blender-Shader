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
; shader hash: 16d49420e2e302112bd772b783a342d3
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
;                                   texture    byte         r/o     T21     t10,space1     1
;                                   texture    byte         r/o     T22     t68,space1     1
;                                   texture     f32          2d     T23      t0,space2     1
;                                   texture    byte         r/o     T24     t11,space1     1
;                                   texture    byte         r/o     T25     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %80, %59
  %82 = fmul fast float %80, %60
  %83 = fmul fast float %80, %61
  %84 = fmul fast float %60, %57
  %85 = fmul fast float %61, %56
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %61, %55
  %88 = fmul fast float %59, %57
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %59, %56
  %91 = fmul fast float %60, %55
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %58
  %94 = fmul fast float %89, %58
  %95 = fmul fast float %92, %58
  %96 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = bitcast float %96 to i32
  %98 = ashr i32 %97, 1
  %99 = sub nsw i32 1597250115, %98
  %100 = bitcast i32 %99 to float
  %101 = fmul fast float %100, %48
  %102 = fmul fast float %100, %49
  %103 = fmul fast float %100, %50
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast une float %105, 0.000000e+00
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %74, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %75, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = select i1 %106, float %117, float %121
  %125 = select i1 %106, float %118, float %122
  %126 = select i1 %106, float %119, float %123
  %127 = fmul fast float %124, %114
  %128 = fmul fast float %125, %114
  %129 = fmul fast float %126, %114
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = select i1 %106, float %131, float %135
  %139 = select i1 %106, float %132, float %136
  %140 = select i1 %106, float %133, float %137
  %141 = fmul fast float %138, %115
  %142 = fmul fast float %139, %115
  %143 = fmul fast float %140, %115
  %144 = fadd fast float %141, %127
  %145 = fadd fast float %142, %128
  %146 = fadd fast float %143, %129
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = select i1 %106, float %148, float %152
  %156 = select i1 %106, float %149, float %153
  %157 = select i1 %106, float %150, float %154
  %158 = fadd fast float %144, %155
  %159 = fadd fast float %145, %156
  %160 = fadd fast float %146, %157
  %161 = fmul fast float %158, %69
  %162 = fmul fast float %159, %69
  %163 = fmul fast float %160, %69
  %164 = shl i32 %30, 5
  %165 = add i32 %164, 4194304
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = extractvalue %dx.types.ResRet.i32 %166, 1
  %169 = extractvalue %dx.types.ResRet.i32 %166, 2
  %170 = extractvalue %dx.types.ResRet.i32 %166, 3
  %171 = add i32 %164, 4194320
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = extractvalue %dx.types.ResRet.i32 %172, 1
  %175 = bitcast i32 %173 to float
  %176 = bitcast i32 %174 to float
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %74
  %181 = fmul fast float %179, %75
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 114688
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float %180, float 0.000000e+00
  %187 = select i1 %185, float %181, float 0.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %26, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = fptoui float %190 to i32
  %192 = select i1 %185, i32 %191, i32 0
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  %197 = and i32 %194, 4
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %196, %198
  br i1 %199, label %200, label %209

; <label>:200                                     ; preds = %0
  %201 = fmul fast float %109, %75
  %202 = fmul fast float %108, %74
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %202, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fsub fast float 1.000000e+00, %204
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = fcmp fast olt float %205, %207
  br label %212

; <label>:209                                     ; preds = %0
  %210 = icmp eq i32 %197, 0
  %211 = and i1 %196, %210
  br label %212

; <label>:212                                     ; preds = %209, %200
  %213 = phi i1 [ %208, %200 ], [ %211, %209 ]
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fmul fast float %215, 0x3FE3C6EF40000000
  %217 = frem fast float %74, 2.560000e+02
  %218 = frem fast float %75, 2.560000e+02
  %219 = fptoui float %217 to i32
  %220 = fptoui float %218 to i32
  %221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fadd fast float %222, %216
  %224 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %225 = fcmp uge float %45, 0.000000e+00
  br i1 %225, label %226, label %229

; <label>:226                                     ; preds = %212
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %45, float %46, float %47, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  br label %229

; <label>:229                                     ; preds = %226, %212
  %230 = phi float [ %228, %226 ], [ 0.000000e+00, %212 ]
  %231 = add i32 %29, 156
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %29, 216
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %245, 8
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %245, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = add i32 %29, 36
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %29, 288
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = mul i32 %31, 100
  %274 = add i32 %273, 28
  %275 = add i32 %273, 40
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = add i32 %29, 172
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = shl i32 %280, 4
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %280, 7
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 22
  %288 = shl nuw nsw i32 %287, 5
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %29, 232
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %29, 52
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %29, 304
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = and i32 %277, 1
  %330 = icmp ne i32 %329, 0
  %331 = select i1 %330, float %322, float %283
  %332 = select i1 %330, float %325, float %286
  %333 = select i1 %330, float %328, float %289
  %334 = add i32 %273, 44
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fmul fast float %336, %331
  %338 = fmul fast float %336, %332
  %339 = fmul fast float %336, %333
  %340 = add i32 %273, 48
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %352 = and i32 %277, 8
  %353 = icmp ne i32 %352, 0
  %354 = select i1 %353, float %345, float %295
  %355 = select i1 %353, float %348, float %299
  %356 = select i1 %353, float %351, float %303
  %357 = add i32 %273, 52
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = and i32 %277, 2
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %365, float %361, float %308
  %367 = select i1 %365, float %363, float %310
  %368 = add i32 %273, 56
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %370, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = and i32 %277, 4
  %376 = icmp ne i32 %375, 0
  %377 = select i1 %376, float %372, float %315
  %378 = fmul float %377, 0x3F50624DE0000000
  %379 = select i1 %376, float %374, float %317
  %380 = fmul float %379, 0x3F50624DE0000000
  %381 = add i32 %273, 60
  %382 = add i32 %273, 32
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %29, 188
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %29, 248
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 255
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3F70101020000000
  %403 = lshr i32 %399, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %399, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = add i32 %29, 68
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %29, 320
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = shl i32 %426, 4
  %428 = and i32 %427, 32752
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %426, 7
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %426, 22
  %434 = shl nuw nsw i32 %433, 5
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = and i32 %384, 1
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %429, float %390
  %439 = select i1 %437, float %432, float %393
  %440 = select i1 %437, float %435, float %396
  %441 = add i32 %273, 64
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = fmul fast float %443, %438
  %445 = fmul fast float %443, %439
  %446 = fmul fast float %443, %440
  %447 = add i32 %273, 68
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = shl i32 %449, 4
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %449, 7
  %454 = and i32 %453, 32752
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %449, 22
  %457 = shl nuw nsw i32 %456, 5
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = and i32 %384, 8
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %460, float %452, float %402
  %462 = select i1 %460, float %455, float %406
  %463 = select i1 %460, float %458, float %410
  %464 = add i32 %273, 72
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %466, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = and i32 %384, 2
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %468, float %415
  %474 = select i1 %472, float %470, float %417
  %475 = add i32 %273, 76
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 65535
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %477, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = and i32 %384, 4
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %479, float %422
  %485 = fmul float %484, 0x3F50624DE0000000
  %486 = select i1 %483, float %481, float %424
  %487 = fmul float %486, 0x3F50624DE0000000
  %488 = add i32 %273, 80
  %489 = add i32 %273, 36
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = add i32 %29, 204
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = shl i32 %494, 4
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %494, 7
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %494, 22
  %502 = shl nuw nsw i32 %501, 5
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = add i32 %29, 264
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = lshr i32 %506, 8
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = lshr i32 %506, 16
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = add i32 %29, 84
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 65535
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = lshr i32 %520, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = add i32 %29, 336
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = shl i32 %533, 4
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %533, 7
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 22
  %541 = shl nuw nsw i32 %540, 5
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = and i32 %491, 1
  %544 = icmp ne i32 %543, 0
  %545 = select i1 %544, float %536, float %497
  %546 = select i1 %544, float %539, float %500
  %547 = select i1 %544, float %542, float %503
  %548 = add i32 %273, 84
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = fmul fast float %550, %545
  %552 = fmul fast float %550, %546
  %553 = fmul fast float %550, %547
  %554 = add i32 %273, 88
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = shl i32 %556, 4
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %556, 7
  %561 = and i32 %560, 32752
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %556, 22
  %564 = shl nuw nsw i32 %563, 5
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = and i32 %491, 8
  %567 = icmp ne i32 %566, 0
  %568 = select i1 %567, float %559, float %509
  %569 = select i1 %567, float %562, float %513
  %570 = select i1 %567, float %565, float %517
  %571 = add i32 %273, 92
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %573, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = and i32 %491, 2
  %579 = icmp ne i32 %578, 0
  %580 = select i1 %579, float %575, float %522
  %581 = select i1 %579, float %577, float %524
  %582 = add i32 %273, 96
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %584, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = and i32 %491, 4
  %590 = icmp ne i32 %589, 0
  %591 = select i1 %590, float %586, float %529
  %592 = fmul float %591, 0x3F50624DE0000000
  %593 = select i1 %590, float %588, float %531
  %594 = fmul float %593, 0x3F50624DE0000000
  %595 = add i32 %29, 348
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 32
  %599 = icmp eq i32 %598, 0
  %600 = and i32 %597, 64
  %601 = icmp eq i32 %600, 0
  %602 = and i32 %597, 128
  %603 = icmp eq i32 %602, 0
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 2
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %621, label %608

; <label>:608                                     ; preds = %229
  %609 = add i32 %29, 492
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %613, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = fmul fast float %615, %64
  %619 = fmul fast float %616, %65
  %620 = fmul fast float %617, %66
  br label %621

; <label>:621                                     ; preds = %608, %229
  %622 = phi float [ %66, %229 ], [ %620, %608 ]
  %623 = phi float [ %65, %229 ], [ %619, %608 ]
  %624 = phi float [ %64, %229 ], [ %618, %608 ]
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 2
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %648, label %629

; <label>:629                                     ; preds = %621
  %630 = add i32 %29, 44
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 1
  %634 = icmp ne i32 %633, 0
  %635 = select i1 %634, float %624, float 1.000000e+00
  %636 = add i32 %29, 60
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 1
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %623, float 1.000000e+00
  %642 = add i32 %29, 76
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 1
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %646, float %622, float 1.000000e+00
  br label %648

; <label>:648                                     ; preds = %629, %621
  %649 = phi float [ %622, %621 ], [ %647, %629 ]
  %650 = phi float [ %623, %621 ], [ %641, %629 ]
  %651 = phi float [ %624, %621 ], [ %635, %629 ]
  %652 = add i32 %29, 496
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = extractvalue %dx.types.ResRet.f32 %657, 1
  %660 = extractvalue %dx.types.ResRet.f32 %657, 2
  %661 = add i32 %29, 40
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %669, label %665

; <label>:665                                     ; preds = %648
  %666 = add i32 %273, 16
  %667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  br label %669

; <label>:669                                     ; preds = %665, %648
  %670 = phi float [ %668, %665 ], [ %230, %648 ]
  %671 = and i32 %663, 536870912
  %672 = icmp ne i32 %671, 0
  %673 = add i32 %29, 116
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = shl i32 %675, 4
  %677 = and i32 %676, 32752
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = lshr i32 %675, 7
  %680 = and i32 %679, 32752
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = fmul fast float %678, 5.000000e-01
  %683 = select i1 %672, float 4.000000e+00, float 1.000000e+00
  %684 = select i1 %672, float 1.000000e+00, float 0.000000e+00
  %685 = fadd fast float %670, -5.000000e-01
  %686 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %687 = fsub fast float 5.000000e-01, %686
  %688 = call float @dx.op.binary.f32(i32 36, float %682, float %687)  ; FMin(a,b)
  %689 = fadd fast float %658, -1.000000e+00
  %690 = fadd fast float %689, %670
  %691 = fadd fast float %690, %688
  %692 = fmul fast float %688, 2.000000e+00
  %693 = fdiv fast float %691, %692
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = fmul fast float %694, %683
  %696 = fmul fast float %694, %684
  %697 = fsub fast float 1.000000e+00, %696
  %698 = fmul fast float %695, %697
  %699 = bitcast float %698 to i32
  %700 = sitofp i32 %699 to float
  %701 = fadd fast float %700, 0xC1CFBF8940000000
  %702 = fmul fast float %701, %681
  %703 = fadd fast float %702, 0x41CFBF8940000000
  %704 = fptosi float %703 to i32
  %705 = bitcast i32 %704 to float
  %706 = add i32 %29, 56
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = icmp slt i32 %708, 0
  br i1 %709, label %714, label %710

; <label>:710                                     ; preds = %669
  %711 = add i32 %273, 20
  %712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  br label %714

; <label>:714                                     ; preds = %710, %669
  %715 = phi float [ %713, %710 ], [ %230, %669 ]
  %716 = and i32 %708, 536870912
  %717 = icmp ne i32 %716, 0
  %718 = add i32 %29, 132
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = shl i32 %720, 4
  %722 = and i32 %721, 32752
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = lshr i32 %720, 7
  %725 = and i32 %724, 32752
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = fmul fast float %723, 5.000000e-01
  %728 = select i1 %717, float 4.000000e+00, float 1.000000e+00
  %729 = select i1 %717, float 1.000000e+00, float 0.000000e+00
  %730 = fadd fast float %715, -5.000000e-01
  %731 = call float @dx.op.unary.f32(i32 6, float %730)  ; FAbs(value)
  %732 = fsub fast float 5.000000e-01, %731
  %733 = call float @dx.op.binary.f32(i32 36, float %727, float %732)  ; FMin(a,b)
  %734 = fadd fast float %659, -1.000000e+00
  %735 = fadd fast float %734, %715
  %736 = fadd fast float %735, %733
  %737 = fmul fast float %733, 2.000000e+00
  %738 = fdiv fast float %736, %737
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fmul fast float %739, %728
  %741 = fmul fast float %739, %729
  %742 = fsub fast float 1.000000e+00, %741
  %743 = fmul fast float %740, %742
  %744 = bitcast float %743 to i32
  %745 = sitofp i32 %744 to float
  %746 = fadd fast float %745, 0xC1CFBF8940000000
  %747 = fmul fast float %746, %726
  %748 = fadd fast float %747, 0x41CFBF8940000000
  %749 = fptosi float %748 to i32
  %750 = bitcast i32 %749 to float
  %751 = add i32 %29, 72
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %759, label %755

; <label>:755                                     ; preds = %714
  %756 = add i32 %273, 24
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  br label %759

; <label>:759                                     ; preds = %755, %714
  %760 = phi float [ %758, %755 ], [ %230, %714 ]
  %761 = and i32 %753, 536870912
  %762 = icmp ne i32 %761, 0
  %763 = add i32 %29, 148
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = shl i32 %765, 4
  %767 = and i32 %766, 32752
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %765, 7
  %770 = and i32 %769, 32752
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = fmul fast float %768, 5.000000e-01
  %773 = select i1 %762, float 4.000000e+00, float 1.000000e+00
  %774 = select i1 %762, float 1.000000e+00, float 0.000000e+00
  %775 = fadd fast float %760, -5.000000e-01
  %776 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %777 = fsub fast float 5.000000e-01, %776
  %778 = call float @dx.op.binary.f32(i32 36, float %772, float %777)  ; FMin(a,b)
  %779 = fadd fast float %660, -1.000000e+00
  %780 = fadd fast float %779, %760
  %781 = fadd fast float %780, %778
  %782 = fmul fast float %778, 2.000000e+00
  %783 = fdiv fast float %781, %782
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = fmul fast float %784, %773
  %786 = fmul fast float %784, %774
  %787 = fsub fast float 1.000000e+00, %786
  %788 = fmul fast float %785, %787
  %789 = bitcast float %788 to i32
  %790 = sitofp i32 %789 to float
  %791 = fadd fast float %790, 0xC1CFBF8940000000
  %792 = fmul fast float %791, %771
  %793 = fadd fast float %792, 0x41CFBF8940000000
  %794 = fptosi float %793 to i32
  %795 = bitcast i32 %794 to float
  %796 = call float @dx.op.dot4.f32(i32 56, float 0.000000e+00, float %705, float %750, float %795, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %798 = and i32 %663, 268435456
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %805, label %800

; <label>:800                                     ; preds = %759
  %801 = and i32 %663, 1073741824
  %802 = icmp ne i32 %801, 0
  %803 = select i1 %802, float %797, float %705
  %804 = fmul fast float %803, %651
  br label %805

; <label>:805                                     ; preds = %800, %759
  %806 = phi float [ %651, %759 ], [ %804, %800 ]
  %807 = and i32 %708, 268435456
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %814, label %809

; <label>:809                                     ; preds = %805
  %810 = and i32 %708, 1073741824
  %811 = icmp ne i32 %810, 0
  %812 = select i1 %811, float %797, float %750
  %813 = fmul fast float %812, %650
  br label %814

; <label>:814                                     ; preds = %809, %805
  %815 = phi float [ %650, %805 ], [ %813, %809 ]
  %816 = and i32 %753, 268435456
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %823, label %818

; <label>:818                                     ; preds = %814
  %819 = and i32 %753, 1073741824
  %820 = icmp ne i32 %819, 0
  %821 = select i1 %820, float %797, float %795
  %822 = fmul fast float %821, %649
  br label %823

; <label>:823                                     ; preds = %818, %814
  %824 = phi float [ %649, %814 ], [ %822, %818 ]
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = lshr i32 %826, 20
  %828 = and i32 %827, 3
  %829 = add nuw nsw i32 %828, 1
  %830 = add i32 %29, 24
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = add i32 %29, 28
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = or i32 %835, %832
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %1296, label %838

; <label>:838                                     ; preds = %823
  %839 = and i32 %832, 262144
  %840 = icmp ne i32 %839, 0
  %841 = select i1 %840, float %35, float 1.000000e+00
  %842 = select i1 %840, float %36, float 0.000000e+00
  %843 = select i1 %840, float %37, float 0.000000e+00
  %844 = select i1 %840, float %38, float 1.000000e+00
  %845 = select i1 %840, float %39, float %62
  %846 = select i1 %840, float %40, float %63
  %847 = add i32 %29, 284
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = lshr i32 %849, 16
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = fmul fast float %851, 0x3F50624DE0000000
  %853 = add i32 %29, 88
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = lshr i32 %855, 16
  %857 = and i32 %856, 255
  %858 = lshr i32 %855, 24
  %859 = add i32 %29, 292
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 65535
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = lshr i32 %861, 16
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = add i32 %29, 32
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %866, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = lshr i32 %868, 22
  %870 = shl nuw nsw i32 %869, 5
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = shl i32 %868, 4
  %873 = and i32 %872, 32752
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = lshr i32 %868, 7
  %876 = and i32 %875, 32752
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %880 = fmul fast float %879, 1.000000e+03
  %881 = fmul fast float %271, %880
  %882 = call float @dx.op.unary.f32(i32 22, float %881)  ; Frc(value)
  %883 = fadd fast float %882, %261
  %884 = fmul fast float %272, %880
  %885 = call float @dx.op.unary.f32(i32 22, float %884)  ; Frc(value)
  %886 = fadd fast float %885, %263
  %887 = fmul fast float %852, %880
  %888 = call float @dx.op.unary.f32(i32 22, float %887)  ; Frc(value)
  %889 = fmul fast float %888, 0x401921FB60000000
  %890 = fadd fast float %889, %871
  %891 = call float @dx.op.unary.f32(i32 13, float %890)  ; Sin(value)
  %892 = call float @dx.op.unary.f32(i32 12, float %890)  ; Cos(value)
  %893 = fsub fast float -0.000000e+00, %891
  %894 = fadd fast float %845, -5.000000e-01
  %895 = fadd fast float %846, -5.000000e-01
  %896 = fmul fast float %863, %894
  %897 = fmul fast float %865, %895
  %898 = fadd fast float %896, 5.000000e-01
  %899 = fadd fast float %897, 5.000000e-01
  %900 = fmul fast float %874, %898
  %901 = fmul fast float %877, %899
  %902 = fmul fast float %892, %900
  %903 = call float @dx.op.tertiary.f32(i32 46, float %893, float %901, float %902)  ; FMad(a,b,c)
  %904 = fmul fast float %891, %900
  %905 = call float @dx.op.tertiary.f32(i32 46, float %892, float %901, float %904)  ; FMad(a,b,c)
  %906 = fadd fast float %883, %903
  %907 = fadd fast float %886, %905
  %908 = icmp ugt i32 %857, 1
  %909 = icmp ugt i32 %855, 33554431
  %910 = or i1 %909, %908
  br i1 %910, label %911, label %936

; <label>:911                                     ; preds = %838
  %912 = add i32 %29, 228
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = lshr i32 %914, 16
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = fmul fast float %879, %916
  %918 = call float @dx.op.unary.f32(i32 22, float %917)  ; Frc(value)
  %919 = mul nuw nsw i32 %857, %858
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %918, %920
  %922 = call float @dx.op.unary.f32(i32 27, float %921)  ; Round_ni(value)
  %923 = fptoui float %922 to i32
  %924 = urem i32 %923, %857
  %925 = udiv i32 %923, %858
  %926 = call float @dx.op.unary.f32(i32 22, float %906)  ; Frc(value)
  %927 = call float @dx.op.unary.f32(i32 22, float %907)  ; Frc(value)
  %928 = uitofp i32 %924 to float
  %929 = uitofp i32 %925 to float
  %930 = fadd fast float %926, %928
  %931 = fadd fast float %927, %929
  %932 = uitofp i32 %857 to float
  %933 = uitofp i32 %858 to float
  %934 = fdiv fast float %930, %932
  %935 = fdiv fast float %931, %933
  br label %936

; <label>:936                                     ; preds = %911, %838
  %937 = phi float [ %934, %911 ], [ %906, %838 ]
  %938 = phi float [ %935, %911 ], [ %907, %838 ]
  %939 = and i32 %832, 16
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1137, label %941

; <label>:941                                     ; preds = %936
  %942 = add i32 %29, 376
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %944, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %946, %dx.types.Handle %70, float %937, float %938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = extractvalue %dx.types.ResRet.f32 %947, 3
  %952 = and i32 %855, 255
  %953 = uitofp i32 %952 to float
  %954 = lshr i32 %855, 8
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %951, %953
  %958 = fadd fast float %957, %956
  %959 = fmul fast float %958, 0x3F70101000000000
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 512
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %972, label %964

; <label>:964                                     ; preds = %941
  %965 = add i32 %29, 460
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = add i32 %967, 0
  %969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %969, %dx.types.Handle %71, float %937, float %938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  br label %972

; <label>:972                                     ; preds = %964, %941
  %973 = phi float [ %971, %964 ], [ 1.000000e+00, %941 ]
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 33554432
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1084, label %978

; <label>:978                                     ; preds = %972
  %979 = add i32 %29, 224
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 65535
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %981, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = add i32 %29, 228
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = and i32 %988, 65535
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 24
  %994 = uitofp i32 %993 to float
  %995 = fmul fast float %994, 0x3F70101020000000
  %996 = and i32 %992, 255
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %997, 0x3F70101020000000
  %999 = lshr i32 %992, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101020000000
  %1003 = lshr i32 %992, 16
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = fmul fast float %1005, 0x3F70101020000000
  %1007 = add i32 %29, 220
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 24
  %1011 = uitofp i32 %1010 to float
  %1012 = fmul fast float %1011, 0x3F70101020000000
  %1013 = and i32 %1009, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F70101020000000
  %1016 = lshr i32 %1009, 8
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = fmul fast float %1018, 0x3F70101020000000
  %1020 = lshr i32 %1009, 16
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = fmul fast float %1022, 0x3F70101020000000
  %1024 = bitcast float %948 to i32
  %1025 = ashr i32 %1024, 1
  %1026 = sub nsw i32 1597463174, %1025
  %1027 = bitcast i32 %1026 to float
  %1028 = fmul fast float %948, 5.000000e-01
  %1029 = fmul fast float %1027, %1027
  %1030 = fmul fast float %1029, %1028
  %1031 = fsub fast float 1.500000e+00, %1030
  %1032 = fmul fast float %1027, %948
  %1033 = fmul fast float %1032, %1031
  %1034 = bitcast float %949 to i32
  %1035 = ashr i32 %1034, 1
  %1036 = sub nsw i32 1597463174, %1035
  %1037 = bitcast i32 %1036 to float
  %1038 = fmul fast float %949, 5.000000e-01
  %1039 = fmul fast float %1037, %1037
  %1040 = fmul fast float %1039, %1038
  %1041 = fsub fast float 1.500000e+00, %1040
  %1042 = fmul fast float %1037, %949
  %1043 = fmul fast float %1042, %1041
  %1044 = bitcast float %950 to i32
  %1045 = ashr i32 %1044, 1
  %1046 = sub nsw i32 1597463174, %1045
  %1047 = bitcast i32 %1046 to float
  %1048 = fmul fast float %950, 5.000000e-01
  %1049 = fmul fast float %1047, %1047
  %1050 = fmul fast float %1049, %1048
  %1051 = fsub fast float 1.500000e+00, %1050
  %1052 = fmul fast float %1047, %950
  %1053 = fmul fast float %1052, %1051
  %1054 = fsub fast float %1033, %1015
  %1055 = fsub fast float %1043, %1019
  %1056 = fsub fast float %1053, %1023
  %1057 = fmul fast float %1054, %983
  %1058 = fmul fast float %1055, %985
  %1059 = fmul fast float %1056, %990
  %1060 = fadd fast float %1057, %998
  %1061 = fadd fast float %1058, %1002
  %1062 = fadd fast float %1059, %1006
  %1063 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1064 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1065 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1066 = fmul fast float %1063, %1063
  %1067 = fmul fast float %1064, %1064
  %1068 = fmul fast float %1065, %1065
  %1069 = fsub fast float %1066, %948
  %1070 = fsub fast float %1067, %949
  %1071 = fsub fast float %1068, %950
  %1072 = fmul fast float %1069, %973
  %1073 = fmul fast float %1070, %973
  %1074 = fmul fast float %1071, %973
  %1075 = fadd fast float %1072, %948
  %1076 = fadd fast float %1073, %949
  %1077 = fadd fast float %1074, %950
  %1078 = fadd fast float %995, %959
  %1079 = fsub fast float %1078, %1012
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = fsub fast float %1080, %959
  %1082 = fmul fast float %1081, %973
  %1083 = fadd fast float %1082, %959
  br label %1137

; <label>:1084                                    ; preds = %972
  %1085 = and i32 %975, 134217728
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1121, label %1087

; <label>:1087                                    ; preds = %1084
  %1088 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1089 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1090 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1091 = fadd fast float %1088, -5.000000e-01
  %1092 = fadd fast float %1089, -5.000000e-01
  %1093 = fadd fast float %1090, -5.000000e-01
  %1094 = fmul fast float %1091, %973
  %1095 = fmul fast float %1092, %973
  %1096 = fmul fast float %1093, %973
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = call float @dx.op.unary.f32(i32 24, float %948)  ; Sqrt(value)
  %1101 = call float @dx.op.unary.f32(i32 24, float %949)  ; Sqrt(value)
  %1102 = call float @dx.op.unary.f32(i32 24, float %950)  ; Sqrt(value)
  %1103 = fmul fast float %1097, 2.000000e+00
  %1104 = fsub fast float 1.000000e+00, %1103
  %1105 = fmul fast float %1104, %1100
  %1106 = fadd fast float %1105, %1103
  %1107 = fmul fast float %1106, %1100
  %1108 = fmul fast float %1098, 2.000000e+00
  %1109 = fsub fast float 1.000000e+00, %1108
  %1110 = fmul fast float %1109, %1101
  %1111 = fadd fast float %1110, %1108
  %1112 = fmul fast float %1111, %1101
  %1113 = fmul fast float %1099, 2.000000e+00
  %1114 = fsub fast float 1.000000e+00, %1113
  %1115 = fmul fast float %1114, %1102
  %1116 = fadd fast float %1115, %1113
  %1117 = fmul fast float %1116, %1102
  %1118 = fmul fast float %1107, %1107
  %1119 = fmul fast float %1112, %1112
  %1120 = fmul fast float %1117, %1117
  br label %1137

; <label>:1121                                    ; preds = %1084
  %1122 = fmul fast float %248, %248
  %1123 = fmul fast float %252, %252
  %1124 = fmul fast float %256, %256
  %1125 = fadd fast float %1122, -1.000000e+00
  %1126 = fadd fast float %1123, -1.000000e+00
  %1127 = fadd fast float %1124, -1.000000e+00
  %1128 = fmul fast float %973, %1125
  %1129 = fmul fast float %973, %1126
  %1130 = fmul fast float %973, %1127
  %1131 = fadd fast float %1128, 1.000000e+00
  %1132 = fadd fast float %1129, 1.000000e+00
  %1133 = fadd fast float %1130, 1.000000e+00
  %1134 = fmul fast float %1131, %948
  %1135 = fmul fast float %1132, %949
  %1136 = fmul fast float %1133, %950
  br label %1137

; <label>:1137                                    ; preds = %1121, %1087, %978, %936
  %1138 = phi float [ %1083, %978 ], [ %959, %1087 ], [ %959, %1121 ], [ 0x3FA23C0BE0000000, %936 ]
  %1139 = phi float [ %1075, %978 ], [ %1118, %1087 ], [ %1134, %1121 ], [ 1.000000e+00, %936 ]
  %1140 = phi float [ %1076, %978 ], [ %1119, %1087 ], [ %1135, %1121 ], [ 1.000000e+00, %936 ]
  %1141 = phi float [ %1077, %978 ], [ %1120, %1087 ], [ %1136, %1121 ], [ 1.000000e+00, %936 ]
  %1142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.i32 %1142, 1
  %1144 = and i32 %1143, 1
  %1145 = icmp ne i32 %1144, 0
  %1146 = add i32 %29, 356
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 32
  %1150 = icmp ne i32 %1149, 0
  %1151 = and i1 %1145, %1150
  %1152 = select i1 %1151, float 1.000000e+00, float %1139
  %1153 = select i1 %1151, float 0x3FD3333340000000, float %1140
  %1154 = select i1 %1151, float 0x3FD3333340000000, float %1141
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 32
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1231, label %1159

; <label>:1159                                    ; preds = %1137
  %1160 = add i32 %29, 92
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = add i32 %29, 392
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %70, float %937, float %938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1173 = and i32 %1162, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = lshr i32 %1162, 8
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = lshr i32 %1162, 16
  %1179 = and i32 %1178, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F70101000000000
  %1182 = fmul fast float %1169, %1174
  %1183 = fadd fast float %1182, %1177
  %1184 = fmul fast float %1183, 0x3F70101000000000
  %1185 = fadd fast float %1170, -5.000000e-01
  %1186 = fadd fast float %1172, -5.000000e-01
  %1187 = fmul fast float %1185, %1181
  %1188 = fmul fast float %1186, %1181
  %1189 = fadd fast float %1187, 5.000000e-01
  %1190 = fadd fast float %1188, 5.000000e-01
  %1191 = fmul fast float %1189, 2.000000e+00
  %1192 = fadd fast float %1191, -1.000000e+00
  %1193 = fmul fast float %1190, 2.000000e+00
  %1194 = fadd fast float %1193, -1.000000e+00
  %1195 = fadd fast float %1192, %1194
  %1196 = fmul fast float %1195, 5.000000e-01
  %1197 = fsub fast float %1192, %1194
  %1198 = fmul fast float %1197, 5.000000e-01
  %1199 = call float @dx.op.unary.f32(i32 6, float %1196)  ; FAbs(value)
  %1200 = fsub fast float 1.000000e+00, %1199
  %1201 = call float @dx.op.unary.f32(i32 6, float %1198)  ; FAbs(value)
  %1202 = fsub fast float %1200, %1201
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1196, float %1198, float %1202, float %1196, float %1198, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = call float @dx.op.unary.f32(i32 25, float %1203)  ; Rsqrt(value)
  %1205 = fmul fast float %1196, %1204
  %1206 = fmul fast float %1198, %1204
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 67108864
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1227, label %1211

; <label>:1211                                    ; preds = %1159
  %1212 = add i32 %29, 280
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1214, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fsub fast float %1184, %1222
  %1224 = fmul fast float %1223, %1216
  %1225 = fadd fast float %1224, %1220
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  br label %1227

; <label>:1227                                    ; preds = %1211, %1159
  %1228 = phi float [ %1226, %1211 ], [ %1184, %1159 ]
  %1229 = call float @dx.op.dot2.f32(i32 54, float %1205, float %1206, float %841, float %842)  ; Dot2(ax,ay,bx,by)
  %1230 = call float @dx.op.dot2.f32(i32 54, float %1205, float %1206, float %843, float %844)  ; Dot2(ax,ay,bx,by)
  br label %1231

; <label>:1231                                    ; preds = %1227, %1137
  %1232 = phi float [ %1228, %1227 ], [ 0x3FD6666660000000, %1137 ]
  %1233 = phi float [ %1229, %1227 ], [ 0.000000e+00, %1137 ]
  %1234 = phi float [ %1230, %1227 ], [ 0.000000e+00, %1137 ]
  %1235 = phi float [ %1171, %1227 ], [ 1.000000e+00, %1137 ]
  %1236 = add i32 %29, 160
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 22
  %1240 = shl nuw nsw i32 %1239, 5
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 64
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1279, label %1246

; <label>:1246                                    ; preds = %1231
  %1247 = add i32 %29, 408
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 131072
  %1255 = icmp eq i32 %1254, 0
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %70, float %937, float %938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = fmul fast float %1257, %236
  %1261 = fmul fast float %1258, %239
  %1262 = fmul fast float %1259, %242
  br i1 %1255, label %1269, label %1263

; <label>:1263                                    ; preds = %1246
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = fmul fast float %1265, %1260
  %1267 = fmul fast float %1265, %1261
  %1268 = fmul fast float %1265, %1262
  br label %1269

; <label>:1269                                    ; preds = %1263, %1246
  %1270 = phi float [ %1266, %1263 ], [ %1260, %1246 ]
  %1271 = phi float [ %1267, %1263 ], [ %1261, %1246 ]
  %1272 = phi float [ %1268, %1263 ], [ %1262, %1246 ]
  %1273 = fmul fast float %1270, %1241
  %1274 = select i1 %213, float %1273, float %1270
  %1275 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1271, float %1272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1276 = select i1 %213, float 0.000000e+00, float %1270
  %1277 = select i1 %213, float %1275, float %1271
  %1278 = select i1 %213, float 0.000000e+00, float %1272
  br label %1279

; <label>:1279                                    ; preds = %1269, %1231
  %1280 = phi float [ %1276, %1269 ], [ 0.000000e+00, %1231 ]
  %1281 = phi float [ %1277, %1269 ], [ 0.000000e+00, %1231 ]
  %1282 = phi float [ %1278, %1269 ], [ 0.000000e+00, %1231 ]
  %1283 = add i32 %29, 96
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = lshr i32 %1285, 8
  %1289 = and i32 %1288, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1153, float %1154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = fmul fast float %1290, %1291
  %1293 = fadd fast float %1292, %1287
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  br label %1296

; <label>:1296                                    ; preds = %1279, %823
  %1297 = phi float [ 0.000000e+00, %823 ], [ %1233, %1279 ]
  %1298 = phi float [ 0.000000e+00, %823 ], [ %1234, %1279 ]
  %1299 = phi float [ 0.000000e+00, %823 ], [ %1280, %1279 ]
  %1300 = phi float [ 0.000000e+00, %823 ], [ %1281, %1279 ]
  %1301 = phi float [ 0.000000e+00, %823 ], [ %1282, %1279 ]
  %1302 = phi float [ 0.000000e+00, %823 ], [ %1152, %1279 ]
  %1303 = phi float [ 0.000000e+00, %823 ], [ %1153, %1279 ]
  %1304 = phi float [ 0.000000e+00, %823 ], [ %1154, %1279 ]
  %1305 = phi float [ 0.000000e+00, %823 ], [ %1138, %1279 ]
  %1306 = phi float [ 0.000000e+00, %823 ], [ 1.000000e+00, %1279 ]
  %1307 = phi float [ 0.000000e+00, %823 ], [ %1232, %1279 ]
  %1308 = phi float [ 0.000000e+00, %823 ], [ %1235, %1279 ]
  %1309 = phi float [ 0.000000e+00, %823 ], [ %1295, %1279 ]
  br i1 %599, label %2034, label %1310

; <label>:1310                                    ; preds = %1296
  %1311 = icmp ult i32 %829, 2
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = add i32 %29, 44
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = or i32 %1316, %1313
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %2034, label %1319

; <label>:1319                                    ; preds = %1310
  %1320 = and i32 %1313, 262144
  %1321 = icmp ne i32 %1320, 0
  %1322 = select i1 %1321, float %35, float 1.000000e+00
  %1323 = select i1 %1321, float %36, float 0.000000e+00
  %1324 = select i1 %1321, float %37, float 0.000000e+00
  %1325 = select i1 %1321, float %38, float 1.000000e+00
  %1326 = select i1 %1321, float %39, float %62
  %1327 = select i1 %1321, float %40, float %63
  %1328 = add i32 %29, 300
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = lshr i32 %1330, 16
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = fmul fast float %1332, 0x3F50624DE0000000
  %1334 = add i32 %29, 104
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 16
  %1338 = and i32 %1337, 255
  %1339 = lshr i32 %1336, 24
  %1340 = add i32 %29, 308
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 65535
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = lshr i32 %1342, 16
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = add i32 %29, 48
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = lshr i32 %1349, 22
  %1351 = shl nuw nsw i32 %1350, 5
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = shl i32 %1349, 4
  %1354 = and i32 %1353, 32752
  %1355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1354)  ; LegacyF16ToF32(value)
  %1356 = lshr i32 %1349, 7
  %1357 = and i32 %1356, 32752
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 3
  %1361 = fmul fast float %1360, 1.000000e+03
  %1362 = fmul fast float %1361, %378
  %1363 = call float @dx.op.unary.f32(i32 22, float %1362)  ; Frc(value)
  %1364 = fadd fast float %1363, %366
  %1365 = fmul fast float %1361, %380
  %1366 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1367 = fadd fast float %1366, %367
  %1368 = fmul fast float %1333, %1361
  %1369 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1370 = fmul fast float %1369, 0x401921FB60000000
  %1371 = fadd fast float %1370, %1352
  %1372 = call float @dx.op.unary.f32(i32 13, float %1371)  ; Sin(value)
  %1373 = call float @dx.op.unary.f32(i32 12, float %1371)  ; Cos(value)
  %1374 = fsub fast float -0.000000e+00, %1372
  %1375 = fadd fast float %1326, -5.000000e-01
  %1376 = fadd fast float %1327, -5.000000e-01
  %1377 = fmul fast float %1344, %1375
  %1378 = fmul fast float %1346, %1376
  %1379 = fadd fast float %1377, 5.000000e-01
  %1380 = fadd fast float %1378, 5.000000e-01
  %1381 = fmul fast float %1355, %1379
  %1382 = fmul fast float %1358, %1380
  %1383 = fmul fast float %1373, %1381
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1382, float %1383)  ; FMad(a,b,c)
  %1385 = fmul fast float %1372, %1381
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1373, float %1382, float %1385)  ; FMad(a,b,c)
  %1387 = fadd fast float %1364, %1384
  %1388 = fadd fast float %1367, %1386
  %1389 = icmp ugt i32 %1338, 1
  %1390 = icmp ugt i32 %1336, 33554431
  %1391 = or i1 %1390, %1389
  br i1 %1391, label %1392, label %1417

; <label>:1392                                    ; preds = %1319
  %1393 = add i32 %29, 244
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = lshr i32 %1395, 16
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = fmul fast float %1360, %1397
  %1399 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1400 = mul nuw nsw i32 %1338, %1339
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1399, %1401
  %1403 = call float @dx.op.unary.f32(i32 27, float %1402)  ; Round_ni(value)
  %1404 = fptoui float %1403 to i32
  %1405 = urem i32 %1404, %1338
  %1406 = udiv i32 %1404, %1339
  %1407 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1408 = call float @dx.op.unary.f32(i32 22, float %1388)  ; Frc(value)
  %1409 = uitofp i32 %1405 to float
  %1410 = uitofp i32 %1406 to float
  %1411 = fadd fast float %1407, %1409
  %1412 = fadd fast float %1408, %1410
  %1413 = uitofp i32 %1338 to float
  %1414 = uitofp i32 %1339 to float
  %1415 = fdiv fast float %1411, %1413
  %1416 = fdiv fast float %1412, %1414
  br label %1417

; <label>:1417                                    ; preds = %1392, %1319
  %1418 = phi float [ %1415, %1392 ], [ %1387, %1319 ]
  %1419 = phi float [ %1416, %1392 ], [ %1388, %1319 ]
  %1420 = and i32 %1313, 256
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1467, label %1422

; <label>:1422                                    ; preds = %1417
  %1423 = add i32 %29, 444
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1425, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1427, %dx.types.Handle %71, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = shl i32 %1431, 4
  %1433 = and i32 %1432, 32752
  %1434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1433)  ; LegacyF16ToF32(value)
  %1435 = lshr i32 %1431, 7
  %1436 = and i32 %1435, 32752
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = fsub fast float 1.000000e+00, %806
  %1439 = call float @dx.op.binary.f32(i32 35, float %1438, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1440 = bitcast float %806 to i32
  %1441 = sitofp i32 %1440 to float
  %1442 = fadd fast float %1441, 0xC1CFBF8940000000
  %1443 = fmul fast float %1437, %1442
  %1444 = fadd fast float %1443, 0x41CFBF8940000000
  %1445 = fptosi float %1444 to i32
  %1446 = bitcast i32 %1445 to float
  %1447 = bitcast float %1439 to i32
  %1448 = sitofp i32 %1447 to float
  %1449 = fadd fast float %1448, 0xC1CFBF8940000000
  %1450 = fmul fast float %1449, %1437
  %1451 = fadd fast float %1450, 0x41CFBF8940000000
  %1452 = fptosi float %1451 to i32
  %1453 = bitcast i32 %1452 to float
  %1454 = fmul fast float %1446, %1434
  %1455 = fmul fast float %1453, %1434
  %1456 = fsub fast float %1439, %1454
  %1457 = fadd fast float %1455, %1439
  %1458 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1459 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1460 = fsub fast float %1429, %1458
  %1461 = fsub fast float %1459, %1458
  %1462 = bitcast float %1461 to i32
  %1463 = sub nsw i32 2129859010, %1462
  %1464 = bitcast i32 %1463 to float
  %1465 = fmul fast float %1464, %1460
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  br label %1467

; <label>:1467                                    ; preds = %1422, %1417
  %1468 = phi float [ %1466, %1422 ], [ %806, %1417 ]
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 128
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1489, label %1473

; <label>:1473                                    ; preds = %1467
  %1474 = add i32 %29, 428
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1478, %dx.types.Handle %71, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 524288
  %1484 = icmp ne i32 %1483, 0
  %1485 = fcmp fast ogt float %1480, 0x3FE0101020000000
  %1486 = select i1 %1485, float 1.000000e+00, float 0.000000e+00
  %1487 = select i1 %1484, float %1486, float %1480
  %1488 = fmul fast float %1487, %1468
  br label %1489

; <label>:1489                                    ; preds = %1473, %1467
  %1490 = phi float [ %1488, %1473 ], [ %1468, %1467 ]
  %1491 = fcmp fast ult float %1490, 0x3F70101020000000
  br i1 %1491, label %2034, label %1492

; <label>:1492                                    ; preds = %1489
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 16
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %1695, label %1497

; <label>:1497                                    ; preds = %1492
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %29, 380
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %1502, 0
  %1504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1504, %dx.types.Handle %70, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.ResRet.f32 %1505, 3
  %1510 = and i32 %1499, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = lshr i32 %1499, 8
  %1513 = and i32 %1512, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1509, %1511
  %1516 = fadd fast float %1515, %1514
  %1517 = fmul fast float %1516, 0x3F70101000000000
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 512
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1530, label %1522

; <label>:1522                                    ; preds = %1497
  %1523 = add i32 %29, 464
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %1525, 0
  %1527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1527, %dx.types.Handle %71, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  br label %1530

; <label>:1530                                    ; preds = %1522, %1497
  %1531 = phi float [ %1529, %1522 ], [ 1.000000e+00, %1497 ]
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 33554432
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1642, label %1536

; <label>:1536                                    ; preds = %1530
  %1537 = add i32 %29, 240
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 65535
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = lshr i32 %1539, 16
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = add i32 %29, 244
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 65535
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = lshr i32 %1550, 24
  %1552 = uitofp i32 %1551 to float
  %1553 = fmul fast float %1552, 0x3F70101020000000
  %1554 = and i32 %1550, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = lshr i32 %1550, 8
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = lshr i32 %1550, 16
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = fmul fast float %1563, 0x3F70101020000000
  %1565 = add i32 %29, 236
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = lshr i32 %1567, 24
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = and i32 %1567, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1567, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = lshr i32 %1567, 16
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = bitcast float %1506 to i32
  %1583 = ashr i32 %1582, 1
  %1584 = sub nsw i32 1597463174, %1583
  %1585 = bitcast i32 %1584 to float
  %1586 = fmul fast float %1506, 5.000000e-01
  %1587 = fmul fast float %1585, %1585
  %1588 = fmul fast float %1587, %1586
  %1589 = fsub fast float 1.500000e+00, %1588
  %1590 = fmul fast float %1585, %1506
  %1591 = fmul fast float %1590, %1589
  %1592 = bitcast float %1507 to i32
  %1593 = ashr i32 %1592, 1
  %1594 = sub nsw i32 1597463174, %1593
  %1595 = bitcast i32 %1594 to float
  %1596 = fmul fast float %1507, 5.000000e-01
  %1597 = fmul fast float %1595, %1595
  %1598 = fmul fast float %1597, %1596
  %1599 = fsub fast float 1.500000e+00, %1598
  %1600 = fmul fast float %1595, %1507
  %1601 = fmul fast float %1600, %1599
  %1602 = bitcast float %1508 to i32
  %1603 = ashr i32 %1602, 1
  %1604 = sub nsw i32 1597463174, %1603
  %1605 = bitcast i32 %1604 to float
  %1606 = fmul fast float %1508, 5.000000e-01
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1607, %1606
  %1609 = fsub fast float 1.500000e+00, %1608
  %1610 = fmul fast float %1605, %1508
  %1611 = fmul fast float %1610, %1609
  %1612 = fsub fast float %1591, %1573
  %1613 = fsub fast float %1601, %1577
  %1614 = fsub fast float %1611, %1581
  %1615 = fmul fast float %1612, %1541
  %1616 = fmul fast float %1613, %1543
  %1617 = fmul fast float %1614, %1548
  %1618 = fadd fast float %1615, %1556
  %1619 = fadd fast float %1616, %1560
  %1620 = fadd fast float %1617, %1564
  %1621 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1622 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1623 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1624 = fmul fast float %1621, %1621
  %1625 = fmul fast float %1622, %1622
  %1626 = fmul fast float %1623, %1623
  %1627 = fsub fast float %1624, %1506
  %1628 = fsub fast float %1625, %1507
  %1629 = fsub fast float %1626, %1508
  %1630 = fmul fast float %1627, %1531
  %1631 = fmul fast float %1628, %1531
  %1632 = fmul fast float %1629, %1531
  %1633 = fadd fast float %1630, %1506
  %1634 = fadd fast float %1631, %1507
  %1635 = fadd fast float %1632, %1508
  %1636 = fadd fast float %1553, %1517
  %1637 = fsub fast float %1636, %1570
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fsub fast float %1638, %1517
  %1640 = fmul fast float %1639, %1531
  %1641 = fadd fast float %1640, %1517
  br label %1695

; <label>:1642                                    ; preds = %1530
  %1643 = and i32 %1533, 134217728
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1679, label %1645

; <label>:1645                                    ; preds = %1642
  %1646 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %1647 = call float @dx.op.unary.f32(i32 24, float %355)  ; Sqrt(value)
  %1648 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fadd fast float %1647, -5.000000e-01
  %1651 = fadd fast float %1648, -5.000000e-01
  %1652 = fmul fast float %1649, %1531
  %1653 = fmul fast float %1650, %1531
  %1654 = fmul fast float %1651, %1531
  %1655 = fadd fast float %1652, 5.000000e-01
  %1656 = fadd fast float %1653, 5.000000e-01
  %1657 = fadd fast float %1654, 5.000000e-01
  %1658 = call float @dx.op.unary.f32(i32 24, float %1506)  ; Sqrt(value)
  %1659 = call float @dx.op.unary.f32(i32 24, float %1507)  ; Sqrt(value)
  %1660 = call float @dx.op.unary.f32(i32 24, float %1508)  ; Sqrt(value)
  %1661 = fmul fast float %1655, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1658
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1658
  %1666 = fmul fast float %1656, 2.000000e+00
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = fmul fast float %1667, %1659
  %1669 = fadd fast float %1668, %1666
  %1670 = fmul fast float %1669, %1659
  %1671 = fmul fast float %1657, 2.000000e+00
  %1672 = fsub fast float 1.000000e+00, %1671
  %1673 = fmul fast float %1672, %1660
  %1674 = fadd fast float %1673, %1671
  %1675 = fmul fast float %1674, %1660
  %1676 = fmul fast float %1665, %1665
  %1677 = fmul fast float %1670, %1670
  %1678 = fmul fast float %1675, %1675
  br label %1695

; <label>:1679                                    ; preds = %1642
  %1680 = fmul fast float %354, %354
  %1681 = fmul fast float %355, %355
  %1682 = fmul fast float %356, %356
  %1683 = fadd fast float %1680, -1.000000e+00
  %1684 = fadd fast float %1681, -1.000000e+00
  %1685 = fadd fast float %1682, -1.000000e+00
  %1686 = fmul fast float %1531, %1683
  %1687 = fmul fast float %1531, %1684
  %1688 = fmul fast float %1531, %1685
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fmul fast float %1689, %1506
  %1693 = fmul fast float %1690, %1507
  %1694 = fmul fast float %1691, %1508
  br label %1695

; <label>:1695                                    ; preds = %1679, %1645, %1536, %1492
  %1696 = phi float [ %1641, %1536 ], [ %1517, %1645 ], [ %1517, %1679 ], [ 0x3FA23C0BE0000000, %1492 ]
  %1697 = phi float [ %1633, %1536 ], [ %1676, %1645 ], [ %1692, %1679 ], [ 1.000000e+00, %1492 ]
  %1698 = phi float [ %1634, %1536 ], [ %1677, %1645 ], [ %1693, %1679 ], [ 1.000000e+00, %1492 ]
  %1699 = phi float [ %1635, %1536 ], [ %1678, %1645 ], [ %1694, %1679 ], [ 1.000000e+00, %1492 ]
  %1700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.i32 %1700, 1
  %1702 = and i32 %1701, 1
  %1703 = icmp ne i32 %1702, 0
  %1704 = add i32 %29, 356
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = and i32 %1706, 32
  %1708 = icmp ne i32 %1707, 0
  %1709 = and i1 %1703, %1708
  %1710 = select i1 %1709, float 1.000000e+00, float %1697
  %1711 = select i1 %1709, float 0x3FD3333340000000, float %1698
  %1712 = select i1 %1709, float 0x3FD3333340000000, float %1699
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, 32
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1789, label %1717

; <label>:1717                                    ; preds = %1695
  %1718 = add i32 %29, 108
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = add i32 %29, 396
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = add i32 %1723, 0
  %1725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1725, %dx.types.Handle %70, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = extractvalue %dx.types.ResRet.f32 %1726, 3
  %1731 = and i32 %1720, 255
  %1732 = uitofp i32 %1731 to float
  %1733 = lshr i32 %1720, 8
  %1734 = and i32 %1733, 255
  %1735 = uitofp i32 %1734 to float
  %1736 = lshr i32 %1720, 16
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = fmul fast float %1738, 0x3F70101000000000
  %1740 = fmul fast float %1727, %1732
  %1741 = fadd fast float %1740, %1735
  %1742 = fmul fast float %1741, 0x3F70101000000000
  %1743 = fadd fast float %1728, -5.000000e-01
  %1744 = fadd fast float %1730, -5.000000e-01
  %1745 = fmul fast float %1743, %1739
  %1746 = fmul fast float %1744, %1739
  %1747 = fadd fast float %1745, 5.000000e-01
  %1748 = fadd fast float %1746, 5.000000e-01
  %1749 = fmul fast float %1747, 2.000000e+00
  %1750 = fadd fast float %1749, -1.000000e+00
  %1751 = fmul fast float %1748, 2.000000e+00
  %1752 = fadd fast float %1751, -1.000000e+00
  %1753 = fadd fast float %1750, %1752
  %1754 = fmul fast float %1753, 5.000000e-01
  %1755 = fsub fast float %1750, %1752
  %1756 = fmul fast float %1755, 5.000000e-01
  %1757 = call float @dx.op.unary.f32(i32 6, float %1754)  ; FAbs(value)
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = call float @dx.op.unary.f32(i32 6, float %1756)  ; FAbs(value)
  %1760 = fsub fast float %1758, %1759
  %1761 = call float @dx.op.dot3.f32(i32 55, float %1754, float %1756, float %1760, float %1754, float %1756, float %1760)  ; Dot3(ax,ay,az,bx,by,bz)
  %1762 = call float @dx.op.unary.f32(i32 25, float %1761)  ; Rsqrt(value)
  %1763 = fmul fast float %1754, %1762
  %1764 = fmul fast float %1756, %1762
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 67108864
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1785, label %1769

; <label>:1769                                    ; preds = %1717
  %1770 = add i32 %29, 296
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 65535
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 65535
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = lshr i32 %1772, 16
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = fsub fast float %1742, %1780
  %1782 = fmul fast float %1781, %1774
  %1783 = fadd fast float %1782, %1778
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  br label %1785

; <label>:1785                                    ; preds = %1769, %1717
  %1786 = phi float [ %1784, %1769 ], [ %1742, %1717 ]
  %1787 = call float @dx.op.dot2.f32(i32 54, float %1763, float %1764, float %1322, float %1323)  ; Dot2(ax,ay,bx,by)
  %1788 = call float @dx.op.dot2.f32(i32 54, float %1763, float %1764, float %1324, float %1325)  ; Dot2(ax,ay,bx,by)
  br label %1789

; <label>:1789                                    ; preds = %1785, %1695
  %1790 = phi float [ %1786, %1785 ], [ 0x3FD6666660000000, %1695 ]
  %1791 = phi float [ %1787, %1785 ], [ 0.000000e+00, %1695 ]
  %1792 = phi float [ %1788, %1785 ], [ 0.000000e+00, %1695 ]
  %1793 = phi float [ %1729, %1785 ], [ 1.000000e+00, %1695 ]
  %1794 = add i32 %29, 176
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = lshr i32 %1796, 22
  %1798 = shl nuw nsw i32 %1797, 5
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 64
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1837, label %1804

; <label>:1804                                    ; preds = %1789
  %1805 = add i32 %29, 412
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1807, 0
  %1809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 131072
  %1813 = icmp eq i32 %1812, 0
  %1814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1809, %dx.types.Handle %70, float %1418, float %1419, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1818 = fmul fast float %337, %1815
  %1819 = fmul fast float %338, %1816
  %1820 = fmul fast float %339, %1817
  br i1 %1813, label %1827, label %1821

; <label>:1821                                    ; preds = %1804
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = fmul fast float %1823, %1818
  %1825 = fmul fast float %1823, %1819
  %1826 = fmul fast float %1823, %1820
  br label %1827

; <label>:1827                                    ; preds = %1821, %1804
  %1828 = phi float [ %1824, %1821 ], [ %1818, %1804 ]
  %1829 = phi float [ %1825, %1821 ], [ %1819, %1804 ]
  %1830 = phi float [ %1826, %1821 ], [ %1820, %1804 ]
  %1831 = fmul fast float %1828, %1799
  %1832 = select i1 %213, float %1831, float %1828
  %1833 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1829, float %1830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1834 = select i1 %213, float 0.000000e+00, float %1828
  %1835 = select i1 %213, float %1833, float %1829
  %1836 = select i1 %213, float 0.000000e+00, float %1830
  br label %1837

; <label>:1837                                    ; preds = %1827, %1789
  %1838 = phi float [ %1834, %1827 ], [ 0.000000e+00, %1789 ]
  %1839 = phi float [ %1835, %1827 ], [ 0.000000e+00, %1789 ]
  %1840 = phi float [ %1836, %1827 ], [ 0.000000e+00, %1789 ]
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = add i32 %29, 112
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 255
  %1847 = uitofp i32 %1846 to float
  %1848 = lshr i32 %1845, 8
  %1849 = and i32 %1848, 255
  %1850 = uitofp i32 %1849 to float
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1711, float %1712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = fmul fast float %1850, %1851
  %1853 = fadd fast float %1852, %1847
  %1854 = fmul fast float %1853, 0x3F70101020000000
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br i1 %1311, label %1856, label %1864

; <label>:1856                                    ; preds = %1837
  %1857 = fsub fast float 1.000000e+00, %1490
  %1858 = fmul fast float %1857, %1302
  %1859 = fmul fast float %1857, %1303
  %1860 = fmul fast float %1857, %1304
  %1861 = fmul fast float %1857, %1299
  %1862 = fmul fast float %1857, %1300
  %1863 = fmul fast float %1857, %1301
  br label %1864

; <label>:1864                                    ; preds = %1856, %1837
  %1865 = phi float [ %1861, %1856 ], [ %1299, %1837 ]
  %1866 = phi float [ %1862, %1856 ], [ %1300, %1837 ]
  %1867 = phi float [ %1863, %1856 ], [ %1301, %1837 ]
  %1868 = phi float [ %1858, %1856 ], [ %1302, %1837 ]
  %1869 = phi float [ %1859, %1856 ], [ %1303, %1837 ]
  %1870 = phi float [ %1860, %1856 ], [ %1304, %1837 ]
  %1871 = and i32 %1842, 3
  %1872 = icmp eq i32 %1871, 3
  br i1 %1872, label %1951, label %1873

; <label>:1873                                    ; preds = %1864
  %1874 = and i32 %1842, 16
  %1875 = icmp ne i32 %1874, 0
  %1876 = select i1 %1875, float %1490, float 0.000000e+00
  %1877 = icmp eq i32 %1871, 0
  br i1 %1877, label %1878, label %1906

; <label>:1878                                    ; preds = %1873
  %1879 = and i32 %1842, 64
  %1880 = icmp ne i32 %1879, 0
  %1881 = select i1 %1880, float %1490, float 0.000000e+00
  %1882 = fsub fast float %1710, %1868
  %1883 = fsub fast float %1711, %1869
  %1884 = fsub fast float %1712, %1870
  %1885 = fmul fast float %1876, %1882
  %1886 = fmul fast float %1876, %1883
  %1887 = fmul fast float %1876, %1884
  %1888 = fadd fast float %1885, %1868
  %1889 = fadd fast float %1886, %1869
  %1890 = fadd fast float %1887, %1870
  %1891 = fsub fast float %1696, %1305
  %1892 = fmul fast float %1876, %1891
  %1893 = fadd fast float %1892, %1305
  %1894 = fsub fast float %1838, %1865
  %1895 = fsub fast float %1839, %1866
  %1896 = fsub fast float %1840, %1867
  %1897 = fmul fast float %1881, %1894
  %1898 = fmul fast float %1881, %1895
  %1899 = fmul fast float %1881, %1896
  %1900 = fadd fast float %1897, %1865
  %1901 = fadd fast float %1898, %1866
  %1902 = fadd fast float %1899, %1867
  %1903 = fsub fast float %1855, %1309
  %1904 = fmul fast float %1876, %1903
  %1905 = fadd fast float %1904, %1309
  br label %1951

; <label>:1906                                    ; preds = %1873
  %1907 = icmp eq i32 %1871, 1
  br i1 %1907, label %1908, label %1921

; <label>:1908                                    ; preds = %1906
  %1909 = fadd fast float %1710, -1.000000e+00
  %1910 = fadd fast float %1711, -1.000000e+00
  %1911 = fadd fast float %1712, -1.000000e+00
  %1912 = fmul fast float %1876, %1909
  %1913 = fmul fast float %1876, %1910
  %1914 = fmul fast float %1876, %1911
  %1915 = fadd fast float %1912, 1.000000e+00
  %1916 = fadd fast float %1913, 1.000000e+00
  %1917 = fadd fast float %1914, 1.000000e+00
  %1918 = fmul fast float %1915, %1868
  %1919 = fmul fast float %1916, %1869
  %1920 = fmul fast float %1917, %1870
  br label %1951

; <label>:1921                                    ; preds = %1906
  %1922 = icmp eq i32 %1871, 2
  br i1 %1922, label %1923, label %1951

; <label>:1923                                    ; preds = %1921
  %1924 = call float @dx.op.unary.f32(i32 24, float %1710)  ; Sqrt(value)
  %1925 = call float @dx.op.unary.f32(i32 24, float %1711)  ; Sqrt(value)
  %1926 = call float @dx.op.unary.f32(i32 24, float %1712)  ; Sqrt(value)
  %1927 = fadd fast float %1924, -5.000000e-01
  %1928 = fadd fast float %1925, -5.000000e-01
  %1929 = fadd fast float %1926, -5.000000e-01
  %1930 = fmul fast float %1927, %1876
  %1931 = fmul fast float %1928, %1876
  %1932 = fmul fast float %1929, %1876
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = fadd fast float %1932, 5.000000e-01
  %1936 = fmul fast float %1933, 2.000000e+00
  %1937 = fsub fast float 1.000000e+00, %1936
  %1938 = fmul fast float %1937, %1868
  %1939 = fadd fast float %1938, %1936
  %1940 = fmul fast float %1939, %1868
  %1941 = fmul fast float %1934, 2.000000e+00
  %1942 = fsub fast float 1.000000e+00, %1941
  %1943 = fmul fast float %1942, %1869
  %1944 = fadd fast float %1943, %1941
  %1945 = fmul fast float %1944, %1869
  %1946 = fmul fast float %1935, 2.000000e+00
  %1947 = fsub fast float 1.000000e+00, %1946
  %1948 = fmul fast float %1947, %1870
  %1949 = fadd fast float %1948, %1946
  %1950 = fmul fast float %1949, %1870
  br label %1951

; <label>:1951                                    ; preds = %1923, %1921, %1908, %1878, %1864
  %1952 = phi float [ %1865, %1864 ], [ %1865, %1923 ], [ %1865, %1921 ], [ %1865, %1908 ], [ %1900, %1878 ]
  %1953 = phi float [ %1866, %1864 ], [ %1866, %1923 ], [ %1866, %1921 ], [ %1866, %1908 ], [ %1901, %1878 ]
  %1954 = phi float [ %1867, %1864 ], [ %1867, %1923 ], [ %1867, %1921 ], [ %1867, %1908 ], [ %1902, %1878 ]
  %1955 = phi float [ %1868, %1864 ], [ %1940, %1923 ], [ %1868, %1921 ], [ %1918, %1908 ], [ %1888, %1878 ]
  %1956 = phi float [ %1869, %1864 ], [ %1945, %1923 ], [ %1869, %1921 ], [ %1919, %1908 ], [ %1889, %1878 ]
  %1957 = phi float [ %1870, %1864 ], [ %1950, %1923 ], [ %1870, %1921 ], [ %1920, %1908 ], [ %1890, %1878 ]
  %1958 = phi float [ %1305, %1864 ], [ %1305, %1923 ], [ %1305, %1921 ], [ %1305, %1908 ], [ %1893, %1878 ]
  %1959 = phi float [ %1309, %1864 ], [ %1309, %1923 ], [ %1309, %1921 ], [ %1309, %1908 ], [ %1905, %1878 ]
  %1960 = and i32 %1842, 12
  %1961 = icmp eq i32 %1960, 12
  br i1 %1961, label %2034, label %1962

; <label>:1962                                    ; preds = %1951
  %1963 = and i32 %1842, 2097184
  %1964 = icmp eq i32 %1963, 2097184
  %1965 = select i1 %1964, float %1490, float 0.000000e+00
  %1966 = and i32 %1842, 4194336
  %1967 = icmp eq i32 %1966, 4194336
  %1968 = select i1 %1967, float %1490, float 0.000000e+00
  %1969 = and i32 %1842, 8388640
  %1970 = icmp eq i32 %1969, 8388640
  %1971 = select i1 %1970, float %1490, float 0.000000e+00
  %1972 = icmp eq i32 %1960, 0
  br i1 %1972, label %1973, label %1986

; <label>:1973                                    ; preds = %1962
  %1974 = fsub fast float %1791, %1297
  %1975 = fsub fast float %1792, %1298
  %1976 = fmul fast float %1965, %1974
  %1977 = fmul fast float %1965, %1975
  %1978 = fadd fast float %1976, %1297
  %1979 = fadd fast float %1977, %1298
  %1980 = fsub fast float %1793, %1308
  %1981 = fmul fast float %1968, %1980
  %1982 = fadd fast float %1981, %1308
  %1983 = fsub fast float %1790, %1307
  %1984 = fmul fast float %1971, %1983
  %1985 = fadd fast float %1984, %1307
  br label %2034

; <label>:1986                                    ; preds = %1962
  %1987 = icmp eq i32 %1960, 4
  br i1 %1987, label %1988, label %2020

; <label>:1988                                    ; preds = %1986
  %1989 = fmul fast float %1965, %1791
  %1990 = fmul fast float %1965, %1792
  %1991 = fadd fast float %1989, %1297
  %1992 = fadd fast float %1990, %1298
  %1993 = call float @dx.op.binary.f32(i32 36, float %1308, float %1793)  ; FMin(a,b)
  %1994 = fsub fast float %1993, %1308
  %1995 = fmul fast float %1994, %1968
  %1996 = fadd fast float %1995, %1308
  %1997 = fadd fast float %1790, %1307
  %1998 = fmul fast float %1997, 0x3FF337FAE0000000
  %1999 = fmul fast float %1307, %1307
  %2000 = fmul fast float %1790, %1790
  %2001 = fadd fast float %2000, %1999
  %2002 = fmul fast float %2001, 0x3FE5152B00000000
  %2003 = fmul fast float %1307, 0xBFCC1F85E0000000
  %2004 = fmul fast float %2003, %1790
  %2005 = fadd fast float %2004, 0xBFE1363700000000
  %2006 = fadd fast float %2005, %1998
  %2007 = fsub fast float %2006, %2002
  %2008 = fmul fast float %1997, 0x3FBA6F0D00000000
  %2009 = fmul fast float %2001, 0x3FD0432880000000
  %2010 = fmul fast float %1307, 0xBFEF110800000000
  %2011 = fmul fast float %2010, %1790
  %2012 = fadd fast float %2011, 1.000000e+00
  %2013 = fsub fast float %2012, %2008
  %2014 = fadd fast float %2013, %2009
  %2015 = fdiv fast float %2007, %2014
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = fsub fast float %2016, %1307
  %2018 = fmul fast float %2017, %1971
  %2019 = fadd fast float %2018, %1307
  br label %2034

; <label>:2020                                    ; preds = %1986
  %2021 = icmp eq i32 %1960, 8
  br i1 %2021, label %2022, label %2034

; <label>:2022                                    ; preds = %2020
  %2023 = fmul fast float %1965, %1791
  %2024 = fmul fast float %1965, %1792
  %2025 = fadd fast float %2023, %1297
  %2026 = fadd fast float %2024, %1298
  %2027 = call float @dx.op.binary.f32(i32 36, float %1308, float %1793)  ; FMin(a,b)
  %2028 = fsub fast float %2027, %1308
  %2029 = fmul fast float %2028, %1968
  %2030 = fadd fast float %2029, %1308
  %2031 = fsub fast float %1790, %1307
  %2032 = fmul fast float %1971, %2031
  %2033 = fadd fast float %2032, %1307
  br label %2034

; <label>:2034                                    ; preds = %2022, %2020, %1988, %1973, %1951, %1489, %1310, %1296
  %2035 = phi float [ %1297, %1951 ], [ %1297, %1489 ], [ %1297, %1296 ], [ %2025, %2022 ], [ %1297, %2020 ], [ %1991, %1988 ], [ %1978, %1973 ], [ %1297, %1310 ]
  %2036 = phi float [ %1298, %1951 ], [ %1298, %1489 ], [ %1298, %1296 ], [ %2026, %2022 ], [ %1298, %2020 ], [ %1992, %1988 ], [ %1979, %1973 ], [ %1298, %1310 ]
  %2037 = phi float [ %1952, %1951 ], [ %1299, %1489 ], [ %1299, %1296 ], [ %1952, %2022 ], [ %1952, %2020 ], [ %1952, %1988 ], [ %1952, %1973 ], [ %1299, %1310 ]
  %2038 = phi float [ %1953, %1951 ], [ %1300, %1489 ], [ %1300, %1296 ], [ %1953, %2022 ], [ %1953, %2020 ], [ %1953, %1988 ], [ %1953, %1973 ], [ %1300, %1310 ]
  %2039 = phi float [ %1954, %1951 ], [ %1301, %1489 ], [ %1301, %1296 ], [ %1954, %2022 ], [ %1954, %2020 ], [ %1954, %1988 ], [ %1954, %1973 ], [ %1301, %1310 ]
  %2040 = phi float [ %1955, %1951 ], [ %1302, %1489 ], [ %1302, %1296 ], [ %1955, %2022 ], [ %1955, %2020 ], [ %1955, %1988 ], [ %1955, %1973 ], [ %1302, %1310 ]
  %2041 = phi float [ %1956, %1951 ], [ %1303, %1489 ], [ %1303, %1296 ], [ %1956, %2022 ], [ %1956, %2020 ], [ %1956, %1988 ], [ %1956, %1973 ], [ %1303, %1310 ]
  %2042 = phi float [ %1957, %1951 ], [ %1304, %1489 ], [ %1304, %1296 ], [ %1957, %2022 ], [ %1957, %2020 ], [ %1957, %1988 ], [ %1957, %1973 ], [ %1304, %1310 ]
  %2043 = phi float [ %1958, %1951 ], [ %1305, %1489 ], [ %1305, %1296 ], [ %1958, %2022 ], [ %1958, %2020 ], [ %1958, %1988 ], [ %1958, %1973 ], [ %1305, %1310 ]
  %2044 = phi float [ %1307, %1951 ], [ %1307, %1489 ], [ %1307, %1296 ], [ %2033, %2022 ], [ %1307, %2020 ], [ %2019, %1988 ], [ %1985, %1973 ], [ %1307, %1310 ]
  %2045 = phi float [ %1308, %1951 ], [ %1308, %1489 ], [ %1308, %1296 ], [ %2030, %2022 ], [ %1308, %2020 ], [ %1996, %1988 ], [ %1982, %1973 ], [ %1308, %1310 ]
  %2046 = phi float [ %1959, %1951 ], [ %1309, %1489 ], [ %1309, %1296 ], [ %1959, %2022 ], [ %1959, %2020 ], [ %1959, %1988 ], [ %1959, %1973 ], [ %1309, %1310 ]
  br i1 %601, label %2771, label %2047

; <label>:2047                                    ; preds = %2034
  %2048 = icmp ult i32 %829, 3
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %29, 60
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = or i32 %2053, %2050
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2771, label %2056

; <label>:2056                                    ; preds = %2047
  %2057 = and i32 %2050, 262144
  %2058 = icmp ne i32 %2057, 0
  %2059 = select i1 %2058, float %35, float 1.000000e+00
  %2060 = select i1 %2058, float %36, float 0.000000e+00
  %2061 = select i1 %2058, float %37, float 0.000000e+00
  %2062 = select i1 %2058, float %38, float 1.000000e+00
  %2063 = select i1 %2058, float %39, float %62
  %2064 = select i1 %2058, float %40, float %63
  %2065 = add i32 %29, 316
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = lshr i32 %2067, 16
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = fmul fast float %2069, 0x3F50624DE0000000
  %2071 = add i32 %29, 120
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = lshr i32 %2073, 16
  %2075 = and i32 %2074, 255
  %2076 = lshr i32 %2073, 24
  %2077 = add i32 %29, 324
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 65535
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = lshr i32 %2079, 16
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = add i32 %29, 64
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = lshr i32 %2086, 22
  %2088 = shl nuw nsw i32 %2087, 5
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = shl i32 %2086, 4
  %2091 = and i32 %2090, 32752
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = lshr i32 %2086, 7
  %2094 = and i32 %2093, 32752
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 3
  %2098 = fmul fast float %2097, 1.000000e+03
  %2099 = fmul fast float %2098, %485
  %2100 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2101 = fadd fast float %2100, %473
  %2102 = fmul fast float %2098, %487
  %2103 = call float @dx.op.unary.f32(i32 22, float %2102)  ; Frc(value)
  %2104 = fadd fast float %2103, %474
  %2105 = fmul fast float %2070, %2098
  %2106 = call float @dx.op.unary.f32(i32 22, float %2105)  ; Frc(value)
  %2107 = fmul fast float %2106, 0x401921FB60000000
  %2108 = fadd fast float %2107, %2089
  %2109 = call float @dx.op.unary.f32(i32 13, float %2108)  ; Sin(value)
  %2110 = call float @dx.op.unary.f32(i32 12, float %2108)  ; Cos(value)
  %2111 = fsub fast float -0.000000e+00, %2109
  %2112 = fadd fast float %2063, -5.000000e-01
  %2113 = fadd fast float %2064, -5.000000e-01
  %2114 = fmul fast float %2081, %2112
  %2115 = fmul fast float %2083, %2113
  %2116 = fadd fast float %2114, 5.000000e-01
  %2117 = fadd fast float %2115, 5.000000e-01
  %2118 = fmul fast float %2092, %2116
  %2119 = fmul fast float %2095, %2117
  %2120 = fmul fast float %2110, %2118
  %2121 = call float @dx.op.tertiary.f32(i32 46, float %2111, float %2119, float %2120)  ; FMad(a,b,c)
  %2122 = fmul fast float %2109, %2118
  %2123 = call float @dx.op.tertiary.f32(i32 46, float %2110, float %2119, float %2122)  ; FMad(a,b,c)
  %2124 = fadd fast float %2101, %2121
  %2125 = fadd fast float %2104, %2123
  %2126 = icmp ugt i32 %2075, 1
  %2127 = icmp ugt i32 %2073, 33554431
  %2128 = or i1 %2127, %2126
  br i1 %2128, label %2129, label %2154

; <label>:2129                                    ; preds = %2056
  %2130 = add i32 %29, 260
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = lshr i32 %2132, 16
  %2134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2133)  ; LegacyF16ToF32(value)
  %2135 = fmul fast float %2097, %2134
  %2136 = call float @dx.op.unary.f32(i32 22, float %2135)  ; Frc(value)
  %2137 = mul nuw nsw i32 %2075, %2076
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2136, %2138
  %2140 = call float @dx.op.unary.f32(i32 27, float %2139)  ; Round_ni(value)
  %2141 = fptoui float %2140 to i32
  %2142 = urem i32 %2141, %2075
  %2143 = udiv i32 %2141, %2076
  %2144 = call float @dx.op.unary.f32(i32 22, float %2124)  ; Frc(value)
  %2145 = call float @dx.op.unary.f32(i32 22, float %2125)  ; Frc(value)
  %2146 = uitofp i32 %2142 to float
  %2147 = uitofp i32 %2143 to float
  %2148 = fadd fast float %2144, %2146
  %2149 = fadd fast float %2145, %2147
  %2150 = uitofp i32 %2075 to float
  %2151 = uitofp i32 %2076 to float
  %2152 = fdiv fast float %2148, %2150
  %2153 = fdiv fast float %2149, %2151
  br label %2154

; <label>:2154                                    ; preds = %2129, %2056
  %2155 = phi float [ %2152, %2129 ], [ %2124, %2056 ]
  %2156 = phi float [ %2153, %2129 ], [ %2125, %2056 ]
  %2157 = and i32 %2050, 256
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2204, label %2159

; <label>:2159                                    ; preds = %2154
  %2160 = add i32 %29, 448
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %71, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = shl i32 %2168, 4
  %2170 = and i32 %2169, 32752
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = lshr i32 %2168, 7
  %2173 = and i32 %2172, 32752
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = fsub fast float 1.000000e+00, %815
  %2176 = call float @dx.op.binary.f32(i32 35, float %2175, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2177 = bitcast float %815 to i32
  %2178 = sitofp i32 %2177 to float
  %2179 = fadd fast float %2178, 0xC1CFBF8940000000
  %2180 = fmul fast float %2174, %2179
  %2181 = fadd fast float %2180, 0x41CFBF8940000000
  %2182 = fptosi float %2181 to i32
  %2183 = bitcast i32 %2182 to float
  %2184 = bitcast float %2176 to i32
  %2185 = sitofp i32 %2184 to float
  %2186 = fadd fast float %2185, 0xC1CFBF8940000000
  %2187 = fmul fast float %2186, %2174
  %2188 = fadd fast float %2187, 0x41CFBF8940000000
  %2189 = fptosi float %2188 to i32
  %2190 = bitcast i32 %2189 to float
  %2191 = fmul fast float %2183, %2171
  %2192 = fmul fast float %2190, %2171
  %2193 = fsub fast float %2176, %2191
  %2194 = fadd fast float %2192, %2176
  %2195 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2196 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2197 = fsub fast float %2166, %2195
  %2198 = fsub fast float %2196, %2195
  %2199 = bitcast float %2198 to i32
  %2200 = sub nsw i32 2129859010, %2199
  %2201 = bitcast i32 %2200 to float
  %2202 = fmul fast float %2201, %2197
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  br label %2204

; <label>:2204                                    ; preds = %2159, %2154
  %2205 = phi float [ %2203, %2159 ], [ %815, %2154 ]
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 128
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2226, label %2210

; <label>:2210                                    ; preds = %2204
  %2211 = add i32 %29, 432
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %71, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 524288
  %2221 = icmp ne i32 %2220, 0
  %2222 = fcmp fast ogt float %2217, 0x3FE0101020000000
  %2223 = select i1 %2222, float 1.000000e+00, float 0.000000e+00
  %2224 = select i1 %2221, float %2223, float %2217
  %2225 = fmul fast float %2224, %2205
  br label %2226

; <label>:2226                                    ; preds = %2210, %2204
  %2227 = phi float [ %2225, %2210 ], [ %2205, %2204 ]
  %2228 = fcmp fast ult float %2227, 0x3F70101020000000
  br i1 %2228, label %2771, label %2229

; <label>:2229                                    ; preds = %2226
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 16
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2432, label %2234

; <label>:2234                                    ; preds = %2229
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = add i32 %29, 384
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = add i32 %2239, 0
  %2241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2241, %dx.types.Handle %70, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.ResRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.ResRet.f32 %2242, 2
  %2246 = extractvalue %dx.types.ResRet.f32 %2242, 3
  %2247 = and i32 %2236, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = lshr i32 %2236, 8
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2246, %2248
  %2253 = fadd fast float %2252, %2251
  %2254 = fmul fast float %2253, 0x3F70101000000000
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 512
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2267, label %2259

; <label>:2259                                    ; preds = %2234
  %2260 = add i32 %29, 468
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = add i32 %2262, 0
  %2264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2264, %dx.types.Handle %71, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  br label %2267

; <label>:2267                                    ; preds = %2259, %2234
  %2268 = phi float [ %2266, %2259 ], [ 1.000000e+00, %2234 ]
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 33554432
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2379, label %2273

; <label>:2273                                    ; preds = %2267
  %2274 = add i32 %29, 256
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 65535
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = lshr i32 %2276, 16
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = add i32 %29, 260
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 65535
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = lshr i32 %2287, 24
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = and i32 %2287, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 0x3F70101020000000
  %2294 = lshr i32 %2287, 8
  %2295 = and i32 %2294, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = lshr i32 %2287, 16
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = fmul fast float %2300, 0x3F70101020000000
  %2302 = add i32 %29, 252
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = lshr i32 %2304, 24
  %2306 = uitofp i32 %2305 to float
  %2307 = fmul fast float %2306, 0x3F70101020000000
  %2308 = and i32 %2304, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2309, 0x3F70101020000000
  %2311 = lshr i32 %2304, 8
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2313, 0x3F70101020000000
  %2315 = lshr i32 %2304, 16
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = bitcast float %2243 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2243, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2243
  %2328 = fmul fast float %2327, %2326
  %2329 = bitcast float %2244 to i32
  %2330 = ashr i32 %2329, 1
  %2331 = sub nsw i32 1597463174, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2244, 5.000000e-01
  %2334 = fmul fast float %2332, %2332
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float 1.500000e+00, %2335
  %2337 = fmul fast float %2332, %2244
  %2338 = fmul fast float %2337, %2336
  %2339 = bitcast float %2245 to i32
  %2340 = ashr i32 %2339, 1
  %2341 = sub nsw i32 1597463174, %2340
  %2342 = bitcast i32 %2341 to float
  %2343 = fmul fast float %2245, 5.000000e-01
  %2344 = fmul fast float %2342, %2342
  %2345 = fmul fast float %2344, %2343
  %2346 = fsub fast float 1.500000e+00, %2345
  %2347 = fmul fast float %2342, %2245
  %2348 = fmul fast float %2347, %2346
  %2349 = fsub fast float %2328, %2310
  %2350 = fsub fast float %2338, %2314
  %2351 = fsub fast float %2348, %2318
  %2352 = fmul fast float %2349, %2278
  %2353 = fmul fast float %2350, %2280
  %2354 = fmul fast float %2351, %2285
  %2355 = fadd fast float %2352, %2293
  %2356 = fadd fast float %2353, %2297
  %2357 = fadd fast float %2354, %2301
  %2358 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2359 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2360 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2361 = fmul fast float %2358, %2358
  %2362 = fmul fast float %2359, %2359
  %2363 = fmul fast float %2360, %2360
  %2364 = fsub fast float %2361, %2243
  %2365 = fsub fast float %2362, %2244
  %2366 = fsub fast float %2363, %2245
  %2367 = fmul fast float %2364, %2268
  %2368 = fmul fast float %2365, %2268
  %2369 = fmul fast float %2366, %2268
  %2370 = fadd fast float %2367, %2243
  %2371 = fadd fast float %2368, %2244
  %2372 = fadd fast float %2369, %2245
  %2373 = fadd fast float %2290, %2254
  %2374 = fsub fast float %2373, %2307
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2376 = fsub fast float %2375, %2254
  %2377 = fmul fast float %2376, %2268
  %2378 = fadd fast float %2377, %2254
  br label %2432

; <label>:2379                                    ; preds = %2267
  %2380 = and i32 %2270, 134217728
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2416, label %2382

; <label>:2382                                    ; preds = %2379
  %2383 = call float @dx.op.unary.f32(i32 24, float %461)  ; Sqrt(value)
  %2384 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %2385 = call float @dx.op.unary.f32(i32 24, float %463)  ; Sqrt(value)
  %2386 = fadd fast float %2383, -5.000000e-01
  %2387 = fadd fast float %2384, -5.000000e-01
  %2388 = fadd fast float %2385, -5.000000e-01
  %2389 = fmul fast float %2386, %2268
  %2390 = fmul fast float %2387, %2268
  %2391 = fmul fast float %2388, %2268
  %2392 = fadd fast float %2389, 5.000000e-01
  %2393 = fadd fast float %2390, 5.000000e-01
  %2394 = fadd fast float %2391, 5.000000e-01
  %2395 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2396 = call float @dx.op.unary.f32(i32 24, float %2244)  ; Sqrt(value)
  %2397 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2398 = fmul fast float %2392, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2395
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2395
  %2403 = fmul fast float %2393, 2.000000e+00
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2404, %2396
  %2406 = fadd fast float %2405, %2403
  %2407 = fmul fast float %2406, %2396
  %2408 = fmul fast float %2394, 2.000000e+00
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2409, %2397
  %2411 = fadd fast float %2410, %2408
  %2412 = fmul fast float %2411, %2397
  %2413 = fmul fast float %2402, %2402
  %2414 = fmul fast float %2407, %2407
  %2415 = fmul fast float %2412, %2412
  br label %2432

; <label>:2416                                    ; preds = %2379
  %2417 = fmul fast float %461, %461
  %2418 = fmul fast float %462, %462
  %2419 = fmul fast float %463, %463
  %2420 = fadd fast float %2417, -1.000000e+00
  %2421 = fadd fast float %2418, -1.000000e+00
  %2422 = fadd fast float %2419, -1.000000e+00
  %2423 = fmul fast float %2268, %2420
  %2424 = fmul fast float %2268, %2421
  %2425 = fmul fast float %2268, %2422
  %2426 = fadd fast float %2423, 1.000000e+00
  %2427 = fadd fast float %2424, 1.000000e+00
  %2428 = fadd fast float %2425, 1.000000e+00
  %2429 = fmul fast float %2426, %2243
  %2430 = fmul fast float %2427, %2244
  %2431 = fmul fast float %2428, %2245
  br label %2432

; <label>:2432                                    ; preds = %2416, %2382, %2273, %2229
  %2433 = phi float [ %2378, %2273 ], [ %2254, %2382 ], [ %2254, %2416 ], [ 0x3FA23C0BE0000000, %2229 ]
  %2434 = phi float [ %2370, %2273 ], [ %2413, %2382 ], [ %2429, %2416 ], [ 1.000000e+00, %2229 ]
  %2435 = phi float [ %2371, %2273 ], [ %2414, %2382 ], [ %2430, %2416 ], [ 1.000000e+00, %2229 ]
  %2436 = phi float [ %2372, %2273 ], [ %2415, %2382 ], [ %2431, %2416 ], [ 1.000000e+00, %2229 ]
  %2437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2438 = extractvalue %dx.types.CBufRet.i32 %2437, 1
  %2439 = and i32 %2438, 1
  %2440 = icmp ne i32 %2439, 0
  %2441 = add i32 %29, 356
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 32
  %2445 = icmp ne i32 %2444, 0
  %2446 = and i1 %2440, %2445
  %2447 = select i1 %2446, float 1.000000e+00, float %2434
  %2448 = select i1 %2446, float 0x3FD3333340000000, float %2435
  %2449 = select i1 %2446, float 0x3FD3333340000000, float %2436
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 32
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2526, label %2454

; <label>:2454                                    ; preds = %2432
  %2455 = add i32 %29, 124
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %29, 400
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = add i32 %2460, 0
  %2462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2462, %dx.types.Handle %70, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2464 = extractvalue %dx.types.ResRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.ResRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.ResRet.f32 %2463, 2
  %2467 = extractvalue %dx.types.ResRet.f32 %2463, 3
  %2468 = and i32 %2457, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = lshr i32 %2457, 8
  %2471 = and i32 %2470, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = lshr i32 %2457, 16
  %2474 = and i32 %2473, 255
  %2475 = uitofp i32 %2474 to float
  %2476 = fmul fast float %2475, 0x3F70101000000000
  %2477 = fmul fast float %2464, %2469
  %2478 = fadd fast float %2477, %2472
  %2479 = fmul fast float %2478, 0x3F70101000000000
  %2480 = fadd fast float %2465, -5.000000e-01
  %2481 = fadd fast float %2467, -5.000000e-01
  %2482 = fmul fast float %2480, %2476
  %2483 = fmul fast float %2481, %2476
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = fadd fast float %2483, 5.000000e-01
  %2486 = fmul fast float %2484, 2.000000e+00
  %2487 = fadd fast float %2486, -1.000000e+00
  %2488 = fmul fast float %2485, 2.000000e+00
  %2489 = fadd fast float %2488, -1.000000e+00
  %2490 = fadd fast float %2487, %2489
  %2491 = fmul fast float %2490, 5.000000e-01
  %2492 = fsub fast float %2487, %2489
  %2493 = fmul fast float %2492, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 6, float %2491)  ; FAbs(value)
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = call float @dx.op.unary.f32(i32 6, float %2493)  ; FAbs(value)
  %2497 = fsub fast float %2495, %2496
  %2498 = call float @dx.op.dot3.f32(i32 55, float %2491, float %2493, float %2497, float %2491, float %2493, float %2497)  ; Dot3(ax,ay,az,bx,by,bz)
  %2499 = call float @dx.op.unary.f32(i32 25, float %2498)  ; Rsqrt(value)
  %2500 = fmul fast float %2491, %2499
  %2501 = fmul fast float %2493, %2499
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 67108864
  %2505 = icmp eq i32 %2504, 0
  br i1 %2505, label %2522, label %2506

; <label>:2506                                    ; preds = %2454
  %2507 = add i32 %29, 312
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 65535
  %2511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2510)  ; LegacyF16ToF32(value)
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 65535
  %2515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2514)  ; LegacyF16ToF32(value)
  %2516 = lshr i32 %2509, 16
  %2517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2516)  ; LegacyF16ToF32(value)
  %2518 = fsub fast float %2479, %2517
  %2519 = fmul fast float %2518, %2511
  %2520 = fadd fast float %2519, %2515
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  br label %2522

; <label>:2522                                    ; preds = %2506, %2454
  %2523 = phi float [ %2521, %2506 ], [ %2479, %2454 ]
  %2524 = call float @dx.op.dot2.f32(i32 54, float %2500, float %2501, float %2059, float %2060)  ; Dot2(ax,ay,bx,by)
  %2525 = call float @dx.op.dot2.f32(i32 54, float %2500, float %2501, float %2061, float %2062)  ; Dot2(ax,ay,bx,by)
  br label %2526

; <label>:2526                                    ; preds = %2522, %2432
  %2527 = phi float [ %2523, %2522 ], [ 0x3FD6666660000000, %2432 ]
  %2528 = phi float [ %2524, %2522 ], [ 0.000000e+00, %2432 ]
  %2529 = phi float [ %2525, %2522 ], [ 0.000000e+00, %2432 ]
  %2530 = phi float [ %2466, %2522 ], [ 1.000000e+00, %2432 ]
  %2531 = add i32 %29, 192
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = lshr i32 %2533, 22
  %2535 = shl nuw nsw i32 %2534, 5
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 64
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2574, label %2541

; <label>:2541                                    ; preds = %2526
  %2542 = add i32 %29, 416
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = add i32 %2544, 0
  %2546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 131072
  %2550 = icmp eq i32 %2549, 0
  %2551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2546, %dx.types.Handle %70, float %2155, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.ResRet.f32 %2551, 1
  %2554 = extractvalue %dx.types.ResRet.f32 %2551, 2
  %2555 = fmul fast float %444, %2552
  %2556 = fmul fast float %445, %2553
  %2557 = fmul fast float %446, %2554
  br i1 %2550, label %2564, label %2558

; <label>:2558                                    ; preds = %2541
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = fmul fast float %2560, %2555
  %2562 = fmul fast float %2560, %2556
  %2563 = fmul fast float %2560, %2557
  br label %2564

; <label>:2564                                    ; preds = %2558, %2541
  %2565 = phi float [ %2561, %2558 ], [ %2555, %2541 ]
  %2566 = phi float [ %2562, %2558 ], [ %2556, %2541 ]
  %2567 = phi float [ %2563, %2558 ], [ %2557, %2541 ]
  %2568 = fmul fast float %2565, %2536
  %2569 = select i1 %213, float %2568, float %2565
  %2570 = call float @dx.op.dot3.f32(i32 55, float %2569, float %2566, float %2567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2571 = select i1 %213, float 0.000000e+00, float %2565
  %2572 = select i1 %213, float %2570, float %2566
  %2573 = select i1 %213, float 0.000000e+00, float %2567
  br label %2574

; <label>:2574                                    ; preds = %2564, %2526
  %2575 = phi float [ %2571, %2564 ], [ 0.000000e+00, %2526 ]
  %2576 = phi float [ %2572, %2564 ], [ 0.000000e+00, %2526 ]
  %2577 = phi float [ %2573, %2564 ], [ 0.000000e+00, %2526 ]
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = add i32 %29, 128
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 255
  %2584 = uitofp i32 %2583 to float
  %2585 = lshr i32 %2582, 8
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2448, float %2449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2589 = fmul fast float %2587, %2588
  %2590 = fadd fast float %2589, %2584
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  br i1 %2048, label %2593, label %2601

; <label>:2593                                    ; preds = %2574
  %2594 = fsub fast float 1.000000e+00, %2227
  %2595 = fmul fast float %2594, %2040
  %2596 = fmul fast float %2594, %2041
  %2597 = fmul fast float %2594, %2042
  %2598 = fmul fast float %2594, %2037
  %2599 = fmul fast float %2594, %2038
  %2600 = fmul fast float %2594, %2039
  br label %2601

; <label>:2601                                    ; preds = %2593, %2574
  %2602 = phi float [ %2598, %2593 ], [ %2037, %2574 ]
  %2603 = phi float [ %2599, %2593 ], [ %2038, %2574 ]
  %2604 = phi float [ %2600, %2593 ], [ %2039, %2574 ]
  %2605 = phi float [ %2595, %2593 ], [ %2040, %2574 ]
  %2606 = phi float [ %2596, %2593 ], [ %2041, %2574 ]
  %2607 = phi float [ %2597, %2593 ], [ %2042, %2574 ]
  %2608 = and i32 %2579, 3
  %2609 = icmp eq i32 %2608, 3
  br i1 %2609, label %2688, label %2610

; <label>:2610                                    ; preds = %2601
  %2611 = and i32 %2579, 16
  %2612 = icmp ne i32 %2611, 0
  %2613 = select i1 %2612, float %2227, float 0.000000e+00
  %2614 = icmp eq i32 %2608, 0
  br i1 %2614, label %2615, label %2643

; <label>:2615                                    ; preds = %2610
  %2616 = and i32 %2579, 64
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %2227, float 0.000000e+00
  %2619 = fsub fast float %2447, %2605
  %2620 = fsub fast float %2448, %2606
  %2621 = fsub fast float %2449, %2607
  %2622 = fmul fast float %2613, %2619
  %2623 = fmul fast float %2613, %2620
  %2624 = fmul fast float %2613, %2621
  %2625 = fadd fast float %2622, %2605
  %2626 = fadd fast float %2623, %2606
  %2627 = fadd fast float %2624, %2607
  %2628 = fsub fast float %2433, %2043
  %2629 = fmul fast float %2613, %2628
  %2630 = fadd fast float %2629, %2043
  %2631 = fsub fast float %2575, %2602
  %2632 = fsub fast float %2576, %2603
  %2633 = fsub fast float %2577, %2604
  %2634 = fmul fast float %2618, %2631
  %2635 = fmul fast float %2618, %2632
  %2636 = fmul fast float %2618, %2633
  %2637 = fadd fast float %2634, %2602
  %2638 = fadd fast float %2635, %2603
  %2639 = fadd fast float %2636, %2604
  %2640 = fsub fast float %2592, %2046
  %2641 = fmul fast float %2613, %2640
  %2642 = fadd fast float %2641, %2046
  br label %2688

; <label>:2643                                    ; preds = %2610
  %2644 = icmp eq i32 %2608, 1
  br i1 %2644, label %2645, label %2658

; <label>:2645                                    ; preds = %2643
  %2646 = fadd fast float %2447, -1.000000e+00
  %2647 = fadd fast float %2448, -1.000000e+00
  %2648 = fadd fast float %2449, -1.000000e+00
  %2649 = fmul fast float %2613, %2646
  %2650 = fmul fast float %2613, %2647
  %2651 = fmul fast float %2613, %2648
  %2652 = fadd fast float %2649, 1.000000e+00
  %2653 = fadd fast float %2650, 1.000000e+00
  %2654 = fadd fast float %2651, 1.000000e+00
  %2655 = fmul fast float %2652, %2605
  %2656 = fmul fast float %2653, %2606
  %2657 = fmul fast float %2654, %2607
  br label %2688

; <label>:2658                                    ; preds = %2643
  %2659 = icmp eq i32 %2608, 2
  br i1 %2659, label %2660, label %2688

; <label>:2660                                    ; preds = %2658
  %2661 = call float @dx.op.unary.f32(i32 24, float %2447)  ; Sqrt(value)
  %2662 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2663 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  %2664 = fadd fast float %2661, -5.000000e-01
  %2665 = fadd fast float %2662, -5.000000e-01
  %2666 = fadd fast float %2663, -5.000000e-01
  %2667 = fmul fast float %2664, %2613
  %2668 = fmul fast float %2665, %2613
  %2669 = fmul fast float %2666, %2613
  %2670 = fadd fast float %2667, 5.000000e-01
  %2671 = fadd fast float %2668, 5.000000e-01
  %2672 = fadd fast float %2669, 5.000000e-01
  %2673 = fmul fast float %2670, 2.000000e+00
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2674, %2605
  %2676 = fadd fast float %2675, %2673
  %2677 = fmul fast float %2676, %2605
  %2678 = fmul fast float %2671, 2.000000e+00
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2679, %2606
  %2681 = fadd fast float %2680, %2678
  %2682 = fmul fast float %2681, %2606
  %2683 = fmul fast float %2672, 2.000000e+00
  %2684 = fsub fast float 1.000000e+00, %2683
  %2685 = fmul fast float %2684, %2607
  %2686 = fadd fast float %2685, %2683
  %2687 = fmul fast float %2686, %2607
  br label %2688

; <label>:2688                                    ; preds = %2660, %2658, %2645, %2615, %2601
  %2689 = phi float [ %2602, %2601 ], [ %2602, %2660 ], [ %2602, %2658 ], [ %2602, %2645 ], [ %2637, %2615 ]
  %2690 = phi float [ %2603, %2601 ], [ %2603, %2660 ], [ %2603, %2658 ], [ %2603, %2645 ], [ %2638, %2615 ]
  %2691 = phi float [ %2604, %2601 ], [ %2604, %2660 ], [ %2604, %2658 ], [ %2604, %2645 ], [ %2639, %2615 ]
  %2692 = phi float [ %2605, %2601 ], [ %2677, %2660 ], [ %2605, %2658 ], [ %2655, %2645 ], [ %2625, %2615 ]
  %2693 = phi float [ %2606, %2601 ], [ %2682, %2660 ], [ %2606, %2658 ], [ %2656, %2645 ], [ %2626, %2615 ]
  %2694 = phi float [ %2607, %2601 ], [ %2687, %2660 ], [ %2607, %2658 ], [ %2657, %2645 ], [ %2627, %2615 ]
  %2695 = phi float [ %2043, %2601 ], [ %2043, %2660 ], [ %2043, %2658 ], [ %2043, %2645 ], [ %2630, %2615 ]
  %2696 = phi float [ %2046, %2601 ], [ %2046, %2660 ], [ %2046, %2658 ], [ %2046, %2645 ], [ %2642, %2615 ]
  %2697 = and i32 %2579, 12
  %2698 = icmp eq i32 %2697, 12
  br i1 %2698, label %2771, label %2699

; <label>:2699                                    ; preds = %2688
  %2700 = and i32 %2579, 2097184
  %2701 = icmp eq i32 %2700, 2097184
  %2702 = select i1 %2701, float %2227, float 0.000000e+00
  %2703 = and i32 %2579, 4194336
  %2704 = icmp eq i32 %2703, 4194336
  %2705 = select i1 %2704, float %2227, float 0.000000e+00
  %2706 = and i32 %2579, 8388640
  %2707 = icmp eq i32 %2706, 8388640
  %2708 = select i1 %2707, float %2227, float 0.000000e+00
  %2709 = icmp eq i32 %2697, 0
  br i1 %2709, label %2710, label %2723

; <label>:2710                                    ; preds = %2699
  %2711 = fsub fast float %2528, %2035
  %2712 = fsub fast float %2529, %2036
  %2713 = fmul fast float %2702, %2711
  %2714 = fmul fast float %2702, %2712
  %2715 = fadd fast float %2713, %2035
  %2716 = fadd fast float %2714, %2036
  %2717 = fsub fast float %2530, %2045
  %2718 = fmul fast float %2705, %2717
  %2719 = fadd fast float %2718, %2045
  %2720 = fsub fast float %2527, %2044
  %2721 = fmul fast float %2708, %2720
  %2722 = fadd fast float %2721, %2044
  br label %2771

; <label>:2723                                    ; preds = %2699
  %2724 = icmp eq i32 %2697, 4
  br i1 %2724, label %2725, label %2757

; <label>:2725                                    ; preds = %2723
  %2726 = fmul fast float %2702, %2528
  %2727 = fmul fast float %2702, %2529
  %2728 = fadd fast float %2726, %2035
  %2729 = fadd fast float %2727, %2036
  %2730 = call float @dx.op.binary.f32(i32 36, float %2045, float %2530)  ; FMin(a,b)
  %2731 = fsub fast float %2730, %2045
  %2732 = fmul fast float %2731, %2705
  %2733 = fadd fast float %2732, %2045
  %2734 = fadd fast float %2527, %2044
  %2735 = fmul fast float %2734, 0x3FF337FAE0000000
  %2736 = fmul fast float %2044, %2044
  %2737 = fmul fast float %2527, %2527
  %2738 = fadd fast float %2737, %2736
  %2739 = fmul fast float %2738, 0x3FE5152B00000000
  %2740 = fmul fast float %2044, 0xBFCC1F85E0000000
  %2741 = fmul fast float %2740, %2527
  %2742 = fadd fast float %2741, 0xBFE1363700000000
  %2743 = fadd fast float %2742, %2735
  %2744 = fsub fast float %2743, %2739
  %2745 = fmul fast float %2734, 0x3FBA6F0D00000000
  %2746 = fmul fast float %2738, 0x3FD0432880000000
  %2747 = fmul fast float %2044, 0xBFEF110800000000
  %2748 = fmul fast float %2747, %2527
  %2749 = fadd fast float %2748, 1.000000e+00
  %2750 = fsub fast float %2749, %2745
  %2751 = fadd fast float %2750, %2746
  %2752 = fdiv fast float %2744, %2751
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fsub fast float %2753, %2044
  %2755 = fmul fast float %2754, %2708
  %2756 = fadd fast float %2755, %2044
  br label %2771

; <label>:2757                                    ; preds = %2723
  %2758 = icmp eq i32 %2697, 8
  br i1 %2758, label %2759, label %2771

; <label>:2759                                    ; preds = %2757
  %2760 = fmul fast float %2702, %2528
  %2761 = fmul fast float %2702, %2529
  %2762 = fadd fast float %2760, %2035
  %2763 = fadd fast float %2761, %2036
  %2764 = call float @dx.op.binary.f32(i32 36, float %2045, float %2530)  ; FMin(a,b)
  %2765 = fsub fast float %2764, %2045
  %2766 = fmul fast float %2765, %2705
  %2767 = fadd fast float %2766, %2045
  %2768 = fsub fast float %2527, %2044
  %2769 = fmul fast float %2708, %2768
  %2770 = fadd fast float %2769, %2044
  br label %2771

; <label>:2771                                    ; preds = %2759, %2757, %2725, %2710, %2688, %2226, %2047, %2034
  %2772 = phi float [ %2035, %2688 ], [ %2035, %2226 ], [ %2035, %2034 ], [ %2762, %2759 ], [ %2035, %2757 ], [ %2728, %2725 ], [ %2715, %2710 ], [ %2035, %2047 ]
  %2773 = phi float [ %2036, %2688 ], [ %2036, %2226 ], [ %2036, %2034 ], [ %2763, %2759 ], [ %2036, %2757 ], [ %2729, %2725 ], [ %2716, %2710 ], [ %2036, %2047 ]
  %2774 = phi float [ %2689, %2688 ], [ %2037, %2226 ], [ %2037, %2034 ], [ %2689, %2759 ], [ %2689, %2757 ], [ %2689, %2725 ], [ %2689, %2710 ], [ %2037, %2047 ]
  %2775 = phi float [ %2690, %2688 ], [ %2038, %2226 ], [ %2038, %2034 ], [ %2690, %2759 ], [ %2690, %2757 ], [ %2690, %2725 ], [ %2690, %2710 ], [ %2038, %2047 ]
  %2776 = phi float [ %2691, %2688 ], [ %2039, %2226 ], [ %2039, %2034 ], [ %2691, %2759 ], [ %2691, %2757 ], [ %2691, %2725 ], [ %2691, %2710 ], [ %2039, %2047 ]
  %2777 = phi float [ %2692, %2688 ], [ %2040, %2226 ], [ %2040, %2034 ], [ %2692, %2759 ], [ %2692, %2757 ], [ %2692, %2725 ], [ %2692, %2710 ], [ %2040, %2047 ]
  %2778 = phi float [ %2693, %2688 ], [ %2041, %2226 ], [ %2041, %2034 ], [ %2693, %2759 ], [ %2693, %2757 ], [ %2693, %2725 ], [ %2693, %2710 ], [ %2041, %2047 ]
  %2779 = phi float [ %2694, %2688 ], [ %2042, %2226 ], [ %2042, %2034 ], [ %2694, %2759 ], [ %2694, %2757 ], [ %2694, %2725 ], [ %2694, %2710 ], [ %2042, %2047 ]
  %2780 = phi float [ %2695, %2688 ], [ %2043, %2226 ], [ %2043, %2034 ], [ %2695, %2759 ], [ %2695, %2757 ], [ %2695, %2725 ], [ %2695, %2710 ], [ %2043, %2047 ]
  %2781 = phi float [ %2044, %2688 ], [ %2044, %2226 ], [ %2044, %2034 ], [ %2770, %2759 ], [ %2044, %2757 ], [ %2756, %2725 ], [ %2722, %2710 ], [ %2044, %2047 ]
  %2782 = phi float [ %2045, %2688 ], [ %2045, %2226 ], [ %2045, %2034 ], [ %2767, %2759 ], [ %2045, %2757 ], [ %2733, %2725 ], [ %2719, %2710 ], [ %2045, %2047 ]
  %2783 = phi float [ %2696, %2688 ], [ %2046, %2226 ], [ %2046, %2034 ], [ %2696, %2759 ], [ %2696, %2757 ], [ %2696, %2725 ], [ %2696, %2710 ], [ %2046, %2047 ]
  br i1 %603, label %3508, label %2784

; <label>:2784                                    ; preds = %2771
  %2785 = icmp ult i32 %829, 4
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = add i32 %29, 76
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = or i32 %2790, %2787
  %2792 = icmp eq i32 %2791, 0
  br i1 %2792, label %3508, label %2793

; <label>:2793                                    ; preds = %2784
  %2794 = and i32 %2787, 262144
  %2795 = icmp ne i32 %2794, 0
  %2796 = select i1 %2795, float %35, float 1.000000e+00
  %2797 = select i1 %2795, float %36, float 0.000000e+00
  %2798 = select i1 %2795, float %37, float 0.000000e+00
  %2799 = select i1 %2795, float %38, float 1.000000e+00
  %2800 = select i1 %2795, float %39, float %62
  %2801 = select i1 %2795, float %40, float %63
  %2802 = add i32 %29, 332
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = lshr i32 %2804, 16
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = fmul fast float %2806, 0x3F50624DE0000000
  %2808 = add i32 %29, 136
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = lshr i32 %2810, 16
  %2812 = and i32 %2811, 255
  %2813 = lshr i32 %2810, 24
  %2814 = add i32 %29, 340
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 65535
  %2818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2817)  ; LegacyF16ToF32(value)
  %2819 = lshr i32 %2816, 16
  %2820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2819)  ; LegacyF16ToF32(value)
  %2821 = add i32 %29, 80
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = lshr i32 %2823, 22
  %2825 = shl nuw nsw i32 %2824, 5
  %2826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2825)  ; LegacyF16ToF32(value)
  %2827 = shl i32 %2823, 4
  %2828 = and i32 %2827, 32752
  %2829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2828)  ; LegacyF16ToF32(value)
  %2830 = lshr i32 %2823, 7
  %2831 = and i32 %2830, 32752
  %2832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2831)  ; LegacyF16ToF32(value)
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 3
  %2835 = fmul fast float %2834, 1.000000e+03
  %2836 = fmul fast float %2835, %592
  %2837 = call float @dx.op.unary.f32(i32 22, float %2836)  ; Frc(value)
  %2838 = fadd fast float %2837, %580
  %2839 = fmul fast float %2835, %594
  %2840 = call float @dx.op.unary.f32(i32 22, float %2839)  ; Frc(value)
  %2841 = fadd fast float %2840, %581
  %2842 = fmul fast float %2807, %2835
  %2843 = call float @dx.op.unary.f32(i32 22, float %2842)  ; Frc(value)
  %2844 = fmul fast float %2843, 0x401921FB60000000
  %2845 = fadd fast float %2844, %2826
  %2846 = call float @dx.op.unary.f32(i32 13, float %2845)  ; Sin(value)
  %2847 = call float @dx.op.unary.f32(i32 12, float %2845)  ; Cos(value)
  %2848 = fsub fast float -0.000000e+00, %2846
  %2849 = fadd fast float %2800, -5.000000e-01
  %2850 = fadd fast float %2801, -5.000000e-01
  %2851 = fmul fast float %2818, %2849
  %2852 = fmul fast float %2820, %2850
  %2853 = fadd fast float %2851, 5.000000e-01
  %2854 = fadd fast float %2852, 5.000000e-01
  %2855 = fmul fast float %2829, %2853
  %2856 = fmul fast float %2832, %2854
  %2857 = fmul fast float %2847, %2855
  %2858 = call float @dx.op.tertiary.f32(i32 46, float %2848, float %2856, float %2857)  ; FMad(a,b,c)
  %2859 = fmul fast float %2846, %2855
  %2860 = call float @dx.op.tertiary.f32(i32 46, float %2847, float %2856, float %2859)  ; FMad(a,b,c)
  %2861 = fadd fast float %2838, %2858
  %2862 = fadd fast float %2841, %2860
  %2863 = icmp ugt i32 %2812, 1
  %2864 = icmp ugt i32 %2810, 33554431
  %2865 = or i1 %2864, %2863
  br i1 %2865, label %2866, label %2891

; <label>:2866                                    ; preds = %2793
  %2867 = add i32 %29, 276
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 16
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = fmul fast float %2834, %2871
  %2873 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2874 = mul nuw nsw i32 %2812, %2813
  %2875 = uitofp i32 %2874 to float
  %2876 = fmul fast float %2873, %2875
  %2877 = call float @dx.op.unary.f32(i32 27, float %2876)  ; Round_ni(value)
  %2878 = fptoui float %2877 to i32
  %2879 = urem i32 %2878, %2812
  %2880 = udiv i32 %2878, %2813
  %2881 = call float @dx.op.unary.f32(i32 22, float %2861)  ; Frc(value)
  %2882 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2883 = uitofp i32 %2879 to float
  %2884 = uitofp i32 %2880 to float
  %2885 = fadd fast float %2881, %2883
  %2886 = fadd fast float %2882, %2884
  %2887 = uitofp i32 %2812 to float
  %2888 = uitofp i32 %2813 to float
  %2889 = fdiv fast float %2885, %2887
  %2890 = fdiv fast float %2886, %2888
  br label %2891

; <label>:2891                                    ; preds = %2866, %2793
  %2892 = phi float [ %2889, %2866 ], [ %2861, %2793 ]
  %2893 = phi float [ %2890, %2866 ], [ %2862, %2793 ]
  %2894 = and i32 %2787, 256
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2941, label %2896

; <label>:2896                                    ; preds = %2891
  %2897 = add i32 %29, 452
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %71, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = shl i32 %2905, 4
  %2907 = and i32 %2906, 32752
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = lshr i32 %2905, 7
  %2910 = and i32 %2909, 32752
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = fsub fast float 1.000000e+00, %824
  %2913 = call float @dx.op.binary.f32(i32 35, float %2912, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2914 = bitcast float %824 to i32
  %2915 = sitofp i32 %2914 to float
  %2916 = fadd fast float %2915, 0xC1CFBF8940000000
  %2917 = fmul fast float %2911, %2916
  %2918 = fadd fast float %2917, 0x41CFBF8940000000
  %2919 = fptosi float %2918 to i32
  %2920 = bitcast i32 %2919 to float
  %2921 = bitcast float %2913 to i32
  %2922 = sitofp i32 %2921 to float
  %2923 = fadd fast float %2922, 0xC1CFBF8940000000
  %2924 = fmul fast float %2923, %2911
  %2925 = fadd fast float %2924, 0x41CFBF8940000000
  %2926 = fptosi float %2925 to i32
  %2927 = bitcast i32 %2926 to float
  %2928 = fmul fast float %2920, %2908
  %2929 = fmul fast float %2927, %2908
  %2930 = fsub fast float %2913, %2928
  %2931 = fadd fast float %2929, %2913
  %2932 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  %2933 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2934 = fsub fast float %2903, %2932
  %2935 = fsub fast float %2933, %2932
  %2936 = bitcast float %2935 to i32
  %2937 = sub nsw i32 2129859010, %2936
  %2938 = bitcast i32 %2937 to float
  %2939 = fmul fast float %2938, %2934
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  br label %2941

; <label>:2941                                    ; preds = %2896, %2891
  %2942 = phi float [ %2940, %2896 ], [ %824, %2891 ]
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 128
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2963, label %2947

; <label>:2947                                    ; preds = %2941
  %2948 = add i32 %29, 436
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = add i32 %2950, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2952, %dx.types.Handle %71, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 524288
  %2958 = icmp ne i32 %2957, 0
  %2959 = fcmp fast ogt float %2954, 0x3FE0101020000000
  %2960 = select i1 %2959, float 1.000000e+00, float 0.000000e+00
  %2961 = select i1 %2958, float %2960, float %2954
  %2962 = fmul fast float %2961, %2942
  br label %2963

; <label>:2963                                    ; preds = %2947, %2941
  %2964 = phi float [ %2962, %2947 ], [ %2942, %2941 ]
  %2965 = fcmp fast ult float %2964, 0x3F70101020000000
  br i1 %2965, label %3508, label %2966

; <label>:2966                                    ; preds = %2963
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 16
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %3169, label %2971

; <label>:2971                                    ; preds = %2966
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %29, 388
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = add i32 %2976, 0
  %2978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2978, %dx.types.Handle %70, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.ResRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.ResRet.f32 %2979, 2
  %2983 = extractvalue %dx.types.ResRet.f32 %2979, 3
  %2984 = and i32 %2973, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = lshr i32 %2973, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2983, %2985
  %2990 = fadd fast float %2989, %2988
  %2991 = fmul fast float %2990, 0x3F70101000000000
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 512
  %2995 = icmp eq i32 %2994, 0
  br i1 %2995, label %3004, label %2996

; <label>:2996                                    ; preds = %2971
  %2997 = add i32 %29, 472
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3001, %dx.types.Handle %71, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  br label %3004

; <label>:3004                                    ; preds = %2996, %2971
  %3005 = phi float [ %3003, %2996 ], [ 1.000000e+00, %2971 ]
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = and i32 %3007, 33554432
  %3009 = icmp eq i32 %3008, 0
  br i1 %3009, label %3116, label %3010

; <label>:3010                                    ; preds = %3004
  %3011 = add i32 %29, 272
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 65535
  %3015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3014)  ; LegacyF16ToF32(value)
  %3016 = lshr i32 %3013, 16
  %3017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3016)  ; LegacyF16ToF32(value)
  %3018 = add i32 %29, 276
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 65535
  %3022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3021)  ; LegacyF16ToF32(value)
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = lshr i32 %3024, 24
  %3026 = uitofp i32 %3025 to float
  %3027 = fmul fast float %3026, 0x3F70101020000000
  %3028 = and i32 %3024, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3029, 0x3F70101020000000
  %3031 = lshr i32 %3024, 8
  %3032 = and i32 %3031, 255
  %3033 = uitofp i32 %3032 to float
  %3034 = fmul fast float %3033, 0x3F70101020000000
  %3035 = lshr i32 %3024, 16
  %3036 = and i32 %3035, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = fmul fast float %3037, 0x3F70101020000000
  %3039 = add i32 %29, 268
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = lshr i32 %3041, 24
  %3043 = uitofp i32 %3042 to float
  %3044 = fmul fast float %3043, 0x3F70101020000000
  %3045 = and i32 %3041, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = fmul fast float %3046, 0x3F70101020000000
  %3048 = lshr i32 %3041, 8
  %3049 = and i32 %3048, 255
  %3050 = uitofp i32 %3049 to float
  %3051 = fmul fast float %3050, 0x3F70101020000000
  %3052 = lshr i32 %3041, 16
  %3053 = and i32 %3052, 255
  %3054 = uitofp i32 %3053 to float
  %3055 = fmul fast float %3054, 0x3F70101020000000
  %3056 = bitcast float %2980 to i32
  %3057 = ashr i32 %3056, 1
  %3058 = sub nsw i32 1597463174, %3057
  %3059 = bitcast i32 %3058 to float
  %3060 = fmul fast float %2980, 5.000000e-01
  %3061 = fmul fast float %3059, %3059
  %3062 = fmul fast float %3061, %3060
  %3063 = fsub fast float 1.500000e+00, %3062
  %3064 = fmul fast float %3059, %2980
  %3065 = fmul fast float %3064, %3063
  %3066 = bitcast float %2981 to i32
  %3067 = ashr i32 %3066, 1
  %3068 = sub nsw i32 1597463174, %3067
  %3069 = bitcast i32 %3068 to float
  %3070 = fmul fast float %2981, 5.000000e-01
  %3071 = fmul fast float %3069, %3069
  %3072 = fmul fast float %3071, %3070
  %3073 = fsub fast float 1.500000e+00, %3072
  %3074 = fmul fast float %3069, %2981
  %3075 = fmul fast float %3074, %3073
  %3076 = bitcast float %2982 to i32
  %3077 = ashr i32 %3076, 1
  %3078 = sub nsw i32 1597463174, %3077
  %3079 = bitcast i32 %3078 to float
  %3080 = fmul fast float %2982, 5.000000e-01
  %3081 = fmul fast float %3079, %3079
  %3082 = fmul fast float %3081, %3080
  %3083 = fsub fast float 1.500000e+00, %3082
  %3084 = fmul fast float %3079, %2982
  %3085 = fmul fast float %3084, %3083
  %3086 = fsub fast float %3065, %3047
  %3087 = fsub fast float %3075, %3051
  %3088 = fsub fast float %3085, %3055
  %3089 = fmul fast float %3086, %3015
  %3090 = fmul fast float %3087, %3017
  %3091 = fmul fast float %3088, %3022
  %3092 = fadd fast float %3089, %3030
  %3093 = fadd fast float %3090, %3034
  %3094 = fadd fast float %3091, %3038
  %3095 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3096 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3097 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3098 = fmul fast float %3095, %3095
  %3099 = fmul fast float %3096, %3096
  %3100 = fmul fast float %3097, %3097
  %3101 = fsub fast float %3098, %2980
  %3102 = fsub fast float %3099, %2981
  %3103 = fsub fast float %3100, %2982
  %3104 = fmul fast float %3101, %3005
  %3105 = fmul fast float %3102, %3005
  %3106 = fmul fast float %3103, %3005
  %3107 = fadd fast float %3104, %2980
  %3108 = fadd fast float %3105, %2981
  %3109 = fadd fast float %3106, %2982
  %3110 = fadd fast float %3027, %2991
  %3111 = fsub fast float %3110, %3044
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3113 = fsub fast float %3112, %2991
  %3114 = fmul fast float %3113, %3005
  %3115 = fadd fast float %3114, %2991
  br label %3169

; <label>:3116                                    ; preds = %3004
  %3117 = and i32 %3007, 134217728
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3153, label %3119

; <label>:3119                                    ; preds = %3116
  %3120 = call float @dx.op.unary.f32(i32 24, float %568)  ; Sqrt(value)
  %3121 = call float @dx.op.unary.f32(i32 24, float %569)  ; Sqrt(value)
  %3122 = call float @dx.op.unary.f32(i32 24, float %570)  ; Sqrt(value)
  %3123 = fadd fast float %3120, -5.000000e-01
  %3124 = fadd fast float %3121, -5.000000e-01
  %3125 = fadd fast float %3122, -5.000000e-01
  %3126 = fmul fast float %3123, %3005
  %3127 = fmul fast float %3124, %3005
  %3128 = fmul fast float %3125, %3005
  %3129 = fadd fast float %3126, 5.000000e-01
  %3130 = fadd fast float %3127, 5.000000e-01
  %3131 = fadd fast float %3128, 5.000000e-01
  %3132 = call float @dx.op.unary.f32(i32 24, float %2980)  ; Sqrt(value)
  %3133 = call float @dx.op.unary.f32(i32 24, float %2981)  ; Sqrt(value)
  %3134 = call float @dx.op.unary.f32(i32 24, float %2982)  ; Sqrt(value)
  %3135 = fmul fast float %3129, 2.000000e+00
  %3136 = fsub fast float 1.000000e+00, %3135
  %3137 = fmul fast float %3136, %3132
  %3138 = fadd fast float %3137, %3135
  %3139 = fmul fast float %3138, %3132
  %3140 = fmul fast float %3130, 2.000000e+00
  %3141 = fsub fast float 1.000000e+00, %3140
  %3142 = fmul fast float %3141, %3133
  %3143 = fadd fast float %3142, %3140
  %3144 = fmul fast float %3143, %3133
  %3145 = fmul fast float %3131, 2.000000e+00
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = fmul fast float %3146, %3134
  %3148 = fadd fast float %3147, %3145
  %3149 = fmul fast float %3148, %3134
  %3150 = fmul fast float %3139, %3139
  %3151 = fmul fast float %3144, %3144
  %3152 = fmul fast float %3149, %3149
  br label %3169

; <label>:3153                                    ; preds = %3116
  %3154 = fmul fast float %568, %568
  %3155 = fmul fast float %569, %569
  %3156 = fmul fast float %570, %570
  %3157 = fadd fast float %3154, -1.000000e+00
  %3158 = fadd fast float %3155, -1.000000e+00
  %3159 = fadd fast float %3156, -1.000000e+00
  %3160 = fmul fast float %3005, %3157
  %3161 = fmul fast float %3005, %3158
  %3162 = fmul fast float %3005, %3159
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fmul fast float %3163, %2980
  %3167 = fmul fast float %3164, %2981
  %3168 = fmul fast float %3165, %2982
  br label %3169

; <label>:3169                                    ; preds = %3153, %3119, %3010, %2966
  %3170 = phi float [ %3115, %3010 ], [ %2991, %3119 ], [ %2991, %3153 ], [ 0x3FA23C0BE0000000, %2966 ]
  %3171 = phi float [ %3107, %3010 ], [ %3150, %3119 ], [ %3166, %3153 ], [ 1.000000e+00, %2966 ]
  %3172 = phi float [ %3108, %3010 ], [ %3151, %3119 ], [ %3167, %3153 ], [ 1.000000e+00, %2966 ]
  %3173 = phi float [ %3109, %3010 ], [ %3152, %3119 ], [ %3168, %3153 ], [ 1.000000e+00, %2966 ]
  %3174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.i32 %3174, 1
  %3176 = and i32 %3175, 1
  %3177 = icmp ne i32 %3176, 0
  %3178 = add i32 %29, 356
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 32
  %3182 = icmp ne i32 %3181, 0
  %3183 = and i1 %3177, %3182
  %3184 = select i1 %3183, float 1.000000e+00, float %3171
  %3185 = select i1 %3183, float 0x3FD3333340000000, float %3172
  %3186 = select i1 %3183, float 0x3FD3333340000000, float %3173
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 32
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3263, label %3191

; <label>:3191                                    ; preds = %3169
  %3192 = add i32 %29, 140
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = add i32 %29, 404
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = add i32 %3197, 0
  %3199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3199, %dx.types.Handle %70, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.ResRet.f32 %3200, 3
  %3205 = and i32 %3194, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = lshr i32 %3194, 8
  %3208 = and i32 %3207, 255
  %3209 = uitofp i32 %3208 to float
  %3210 = lshr i32 %3194, 16
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101000000000
  %3214 = fmul fast float %3201, %3206
  %3215 = fadd fast float %3214, %3209
  %3216 = fmul fast float %3215, 0x3F70101000000000
  %3217 = fadd fast float %3202, -5.000000e-01
  %3218 = fadd fast float %3204, -5.000000e-01
  %3219 = fmul fast float %3217, %3213
  %3220 = fmul fast float %3218, %3213
  %3221 = fadd fast float %3219, 5.000000e-01
  %3222 = fadd fast float %3220, 5.000000e-01
  %3223 = fmul fast float %3221, 2.000000e+00
  %3224 = fadd fast float %3223, -1.000000e+00
  %3225 = fmul fast float %3222, 2.000000e+00
  %3226 = fadd fast float %3225, -1.000000e+00
  %3227 = fadd fast float %3224, %3226
  %3228 = fmul fast float %3227, 5.000000e-01
  %3229 = fsub fast float %3224, %3226
  %3230 = fmul fast float %3229, 5.000000e-01
  %3231 = call float @dx.op.unary.f32(i32 6, float %3228)  ; FAbs(value)
  %3232 = fsub fast float 1.000000e+00, %3231
  %3233 = call float @dx.op.unary.f32(i32 6, float %3230)  ; FAbs(value)
  %3234 = fsub fast float %3232, %3233
  %3235 = call float @dx.op.dot3.f32(i32 55, float %3228, float %3230, float %3234, float %3228, float %3230, float %3234)  ; Dot3(ax,ay,az,bx,by,bz)
  %3236 = call float @dx.op.unary.f32(i32 25, float %3235)  ; Rsqrt(value)
  %3237 = fmul fast float %3228, %3236
  %3238 = fmul fast float %3230, %3236
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 67108864
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3259, label %3243

; <label>:3243                                    ; preds = %3191
  %3244 = add i32 %29, 328
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 65535
  %3248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3247)  ; LegacyF16ToF32(value)
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, 65535
  %3252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3251)  ; LegacyF16ToF32(value)
  %3253 = lshr i32 %3246, 16
  %3254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3253)  ; LegacyF16ToF32(value)
  %3255 = fsub fast float %3216, %3254
  %3256 = fmul fast float %3255, %3248
  %3257 = fadd fast float %3256, %3252
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  br label %3259

; <label>:3259                                    ; preds = %3243, %3191
  %3260 = phi float [ %3258, %3243 ], [ %3216, %3191 ]
  %3261 = call float @dx.op.dot2.f32(i32 54, float %3237, float %3238, float %2796, float %2797)  ; Dot2(ax,ay,bx,by)
  %3262 = call float @dx.op.dot2.f32(i32 54, float %3237, float %3238, float %2798, float %2799)  ; Dot2(ax,ay,bx,by)
  br label %3263

; <label>:3263                                    ; preds = %3259, %3169
  %3264 = phi float [ %3260, %3259 ], [ 0x3FD6666660000000, %3169 ]
  %3265 = phi float [ %3261, %3259 ], [ 0.000000e+00, %3169 ]
  %3266 = phi float [ %3262, %3259 ], [ 0.000000e+00, %3169 ]
  %3267 = phi float [ %3203, %3259 ], [ 1.000000e+00, %3169 ]
  %3268 = add i32 %29, 208
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = lshr i32 %3270, 22
  %3272 = shl nuw nsw i32 %3271, 5
  %3273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3272)  ; LegacyF16ToF32(value)
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 64
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3311, label %3278

; <label>:3278                                    ; preds = %3263
  %3279 = add i32 %29, 420
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = add i32 %3281, 0
  %3283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 131072
  %3287 = icmp eq i32 %3286, 0
  %3288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3283, %dx.types.Handle %70, float %2892, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = fmul fast float %551, %3289
  %3293 = fmul fast float %552, %3290
  %3294 = fmul fast float %553, %3291
  br i1 %3287, label %3301, label %3295

; <label>:3295                                    ; preds = %3278
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = fmul fast float %3297, %3292
  %3299 = fmul fast float %3297, %3293
  %3300 = fmul fast float %3297, %3294
  br label %3301

; <label>:3301                                    ; preds = %3295, %3278
  %3302 = phi float [ %3298, %3295 ], [ %3292, %3278 ]
  %3303 = phi float [ %3299, %3295 ], [ %3293, %3278 ]
  %3304 = phi float [ %3300, %3295 ], [ %3294, %3278 ]
  %3305 = fmul fast float %3302, %3273
  %3306 = select i1 %213, float %3305, float %3302
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3306, float %3303, float %3304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = select i1 %213, float 0.000000e+00, float %3302
  %3309 = select i1 %213, float %3307, float %3303
  %3310 = select i1 %213, float 0.000000e+00, float %3304
  br label %3311

; <label>:3311                                    ; preds = %3301, %3263
  %3312 = phi float [ %3308, %3301 ], [ 0.000000e+00, %3263 ]
  %3313 = phi float [ %3309, %3301 ], [ 0.000000e+00, %3263 ]
  %3314 = phi float [ %3310, %3301 ], [ 0.000000e+00, %3263 ]
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = add i32 %29, 144
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, 255
  %3321 = uitofp i32 %3320 to float
  %3322 = lshr i32 %3319, 8
  %3323 = and i32 %3322, 255
  %3324 = uitofp i32 %3323 to float
  %3325 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3185, float %3186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3326 = fmul fast float %3324, %3325
  %3327 = fadd fast float %3326, %3321
  %3328 = fmul fast float %3327, 0x3F70101020000000
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  br i1 %2785, label %3330, label %3338

; <label>:3330                                    ; preds = %3311
  %3331 = fsub fast float 1.000000e+00, %2964
  %3332 = fmul fast float %3331, %2777
  %3333 = fmul fast float %3331, %2778
  %3334 = fmul fast float %3331, %2779
  %3335 = fmul fast float %3331, %2774
  %3336 = fmul fast float %3331, %2775
  %3337 = fmul fast float %3331, %2776
  br label %3338

; <label>:3338                                    ; preds = %3330, %3311
  %3339 = phi float [ %3335, %3330 ], [ %2774, %3311 ]
  %3340 = phi float [ %3336, %3330 ], [ %2775, %3311 ]
  %3341 = phi float [ %3337, %3330 ], [ %2776, %3311 ]
  %3342 = phi float [ %3332, %3330 ], [ %2777, %3311 ]
  %3343 = phi float [ %3333, %3330 ], [ %2778, %3311 ]
  %3344 = phi float [ %3334, %3330 ], [ %2779, %3311 ]
  %3345 = and i32 %3316, 3
  %3346 = icmp eq i32 %3345, 3
  br i1 %3346, label %3425, label %3347

; <label>:3347                                    ; preds = %3338
  %3348 = and i32 %3316, 16
  %3349 = icmp ne i32 %3348, 0
  %3350 = select i1 %3349, float %2964, float 0.000000e+00
  %3351 = icmp eq i32 %3345, 0
  br i1 %3351, label %3352, label %3380

; <label>:3352                                    ; preds = %3347
  %3353 = and i32 %3316, 64
  %3354 = icmp ne i32 %3353, 0
  %3355 = select i1 %3354, float %2964, float 0.000000e+00
  %3356 = fsub fast float %3184, %3342
  %3357 = fsub fast float %3185, %3343
  %3358 = fsub fast float %3186, %3344
  %3359 = fmul fast float %3350, %3356
  %3360 = fmul fast float %3350, %3357
  %3361 = fmul fast float %3350, %3358
  %3362 = fadd fast float %3359, %3342
  %3363 = fadd fast float %3360, %3343
  %3364 = fadd fast float %3361, %3344
  %3365 = fsub fast float %3170, %2780
  %3366 = fmul fast float %3350, %3365
  %3367 = fadd fast float %3366, %2780
  %3368 = fsub fast float %3312, %3339
  %3369 = fsub fast float %3313, %3340
  %3370 = fsub fast float %3314, %3341
  %3371 = fmul fast float %3355, %3368
  %3372 = fmul fast float %3355, %3369
  %3373 = fmul fast float %3355, %3370
  %3374 = fadd fast float %3371, %3339
  %3375 = fadd fast float %3372, %3340
  %3376 = fadd fast float %3373, %3341
  %3377 = fsub fast float %3329, %2783
  %3378 = fmul fast float %3350, %3377
  %3379 = fadd fast float %3378, %2783
  br label %3425

; <label>:3380                                    ; preds = %3347
  %3381 = icmp eq i32 %3345, 1
  br i1 %3381, label %3382, label %3395

; <label>:3382                                    ; preds = %3380
  %3383 = fadd fast float %3184, -1.000000e+00
  %3384 = fadd fast float %3185, -1.000000e+00
  %3385 = fadd fast float %3186, -1.000000e+00
  %3386 = fmul fast float %3350, %3383
  %3387 = fmul fast float %3350, %3384
  %3388 = fmul fast float %3350, %3385
  %3389 = fadd fast float %3386, 1.000000e+00
  %3390 = fadd fast float %3387, 1.000000e+00
  %3391 = fadd fast float %3388, 1.000000e+00
  %3392 = fmul fast float %3389, %3342
  %3393 = fmul fast float %3390, %3343
  %3394 = fmul fast float %3391, %3344
  br label %3425

; <label>:3395                                    ; preds = %3380
  %3396 = icmp eq i32 %3345, 2
  br i1 %3396, label %3397, label %3425

; <label>:3397                                    ; preds = %3395
  %3398 = call float @dx.op.unary.f32(i32 24, float %3184)  ; Sqrt(value)
  %3399 = call float @dx.op.unary.f32(i32 24, float %3185)  ; Sqrt(value)
  %3400 = call float @dx.op.unary.f32(i32 24, float %3186)  ; Sqrt(value)
  %3401 = fadd fast float %3398, -5.000000e-01
  %3402 = fadd fast float %3399, -5.000000e-01
  %3403 = fadd fast float %3400, -5.000000e-01
  %3404 = fmul fast float %3401, %3350
  %3405 = fmul fast float %3402, %3350
  %3406 = fmul fast float %3403, %3350
  %3407 = fadd fast float %3404, 5.000000e-01
  %3408 = fadd fast float %3405, 5.000000e-01
  %3409 = fadd fast float %3406, 5.000000e-01
  %3410 = fmul fast float %3407, 2.000000e+00
  %3411 = fsub fast float 1.000000e+00, %3410
  %3412 = fmul fast float %3411, %3342
  %3413 = fadd fast float %3412, %3410
  %3414 = fmul fast float %3413, %3342
  %3415 = fmul fast float %3408, 2.000000e+00
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = fmul fast float %3416, %3343
  %3418 = fadd fast float %3417, %3415
  %3419 = fmul fast float %3418, %3343
  %3420 = fmul fast float %3409, 2.000000e+00
  %3421 = fsub fast float 1.000000e+00, %3420
  %3422 = fmul fast float %3421, %3344
  %3423 = fadd fast float %3422, %3420
  %3424 = fmul fast float %3423, %3344
  br label %3425

; <label>:3425                                    ; preds = %3397, %3395, %3382, %3352, %3338
  %3426 = phi float [ %3339, %3338 ], [ %3339, %3397 ], [ %3339, %3395 ], [ %3339, %3382 ], [ %3374, %3352 ]
  %3427 = phi float [ %3340, %3338 ], [ %3340, %3397 ], [ %3340, %3395 ], [ %3340, %3382 ], [ %3375, %3352 ]
  %3428 = phi float [ %3341, %3338 ], [ %3341, %3397 ], [ %3341, %3395 ], [ %3341, %3382 ], [ %3376, %3352 ]
  %3429 = phi float [ %3342, %3338 ], [ %3414, %3397 ], [ %3342, %3395 ], [ %3392, %3382 ], [ %3362, %3352 ]
  %3430 = phi float [ %3343, %3338 ], [ %3419, %3397 ], [ %3343, %3395 ], [ %3393, %3382 ], [ %3363, %3352 ]
  %3431 = phi float [ %3344, %3338 ], [ %3424, %3397 ], [ %3344, %3395 ], [ %3394, %3382 ], [ %3364, %3352 ]
  %3432 = phi float [ %2780, %3338 ], [ %2780, %3397 ], [ %2780, %3395 ], [ %2780, %3382 ], [ %3367, %3352 ]
  %3433 = phi float [ %2783, %3338 ], [ %2783, %3397 ], [ %2783, %3395 ], [ %2783, %3382 ], [ %3379, %3352 ]
  %3434 = and i32 %3316, 12
  %3435 = icmp eq i32 %3434, 12
  br i1 %3435, label %3508, label %3436

; <label>:3436                                    ; preds = %3425
  %3437 = and i32 %3316, 2097184
  %3438 = icmp eq i32 %3437, 2097184
  %3439 = select i1 %3438, float %2964, float 0.000000e+00
  %3440 = and i32 %3316, 4194336
  %3441 = icmp eq i32 %3440, 4194336
  %3442 = select i1 %3441, float %2964, float 0.000000e+00
  %3443 = and i32 %3316, 8388640
  %3444 = icmp eq i32 %3443, 8388640
  %3445 = select i1 %3444, float %2964, float 0.000000e+00
  %3446 = icmp eq i32 %3434, 0
  br i1 %3446, label %3447, label %3460

; <label>:3447                                    ; preds = %3436
  %3448 = fsub fast float %3265, %2772
  %3449 = fsub fast float %3266, %2773
  %3450 = fmul fast float %3439, %3448
  %3451 = fmul fast float %3439, %3449
  %3452 = fadd fast float %3450, %2772
  %3453 = fadd fast float %3451, %2773
  %3454 = fsub fast float %3267, %2782
  %3455 = fmul fast float %3442, %3454
  %3456 = fadd fast float %3455, %2782
  %3457 = fsub fast float %3264, %2781
  %3458 = fmul fast float %3445, %3457
  %3459 = fadd fast float %3458, %2781
  br label %3508

; <label>:3460                                    ; preds = %3436
  %3461 = icmp eq i32 %3434, 4
  br i1 %3461, label %3462, label %3494

; <label>:3462                                    ; preds = %3460
  %3463 = fmul fast float %3439, %3265
  %3464 = fmul fast float %3439, %3266
  %3465 = fadd fast float %3463, %2772
  %3466 = fadd fast float %3464, %2773
  %3467 = call float @dx.op.binary.f32(i32 36, float %2782, float %3267)  ; FMin(a,b)
  %3468 = fsub fast float %3467, %2782
  %3469 = fmul fast float %3468, %3442
  %3470 = fadd fast float %3469, %2782
  %3471 = fadd fast float %3264, %2781
  %3472 = fmul fast float %3471, 0x3FF337FAE0000000
  %3473 = fmul fast float %2781, %2781
  %3474 = fmul fast float %3264, %3264
  %3475 = fadd fast float %3474, %3473
  %3476 = fmul fast float %3475, 0x3FE5152B00000000
  %3477 = fmul fast float %2781, 0xBFCC1F85E0000000
  %3478 = fmul fast float %3477, %3264
  %3479 = fadd fast float %3478, 0xBFE1363700000000
  %3480 = fadd fast float %3479, %3472
  %3481 = fsub fast float %3480, %3476
  %3482 = fmul fast float %3471, 0x3FBA6F0D00000000
  %3483 = fmul fast float %3475, 0x3FD0432880000000
  %3484 = fmul fast float %2781, 0xBFEF110800000000
  %3485 = fmul fast float %3484, %3264
  %3486 = fadd fast float %3485, 1.000000e+00
  %3487 = fsub fast float %3486, %3482
  %3488 = fadd fast float %3487, %3483
  %3489 = fdiv fast float %3481, %3488
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  %3491 = fsub fast float %3490, %2781
  %3492 = fmul fast float %3491, %3445
  %3493 = fadd fast float %3492, %2781
  br label %3508

; <label>:3494                                    ; preds = %3460
  %3495 = icmp eq i32 %3434, 8
  br i1 %3495, label %3496, label %3508

; <label>:3496                                    ; preds = %3494
  %3497 = fmul fast float %3439, %3265
  %3498 = fmul fast float %3439, %3266
  %3499 = fadd fast float %3497, %2772
  %3500 = fadd fast float %3498, %2773
  %3501 = call float @dx.op.binary.f32(i32 36, float %2782, float %3267)  ; FMin(a,b)
  %3502 = fsub fast float %3501, %2782
  %3503 = fmul fast float %3502, %3442
  %3504 = fadd fast float %3503, %2782
  %3505 = fsub fast float %3264, %2781
  %3506 = fmul fast float %3445, %3505
  %3507 = fadd fast float %3506, %2781
  br label %3508

; <label>:3508                                    ; preds = %3496, %3494, %3462, %3447, %3425, %2963, %2784, %2771
  %3509 = phi float [ %2772, %3425 ], [ %2772, %2963 ], [ %2772, %2771 ], [ %2772, %2784 ], [ %3452, %3447 ], [ %3465, %3462 ], [ %2772, %3494 ], [ %3499, %3496 ]
  %3510 = phi float [ %2773, %3425 ], [ %2773, %2963 ], [ %2773, %2771 ], [ %2773, %2784 ], [ %3453, %3447 ], [ %3466, %3462 ], [ %2773, %3494 ], [ %3500, %3496 ]
  %3511 = phi float [ %3426, %3425 ], [ %2774, %2963 ], [ %2774, %2771 ], [ %2774, %2784 ], [ %3426, %3447 ], [ %3426, %3462 ], [ %3426, %3494 ], [ %3426, %3496 ]
  %3512 = phi float [ %3427, %3425 ], [ %2775, %2963 ], [ %2775, %2771 ], [ %2775, %2784 ], [ %3427, %3447 ], [ %3427, %3462 ], [ %3427, %3494 ], [ %3427, %3496 ]
  %3513 = phi float [ %3428, %3425 ], [ %2776, %2963 ], [ %2776, %2771 ], [ %2776, %2784 ], [ %3428, %3447 ], [ %3428, %3462 ], [ %3428, %3494 ], [ %3428, %3496 ]
  %3514 = phi float [ %3429, %3425 ], [ %2777, %2963 ], [ %2777, %2771 ], [ %2777, %2784 ], [ %3429, %3447 ], [ %3429, %3462 ], [ %3429, %3494 ], [ %3429, %3496 ]
  %3515 = phi float [ %3430, %3425 ], [ %2778, %2963 ], [ %2778, %2771 ], [ %2778, %2784 ], [ %3430, %3447 ], [ %3430, %3462 ], [ %3430, %3494 ], [ %3430, %3496 ]
  %3516 = phi float [ %3431, %3425 ], [ %2779, %2963 ], [ %2779, %2771 ], [ %2779, %2784 ], [ %3431, %3447 ], [ %3431, %3462 ], [ %3431, %3494 ], [ %3431, %3496 ]
  %3517 = phi float [ %3432, %3425 ], [ %2780, %2963 ], [ %2780, %2771 ], [ %2780, %2784 ], [ %3432, %3447 ], [ %3432, %3462 ], [ %3432, %3494 ], [ %3432, %3496 ]
  %3518 = phi float [ %2781, %3425 ], [ %2781, %2963 ], [ %2781, %2771 ], [ %2781, %2784 ], [ %3459, %3447 ], [ %3493, %3462 ], [ %2781, %3494 ], [ %3507, %3496 ]
  %3519 = phi float [ %2782, %3425 ], [ %2782, %2963 ], [ %2782, %2771 ], [ %2782, %2784 ], [ %3456, %3447 ], [ %3470, %3462 ], [ %2782, %3494 ], [ %3504, %3496 ]
  %3520 = phi float [ %3433, %3425 ], [ %2783, %2963 ], [ %2783, %2771 ], [ %2783, %2784 ], [ %3433, %3447 ], [ %3433, %3462 ], [ %3433, %3494 ], [ %3433, %3496 ]
  %3521 = add i32 %29, 360
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.i32 %3522, 1
  %3525 = bitcast i32 %3523 to float
  %3526 = bitcast i32 %3524 to float
  %3527 = fcmp fast oge float %3525, 0.000000e+00
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 0
  %3530 = select i1 %3527, float %3525, float %3529
  %3531 = fadd fast float %3530, %175
  %3532 = fmul fast float %3526, %176
  %3533 = add i32 %29, 456
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3537, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = fmul fast float %3532, %3539
  %3541 = fadd fast float %3531, %3540
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = and i32 %167, 65535
  %3545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3544)  ; LegacyF16ToF32(value)
  %3546 = lshr i32 %167, 16
  %3547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3546)  ; LegacyF16ToF32(value)
  %3548 = and i32 %168, 65535
  %3549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3548)  ; LegacyF16ToF32(value)
  %3550 = fmul fast float %3545, %3514
  %3551 = fmul fast float %3547, %3515
  %3552 = fmul fast float %3549, %3516
  %3553 = shl i32 %169, 4
  %3554 = and i32 %3553, 32752
  %3555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3554)  ; LegacyF16ToF32(value)
  %3556 = lshr i32 %169, 7
  %3557 = and i32 %3556, 32752
  %3558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3557)  ; LegacyF16ToF32(value)
  %3559 = lshr i32 %169, 22
  %3560 = shl nuw nsw i32 %3559, 5
  %3561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3560)  ; LegacyF16ToF32(value)
  %3562 = and i32 %170, 65535
  %3563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3562)  ; LegacyF16ToF32(value)
  %3564 = fmul fast float %3543, %3511
  %3565 = fmul fast float %3564, %3555
  %3566 = fmul fast float %3565, %3563
  %3567 = fmul fast float %3543, %3512
  %3568 = fmul fast float %3567, %3558
  %3569 = fmul fast float %3568, %3563
  %3570 = fmul fast float %3543, %3513
  %3571 = fmul fast float %3570, %3561
  %3572 = fmul fast float %3571, %3563
  %3573 = call float @dx.op.dot2.f32(i32 54, float %3509, float %3510, float %3509, float %3510)  ; Dot2(ax,ay,bx,by)
  %3574 = fmul fast float %3573, 0x3FE3333340000000
  %3575 = fsub fast float 1.000000e+00, %3574
  %3576 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3510, float %3575, float %3509, float %3510, float %3575)  ; Dot3(ax,ay,az,bx,by,bz)
  %3577 = call float @dx.op.unary.f32(i32 25, float %3576)  ; Rsqrt(value)
  %3578 = fmul fast float %3577, %3509
  %3579 = fmul fast float %3577, %3510
  %3580 = fmul fast float %3575, %3577
  %3581 = fmul fast float %3580, %81
  %3582 = fmul fast float %3580, %82
  %3583 = fmul fast float %3580, %83
  %3584 = fmul fast float %3578, %55
  %3585 = fmul fast float %3578, %56
  %3586 = fmul fast float %3578, %57
  %3587 = fadd fast float %3581, %3584
  %3588 = fadd fast float %3582, %3585
  %3589 = fadd fast float %3583, %3586
  %3590 = fmul fast float %93, %3579
  %3591 = fmul fast float %94, %3579
  %3592 = fmul fast float %95, %3579
  %3593 = fadd fast float %3587, %3590
  %3594 = fadd fast float %3588, %3591
  %3595 = fadd fast float %3589, %3592
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3594, float %3595, float %3593, float %3594, float %3595)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = call float @dx.op.unary.f32(i32 25, float %3596)  ; Rsqrt(value)
  %3598 = fmul fast float %3593, %3597
  %3599 = fmul fast float %3594, %3597
  %3600 = fmul fast float %3595, %3597
  %3601 = fadd fast float %3517, 0xBFB99999A0000000
  %3602 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3603 = fmul fast float %3602, 0x3FF1C71C80000000
  %3604 = call float @dx.op.binary.f32(i32 36, float %3517, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3605 = fsub fast float 1.000000e+00, %3603
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  %3607 = fmul fast float %3606, %3550
  %3608 = fmul fast float %3606, %3551
  %3609 = fmul fast float %3606, %3552
  %3610 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3611 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3612 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3613 = fmul fast float %3603, %3550
  %3614 = fmul fast float %3603, %3551
  %3615 = fmul fast float %3603, %3552
  %3616 = fadd fast float %3613, %3604
  %3617 = fadd fast float %3614, %3604
  %3618 = fadd fast float %3615, %3604
  %3619 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  %3620 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3621 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3622 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.i32 %3623, 3
  %3625 = and i32 %3624, 8
  %3626 = icmp ne i32 %3625, 0
  %3627 = call float @dx.op.binary.f32(i32 35, float %3610, float %3550)  ; FMax(a,b)
  %3628 = call float @dx.op.binary.f32(i32 35, float %3611, float %3550)  ; FMax(a,b)
  %3629 = call float @dx.op.binary.f32(i32 35, float %3612, float %3550)  ; FMax(a,b)
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = select i1 %213, float %3550, float %3610
  %3632 = select i1 %213, float %3630, float %3611
  %3633 = select i1 %213, float 1.000000e+00, float %3612
  %3634 = select i1 %3626, float %3627, float %3631
  %3635 = select i1 %3626, float %3628, float %3632
  %3636 = select i1 %3626, float %3629, float %3633
  %3637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3638 = extractvalue %dx.types.CBufRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.CBufRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.CBufRet.f32 %3637, 2
  %3641 = fadd fast float %3638, %161
  %3642 = fadd fast float %3639, %162
  %3643 = fadd fast float %3640, %163
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.CBufRet.f32 %3644, 1
  %3647 = fsub fast float %3641, %3645
  %3648 = fsub fast float %3642, %3646
  %3649 = fmul fast float %3647, %3647
  %3650 = fmul fast float %3648, %3648
  %3651 = fadd fast float %3649, %3650
  %3652 = call float @dx.op.unary.f32(i32 24, float %3651)  ; Sqrt(value)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3644, 2
  %3654 = fcmp fast olt float %3652, %3653
  br i1 %3654, label %3655, label %3722

; <label>:3655                                    ; preds = %3508
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 0
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3658, 1
  %3664 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3665 = extractvalue %dx.types.CBufRet.f32 %3656, 3
  %3666 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3667 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3668 = fadd fast float %3665, %3641
  %3669 = fadd fast float %3666, %3642
  %3670 = fadd fast float %3667, %3643
  %3671 = fmul fast float %3668, %3657
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3669, float %3659, float %3671)  ; FMad(a,b,c)
  %3673 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3661, float %3672)  ; FMad(a,b,c)
  %3674 = fmul fast float %3668, %3662
  %3675 = call float @dx.op.tertiary.f32(i32 46, float %3669, float %3663, float %3674)  ; FMad(a,b,c)
  %3676 = call float @dx.op.tertiary.f32(i32 46, float %3670, float %3664, float %3675)  ; FMad(a,b,c)
  %3677 = fsub fast float %3673, %3665
  %3678 = fsub fast float %3676, %3666
  %3679 = fsub fast float %3677, %3645
  %3680 = fadd fast float %3679, %3653
  %3681 = fsub fast float %3678, %3646
  %3682 = fadd fast float %3681, %3653
  %3683 = extractvalue %dx.types.CBufRet.f32 %3644, 3
  %3684 = fmul fast float %3680, %3683
  %3685 = fmul fast float %3682, %3683
  %3686 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3687 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  %3688 = fsub fast float 1.000000e+00, %3686
  %3689 = fsub fast float 1.000000e+00, %3687
  %3690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %3688, float %3689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = fcmp fast ugt float %3691, 0.000000e+00
  br i1 %3692, label %3693, label %3996

; <label>:3693                                    ; preds = %3655
  %3694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3694, 2
  %3696 = fmul fast float %3695, %3691
  %3697 = extractvalue %dx.types.CBufRet.f32 %3694, 3
  %3698 = fadd fast float %3697, %3696
  %3699 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3700 = fadd fast float %3698, %3667
  %3701 = fmul fast float %3673, %3661
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3676, float %3664, float %3701)  ; FMad(a,b,c)
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3700, float %3699, float %3702)  ; FMad(a,b,c)
  %3704 = fsub fast float %3703, %3667
  %3705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3705, 2
  %3707 = fsub fast float %3704, %3706
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %3688, float %3689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %25, float %3688, float %3689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = fadd fast float %3713, %3709
  %3717 = fmul fast float %3716, 0x3F847AE140000000
  %3718 = fadd fast float %3714, %3710
  %3719 = fmul fast float %3718, 0x3F847AE140000000
  %3720 = fadd fast float %3715, %3711
  %3721 = fmul fast float %3720, 0x3F847AE140000000
  br label %3996

; <label>:3722                                    ; preds = %3508
  %3723 = and i32 %192, 1
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3996, label %3725

; <label>:3725                                    ; preds = %3722
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3733 = extractvalue %dx.types.CBufRet.f32 %3728, 1
  %3734 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3735 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3736 = extractvalue %dx.types.CBufRet.f32 %3728, 3
  %3737 = extractvalue %dx.types.CBufRet.f32 %3730, 3
  %3738 = fadd fast float %3735, %3641
  %3739 = fadd fast float %3736, %3642
  %3740 = fadd fast float %3737, %3643
  %3741 = fmul fast float %3738, %3727
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3729, float %3741)  ; FMad(a,b,c)
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %3740, float %3731, float %3742)  ; FMad(a,b,c)
  %3744 = fmul fast float %3738, %3732
  %3745 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3733, float %3744)  ; FMad(a,b,c)
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3740, float %3734, float %3745)  ; FMad(a,b,c)
  %3747 = fsub fast float %3743, %3735
  %3748 = fsub fast float %3746, %3736
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3753 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.i32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.i32 %3756, 1
  %3759 = udiv i32 %3758, %3757
  %3760 = fsub fast float %3747, %3750
  %3761 = fsub fast float %3748, %3751
  %3762 = call float @dx.op.binary.f32(i32 35, float %3760, float 0.000000e+00)  ; FMax(a,b)
  %3763 = call float @dx.op.binary.f32(i32 35, float %3761, float 0.000000e+00)  ; FMax(a,b)
  %3764 = call float @dx.op.binary.f32(i32 36, float %3762, float %3752)  ; FMin(a,b)
  %3765 = call float @dx.op.binary.f32(i32 36, float %3763, float %3753)  ; FMin(a,b)
  %3766 = add i32 %3757, -1
  %3767 = add i32 %3759, -1
  %3768 = fmul fast float %3764, %3755
  %3769 = fmul fast float %3765, %3755
  %3770 = fptoui float %3768 to i32
  %3771 = fptoui float %3769 to i32
  %3772 = call i32 @dx.op.binary.i32(i32 40, i32 %3770, i32 %3766)  ; UMin(a,b)
  %3773 = call i32 @dx.op.binary.i32(i32 40, i32 %3771, i32 %3767)  ; UMin(a,b)
  %3774 = mul i32 %3773, %3757
  %3775 = add i32 %3774, %3772
  %3776 = shl i32 %3775, 2
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = icmp eq i32 %3778, -1
  br i1 %3779, label %3996, label %3780

; <label>:3780                                    ; preds = %3725
  %3781 = mul i32 %3778, 148
  %3782 = add i32 %3781, 4
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = add i32 %3781, 8
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = add i32 %3781, 36
  %3789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = add i32 %3781, 60
  %3792 = add i32 %3781, 92
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = add i32 %3781, 116
  %3796 = fsub fast float %3747, %3784
  %3797 = fsub fast float %3748, %3787
  %3798 = fmul fast float %3755, %3796
  %3799 = fmul fast float %3755, %3797
  %3800 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3805 = call float @dx.op.unary.f32(i32 83, float %3800)  ; DerivCoarseX(value)
  %3806 = call float @dx.op.unary.f32(i32 83, float %3802)  ; DerivCoarseX(value)
  %3807 = call float @dx.op.unary.f32(i32 84, float %3800)  ; DerivCoarseY(value)
  %3808 = call float @dx.op.unary.f32(i32 84, float %3802)  ; DerivCoarseY(value)
  %3809 = fmul fast float %3805, %3804
  %3810 = fmul fast float %3806, %3804
  %3811 = fmul fast float %3807, %3804
  %3812 = fmul fast float %3808, %3804
  %3813 = call float @dx.op.dot2.f32(i32 54, float %3811, float %3812, float %3811, float %3812)  ; Dot2(ax,ay,bx,by)
  %3814 = call float @dx.op.dot2.f32(i32 54, float %3809, float %3810, float %3809, float %3810)  ; Dot2(ax,ay,bx,by)
  %3815 = call float @dx.op.binary.f32(i32 35, float %3814, float %3813)  ; FMax(a,b)
  %3816 = call float @dx.op.unary.f32(i32 23, float %3815)  ; Log(value)
  %3817 = fmul fast float %3816, 5.000000e-01
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3820 = fadd fast float %3819, %3817
  %3821 = call float @dx.op.binary.f32(i32 35, float %3820, float 0.000000e+00)  ; FMax(a,b)
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 3
  %3824 = fadd fast float %3823, %3821
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 3
  %3827 = fadd fast float %3824, %3826
  %3828 = add i32 %3794, 0
  %3829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3830 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3829, i32 0)  ; GetDimensions(handle,mipLevel)
  %3831 = extractvalue %dx.types.Dimensions %3830, 0
  %3832 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3831)  ; FirstbitLo(value)
  %3833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.i32 %3833, 1
  %3835 = sub nsw i32 %3834, %3832
  %3836 = sitofp i32 %3835 to float
  %3837 = fsub fast float %3827, %3836
  %3838 = call float @dx.op.binary.f32(i32 35, float %3837, float 0.000000e+00)  ; FMax(a,b)
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3829, %dx.types.Handle %24, float %3800, float %3802, float %3790, float undef, i32 0, i32 0, i32 undef, float %3838)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = fcmp ule float %3840, 0x3FE0101020000000
  %3842 = extractvalue %dx.types.CBufRet.i32 %3833, 0
  %3843 = and i32 %3842, 128
  %3844 = icmp ne i32 %3843, 0
  %3845 = and i1 %3841, %3844
  br i1 %3845, label %3996, label %3846

; <label>:3846                                    ; preds = %3780
  %3847 = add i32 %3781, 20
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = add i32 %3781, 24
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = add i32 %3781, 40
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = add i32 %3781, 96
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 2
  %3861 = fmul fast float %3860, %3800
  %3862 = fmul fast float %3860, %3802
  %3863 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3864 = fadd fast float %3861, %3863
  %3865 = fadd fast float %3862, %3863
  %3866 = add i32 %3858, 0
  %3867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3866, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3868 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3867, i32 0)  ; GetDimensions(handle,mipLevel)
  %3869 = extractvalue %dx.types.Dimensions %3868, 0
  %3870 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3869)  ; FirstbitLo(value)
  %3871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.i32 %3871, 1
  %3873 = sub nsw i32 %3872, %3870
  %3874 = sitofp i32 %3873 to float
  %3875 = fsub fast float %3824, %3874
  %3876 = call float @dx.op.binary.f32(i32 35, float %3875, float 0.000000e+00)  ; FMax(a,b)
  %3877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3867, %dx.types.Handle %24, float %3864, float %3865, float %3855, float undef, i32 0, i32 0, i32 undef, float %3876)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = fmul fast float %3878, %3849
  %3880 = fadd fast float %3879, %3852
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3889 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3890 = fadd fast float %3886, %3747
  %3891 = fadd fast float %3888, %3748
  %3892 = fadd fast float %3880, %3889
  %3893 = fmul fast float %3890, %3882
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3891, float %3883, float %3893)  ; FMad(a,b,c)
  %3895 = call float @dx.op.tertiary.f32(i32 46, float %3892, float %3884, float %3894)  ; FMad(a,b,c)
  %3896 = fsub fast float %3895, %3889
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3899 = fsub fast float %3896, %3898
  %3900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.i32 %3900, 0
  %3902 = call i32 @dx.op.binary.i32(i32 40, i32 %3778, i32 %3901)  ; UMin(a,b)
  %3903 = mul i32 %3902, 36
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = add i32 %3903, 4
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = fmul fast float %3908, %3800
  %3910 = fmul fast float %3908, %3802
  %3911 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3912 = fadd fast float %3909, %3911
  %3913 = fadd fast float %3910, %3911
  %3914 = icmp eq i32 %3905, 0
  br i1 %3914, label %3983, label %3915

; <label>:3915                                    ; preds = %3846
  br label %3916

; <label>:3916                                    ; preds = %3973, %3915
  %3917 = phi float [ %3974, %3973 ], [ 0.000000e+00, %3915 ]
  %3918 = phi float [ %3975, %3973 ], [ 0.000000e+00, %3915 ]
  %3919 = phi float [ %3976, %3973 ], [ 0.000000e+00, %3915 ]
  %3920 = phi float [ %3977, %3973 ], [ 0.000000e+00, %3915 ]
  %3921 = phi float [ %3978, %3973 ], [ 0.000000e+00, %3915 ]
  %3922 = phi float [ %3979, %3973 ], [ 0.000000e+00, %3915 ]
  %3923 = phi i32 [ %3980, %3973 ], [ 0, %3915 ]
  %3924 = shl i32 %3923, 2
  %3925 = add i32 %3791, %3924
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = add i32 %3795, %3924
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = add i32 %3930, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3932, i32 0)  ; GetDimensions(handle,mipLevel)
  %3934 = extractvalue %dx.types.Dimensions %3933, 0
  %3935 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3934)  ; FirstbitLo(value)
  %3936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.i32 %3936, 1
  %3938 = sub nsw i32 %3937, %3935
  %3939 = sitofp i32 %3938 to float
  %3940 = fsub fast float %3824, %3939
  %3941 = call float @dx.op.binary.f32(i32 35, float %3940, float 0.000000e+00)  ; FMax(a,b)
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3932, %dx.types.Handle %24, float %3912, float %3913, float %3927, float undef, i32 0, i32 0, i32 undef, float %3941)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = fcmp fast ogt float %3943, 0.000000e+00
  br i1 %3944, label %3945, label %3973

; <label>:3945                                    ; preds = %3916
  %3946 = add i32 %3906, %3924
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = and i32 %3948, 32767
  %3950 = mul nuw nsw i32 %3949, 928
  %3951 = add nuw nsw i32 %3950, 48
  %3952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3951, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 0
  %3954 = extractvalue %dx.types.ResRet.f32 %3952, 1
  %3955 = extractvalue %dx.types.ResRet.f32 %3952, 2
  %3956 = add nuw nsw i32 %3950, 60
  %3957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = fmul fast float %3953, %3943
  %3962 = fmul fast float %3954, %3943
  %3963 = fmul fast float %3955, %3943
  %3964 = fadd fast float %3961, %3917
  %3965 = fadd fast float %3962, %3918
  %3966 = fadd fast float %3963, %3919
  %3967 = fmul fast float %3958, %3943
  %3968 = fmul fast float %3959, %3943
  %3969 = fmul fast float %3960, %3943
  %3970 = fadd fast float %3967, %3920
  %3971 = fadd fast float %3968, %3921
  %3972 = fadd fast float %3969, %3922
  br label %3973

; <label>:3973                                    ; preds = %3945, %3916
  %3974 = phi float [ %3964, %3945 ], [ %3917, %3916 ]
  %3975 = phi float [ %3965, %3945 ], [ %3918, %3916 ]
  %3976 = phi float [ %3966, %3945 ], [ %3919, %3916 ]
  %3977 = phi float [ %3970, %3945 ], [ %3920, %3916 ]
  %3978 = phi float [ %3971, %3945 ], [ %3921, %3916 ]
  %3979 = phi float [ %3972, %3945 ], [ %3922, %3916 ]
  %3980 = add nuw i32 %3923, 1
  %3981 = icmp eq i32 %3980, %3905
  br i1 %3981, label %3982, label %3916

; <label>:3982                                    ; preds = %3973
  br label %3983

; <label>:3983                                    ; preds = %3982, %3846
  %3984 = phi float [ 0.000000e+00, %3846 ], [ %3974, %3982 ]
  %3985 = phi float [ 0.000000e+00, %3846 ], [ %3975, %3982 ]
  %3986 = phi float [ 0.000000e+00, %3846 ], [ %3976, %3982 ]
  %3987 = phi float [ 0.000000e+00, %3846 ], [ %3977, %3982 ]
  %3988 = phi float [ 0.000000e+00, %3846 ], [ %3978, %3982 ]
  %3989 = phi float [ 0.000000e+00, %3846 ], [ %3979, %3982 ]
  %3990 = fadd fast float %3987, %3984
  %3991 = fmul fast float %3990, 0x3F847AE140000000
  %3992 = fadd fast float %3988, %3985
  %3993 = fmul fast float %3992, 0x3F847AE140000000
  %3994 = fadd fast float %3989, %3986
  %3995 = fmul fast float %3994, 0x3F847AE140000000
  br label %3996

; <label>:3996                                    ; preds = %3983, %3780, %3725, %3722, %3693, %3655
  %3997 = phi float [ %3707, %3693 ], [ -1.310720e+05, %3655 ], [ %3899, %3983 ], [ -1.310720e+05, %3725 ], [ -1.310720e+05, %3780 ], [ -1.310720e+05, %3722 ]
  %3998 = phi float [ %3717, %3693 ], [ 0.000000e+00, %3655 ], [ %3991, %3983 ], [ 0.000000e+00, %3725 ], [ 0.000000e+00, %3780 ], [ 0.000000e+00, %3722 ]
  %3999 = phi float [ %3719, %3693 ], [ 0.000000e+00, %3655 ], [ %3993, %3983 ], [ 0.000000e+00, %3725 ], [ 0.000000e+00, %3780 ], [ 0.000000e+00, %3722 ]
  %4000 = phi float [ %3721, %3693 ], [ 0.000000e+00, %3655 ], [ %3995, %3983 ], [ 0.000000e+00, %3725 ], [ 0.000000e+00, %3780 ], [ 0.000000e+00, %3722 ]
  %4001 = phi i1 [ true, %3693 ], [ false, %3655 ], [ true, %3983 ], [ false, %3725 ], [ false, %3780 ], [ false, %3722 ]
  %4002 = and i32 %192, 3
  %4003 = icmp eq i32 %4002, 1
  %4004 = select i1 %4003, float 1.000000e+00, float 0.000000e+00
  %4005 = fsub fast float %3997, %163
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = select i1 %4001, float %4006, float 1.000000e+00
  %4008 = fmul fast float %4007, %4004
  %4009 = icmp eq i32 %4002, 3
  %4010 = select i1 %4009, float 1.000000e+00, float %4008
  %4011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4010)  ; FMax(a,b)
  %4012 = fcmp fast olt float %4010, 1.000000e+00
  %4013 = and i1 %225, %4012
  br i1 %4013, label %4014, label %4024

; <label>:4014                                    ; preds = %3996
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %45, float %46, float %47, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = fadd fast float %4016, %4011
  %4020 = fcmp ule float %44, 0.000000e+00
  %4021 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = select i1 %4020, float %4021, float 1.000000e+00
  %4023 = fmul fast float %4022, %4018
  br label %4024

; <label>:4024                                    ; preds = %4014, %3996
  %4025 = phi float [ %4019, %4014 ], [ %4011, %3996 ]
  %4026 = phi float [ %4017, %4014 ], [ 0.000000e+00, %3996 ]
  %4027 = phi float [ %4023, %4014 ], [ 0.000000e+00, %3996 ]
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = fcmp fast une float %4029, 0.000000e+00
  %4032 = fcmp fast une float %4030, 0.000000e+00
  %4033 = or i1 %4031, %4032
  br i1 %4033, label %4034, label %4593

; <label>:4034                                    ; preds = %4024
  br i1 %4031, label %4035, label %4308

; <label>:4035                                    ; preds = %4034
  %4036 = call float @dx.op.unary.f32(i32 23, float %3519)  ; Log(value)
  %4037 = fmul fast float %4036, 4.000000e+00
  %4038 = call float @dx.op.unary.f32(i32 21, float %4037)  ; Exp(value)
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = fmul fast float %4040, %32
  %4042 = fmul fast float %4040, %33
  %4043 = fmul fast float %4040, %34
  %4044 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4045 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %4046 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4047 = call float @dx.op.unary.f32(i32 23, float %4044)  ; Log(value)
  %4048 = call float @dx.op.unary.f32(i32 23, float %4045)  ; Log(value)
  %4049 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4050 = fmul fast float %4047, 4.000000e+00
  %4051 = fmul fast float %4048, 4.000000e+00
  %4052 = fmul fast float %4049, 4.000000e+00
  %4053 = call float @dx.op.unary.f32(i32 21, float %4050)  ; Exp(value)
  %4054 = call float @dx.op.unary.f32(i32 21, float %4051)  ; Exp(value)
  %4055 = call float @dx.op.unary.f32(i32 21, float %4052)  ; Exp(value)
  %4056 = fadd fast float %4054, %4053
  %4057 = fadd fast float %4056, %4055
  %4058 = fdiv fast float 1.000000e+00, %4057
  %4059 = fmul fast float %4058, %4053
  %4060 = fcmp fast ogt float %41, 0.000000e+00
  %4061 = fcmp fast ogt float %42, 0.000000e+00
  %4062 = fcmp fast ogt float %43, 0.000000e+00
  %4063 = fcmp fast olt float %41, 0.000000e+00
  %4064 = fcmp fast olt float %42, 0.000000e+00
  %4065 = fcmp fast olt float %43, 0.000000e+00
  %4066 = zext i1 %4060 to i32
  %4067 = zext i1 %4061 to i32
  %4068 = zext i1 %4062 to i32
  %4069 = zext i1 %4063 to i32
  %4070 = zext i1 %4064 to i32
  %4071 = zext i1 %4065 to i32
  %4072 = sub nsw i32 %4066, %4069
  %4073 = sub nsw i32 %4067, %4070
  %4074 = sub nsw i32 %4068, %4071
  %4075 = call float @dx.op.unary.f32(i32 83, float %4041)  ; DerivCoarseX(value)
  %4076 = call float @dx.op.unary.f32(i32 83, float %4042)  ; DerivCoarseX(value)
  %4077 = call float @dx.op.unary.f32(i32 83, float %4043)  ; DerivCoarseX(value)
  %4078 = call float @dx.op.unary.f32(i32 84, float %4041)  ; DerivCoarseY(value)
  %4079 = call float @dx.op.unary.f32(i32 84, float %4042)  ; DerivCoarseY(value)
  %4080 = call float @dx.op.unary.f32(i32 84, float %4043)  ; DerivCoarseY(value)
  %4081 = fcmp fast ole float %224, %4059
  %4082 = fmul fast float %4058, %4056
  %4083 = fcmp fast ole float %224, %4082
  %4084 = select i1 %4083, float %4043, float %4041
  %4085 = select i1 %4083, float %4041, float %4042
  %4086 = select i1 %4081, float %4042, float %4084
  %4087 = select i1 %4081, float %4043, float %4085
  %4088 = select i1 %4083, float %4077, float %4075
  %4089 = select i1 %4083, float %4075, float %4076
  %4090 = select i1 %4081, float %4076, float %4088
  %4091 = select i1 %4081, float %4077, float %4089
  %4092 = select i1 %4083, float %4080, float %4078
  %4093 = select i1 %4083, float %4078, float %4079
  %4094 = select i1 %4081, float %4079, float %4092
  %4095 = select i1 %4081, float %4080, float %4093
  %4096 = call float @dx.op.unary.f32(i32 27, float %4086)  ; Round_ni(value)
  %4097 = call float @dx.op.unary.f32(i32 27, float %4087)  ; Round_ni(value)
  %4098 = fptosi float %4096 to i32
  %4099 = fptosi float %4097 to i32
  %4100 = xor i32 %4099, %4098
  %4101 = sitofp i32 %4100 to float
  %4102 = fptosi float %4101 to i32
  %4103 = sitofp i32 %4102 to float
  %4104 = fmul fast float %4103, 0x3FE3C6EF40000000
  %4105 = frem fast float %4096, 2.560000e+02
  %4106 = frem fast float %4097, 2.560000e+02
  %4107 = fptoui float %4105 to i32
  %4108 = fptoui float %4106 to i32
  %4109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4107, i32 %4108, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = fadd fast float %4110, %4104
  %4114 = fadd fast float %4111, %4104
  %4115 = fadd fast float %4112, %4104
  %4116 = call float @dx.op.unary.f32(i32 22, float %4113)  ; Frc(value)
  %4117 = call float @dx.op.unary.f32(i32 22, float %4114)  ; Frc(value)
  %4118 = call float @dx.op.unary.f32(i32 22, float %4115)  ; Frc(value)
  %4119 = fmul fast float %4118, 0x401921FB60000000
  %4120 = call float @dx.op.unary.f32(i32 13, float %4119)  ; Sin(value)
  %4121 = call float @dx.op.unary.f32(i32 12, float %4119)  ; Cos(value)
  %4122 = fsub fast float -0.000000e+00, %4121
  %4123 = fmul fast float %4121, %4086
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4120, float %4087, float %4123)  ; FMad(a,b,c)
  %4125 = fmul fast float %4120, %4086
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4087, float %4125)  ; FMad(a,b,c)
  %4127 = fadd fast float %4124, %4116
  %4128 = fadd fast float %4126, %4117
  %4129 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4130 = bitcast float %4129 to i32
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4170, label %4132

; <label>:4132                                    ; preds = %4035
  %4133 = add i32 %4130, 0
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4134, %dx.types.Handle %71, float %4127, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4090, float %4091, float undef, float %4094, float %4095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4137, 2
  %4140 = fsub fast float 1.000000e+00, %4029
  %4141 = call float @dx.op.binary.f32(i32 35, float %4140, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4142 = bitcast float %4029 to i32
  %4143 = sitofp i32 %4142 to float
  %4144 = fadd fast float %4143, 0xC1CFBF8940000000
  %4145 = fmul fast float %4139, %4144
  %4146 = fadd fast float %4145, 0x41CFBF8940000000
  %4147 = fptosi float %4146 to i32
  %4148 = bitcast i32 %4147 to float
  %4149 = bitcast float %4141 to i32
  %4150 = sitofp i32 %4149 to float
  %4151 = fadd fast float %4150, 0xC1CFBF8940000000
  %4152 = fmul fast float %4151, %4139
  %4153 = fadd fast float %4152, 0x41CFBF8940000000
  %4154 = fptosi float %4153 to i32
  %4155 = bitcast i32 %4154 to float
  %4156 = fmul fast float %4148, %4138
  %4157 = fmul fast float %4155, %4138
  %4158 = fsub fast float %4141, %4156
  %4159 = fadd fast float %4157, %4141
  %4160 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4162 = fsub fast float %4136, %4160
  %4163 = fsub fast float %4161, %4160
  %4164 = bitcast float %4163 to i32
  %4165 = sub nsw i32 2129859010, %4164
  %4166 = bitcast i32 %4165 to float
  %4167 = fmul fast float %4166, %4162
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = fcmp fast olt float %4168, 0x3F70101020000000
  br i1 %4169, label %4308, label %4170

; <label>:4170                                    ; preds = %4132, %4035
  %4171 = phi float [ %4168, %4132 ], [ %4029, %4035 ]
  %4172 = fmul fast float %4171, %4038
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 1
  %4175 = extractvalue %dx.types.CBufRet.i32 %4173, 0
  %4176 = add i32 %4175, 0
  %4177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4177, %dx.types.Handle %70, float %4127, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4090, float %4091, float undef, float %4094, float %4095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4178, 3
  %4183 = and i32 %4174, 255
  %4184 = uitofp i32 %4183 to float
  %4185 = lshr i32 %4174, 8
  %4186 = and i32 %4185, 255
  %4187 = uitofp i32 %4186 to float
  %4188 = fmul fast float %4182, %4184
  %4189 = fadd fast float %4188, %4187
  %4190 = fmul fast float %4189, 0x3F70101000000000
  %4191 = fadd fast float %4190, 0xBFB99999A0000000
  %4192 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4193 = fmul fast float %4192, 0x3FF1C71C80000000
  %4194 = call float @dx.op.binary.f32(i32 36, float %4190, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4195 = fsub fast float 1.000000e+00, %4193
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fmul fast float %4196, %4179
  %4198 = fmul fast float %4196, %4180
  %4199 = fmul fast float %4196, %4181
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4203 = fmul fast float %4193, %4179
  %4204 = fmul fast float %4193, %4180
  %4205 = fmul fast float %4193, %4181
  %4206 = fadd fast float %4203, %4194
  %4207 = fadd fast float %4204, %4194
  %4208 = fadd fast float %4205, %4194
  %4209 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4210 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4211 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.i32 %4212, 3
  %4214 = extractvalue %dx.types.CBufRet.i32 %4212, 2
  %4215 = add i32 %4214, 0
  %4216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4216, %dx.types.Handle %70, float %4127, float %4128, float undef, float undef, i32 0, i32 0, i32 undef, float %4090, float %4091, float undef, float %4094, float %4095, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = extractvalue %dx.types.ResRet.f32 %4217, 3
  %4222 = and i32 %4213, 255
  %4223 = uitofp i32 %4222 to float
  %4224 = lshr i32 %4213, 8
  %4225 = and i32 %4224, 255
  %4226 = uitofp i32 %4225 to float
  %4227 = lshr i32 %4213, 16
  %4228 = and i32 %4227, 255
  %4229 = uitofp i32 %4228 to float
  %4230 = fmul fast float %4229, 0x3F70101000000000
  %4231 = fmul fast float %4218, %4223
  %4232 = fadd fast float %4231, %4226
  %4233 = fmul fast float %4232, 0x3F70101000000000
  %4234 = fadd fast float %4219, -5.000000e-01
  %4235 = fadd fast float %4221, -5.000000e-01
  %4236 = fmul fast float %4234, %4230
  %4237 = fmul fast float %4235, %4230
  %4238 = fadd fast float %4236, 5.000000e-01
  %4239 = fadd fast float %4237, 5.000000e-01
  %4240 = fmul fast float %4238, 2.000000e+00
  %4241 = fadd fast float %4240, -1.000000e+00
  %4242 = fmul fast float %4239, 2.000000e+00
  %4243 = fadd fast float %4242, -1.000000e+00
  %4244 = fadd fast float %4241, %4243
  %4245 = fmul fast float %4244, 5.000000e-01
  %4246 = fsub fast float %4241, %4243
  %4247 = fmul fast float %4246, 5.000000e-01
  %4248 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4249 = fsub fast float 1.000000e+00, %4248
  %4250 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4251 = fsub fast float %4249, %4250
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4247, float %4251, float %4245, float %4247, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  %4254 = fmul fast float %4245, %4253
  %4255 = fmul fast float %4247, %4253
  %4256 = select i1 %4083, i32 %4073, i32 %4074
  %4257 = select i1 %4081, i32 %4072, i32 %4256
  %4258 = sitofp i32 %4257 to float
  %4259 = fmul fast float %4251, %4258
  %4260 = fmul fast float %4259, %4253
  %4261 = select i1 %4083, float %4260, float %4255
  %4262 = select i1 %4083, float %4255, float %4260
  %4263 = select i1 %4081, float %4260, float %4254
  %4264 = select i1 %4081, float %4255, float %4261
  %4265 = select i1 %4081, float %4254, float %4262
  %4266 = fsub fast float %4200, %3634
  %4267 = fsub fast float %4201, %3635
  %4268 = fsub fast float %4202, %3636
  %4269 = fmul fast float %4266, %4172
  %4270 = fmul fast float %4267, %4172
  %4271 = fmul fast float %4268, %4172
  %4272 = fadd fast float %4269, %3634
  %4273 = fadd fast float %4270, %3635
  %4274 = fadd fast float %4271, %3636
  %4275 = fsub fast float %4209, %3619
  %4276 = fsub fast float %4210, %3620
  %4277 = fsub fast float %4211, %3621
  %4278 = fmul fast float %4275, %4172
  %4279 = fmul fast float %4276, %4172
  %4280 = fmul fast float %4277, %4172
  %4281 = fadd fast float %4278, %3619
  %4282 = fadd fast float %4279, %3620
  %4283 = fadd fast float %4280, %3621
  %4284 = fadd fast float %4263, %3598
  %4285 = fadd fast float %4264, %3599
  %4286 = fadd fast float %4265, %3600
  %4287 = call float @dx.op.dot3.f32(i32 55, float %4284, float %4285, float %4286, float %4284, float %4285, float %4286)  ; Dot3(ax,ay,az,bx,by,bz)
  %4288 = call float @dx.op.unary.f32(i32 25, float %4287)  ; Rsqrt(value)
  %4289 = fmul fast float %4284, %4288
  %4290 = fmul fast float %4285, %4288
  %4291 = fmul fast float %4286, %4288
  %4292 = fsub fast float %4289, %3598
  %4293 = fsub fast float %4290, %3599
  %4294 = fsub fast float %4291, %3600
  %4295 = fmul fast float %4292, %4172
  %4296 = fmul fast float %4293, %4172
  %4297 = fmul fast float %4294, %4172
  %4298 = fadd fast float %4295, %3598
  %4299 = fadd fast float %4296, %3599
  %4300 = fadd fast float %4297, %3600
  %4301 = call float @dx.op.binary.f32(i32 36, float %3519, float %4220)  ; FMin(a,b)
  %4302 = fsub fast float %4301, %3519
  %4303 = fmul fast float %4302, %4172
  %4304 = fadd fast float %4303, %3519
  %4305 = fsub fast float %4233, %3622
  %4306 = fmul fast float %4305, %4172
  %4307 = fadd fast float %4306, %3622
  br label %4308

; <label>:4308                                    ; preds = %4170, %4132, %4034
  %4309 = phi float [ %4281, %4170 ], [ %3619, %4132 ], [ %3619, %4034 ]
  %4310 = phi float [ %4282, %4170 ], [ %3620, %4132 ], [ %3620, %4034 ]
  %4311 = phi float [ %4283, %4170 ], [ %3621, %4132 ], [ %3621, %4034 ]
  %4312 = phi float [ %4298, %4170 ], [ %3598, %4132 ], [ %3598, %4034 ]
  %4313 = phi float [ %4299, %4170 ], [ %3599, %4132 ], [ %3599, %4034 ]
  %4314 = phi float [ %4300, %4170 ], [ %3600, %4132 ], [ %3600, %4034 ]
  %4315 = phi float [ %4272, %4170 ], [ %3634, %4132 ], [ %3634, %4034 ]
  %4316 = phi float [ %4273, %4170 ], [ %3635, %4132 ], [ %3635, %4034 ]
  %4317 = phi float [ %4274, %4170 ], [ %3636, %4132 ], [ %3636, %4034 ]
  %4318 = phi float [ %4307, %4170 ], [ %3622, %4132 ], [ %3622, %4034 ]
  %4319 = phi float [ %4304, %4170 ], [ %3519, %4132 ], [ %3519, %4034 ]
  br i1 %4032, label %4320, label %4593

; <label>:4320                                    ; preds = %4308
  %4321 = call float @dx.op.unary.f32(i32 23, float %4319)  ; Log(value)
  %4322 = fmul fast float %4321, 4.000000e+00
  %4323 = call float @dx.op.unary.f32(i32 21, float %4322)  ; Exp(value)
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = fmul fast float %4325, %32
  %4327 = fmul fast float %4325, %33
  %4328 = fmul fast float %4325, %34
  %4329 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4330 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %4331 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %4332 = call float @dx.op.unary.f32(i32 23, float %4329)  ; Log(value)
  %4333 = call float @dx.op.unary.f32(i32 23, float %4330)  ; Log(value)
  %4334 = call float @dx.op.unary.f32(i32 23, float %4331)  ; Log(value)
  %4335 = fmul fast float %4332, 4.000000e+00
  %4336 = fmul fast float %4333, 4.000000e+00
  %4337 = fmul fast float %4334, 4.000000e+00
  %4338 = call float @dx.op.unary.f32(i32 21, float %4335)  ; Exp(value)
  %4339 = call float @dx.op.unary.f32(i32 21, float %4336)  ; Exp(value)
  %4340 = call float @dx.op.unary.f32(i32 21, float %4337)  ; Exp(value)
  %4341 = fadd fast float %4339, %4338
  %4342 = fadd fast float %4341, %4340
  %4343 = fdiv fast float 1.000000e+00, %4342
  %4344 = fmul fast float %4343, %4338
  %4345 = fcmp fast ogt float %41, 0.000000e+00
  %4346 = fcmp fast ogt float %42, 0.000000e+00
  %4347 = fcmp fast ogt float %43, 0.000000e+00
  %4348 = fcmp fast olt float %41, 0.000000e+00
  %4349 = fcmp fast olt float %42, 0.000000e+00
  %4350 = fcmp fast olt float %43, 0.000000e+00
  %4351 = zext i1 %4345 to i32
  %4352 = zext i1 %4346 to i32
  %4353 = zext i1 %4347 to i32
  %4354 = zext i1 %4348 to i32
  %4355 = zext i1 %4349 to i32
  %4356 = zext i1 %4350 to i32
  %4357 = sub nsw i32 %4351, %4354
  %4358 = sub nsw i32 %4352, %4355
  %4359 = sub nsw i32 %4353, %4356
  %4360 = call float @dx.op.unary.f32(i32 83, float %4326)  ; DerivCoarseX(value)
  %4361 = call float @dx.op.unary.f32(i32 83, float %4327)  ; DerivCoarseX(value)
  %4362 = call float @dx.op.unary.f32(i32 83, float %4328)  ; DerivCoarseX(value)
  %4363 = call float @dx.op.unary.f32(i32 84, float %4326)  ; DerivCoarseY(value)
  %4364 = call float @dx.op.unary.f32(i32 84, float %4327)  ; DerivCoarseY(value)
  %4365 = call float @dx.op.unary.f32(i32 84, float %4328)  ; DerivCoarseY(value)
  %4366 = fcmp fast ole float %224, %4344
  %4367 = fmul fast float %4343, %4341
  %4368 = fcmp fast ole float %224, %4367
  %4369 = select i1 %4368, float %4328, float %4326
  %4370 = select i1 %4368, float %4326, float %4327
  %4371 = select i1 %4366, float %4327, float %4369
  %4372 = select i1 %4366, float %4328, float %4370
  %4373 = select i1 %4368, float %4362, float %4360
  %4374 = select i1 %4368, float %4360, float %4361
  %4375 = select i1 %4366, float %4361, float %4373
  %4376 = select i1 %4366, float %4362, float %4374
  %4377 = select i1 %4368, float %4365, float %4363
  %4378 = select i1 %4368, float %4363, float %4364
  %4379 = select i1 %4366, float %4364, float %4377
  %4380 = select i1 %4366, float %4365, float %4378
  %4381 = call float @dx.op.unary.f32(i32 27, float %4371)  ; Round_ni(value)
  %4382 = call float @dx.op.unary.f32(i32 27, float %4372)  ; Round_ni(value)
  %4383 = fptosi float %4381 to i32
  %4384 = fptosi float %4382 to i32
  %4385 = xor i32 %4384, %4383
  %4386 = sitofp i32 %4385 to float
  %4387 = fptosi float %4386 to i32
  %4388 = sitofp i32 %4387 to float
  %4389 = fmul fast float %4388, 0x3FE3C6EF40000000
  %4390 = frem fast float %4381, 2.560000e+02
  %4391 = frem fast float %4382, 2.560000e+02
  %4392 = fptoui float %4390 to i32
  %4393 = fptoui float %4391 to i32
  %4394 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4392, i32 %4393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4398 = fadd fast float %4395, %4389
  %4399 = fadd fast float %4396, %4389
  %4400 = fadd fast float %4397, %4389
  %4401 = call float @dx.op.unary.f32(i32 22, float %4398)  ; Frc(value)
  %4402 = call float @dx.op.unary.f32(i32 22, float %4399)  ; Frc(value)
  %4403 = call float @dx.op.unary.f32(i32 22, float %4400)  ; Frc(value)
  %4404 = fmul fast float %4403, 0x401921FB60000000
  %4405 = call float @dx.op.unary.f32(i32 13, float %4404)  ; Sin(value)
  %4406 = call float @dx.op.unary.f32(i32 12, float %4404)  ; Cos(value)
  %4407 = fsub fast float -0.000000e+00, %4406
  %4408 = fmul fast float %4406, %4371
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4372, float %4408)  ; FMad(a,b,c)
  %4410 = fmul fast float %4405, %4371
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4407, float %4372, float %4410)  ; FMad(a,b,c)
  %4412 = fadd fast float %4409, %4401
  %4413 = fadd fast float %4411, %4402
  %4414 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4415 = bitcast float %4414 to i32
  %4416 = icmp eq i32 %4415, 0
  br i1 %4416, label %4455, label %4417

; <label>:4417                                    ; preds = %4320
  %4418 = add i32 %4415, 0
  %4419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4420 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4419, %dx.types.Handle %71, float %4412, float %4413, float undef, float undef, i32 0, i32 0, i32 undef, float %4375, float %4376, float undef, float %4379, float %4380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 1
  %4424 = extractvalue %dx.types.CBufRet.f32 %4422, 2
  %4425 = fsub fast float 1.000000e+00, %4030
  %4426 = call float @dx.op.binary.f32(i32 35, float %4425, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4427 = bitcast float %4030 to i32
  %4428 = sitofp i32 %4427 to float
  %4429 = fadd fast float %4428, 0xC1CFBF8940000000
  %4430 = fmul fast float %4424, %4429
  %4431 = fadd fast float %4430, 0x41CFBF8940000000
  %4432 = fptosi float %4431 to i32
  %4433 = bitcast i32 %4432 to float
  %4434 = bitcast float %4426 to i32
  %4435 = sitofp i32 %4434 to float
  %4436 = fadd fast float %4435, 0xC1CFBF8940000000
  %4437 = fmul fast float %4436, %4424
  %4438 = fadd fast float %4437, 0x41CFBF8940000000
  %4439 = fptosi float %4438 to i32
  %4440 = bitcast i32 %4439 to float
  %4441 = fmul fast float %4433, %4423
  %4442 = fmul fast float %4440, %4423
  %4443 = fsub fast float %4426, %4441
  %4444 = fadd fast float %4442, %4426
  %4445 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4447 = fsub fast float %4421, %4445
  %4448 = fsub fast float %4446, %4445
  %4449 = bitcast float %4448 to i32
  %4450 = sub nsw i32 2129859010, %4449
  %4451 = bitcast i32 %4450 to float
  %4452 = fmul fast float %4451, %4447
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = fcmp fast olt float %4453, 0x3F70101020000000
  br i1 %4454, label %4593, label %4455

; <label>:4455                                    ; preds = %4417, %4320
  %4456 = phi float [ %4453, %4417 ], [ %4030, %4320 ]
  %4457 = fmul fast float %4456, %4323
  %4458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.i32 %4458, 1
  %4460 = extractvalue %dx.types.CBufRet.i32 %4458, 0
  %4461 = add i32 %4460, 0
  %4462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4463 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4462, %dx.types.Handle %70, float %4412, float %4413, float undef, float undef, i32 0, i32 0, i32 undef, float %4375, float %4376, float undef, float %4379, float %4380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = extractvalue %dx.types.ResRet.f32 %4463, 3
  %4468 = and i32 %4459, 255
  %4469 = uitofp i32 %4468 to float
  %4470 = lshr i32 %4459, 8
  %4471 = and i32 %4470, 255
  %4472 = uitofp i32 %4471 to float
  %4473 = fmul fast float %4467, %4469
  %4474 = fadd fast float %4473, %4472
  %4475 = fmul fast float %4474, 0x3F70101000000000
  %4476 = fadd fast float %4475, 0xBFB99999A0000000
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4477, 0x3FF1C71C80000000
  %4479 = call float @dx.op.binary.f32(i32 36, float %4475, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4480 = fsub fast float 1.000000e+00, %4478
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, %4464
  %4483 = fmul fast float %4481, %4465
  %4484 = fmul fast float %4481, %4466
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = fmul fast float %4478, %4464
  %4489 = fmul fast float %4478, %4465
  %4490 = fmul fast float %4478, %4466
  %4491 = fadd fast float %4488, %4479
  %4492 = fadd fast float %4489, %4479
  %4493 = fadd fast float %4490, %4479
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.i32 %4497, 3
  %4499 = extractvalue %dx.types.CBufRet.i32 %4497, 2
  %4500 = add i32 %4499, 0
  %4501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4502 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4501, %dx.types.Handle %70, float %4412, float %4413, float undef, float undef, i32 0, i32 0, i32 undef, float %4375, float %4376, float undef, float %4379, float %4380, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.ResRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.ResRet.f32 %4502, 3
  %4507 = and i32 %4498, 255
  %4508 = uitofp i32 %4507 to float
  %4509 = lshr i32 %4498, 8
  %4510 = and i32 %4509, 255
  %4511 = uitofp i32 %4510 to float
  %4512 = lshr i32 %4498, 16
  %4513 = and i32 %4512, 255
  %4514 = uitofp i32 %4513 to float
  %4515 = fmul fast float %4514, 0x3F70101000000000
  %4516 = fmul fast float %4503, %4508
  %4517 = fadd fast float %4516, %4511
  %4518 = fmul fast float %4517, 0x3F70101000000000
  %4519 = fadd fast float %4504, -5.000000e-01
  %4520 = fadd fast float %4506, -5.000000e-01
  %4521 = fmul fast float %4519, %4515
  %4522 = fmul fast float %4520, %4515
  %4523 = fadd fast float %4521, 5.000000e-01
  %4524 = fadd fast float %4522, 5.000000e-01
  %4525 = fmul fast float %4523, 2.000000e+00
  %4526 = fadd fast float %4525, -1.000000e+00
  %4527 = fmul fast float %4524, 2.000000e+00
  %4528 = fadd fast float %4527, -1.000000e+00
  %4529 = fadd fast float %4526, %4528
  %4530 = fmul fast float %4529, 5.000000e-01
  %4531 = fsub fast float %4526, %4528
  %4532 = fmul fast float %4531, 5.000000e-01
  %4533 = call float @dx.op.unary.f32(i32 6, float %4530)  ; FAbs(value)
  %4534 = fsub fast float 1.000000e+00, %4533
  %4535 = call float @dx.op.unary.f32(i32 6, float %4532)  ; FAbs(value)
  %4536 = fsub fast float %4534, %4535
  %4537 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4532, float %4536, float %4530, float %4532, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = call float @dx.op.unary.f32(i32 25, float %4537)  ; Rsqrt(value)
  %4539 = fmul fast float %4530, %4538
  %4540 = fmul fast float %4532, %4538
  %4541 = select i1 %4368, i32 %4358, i32 %4359
  %4542 = select i1 %4366, i32 %4357, i32 %4541
  %4543 = sitofp i32 %4542 to float
  %4544 = fmul fast float %4536, %4543
  %4545 = fmul fast float %4544, %4538
  %4546 = select i1 %4368, float %4545, float %4540
  %4547 = select i1 %4368, float %4540, float %4545
  %4548 = select i1 %4366, float %4545, float %4539
  %4549 = select i1 %4366, float %4540, float %4546
  %4550 = select i1 %4366, float %4539, float %4547
  %4551 = fsub fast float %4485, %4315
  %4552 = fsub fast float %4486, %4316
  %4553 = fsub fast float %4487, %4317
  %4554 = fmul fast float %4551, %4457
  %4555 = fmul fast float %4552, %4457
  %4556 = fmul fast float %4553, %4457
  %4557 = fadd fast float %4554, %4315
  %4558 = fadd fast float %4555, %4316
  %4559 = fadd fast float %4556, %4317
  %4560 = fsub fast float %4494, %4309
  %4561 = fsub fast float %4495, %4310
  %4562 = fsub fast float %4496, %4311
  %4563 = fmul fast float %4560, %4457
  %4564 = fmul fast float %4561, %4457
  %4565 = fmul fast float %4562, %4457
  %4566 = fadd fast float %4563, %4309
  %4567 = fadd fast float %4564, %4310
  %4568 = fadd fast float %4565, %4311
  %4569 = fadd fast float %4548, %4312
  %4570 = fadd fast float %4549, %4313
  %4571 = fadd fast float %4550, %4314
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4570, float %4571, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4569, %4573
  %4575 = fmul fast float %4570, %4573
  %4576 = fmul fast float %4571, %4573
  %4577 = fsub fast float %4574, %4312
  %4578 = fsub fast float %4575, %4313
  %4579 = fsub fast float %4576, %4314
  %4580 = fmul fast float %4577, %4457
  %4581 = fmul fast float %4578, %4457
  %4582 = fmul fast float %4579, %4457
  %4583 = fadd fast float %4580, %4312
  %4584 = fadd fast float %4581, %4313
  %4585 = fadd fast float %4582, %4314
  %4586 = call float @dx.op.binary.f32(i32 36, float %4319, float %4505)  ; FMin(a,b)
  %4587 = fsub fast float %4586, %4319
  %4588 = fmul fast float %4587, %4457
  %4589 = fadd fast float %4588, %4319
  %4590 = fsub fast float %4518, %4318
  %4591 = fmul fast float %4590, %4457
  %4592 = fadd fast float %4591, %4318
  br label %4593

; <label>:4593                                    ; preds = %4455, %4417, %4308, %4024
  %4594 = phi float [ %4566, %4455 ], [ %4309, %4417 ], [ %4309, %4308 ], [ %3619, %4024 ]
  %4595 = phi float [ %4567, %4455 ], [ %4310, %4417 ], [ %4310, %4308 ], [ %3620, %4024 ]
  %4596 = phi float [ %4568, %4455 ], [ %4311, %4417 ], [ %4311, %4308 ], [ %3621, %4024 ]
  %4597 = phi float [ %4583, %4455 ], [ %4312, %4417 ], [ %4312, %4308 ], [ %3598, %4024 ]
  %4598 = phi float [ %4584, %4455 ], [ %4313, %4417 ], [ %4313, %4308 ], [ %3599, %4024 ]
  %4599 = phi float [ %4585, %4455 ], [ %4314, %4417 ], [ %4314, %4308 ], [ %3600, %4024 ]
  %4600 = phi float [ %4557, %4455 ], [ %4315, %4417 ], [ %4315, %4308 ], [ %3634, %4024 ]
  %4601 = phi float [ %4558, %4455 ], [ %4316, %4417 ], [ %4316, %4308 ], [ %3635, %4024 ]
  %4602 = phi float [ %4559, %4455 ], [ %4317, %4417 ], [ %4317, %4308 ], [ %3636, %4024 ]
  %4603 = phi float [ %4592, %4455 ], [ %4318, %4417 ], [ %4318, %4308 ], [ %3622, %4024 ]
  %4604 = phi float [ %4589, %4455 ], [ %4319, %4417 ], [ %4319, %4308 ], [ %3519, %4024 ]
  %4605 = fcmp fast une float %4028, 0.000000e+00
  %4606 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 25, float %4606)  ; Rsqrt(value)
  br i1 %4605, label %4615, label %4608

; <label>:4608                                    ; preds = %4593
  %4609 = fmul fast float %4607, %161
  %4610 = fmul fast float %4607, %162
  %4611 = fmul fast float %4607, %163
  %4612 = fsub fast float -0.000000e+00, %4609
  %4613 = fsub fast float -0.000000e+00, %4610
  %4614 = fsub fast float -0.000000e+00, %4611
  br label %4782

; <label>:4615                                    ; preds = %4593
  %4616 = fmul fast float %161, %4607
  %4617 = fsub fast float -0.000000e+00, %4616
  %4618 = fmul fast float %162, %4607
  %4619 = fsub fast float -0.000000e+00, %4618
  %4620 = fmul fast float %163, %4607
  %4621 = fsub fast float -0.000000e+00, %4620
  %4622 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4619, float %4621, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = fmul fast float %4028, 2.500000e+00
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4028, 0x4013FFFFE0000000
  %4626 = fadd fast float %4625, 0xBFFFFFFFE0000000
  %4627 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4628 = fmul fast float %4028, 0x4004000020000000
  %4629 = fadd fast float %4628, 0xBFF8000040000000
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %3601, 1.000000e+01
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = fmul fast float %4632, 2.000000e+00
  %4634 = fsub fast float 3.000000e+00, %4633
  %4635 = fmul fast float %4632, %4632
  %4636 = fmul fast float %4635, %4634
  %4637 = fsub fast float 1.000000e+00, %4636
  %4638 = fsub fast float 0x3FE3333340000000, %4603
  %4639 = fmul fast float %4638, 0x400AAAAAA0000000
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4637, %4640
  %4642 = fmul fast float %4600, 0x3FEA2B8620000000
  %4643 = fmul fast float %4601, 0x3FEA2B8620000000
  %4644 = fmul fast float %4602, 0x3FEA2B8620000000
  %4645 = fadd fast float %4642, 0x3FC81DFBA0000000
  %4646 = fmul fast float %4645, %4600
  %4647 = fadd fast float %4646, 0x3F910E6020000000
  %4648 = fadd fast float %4643, 0x3FC81DFBA0000000
  %4649 = fmul fast float %4648, %4601
  %4650 = fadd fast float %4649, 0x3F910E6020000000
  %4651 = fadd fast float %4644, 0x3FC81DFBA0000000
  %4652 = fmul fast float %4651, %4602
  %4653 = fadd fast float %4652, 0x3F910E6020000000
  %4654 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = fsub fast float %4654, %4600
  %4658 = fsub fast float %4655, %4601
  %4659 = fsub fast float %4656, %4602
  %4660 = fmul fast float %4657, %4624
  %4661 = fmul fast float %4660, %4641
  %4662 = fmul fast float %4658, %4624
  %4663 = fmul fast float %4662, %4641
  %4664 = fmul fast float %4659, %4624
  %4665 = fmul fast float %4664, %4641
  %4666 = fadd fast float %4661, %4600
  %4667 = fadd fast float %4663, %4601
  %4668 = fadd fast float %4665, %4602
  %4669 = fmul fast float %4604, %4604
  %4670 = fmul fast float %4669, %4669
  %4671 = fadd fast float %4627, 1.000000e+00
  %4672 = fsub fast float %4671, %4641
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fsub fast float 1.000000e+00, %4670
  %4677 = call float @dx.op.binary.f32(i32 36, float %4673, float %4676)  ; FMin(a,b)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4679 = call float @dx.op.binary.f32(i32 35, float %4677, float %4678)  ; FMax(a,b)
  %4680 = fadd fast float %4675, 0xBFE4CCCCC0000000
  %4681 = fmul fast float %4680, 0x4006DB6DA0000000
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4682, 2.000000e+00
  %4684 = fsub fast float 3.000000e+00, %4683
  %4685 = bitcast float %4594 to i32
  %4686 = ashr i32 %4685, 1
  %4687 = add nsw i32 %4686, 532487669
  %4688 = bitcast i32 %4687 to float
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, 2.000000e+00
  %4694 = bitcast float %4595 to i32
  %4695 = ashr i32 %4694, 1
  %4696 = add nsw i32 %4695, 532487669
  %4697 = bitcast i32 %4696 to float
  %4698 = fsub fast float 1.000000e+00, %4697
  %4699 = bitcast float %4698 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = fmul fast float %4701, 2.000000e+00
  %4703 = bitcast float %4596 to i32
  %4704 = ashr i32 %4703, 1
  %4705 = add nsw i32 %4704, 532487669
  %4706 = bitcast i32 %4705 to float
  %4707 = fsub fast float 1.000000e+00, %4706
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, 2.000000e+00
  %4712 = fsub fast float 0x4002A9FBE0000000, %4693
  %4713 = fadd fast float %4693, 0x3FD54FDF00000000
  %4714 = bitcast float %4713 to i32
  %4715 = sub nsw i32 2129859010, %4714
  %4716 = bitcast i32 %4715 to float
  %4717 = fmul fast float %4716, %4712
  %4718 = fmul fast float %4717, %4717
  %4719 = fsub fast float 0x4002A9FBE0000000, %4702
  %4720 = fadd fast float %4702, 0x3FD54FDF00000000
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = fmul fast float %4723, %4719
  %4725 = fmul fast float %4724, %4724
  %4726 = fsub fast float 0x4002A9FBE0000000, %4711
  %4727 = fadd fast float %4711, 0x3FD54FDF00000000
  %4728 = bitcast float %4727 to i32
  %4729 = sub nsw i32 2129859010, %4728
  %4730 = bitcast i32 %4729 to float
  %4731 = fmul fast float %4730, %4726
  %4732 = fmul fast float %4731, %4731
  %4733 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4718)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4725)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4732)  ; FMax(a,b)
  %4736 = fsub fast float 1.000000e+00, %4622
  %4737 = fadd fast float %4736, %4637
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fsub fast float 1.000000e+00, %4010
  %4740 = fmul fast float %4679, %4739
  %4741 = fmul fast float %4682, %4682
  %4742 = fmul fast float %4741, %4740
  %4743 = fmul fast float %4742, %4684
  %4744 = fmul fast float %4739, 0xBFE99999A0000000
  %4745 = fmul fast float %4744, %4624
  %4746 = fmul fast float %4745, %4641
  %4747 = fadd fast float %4746, 1.000000e+00
  %4748 = fadd fast float %4603, -1.000000e+00
  %4749 = fmul fast float %4747, %4748
  %4750 = fadd fast float %4749, 1.000000e+00
  %4751 = fsub fast float %4733, %4594
  %4752 = fsub fast float %4734, %4595
  %4753 = fsub fast float %4735, %4596
  %4754 = fmul fast float %4743, %4751
  %4755 = fmul fast float %4743, %4752
  %4756 = fmul fast float %4743, %4753
  %4757 = fadd fast float %4754, %4594
  %4758 = fadd fast float %4755, %4595
  %4759 = fadd fast float %4756, %4596
  %4760 = fsub fast float %81, %4597
  %4761 = fsub fast float %82, %4598
  %4762 = fsub fast float %83, %4599
  %4763 = fmul fast float %4743, %4760
  %4764 = fmul fast float %4743, %4761
  %4765 = fmul fast float %4743, %4762
  %4766 = fadd fast float %4763, %4597
  %4767 = fadd fast float %4764, %4598
  %4768 = fadd fast float %4765, %4599
  %4769 = fmul fast float %4743, %4738
  %4770 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = fmul fast float %4769, %4771
  %4773 = fadd fast float %4772, %4770
  %4774 = fsub fast float 1.000000e+00, %4604
  %4775 = fmul fast float %4743, %4774
  %4776 = fadd fast float %4775, %4604
  %4777 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4767, float %4768, float %4766, float %4767, float %4768)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  %4779 = fmul fast float %4766, %4778
  %4780 = fmul fast float %4767, %4778
  %4781 = fmul fast float %4768, %4778
  br label %4782

; <label>:4782                                    ; preds = %4615, %4608
  %4783 = phi float [ %4614, %4608 ], [ %4621, %4615 ]
  %4784 = phi float [ %4613, %4608 ], [ %4619, %4615 ]
  %4785 = phi float [ %4612, %4608 ], [ %4617, %4615 ]
  %4786 = phi float [ %4611, %4608 ], [ %4620, %4615 ]
  %4787 = phi float [ %4610, %4608 ], [ %4618, %4615 ]
  %4788 = phi float [ %4609, %4608 ], [ %4616, %4615 ]
  %4789 = phi float [ %4594, %4608 ], [ %4757, %4615 ]
  %4790 = phi float [ %4595, %4608 ], [ %4758, %4615 ]
  %4791 = phi float [ %4596, %4608 ], [ %4759, %4615 ]
  %4792 = phi float [ %4597, %4608 ], [ %4779, %4615 ]
  %4793 = phi float [ %4598, %4608 ], [ %4780, %4615 ]
  %4794 = phi float [ %4599, %4608 ], [ %4781, %4615 ]
  %4795 = phi float [ %4600, %4608 ], [ %4666, %4615 ]
  %4796 = phi float [ %4601, %4608 ], [ %4667, %4615 ]
  %4797 = phi float [ %4602, %4608 ], [ %4668, %4615 ]
  %4798 = phi float [ %4603, %4608 ], [ %4773, %4615 ]
  %4799 = phi float [ %4604, %4608 ], [ %4776, %4615 ]
  %4800 = select i1 %213, float 0.000000e+00, float %4791
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %4785, float %4784, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4787, float %4786, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fmul fast float %4804, %4792
  %4806 = fmul fast float %4804, %4793
  %4807 = fmul fast float %4804, %4794
  %4808 = fsub fast float %4788, %4805
  %4809 = fsub fast float %4787, %4806
  %4810 = fsub fast float %4786, %4807
  %4811 = call float @dx.op.binary.f32(i32 36, float %4799, float 1.000000e+00)  ; FMin(a,b)
  %4812 = fsub fast float 1.000000e+00, %4799
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = fsub fast float 1.000000e+00, %51
  %4816 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4818 = fdiv fast float %4815, %4817
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fmul fast float %4820, 5.000000e-01
  %4822 = fadd fast float %4821, 5.000000e-01
  %4823 = fmul fast float %4822, %51
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fmul fast float %4825, %4818
  %4827 = fadd fast float %4823, %4826
  %4828 = fsub fast float 5.000000e-01, %4821
  %4829 = fmul fast float %4828, %4795
  %4830 = fmul fast float %4828, %4796
  %4831 = fmul fast float %4828, %4797
  %4832 = fadd fast float %4827, %4829
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4827, %4831
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4837 = fmul fast float %4836, 5.000000e-01
  %4838 = fadd fast float %4837, 5.000000e-01
  %4839 = fmul fast float %4838, %51
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, %4818
  %4843 = fadd fast float %4839, %4842
  %4844 = fsub fast float 5.000000e-01, %4837
  %4845 = fmul fast float %4844, %4795
  %4846 = fmul fast float %4844, %4796
  %4847 = fmul fast float %4844, %4797
  %4848 = fadd fast float %4843, %4845
  %4849 = fadd fast float %4843, %4846
  %4850 = fadd fast float %4843, %4847
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = call float @dx.op.binary.f32(i32 36, float %4795, float %4852)  ; FMin(a,b)
  %4854 = fsub fast float 1.000000e+00, %4811
  %4855 = fmul fast float %4853, %4854
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = call float @dx.op.binary.f32(i32 36, float %4796, float %4852)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4854
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4797, float %4852)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4854
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4811, %52
  %4873 = fmul fast float %4872, %4832
  %4874 = fmul fast float %4873, %4859
  %4875 = fmul fast float %4811, %53
  %4876 = fmul fast float %4875, %4833
  %4877 = fmul fast float %4876, %4865
  %4878 = fmul fast float %4811, %54
  %4879 = fmul fast float %4878, %4834
  %4880 = fmul fast float %4879, %4871
  %4881 = call float @dx.op.binary.f32(i32 36, float %4789, float %4852)  ; FMin(a,b)
  %4882 = fmul fast float %4881, %4854
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = bitcast float %4883 to i32
  %4885 = sub nsw i32 2129859010, %4884
  %4886 = bitcast i32 %4885 to float
  %4887 = call float @dx.op.binary.f32(i32 36, float %4790, float %4852)  ; FMin(a,b)
  %4888 = fmul fast float %4887, %4854
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = call float @dx.op.binary.f32(i32 36, float %4800, float %4852)  ; FMin(a,b)
  %4894 = fmul fast float %4893, %4854
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = bitcast float %4895 to i32
  %4897 = sub nsw i32 2129859010, %4896
  %4898 = bitcast i32 %4897 to float
  %4899 = fmul fast float %4872, %4848
  %4900 = fmul fast float %4899, %4886
  %4901 = fmul fast float %4875, %4849
  %4902 = fmul fast float %4901, %4892
  %4903 = fmul fast float %4878, %4850
  %4904 = fmul fast float %4903, %4898
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4877, float %4880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = select i1 %213, float 0.000000e+00, float %4874
  %4907 = select i1 %213, float %4905, float %4877
  %4908 = select i1 %213, float 0.000000e+00, float %4880
  %4909 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4902, float %4904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4910 = select i1 %213, float 0.000000e+00, float %4900
  %4911 = select i1 %213, float %4909, float %4902
  %4912 = select i1 %213, float 0.000000e+00, float %4904
  %4913 = fmul fast float %4802, 9.843750e-01
  %4914 = fmul fast float %4798, 9.843750e-01
  %4915 = fadd fast float %4913, 7.812500e-03
  %4916 = fadd fast float %4914, 7.812500e-03
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %4915, float %4916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 3
  %4920 = fmul fast float %4918, %4789
  %4921 = fmul fast float %4918, %4790
  %4922 = fmul fast float %4918, %4800
  %4923 = fadd fast float %4920, %4919
  %4924 = fadd fast float %4921, %4919
  %4925 = fadd fast float %4922, %4919
  %4926 = call float @dx.op.binary.f32(i32 35, float %4924, float %4925)  ; FMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4923, float %4926)  ; FMax(a,b)
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = fmul fast float %4928, %4906
  %4930 = fmul fast float %4928, %4907
  %4931 = fmul fast float %4928, %4908
  %4932 = fmul fast float %4923, %4910
  %4933 = fmul fast float %4924, %4911
  %4934 = fmul fast float %4925, %4912
  %4935 = fmul fast float %4929, %1306
  %4936 = fmul fast float %4930, %1306
  %4937 = fmul fast float %4931, %1306
  %4938 = fadd fast float %4932, %3566
  %4939 = fmul fast float %4938, %1306
  %4940 = fadd fast float %4933, %3569
  %4941 = fmul fast float %4940, %1306
  %4942 = fadd fast float %4934, %3572
  %4943 = fmul fast float %4942, %1306
  %4944 = bitcast i32 %4814 to float
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4947 = fcmp fast oeq float %4946, 0.000000e+00
  br i1 %4947, label %5106, label %4948

; <label>:4948                                    ; preds = %4782
  %4949 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.CBufRet.f32 %4956, 1
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4954, float %4955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = select i1 %213, float %4957, float %4953
  %4961 = select i1 %213, float %4959, float %4954
  %4962 = select i1 %213, float %4958, float %4955
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4965 = fcmp fast une float %4964, 0.000000e+00
  br i1 %4965, label %4966, label %4983

; <label>:4966                                    ; preds = %4948
  %4967 = fptoui float %74 to i32
  %4968 = fptoui float %75 to i32
  %4969 = lshr i32 %4967, 4
  %4970 = lshr i32 %4968, 4
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = fptoui float %4972 to i32
  %4974 = add i32 %4973, 15
  %4975 = lshr i32 %4974, 4
  %4976 = mul i32 %4975, %4970
  %4977 = add i32 %4976, %4969
  %4978 = shl i32 %4977, 3
  %4979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4978, i32 undef)  ; BufferLoad(srv,index,wot)
  %4980 = extractvalue %dx.types.ResRet.i32 %4979, 0
  %4981 = and i32 %4980, -268435456
  %4982 = icmp eq i32 %4981, -1342177280
  br i1 %4982, label %4993, label %4983

; <label>:4983                                    ; preds = %4966, %4948
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4987 = fmul fast float %4985, %74
  %4988 = fmul fast float %4986, %75
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %4987, float %4988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %4992 = extractvalue %dx.types.ResRet.f32 %4989, 2
  br label %4993

; <label>:4993                                    ; preds = %4983, %4966
  %4994 = phi float [ %4990, %4983 ], [ 0.000000e+00, %4966 ]
  %4995 = phi float [ %4991, %4983 ], [ 0.000000e+00, %4966 ]
  %4996 = phi float [ %4992, %4983 ], [ 0.000000e+00, %4966 ]
  %4997 = call float @dx.op.binary.f32(i32 36, float %4995, float %4996)  ; FMin(a,b)
  %4998 = call float @dx.op.binary.f32(i32 36, float %4994, float %4997)  ; FMin(a,b)
  %4999 = fcmp fast ogt float %4998, 0.000000e+00
  br i1 %4999, label %5000, label %5106, !dx.controlflow.hints !71

; <label>:5000                                    ; preds = %4993
  %5001 = fmul fast float %4994, %4960
  %5002 = fmul fast float %4995, %4961
  %5003 = fmul fast float %4996, %4962
  %5004 = fsub fast float %4949, %4788
  %5005 = fsub fast float %4950, %4787
  %5006 = fsub fast float %4951, %4786
  %5007 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %5006, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.unary.f32(i32 25, float %5007)  ; Rsqrt(value)
  %5009 = fmul fast float %5008, %5004
  %5010 = fmul fast float %5008, %5005
  %5011 = fmul fast float %5008, %5006
  %5012 = call float @dx.op.dot3.f32(i32 55, float %4949, float %4950, float %4951, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4784, float %4783, float %5009, float %5010, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5015 = fmul fast float %5014, %5014
  %5016 = fmul fast float %5015, %4944
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = fmul fast float %5017, %5014
  %5019 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %5009, float %5010, float %5011)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = fmul fast float %5019, %5019
  %5021 = call float @dx.op.unary.f32(i32 6, float %5012)  ; FAbs(value)
  %5022 = fsub fast float 1.000000e+00, %4798
  %5023 = call float @dx.op.binary.f32(i32 35, float %5022, float 0x3F847AE140000000)  ; FMax(a,b)
  %5024 = fmul fast float %5023, %5023
  %5025 = fmul fast float %5024, %5024
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = fmul fast float %4802, %4802
  %5028 = fmul fast float %5027, %5026
  %5029 = fadd fast float %5028, %5025
  %5030 = bitcast float %5029 to i32
  %5031 = ashr i32 %5030, 1
  %5032 = add nsw i32 %5031, 532487669
  %5033 = bitcast i32 %5032 to float
  %5034 = fadd fast float %5033, %4802
  %5035 = fmul fast float %5025, %5020
  %5036 = fsub fast float 1.000000e+00, %5020
  %5037 = fadd fast float %5036, %5035
  %5038 = fmul fast float %5021, %5021
  %5039 = fmul fast float %5038, %5026
  %5040 = fadd fast float %5039, %5025
  %5041 = bitcast float %5040 to i32
  %5042 = ashr i32 %5041, 1
  %5043 = add nsw i32 %5042, 532487669
  %5044 = bitcast i32 %5043 to float
  %5045 = fadd fast float %5044, %5021
  %5046 = fmul fast float %5037, %5037
  %5047 = fmul fast float %5046, %5034
  %5048 = fmul fast float %5047, %5045
  %5049 = fdiv fast float 0x3FF0A00000000000, %5048
  %5050 = fmul fast float %5049, %5025
  %5051 = call float @dx.op.unary.f32(i32 6, float %5013)  ; FAbs(value)
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = bitcast float %5052 to i32
  %5054 = sitofp i32 %5053 to float
  %5055 = fmul fast float %5054, 5.000000e+00
  %5056 = fadd fast float %5055, 0xC1EFBF8940000000
  %5057 = fptosi float %5056 to i32
  %5058 = bitcast i32 %5057 to float
  %5059 = fsub fast float 1.000000e+00, %4789
  %5060 = fsub fast float 1.000000e+00, %4790
  %5061 = fsub fast float 1.000000e+00, %4800
  %5062 = fmul fast float %5058, %5059
  %5063 = fmul fast float %5058, %5060
  %5064 = fmul fast float %5058, %5061
  %5065 = fadd fast float %5062, %4789
  %5066 = fadd fast float %5063, %4790
  %5067 = fadd fast float %5064, %4800
  %5068 = fmul fast float %5012, 9.843750e-01
  %5069 = fadd fast float %5068, 7.812500e-03
  %5070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %5069, float %4916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 3
  %5073 = fmul fast float %5071, %4789
  %5074 = fmul fast float %5071, %4790
  %5075 = fmul fast float %5071, %4800
  %5076 = fadd fast float %5073, %5072
  %5077 = fadd fast float %5074, %5072
  %5078 = fadd fast float %5075, %5072
  %5079 = call float @dx.op.binary.f32(i32 35, float %5077, float %5078)  ; FMax(a,b)
  %5080 = call float @dx.op.binary.f32(i32 35, float %5076, float %5079)  ; FMax(a,b)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %5018, %5001
  %5083 = fmul fast float %5082, %5081
  %5084 = fmul fast float %5018, %5002
  %5085 = fmul fast float %5084, %5081
  %5086 = fmul fast float %5018, %5003
  %5087 = fmul fast float %5086, %5081
  %5088 = fmul fast float %5082, %5050
  %5089 = fmul fast float %5088, %5065
  %5090 = fmul fast float %5084, %5050
  %5091 = fmul fast float %5090, %5066
  %5092 = fmul fast float %5086, %5050
  %5093 = fmul fast float %5092, %5067
  %5094 = fadd fast float %5083, %4929
  %5095 = fmul fast float %5094, %1306
  %5096 = fadd fast float %5085, %4930
  %5097 = fmul fast float %5096, %1306
  %5098 = fadd fast float %5087, %4931
  %5099 = fmul fast float %5098, %1306
  %5100 = fadd fast float %5089, %4938
  %5101 = fmul fast float %5100, %1306
  %5102 = fadd fast float %5091, %4940
  %5103 = fmul fast float %5102, %1306
  %5104 = fadd fast float %5093, %4942
  %5105 = fmul fast float %5104, %1306
  br label %5106

; <label>:5106                                    ; preds = %5000, %4993, %4782
  %5107 = phi float [ %4939, %4782 ], [ %4939, %4993 ], [ %5101, %5000 ]
  %5108 = phi float [ %4941, %4782 ], [ %4941, %4993 ], [ %5103, %5000 ]
  %5109 = phi float [ %4943, %4782 ], [ %4943, %4993 ], [ %5105, %5000 ]
  %5110 = phi float [ %4935, %4782 ], [ %4935, %4993 ], [ %5095, %5000 ]
  %5111 = phi float [ %4936, %4782 ], [ %4936, %4993 ], [ %5097, %5000 ]
  %5112 = phi float [ %4937, %4782 ], [ %4937, %4993 ], [ %5099, %5000 ]
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 0
  %5115 = icmp eq i32 %5114, 0
  br i1 %5115, label %5481, label %5116

; <label>:5116                                    ; preds = %5106
  %5117 = fptoui float %74 to i32
  %5118 = fptoui float %75 to i32
  %5119 = lshr i32 %5117, 4
  %5120 = lshr i32 %5118, 4
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 0
  %5123 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5120, i32 %5122, i32 %5119)  ; UMad(a,b,c)
  %5124 = add nsw i32 %5114, -1
  %5125 = call i32 @dx.op.binary.i32(i32 37, i32 %5124, i32 0)  ; IMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5127 = fptoui float %5126 to i32
  %5128 = lshr i32 %5127, 5
  %5129 = call i32 @dx.op.binary.i32(i32 40, i32 %5128, i32 8191)  ; UMin(a,b)
  %5130 = shl i32 %5129, 2
  %5131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5130, i32 undef)  ; BufferLoad(srv,index,wot)
  %5132 = extractvalue %dx.types.ResRet.i32 %5131, 0
  %5133 = lshr i32 %5132, 16
  %5134 = and i32 %5132, 65535
  %5135 = lshr i32 %5132, 21
  %5136 = lshr i32 %5134, 5
  %5137 = call i32 @dx.op.binary.i32(i32 40, i32 %5136, i32 %5125)  ; UMin(a,b)
  %5138 = icmp ugt i32 %5135, %5137
  br i1 %5138, label %5481, label %5139

; <label>:5139                                    ; preds = %5116
  br label %5140

; <label>:5140                                    ; preds = %5471, %5139
  %5141 = phi i32 [ %5478, %5471 ], [ %5135, %5139 ]
  %5142 = phi float [ %5472, %5471 ], [ %5107, %5139 ]
  %5143 = phi float [ %5473, %5471 ], [ %5108, %5139 ]
  %5144 = phi float [ %5474, %5471 ], [ %5109, %5139 ]
  %5145 = phi float [ %5475, %5471 ], [ %5110, %5139 ]
  %5146 = phi float [ %5476, %5471 ], [ %5111, %5139 ]
  %5147 = phi float [ %5477, %5471 ], [ %5112, %5139 ]
  %5148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.i32 %5148, 0
  %5150 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5123, i32 %5149, i32 %5141)  ; UMad(a,b,c)
  %5151 = shl i32 %5150, 2
  %5152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5151, i32 undef)  ; BufferLoad(srv,index,wot)
  %5153 = extractvalue %dx.types.ResRet.i32 %5152, 0
  %5154 = shl i32 %5141, 5
  %5155 = sub nsw i32 %5133, %5154
  %5156 = call i32 @dx.op.binary.i32(i32 37, i32 %5155, i32 0)  ; IMax(a,b)
  %5157 = call i32 @dx.op.binary.i32(i32 38, i32 %5156, i32 31)  ; IMin(a,b)
  %5158 = sub nsw i32 1, %5133
  %5159 = add nsw i32 %5158, %5134
  %5160 = call i32 @dx.op.binary.i32(i32 37, i32 %5159, i32 0)  ; IMax(a,b)
  %5161 = call i32 @dx.op.binary.i32(i32 38, i32 %5160, i32 32)  ; IMin(a,b)
  %5162 = and i32 %5161, 31
  %5163 = shl i32 -1, %5162
  %5164 = xor i32 %5163, -1
  %5165 = and i32 %5157, 31
  %5166 = shl i32 %5164, %5165
  %5167 = icmp eq i32 %5161, 32
  %5168 = select i1 %5167, i32 -1, i32 %5166
  %5169 = and i32 %5168, %5153
  %5170 = icmp eq i32 %5169, 0
  br i1 %5170, label %5471, label %5171

; <label>:5171                                    ; preds = %5140
  br label %5172

; <label>:5172                                    ; preds = %5252, %5171
  %5173 = phi i32 [ %5184, %5252 ], [ %5169, %5171 ]
  %5174 = phi float [ %5253, %5252 ], [ %5142, %5171 ]
  %5175 = phi float [ %5254, %5252 ], [ %5143, %5171 ]
  %5176 = phi float [ %5255, %5252 ], [ %5144, %5171 ]
  %5177 = phi float [ %5256, %5252 ], [ %5145, %5171 ]
  %5178 = phi float [ %5257, %5252 ], [ %5146, %5171 ]
  %5179 = phi float [ %5258, %5252 ], [ %5147, %5171 ]
  %5180 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5173)  ; FirstbitLo(value)
  %5181 = add i32 %5180, %5154
  %5182 = and i32 %5180, 31
  %5183 = shl i32 1, %5182
  %5184 = xor i32 %5183, %5173
  %5185 = mul i32 %5181, 112
  %5186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5185, i32 undef)  ; BufferLoad(srv,index,wot)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = or i32 %5185, 12
  %5191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5190, i32 undef)  ; BufferLoad(srv,index,wot)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = add i32 %5185, 44
  %5194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5193, i32 undef)  ; BufferLoad(srv,index,wot)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 0
  %5196 = add i32 %5185, 48
  %5197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.ResRet.f32 %5197, 1
  %5200 = extractvalue %dx.types.ResRet.f32 %5197, 2
  %5201 = add i32 %5185, 80
  %5202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5201, i32 undef)  ; BufferLoad(srv,index,wot)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5205 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = select i1 %213, float %5203, float %5187
  %5207 = select i1 %213, float %5205, float %5188
  %5208 = select i1 %213, float %5204, float %5189
  %5209 = fsub fast float %5198, %161
  %5210 = fsub fast float %5199, %162
  %5211 = fsub fast float %5200, %163
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5210, float %5211, float %5209, float %5210, float %5211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.unary.f32(i32 24, float %5212)  ; Sqrt(value)
  %5214 = fdiv fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5214, %5209
  %5216 = fmul fast float %5214, %5210
  %5217 = fmul fast float %5214, %5211
  %5218 = fadd fast float %5213, %5192
  %5219 = fdiv fast float 1.000000e+00, %5218
  %5220 = fmul float %5195, %5219
  %5221 = fmul float %5220, %5220
  %5222 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5223 = and i32 %5183, %5169
  %5224 = icmp eq i32 %5223, 0
  br i1 %5224, label %5247, label %5225, !dx.controlflow.hints !72

; <label>:5225                                    ; preds = %5172
  %5226 = lshr i32 %5117, 5
  %5227 = lshr i32 %5118, 5
  %5228 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5226, i32 %5227, i32 %5181, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5229 = extractvalue %dx.types.ResRet.i32 %5228, 0
  %5230 = and i32 %5229, 3
  %5231 = icmp eq i32 %5230, 0
  %5232 = select i1 %5231, float 1.000000e+00, float 0.000000e+00
  %5233 = icmp eq i32 %5230, 3
  br i1 %5233, label %5234, label %5247

; <label>:5234                                    ; preds = %5225
  %5235 = lshr i32 %5229, 10
  %5236 = and i32 %5235, 8160
  %5237 = and i32 %5118, 31
  %5238 = or i32 %5236, %5237
  %5239 = lshr i32 %5229, 1
  %5240 = and i32 %5239, 16352
  %5241 = and i32 %5117, 31
  %5242 = or i32 %5240, %5241
  %5243 = lshr i32 %5229, 23
  %5244 = and i32 %5243, 255
  %5245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5242, i32 %5238, i32 %5244, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  br label %5247

; <label>:5247                                    ; preds = %5234, %5225, %5172
  %5248 = phi float [ %5246, %5234 ], [ %5232, %5225 ], [ 0.000000e+00, %5172 ]
  %5249 = call float @dx.op.binary.f32(i32 36, float %5248, float %5248)  ; FMin(a,b)
  %5250 = call float @dx.op.binary.f32(i32 36, float %5248, float %5249)  ; FMin(a,b)
  %5251 = fcmp fast ogt float %5250, 0.000000e+00
  br i1 %5251, label %5260, label %5252, !dx.controlflow.hints !73

; <label>:5252                                    ; preds = %5321, %5247
  %5253 = phi float [ %5174, %5247 ], [ %5467, %5321 ]
  %5254 = phi float [ %5175, %5247 ], [ %5468, %5321 ]
  %5255 = phi float [ %5176, %5247 ], [ %5469, %5321 ]
  %5256 = phi float [ %5177, %5247 ], [ %5458, %5321 ]
  %5257 = phi float [ %5178, %5247 ], [ %5459, %5321 ]
  %5258 = phi float [ %5179, %5247 ], [ %5460, %5321 ]
  %5259 = icmp eq i32 %5173, %5183
  br i1 %5259, label %5470, label %5172

; <label>:5260                                    ; preds = %5247
  %5261 = fmul fast float %5248, %5206
  %5262 = fmul fast float %5248, %5207
  %5263 = fmul fast float %5248, %5208
  %5264 = fsub fast float %5200, %3997
  %5265 = fcmp fast ogt float %5264, 0.000000e+00
  %5266 = fsub fast float %163, %3997
  %5267 = fcmp fast ogt float %5266, 0.000000e+00
  %5268 = xor i1 %5267, %5265
  %5269 = fsub fast float %3997, %5200
  %5270 = fmul fast float %5269, 2.000000e+00
  %5271 = fadd fast float %5270, %5200
  %5272 = select i1 %5268, float %5200, float %5271
  %5273 = fsub fast float %5272, %163
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5210, float %5273, float %5209, float %5210, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 25, float %5274)  ; Rsqrt(value)
  %5276 = fmul fast float %5275, %5209
  %5277 = fmul fast float %5275, %5210
  %5278 = fmul fast float %5275, %5273
  %5279 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5276, float %5277, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = fdiv fast float 1.000000e+00, %5280
  %5282 = fmul fast float %5281, %5279
  %5283 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5266, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = fcmp fast ogt float %5283, 0.000000e+00
  %5285 = fcmp fast olt float %5283, 0.000000e+00
  %5286 = zext i1 %5284 to i32
  %5287 = zext i1 %5285 to i32
  %5288 = sub nsw i32 %5286, %5287
  %5289 = sitofp i32 %5288 to float
  %5290 = fsub fast float %5272, %3997
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5210, float %5290, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = fcmp fast ogt float %5291, 0.000000e+00
  %5293 = fcmp fast olt float %5291, 0.000000e+00
  %5294 = zext i1 %5292 to i32
  %5295 = zext i1 %5293 to i32
  %5296 = sub nsw i32 %5294, %5295
  %5297 = sitofp i32 %5296 to float
  %5298 = fcmp fast une float %5289, %5297
  br i1 %5298, label %5299, label %5309

; <label>:5299                                    ; preds = %5260
  %5300 = fmul fast float %5282, %5278
  %5301 = fmul fast float %5282, %5277
  %5302 = fmul fast float %5282, %5276
  %5303 = fmul fast float %5302, %5302
  %5304 = fmul fast float %5301, %5301
  %5305 = fadd fast float %5303, %5304
  %5306 = fmul fast float %5300, %5300
  %5307 = fadd fast float %5305, %5306
  %5308 = call float @dx.op.unary.f32(i32 24, float %5307)  ; Sqrt(value)
  br label %5321

; <label>:5309                                    ; preds = %5260
  %5310 = icmp slt i32 %5288, 0
  br i1 %5310, label %5311, label %5321

; <label>:5311                                    ; preds = %5309
  %5312 = fsub fast float %161, %5198
  %5313 = fsub fast float %162, %5199
  %5314 = fsub fast float %163, %5272
  %5315 = fmul fast float %5312, %5312
  %5316 = fmul fast float %5313, %5313
  %5317 = fadd fast float %5315, %5316
  %5318 = fmul fast float %5314, %5314
  %5319 = fadd fast float %5317, %5318
  %5320 = call float @dx.op.unary.f32(i32 24, float %5319)  ; Sqrt(value)
  br label %5321

; <label>:5321                                    ; preds = %5311, %5309, %5299
  %5322 = phi float [ %5308, %5299 ], [ %5320, %5311 ], [ 0.000000e+00, %5309 ]
  %5323 = and i1 %5267, %5265
  %5324 = fsub fast float -0.000000e+00, %5322
  %5325 = select i1 %5323, float -0.000000e+00, float %5324
  %5326 = fmul fast float %3998, 0x3FF7154760000000
  %5327 = fmul fast float %5326, %5325
  %5328 = fmul fast float %3999, 0x3FF7154760000000
  %5329 = fmul fast float %5328, %5325
  %5330 = fmul fast float %4000, 0x3FF7154760000000
  %5331 = fmul fast float %5330, %5325
  %5332 = call float @dx.op.unary.f32(i32 21, float %5327)  ; Exp(value)
  %5333 = call float @dx.op.unary.f32(i32 21, float %5329)  ; Exp(value)
  %5334 = call float @dx.op.unary.f32(i32 21, float %5331)  ; Exp(value)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5336 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = fmul fast float %5261, %5335
  %5339 = fmul fast float %5262, %5336
  %5340 = fmul fast float %5263, %5337
  %5341 = fsub fast float %5215, %4788
  %5342 = fsub fast float %5216, %4787
  %5343 = fsub fast float %5217, %4786
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 25, float %5344)  ; Rsqrt(value)
  %5346 = fmul fast float %5345, %5341
  %5347 = fmul fast float %5345, %5342
  %5348 = fmul fast float %5345, %5343
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5215, float %5216, float %5217, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4784, float %4783, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5352 = fmul fast float %5351, %5222
  %5353 = fmul fast float %5351, %5351
  %5354 = fmul fast float %5353, %4944
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fmul fast float %5352, %5355
  %5357 = bitcast float %5212 to i32
  %5358 = ashr i32 %5357, 1
  %5359 = sub nsw i32 1597463007, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = fmul fast float %5360, %5209
  %5362 = fmul fast float %5360, %5210
  %5363 = fmul fast float %5360, %5211
  %5364 = fsub fast float %5361, %4788
  %5365 = fsub fast float %5362, %4787
  %5366 = fsub fast float %5363, %4786
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = call float @dx.op.unary.f32(i32 25, float %5367)  ; Rsqrt(value)
  %5369 = fmul fast float %5364, %5368
  %5370 = fmul fast float %5365, %5368
  %5371 = fmul fast float %5366, %5368
  %5372 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %5369, float %5370, float %5371)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = fmul fast float %5372, %5372
  %5374 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5375 = fsub fast float 1.000000e+00, %4798
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0x3F847AE140000000)  ; FMax(a,b)
  %5377 = fmul fast float %5376, %5376
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = fmul fast float %4802, %4802
  %5381 = fmul fast float %5380, %5379
  %5382 = fadd fast float %5381, %5378
  %5383 = bitcast float %5382 to i32
  %5384 = ashr i32 %5383, 1
  %5385 = add nsw i32 %5384, 532487669
  %5386 = bitcast i32 %5385 to float
  %5387 = fadd fast float %5386, %4802
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
  %5402 = fdiv fast float 1.000000e+00, %5401
  %5403 = bitcast float %5378 to i32
  %5404 = sitofp i32 %5403 to float
  %5405 = fmul fast float %5404, 0x3FE7F73180000000
  %5406 = fadd fast float %5405, 0x41AFE27C40000000
  %5407 = fptosi float %5406 to i32
  %5408 = bitcast i32 %5407 to float
  %5409 = fmul fast float %5195, 0x3FD80E9D60000000
  %5410 = fmul fast float %5409, %5360
  %5411 = fadd fast float %5408, %5410
  %5412 = bitcast float %5411 to i32
  %5413 = sub nsw i32 2129859010, %5412
  %5414 = bitcast i32 %5413 to float
  %5415 = fmul fast float %5378, %5402
  %5416 = fmul fast float %5415, %5408
  %5417 = fmul fast float %5416, %5414
  %5418 = call float @dx.op.unary.f32(i32 6, float %5350)  ; FAbs(value)
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = bitcast float %5419 to i32
  %5421 = sitofp i32 %5420 to float
  %5422 = fmul fast float %5421, 5.000000e+00
  %5423 = fadd fast float %5422, 0xC1EFBF8940000000
  %5424 = fptosi float %5423 to i32
  %5425 = bitcast i32 %5424 to float
  %5426 = fsub fast float 1.000000e+00, %4789
  %5427 = fsub fast float 1.000000e+00, %4790
  %5428 = fsub fast float 1.000000e+00, %4800
  %5429 = fmul fast float %5425, %5426
  %5430 = fmul fast float %5425, %5427
  %5431 = fmul fast float %5425, %5428
  %5432 = fadd fast float %5429, %4789
  %5433 = fadd fast float %5430, %4790
  %5434 = fadd fast float %5431, %4800
  %5435 = fmul fast float %5349, 9.843750e-01
  %5436 = fadd fast float %5435, 7.812500e-03
  %5437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %25, float %5436, float %4916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 3
  %5440 = fmul fast float %5438, %4789
  %5441 = fmul fast float %5438, %4790
  %5442 = fmul fast float %5438, %4800
  %5443 = fadd fast float %5440, %5439
  %5444 = fadd fast float %5441, %5439
  %5445 = fadd fast float %5442, %5439
  %5446 = call float @dx.op.binary.f32(i32 35, float %5444, float %5445)  ; FMax(a,b)
  %5447 = call float @dx.op.binary.f32(i32 35, float %5443, float %5446)  ; FMax(a,b)
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = fmul fast float %5338, %1306
  %5450 = fmul fast float %5449, %5356
  %5451 = fmul fast float %5450, %5448
  %5452 = fmul fast float %5339, %1306
  %5453 = fmul fast float %5452, %5356
  %5454 = fmul fast float %5453, %5448
  %5455 = fmul fast float %5340, %1306
  %5456 = fmul fast float %5455, %5356
  %5457 = fmul fast float %5456, %5448
  %5458 = fadd fast float %5451, %5177
  %5459 = fadd fast float %5454, %5178
  %5460 = fadd fast float %5457, %5179
  %5461 = fmul fast float %5450, %5432
  %5462 = fmul fast float %5461, %5417
  %5463 = fmul fast float %5453, %5433
  %5464 = fmul fast float %5463, %5417
  %5465 = fmul fast float %5456, %5434
  %5466 = fmul fast float %5465, %5417
  %5467 = fadd fast float %5462, %5174
  %5468 = fadd fast float %5464, %5175
  %5469 = fadd fast float %5466, %5176
  br label %5252

; <label>:5470                                    ; preds = %5252
  br label %5471

; <label>:5471                                    ; preds = %5470, %5140
  %5472 = phi float [ %5142, %5140 ], [ %5253, %5470 ]
  %5473 = phi float [ %5143, %5140 ], [ %5254, %5470 ]
  %5474 = phi float [ %5144, %5140 ], [ %5255, %5470 ]
  %5475 = phi float [ %5145, %5140 ], [ %5256, %5470 ]
  %5476 = phi float [ %5146, %5140 ], [ %5257, %5470 ]
  %5477 = phi float [ %5147, %5140 ], [ %5258, %5470 ]
  %5478 = add i32 %5141, 1
  %5479 = icmp ugt i32 %5478, %5137
  br i1 %5479, label %5480, label %5140

; <label>:5480                                    ; preds = %5471
  br label %5481

; <label>:5481                                    ; preds = %5480, %5116, %5106
  %5482 = phi float [ %5107, %5106 ], [ %5107, %5116 ], [ %5472, %5480 ]
  %5483 = phi float [ %5108, %5106 ], [ %5108, %5116 ], [ %5473, %5480 ]
  %5484 = phi float [ %5109, %5106 ], [ %5109, %5116 ], [ %5474, %5480 ]
  %5485 = phi float [ %5110, %5106 ], [ %5110, %5116 ], [ %5475, %5480 ]
  %5486 = phi float [ %5111, %5106 ], [ %5111, %5116 ], [ %5476, %5480 ]
  %5487 = phi float [ %5112, %5106 ], [ %5112, %5116 ], [ %5477, %5480 ]
  %5488 = call float @dx.op.unary.f32(i32 24, float %4795)  ; Sqrt(value)
  %5489 = call float @dx.op.unary.f32(i32 24, float %4796)  ; Sqrt(value)
  %5490 = call float @dx.op.unary.f32(i32 24, float %4797)  ; Sqrt(value)
  %5491 = fmul fast float %5488, %5485
  %5492 = fmul fast float %5489, %5486
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  br i1 %213, label %5495, label %5516

; <label>:5495                                    ; preds = %5481
  %5496 = fadd fast float %3541, %5487
  %5497 = fmul fast float %5496, %3520
  %5498 = fsub fast float 1.000000e+00, %3520
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5502 = fmul fast float %5501, %5499
  %5503 = fadd fast float %5502, %5497
  %5504 = fsub fast float 1.000000e+00, %4802
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = fmul fast float %5506, %5504
  %5508 = fsub fast float %5503, %5507
  %5509 = fadd fast float %5492, %5491
  %5510 = fmul fast float %5494, %5509
  %5511 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5512 = fsub fast float %5508, %5511
  %5513 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5514 = fmul fast float %5512, %5513
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  br label %5532

; <label>:5516                                    ; preds = %5481
  %5517 = fmul fast float %5490, %5487
  %5518 = fmul fast float %5494, %5491
  %5519 = fmul fast float %5494, %5492
  %5520 = fmul fast float %5517, %5494
  %5521 = add i32 %29, 356
  %5522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.i32 %5522, 0
  %5524 = and i32 %5523, 32
  %5525 = icmp eq i32 %5524, 0
  br i1 %5525, label %5532, label %5526

; <label>:5526                                    ; preds = %5516
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5529 = fmul fast float %5528, 0x3FE99999A0000000
  %5530 = fadd fast float %5528, %5518
  %5531 = fadd fast float %5529, %5520
  br label %5532

; <label>:5532                                    ; preds = %5526, %5516, %5495
  %5533 = phi float [ %5510, %5495 ], [ %5530, %5526 ], [ %5518, %5516 ]
  %5534 = phi float [ %5515, %5495 ], [ %5519, %5526 ], [ %5519, %5516 ]
  %5535 = phi float [ 1.000000e+00, %5495 ], [ %5531, %5526 ], [ %5520, %5516 ]
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = fmul fast float %5537, %5483
  %5539 = fmul fast float %5537, %5484
  %5540 = fadd fast float %5483, %5482
  %5541 = select i1 %213, float %5540, float %5482
  %5542 = fmul float %5541, %5537
  %5543 = select i1 %213, float 0.000000e+00, float %5538
  %5544 = select i1 %213, float 0.000000e+00, float %5539
  %5545 = fmul fast float %5533, %5488
  %5546 = fmul fast float %5534, %5489
  %5547 = fmul fast float %5535, %5490
  %5548 = fadd fast float %5542, %5545
  %5549 = fadd fast float %5543, %5546
  %5550 = fadd fast float %5544, %5547
  %5551 = select i1 %213, float %5534, float %5549
  %5552 = select i1 %213, float %5535, float %5550
  %5553 = call float @dx.op.binary.f32(i32 36, float %5548, float 3.225500e+04)  ; FMin(a,b)
  %5554 = call float @dx.op.binary.f32(i32 36, float %5551, float 3.225500e+04)  ; FMin(a,b)
  %5555 = call float @dx.op.binary.f32(i32 36, float %5552, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5554)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5555)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!42}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
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
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !70}
!44 = !{!45, !68, null}
!45 = !{!46, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 11}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !50}
!50 = !{i32 3, i32 14}
!51 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 2, i8 0, !52}
!52 = !{i32 3, i32 3}
!53 = !{i32 3, !"NORMAL", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !54}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TANGENT", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !56}
!56 = !{i32 3, i32 15}
!57 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 5, i8 0, !54}
!58 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 6, i8 0, !56}
!59 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 7, i8 0, !54}
!60 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 8, i8 0, !56}
!61 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 9, i8 0, !52}
!62 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 10, i8 0, !56}
!63 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 11, i8 0, !54}
!64 = !{i32 12, !"ENTITY_IDS", i8 5, i8 0, !47, i8 1, i32 1, i8 2, i32 12, i8 0, !52}
!65 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !47, i8 1, i32 1, i8 4, i32 13, i8 0, !66}
!66 = !{i32 3, i32 1}
!67 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !56}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

