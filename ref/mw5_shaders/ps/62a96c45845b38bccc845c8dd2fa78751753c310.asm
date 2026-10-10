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
; shader hash: 8e7602a7a7f8d5cb455e011dea0ecea5
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
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fcmp fast une float %100, 0.000000e+00
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %77, 2.000000e+00
  %106 = fmul fast float %105, %103
  %107 = fmul fast float %78, 2.000000e+00
  %108 = fmul fast float %107, %104
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = select i1 %101, float %112, float %116
  %120 = select i1 %101, float %113, float %117
  %121 = select i1 %101, float %114, float %118
  %122 = fmul fast float %119, %109
  %123 = fmul fast float %120, %109
  %124 = fmul fast float %121, %109
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = select i1 %101, float %126, float %130
  %134 = select i1 %101, float %127, float %131
  %135 = select i1 %101, float %128, float %132
  %136 = fmul fast float %133, %110
  %137 = fmul fast float %134, %110
  %138 = fmul fast float %135, %110
  %139 = fadd fast float %136, %122
  %140 = fadd fast float %137, %123
  %141 = fadd fast float %138, %124
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = select i1 %101, float %143, float %147
  %151 = select i1 %101, float %144, float %148
  %152 = select i1 %101, float %145, float %149
  %153 = fadd fast float %139, %150
  %154 = fadd fast float %140, %151
  %155 = fadd fast float %141, %152
  %156 = fmul fast float %153, %72
  %157 = fmul fast float %154, %72
  %158 = fmul fast float %155, %72
  %159 = shl i32 %29, 5
  %160 = add i32 %159, 4194304
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = extractvalue %dx.types.ResRet.i32 %161, 2
  %165 = extractvalue %dx.types.ResRet.i32 %161, 3
  %166 = add i32 %159, 4194320
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = extractvalue %dx.types.ResRet.i32 %167, 1
  %170 = bitcast i32 %168 to float
  %171 = bitcast i32 %169 to float
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %77
  %176 = fmul fast float %174, %78
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 114688
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float %175, float 0.000000e+00
  %182 = select i1 %180, float %176, float 0.000000e+00
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fmul fast float %184, 2.550000e+02
  %186 = fptoui float %185 to i32
  %187 = select i1 %180, i32 %186, i32 0
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 3
  %190 = and i32 %189, 3
  %191 = icmp ne i32 %190, 0
  %192 = and i32 %189, 4
  %193 = icmp ne i32 %192, 0
  %194 = and i1 %191, %193
  br i1 %194, label %195, label %204

; <label>:195                                     ; preds = %0
  %196 = fmul fast float %104, %78
  %197 = fmul fast float %103, %77
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %197, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fcmp fast olt float %200, %202
  br label %207

; <label>:204                                     ; preds = %0
  %205 = icmp eq i32 %192, 0
  %206 = and i1 %191, %205
  br label %207

; <label>:207                                     ; preds = %204, %195
  %208 = phi i1 [ %203, %195 ], [ %206, %204 ]
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %77, 2.560000e+02
  %213 = frem fast float %78, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, %211
  %219 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %220 = add i32 %28, 156
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = shl i32 %222, 4
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %222, 7
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %222, 22
  %230 = shl nuw nsw i32 %229, 5
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %28, 216
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %234, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = lshr i32 %234, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = add i32 %28, 36
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %28, 288
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = fmul fast float %257, 0x3F50624DE0000000
  %261 = fmul fast float %259, 0x3F50624DE0000000
  %262 = add i32 %28, 172
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %28, 232
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %28, 52
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %28, 304
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %28, 188
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %28, 248
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %28, 68
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %28, 320
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %28, 204
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %28, 264
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %28, 84
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %28, 336
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %28, 348
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 32
  %392 = icmp eq i32 %391, 0
  %393 = and i32 %390, 64
  %394 = icmp eq i32 %393, 0
  %395 = and i32 %390, 128
  %396 = icmp eq i32 %395, 0
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %414, label %401

; <label>:401                                     ; preds = %207
  %402 = add i32 %28, 492
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = fmul fast float %408, %67
  %412 = fmul fast float %409, %68
  %413 = fmul fast float %410, %69
  br label %414

; <label>:414                                     ; preds = %401, %207
  %415 = phi float [ %69, %207 ], [ %413, %401 ]
  %416 = phi float [ %68, %207 ], [ %412, %401 ]
  %417 = phi float [ %67, %207 ], [ %411, %401 ]
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 2
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %441, label %422

; <label>:422                                     ; preds = %414
  %423 = add i32 %28, 44
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 1
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %417, float 1.000000e+00
  %429 = add i32 %28, 60
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 1
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %416, float 1.000000e+00
  %435 = add i32 %28, 76
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %415, float 1.000000e+00
  br label %441

; <label>:441                                     ; preds = %422, %414
  %442 = phi float [ %415, %414 ], [ %440, %422 ]
  %443 = phi float [ %416, %414 ], [ %434, %422 ]
  %444 = phi float [ %417, %414 ], [ %428, %422 ]
  %445 = lshr i32 %419, 20
  %446 = and i32 %445, 3
  %447 = add nuw nsw i32 %446, 1
  %448 = add i32 %28, 24
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %28, 28
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = or i32 %453, %450
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %967, label %456

; <label>:456                                     ; preds = %441
  %457 = and i32 %450, 262144
  %458 = icmp ne i32 %457, 0
  %459 = select i1 %458, float %33, float 1.000000e+00
  %460 = select i1 %458, float %34, float 0.000000e+00
  %461 = select i1 %458, float %35, float 0.000000e+00
  %462 = select i1 %458, float %36, float 1.000000e+00
  %463 = select i1 %458, float %37, float %65
  %464 = select i1 %458, float %38, float %66
  %465 = add i32 %28, 284
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = fmul fast float %469, 0x3F50624DE0000000
  %471 = add i32 %28, 88
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 16
  %475 = and i32 %474, 255
  %476 = lshr i32 %473, 24
  %477 = add i32 %28, 292
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %479, 16
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = add i32 %28, 32
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 22
  %488 = shl nuw nsw i32 %487, 5
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = shl i32 %486, 4
  %491 = and i32 %490, 32752
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %486, 7
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 3
  %498 = fmul fast float %497, 1.000000e+03
  %499 = fmul fast float %260, %498
  %500 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %501 = fadd fast float %500, %250
  %502 = fmul fast float %261, %498
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = fadd fast float %503, %252
  %505 = fmul fast float %470, %498
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = fmul fast float %506, 0x401921FB60000000
  %508 = fadd fast float %507, %489
  %509 = call float @dx.op.unary.f32(i32 13, float %508)  ; Sin(value)
  %510 = call float @dx.op.unary.f32(i32 12, float %508)  ; Cos(value)
  %511 = fsub fast float -0.000000e+00, %509
  %512 = fadd fast float %463, -5.000000e-01
  %513 = fadd fast float %464, -5.000000e-01
  %514 = fmul fast float %481, %512
  %515 = fmul fast float %483, %513
  %516 = fadd fast float %514, 5.000000e-01
  %517 = fadd fast float %515, 5.000000e-01
  %518 = fmul fast float %492, %516
  %519 = fmul fast float %495, %517
  %520 = fmul fast float %510, %518
  %521 = call float @dx.op.tertiary.f32(i32 46, float %511, float %519, float %520)  ; FMad(a,b,c)
  %522 = fmul fast float %509, %518
  %523 = call float @dx.op.tertiary.f32(i32 46, float %510, float %519, float %522)  ; FMad(a,b,c)
  %524 = fadd fast float %501, %521
  %525 = fadd fast float %504, %523
  %526 = icmp ugt i32 %475, 1
  %527 = icmp ugt i32 %473, 33554431
  %528 = or i1 %527, %526
  br i1 %528, label %529, label %554

; <label>:529                                     ; preds = %456
  %530 = add i32 %28, 228
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 16
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = fmul fast float %497, %534
  %536 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %537 = mul nuw nsw i32 %475, %476
  %538 = uitofp i32 %537 to float
  %539 = fmul fast float %536, %538
  %540 = call float @dx.op.unary.f32(i32 27, float %539)  ; Round_ni(value)
  %541 = fptoui float %540 to i32
  %542 = urem i32 %541, %475
  %543 = udiv i32 %541, %476
  %544 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %545 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %546 = uitofp i32 %542 to float
  %547 = uitofp i32 %543 to float
  %548 = fadd fast float %544, %546
  %549 = fadd fast float %545, %547
  %550 = uitofp i32 %475 to float
  %551 = uitofp i32 %476 to float
  %552 = fdiv fast float %548, %550
  %553 = fdiv fast float %549, %551
  br label %554

; <label>:554                                     ; preds = %529, %456
  %555 = phi float [ %552, %529 ], [ %524, %456 ]
  %556 = phi float [ %553, %529 ], [ %525, %456 ]
  %557 = and i32 %450, 16
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %755, label %559

; <label>:559                                     ; preds = %554
  %560 = add i32 %28, 376
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %564, %dx.types.Handle %73, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = extractvalue %dx.types.ResRet.f32 %565, 3
  %570 = and i32 %473, 255
  %571 = uitofp i32 %570 to float
  %572 = lshr i32 %473, 8
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %569, %571
  %576 = fadd fast float %575, %574
  %577 = fmul fast float %576, 0x3F70101000000000
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 512
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %590, label %582

; <label>:582                                     ; preds = %559
  %583 = add i32 %28, 460
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add i32 %585, 0
  %587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %587, %dx.types.Handle %74, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  br label %590

; <label>:590                                     ; preds = %582, %559
  %591 = phi float [ %589, %582 ], [ 1.000000e+00, %559 ]
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 33554432
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %702, label %596

; <label>:596                                     ; preds = %590
  %597 = add i32 %28, 224
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %599, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = add i32 %28, 228
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 65535
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = lshr i32 %610, 24
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = and i32 %610, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = lshr i32 %610, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = lshr i32 %610, 16
  %622 = and i32 %621, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = add i32 %28, 220
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = lshr i32 %627, 24
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = and i32 %627, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = lshr i32 %627, 8
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %627, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = bitcast float %566 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %566, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %566
  %651 = fmul fast float %650, %649
  %652 = bitcast float %567 to i32
  %653 = ashr i32 %652, 1
  %654 = sub nsw i32 1597463174, %653
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %567, 5.000000e-01
  %657 = fmul fast float %655, %655
  %658 = fmul fast float %657, %656
  %659 = fsub fast float 1.500000e+00, %658
  %660 = fmul fast float %655, %567
  %661 = fmul fast float %660, %659
  %662 = bitcast float %568 to i32
  %663 = ashr i32 %662, 1
  %664 = sub nsw i32 1597463174, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %568, 5.000000e-01
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %667, %666
  %669 = fsub fast float 1.500000e+00, %668
  %670 = fmul fast float %665, %568
  %671 = fmul fast float %670, %669
  %672 = fsub fast float %651, %633
  %673 = fsub fast float %661, %637
  %674 = fsub fast float %671, %641
  %675 = fmul fast float %672, %601
  %676 = fmul fast float %673, %603
  %677 = fmul fast float %674, %608
  %678 = fadd fast float %675, %616
  %679 = fadd fast float %676, %620
  %680 = fadd fast float %677, %624
  %681 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %682 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %683 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  %684 = fmul fast float %681, %681
  %685 = fmul fast float %682, %682
  %686 = fmul fast float %683, %683
  %687 = fsub fast float %684, %566
  %688 = fsub fast float %685, %567
  %689 = fsub fast float %686, %568
  %690 = fmul fast float %687, %591
  %691 = fmul fast float %688, %591
  %692 = fmul fast float %689, %591
  %693 = fadd fast float %690, %566
  %694 = fadd fast float %691, %567
  %695 = fadd fast float %692, %568
  %696 = fadd fast float %613, %577
  %697 = fsub fast float %696, %630
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %699 = fsub fast float %698, %577
  %700 = fmul fast float %699, %591
  %701 = fadd fast float %700, %577
  br label %755

; <label>:702                                     ; preds = %590
  %703 = and i32 %593, 134217728
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %739, label %705

; <label>:705                                     ; preds = %702
  %706 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %707 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %709 = fadd fast float %706, -5.000000e-01
  %710 = fadd fast float %707, -5.000000e-01
  %711 = fadd fast float %708, -5.000000e-01
  %712 = fmul fast float %709, %591
  %713 = fmul fast float %710, %591
  %714 = fmul fast float %711, %591
  %715 = fadd fast float %712, 5.000000e-01
  %716 = fadd fast float %713, 5.000000e-01
  %717 = fadd fast float %714, 5.000000e-01
  %718 = call float @dx.op.unary.f32(i32 24, float %566)  ; Sqrt(value)
  %719 = call float @dx.op.unary.f32(i32 24, float %567)  ; Sqrt(value)
  %720 = call float @dx.op.unary.f32(i32 24, float %568)  ; Sqrt(value)
  %721 = fmul fast float %715, 2.000000e+00
  %722 = fsub fast float 1.000000e+00, %721
  %723 = fmul fast float %722, %718
  %724 = fadd fast float %723, %721
  %725 = fmul fast float %724, %718
  %726 = fmul fast float %716, 2.000000e+00
  %727 = fsub fast float 1.000000e+00, %726
  %728 = fmul fast float %727, %719
  %729 = fadd fast float %728, %726
  %730 = fmul fast float %729, %719
  %731 = fmul fast float %717, 2.000000e+00
  %732 = fsub fast float 1.000000e+00, %731
  %733 = fmul fast float %732, %720
  %734 = fadd fast float %733, %731
  %735 = fmul fast float %734, %720
  %736 = fmul fast float %725, %725
  %737 = fmul fast float %730, %730
  %738 = fmul fast float %735, %735
  br label %755

; <label>:739                                     ; preds = %702
  %740 = fmul fast float %237, %237
  %741 = fmul fast float %241, %241
  %742 = fmul fast float %245, %245
  %743 = fadd fast float %740, -1.000000e+00
  %744 = fadd fast float %741, -1.000000e+00
  %745 = fadd fast float %742, -1.000000e+00
  %746 = fmul fast float %591, %743
  %747 = fmul fast float %591, %744
  %748 = fmul fast float %591, %745
  %749 = fadd fast float %746, 1.000000e+00
  %750 = fadd fast float %747, 1.000000e+00
  %751 = fadd fast float %748, 1.000000e+00
  %752 = fmul fast float %749, %566
  %753 = fmul fast float %750, %567
  %754 = fmul fast float %751, %568
  br label %755

; <label>:755                                     ; preds = %739, %705, %596, %554
  %756 = phi float [ %701, %596 ], [ %577, %705 ], [ %577, %739 ], [ 0x3FA23C0BE0000000, %554 ]
  %757 = phi float [ %693, %596 ], [ %736, %705 ], [ %752, %739 ], [ 1.000000e+00, %554 ]
  %758 = phi float [ %694, %596 ], [ %737, %705 ], [ %753, %739 ], [ 1.000000e+00, %554 ]
  %759 = phi float [ %695, %596 ], [ %738, %705 ], [ %754, %739 ], [ 1.000000e+00, %554 ]
  %760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.i32 %760, 1
  %762 = and i32 %761, 1
  %763 = icmp ne i32 %762, 0
  %764 = add i32 %28, 356
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 32
  %768 = icmp ne i32 %767, 0
  %769 = and i1 %763, %768
  %770 = select i1 %769, float 1.000000e+00, float %757
  %771 = select i1 %769, float 0x3FD3333340000000, float %758
  %772 = select i1 %769, float 0x3FD3333340000000, float %759
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 32
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %849, label %777

; <label>:777                                     ; preds = %755
  %778 = add i32 %28, 92
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %28, 392
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %783, 0
  %785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %785, %dx.types.Handle %73, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = and i32 %780, 255
  %792 = uitofp i32 %791 to float
  %793 = lshr i32 %780, 8
  %794 = and i32 %793, 255
  %795 = uitofp i32 %794 to float
  %796 = lshr i32 %780, 16
  %797 = and i32 %796, 255
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3F70101000000000
  %800 = fmul fast float %787, %792
  %801 = fadd fast float %800, %795
  %802 = fmul fast float %801, 0x3F70101000000000
  %803 = fadd fast float %788, -5.000000e-01
  %804 = fadd fast float %790, -5.000000e-01
  %805 = fmul fast float %803, %799
  %806 = fmul fast float %804, %799
  %807 = fadd fast float %805, 5.000000e-01
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fmul fast float %807, 2.000000e+00
  %810 = fadd fast float %809, -1.000000e+00
  %811 = fmul fast float %808, 2.000000e+00
  %812 = fadd fast float %811, -1.000000e+00
  %813 = fadd fast float %810, %812
  %814 = fmul fast float %813, 5.000000e-01
  %815 = fsub fast float %810, %812
  %816 = fmul fast float %815, 5.000000e-01
  %817 = call float @dx.op.unary.f32(i32 6, float %814)  ; FAbs(value)
  %818 = fsub fast float 1.000000e+00, %817
  %819 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %820 = fsub fast float %818, %819
  %821 = call float @dx.op.dot3.f32(i32 55, float %814, float %816, float %820, float %814, float %816, float %820)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.unary.f32(i32 25, float %821)  ; Rsqrt(value)
  %823 = fmul fast float %814, %822
  %824 = fmul fast float %816, %822
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 67108864
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %845, label %829

; <label>:829                                     ; preds = %777
  %830 = add i32 %28, 280
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 65535
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %832, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = fsub fast float %802, %840
  %842 = fmul fast float %841, %834
  %843 = fadd fast float %842, %838
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  br label %845

; <label>:845                                     ; preds = %829, %777
  %846 = phi float [ %844, %829 ], [ %802, %777 ]
  %847 = call float @dx.op.dot2.f32(i32 54, float %823, float %824, float %459, float %460)  ; Dot2(ax,ay,bx,by)
  %848 = call float @dx.op.dot2.f32(i32 54, float %823, float %824, float %461, float %462)  ; Dot2(ax,ay,bx,by)
  br label %849

; <label>:849                                     ; preds = %845, %755
  %850 = phi float [ %846, %845 ], [ 0x3FD6666660000000, %755 ]
  %851 = phi float [ %847, %845 ], [ 0.000000e+00, %755 ]
  %852 = phi float [ %848, %845 ], [ 0.000000e+00, %755 ]
  %853 = phi float [ %789, %845 ], [ 1.000000e+00, %755 ]
  %854 = add i32 %28, 160
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = lshr i32 %856, 22
  %858 = shl nuw nsw i32 %857, 5
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 64
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %897, label %864

; <label>:864                                     ; preds = %849
  %865 = add i32 %28, 408
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = add i32 %867, 0
  %869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 131072
  %873 = icmp eq i32 %872, 0
  %874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %869, %dx.types.Handle %73, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = fmul fast float %875, %225
  %879 = fmul fast float %876, %228
  %880 = fmul fast float %877, %231
  br i1 %873, label %887, label %881

; <label>:881                                     ; preds = %864
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = fmul fast float %883, %878
  %885 = fmul fast float %883, %879
  %886 = fmul fast float %883, %880
  br label %887

; <label>:887                                     ; preds = %881, %864
  %888 = phi float [ %884, %881 ], [ %878, %864 ]
  %889 = phi float [ %885, %881 ], [ %879, %864 ]
  %890 = phi float [ %886, %881 ], [ %880, %864 ]
  %891 = fmul fast float %888, %859
  %892 = select i1 %208, float %891, float %888
  %893 = call float @dx.op.dot3.f32(i32 55, float %892, float %889, float %890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = select i1 %208, float 0.000000e+00, float %888
  %895 = select i1 %208, float %893, float %889
  %896 = select i1 %208, float 0.000000e+00, float %890
  br label %897

; <label>:897                                     ; preds = %887, %849
  %898 = phi float [ %894, %887 ], [ 0.000000e+00, %849 ]
  %899 = phi float [ %895, %887 ], [ 0.000000e+00, %849 ]
  %900 = phi float [ %896, %887 ], [ 0.000000e+00, %849 ]
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 10240
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %949, label %905

; <label>:905                                     ; preds = %897
  %906 = add i32 %28, 476
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %908, 0
  %910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %910, %dx.types.Handle %74, float %555, float %556, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 1
  %913 = extractvalue %dx.types.ResRet.f32 %911, 3
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 1048576
  %917 = icmp ne i32 %916, 0
  %918 = and i32 %915, 8192
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %935, label %920

; <label>:920                                     ; preds = %905
  %921 = extractvalue %dx.types.ResRet.f32 %911, 2
  %922 = select i1 %917, float %921, float %912
  %923 = extractvalue %dx.types.ResRet.f32 %911, 0
  %924 = select i1 %917, float %923, float %912
  %925 = add i32 %28, 96
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = lshr i32 %927, 16
  %929 = and i32 %928, 255
  %930 = uitofp i32 %929 to float
  %931 = fmul fast float %930, 0x3F80101020000000
  %932 = fmul fast float %931, %924
  %933 = fmul fast float %931, %912
  %934 = fmul fast float %931, %922
  br label %935

; <label>:935                                     ; preds = %920, %905
  %936 = phi float [ %932, %920 ], [ 0.000000e+00, %905 ]
  %937 = phi float [ %933, %920 ], [ 0.000000e+00, %905 ]
  %938 = phi float [ %934, %920 ], [ 0.000000e+00, %905 ]
  %939 = and i32 %915, 2048
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %949, label %941

; <label>:941                                     ; preds = %935
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = shl i32 %943, 4
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = fmul fast float %946, %913
  %948 = call float @dx.op.binary.f32(i32 35, float %947, float 0x3F70101020000000)  ; FMax(a,b)
  br label %949

; <label>:949                                     ; preds = %941, %935, %897
  %950 = phi float [ %936, %941 ], [ %936, %935 ], [ 0.000000e+00, %897 ]
  %951 = phi float [ %937, %941 ], [ %937, %935 ], [ 0.000000e+00, %897 ]
  %952 = phi float [ %938, %941 ], [ %938, %935 ], [ 0.000000e+00, %897 ]
  %953 = phi float [ %948, %941 ], [ 0x3F70101020000000, %935 ], [ 0x3F70101020000000, %897 ]
  %954 = add i32 %28, 96
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %956, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %963 = fmul fast float %961, %962
  %964 = fadd fast float %963, %958
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  br label %967

; <label>:967                                     ; preds = %949, %441
  %968 = phi float [ 0.000000e+00, %441 ], [ %851, %949 ]
  %969 = phi float [ 0.000000e+00, %441 ], [ %852, %949 ]
  %970 = phi float [ 0.000000e+00, %441 ], [ %770, %949 ]
  %971 = phi float [ 0.000000e+00, %441 ], [ %771, %949 ]
  %972 = phi float [ 0.000000e+00, %441 ], [ %772, %949 ]
  %973 = phi float [ 0.000000e+00, %441 ], [ %898, %949 ]
  %974 = phi float [ 0.000000e+00, %441 ], [ %899, %949 ]
  %975 = phi float [ 0.000000e+00, %441 ], [ %900, %949 ]
  %976 = phi float [ 0.000000e+00, %441 ], [ %950, %949 ]
  %977 = phi float [ 0.000000e+00, %441 ], [ %951, %949 ]
  %978 = phi float [ 0.000000e+00, %441 ], [ %952, %949 ]
  %979 = phi float [ 0.000000e+00, %441 ], [ %756, %949 ]
  %980 = phi float [ 0.000000e+00, %441 ], [ 1.000000e+00, %949 ]
  %981 = phi float [ 0.000000e+00, %441 ], [ %850, %949 ]
  %982 = phi float [ 0.000000e+00, %441 ], [ %853, %949 ]
  %983 = phi float [ 0.000000e+00, %441 ], [ %953, %949 ]
  %984 = phi float [ 0.000000e+00, %441 ], [ %966, %949 ]
  br i1 %392, label %1798, label %985

; <label>:985                                     ; preds = %967
  %986 = icmp ult i32 %447, 2
  %987 = add i32 %28, 40
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %28, 44
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = or i32 %992, %989
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1798, label %995

; <label>:995                                     ; preds = %985
  %996 = and i32 %989, 262144
  %997 = icmp ne i32 %996, 0
  %998 = select i1 %997, float %33, float 1.000000e+00
  %999 = select i1 %997, float %34, float 0.000000e+00
  %1000 = select i1 %997, float %35, float 0.000000e+00
  %1001 = select i1 %997, float %36, float 1.000000e+00
  %1002 = select i1 %997, float %37, float %65
  %1003 = select i1 %997, float %38, float %66
  %1004 = add i32 %28, 300
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 16
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = fmul fast float %1008, 0x3F50624DE0000000
  %1010 = add i32 %28, 104
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = lshr i32 %1012, 16
  %1014 = and i32 %1013, 255
  %1015 = lshr i32 %1012, 24
  %1016 = add i32 %28, 308
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 65535
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = lshr i32 %1018, 16
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = add i32 %28, 48
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = lshr i32 %1025, 22
  %1027 = shl nuw nsw i32 %1026, 5
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = shl i32 %1025, 4
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1025, 7
  %1033 = and i32 %1032, 32752
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1037 = fmul fast float %1036, 1.000000e+03
  %1038 = fmul fast float %302, %1037
  %1039 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1040 = fadd fast float %1039, %292
  %1041 = fmul fast float %303, %1037
  %1042 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1043 = fadd fast float %1042, %294
  %1044 = fmul fast float %1009, %1037
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = fmul fast float %1045, 0x401921FB60000000
  %1047 = fadd fast float %1046, %1028
  %1048 = call float @dx.op.unary.f32(i32 13, float %1047)  ; Sin(value)
  %1049 = call float @dx.op.unary.f32(i32 12, float %1047)  ; Cos(value)
  %1050 = fsub fast float -0.000000e+00, %1048
  %1051 = fadd fast float %1002, -5.000000e-01
  %1052 = fadd fast float %1003, -5.000000e-01
  %1053 = fmul fast float %1020, %1051
  %1054 = fmul fast float %1022, %1052
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fmul fast float %1031, %1055
  %1058 = fmul fast float %1034, %1056
  %1059 = fmul fast float %1049, %1057
  %1060 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1058, float %1059)  ; FMad(a,b,c)
  %1061 = fmul fast float %1048, %1057
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1058, float %1061)  ; FMad(a,b,c)
  %1063 = fadd fast float %1040, %1060
  %1064 = fadd fast float %1043, %1062
  %1065 = icmp ugt i32 %1014, 1
  %1066 = icmp ugt i32 %1012, 33554431
  %1067 = or i1 %1066, %1065
  br i1 %1067, label %1068, label %1093

; <label>:1068                                    ; preds = %995
  %1069 = add i32 %28, 244
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = lshr i32 %1071, 16
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = fmul fast float %1036, %1073
  %1075 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1076 = mul nuw nsw i32 %1014, %1015
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1075, %1077
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = fptoui float %1079 to i32
  %1081 = urem i32 %1080, %1014
  %1082 = udiv i32 %1080, %1015
  %1083 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1085 = uitofp i32 %1081 to float
  %1086 = uitofp i32 %1082 to float
  %1087 = fadd fast float %1083, %1085
  %1088 = fadd fast float %1084, %1086
  %1089 = uitofp i32 %1014 to float
  %1090 = uitofp i32 %1015 to float
  %1091 = fdiv fast float %1087, %1089
  %1092 = fdiv fast float %1088, %1090
  br label %1093

; <label>:1093                                    ; preds = %1068, %995
  %1094 = phi float [ %1091, %1068 ], [ %1063, %995 ]
  %1095 = phi float [ %1092, %1068 ], [ %1064, %995 ]
  %1096 = and i32 %989, 256
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1144, label %1098

; <label>:1098                                    ; preds = %1093
  %1099 = add i32 %28, 444
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = add i32 %28, 116
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = lshr i32 %1108, 7
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fsub fast float 1.000000e+00, %444
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1117 = bitcast float %444 to i32
  %1118 = sitofp i32 %1117 to float
  %1119 = fadd fast float %1118, 0xC1CFBF8940000000
  %1120 = fmul fast float %1114, %1119
  %1121 = fadd fast float %1120, 0x41CFBF8940000000
  %1122 = fptosi float %1121 to i32
  %1123 = bitcast i32 %1122 to float
  %1124 = bitcast float %1116 to i32
  %1125 = sitofp i32 %1124 to float
  %1126 = fadd fast float %1125, 0xC1CFBF8940000000
  %1127 = fmul fast float %1126, %1114
  %1128 = fadd fast float %1127, 0x41CFBF8940000000
  %1129 = fptosi float %1128 to i32
  %1130 = bitcast i32 %1129 to float
  %1131 = fmul fast float %1123, %1111
  %1132 = fmul fast float %1130, %1111
  %1133 = fsub fast float %1116, %1131
  %1134 = fadd fast float %1132, %1116
  %1135 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1136 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1137 = fsub fast float %1105, %1135
  %1138 = fsub fast float %1136, %1135
  %1139 = bitcast float %1138 to i32
  %1140 = sub nsw i32 2129859010, %1139
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1141, %1137
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1098, %1093
  %1145 = phi float [ %1143, %1098 ], [ %444, %1093 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 128
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1166, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = add i32 %28, 428
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %1153, 0
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1155, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 524288
  %1161 = icmp ne i32 %1160, 0
  %1162 = fcmp fast ogt float %1157, 0x3FE0101020000000
  %1163 = select i1 %1162, float 1.000000e+00, float 0.000000e+00
  %1164 = select i1 %1161, float %1163, float %1157
  %1165 = fmul fast float %1164, %1145
  br label %1166

; <label>:1166                                    ; preds = %1150, %1144
  %1167 = phi float [ %1165, %1150 ], [ %1145, %1144 ]
  %1168 = fcmp fast ult float %1167, 0x3F70101020000000
  br i1 %1168, label %1798, label %1169

; <label>:1169                                    ; preds = %1166
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 16
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1372, label %1174

; <label>:1174                                    ; preds = %1169
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %28, 380
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %1179, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1181, %dx.types.Handle %73, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1187 = and i32 %1176, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = lshr i32 %1176, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1186, %1188
  %1193 = fadd fast float %1192, %1191
  %1194 = fmul fast float %1193, 0x3F70101000000000
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 512
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1207, label %1199

; <label>:1199                                    ; preds = %1174
  %1200 = add i32 %28, 464
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  br label %1207

; <label>:1207                                    ; preds = %1199, %1174
  %1208 = phi float [ %1206, %1199 ], [ 1.000000e+00, %1174 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 33554432
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1319, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %28, 240
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 65535
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = lshr i32 %1216, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = add i32 %28, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 65535
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = lshr i32 %1227, 24
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = and i32 %1227, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = lshr i32 %1227, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F70101020000000
  %1238 = lshr i32 %1227, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = add i32 %28, 236
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = lshr i32 %1244, 24
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = and i32 %1244, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = lshr i32 %1244, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = lshr i32 %1244, 16
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = bitcast float %1183 to i32
  %1260 = ashr i32 %1259, 1
  %1261 = sub nsw i32 1597463174, %1260
  %1262 = bitcast i32 %1261 to float
  %1263 = fmul fast float %1183, 5.000000e-01
  %1264 = fmul fast float %1262, %1262
  %1265 = fmul fast float %1264, %1263
  %1266 = fsub fast float 1.500000e+00, %1265
  %1267 = fmul fast float %1262, %1183
  %1268 = fmul fast float %1267, %1266
  %1269 = bitcast float %1184 to i32
  %1270 = ashr i32 %1269, 1
  %1271 = sub nsw i32 1597463174, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1184, 5.000000e-01
  %1274 = fmul fast float %1272, %1272
  %1275 = fmul fast float %1274, %1273
  %1276 = fsub fast float 1.500000e+00, %1275
  %1277 = fmul fast float %1272, %1184
  %1278 = fmul fast float %1277, %1276
  %1279 = bitcast float %1185 to i32
  %1280 = ashr i32 %1279, 1
  %1281 = sub nsw i32 1597463174, %1280
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1185, 5.000000e-01
  %1284 = fmul fast float %1282, %1282
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float 1.500000e+00, %1285
  %1287 = fmul fast float %1282, %1185
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float %1268, %1250
  %1290 = fsub fast float %1278, %1254
  %1291 = fsub fast float %1288, %1258
  %1292 = fmul fast float %1289, %1218
  %1293 = fmul fast float %1290, %1220
  %1294 = fmul fast float %1291, %1225
  %1295 = fadd fast float %1292, %1233
  %1296 = fadd fast float %1293, %1237
  %1297 = fadd fast float %1294, %1241
  %1298 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1299 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = fmul fast float %1298, %1298
  %1302 = fmul fast float %1299, %1299
  %1303 = fmul fast float %1300, %1300
  %1304 = fsub fast float %1301, %1183
  %1305 = fsub fast float %1302, %1184
  %1306 = fsub fast float %1303, %1185
  %1307 = fmul fast float %1304, %1208
  %1308 = fmul fast float %1305, %1208
  %1309 = fmul fast float %1306, %1208
  %1310 = fadd fast float %1307, %1183
  %1311 = fadd fast float %1308, %1184
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1230, %1194
  %1314 = fsub fast float %1313, %1247
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fsub fast float %1315, %1194
  %1317 = fmul fast float %1316, %1208
  %1318 = fadd fast float %1317, %1194
  br label %1372

; <label>:1319                                    ; preds = %1207
  %1320 = and i32 %1210, 134217728
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1356, label %1322

; <label>:1322                                    ; preds = %1319
  %1323 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %1325 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fmul fast float %1326, %1208
  %1330 = fmul fast float %1327, %1208
  %1331 = fmul fast float %1328, %1208
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = fmul fast float %1332, 2.000000e+00
  %1339 = fsub fast float 1.000000e+00, %1338
  %1340 = fmul fast float %1339, %1335
  %1341 = fadd fast float %1340, %1338
  %1342 = fmul fast float %1341, %1335
  %1343 = fmul fast float %1333, 2.000000e+00
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = fmul fast float %1344, %1336
  %1346 = fadd fast float %1345, %1343
  %1347 = fmul fast float %1346, %1336
  %1348 = fmul fast float %1334, 2.000000e+00
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = fmul fast float %1349, %1337
  %1351 = fadd fast float %1350, %1348
  %1352 = fmul fast float %1351, %1337
  %1353 = fmul fast float %1342, %1342
  %1354 = fmul fast float %1347, %1347
  %1355 = fmul fast float %1352, %1352
  br label %1372

; <label>:1356                                    ; preds = %1319
  %1357 = fmul fast float %279, %279
  %1358 = fmul fast float %283, %283
  %1359 = fmul fast float %287, %287
  %1360 = fadd fast float %1357, -1.000000e+00
  %1361 = fadd fast float %1358, -1.000000e+00
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fmul fast float %1208, %1360
  %1364 = fmul fast float %1208, %1361
  %1365 = fmul fast float %1208, %1362
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fmul fast float %1366, %1183
  %1370 = fmul fast float %1367, %1184
  %1371 = fmul fast float %1368, %1185
  br label %1372

; <label>:1372                                    ; preds = %1356, %1322, %1213, %1169
  %1373 = phi float [ %1318, %1213 ], [ %1194, %1322 ], [ %1194, %1356 ], [ 0x3FA23C0BE0000000, %1169 ]
  %1374 = phi float [ %1310, %1213 ], [ %1353, %1322 ], [ %1369, %1356 ], [ 1.000000e+00, %1169 ]
  %1375 = phi float [ %1311, %1213 ], [ %1354, %1322 ], [ %1370, %1356 ], [ 1.000000e+00, %1169 ]
  %1376 = phi float [ %1312, %1213 ], [ %1355, %1322 ], [ %1371, %1356 ], [ 1.000000e+00, %1169 ]
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 1
  %1379 = and i32 %1378, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = add i32 %28, 356
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 32
  %1385 = icmp ne i32 %1384, 0
  %1386 = and i1 %1380, %1385
  %1387 = select i1 %1386, float 1.000000e+00, float %1374
  %1388 = select i1 %1386, float 0x3FD3333340000000, float %1375
  %1389 = select i1 %1386, float 0x3FD3333340000000, float %1376
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 32
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1466, label %1394

; <label>:1394                                    ; preds = %1372
  %1395 = add i32 %28, 108
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %28, 396
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %1400, 0
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1402, %dx.types.Handle %73, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.ResRet.f32 %1403, 3
  %1408 = and i32 %1397, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1397, 8
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1397, 16
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fmul fast float %1404, %1409
  %1418 = fadd fast float %1417, %1412
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fadd fast float %1405, -5.000000e-01
  %1421 = fadd fast float %1407, -5.000000e-01
  %1422 = fmul fast float %1420, %1416
  %1423 = fmul fast float %1421, %1416
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = fmul fast float %1424, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = fmul fast float %1425, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fadd fast float %1427, %1429
  %1431 = fmul fast float %1430, 5.000000e-01
  %1432 = fsub fast float %1427, %1429
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float %1435, %1436
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1433, float %1437, float %1431, float %1433, float %1437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = call float @dx.op.unary.f32(i32 25, float %1438)  ; Rsqrt(value)
  %1440 = fmul fast float %1431, %1439
  %1441 = fmul fast float %1433, %1439
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 67108864
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1394
  %1447 = add i32 %28, 296
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 65535
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = lshr i32 %1449, 16
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fsub fast float %1419, %1457
  %1459 = fmul fast float %1458, %1451
  %1460 = fadd fast float %1459, %1455
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br label %1462

; <label>:1462                                    ; preds = %1446, %1394
  %1463 = phi float [ %1461, %1446 ], [ %1419, %1394 ]
  %1464 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %998, float %999)  ; Dot2(ax,ay,bx,by)
  %1465 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %1000, float %1001)  ; Dot2(ax,ay,bx,by)
  br label %1466

; <label>:1466                                    ; preds = %1462, %1372
  %1467 = phi float [ %1463, %1462 ], [ 0x3FD6666660000000, %1372 ]
  %1468 = phi float [ %1464, %1462 ], [ 0.000000e+00, %1372 ]
  %1469 = phi float [ %1465, %1462 ], [ 0.000000e+00, %1372 ]
  %1470 = phi float [ %1406, %1462 ], [ 1.000000e+00, %1372 ]
  %1471 = add i32 %28, 176
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = lshr i32 %1473, 22
  %1475 = shl nuw nsw i32 %1474, 5
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 64
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1514, label %1481

; <label>:1481                                    ; preds = %1466
  %1482 = add i32 %28, 412
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %1484, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 131072
  %1490 = icmp eq i32 %1489, 0
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %73, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = fmul fast float %1492, %267
  %1496 = fmul fast float %1493, %270
  %1497 = fmul fast float %1494, %273
  br i1 %1490, label %1504, label %1498

; <label>:1498                                    ; preds = %1481
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = fmul fast float %1500, %1495
  %1502 = fmul fast float %1500, %1496
  %1503 = fmul fast float %1500, %1497
  br label %1504

; <label>:1504                                    ; preds = %1498, %1481
  %1505 = phi float [ %1501, %1498 ], [ %1495, %1481 ]
  %1506 = phi float [ %1502, %1498 ], [ %1496, %1481 ]
  %1507 = phi float [ %1503, %1498 ], [ %1497, %1481 ]
  %1508 = fmul fast float %1505, %1476
  %1509 = select i1 %208, float %1508, float %1505
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1506, float %1507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = select i1 %208, float 0.000000e+00, float %1505
  %1512 = select i1 %208, float %1510, float %1506
  %1513 = select i1 %208, float 0.000000e+00, float %1507
  br label %1514

; <label>:1514                                    ; preds = %1504, %1466
  %1515 = phi float [ %1511, %1504 ], [ 0.000000e+00, %1466 ]
  %1516 = phi float [ %1512, %1504 ], [ 0.000000e+00, %1466 ]
  %1517 = phi float [ %1513, %1504 ], [ 0.000000e+00, %1466 ]
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 10240
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1566, label %1522

; <label>:1522                                    ; preds = %1514
  %1523 = add i32 %28, 480
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %1525, 0
  %1527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1527, %dx.types.Handle %74, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 3
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 1048576
  %1534 = icmp ne i32 %1533, 0
  %1535 = and i32 %1532, 8192
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1552, label %1537

; <label>:1537                                    ; preds = %1522
  %1538 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1539 = select i1 %1534, float %1538, float %1529
  %1540 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1541 = select i1 %1534, float %1540, float %1529
  %1542 = add i32 %28, 112
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = lshr i32 %1544, 16
  %1546 = and i32 %1545, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F80101020000000
  %1549 = fmul fast float %1548, %1541
  %1550 = fmul fast float %1548, %1529
  %1551 = fmul fast float %1548, %1539
  br label %1552

; <label>:1552                                    ; preds = %1537, %1522
  %1553 = phi float [ %1549, %1537 ], [ 0.000000e+00, %1522 ]
  %1554 = phi float [ %1550, %1537 ], [ 0.000000e+00, %1522 ]
  %1555 = phi float [ %1551, %1537 ], [ 0.000000e+00, %1522 ]
  %1556 = and i32 %1532, 2048
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1566, label %1558

; <label>:1558                                    ; preds = %1552
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = shl i32 %1560, 4
  %1562 = and i32 %1561, 32752
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = fmul fast float %1563, %1530
  %1565 = call float @dx.op.binary.f32(i32 35, float %1564, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1566

; <label>:1566                                    ; preds = %1558, %1552, %1514
  %1567 = phi float [ %1553, %1558 ], [ %1553, %1552 ], [ 0.000000e+00, %1514 ]
  %1568 = phi float [ %1554, %1558 ], [ %1554, %1552 ], [ 0.000000e+00, %1514 ]
  %1569 = phi float [ %1555, %1558 ], [ %1555, %1552 ], [ 0.000000e+00, %1514 ]
  %1570 = phi float [ %1565, %1558 ], [ 0x3F70101020000000, %1552 ], [ 0x3F70101020000000, %1514 ]
  %1571 = add i32 %28, 112
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = lshr i32 %1573, 8
  %1577 = and i32 %1576, 255
  %1578 = uitofp i32 %1577 to float
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1387, float %1388, float %1389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = fmul fast float %1578, %1579
  %1581 = fadd fast float %1580, %1575
  %1582 = fmul fast float %1581, 0x3F70101020000000
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  br i1 %986, label %1584, label %1592

; <label>:1584                                    ; preds = %1566
  %1585 = fsub fast float 1.000000e+00, %1167
  %1586 = fmul fast float %1585, %970
  %1587 = fmul fast float %1585, %971
  %1588 = fmul fast float %1585, %972
  %1589 = fmul fast float %1585, %973
  %1590 = fmul fast float %1585, %974
  %1591 = fmul fast float %1585, %975
  br label %1592

; <label>:1592                                    ; preds = %1584, %1566
  %1593 = phi float [ %1586, %1584 ], [ %970, %1566 ]
  %1594 = phi float [ %1587, %1584 ], [ %971, %1566 ]
  %1595 = phi float [ %1588, %1584 ], [ %972, %1566 ]
  %1596 = phi float [ %1589, %1584 ], [ %973, %1566 ]
  %1597 = phi float [ %1590, %1584 ], [ %974, %1566 ]
  %1598 = phi float [ %1591, %1584 ], [ %975, %1566 ]
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 3
  %1602 = icmp eq i32 %1601, 3
  br i1 %1602, label %1681, label %1603

; <label>:1603                                    ; preds = %1592
  %1604 = and i32 %1600, 16
  %1605 = icmp ne i32 %1604, 0
  %1606 = select i1 %1605, float %1167, float 0.000000e+00
  %1607 = icmp eq i32 %1601, 0
  br i1 %1607, label %1608, label %1636

; <label>:1608                                    ; preds = %1603
  %1609 = and i32 %1600, 64
  %1610 = icmp ne i32 %1609, 0
  %1611 = select i1 %1610, float %1167, float 0.000000e+00
  %1612 = fsub fast float %1387, %1593
  %1613 = fsub fast float %1388, %1594
  %1614 = fsub fast float %1389, %1595
  %1615 = fmul fast float %1606, %1612
  %1616 = fmul fast float %1606, %1613
  %1617 = fmul fast float %1606, %1614
  %1618 = fadd fast float %1615, %1593
  %1619 = fadd fast float %1616, %1594
  %1620 = fadd fast float %1617, %1595
  %1621 = fsub fast float %1373, %979
  %1622 = fmul fast float %1606, %1621
  %1623 = fadd fast float %1622, %979
  %1624 = fsub fast float %1515, %1596
  %1625 = fsub fast float %1516, %1597
  %1626 = fsub fast float %1517, %1598
  %1627 = fmul fast float %1611, %1624
  %1628 = fmul fast float %1611, %1625
  %1629 = fmul fast float %1611, %1626
  %1630 = fadd fast float %1627, %1596
  %1631 = fadd fast float %1628, %1597
  %1632 = fadd fast float %1629, %1598
  %1633 = fsub fast float %1583, %984
  %1634 = fmul fast float %1606, %1633
  %1635 = fadd fast float %1634, %984
  br label %1681

; <label>:1636                                    ; preds = %1603
  %1637 = icmp eq i32 %1601, 1
  br i1 %1637, label %1638, label %1651

; <label>:1638                                    ; preds = %1636
  %1639 = fadd fast float %1387, -1.000000e+00
  %1640 = fadd fast float %1388, -1.000000e+00
  %1641 = fadd fast float %1389, -1.000000e+00
  %1642 = fmul fast float %1606, %1639
  %1643 = fmul fast float %1606, %1640
  %1644 = fmul fast float %1606, %1641
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fadd fast float %1643, 1.000000e+00
  %1647 = fadd fast float %1644, 1.000000e+00
  %1648 = fmul fast float %1645, %1593
  %1649 = fmul fast float %1646, %1594
  %1650 = fmul fast float %1647, %1595
  br label %1681

; <label>:1651                                    ; preds = %1636
  %1652 = icmp eq i32 %1601, 2
  br i1 %1652, label %1653, label %1681

; <label>:1653                                    ; preds = %1651
  %1654 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1655 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1656 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1657 = fadd fast float %1654, -5.000000e-01
  %1658 = fadd fast float %1655, -5.000000e-01
  %1659 = fadd fast float %1656, -5.000000e-01
  %1660 = fmul fast float %1657, %1606
  %1661 = fmul fast float %1658, %1606
  %1662 = fmul fast float %1659, %1606
  %1663 = fadd fast float %1660, 5.000000e-01
  %1664 = fadd fast float %1661, 5.000000e-01
  %1665 = fadd fast float %1662, 5.000000e-01
  %1666 = fmul fast float %1663, 2.000000e+00
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = fmul fast float %1667, %1593
  %1669 = fadd fast float %1668, %1666
  %1670 = fmul fast float %1669, %1593
  %1671 = fmul fast float %1664, 2.000000e+00
  %1672 = fsub fast float 1.000000e+00, %1671
  %1673 = fmul fast float %1672, %1594
  %1674 = fadd fast float %1673, %1671
  %1675 = fmul fast float %1674, %1594
  %1676 = fmul fast float %1665, 2.000000e+00
  %1677 = fsub fast float 1.000000e+00, %1676
  %1678 = fmul fast float %1677, %1595
  %1679 = fadd fast float %1678, %1676
  %1680 = fmul fast float %1679, %1595
  br label %1681

; <label>:1681                                    ; preds = %1653, %1651, %1638, %1608, %1592
  %1682 = phi float [ %1593, %1592 ], [ %1670, %1653 ], [ %1593, %1651 ], [ %1648, %1638 ], [ %1618, %1608 ]
  %1683 = phi float [ %1594, %1592 ], [ %1675, %1653 ], [ %1594, %1651 ], [ %1649, %1638 ], [ %1619, %1608 ]
  %1684 = phi float [ %1595, %1592 ], [ %1680, %1653 ], [ %1595, %1651 ], [ %1650, %1638 ], [ %1620, %1608 ]
  %1685 = phi float [ %1596, %1592 ], [ %1596, %1653 ], [ %1596, %1651 ], [ %1596, %1638 ], [ %1630, %1608 ]
  %1686 = phi float [ %1597, %1592 ], [ %1597, %1653 ], [ %1597, %1651 ], [ %1597, %1638 ], [ %1631, %1608 ]
  %1687 = phi float [ %1598, %1592 ], [ %1598, %1653 ], [ %1598, %1651 ], [ %1598, %1638 ], [ %1632, %1608 ]
  %1688 = phi float [ %979, %1592 ], [ %979, %1653 ], [ %979, %1651 ], [ %979, %1638 ], [ %1623, %1608 ]
  %1689 = phi float [ %984, %1592 ], [ %984, %1653 ], [ %984, %1651 ], [ %984, %1638 ], [ %1635, %1608 ]
  %1690 = and i32 %1600, 12
  %1691 = icmp eq i32 %1690, 12
  br i1 %1691, label %1798, label %1692

; <label>:1692                                    ; preds = %1681
  %1693 = and i32 %1600, 2097184
  %1694 = icmp eq i32 %1693, 2097184
  %1695 = select i1 %1694, float %1167, float 0.000000e+00
  %1696 = and i32 %1600, 4194336
  %1697 = icmp eq i32 %1696, 4194336
  %1698 = select i1 %1697, float %1167, float 0.000000e+00
  %1699 = and i32 %1600, 8388640
  %1700 = icmp eq i32 %1699, 8388640
  %1701 = select i1 %1700, float %1167, float 0.000000e+00
  %1702 = and i32 %1600, 2048
  %1703 = icmp ne i32 %1702, 0
  %1704 = select i1 %1703, float %1167, float 0.000000e+00
  %1705 = and i32 %1600, 8192
  %1706 = icmp ne i32 %1705, 0
  %1707 = select i1 %1706, float %1167, float 0.000000e+00
  %1708 = icmp eq i32 %1690, 0
  br i1 %1708, label %1709, label %1734

; <label>:1709                                    ; preds = %1692
  %1710 = fsub fast float %1468, %968
  %1711 = fsub fast float %1469, %969
  %1712 = fmul fast float %1695, %1710
  %1713 = fmul fast float %1695, %1711
  %1714 = fadd fast float %1712, %968
  %1715 = fadd fast float %1713, %969
  %1716 = fsub fast float %1470, %982
  %1717 = fmul fast float %1698, %1716
  %1718 = fadd fast float %1717, %982
  %1719 = fsub fast float %1467, %981
  %1720 = fmul fast float %1701, %1719
  %1721 = fadd fast float %1720, %981
  %1722 = fsub fast float %1570, %983
  %1723 = fmul fast float %1704, %1722
  %1724 = fadd fast float %1723, %983
  %1725 = fsub fast float %1567, %976
  %1726 = fsub fast float %1568, %977
  %1727 = fsub fast float %1569, %978
  %1728 = fmul fast float %1707, %1725
  %1729 = fmul fast float %1707, %1726
  %1730 = fmul fast float %1707, %1727
  %1731 = fadd fast float %1728, %976
  %1732 = fadd fast float %1729, %977
  %1733 = fadd fast float %1730, %978
  br label %1798

; <label>:1734                                    ; preds = %1692
  %1735 = icmp eq i32 %1690, 4
  br i1 %1735, label %1736, label %1776

; <label>:1736                                    ; preds = %1734
  %1737 = fmul fast float %1695, %1468
  %1738 = fmul fast float %1695, %1469
  %1739 = fadd fast float %1737, %968
  %1740 = fadd fast float %1738, %969
  %1741 = call float @dx.op.binary.f32(i32 36, float %982, float %1470)  ; FMin(a,b)
  %1742 = fsub fast float %1741, %982
  %1743 = fmul fast float %1742, %1698
  %1744 = fadd fast float %1743, %982
  %1745 = fadd fast float %1467, %981
  %1746 = fmul fast float %1745, 0x3FF337FAE0000000
  %1747 = fmul fast float %981, %981
  %1748 = fmul fast float %1467, %1467
  %1749 = fadd fast float %1748, %1747
  %1750 = fmul fast float %1749, 0x3FE5152B00000000
  %1751 = fmul fast float %981, 0xBFCC1F85E0000000
  %1752 = fmul fast float %1751, %1467
  %1753 = fadd fast float %1752, 0xBFE1363700000000
  %1754 = fadd fast float %1753, %1746
  %1755 = fsub fast float %1754, %1750
  %1756 = fmul fast float %1745, 0x3FBA6F0D00000000
  %1757 = fmul fast float %1749, 0x3FD0432880000000
  %1758 = fmul fast float %981, 0xBFEF110800000000
  %1759 = fmul fast float %1758, %1467
  %1760 = fadd fast float %1759, 1.000000e+00
  %1761 = fsub fast float %1760, %1756
  %1762 = fadd fast float %1761, %1757
  %1763 = fdiv fast float %1755, %1762
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = fsub fast float %1764, %981
  %1766 = fmul fast float %1765, %1701
  %1767 = fadd fast float %1766, %981
  %1768 = fmul fast float %1704, %1570
  %1769 = fadd fast float %1768, %983
  %1770 = fmul fast float %1707, %1567
  %1771 = fmul fast float %1707, %1568
  %1772 = fmul fast float %1707, %1569
  %1773 = fadd fast float %1770, %976
  %1774 = fadd fast float %1771, %977
  %1775 = fadd fast float %1772, %978
  br label %1798

; <label>:1776                                    ; preds = %1734
  %1777 = icmp eq i32 %1690, 8
  br i1 %1777, label %1778, label %1798

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1695, %1468
  %1780 = fmul fast float %1695, %1469
  %1781 = fadd fast float %1779, %968
  %1782 = fadd fast float %1780, %969
  %1783 = call float @dx.op.binary.f32(i32 36, float %982, float %1470)  ; FMin(a,b)
  %1784 = fsub fast float %1783, %982
  %1785 = fmul fast float %1784, %1698
  %1786 = fadd fast float %1785, %982
  %1787 = fsub fast float %1467, %981
  %1788 = fmul fast float %1701, %1787
  %1789 = fadd fast float %1788, %981
  %1790 = fmul fast float %1704, %1570
  %1791 = fadd fast float %1790, %983
  %1792 = fmul fast float %1707, %1567
  %1793 = fmul fast float %1707, %1568
  %1794 = fmul fast float %1707, %1569
  %1795 = fadd fast float %1792, %976
  %1796 = fadd fast float %1793, %977
  %1797 = fadd fast float %1794, %978
  br label %1798

; <label>:1798                                    ; preds = %1778, %1776, %1736, %1709, %1681, %1166, %985, %967
  %1799 = phi float [ %968, %1681 ], [ %968, %1166 ], [ %968, %967 ], [ %1781, %1778 ], [ %968, %1776 ], [ %1739, %1736 ], [ %1714, %1709 ], [ %968, %985 ]
  %1800 = phi float [ %969, %1681 ], [ %969, %1166 ], [ %969, %967 ], [ %1782, %1778 ], [ %969, %1776 ], [ %1740, %1736 ], [ %1715, %1709 ], [ %969, %985 ]
  %1801 = phi float [ %1682, %1681 ], [ %970, %1166 ], [ %970, %967 ], [ %1682, %1778 ], [ %1682, %1776 ], [ %1682, %1736 ], [ %1682, %1709 ], [ %970, %985 ]
  %1802 = phi float [ %1683, %1681 ], [ %971, %1166 ], [ %971, %967 ], [ %1683, %1778 ], [ %1683, %1776 ], [ %1683, %1736 ], [ %1683, %1709 ], [ %971, %985 ]
  %1803 = phi float [ %1684, %1681 ], [ %972, %1166 ], [ %972, %967 ], [ %1684, %1778 ], [ %1684, %1776 ], [ %1684, %1736 ], [ %1684, %1709 ], [ %972, %985 ]
  %1804 = phi float [ %1685, %1681 ], [ %973, %1166 ], [ %973, %967 ], [ %1685, %1778 ], [ %1685, %1776 ], [ %1685, %1736 ], [ %1685, %1709 ], [ %973, %985 ]
  %1805 = phi float [ %1686, %1681 ], [ %974, %1166 ], [ %974, %967 ], [ %1686, %1778 ], [ %1686, %1776 ], [ %1686, %1736 ], [ %1686, %1709 ], [ %974, %985 ]
  %1806 = phi float [ %1687, %1681 ], [ %975, %1166 ], [ %975, %967 ], [ %1687, %1778 ], [ %1687, %1776 ], [ %1687, %1736 ], [ %1687, %1709 ], [ %975, %985 ]
  %1807 = phi float [ %976, %1681 ], [ %976, %1166 ], [ %976, %967 ], [ %1795, %1778 ], [ %976, %1776 ], [ %1773, %1736 ], [ %1731, %1709 ], [ %976, %985 ]
  %1808 = phi float [ %977, %1681 ], [ %977, %1166 ], [ %977, %967 ], [ %1796, %1778 ], [ %977, %1776 ], [ %1774, %1736 ], [ %1732, %1709 ], [ %977, %985 ]
  %1809 = phi float [ %978, %1681 ], [ %978, %1166 ], [ %978, %967 ], [ %1797, %1778 ], [ %978, %1776 ], [ %1775, %1736 ], [ %1733, %1709 ], [ %978, %985 ]
  %1810 = phi float [ %1688, %1681 ], [ %979, %1166 ], [ %979, %967 ], [ %1688, %1778 ], [ %1688, %1776 ], [ %1688, %1736 ], [ %1688, %1709 ], [ %979, %985 ]
  %1811 = phi float [ %981, %1681 ], [ %981, %1166 ], [ %981, %967 ], [ %1789, %1778 ], [ %981, %1776 ], [ %1767, %1736 ], [ %1721, %1709 ], [ %981, %985 ]
  %1812 = phi float [ %982, %1681 ], [ %982, %1166 ], [ %982, %967 ], [ %1786, %1778 ], [ %982, %1776 ], [ %1744, %1736 ], [ %1718, %1709 ], [ %982, %985 ]
  %1813 = phi float [ %983, %1681 ], [ %983, %1166 ], [ %983, %967 ], [ %1791, %1778 ], [ %983, %1776 ], [ %1769, %1736 ], [ %1724, %1709 ], [ %983, %985 ]
  %1814 = phi float [ %1689, %1681 ], [ %984, %1166 ], [ %984, %967 ], [ %1689, %1778 ], [ %1689, %1776 ], [ %1689, %1736 ], [ %1689, %1709 ], [ %984, %985 ]
  br i1 %394, label %2628, label %1815

; <label>:1815                                    ; preds = %1798
  %1816 = icmp ult i32 %447, 3
  %1817 = add i32 %28, 56
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = add i32 %28, 60
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = or i32 %1822, %1819
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %2628, label %1825

; <label>:1825                                    ; preds = %1815
  %1826 = and i32 %1819, 262144
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %33, float 1.000000e+00
  %1829 = select i1 %1827, float %34, float 0.000000e+00
  %1830 = select i1 %1827, float %35, float 0.000000e+00
  %1831 = select i1 %1827, float %36, float 1.000000e+00
  %1832 = select i1 %1827, float %37, float %65
  %1833 = select i1 %1827, float %38, float %66
  %1834 = add i32 %28, 316
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = lshr i32 %1836, 16
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = fmul fast float %1838, 0x3F50624DE0000000
  %1840 = add i32 %28, 120
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = lshr i32 %1842, 16
  %1844 = and i32 %1843, 255
  %1845 = lshr i32 %1842, 24
  %1846 = add i32 %28, 324
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 65535
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = lshr i32 %1848, 16
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = add i32 %28, 64
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = lshr i32 %1855, 22
  %1857 = shl nuw nsw i32 %1856, 5
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = shl i32 %1855, 4
  %1860 = and i32 %1859, 32752
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = lshr i32 %1855, 7
  %1863 = and i32 %1862, 32752
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 3
  %1867 = fmul fast float %1866, 1.000000e+03
  %1868 = fmul fast float %344, %1867
  %1869 = call float @dx.op.unary.f32(i32 22, float %1868)  ; Frc(value)
  %1870 = fadd fast float %1869, %334
  %1871 = fmul fast float %345, %1867
  %1872 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1873 = fadd fast float %1872, %336
  %1874 = fmul fast float %1839, %1867
  %1875 = call float @dx.op.unary.f32(i32 22, float %1874)  ; Frc(value)
  %1876 = fmul fast float %1875, 0x401921FB60000000
  %1877 = fadd fast float %1876, %1858
  %1878 = call float @dx.op.unary.f32(i32 13, float %1877)  ; Sin(value)
  %1879 = call float @dx.op.unary.f32(i32 12, float %1877)  ; Cos(value)
  %1880 = fsub fast float -0.000000e+00, %1878
  %1881 = fadd fast float %1832, -5.000000e-01
  %1882 = fadd fast float %1833, -5.000000e-01
  %1883 = fmul fast float %1850, %1881
  %1884 = fmul fast float %1852, %1882
  %1885 = fadd fast float %1883, 5.000000e-01
  %1886 = fadd fast float %1884, 5.000000e-01
  %1887 = fmul fast float %1861, %1885
  %1888 = fmul fast float %1864, %1886
  %1889 = fmul fast float %1879, %1887
  %1890 = call float @dx.op.tertiary.f32(i32 46, float %1880, float %1888, float %1889)  ; FMad(a,b,c)
  %1891 = fmul fast float %1878, %1887
  %1892 = call float @dx.op.tertiary.f32(i32 46, float %1879, float %1888, float %1891)  ; FMad(a,b,c)
  %1893 = fadd fast float %1870, %1890
  %1894 = fadd fast float %1873, %1892
  %1895 = icmp ugt i32 %1844, 1
  %1896 = icmp ugt i32 %1842, 33554431
  %1897 = or i1 %1896, %1895
  br i1 %1897, label %1898, label %1923

; <label>:1898                                    ; preds = %1825
  %1899 = add i32 %28, 260
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = lshr i32 %1901, 16
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = fmul fast float %1866, %1903
  %1905 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1906 = mul nuw nsw i32 %1844, %1845
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1905, %1907
  %1909 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1910 = fptoui float %1909 to i32
  %1911 = urem i32 %1910, %1844
  %1912 = udiv i32 %1910, %1845
  %1913 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1914 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1915 = uitofp i32 %1911 to float
  %1916 = uitofp i32 %1912 to float
  %1917 = fadd fast float %1913, %1915
  %1918 = fadd fast float %1914, %1916
  %1919 = uitofp i32 %1844 to float
  %1920 = uitofp i32 %1845 to float
  %1921 = fdiv fast float %1917, %1919
  %1922 = fdiv fast float %1918, %1920
  br label %1923

; <label>:1923                                    ; preds = %1898, %1825
  %1924 = phi float [ %1921, %1898 ], [ %1893, %1825 ]
  %1925 = phi float [ %1922, %1898 ], [ %1894, %1825 ]
  %1926 = and i32 %1819, 256
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1974, label %1928

; <label>:1928                                    ; preds = %1923
  %1929 = add i32 %28, 448
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1933, %dx.types.Handle %74, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = add i32 %28, 132
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = shl i32 %1938, 4
  %1940 = and i32 %1939, 32752
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = lshr i32 %1938, 7
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fsub fast float 1.000000e+00, %443
  %1946 = call float @dx.op.binary.f32(i32 35, float %1945, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1947 = bitcast float %443 to i32
  %1948 = sitofp i32 %1947 to float
  %1949 = fadd fast float %1948, 0xC1CFBF8940000000
  %1950 = fmul fast float %1944, %1949
  %1951 = fadd fast float %1950, 0x41CFBF8940000000
  %1952 = fptosi float %1951 to i32
  %1953 = bitcast i32 %1952 to float
  %1954 = bitcast float %1946 to i32
  %1955 = sitofp i32 %1954 to float
  %1956 = fadd fast float %1955, 0xC1CFBF8940000000
  %1957 = fmul fast float %1956, %1944
  %1958 = fadd fast float %1957, 0x41CFBF8940000000
  %1959 = fptosi float %1958 to i32
  %1960 = bitcast i32 %1959 to float
  %1961 = fmul fast float %1953, %1941
  %1962 = fmul fast float %1960, %1941
  %1963 = fsub fast float %1946, %1961
  %1964 = fadd fast float %1962, %1946
  %1965 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1966 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1967 = fsub fast float %1935, %1965
  %1968 = fsub fast float %1966, %1965
  %1969 = bitcast float %1968 to i32
  %1970 = sub nsw i32 2129859010, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1971, %1967
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  br label %1974

; <label>:1974                                    ; preds = %1928, %1923
  %1975 = phi float [ %1973, %1928 ], [ %443, %1923 ]
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 128
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1996, label %1980

; <label>:1980                                    ; preds = %1974
  %1981 = add i32 %28, 432
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = add i32 %1983, 0
  %1985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1985, %dx.types.Handle %74, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 524288
  %1991 = icmp ne i32 %1990, 0
  %1992 = fcmp fast ogt float %1987, 0x3FE0101020000000
  %1993 = select i1 %1992, float 1.000000e+00, float 0.000000e+00
  %1994 = select i1 %1991, float %1993, float %1987
  %1995 = fmul fast float %1994, %1975
  br label %1996

; <label>:1996                                    ; preds = %1980, %1974
  %1997 = phi float [ %1995, %1980 ], [ %1975, %1974 ]
  %1998 = fcmp fast ult float %1997, 0x3F70101020000000
  br i1 %1998, label %2628, label %1999

; <label>:1999                                    ; preds = %1996
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = and i32 %2001, 16
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2202, label %2004

; <label>:2004                                    ; preds = %1999
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %28, 384
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2011, %dx.types.Handle %73, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = extractvalue %dx.types.ResRet.f32 %2012, 3
  %2017 = and i32 %2006, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = lshr i32 %2006, 8
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2016, %2018
  %2023 = fadd fast float %2022, %2021
  %2024 = fmul fast float %2023, 0x3F70101000000000
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 512
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2037, label %2029

; <label>:2029                                    ; preds = %2004
  %2030 = add i32 %28, 468
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2034, %dx.types.Handle %74, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  br label %2037

; <label>:2037                                    ; preds = %2029, %2004
  %2038 = phi float [ %2036, %2029 ], [ 1.000000e+00, %2004 ]
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 33554432
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2149, label %2043

; <label>:2043                                    ; preds = %2037
  %2044 = add i32 %28, 256
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 65535
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = lshr i32 %2046, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = add i32 %28, 260
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 65535
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 24
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = and i32 %2057, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = lshr i32 %2057, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = lshr i32 %2057, 16
  %2069 = and i32 %2068, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = add i32 %28, 252
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = lshr i32 %2074, 24
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2076, 0x3F70101020000000
  %2078 = and i32 %2074, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = lshr i32 %2074, 8
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2083, 0x3F70101020000000
  %2085 = lshr i32 %2074, 16
  %2086 = and i32 %2085, 255
  %2087 = uitofp i32 %2086 to float
  %2088 = fmul fast float %2087, 0x3F70101020000000
  %2089 = bitcast float %2013 to i32
  %2090 = ashr i32 %2089, 1
  %2091 = sub nsw i32 1597463174, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2013, 5.000000e-01
  %2094 = fmul fast float %2092, %2092
  %2095 = fmul fast float %2094, %2093
  %2096 = fsub fast float 1.500000e+00, %2095
  %2097 = fmul fast float %2092, %2013
  %2098 = fmul fast float %2097, %2096
  %2099 = bitcast float %2014 to i32
  %2100 = ashr i32 %2099, 1
  %2101 = sub nsw i32 1597463174, %2100
  %2102 = bitcast i32 %2101 to float
  %2103 = fmul fast float %2014, 5.000000e-01
  %2104 = fmul fast float %2102, %2102
  %2105 = fmul fast float %2104, %2103
  %2106 = fsub fast float 1.500000e+00, %2105
  %2107 = fmul fast float %2102, %2014
  %2108 = fmul fast float %2107, %2106
  %2109 = bitcast float %2015 to i32
  %2110 = ashr i32 %2109, 1
  %2111 = sub nsw i32 1597463174, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = fmul fast float %2015, 5.000000e-01
  %2114 = fmul fast float %2112, %2112
  %2115 = fmul fast float %2114, %2113
  %2116 = fsub fast float 1.500000e+00, %2115
  %2117 = fmul fast float %2112, %2015
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float %2098, %2080
  %2120 = fsub fast float %2108, %2084
  %2121 = fsub fast float %2118, %2088
  %2122 = fmul fast float %2119, %2048
  %2123 = fmul fast float %2120, %2050
  %2124 = fmul fast float %2121, %2055
  %2125 = fadd fast float %2122, %2063
  %2126 = fadd fast float %2123, %2067
  %2127 = fadd fast float %2124, %2071
  %2128 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = fmul fast float %2128, %2128
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fsub fast float %2131, %2013
  %2135 = fsub fast float %2132, %2014
  %2136 = fsub fast float %2133, %2015
  %2137 = fmul fast float %2134, %2038
  %2138 = fmul fast float %2135, %2038
  %2139 = fmul fast float %2136, %2038
  %2140 = fadd fast float %2137, %2013
  %2141 = fadd fast float %2138, %2014
  %2142 = fadd fast float %2139, %2015
  %2143 = fadd fast float %2060, %2024
  %2144 = fsub fast float %2143, %2077
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fsub fast float %2145, %2024
  %2147 = fmul fast float %2146, %2038
  %2148 = fadd fast float %2147, %2024
  br label %2202

; <label>:2149                                    ; preds = %2037
  %2150 = and i32 %2040, 134217728
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2186, label %2152

; <label>:2152                                    ; preds = %2149
  %2153 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %2154 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fmul fast float %2156, %2038
  %2160 = fmul fast float %2157, %2038
  %2161 = fmul fast float %2158, %2038
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = call float @dx.op.unary.f32(i32 24, float %2013)  ; Sqrt(value)
  %2166 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2167 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2168 = fmul fast float %2162, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2165
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2165
  %2173 = fmul fast float %2163, 2.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2166
  %2176 = fadd fast float %2175, %2173
  %2177 = fmul fast float %2176, %2166
  %2178 = fmul fast float %2164, 2.000000e+00
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fmul fast float %2179, %2167
  %2181 = fadd fast float %2180, %2178
  %2182 = fmul fast float %2181, %2167
  %2183 = fmul fast float %2172, %2172
  %2184 = fmul fast float %2177, %2177
  %2185 = fmul fast float %2182, %2182
  br label %2202

; <label>:2186                                    ; preds = %2149
  %2187 = fmul fast float %321, %321
  %2188 = fmul fast float %325, %325
  %2189 = fmul fast float %329, %329
  %2190 = fadd fast float %2187, -1.000000e+00
  %2191 = fadd fast float %2188, -1.000000e+00
  %2192 = fadd fast float %2189, -1.000000e+00
  %2193 = fmul fast float %2038, %2190
  %2194 = fmul fast float %2038, %2191
  %2195 = fmul fast float %2038, %2192
  %2196 = fadd fast float %2193, 1.000000e+00
  %2197 = fadd fast float %2194, 1.000000e+00
  %2198 = fadd fast float %2195, 1.000000e+00
  %2199 = fmul fast float %2196, %2013
  %2200 = fmul fast float %2197, %2014
  %2201 = fmul fast float %2198, %2015
  br label %2202

; <label>:2202                                    ; preds = %2186, %2152, %2043, %1999
  %2203 = phi float [ %2148, %2043 ], [ %2024, %2152 ], [ %2024, %2186 ], [ 0x3FA23C0BE0000000, %1999 ]
  %2204 = phi float [ %2140, %2043 ], [ %2183, %2152 ], [ %2199, %2186 ], [ 1.000000e+00, %1999 ]
  %2205 = phi float [ %2141, %2043 ], [ %2184, %2152 ], [ %2200, %2186 ], [ 1.000000e+00, %1999 ]
  %2206 = phi float [ %2142, %2043 ], [ %2185, %2152 ], [ %2201, %2186 ], [ 1.000000e+00, %1999 ]
  %2207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.i32 %2207, 1
  %2209 = and i32 %2208, 1
  %2210 = icmp ne i32 %2209, 0
  %2211 = add i32 %28, 356
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 32
  %2215 = icmp ne i32 %2214, 0
  %2216 = and i1 %2210, %2215
  %2217 = select i1 %2216, float 1.000000e+00, float %2204
  %2218 = select i1 %2216, float 0x3FD3333340000000, float %2205
  %2219 = select i1 %2216, float 0x3FD3333340000000, float %2206
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 32
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2296, label %2224

; <label>:2224                                    ; preds = %2202
  %2225 = add i32 %28, 124
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %28, 400
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %73, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.ResRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.ResRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.ResRet.f32 %2233, 3
  %2238 = and i32 %2227, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = lshr i32 %2227, 8
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = lshr i32 %2227, 16
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101000000000
  %2247 = fmul fast float %2234, %2239
  %2248 = fadd fast float %2247, %2242
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = fadd fast float %2235, -5.000000e-01
  %2251 = fadd fast float %2237, -5.000000e-01
  %2252 = fmul fast float %2250, %2246
  %2253 = fmul fast float %2251, %2246
  %2254 = fadd fast float %2252, 5.000000e-01
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fmul fast float %2254, 2.000000e+00
  %2257 = fadd fast float %2256, -1.000000e+00
  %2258 = fmul fast float %2255, 2.000000e+00
  %2259 = fadd fast float %2258, -1.000000e+00
  %2260 = fadd fast float %2257, %2259
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = fsub fast float %2257, %2259
  %2263 = fmul fast float %2262, 5.000000e-01
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = call float @dx.op.unary.f32(i32 6, float %2263)  ; FAbs(value)
  %2267 = fsub fast float %2265, %2266
  %2268 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2263, float %2267, float %2261, float %2263, float %2267)  ; Dot3(ax,ay,az,bx,by,bz)
  %2269 = call float @dx.op.unary.f32(i32 25, float %2268)  ; Rsqrt(value)
  %2270 = fmul fast float %2261, %2269
  %2271 = fmul fast float %2263, %2269
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 67108864
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2292, label %2276

; <label>:2276                                    ; preds = %2224
  %2277 = add i32 %28, 312
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 65535
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 65535
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = lshr i32 %2279, 16
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = fsub fast float %2249, %2287
  %2289 = fmul fast float %2288, %2281
  %2290 = fadd fast float %2289, %2285
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  br label %2292

; <label>:2292                                    ; preds = %2276, %2224
  %2293 = phi float [ %2291, %2276 ], [ %2249, %2224 ]
  %2294 = call float @dx.op.dot2.f32(i32 54, float %2270, float %2271, float %1828, float %1829)  ; Dot2(ax,ay,bx,by)
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2270, float %2271, float %1830, float %1831)  ; Dot2(ax,ay,bx,by)
  br label %2296

; <label>:2296                                    ; preds = %2292, %2202
  %2297 = phi float [ %2293, %2292 ], [ 0x3FD6666660000000, %2202 ]
  %2298 = phi float [ %2294, %2292 ], [ 0.000000e+00, %2202 ]
  %2299 = phi float [ %2295, %2292 ], [ 0.000000e+00, %2202 ]
  %2300 = phi float [ %2236, %2292 ], [ 1.000000e+00, %2202 ]
  %2301 = add i32 %28, 192
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = lshr i32 %2303, 22
  %2305 = shl nuw nsw i32 %2304, 5
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 64
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2344, label %2311

; <label>:2311                                    ; preds = %2296
  %2312 = add i32 %28, 416
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = add i32 %2314, 0
  %2316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 131072
  %2320 = icmp eq i32 %2319, 0
  %2321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2316, %dx.types.Handle %73, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = fmul fast float %2322, %309
  %2326 = fmul fast float %2323, %312
  %2327 = fmul fast float %2324, %315
  br i1 %2320, label %2334, label %2328

; <label>:2328                                    ; preds = %2311
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = fmul fast float %2330, %2325
  %2332 = fmul fast float %2330, %2326
  %2333 = fmul fast float %2330, %2327
  br label %2334

; <label>:2334                                    ; preds = %2328, %2311
  %2335 = phi float [ %2331, %2328 ], [ %2325, %2311 ]
  %2336 = phi float [ %2332, %2328 ], [ %2326, %2311 ]
  %2337 = phi float [ %2333, %2328 ], [ %2327, %2311 ]
  %2338 = fmul fast float %2335, %2306
  %2339 = select i1 %208, float %2338, float %2335
  %2340 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2336, float %2337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2341 = select i1 %208, float 0.000000e+00, float %2335
  %2342 = select i1 %208, float %2340, float %2336
  %2343 = select i1 %208, float 0.000000e+00, float %2337
  br label %2344

; <label>:2344                                    ; preds = %2334, %2296
  %2345 = phi float [ %2341, %2334 ], [ 0.000000e+00, %2296 ]
  %2346 = phi float [ %2342, %2334 ], [ 0.000000e+00, %2296 ]
  %2347 = phi float [ %2343, %2334 ], [ 0.000000e+00, %2296 ]
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 10240
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2396, label %2352

; <label>:2352                                    ; preds = %2344
  %2353 = add i32 %28, 484
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2355, 0
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2357, %dx.types.Handle %74, float %1924, float %1925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 3
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 1048576
  %2364 = icmp ne i32 %2363, 0
  %2365 = and i32 %2362, 8192
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2382, label %2367

; <label>:2367                                    ; preds = %2352
  %2368 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2369 = select i1 %2364, float %2368, float %2359
  %2370 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2371 = select i1 %2364, float %2370, float %2359
  %2372 = add i32 %28, 128
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = lshr i32 %2374, 16
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F80101020000000
  %2379 = fmul fast float %2378, %2371
  %2380 = fmul fast float %2378, %2359
  %2381 = fmul fast float %2378, %2369
  br label %2382

; <label>:2382                                    ; preds = %2367, %2352
  %2383 = phi float [ %2379, %2367 ], [ 0.000000e+00, %2352 ]
  %2384 = phi float [ %2380, %2367 ], [ 0.000000e+00, %2352 ]
  %2385 = phi float [ %2381, %2367 ], [ 0.000000e+00, %2352 ]
  %2386 = and i32 %2362, 2048
  %2387 = icmp eq i32 %2386, 0
  br i1 %2387, label %2396, label %2388

; <label>:2388                                    ; preds = %2382
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = shl i32 %2390, 4
  %2392 = and i32 %2391, 32752
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = fmul fast float %2393, %2360
  %2395 = call float @dx.op.binary.f32(i32 35, float %2394, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2396

; <label>:2396                                    ; preds = %2388, %2382, %2344
  %2397 = phi float [ %2383, %2388 ], [ %2383, %2382 ], [ 0.000000e+00, %2344 ]
  %2398 = phi float [ %2384, %2388 ], [ %2384, %2382 ], [ 0.000000e+00, %2344 ]
  %2399 = phi float [ %2385, %2388 ], [ %2385, %2382 ], [ 0.000000e+00, %2344 ]
  %2400 = phi float [ %2395, %2388 ], [ 0x3F70101020000000, %2382 ], [ 0x3F70101020000000, %2344 ]
  %2401 = add i32 %28, 128
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = lshr i32 %2403, 8
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2218, float %2219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2410 = fmul fast float %2408, %2409
  %2411 = fadd fast float %2410, %2405
  %2412 = fmul fast float %2411, 0x3F70101020000000
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  br i1 %1816, label %2414, label %2422

; <label>:2414                                    ; preds = %2396
  %2415 = fsub fast float 1.000000e+00, %1997
  %2416 = fmul fast float %2415, %1801
  %2417 = fmul fast float %2415, %1802
  %2418 = fmul fast float %2415, %1803
  %2419 = fmul fast float %2415, %1804
  %2420 = fmul fast float %2415, %1805
  %2421 = fmul fast float %2415, %1806
  br label %2422

; <label>:2422                                    ; preds = %2414, %2396
  %2423 = phi float [ %2416, %2414 ], [ %1801, %2396 ]
  %2424 = phi float [ %2417, %2414 ], [ %1802, %2396 ]
  %2425 = phi float [ %2418, %2414 ], [ %1803, %2396 ]
  %2426 = phi float [ %2419, %2414 ], [ %1804, %2396 ]
  %2427 = phi float [ %2420, %2414 ], [ %1805, %2396 ]
  %2428 = phi float [ %2421, %2414 ], [ %1806, %2396 ]
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 3
  %2432 = icmp eq i32 %2431, 3
  br i1 %2432, label %2511, label %2433

; <label>:2433                                    ; preds = %2422
  %2434 = and i32 %2430, 16
  %2435 = icmp ne i32 %2434, 0
  %2436 = select i1 %2435, float %1997, float 0.000000e+00
  %2437 = icmp eq i32 %2431, 0
  br i1 %2437, label %2438, label %2466

; <label>:2438                                    ; preds = %2433
  %2439 = and i32 %2430, 64
  %2440 = icmp ne i32 %2439, 0
  %2441 = select i1 %2440, float %1997, float 0.000000e+00
  %2442 = fsub fast float %2217, %2423
  %2443 = fsub fast float %2218, %2424
  %2444 = fsub fast float %2219, %2425
  %2445 = fmul fast float %2436, %2442
  %2446 = fmul fast float %2436, %2443
  %2447 = fmul fast float %2436, %2444
  %2448 = fadd fast float %2445, %2423
  %2449 = fadd fast float %2446, %2424
  %2450 = fadd fast float %2447, %2425
  %2451 = fsub fast float %2203, %1810
  %2452 = fmul fast float %2436, %2451
  %2453 = fadd fast float %2452, %1810
  %2454 = fsub fast float %2345, %2426
  %2455 = fsub fast float %2346, %2427
  %2456 = fsub fast float %2347, %2428
  %2457 = fmul fast float %2441, %2454
  %2458 = fmul fast float %2441, %2455
  %2459 = fmul fast float %2441, %2456
  %2460 = fadd fast float %2457, %2426
  %2461 = fadd fast float %2458, %2427
  %2462 = fadd fast float %2459, %2428
  %2463 = fsub fast float %2413, %1814
  %2464 = fmul fast float %2436, %2463
  %2465 = fadd fast float %2464, %1814
  br label %2511

; <label>:2466                                    ; preds = %2433
  %2467 = icmp eq i32 %2431, 1
  br i1 %2467, label %2468, label %2481

; <label>:2468                                    ; preds = %2466
  %2469 = fadd fast float %2217, -1.000000e+00
  %2470 = fadd fast float %2218, -1.000000e+00
  %2471 = fadd fast float %2219, -1.000000e+00
  %2472 = fmul fast float %2436, %2469
  %2473 = fmul fast float %2436, %2470
  %2474 = fmul fast float %2436, %2471
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fadd fast float %2473, 1.000000e+00
  %2477 = fadd fast float %2474, 1.000000e+00
  %2478 = fmul fast float %2475, %2423
  %2479 = fmul fast float %2476, %2424
  %2480 = fmul fast float %2477, %2425
  br label %2511

; <label>:2481                                    ; preds = %2466
  %2482 = icmp eq i32 %2431, 2
  br i1 %2482, label %2483, label %2511

; <label>:2483                                    ; preds = %2481
  %2484 = call float @dx.op.unary.f32(i32 24, float %2217)  ; Sqrt(value)
  %2485 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2486 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fadd fast float %2485, -5.000000e-01
  %2489 = fadd fast float %2486, -5.000000e-01
  %2490 = fmul fast float %2487, %2436
  %2491 = fmul fast float %2488, %2436
  %2492 = fmul fast float %2489, %2436
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = fadd fast float %2492, 5.000000e-01
  %2496 = fmul fast float %2493, 2.000000e+00
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = fmul fast float %2497, %2423
  %2499 = fadd fast float %2498, %2496
  %2500 = fmul fast float %2499, %2423
  %2501 = fmul fast float %2494, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2424
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2424
  %2506 = fmul fast float %2495, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2425
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2425
  br label %2511

; <label>:2511                                    ; preds = %2483, %2481, %2468, %2438, %2422
  %2512 = phi float [ %2423, %2422 ], [ %2500, %2483 ], [ %2423, %2481 ], [ %2478, %2468 ], [ %2448, %2438 ]
  %2513 = phi float [ %2424, %2422 ], [ %2505, %2483 ], [ %2424, %2481 ], [ %2479, %2468 ], [ %2449, %2438 ]
  %2514 = phi float [ %2425, %2422 ], [ %2510, %2483 ], [ %2425, %2481 ], [ %2480, %2468 ], [ %2450, %2438 ]
  %2515 = phi float [ %2426, %2422 ], [ %2426, %2483 ], [ %2426, %2481 ], [ %2426, %2468 ], [ %2460, %2438 ]
  %2516 = phi float [ %2427, %2422 ], [ %2427, %2483 ], [ %2427, %2481 ], [ %2427, %2468 ], [ %2461, %2438 ]
  %2517 = phi float [ %2428, %2422 ], [ %2428, %2483 ], [ %2428, %2481 ], [ %2428, %2468 ], [ %2462, %2438 ]
  %2518 = phi float [ %1810, %2422 ], [ %1810, %2483 ], [ %1810, %2481 ], [ %1810, %2468 ], [ %2453, %2438 ]
  %2519 = phi float [ %1814, %2422 ], [ %1814, %2483 ], [ %1814, %2481 ], [ %1814, %2468 ], [ %2465, %2438 ]
  %2520 = and i32 %2430, 12
  %2521 = icmp eq i32 %2520, 12
  br i1 %2521, label %2628, label %2522

; <label>:2522                                    ; preds = %2511
  %2523 = and i32 %2430, 2097184
  %2524 = icmp eq i32 %2523, 2097184
  %2525 = select i1 %2524, float %1997, float 0.000000e+00
  %2526 = and i32 %2430, 4194336
  %2527 = icmp eq i32 %2526, 4194336
  %2528 = select i1 %2527, float %1997, float 0.000000e+00
  %2529 = and i32 %2430, 8388640
  %2530 = icmp eq i32 %2529, 8388640
  %2531 = select i1 %2530, float %1997, float 0.000000e+00
  %2532 = and i32 %2430, 2048
  %2533 = icmp ne i32 %2532, 0
  %2534 = select i1 %2533, float %1997, float 0.000000e+00
  %2535 = and i32 %2430, 8192
  %2536 = icmp ne i32 %2535, 0
  %2537 = select i1 %2536, float %1997, float 0.000000e+00
  %2538 = icmp eq i32 %2520, 0
  br i1 %2538, label %2539, label %2564

; <label>:2539                                    ; preds = %2522
  %2540 = fsub fast float %2298, %1799
  %2541 = fsub fast float %2299, %1800
  %2542 = fmul fast float %2525, %2540
  %2543 = fmul fast float %2525, %2541
  %2544 = fadd fast float %2542, %1799
  %2545 = fadd fast float %2543, %1800
  %2546 = fsub fast float %2300, %1812
  %2547 = fmul fast float %2528, %2546
  %2548 = fadd fast float %2547, %1812
  %2549 = fsub fast float %2297, %1811
  %2550 = fmul fast float %2531, %2549
  %2551 = fadd fast float %2550, %1811
  %2552 = fsub fast float %2400, %1813
  %2553 = fmul fast float %2534, %2552
  %2554 = fadd fast float %2553, %1813
  %2555 = fsub fast float %2397, %1807
  %2556 = fsub fast float %2398, %1808
  %2557 = fsub fast float %2399, %1809
  %2558 = fmul fast float %2537, %2555
  %2559 = fmul fast float %2537, %2556
  %2560 = fmul fast float %2537, %2557
  %2561 = fadd fast float %2558, %1807
  %2562 = fadd fast float %2559, %1808
  %2563 = fadd fast float %2560, %1809
  br label %2628

; <label>:2564                                    ; preds = %2522
  %2565 = icmp eq i32 %2520, 4
  br i1 %2565, label %2566, label %2606

; <label>:2566                                    ; preds = %2564
  %2567 = fmul fast float %2525, %2298
  %2568 = fmul fast float %2525, %2299
  %2569 = fadd fast float %2567, %1799
  %2570 = fadd fast float %2568, %1800
  %2571 = call float @dx.op.binary.f32(i32 36, float %1812, float %2300)  ; FMin(a,b)
  %2572 = fsub fast float %2571, %1812
  %2573 = fmul fast float %2572, %2528
  %2574 = fadd fast float %2573, %1812
  %2575 = fadd fast float %2297, %1811
  %2576 = fmul fast float %2575, 0x3FF337FAE0000000
  %2577 = fmul fast float %1811, %1811
  %2578 = fmul fast float %2297, %2297
  %2579 = fadd fast float %2578, %2577
  %2580 = fmul fast float %2579, 0x3FE5152B00000000
  %2581 = fmul fast float %1811, 0xBFCC1F85E0000000
  %2582 = fmul fast float %2581, %2297
  %2583 = fadd fast float %2582, 0xBFE1363700000000
  %2584 = fadd fast float %2583, %2576
  %2585 = fsub fast float %2584, %2580
  %2586 = fmul fast float %2575, 0x3FBA6F0D00000000
  %2587 = fmul fast float %2579, 0x3FD0432880000000
  %2588 = fmul fast float %1811, 0xBFEF110800000000
  %2589 = fmul fast float %2588, %2297
  %2590 = fadd fast float %2589, 1.000000e+00
  %2591 = fsub fast float %2590, %2586
  %2592 = fadd fast float %2591, %2587
  %2593 = fdiv fast float %2585, %2592
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = fsub fast float %2594, %1811
  %2596 = fmul fast float %2595, %2531
  %2597 = fadd fast float %2596, %1811
  %2598 = fmul fast float %2534, %2400
  %2599 = fadd fast float %2598, %1813
  %2600 = fmul fast float %2537, %2397
  %2601 = fmul fast float %2537, %2398
  %2602 = fmul fast float %2537, %2399
  %2603 = fadd fast float %2600, %1807
  %2604 = fadd fast float %2601, %1808
  %2605 = fadd fast float %2602, %1809
  br label %2628

; <label>:2606                                    ; preds = %2564
  %2607 = icmp eq i32 %2520, 8
  br i1 %2607, label %2608, label %2628

; <label>:2608                                    ; preds = %2606
  %2609 = fmul fast float %2525, %2298
  %2610 = fmul fast float %2525, %2299
  %2611 = fadd fast float %2609, %1799
  %2612 = fadd fast float %2610, %1800
  %2613 = call float @dx.op.binary.f32(i32 36, float %1812, float %2300)  ; FMin(a,b)
  %2614 = fsub fast float %2613, %1812
  %2615 = fmul fast float %2614, %2528
  %2616 = fadd fast float %2615, %1812
  %2617 = fsub fast float %2297, %1811
  %2618 = fmul fast float %2531, %2617
  %2619 = fadd fast float %2618, %1811
  %2620 = fmul fast float %2534, %2400
  %2621 = fadd fast float %2620, %1813
  %2622 = fmul fast float %2537, %2397
  %2623 = fmul fast float %2537, %2398
  %2624 = fmul fast float %2537, %2399
  %2625 = fadd fast float %2622, %1807
  %2626 = fadd fast float %2623, %1808
  %2627 = fadd fast float %2624, %1809
  br label %2628

; <label>:2628                                    ; preds = %2608, %2606, %2566, %2539, %2511, %1996, %1815, %1798
  %2629 = phi float [ %1799, %2511 ], [ %1799, %1996 ], [ %1799, %1798 ], [ %2611, %2608 ], [ %1799, %2606 ], [ %2569, %2566 ], [ %2544, %2539 ], [ %1799, %1815 ]
  %2630 = phi float [ %1800, %2511 ], [ %1800, %1996 ], [ %1800, %1798 ], [ %2612, %2608 ], [ %1800, %2606 ], [ %2570, %2566 ], [ %2545, %2539 ], [ %1800, %1815 ]
  %2631 = phi float [ %2512, %2511 ], [ %1801, %1996 ], [ %1801, %1798 ], [ %2512, %2608 ], [ %2512, %2606 ], [ %2512, %2566 ], [ %2512, %2539 ], [ %1801, %1815 ]
  %2632 = phi float [ %2513, %2511 ], [ %1802, %1996 ], [ %1802, %1798 ], [ %2513, %2608 ], [ %2513, %2606 ], [ %2513, %2566 ], [ %2513, %2539 ], [ %1802, %1815 ]
  %2633 = phi float [ %2514, %2511 ], [ %1803, %1996 ], [ %1803, %1798 ], [ %2514, %2608 ], [ %2514, %2606 ], [ %2514, %2566 ], [ %2514, %2539 ], [ %1803, %1815 ]
  %2634 = phi float [ %2515, %2511 ], [ %1804, %1996 ], [ %1804, %1798 ], [ %2515, %2608 ], [ %2515, %2606 ], [ %2515, %2566 ], [ %2515, %2539 ], [ %1804, %1815 ]
  %2635 = phi float [ %2516, %2511 ], [ %1805, %1996 ], [ %1805, %1798 ], [ %2516, %2608 ], [ %2516, %2606 ], [ %2516, %2566 ], [ %2516, %2539 ], [ %1805, %1815 ]
  %2636 = phi float [ %2517, %2511 ], [ %1806, %1996 ], [ %1806, %1798 ], [ %2517, %2608 ], [ %2517, %2606 ], [ %2517, %2566 ], [ %2517, %2539 ], [ %1806, %1815 ]
  %2637 = phi float [ %1807, %2511 ], [ %1807, %1996 ], [ %1807, %1798 ], [ %2625, %2608 ], [ %1807, %2606 ], [ %2603, %2566 ], [ %2561, %2539 ], [ %1807, %1815 ]
  %2638 = phi float [ %1808, %2511 ], [ %1808, %1996 ], [ %1808, %1798 ], [ %2626, %2608 ], [ %1808, %2606 ], [ %2604, %2566 ], [ %2562, %2539 ], [ %1808, %1815 ]
  %2639 = phi float [ %1809, %2511 ], [ %1809, %1996 ], [ %1809, %1798 ], [ %2627, %2608 ], [ %1809, %2606 ], [ %2605, %2566 ], [ %2563, %2539 ], [ %1809, %1815 ]
  %2640 = phi float [ %2518, %2511 ], [ %1810, %1996 ], [ %1810, %1798 ], [ %2518, %2608 ], [ %2518, %2606 ], [ %2518, %2566 ], [ %2518, %2539 ], [ %1810, %1815 ]
  %2641 = phi float [ %1811, %2511 ], [ %1811, %1996 ], [ %1811, %1798 ], [ %2619, %2608 ], [ %1811, %2606 ], [ %2597, %2566 ], [ %2551, %2539 ], [ %1811, %1815 ]
  %2642 = phi float [ %1812, %2511 ], [ %1812, %1996 ], [ %1812, %1798 ], [ %2616, %2608 ], [ %1812, %2606 ], [ %2574, %2566 ], [ %2548, %2539 ], [ %1812, %1815 ]
  %2643 = phi float [ %1813, %2511 ], [ %1813, %1996 ], [ %1813, %1798 ], [ %2621, %2608 ], [ %1813, %2606 ], [ %2599, %2566 ], [ %2554, %2539 ], [ %1813, %1815 ]
  %2644 = phi float [ %2519, %2511 ], [ %1814, %1996 ], [ %1814, %1798 ], [ %2519, %2608 ], [ %2519, %2606 ], [ %2519, %2566 ], [ %2519, %2539 ], [ %1814, %1815 ]
  br i1 %396, label %3458, label %2645

; <label>:2645                                    ; preds = %2628
  %2646 = icmp ult i32 %447, 4
  %2647 = add i32 %28, 72
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = add i32 %28, 76
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = or i32 %2652, %2649
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %3458, label %2655

; <label>:2655                                    ; preds = %2645
  %2656 = and i32 %2649, 262144
  %2657 = icmp ne i32 %2656, 0
  %2658 = select i1 %2657, float %33, float 1.000000e+00
  %2659 = select i1 %2657, float %34, float 0.000000e+00
  %2660 = select i1 %2657, float %35, float 0.000000e+00
  %2661 = select i1 %2657, float %36, float 1.000000e+00
  %2662 = select i1 %2657, float %37, float %65
  %2663 = select i1 %2657, float %38, float %66
  %2664 = add i32 %28, 332
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = lshr i32 %2666, 16
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = fmul fast float %2668, 0x3F50624DE0000000
  %2670 = add i32 %28, 136
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 16
  %2674 = and i32 %2673, 255
  %2675 = lshr i32 %2672, 24
  %2676 = add i32 %28, 340
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 65535
  %2680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2679)  ; LegacyF16ToF32(value)
  %2681 = lshr i32 %2678, 16
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = add i32 %28, 80
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 22
  %2687 = shl nuw nsw i32 %2686, 5
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = shl i32 %2685, 4
  %2690 = and i32 %2689, 32752
  %2691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2690)  ; LegacyF16ToF32(value)
  %2692 = lshr i32 %2685, 7
  %2693 = and i32 %2692, 32752
  %2694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2693)  ; LegacyF16ToF32(value)
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 3
  %2697 = fmul fast float %2696, 1.000000e+03
  %2698 = fmul fast float %386, %2697
  %2699 = call float @dx.op.unary.f32(i32 22, float %2698)  ; Frc(value)
  %2700 = fadd fast float %2699, %376
  %2701 = fmul fast float %387, %2697
  %2702 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2703 = fadd fast float %2702, %378
  %2704 = fmul fast float %2669, %2697
  %2705 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2706 = fmul fast float %2705, 0x401921FB60000000
  %2707 = fadd fast float %2706, %2688
  %2708 = call float @dx.op.unary.f32(i32 13, float %2707)  ; Sin(value)
  %2709 = call float @dx.op.unary.f32(i32 12, float %2707)  ; Cos(value)
  %2710 = fsub fast float -0.000000e+00, %2708
  %2711 = fadd fast float %2662, -5.000000e-01
  %2712 = fadd fast float %2663, -5.000000e-01
  %2713 = fmul fast float %2680, %2711
  %2714 = fmul fast float %2682, %2712
  %2715 = fadd fast float %2713, 5.000000e-01
  %2716 = fadd fast float %2714, 5.000000e-01
  %2717 = fmul fast float %2691, %2715
  %2718 = fmul fast float %2694, %2716
  %2719 = fmul fast float %2709, %2717
  %2720 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2718, float %2719)  ; FMad(a,b,c)
  %2721 = fmul fast float %2708, %2717
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2718, float %2721)  ; FMad(a,b,c)
  %2723 = fadd fast float %2700, %2720
  %2724 = fadd fast float %2703, %2722
  %2725 = icmp ugt i32 %2674, 1
  %2726 = icmp ugt i32 %2672, 33554431
  %2727 = or i1 %2726, %2725
  br i1 %2727, label %2728, label %2753

; <label>:2728                                    ; preds = %2655
  %2729 = add i32 %28, 276
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = lshr i32 %2731, 16
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = fmul fast float %2696, %2733
  %2735 = call float @dx.op.unary.f32(i32 22, float %2734)  ; Frc(value)
  %2736 = mul nuw nsw i32 %2674, %2675
  %2737 = uitofp i32 %2736 to float
  %2738 = fmul fast float %2735, %2737
  %2739 = call float @dx.op.unary.f32(i32 27, float %2738)  ; Round_ni(value)
  %2740 = fptoui float %2739 to i32
  %2741 = urem i32 %2740, %2674
  %2742 = udiv i32 %2740, %2675
  %2743 = call float @dx.op.unary.f32(i32 22, float %2723)  ; Frc(value)
  %2744 = call float @dx.op.unary.f32(i32 22, float %2724)  ; Frc(value)
  %2745 = uitofp i32 %2741 to float
  %2746 = uitofp i32 %2742 to float
  %2747 = fadd fast float %2743, %2745
  %2748 = fadd fast float %2744, %2746
  %2749 = uitofp i32 %2674 to float
  %2750 = uitofp i32 %2675 to float
  %2751 = fdiv fast float %2747, %2749
  %2752 = fdiv fast float %2748, %2750
  br label %2753

; <label>:2753                                    ; preds = %2728, %2655
  %2754 = phi float [ %2751, %2728 ], [ %2723, %2655 ]
  %2755 = phi float [ %2752, %2728 ], [ %2724, %2655 ]
  %2756 = and i32 %2649, 256
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2804, label %2758

; <label>:2758                                    ; preds = %2753
  %2759 = add i32 %28, 452
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = add i32 %2761, 0
  %2763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2763, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = add i32 %28, 148
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = shl i32 %2768, 4
  %2770 = and i32 %2769, 32752
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = lshr i32 %2768, 7
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = fsub fast float 1.000000e+00, %442
  %2776 = call float @dx.op.binary.f32(i32 35, float %2775, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2777 = bitcast float %442 to i32
  %2778 = sitofp i32 %2777 to float
  %2779 = fadd fast float %2778, 0xC1CFBF8940000000
  %2780 = fmul fast float %2774, %2779
  %2781 = fadd fast float %2780, 0x41CFBF8940000000
  %2782 = fptosi float %2781 to i32
  %2783 = bitcast i32 %2782 to float
  %2784 = bitcast float %2776 to i32
  %2785 = sitofp i32 %2784 to float
  %2786 = fadd fast float %2785, 0xC1CFBF8940000000
  %2787 = fmul fast float %2786, %2774
  %2788 = fadd fast float %2787, 0x41CFBF8940000000
  %2789 = fptosi float %2788 to i32
  %2790 = bitcast i32 %2789 to float
  %2791 = fmul fast float %2783, %2771
  %2792 = fmul fast float %2790, %2771
  %2793 = fsub fast float %2776, %2791
  %2794 = fadd fast float %2792, %2776
  %2795 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  %2796 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2797 = fsub fast float %2765, %2795
  %2798 = fsub fast float %2796, %2795
  %2799 = bitcast float %2798 to i32
  %2800 = sub nsw i32 2129859010, %2799
  %2801 = bitcast i32 %2800 to float
  %2802 = fmul fast float %2801, %2797
  %2803 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  br label %2804

; <label>:2804                                    ; preds = %2758, %2753
  %2805 = phi float [ %2803, %2758 ], [ %442, %2753 ]
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 128
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2826, label %2810

; <label>:2810                                    ; preds = %2804
  %2811 = add i32 %28, 436
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %2813, 0
  %2815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2815, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 524288
  %2821 = icmp ne i32 %2820, 0
  %2822 = fcmp fast ogt float %2817, 0x3FE0101020000000
  %2823 = select i1 %2822, float 1.000000e+00, float 0.000000e+00
  %2824 = select i1 %2821, float %2823, float %2817
  %2825 = fmul fast float %2824, %2805
  br label %2826

; <label>:2826                                    ; preds = %2810, %2804
  %2827 = phi float [ %2825, %2810 ], [ %2805, %2804 ]
  %2828 = fcmp fast ult float %2827, 0x3F70101020000000
  br i1 %2828, label %3458, label %2829

; <label>:2829                                    ; preds = %2826
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = and i32 %2831, 16
  %2833 = icmp eq i32 %2832, 0
  br i1 %2833, label %3032, label %2834

; <label>:2834                                    ; preds = %2829
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %28, 388
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2847 = and i32 %2836, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2836, 8
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2846, %2848
  %2853 = fadd fast float %2852, %2851
  %2854 = fmul fast float %2853, 0x3F70101000000000
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, 512
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2867, label %2859

; <label>:2859                                    ; preds = %2834
  %2860 = add i32 %28, 472
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = add i32 %2862, 0
  %2864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2864, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  br label %2867

; <label>:2867                                    ; preds = %2859, %2834
  %2868 = phi float [ %2866, %2859 ], [ 1.000000e+00, %2834 ]
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 33554432
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2979, label %2873

; <label>:2873                                    ; preds = %2867
  %2874 = add i32 %28, 272
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 65535
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = lshr i32 %2876, 16
  %2880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2879)  ; LegacyF16ToF32(value)
  %2881 = add i32 %28, 276
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = lshr i32 %2887, 24
  %2889 = uitofp i32 %2888 to float
  %2890 = fmul fast float %2889, 0x3F70101020000000
  %2891 = and i32 %2887, 255
  %2892 = uitofp i32 %2891 to float
  %2893 = fmul fast float %2892, 0x3F70101020000000
  %2894 = lshr i32 %2887, 8
  %2895 = and i32 %2894, 255
  %2896 = uitofp i32 %2895 to float
  %2897 = fmul fast float %2896, 0x3F70101020000000
  %2898 = lshr i32 %2887, 16
  %2899 = and i32 %2898, 255
  %2900 = uitofp i32 %2899 to float
  %2901 = fmul fast float %2900, 0x3F70101020000000
  %2902 = add i32 %28, 268
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 24
  %2906 = uitofp i32 %2905 to float
  %2907 = fmul fast float %2906, 0x3F70101020000000
  %2908 = and i32 %2904, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2909, 0x3F70101020000000
  %2911 = lshr i32 %2904, 8
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2913, 0x3F70101020000000
  %2915 = lshr i32 %2904, 16
  %2916 = and i32 %2915, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2917, 0x3F70101020000000
  %2919 = bitcast float %2843 to i32
  %2920 = ashr i32 %2919, 1
  %2921 = sub nsw i32 1597463174, %2920
  %2922 = bitcast i32 %2921 to float
  %2923 = fmul fast float %2843, 5.000000e-01
  %2924 = fmul fast float %2922, %2922
  %2925 = fmul fast float %2924, %2923
  %2926 = fsub fast float 1.500000e+00, %2925
  %2927 = fmul fast float %2922, %2843
  %2928 = fmul fast float %2927, %2926
  %2929 = bitcast float %2844 to i32
  %2930 = ashr i32 %2929, 1
  %2931 = sub nsw i32 1597463174, %2930
  %2932 = bitcast i32 %2931 to float
  %2933 = fmul fast float %2844, 5.000000e-01
  %2934 = fmul fast float %2932, %2932
  %2935 = fmul fast float %2934, %2933
  %2936 = fsub fast float 1.500000e+00, %2935
  %2937 = fmul fast float %2932, %2844
  %2938 = fmul fast float %2937, %2936
  %2939 = bitcast float %2845 to i32
  %2940 = ashr i32 %2939, 1
  %2941 = sub nsw i32 1597463174, %2940
  %2942 = bitcast i32 %2941 to float
  %2943 = fmul fast float %2845, 5.000000e-01
  %2944 = fmul fast float %2942, %2942
  %2945 = fmul fast float %2944, %2943
  %2946 = fsub fast float 1.500000e+00, %2945
  %2947 = fmul fast float %2942, %2845
  %2948 = fmul fast float %2947, %2946
  %2949 = fsub fast float %2928, %2910
  %2950 = fsub fast float %2938, %2914
  %2951 = fsub fast float %2948, %2918
  %2952 = fmul fast float %2949, %2878
  %2953 = fmul fast float %2950, %2880
  %2954 = fmul fast float %2951, %2885
  %2955 = fadd fast float %2952, %2893
  %2956 = fadd fast float %2953, %2897
  %2957 = fadd fast float %2954, %2901
  %2958 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  %2959 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2960 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2961 = fmul fast float %2958, %2958
  %2962 = fmul fast float %2959, %2959
  %2963 = fmul fast float %2960, %2960
  %2964 = fsub fast float %2961, %2843
  %2965 = fsub fast float %2962, %2844
  %2966 = fsub fast float %2963, %2845
  %2967 = fmul fast float %2964, %2868
  %2968 = fmul fast float %2965, %2868
  %2969 = fmul fast float %2966, %2868
  %2970 = fadd fast float %2967, %2843
  %2971 = fadd fast float %2968, %2844
  %2972 = fadd fast float %2969, %2845
  %2973 = fadd fast float %2890, %2854
  %2974 = fsub fast float %2973, %2907
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = fsub fast float %2975, %2854
  %2977 = fmul fast float %2976, %2868
  %2978 = fadd fast float %2977, %2854
  br label %3032

; <label>:2979                                    ; preds = %2867
  %2980 = and i32 %2870, 134217728
  %2981 = icmp eq i32 %2980, 0
  br i1 %2981, label %3016, label %2982

; <label>:2982                                    ; preds = %2979
  %2983 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2984 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2985 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2986 = fadd fast float %2983, -5.000000e-01
  %2987 = fadd fast float %2984, -5.000000e-01
  %2988 = fadd fast float %2985, -5.000000e-01
  %2989 = fmul fast float %2986, %2868
  %2990 = fmul fast float %2987, %2868
  %2991 = fmul fast float %2988, %2868
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fadd fast float %2990, 5.000000e-01
  %2994 = fadd fast float %2991, 5.000000e-01
  %2995 = call float @dx.op.unary.f32(i32 24, float %2843)  ; Sqrt(value)
  %2996 = call float @dx.op.unary.f32(i32 24, float %2844)  ; Sqrt(value)
  %2997 = call float @dx.op.unary.f32(i32 24, float %2845)  ; Sqrt(value)
  %2998 = fmul fast float %2992, 2.000000e+00
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = fmul fast float %2999, %2995
  %3001 = fadd fast float %3000, %2998
  %3002 = fmul fast float %3001, %2995
  %3003 = fmul fast float %2993, 2.000000e+00
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = fmul fast float %3004, %2996
  %3006 = fadd fast float %3005, %3003
  %3007 = fmul fast float %3006, %2996
  %3008 = fmul fast float %2994, 2.000000e+00
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = fmul fast float %3009, %2997
  %3011 = fadd fast float %3010, %3008
  %3012 = fmul fast float %3011, %2997
  %3013 = fmul fast float %3002, %3002
  %3014 = fmul fast float %3007, %3007
  %3015 = fmul fast float %3012, %3012
  br label %3032

; <label>:3016                                    ; preds = %2979
  %3017 = fmul fast float %363, %363
  %3018 = fmul fast float %367, %367
  %3019 = fmul fast float %371, %371
  %3020 = fadd fast float %3017, -1.000000e+00
  %3021 = fadd fast float %3018, -1.000000e+00
  %3022 = fadd fast float %3019, -1.000000e+00
  %3023 = fmul fast float %2868, %3020
  %3024 = fmul fast float %2868, %3021
  %3025 = fmul fast float %2868, %3022
  %3026 = fadd fast float %3023, 1.000000e+00
  %3027 = fadd fast float %3024, 1.000000e+00
  %3028 = fadd fast float %3025, 1.000000e+00
  %3029 = fmul fast float %3026, %2843
  %3030 = fmul fast float %3027, %2844
  %3031 = fmul fast float %3028, %2845
  br label %3032

; <label>:3032                                    ; preds = %3016, %2982, %2873, %2829
  %3033 = phi float [ %2978, %2873 ], [ %2854, %2982 ], [ %2854, %3016 ], [ 0x3FA23C0BE0000000, %2829 ]
  %3034 = phi float [ %2970, %2873 ], [ %3013, %2982 ], [ %3029, %3016 ], [ 1.000000e+00, %2829 ]
  %3035 = phi float [ %2971, %2873 ], [ %3014, %2982 ], [ %3030, %3016 ], [ 1.000000e+00, %2829 ]
  %3036 = phi float [ %2972, %2873 ], [ %3015, %2982 ], [ %3031, %3016 ], [ 1.000000e+00, %2829 ]
  %3037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.i32 %3037, 1
  %3039 = and i32 %3038, 1
  %3040 = icmp ne i32 %3039, 0
  %3041 = add i32 %28, 356
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 32
  %3045 = icmp ne i32 %3044, 0
  %3046 = and i1 %3040, %3045
  %3047 = select i1 %3046, float 1.000000e+00, float %3034
  %3048 = select i1 %3046, float 0x3FD3333340000000, float %3035
  %3049 = select i1 %3046, float 0x3FD3333340000000, float %3036
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 32
  %3053 = icmp eq i32 %3052, 0
  br i1 %3053, label %3126, label %3054

; <label>:3054                                    ; preds = %3032
  %3055 = add i32 %28, 140
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = add i32 %28, 404
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3062, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3067 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3068 = and i32 %3057, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3057, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = lshr i32 %3057, 16
  %3074 = and i32 %3073, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = fmul fast float %3075, 0x3F70101000000000
  %3077 = fmul fast float %3064, %3069
  %3078 = fadd fast float %3077, %3072
  %3079 = fmul fast float %3078, 0x3F70101000000000
  %3080 = fadd fast float %3065, -5.000000e-01
  %3081 = fadd fast float %3067, -5.000000e-01
  %3082 = fmul fast float %3080, %3076
  %3083 = fmul fast float %3081, %3076
  %3084 = fadd fast float %3082, 5.000000e-01
  %3085 = fadd fast float %3083, 5.000000e-01
  %3086 = fmul fast float %3084, 2.000000e+00
  %3087 = fadd fast float %3086, -1.000000e+00
  %3088 = fmul fast float %3085, 2.000000e+00
  %3089 = fadd fast float %3088, -1.000000e+00
  %3090 = fadd fast float %3087, %3089
  %3091 = fmul fast float %3090, 5.000000e-01
  %3092 = fsub fast float %3087, %3089
  %3093 = fmul fast float %3092, 5.000000e-01
  %3094 = call float @dx.op.unary.f32(i32 6, float %3091)  ; FAbs(value)
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = call float @dx.op.unary.f32(i32 6, float %3093)  ; FAbs(value)
  %3097 = fsub fast float %3095, %3096
  %3098 = call float @dx.op.dot3.f32(i32 55, float %3091, float %3093, float %3097, float %3091, float %3093, float %3097)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = call float @dx.op.unary.f32(i32 25, float %3098)  ; Rsqrt(value)
  %3100 = fmul fast float %3091, %3099
  %3101 = fmul fast float %3093, %3099
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 67108864
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3122, label %3106

; <label>:3106                                    ; preds = %3054
  %3107 = add i32 %28, 328
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 65535
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 65535
  %3115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3114)  ; LegacyF16ToF32(value)
  %3116 = lshr i32 %3109, 16
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = fsub fast float %3079, %3117
  %3119 = fmul fast float %3118, %3111
  %3120 = fadd fast float %3119, %3115
  %3121 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  br label %3122

; <label>:3122                                    ; preds = %3106, %3054
  %3123 = phi float [ %3121, %3106 ], [ %3079, %3054 ]
  %3124 = call float @dx.op.dot2.f32(i32 54, float %3100, float %3101, float %2658, float %2659)  ; Dot2(ax,ay,bx,by)
  %3125 = call float @dx.op.dot2.f32(i32 54, float %3100, float %3101, float %2660, float %2661)  ; Dot2(ax,ay,bx,by)
  br label %3126

; <label>:3126                                    ; preds = %3122, %3032
  %3127 = phi float [ %3123, %3122 ], [ 0x3FD6666660000000, %3032 ]
  %3128 = phi float [ %3124, %3122 ], [ 0.000000e+00, %3032 ]
  %3129 = phi float [ %3125, %3122 ], [ 0.000000e+00, %3032 ]
  %3130 = phi float [ %3066, %3122 ], [ 1.000000e+00, %3032 ]
  %3131 = add i32 %28, 208
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = lshr i32 %3133, 22
  %3135 = shl nuw nsw i32 %3134, 5
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 64
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3174, label %3141

; <label>:3141                                    ; preds = %3126
  %3142 = add i32 %28, 420
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %3144, 0
  %3146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 131072
  %3150 = icmp eq i32 %3149, 0
  %3151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3146, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.ResRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3151, 2
  %3155 = fmul fast float %3152, %351
  %3156 = fmul fast float %3153, %354
  %3157 = fmul fast float %3154, %357
  br i1 %3150, label %3164, label %3158

; <label>:3158                                    ; preds = %3141
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = fmul fast float %3160, %3155
  %3162 = fmul fast float %3160, %3156
  %3163 = fmul fast float %3160, %3157
  br label %3164

; <label>:3164                                    ; preds = %3158, %3141
  %3165 = phi float [ %3161, %3158 ], [ %3155, %3141 ]
  %3166 = phi float [ %3162, %3158 ], [ %3156, %3141 ]
  %3167 = phi float [ %3163, %3158 ], [ %3157, %3141 ]
  %3168 = fmul fast float %3165, %3136
  %3169 = select i1 %208, float %3168, float %3165
  %3170 = call float @dx.op.dot3.f32(i32 55, float %3169, float %3166, float %3167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = select i1 %208, float 0.000000e+00, float %3165
  %3172 = select i1 %208, float %3170, float %3166
  %3173 = select i1 %208, float 0.000000e+00, float %3167
  br label %3174

; <label>:3174                                    ; preds = %3164, %3126
  %3175 = phi float [ %3171, %3164 ], [ 0.000000e+00, %3126 ]
  %3176 = phi float [ %3172, %3164 ], [ 0.000000e+00, %3126 ]
  %3177 = phi float [ %3173, %3164 ], [ 0.000000e+00, %3126 ]
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 10240
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3226, label %3182

; <label>:3182                                    ; preds = %3174
  %3183 = add i32 %28, 488
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %3185, 0
  %3187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3187, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 1
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 3
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 1048576
  %3194 = icmp ne i32 %3193, 0
  %3195 = and i32 %3192, 8192
  %3196 = icmp eq i32 %3195, 0
  br i1 %3196, label %3212, label %3197

; <label>:3197                                    ; preds = %3182
  %3198 = extractvalue %dx.types.ResRet.f32 %3188, 2
  %3199 = select i1 %3194, float %3198, float %3189
  %3200 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3201 = select i1 %3194, float %3200, float %3189
  %3202 = add i32 %28, 144
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = lshr i32 %3204, 16
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F80101020000000
  %3209 = fmul fast float %3208, %3201
  %3210 = fmul fast float %3208, %3189
  %3211 = fmul fast float %3208, %3199
  br label %3212

; <label>:3212                                    ; preds = %3197, %3182
  %3213 = phi float [ %3209, %3197 ], [ 0.000000e+00, %3182 ]
  %3214 = phi float [ %3210, %3197 ], [ 0.000000e+00, %3182 ]
  %3215 = phi float [ %3211, %3197 ], [ 0.000000e+00, %3182 ]
  %3216 = and i32 %3192, 2048
  %3217 = icmp eq i32 %3216, 0
  br i1 %3217, label %3226, label %3218

; <label>:3218                                    ; preds = %3212
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = shl i32 %3220, 4
  %3222 = and i32 %3221, 32752
  %3223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3222)  ; LegacyF16ToF32(value)
  %3224 = fmul fast float %3223, %3190
  %3225 = call float @dx.op.binary.f32(i32 35, float %3224, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3226

; <label>:3226                                    ; preds = %3218, %3212, %3174
  %3227 = phi float [ %3213, %3218 ], [ %3213, %3212 ], [ 0.000000e+00, %3174 ]
  %3228 = phi float [ %3214, %3218 ], [ %3214, %3212 ], [ 0.000000e+00, %3174 ]
  %3229 = phi float [ %3215, %3218 ], [ %3215, %3212 ], [ 0.000000e+00, %3174 ]
  %3230 = phi float [ %3225, %3218 ], [ 0x3F70101020000000, %3212 ], [ 0x3F70101020000000, %3174 ]
  %3231 = add i32 %28, 144
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = lshr i32 %3233, 8
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3047, float %3048, float %3049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = fmul fast float %3238, %3239
  %3241 = fadd fast float %3240, %3235
  %3242 = fmul fast float %3241, 0x3F70101020000000
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  br i1 %2646, label %3244, label %3252

; <label>:3244                                    ; preds = %3226
  %3245 = fsub fast float 1.000000e+00, %2827
  %3246 = fmul fast float %3245, %2631
  %3247 = fmul fast float %3245, %2632
  %3248 = fmul fast float %3245, %2633
  %3249 = fmul fast float %3245, %2634
  %3250 = fmul fast float %3245, %2635
  %3251 = fmul fast float %3245, %2636
  br label %3252

; <label>:3252                                    ; preds = %3244, %3226
  %3253 = phi float [ %3246, %3244 ], [ %2631, %3226 ]
  %3254 = phi float [ %3247, %3244 ], [ %2632, %3226 ]
  %3255 = phi float [ %3248, %3244 ], [ %2633, %3226 ]
  %3256 = phi float [ %3249, %3244 ], [ %2634, %3226 ]
  %3257 = phi float [ %3250, %3244 ], [ %2635, %3226 ]
  %3258 = phi float [ %3251, %3244 ], [ %2636, %3226 ]
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = and i32 %3260, 3
  %3262 = icmp eq i32 %3261, 3
  br i1 %3262, label %3341, label %3263

; <label>:3263                                    ; preds = %3252
  %3264 = and i32 %3260, 16
  %3265 = icmp ne i32 %3264, 0
  %3266 = select i1 %3265, float %2827, float 0.000000e+00
  %3267 = icmp eq i32 %3261, 0
  br i1 %3267, label %3268, label %3296

; <label>:3268                                    ; preds = %3263
  %3269 = and i32 %3260, 64
  %3270 = icmp ne i32 %3269, 0
  %3271 = select i1 %3270, float %2827, float 0.000000e+00
  %3272 = fsub fast float %3047, %3253
  %3273 = fsub fast float %3048, %3254
  %3274 = fsub fast float %3049, %3255
  %3275 = fmul fast float %3266, %3272
  %3276 = fmul fast float %3266, %3273
  %3277 = fmul fast float %3266, %3274
  %3278 = fadd fast float %3275, %3253
  %3279 = fadd fast float %3276, %3254
  %3280 = fadd fast float %3277, %3255
  %3281 = fsub fast float %3033, %2640
  %3282 = fmul fast float %3266, %3281
  %3283 = fadd fast float %3282, %2640
  %3284 = fsub fast float %3175, %3256
  %3285 = fsub fast float %3176, %3257
  %3286 = fsub fast float %3177, %3258
  %3287 = fmul fast float %3271, %3284
  %3288 = fmul fast float %3271, %3285
  %3289 = fmul fast float %3271, %3286
  %3290 = fadd fast float %3287, %3256
  %3291 = fadd fast float %3288, %3257
  %3292 = fadd fast float %3289, %3258
  %3293 = fsub fast float %3243, %2644
  %3294 = fmul fast float %3266, %3293
  %3295 = fadd fast float %3294, %2644
  br label %3341

; <label>:3296                                    ; preds = %3263
  %3297 = icmp eq i32 %3261, 1
  br i1 %3297, label %3298, label %3311

; <label>:3298                                    ; preds = %3296
  %3299 = fadd fast float %3047, -1.000000e+00
  %3300 = fadd fast float %3048, -1.000000e+00
  %3301 = fadd fast float %3049, -1.000000e+00
  %3302 = fmul fast float %3266, %3299
  %3303 = fmul fast float %3266, %3300
  %3304 = fmul fast float %3266, %3301
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fadd fast float %3304, 1.000000e+00
  %3308 = fmul fast float %3305, %3253
  %3309 = fmul fast float %3306, %3254
  %3310 = fmul fast float %3307, %3255
  br label %3341

; <label>:3311                                    ; preds = %3296
  %3312 = icmp eq i32 %3261, 2
  br i1 %3312, label %3313, label %3341

; <label>:3313                                    ; preds = %3311
  %3314 = call float @dx.op.unary.f32(i32 24, float %3047)  ; Sqrt(value)
  %3315 = call float @dx.op.unary.f32(i32 24, float %3048)  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %3049)  ; Sqrt(value)
  %3317 = fadd fast float %3314, -5.000000e-01
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fadd fast float %3316, -5.000000e-01
  %3320 = fmul fast float %3317, %3266
  %3321 = fmul fast float %3318, %3266
  %3322 = fmul fast float %3319, %3266
  %3323 = fadd fast float %3320, 5.000000e-01
  %3324 = fadd fast float %3321, 5.000000e-01
  %3325 = fadd fast float %3322, 5.000000e-01
  %3326 = fmul fast float %3323, 2.000000e+00
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3253
  %3329 = fadd fast float %3328, %3326
  %3330 = fmul fast float %3329, %3253
  %3331 = fmul fast float %3324, 2.000000e+00
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3332, %3254
  %3334 = fadd fast float %3333, %3331
  %3335 = fmul fast float %3334, %3254
  %3336 = fmul fast float %3325, 2.000000e+00
  %3337 = fsub fast float 1.000000e+00, %3336
  %3338 = fmul fast float %3337, %3255
  %3339 = fadd fast float %3338, %3336
  %3340 = fmul fast float %3339, %3255
  br label %3341

; <label>:3341                                    ; preds = %3313, %3311, %3298, %3268, %3252
  %3342 = phi float [ %3253, %3252 ], [ %3330, %3313 ], [ %3253, %3311 ], [ %3308, %3298 ], [ %3278, %3268 ]
  %3343 = phi float [ %3254, %3252 ], [ %3335, %3313 ], [ %3254, %3311 ], [ %3309, %3298 ], [ %3279, %3268 ]
  %3344 = phi float [ %3255, %3252 ], [ %3340, %3313 ], [ %3255, %3311 ], [ %3310, %3298 ], [ %3280, %3268 ]
  %3345 = phi float [ %3256, %3252 ], [ %3256, %3313 ], [ %3256, %3311 ], [ %3256, %3298 ], [ %3290, %3268 ]
  %3346 = phi float [ %3257, %3252 ], [ %3257, %3313 ], [ %3257, %3311 ], [ %3257, %3298 ], [ %3291, %3268 ]
  %3347 = phi float [ %3258, %3252 ], [ %3258, %3313 ], [ %3258, %3311 ], [ %3258, %3298 ], [ %3292, %3268 ]
  %3348 = phi float [ %2640, %3252 ], [ %2640, %3313 ], [ %2640, %3311 ], [ %2640, %3298 ], [ %3283, %3268 ]
  %3349 = phi float [ %2644, %3252 ], [ %2644, %3313 ], [ %2644, %3311 ], [ %2644, %3298 ], [ %3295, %3268 ]
  %3350 = and i32 %3260, 12
  %3351 = icmp eq i32 %3350, 12
  br i1 %3351, label %3458, label %3352

; <label>:3352                                    ; preds = %3341
  %3353 = and i32 %3260, 2097184
  %3354 = icmp eq i32 %3353, 2097184
  %3355 = select i1 %3354, float %2827, float 0.000000e+00
  %3356 = and i32 %3260, 4194336
  %3357 = icmp eq i32 %3356, 4194336
  %3358 = select i1 %3357, float %2827, float 0.000000e+00
  %3359 = and i32 %3260, 8388640
  %3360 = icmp eq i32 %3359, 8388640
  %3361 = select i1 %3360, float %2827, float 0.000000e+00
  %3362 = and i32 %3260, 2048
  %3363 = icmp ne i32 %3362, 0
  %3364 = select i1 %3363, float %2827, float 0.000000e+00
  %3365 = and i32 %3260, 8192
  %3366 = icmp ne i32 %3365, 0
  %3367 = select i1 %3366, float %2827, float 0.000000e+00
  %3368 = icmp eq i32 %3350, 0
  br i1 %3368, label %3369, label %3394

; <label>:3369                                    ; preds = %3352
  %3370 = fsub fast float %3128, %2629
  %3371 = fsub fast float %3129, %2630
  %3372 = fmul fast float %3355, %3370
  %3373 = fmul fast float %3355, %3371
  %3374 = fadd fast float %3372, %2629
  %3375 = fadd fast float %3373, %2630
  %3376 = fsub fast float %3130, %2642
  %3377 = fmul fast float %3358, %3376
  %3378 = fadd fast float %3377, %2642
  %3379 = fsub fast float %3127, %2641
  %3380 = fmul fast float %3361, %3379
  %3381 = fadd fast float %3380, %2641
  %3382 = fsub fast float %3230, %2643
  %3383 = fmul fast float %3364, %3382
  %3384 = fadd fast float %3383, %2643
  %3385 = fsub fast float %3227, %2637
  %3386 = fsub fast float %3228, %2638
  %3387 = fsub fast float %3229, %2639
  %3388 = fmul fast float %3367, %3385
  %3389 = fmul fast float %3367, %3386
  %3390 = fmul fast float %3367, %3387
  %3391 = fadd fast float %3388, %2637
  %3392 = fadd fast float %3389, %2638
  %3393 = fadd fast float %3390, %2639
  br label %3458

; <label>:3394                                    ; preds = %3352
  %3395 = icmp eq i32 %3350, 4
  br i1 %3395, label %3396, label %3436

; <label>:3396                                    ; preds = %3394
  %3397 = fmul fast float %3355, %3128
  %3398 = fmul fast float %3355, %3129
  %3399 = fadd fast float %3397, %2629
  %3400 = fadd fast float %3398, %2630
  %3401 = call float @dx.op.binary.f32(i32 36, float %2642, float %3130)  ; FMin(a,b)
  %3402 = fsub fast float %3401, %2642
  %3403 = fmul fast float %3402, %3358
  %3404 = fadd fast float %3403, %2642
  %3405 = fadd fast float %3127, %2641
  %3406 = fmul fast float %3405, 0x3FF337FAE0000000
  %3407 = fmul fast float %2641, %2641
  %3408 = fmul fast float %3127, %3127
  %3409 = fadd fast float %3408, %3407
  %3410 = fmul fast float %3409, 0x3FE5152B00000000
  %3411 = fmul fast float %2641, 0xBFCC1F85E0000000
  %3412 = fmul fast float %3411, %3127
  %3413 = fadd fast float %3412, 0xBFE1363700000000
  %3414 = fadd fast float %3413, %3406
  %3415 = fsub fast float %3414, %3410
  %3416 = fmul fast float %3405, 0x3FBA6F0D00000000
  %3417 = fmul fast float %3409, 0x3FD0432880000000
  %3418 = fmul fast float %2641, 0xBFEF110800000000
  %3419 = fmul fast float %3418, %3127
  %3420 = fadd fast float %3419, 1.000000e+00
  %3421 = fsub fast float %3420, %3416
  %3422 = fadd fast float %3421, %3417
  %3423 = fdiv fast float %3415, %3422
  %3424 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3425 = fsub fast float %3424, %2641
  %3426 = fmul fast float %3425, %3361
  %3427 = fadd fast float %3426, %2641
  %3428 = fmul fast float %3364, %3230
  %3429 = fadd fast float %3428, %2643
  %3430 = fmul fast float %3367, %3227
  %3431 = fmul fast float %3367, %3228
  %3432 = fmul fast float %3367, %3229
  %3433 = fadd fast float %3430, %2637
  %3434 = fadd fast float %3431, %2638
  %3435 = fadd fast float %3432, %2639
  br label %3458

; <label>:3436                                    ; preds = %3394
  %3437 = icmp eq i32 %3350, 8
  br i1 %3437, label %3438, label %3458

; <label>:3438                                    ; preds = %3436
  %3439 = fmul fast float %3355, %3128
  %3440 = fmul fast float %3355, %3129
  %3441 = fadd fast float %3439, %2629
  %3442 = fadd fast float %3440, %2630
  %3443 = call float @dx.op.binary.f32(i32 36, float %2642, float %3130)  ; FMin(a,b)
  %3444 = fsub fast float %3443, %2642
  %3445 = fmul fast float %3444, %3358
  %3446 = fadd fast float %3445, %2642
  %3447 = fsub fast float %3127, %2641
  %3448 = fmul fast float %3361, %3447
  %3449 = fadd fast float %3448, %2641
  %3450 = fmul fast float %3364, %3230
  %3451 = fadd fast float %3450, %2643
  %3452 = fmul fast float %3367, %3227
  %3453 = fmul fast float %3367, %3228
  %3454 = fmul fast float %3367, %3229
  %3455 = fadd fast float %3452, %2637
  %3456 = fadd fast float %3453, %2638
  %3457 = fadd fast float %3454, %2639
  br label %3458

; <label>:3458                                    ; preds = %3438, %3436, %3396, %3369, %3341, %2826, %2645, %2628
  %3459 = phi float [ %2629, %3341 ], [ %2629, %2826 ], [ %2629, %2628 ], [ %2629, %2645 ], [ %3374, %3369 ], [ %3399, %3396 ], [ %2629, %3436 ], [ %3441, %3438 ]
  %3460 = phi float [ %2630, %3341 ], [ %2630, %2826 ], [ %2630, %2628 ], [ %2630, %2645 ], [ %3375, %3369 ], [ %3400, %3396 ], [ %2630, %3436 ], [ %3442, %3438 ]
  %3461 = phi float [ %3342, %3341 ], [ %2631, %2826 ], [ %2631, %2628 ], [ %2631, %2645 ], [ %3342, %3369 ], [ %3342, %3396 ], [ %3342, %3436 ], [ %3342, %3438 ]
  %3462 = phi float [ %3343, %3341 ], [ %2632, %2826 ], [ %2632, %2628 ], [ %2632, %2645 ], [ %3343, %3369 ], [ %3343, %3396 ], [ %3343, %3436 ], [ %3343, %3438 ]
  %3463 = phi float [ %3344, %3341 ], [ %2633, %2826 ], [ %2633, %2628 ], [ %2633, %2645 ], [ %3344, %3369 ], [ %3344, %3396 ], [ %3344, %3436 ], [ %3344, %3438 ]
  %3464 = phi float [ %3345, %3341 ], [ %2634, %2826 ], [ %2634, %2628 ], [ %2634, %2645 ], [ %3345, %3369 ], [ %3345, %3396 ], [ %3345, %3436 ], [ %3345, %3438 ]
  %3465 = phi float [ %3346, %3341 ], [ %2635, %2826 ], [ %2635, %2628 ], [ %2635, %2645 ], [ %3346, %3369 ], [ %3346, %3396 ], [ %3346, %3436 ], [ %3346, %3438 ]
  %3466 = phi float [ %3347, %3341 ], [ %2636, %2826 ], [ %2636, %2628 ], [ %2636, %2645 ], [ %3347, %3369 ], [ %3347, %3396 ], [ %3347, %3436 ], [ %3347, %3438 ]
  %3467 = phi float [ %2637, %3341 ], [ %2637, %2826 ], [ %2637, %2628 ], [ %2637, %2645 ], [ %3391, %3369 ], [ %3433, %3396 ], [ %2637, %3436 ], [ %3455, %3438 ]
  %3468 = phi float [ %2638, %3341 ], [ %2638, %2826 ], [ %2638, %2628 ], [ %2638, %2645 ], [ %3392, %3369 ], [ %3434, %3396 ], [ %2638, %3436 ], [ %3456, %3438 ]
  %3469 = phi float [ %2639, %3341 ], [ %2639, %2826 ], [ %2639, %2628 ], [ %2639, %2645 ], [ %3393, %3369 ], [ %3435, %3396 ], [ %2639, %3436 ], [ %3457, %3438 ]
  %3470 = phi float [ %3348, %3341 ], [ %2640, %2826 ], [ %2640, %2628 ], [ %2640, %2645 ], [ %3348, %3369 ], [ %3348, %3396 ], [ %3348, %3436 ], [ %3348, %3438 ]
  %3471 = phi float [ %2641, %3341 ], [ %2641, %2826 ], [ %2641, %2628 ], [ %2641, %2645 ], [ %3381, %3369 ], [ %3427, %3396 ], [ %2641, %3436 ], [ %3449, %3438 ]
  %3472 = phi float [ %2642, %3341 ], [ %2642, %2826 ], [ %2642, %2628 ], [ %2642, %2645 ], [ %3378, %3369 ], [ %3404, %3396 ], [ %2642, %3436 ], [ %3446, %3438 ]
  %3473 = phi float [ %2643, %3341 ], [ %2643, %2826 ], [ %2643, %2628 ], [ %2643, %2645 ], [ %3384, %3369 ], [ %3429, %3396 ], [ %2643, %3436 ], [ %3451, %3438 ]
  %3474 = phi float [ %3349, %3341 ], [ %2644, %2826 ], [ %2644, %2628 ], [ %2644, %2645 ], [ %3349, %3369 ], [ %3349, %3396 ], [ %3349, %3436 ], [ %3349, %3438 ]
  %3475 = add i32 %28, 360
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.i32 %3476, 1
  %3479 = bitcast i32 %3477 to float
  %3480 = bitcast i32 %3478 to float
  %3481 = fcmp fast oge float %3479, 0.000000e+00
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = select i1 %3481, float %3479, float %3483
  %3485 = fadd fast float %3484, %170
  %3486 = fmul fast float %3480, %171
  %3487 = add i32 %28, 456
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = add i32 %3489, 0
  %3491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3491, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = fmul fast float %3486, %3493
  %3495 = fadd fast float %3485, %3494
  %3496 = and i32 %162, 65535
  %3497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3496)  ; LegacyF16ToF32(value)
  %3498 = lshr i32 %162, 16
  %3499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3498)  ; LegacyF16ToF32(value)
  %3500 = and i32 %163, 65535
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = fmul fast float %3497, %3461
  %3503 = fmul fast float %3499, %3462
  %3504 = fmul fast float %3501, %3463
  %3505 = shl i32 %164, 4
  %3506 = and i32 %3505, 32752
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = lshr i32 %164, 7
  %3509 = and i32 %3508, 32752
  %3510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3509)  ; LegacyF16ToF32(value)
  %3511 = lshr i32 %164, 22
  %3512 = shl nuw nsw i32 %3511, 5
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = and i32 %165, 65535
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = fmul fast float %3507, %3464
  %3517 = fmul fast float %3516, %3515
  %3518 = fmul fast float %3510, %3465
  %3519 = fmul fast float %3518, %3515
  %3520 = fmul fast float %3513, %3466
  %3521 = fmul fast float %3520, %3515
  %3522 = call float @dx.op.dot2.f32(i32 54, float %3459, float %3460, float %3459, float %3460)  ; Dot2(ax,ay,bx,by)
  %3523 = fmul fast float %3522, 0x3FE3333340000000
  %3524 = fsub fast float 1.000000e+00, %3523
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3524, float %3459, float %3460, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = call float @dx.op.unary.f32(i32 25, float %3525)  ; Rsqrt(value)
  %3527 = fmul fast float %3526, %3459
  %3528 = fmul fast float %3526, %3460
  %3529 = fmul fast float %3524, %3526
  %3530 = fmul fast float %3529, %84
  %3531 = fmul fast float %3529, %85
  %3532 = fmul fast float %3529, %86
  %3533 = fmul fast float %3527, %58
  %3534 = fmul fast float %3527, %59
  %3535 = fmul fast float %3527, %60
  %3536 = fadd fast float %3530, %3533
  %3537 = fadd fast float %3531, %3534
  %3538 = fadd fast float %3532, %3535
  %3539 = fmul fast float %96, %3528
  %3540 = fmul fast float %97, %3528
  %3541 = fmul fast float %98, %3528
  %3542 = fadd fast float %3536, %3539
  %3543 = fadd fast float %3537, %3540
  %3544 = fadd fast float %3538, %3541
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3542, float %3543, float %3544, float %3542, float %3543, float %3544)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = call float @dx.op.unary.f32(i32 25, float %3545)  ; Rsqrt(value)
  %3547 = fmul fast float %3542, %3546
  %3548 = fmul fast float %3543, %3546
  %3549 = fmul fast float %3544, %3546
  %3550 = fadd fast float %3470, 0xBFB99999A0000000
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = fmul fast float %3551, 0x3FF1C71C80000000
  %3553 = call float @dx.op.binary.f32(i32 36, float %3470, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3554 = fsub fast float 1.000000e+00, %3552
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = fmul fast float %3555, %3502
  %3557 = fmul fast float %3555, %3503
  %3558 = fmul fast float %3555, %3504
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = fmul fast float %3552, %3502
  %3563 = fmul fast float %3552, %3503
  %3564 = fmul fast float %3552, %3504
  %3565 = fadd fast float %3562, %3553
  %3566 = fadd fast float %3563, %3553
  %3567 = fadd fast float %3564, %3553
  %3568 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 1
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3590, label %3576

; <label>:3576                                    ; preds = %3458
  %3577 = call float @dx.op.binary.f32(i32 35, float %3560, float %3561)  ; FMax(a,b)
  %3578 = call float @dx.op.binary.f32(i32 35, float %3559, float %3577)  ; FMax(a,b)
  %3579 = fcmp fast ogt float %3578, 0.000000e+00
  %3580 = bitcast float %3578 to i32
  %3581 = sub nsw i32 2129859010, %3580
  %3582 = bitcast i32 %3581 to float
  %3583 = select i1 %3579, float %3582, float 0.000000e+00
  %3584 = fmul fast float %3559, %3467
  %3585 = fmul fast float %3560, %3468
  %3586 = fmul fast float %3561, %3469
  %3587 = fmul fast float %3584, %3583
  %3588 = fmul fast float %3585, %3583
  %3589 = fmul fast float %3586, %3583
  br label %3590

; <label>:3590                                    ; preds = %3576, %3458
  %3591 = phi float [ %3587, %3576 ], [ %3467, %3458 ]
  %3592 = phi float [ %3588, %3576 ], [ %3468, %3458 ]
  %3593 = phi float [ %3589, %3576 ], [ %3469, %3458 ]
  %3594 = fadd fast float %3559, 0xBFD51EB860000000
  %3595 = fadd fast float %3560, 0xBFD51EB860000000
  %3596 = fadd fast float %3561, 0xBFD51EB860000000
  %3597 = fmul fast float %3594, %3594
  %3598 = fmul fast float %3595, %3595
  %3599 = fmul fast float %3596, %3596
  %3600 = fmul fast float %3597, %3597
  %3601 = fmul fast float %3600, 1.000000e+02
  %3602 = fmul fast float %3598, %3598
  %3603 = fmul fast float %3602, 1.000000e+02
  %3604 = fmul fast float %3599, %3599
  %3605 = fmul fast float %3604, 1.000000e+02
  %3606 = fadd fast float %3601, 3.500000e+00
  %3607 = fadd fast float %3603, 3.500000e+00
  %3608 = fadd fast float %3605, 3.500000e+00
  %3609 = call float @dx.op.binary.f32(i32 35, float %3591, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3610 = call float @dx.op.binary.f32(i32 35, float %3592, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3611 = call float @dx.op.binary.f32(i32 35, float %3593, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3612 = fdiv fast float %3606, %3609
  %3613 = fdiv fast float %3607, %3610
  %3614 = fdiv fast float %3608, %3611
  %3615 = fmul fast float %3473, 0xBFF7154760000000
  %3616 = fmul fast float %3615, %3612
  %3617 = call float @dx.op.unary.f32(i32 21, float %3616)  ; Exp(value)
  %3618 = fmul fast float %3617, 2.500000e-01
  %3619 = fmul fast float %3473, 0xBFDEC709E0000000
  %3620 = fmul fast float %3619, %3612
  %3621 = call float @dx.op.unary.f32(i32 21, float %3620)  ; Exp(value)
  %3622 = fmul fast float %3621, 7.500000e-01
  %3623 = fmul fast float %3615, %3613
  %3624 = call float @dx.op.unary.f32(i32 21, float %3623)  ; Exp(value)
  %3625 = fmul fast float %3624, 2.500000e-01
  %3626 = fmul fast float %3619, %3613
  %3627 = call float @dx.op.unary.f32(i32 21, float %3626)  ; Exp(value)
  %3628 = fmul fast float %3627, 7.500000e-01
  %3629 = fmul fast float %3615, %3614
  %3630 = call float @dx.op.unary.f32(i32 21, float %3629)  ; Exp(value)
  %3631 = fmul fast float %3630, 2.500000e-01
  %3632 = fmul fast float %3619, %3614
  %3633 = call float @dx.op.unary.f32(i32 21, float %3632)  ; Exp(value)
  %3634 = fmul fast float %3633, 7.500000e-01
  %3635 = fadd fast float %3618, %3622
  %3636 = fadd fast float %3625, %3628
  %3637 = fadd fast float %3631, %3634
  %3638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.i32 %3638, 3
  %3640 = and i32 %3639, 8
  %3641 = icmp ne i32 %3640, 0
  %3642 = call float @dx.op.binary.f32(i32 35, float %3559, float %3502)  ; FMax(a,b)
  %3643 = call float @dx.op.binary.f32(i32 35, float %3560, float %3502)  ; FMax(a,b)
  %3644 = call float @dx.op.binary.f32(i32 35, float %3561, float %3502)  ; FMax(a,b)
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = select i1 %208, float %3502, float %3559
  %3647 = select i1 %208, float %3645, float %3560
  %3648 = select i1 %208, float 1.000000e+00, float %3561
  %3649 = select i1 %3641, float %3642, float %3646
  %3650 = select i1 %3641, float %3643, float %3647
  %3651 = select i1 %3641, float %3644, float %3648
  %3652 = fmul fast float %3571, 0x3FE99999A0000000
  %3653 = fmul fast float %3571, 0x3FF75C2900000000
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3659 = fadd fast float %3656, %156
  %3660 = fadd fast float %3657, %157
  %3661 = fadd fast float %3658, %158
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.CBufRet.f32 %3662, 1
  %3665 = fsub fast float %3659, %3663
  %3666 = fsub fast float %3660, %3664
  %3667 = fmul fast float %3665, %3665
  %3668 = fmul fast float %3666, %3666
  %3669 = fadd fast float %3667, %3668
  %3670 = call float @dx.op.unary.f32(i32 24, float %3669)  ; Sqrt(value)
  %3671 = extractvalue %dx.types.CBufRet.f32 %3662, 2
  %3672 = fcmp fast olt float %3670, %3671
  br i1 %3672, label %3673, label %3740

; <label>:3673                                    ; preds = %3590
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3674, 1
  %3681 = extractvalue %dx.types.CBufRet.f32 %3676, 1
  %3682 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3683 = extractvalue %dx.types.CBufRet.f32 %3674, 3
  %3684 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3685 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3686 = fadd fast float %3683, %3659
  %3687 = fadd fast float %3684, %3660
  %3688 = fadd fast float %3685, %3661
  %3689 = fmul fast float %3686, %3675
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %3687, float %3677, float %3689)  ; FMad(a,b,c)
  %3691 = call float @dx.op.tertiary.f32(i32 46, float %3688, float %3679, float %3690)  ; FMad(a,b,c)
  %3692 = fmul fast float %3686, %3680
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3687, float %3681, float %3692)  ; FMad(a,b,c)
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %3688, float %3682, float %3693)  ; FMad(a,b,c)
  %3695 = fsub fast float %3691, %3683
  %3696 = fsub fast float %3694, %3684
  %3697 = fsub fast float %3695, %3663
  %3698 = fadd fast float %3697, %3671
  %3699 = fsub fast float %3696, %3664
  %3700 = fadd fast float %3699, %3671
  %3701 = extractvalue %dx.types.CBufRet.f32 %3662, 3
  %3702 = fmul fast float %3698, %3701
  %3703 = fmul fast float %3700, %3701
  %3704 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3705 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3706 = fsub fast float 1.000000e+00, %3704
  %3707 = fsub fast float 1.000000e+00, %3705
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %3706, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = fcmp fast ugt float %3709, 0.000000e+00
  br i1 %3710, label %3711, label %4014

; <label>:3711                                    ; preds = %3673
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 2
  %3714 = fmul fast float %3713, %3709
  %3715 = extractvalue %dx.types.CBufRet.f32 %3712, 3
  %3716 = fadd fast float %3715, %3714
  %3717 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3718 = fadd fast float %3716, %3685
  %3719 = fmul fast float %3691, %3679
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3694, float %3682, float %3719)  ; FMad(a,b,c)
  %3721 = call float @dx.op.tertiary.f32(i32 46, float %3718, float %3717, float %3720)  ; FMad(a,b,c)
  %3722 = fsub fast float %3721, %3685
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 2
  %3725 = fsub fast float %3722, %3724
  %3726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %3706, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %24, float %3706, float %3707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = fadd fast float %3731, %3727
  %3735 = fmul fast float %3734, 0x3F847AE140000000
  %3736 = fadd fast float %3732, %3728
  %3737 = fmul fast float %3736, 0x3F847AE140000000
  %3738 = fadd fast float %3733, %3729
  %3739 = fmul fast float %3738, 0x3F847AE140000000
  br label %4014

; <label>:3740                                    ; preds = %3590
  %3741 = and i32 %187, 1
  %3742 = icmp eq i32 %3741, 0
  br i1 %3742, label %4014, label %3743

; <label>:3743                                    ; preds = %3740
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3752 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3744, 3
  %3754 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3755 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3756 = fadd fast float %3753, %3659
  %3757 = fadd fast float %3754, %3660
  %3758 = fadd fast float %3755, %3661
  %3759 = fmul fast float %3756, %3745
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3747, float %3759)  ; FMad(a,b,c)
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3749, float %3760)  ; FMad(a,b,c)
  %3762 = fmul fast float %3756, %3750
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3751, float %3762)  ; FMad(a,b,c)
  %3764 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3752, float %3763)  ; FMad(a,b,c)
  %3765 = fsub fast float %3761, %3753
  %3766 = fsub fast float %3764, %3754
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.CBufRet.f32 %3767, 3
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 3
  %3774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.i32 %3774, 0
  %3776 = extractvalue %dx.types.CBufRet.i32 %3774, 1
  %3777 = udiv i32 %3776, %3775
  %3778 = fsub fast float %3765, %3768
  %3779 = fsub fast float %3766, %3769
  %3780 = call float @dx.op.binary.f32(i32 35, float %3778, float 0.000000e+00)  ; FMax(a,b)
  %3781 = call float @dx.op.binary.f32(i32 35, float %3779, float 0.000000e+00)  ; FMax(a,b)
  %3782 = call float @dx.op.binary.f32(i32 36, float %3780, float %3770)  ; FMin(a,b)
  %3783 = call float @dx.op.binary.f32(i32 36, float %3781, float %3771)  ; FMin(a,b)
  %3784 = add i32 %3775, -1
  %3785 = add i32 %3777, -1
  %3786 = fmul fast float %3782, %3773
  %3787 = fmul fast float %3783, %3773
  %3788 = fptoui float %3786 to i32
  %3789 = fptoui float %3787 to i32
  %3790 = call i32 @dx.op.binary.i32(i32 40, i32 %3788, i32 %3784)  ; UMin(a,b)
  %3791 = call i32 @dx.op.binary.i32(i32 40, i32 %3789, i32 %3785)  ; UMin(a,b)
  %3792 = mul i32 %3791, %3775
  %3793 = add i32 %3792, %3790
  %3794 = shl i32 %3793, 2
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = icmp eq i32 %3796, -1
  br i1 %3797, label %4014, label %3798

; <label>:3798                                    ; preds = %3743
  %3799 = mul i32 %3796, 148
  %3800 = add i32 %3799, 4
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = add i32 %3799, 8
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = add i32 %3799, 36
  %3807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = add i32 %3799, 60
  %3810 = add i32 %3799, 92
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = add i32 %3799, 116
  %3814 = fsub fast float %3765, %3802
  %3815 = fsub fast float %3766, %3805
  %3816 = fmul fast float %3773, %3814
  %3817 = fmul fast float %3773, %3815
  %3818 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3820 = fsub fast float 1.000000e+00, %3819
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3823 = call float @dx.op.unary.f32(i32 83, float %3818)  ; DerivCoarseX(value)
  %3824 = call float @dx.op.unary.f32(i32 83, float %3820)  ; DerivCoarseX(value)
  %3825 = call float @dx.op.unary.f32(i32 84, float %3818)  ; DerivCoarseY(value)
  %3826 = call float @dx.op.unary.f32(i32 84, float %3820)  ; DerivCoarseY(value)
  %3827 = fmul fast float %3823, %3822
  %3828 = fmul fast float %3824, %3822
  %3829 = fmul fast float %3825, %3822
  %3830 = fmul fast float %3826, %3822
  %3831 = call float @dx.op.dot2.f32(i32 54, float %3829, float %3830, float %3829, float %3830)  ; Dot2(ax,ay,bx,by)
  %3832 = call float @dx.op.dot2.f32(i32 54, float %3827, float %3828, float %3827, float %3828)  ; Dot2(ax,ay,bx,by)
  %3833 = call float @dx.op.binary.f32(i32 35, float %3832, float %3831)  ; FMax(a,b)
  %3834 = call float @dx.op.unary.f32(i32 23, float %3833)  ; Log(value)
  %3835 = fmul fast float %3834, 5.000000e-01
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3838 = fadd fast float %3837, %3835
  %3839 = call float @dx.op.binary.f32(i32 35, float %3838, float 0.000000e+00)  ; FMax(a,b)
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3842 = fadd fast float %3841, %3839
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3845 = fadd fast float %3842, %3844
  %3846 = add i32 %3812, 0
  %3847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3846, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3848 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3847, i32 0)  ; GetDimensions(handle,mipLevel)
  %3849 = extractvalue %dx.types.Dimensions %3848, 0
  %3850 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3849)  ; FirstbitLo(value)
  %3851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.i32 %3851, 1
  %3853 = sub nsw i32 %3852, %3850
  %3854 = sitofp i32 %3853 to float
  %3855 = fsub fast float %3845, %3854
  %3856 = call float @dx.op.binary.f32(i32 35, float %3855, float 0.000000e+00)  ; FMax(a,b)
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3847, %dx.types.Handle %23, float %3818, float %3820, float %3808, float undef, i32 0, i32 0, i32 undef, float %3856)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = fcmp ule float %3858, 0x3FE0101020000000
  %3860 = extractvalue %dx.types.CBufRet.i32 %3851, 0
  %3861 = and i32 %3860, 128
  %3862 = icmp ne i32 %3861, 0
  %3863 = and i1 %3859, %3862
  br i1 %3863, label %4014, label %3864

; <label>:3864                                    ; preds = %3798
  %3865 = add i32 %3799, 20
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = add i32 %3799, 24
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = add i32 %3799, 40
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = add i32 %3799, 96
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3879 = fmul fast float %3878, %3818
  %3880 = fmul fast float %3878, %3820
  %3881 = extractvalue %dx.types.CBufRet.f32 %3877, 3
  %3882 = fadd fast float %3879, %3881
  %3883 = fadd fast float %3880, %3881
  %3884 = add i32 %3876, 0
  %3885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3884, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3886 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3885, i32 0)  ; GetDimensions(handle,mipLevel)
  %3887 = extractvalue %dx.types.Dimensions %3886, 0
  %3888 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3887)  ; FirstbitLo(value)
  %3889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.i32 %3889, 1
  %3891 = sub nsw i32 %3890, %3888
  %3892 = sitofp i32 %3891 to float
  %3893 = fsub fast float %3842, %3892
  %3894 = call float @dx.op.binary.f32(i32 35, float %3893, float 0.000000e+00)  ; FMax(a,b)
  %3895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3885, %dx.types.Handle %23, float %3882, float %3883, float %3873, float undef, i32 0, i32 0, i32 undef, float %3894)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = fmul fast float %3896, %3867
  %3898 = fadd fast float %3897, %3870
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3899, 2
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 3
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 3
  %3907 = extractvalue %dx.types.CBufRet.f32 %3899, 3
  %3908 = fadd fast float %3904, %3765
  %3909 = fadd fast float %3906, %3766
  %3910 = fadd fast float %3898, %3907
  %3911 = fmul fast float %3908, %3900
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3901, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3902, float %3912)  ; FMad(a,b,c)
  %3914 = fsub fast float %3913, %3907
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3917 = fsub fast float %3914, %3916
  %3918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.i32 %3918, 0
  %3920 = call i32 @dx.op.binary.i32(i32 40, i32 %3796, i32 %3919)  ; UMin(a,b)
  %3921 = mul i32 %3920, 36
  %3922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.i32 %3922, 0
  %3924 = add i32 %3921, 4
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = fmul fast float %3926, %3818
  %3928 = fmul fast float %3926, %3820
  %3929 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3930 = fadd fast float %3927, %3929
  %3931 = fadd fast float %3928, %3929
  %3932 = icmp eq i32 %3923, 0
  br i1 %3932, label %4001, label %3933

; <label>:3933                                    ; preds = %3864
  br label %3934

; <label>:3934                                    ; preds = %3991, %3933
  %3935 = phi float [ %3992, %3991 ], [ 0.000000e+00, %3933 ]
  %3936 = phi float [ %3993, %3991 ], [ 0.000000e+00, %3933 ]
  %3937 = phi float [ %3994, %3991 ], [ 0.000000e+00, %3933 ]
  %3938 = phi float [ %3995, %3991 ], [ 0.000000e+00, %3933 ]
  %3939 = phi float [ %3996, %3991 ], [ 0.000000e+00, %3933 ]
  %3940 = phi float [ %3997, %3991 ], [ 0.000000e+00, %3933 ]
  %3941 = phi i32 [ %3998, %3991 ], [ 0, %3933 ]
  %3942 = shl i32 %3941, 2
  %3943 = add i32 %3809, %3942
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = add i32 %3813, %3942
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = add i32 %3948, 0
  %3950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3951 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3950, i32 0)  ; GetDimensions(handle,mipLevel)
  %3952 = extractvalue %dx.types.Dimensions %3951, 0
  %3953 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3952)  ; FirstbitLo(value)
  %3954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.i32 %3954, 1
  %3956 = sub nsw i32 %3955, %3953
  %3957 = sitofp i32 %3956 to float
  %3958 = fsub fast float %3842, %3957
  %3959 = call float @dx.op.binary.f32(i32 35, float %3958, float 0.000000e+00)  ; FMax(a,b)
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3950, %dx.types.Handle %23, float %3930, float %3931, float %3945, float undef, i32 0, i32 0, i32 undef, float %3959)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = fcmp fast ogt float %3961, 0.000000e+00
  br i1 %3962, label %3963, label %3991

; <label>:3963                                    ; preds = %3934
  %3964 = add i32 %3924, %3942
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = and i32 %3966, 32767
  %3968 = mul nuw nsw i32 %3967, 928
  %3969 = add nuw nsw i32 %3968, 48
  %3970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = add nuw nsw i32 %3968, 60
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = fmul fast float %3971, %3961
  %3980 = fmul fast float %3972, %3961
  %3981 = fmul fast float %3973, %3961
  %3982 = fadd fast float %3979, %3935
  %3983 = fadd fast float %3980, %3936
  %3984 = fadd fast float %3981, %3937
  %3985 = fmul fast float %3976, %3961
  %3986 = fmul fast float %3977, %3961
  %3987 = fmul fast float %3978, %3961
  %3988 = fadd fast float %3985, %3938
  %3989 = fadd fast float %3986, %3939
  %3990 = fadd fast float %3987, %3940
  br label %3991

; <label>:3991                                    ; preds = %3963, %3934
  %3992 = phi float [ %3982, %3963 ], [ %3935, %3934 ]
  %3993 = phi float [ %3983, %3963 ], [ %3936, %3934 ]
  %3994 = phi float [ %3984, %3963 ], [ %3937, %3934 ]
  %3995 = phi float [ %3988, %3963 ], [ %3938, %3934 ]
  %3996 = phi float [ %3989, %3963 ], [ %3939, %3934 ]
  %3997 = phi float [ %3990, %3963 ], [ %3940, %3934 ]
  %3998 = add nuw i32 %3941, 1
  %3999 = icmp eq i32 %3998, %3923
  br i1 %3999, label %4000, label %3934

; <label>:4000                                    ; preds = %3991
  br label %4001

; <label>:4001                                    ; preds = %4000, %3864
  %4002 = phi float [ 0.000000e+00, %3864 ], [ %3992, %4000 ]
  %4003 = phi float [ 0.000000e+00, %3864 ], [ %3993, %4000 ]
  %4004 = phi float [ 0.000000e+00, %3864 ], [ %3994, %4000 ]
  %4005 = phi float [ 0.000000e+00, %3864 ], [ %3995, %4000 ]
  %4006 = phi float [ 0.000000e+00, %3864 ], [ %3996, %4000 ]
  %4007 = phi float [ 0.000000e+00, %3864 ], [ %3997, %4000 ]
  %4008 = fadd fast float %4005, %4002
  %4009 = fmul fast float %4008, 0x3F847AE140000000
  %4010 = fadd fast float %4006, %4003
  %4011 = fmul fast float %4010, 0x3F847AE140000000
  %4012 = fadd fast float %4007, %4004
  %4013 = fmul fast float %4012, 0x3F847AE140000000
  br label %4014

; <label>:4014                                    ; preds = %4001, %3798, %3743, %3740, %3711, %3673
  %4015 = phi float [ %3725, %3711 ], [ -1.310720e+05, %3673 ], [ %3917, %4001 ], [ -1.310720e+05, %3743 ], [ -1.310720e+05, %3798 ], [ -1.310720e+05, %3740 ]
  %4016 = phi float [ %3735, %3711 ], [ 0.000000e+00, %3673 ], [ %4009, %4001 ], [ 0.000000e+00, %3743 ], [ 0.000000e+00, %3798 ], [ 0.000000e+00, %3740 ]
  %4017 = phi float [ %3737, %3711 ], [ 0.000000e+00, %3673 ], [ %4011, %4001 ], [ 0.000000e+00, %3743 ], [ 0.000000e+00, %3798 ], [ 0.000000e+00, %3740 ]
  %4018 = phi float [ %3739, %3711 ], [ 0.000000e+00, %3673 ], [ %4013, %4001 ], [ 0.000000e+00, %3743 ], [ 0.000000e+00, %3798 ], [ 0.000000e+00, %3740 ]
  %4019 = phi i1 [ true, %3711 ], [ false, %3673 ], [ true, %4001 ], [ false, %3743 ], [ false, %3798 ], [ false, %3740 ]
  %4020 = and i32 %187, 3
  %4021 = icmp eq i32 %4020, 1
  %4022 = select i1 %4021, float 1.000000e+00, float 0.000000e+00
  %4023 = fsub fast float %4015, %158
  %4024 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4025 = select i1 %4019, float %4024, float 1.000000e+00
  %4026 = fmul fast float %4025, %4022
  %4027 = icmp eq i32 %4020, 3
  %4028 = select i1 %4027, float 1.000000e+00, float %4026
  %4029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4028)  ; FMax(a,b)
  %4030 = fcmp fast olt float %4028, 1.000000e+00
  %4031 = fcmp uge float %43, 0.000000e+00
  %4032 = and i1 %4031, %4030
  br i1 %4032, label %4033, label %4043

; <label>:4033                                    ; preds = %4014
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %23, float %43, float %44, float %45, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = fadd fast float %4035, %4029
  %4039 = fcmp ule float %42, 0.000000e+00
  %4040 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = select i1 %4039, float %4040, float 1.000000e+00
  %4042 = fmul fast float %4041, %4037
  br label %4043

; <label>:4043                                    ; preds = %4033, %4014
  %4044 = phi float [ %4038, %4033 ], [ %4029, %4014 ]
  %4045 = phi float [ %4036, %4033 ], [ 0.000000e+00, %4014 ]
  %4046 = phi float [ %4042, %4033 ], [ 0.000000e+00, %4014 ]
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = fcmp fast une float %4048, 0.000000e+00
  %4051 = fcmp fast une float %4049, 0.000000e+00
  %4052 = or i1 %4050, %4051
  br i1 %4052, label %4053, label %4612

; <label>:4053                                    ; preds = %4043
  br i1 %4050, label %4054, label %4327

; <label>:4054                                    ; preds = %4053
  %4055 = call float @dx.op.unary.f32(i32 23, float %3472)  ; Log(value)
  %4056 = fmul fast float %4055, 4.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 21, float %4056)  ; Exp(value)
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = fmul fast float %4059, %30
  %4061 = fmul fast float %4059, %31
  %4062 = fmul fast float %4059, %32
  %4063 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4064 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4065 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4066 = call float @dx.op.unary.f32(i32 23, float %4063)  ; Log(value)
  %4067 = call float @dx.op.unary.f32(i32 23, float %4064)  ; Log(value)
  %4068 = call float @dx.op.unary.f32(i32 23, float %4065)  ; Log(value)
  %4069 = fmul fast float %4066, 4.000000e+00
  %4070 = fmul fast float %4067, 4.000000e+00
  %4071 = fmul fast float %4068, 4.000000e+00
  %4072 = call float @dx.op.unary.f32(i32 21, float %4069)  ; Exp(value)
  %4073 = call float @dx.op.unary.f32(i32 21, float %4070)  ; Exp(value)
  %4074 = call float @dx.op.unary.f32(i32 21, float %4071)  ; Exp(value)
  %4075 = fadd fast float %4073, %4072
  %4076 = fadd fast float %4075, %4074
  %4077 = fdiv fast float 1.000000e+00, %4076
  %4078 = fmul fast float %4077, %4072
  %4079 = fcmp fast ogt float %39, 0.000000e+00
  %4080 = fcmp fast ogt float %40, 0.000000e+00
  %4081 = fcmp fast ogt float %41, 0.000000e+00
  %4082 = fcmp fast olt float %39, 0.000000e+00
  %4083 = fcmp fast olt float %40, 0.000000e+00
  %4084 = fcmp fast olt float %41, 0.000000e+00
  %4085 = zext i1 %4079 to i32
  %4086 = zext i1 %4080 to i32
  %4087 = zext i1 %4081 to i32
  %4088 = zext i1 %4082 to i32
  %4089 = zext i1 %4083 to i32
  %4090 = zext i1 %4084 to i32
  %4091 = sub nsw i32 %4085, %4088
  %4092 = sub nsw i32 %4086, %4089
  %4093 = sub nsw i32 %4087, %4090
  %4094 = call float @dx.op.unary.f32(i32 83, float %4060)  ; DerivCoarseX(value)
  %4095 = call float @dx.op.unary.f32(i32 83, float %4061)  ; DerivCoarseX(value)
  %4096 = call float @dx.op.unary.f32(i32 83, float %4062)  ; DerivCoarseX(value)
  %4097 = call float @dx.op.unary.f32(i32 84, float %4060)  ; DerivCoarseY(value)
  %4098 = call float @dx.op.unary.f32(i32 84, float %4061)  ; DerivCoarseY(value)
  %4099 = call float @dx.op.unary.f32(i32 84, float %4062)  ; DerivCoarseY(value)
  %4100 = fcmp fast ole float %219, %4078
  %4101 = fmul fast float %4077, %4075
  %4102 = fcmp fast ole float %219, %4101
  %4103 = select i1 %4102, float %4062, float %4060
  %4104 = select i1 %4102, float %4060, float %4061
  %4105 = select i1 %4100, float %4061, float %4103
  %4106 = select i1 %4100, float %4062, float %4104
  %4107 = select i1 %4102, float %4096, float %4094
  %4108 = select i1 %4102, float %4094, float %4095
  %4109 = select i1 %4100, float %4095, float %4107
  %4110 = select i1 %4100, float %4096, float %4108
  %4111 = select i1 %4102, float %4099, float %4097
  %4112 = select i1 %4102, float %4097, float %4098
  %4113 = select i1 %4100, float %4098, float %4111
  %4114 = select i1 %4100, float %4099, float %4112
  %4115 = call float @dx.op.unary.f32(i32 27, float %4105)  ; Round_ni(value)
  %4116 = call float @dx.op.unary.f32(i32 27, float %4106)  ; Round_ni(value)
  %4117 = fptosi float %4115 to i32
  %4118 = fptosi float %4116 to i32
  %4119 = xor i32 %4118, %4117
  %4120 = sitofp i32 %4119 to float
  %4121 = fptosi float %4120 to i32
  %4122 = sitofp i32 %4121 to float
  %4123 = fmul fast float %4122, 0x3FE3C6EF40000000
  %4124 = frem fast float %4115, 2.560000e+02
  %4125 = frem fast float %4116, 2.560000e+02
  %4126 = fptoui float %4124 to i32
  %4127 = fptoui float %4125 to i32
  %4128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4126, i32 %4127, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = fadd fast float %4129, %4123
  %4133 = fadd fast float %4130, %4123
  %4134 = fadd fast float %4131, %4123
  %4135 = call float @dx.op.unary.f32(i32 22, float %4132)  ; Frc(value)
  %4136 = call float @dx.op.unary.f32(i32 22, float %4133)  ; Frc(value)
  %4137 = call float @dx.op.unary.f32(i32 22, float %4134)  ; Frc(value)
  %4138 = fmul fast float %4137, 0x401921FB60000000
  %4139 = call float @dx.op.unary.f32(i32 13, float %4138)  ; Sin(value)
  %4140 = call float @dx.op.unary.f32(i32 12, float %4138)  ; Cos(value)
  %4141 = fsub fast float -0.000000e+00, %4140
  %4142 = fmul fast float %4140, %4105
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4106, float %4142)  ; FMad(a,b,c)
  %4144 = fmul fast float %4139, %4105
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4106, float %4144)  ; FMad(a,b,c)
  %4146 = fadd fast float %4143, %4135
  %4147 = fadd fast float %4145, %4136
  %4148 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4149 = bitcast float %4148 to i32
  %4150 = icmp eq i32 %4149, 0
  br i1 %4150, label %4189, label %4151

; <label>:4151                                    ; preds = %4054
  %4152 = add i32 %4149, 0
  %4153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4154 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4153, %dx.types.Handle %74, float %4146, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4109, float %4110, float undef, float %4113, float %4114, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4159 = fsub fast float 1.000000e+00, %4048
  %4160 = call float @dx.op.binary.f32(i32 35, float %4159, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4161 = bitcast float %4048 to i32
  %4162 = sitofp i32 %4161 to float
  %4163 = fadd fast float %4162, 0xC1CFBF8940000000
  %4164 = fmul fast float %4158, %4163
  %4165 = fadd fast float %4164, 0x41CFBF8940000000
  %4166 = fptosi float %4165 to i32
  %4167 = bitcast i32 %4166 to float
  %4168 = bitcast float %4160 to i32
  %4169 = sitofp i32 %4168 to float
  %4170 = fadd fast float %4169, 0xC1CFBF8940000000
  %4171 = fmul fast float %4170, %4158
  %4172 = fadd fast float %4171, 0x41CFBF8940000000
  %4173 = fptosi float %4172 to i32
  %4174 = bitcast i32 %4173 to float
  %4175 = fmul fast float %4167, %4157
  %4176 = fmul fast float %4174, %4157
  %4177 = fsub fast float %4160, %4175
  %4178 = fadd fast float %4176, %4160
  %4179 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = fsub fast float %4155, %4179
  %4182 = fsub fast float %4180, %4179
  %4183 = bitcast float %4182 to i32
  %4184 = sub nsw i32 2129859010, %4183
  %4185 = bitcast i32 %4184 to float
  %4186 = fmul fast float %4185, %4181
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fcmp fast olt float %4187, 0x3F70101020000000
  br i1 %4188, label %4327, label %4189

; <label>:4189                                    ; preds = %4151, %4054
  %4190 = phi float [ %4187, %4151 ], [ %4048, %4054 ]
  %4191 = fmul fast float %4190, %4057
  %4192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.i32 %4192, 1
  %4194 = extractvalue %dx.types.CBufRet.i32 %4192, 0
  %4195 = add i32 %4194, 0
  %4196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4197 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4196, %dx.types.Handle %73, float %4146, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4109, float %4110, float undef, float %4113, float %4114, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.ResRet.f32 %4197, 3
  %4202 = and i32 %4193, 255
  %4203 = uitofp i32 %4202 to float
  %4204 = lshr i32 %4193, 8
  %4205 = and i32 %4204, 255
  %4206 = uitofp i32 %4205 to float
  %4207 = fmul fast float %4201, %4203
  %4208 = fadd fast float %4207, %4206
  %4209 = fmul fast float %4208, 0x3F70101000000000
  %4210 = fadd fast float %4209, 0xBFB99999A0000000
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = fmul fast float %4211, 0x3FF1C71C80000000
  %4213 = call float @dx.op.binary.f32(i32 36, float %4209, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4214 = fsub fast float 1.000000e+00, %4212
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fmul fast float %4215, %4198
  %4217 = fmul fast float %4215, %4199
  %4218 = fmul fast float %4215, %4200
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = fmul fast float %4212, %4198
  %4223 = fmul fast float %4212, %4199
  %4224 = fmul fast float %4212, %4200
  %4225 = fadd fast float %4222, %4213
  %4226 = fadd fast float %4223, %4213
  %4227 = fadd fast float %4224, %4213
  %4228 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4230 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.i32 %4231, 3
  %4233 = extractvalue %dx.types.CBufRet.i32 %4231, 2
  %4234 = add i32 %4233, 0
  %4235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4236 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4235, %dx.types.Handle %73, float %4146, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4109, float %4110, float undef, float %4113, float %4114, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.ResRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.ResRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.ResRet.f32 %4236, 3
  %4241 = and i32 %4232, 255
  %4242 = uitofp i32 %4241 to float
  %4243 = lshr i32 %4232, 8
  %4244 = and i32 %4243, 255
  %4245 = uitofp i32 %4244 to float
  %4246 = lshr i32 %4232, 16
  %4247 = and i32 %4246, 255
  %4248 = uitofp i32 %4247 to float
  %4249 = fmul fast float %4248, 0x3F70101000000000
  %4250 = fmul fast float %4237, %4242
  %4251 = fadd fast float %4250, %4245
  %4252 = fmul fast float %4251, 0x3F70101000000000
  %4253 = fadd fast float %4238, -5.000000e-01
  %4254 = fadd fast float %4240, -5.000000e-01
  %4255 = fmul fast float %4253, %4249
  %4256 = fmul fast float %4254, %4249
  %4257 = fadd fast float %4255, 5.000000e-01
  %4258 = fadd fast float %4256, 5.000000e-01
  %4259 = fmul fast float %4257, 2.000000e+00
  %4260 = fadd fast float %4259, -1.000000e+00
  %4261 = fmul fast float %4258, 2.000000e+00
  %4262 = fadd fast float %4261, -1.000000e+00
  %4263 = fadd fast float %4260, %4262
  %4264 = fmul fast float %4263, 5.000000e-01
  %4265 = fsub fast float %4260, %4262
  %4266 = fmul fast float %4265, 5.000000e-01
  %4267 = call float @dx.op.unary.f32(i32 6, float %4264)  ; FAbs(value)
  %4268 = fsub fast float 1.000000e+00, %4267
  %4269 = call float @dx.op.unary.f32(i32 6, float %4266)  ; FAbs(value)
  %4270 = fsub fast float %4268, %4269
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4266, float %4270, float %4264, float %4266, float %4270)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call float @dx.op.unary.f32(i32 25, float %4271)  ; Rsqrt(value)
  %4273 = fmul fast float %4264, %4272
  %4274 = fmul fast float %4266, %4272
  %4275 = select i1 %4102, i32 %4092, i32 %4093
  %4276 = select i1 %4100, i32 %4091, i32 %4275
  %4277 = sitofp i32 %4276 to float
  %4278 = fmul fast float %4270, %4277
  %4279 = fmul fast float %4278, %4272
  %4280 = select i1 %4102, float %4279, float %4274
  %4281 = select i1 %4102, float %4274, float %4279
  %4282 = select i1 %4100, float %4279, float %4273
  %4283 = select i1 %4100, float %4274, float %4280
  %4284 = select i1 %4100, float %4273, float %4281
  %4285 = fsub fast float %4219, %3649
  %4286 = fsub fast float %4220, %3650
  %4287 = fsub fast float %4221, %3651
  %4288 = fmul fast float %4285, %4191
  %4289 = fmul fast float %4286, %4191
  %4290 = fmul fast float %4287, %4191
  %4291 = fadd fast float %4288, %3649
  %4292 = fadd fast float %4289, %3650
  %4293 = fadd fast float %4290, %3651
  %4294 = fsub fast float %4228, %3568
  %4295 = fsub fast float %4229, %3569
  %4296 = fsub fast float %4230, %3570
  %4297 = fmul fast float %4294, %4191
  %4298 = fmul fast float %4295, %4191
  %4299 = fmul fast float %4296, %4191
  %4300 = fadd fast float %4297, %3568
  %4301 = fadd fast float %4298, %3569
  %4302 = fadd fast float %4299, %3570
  %4303 = fadd fast float %4282, %3547
  %4304 = fadd fast float %4283, %3548
  %4305 = fadd fast float %4284, %3549
  %4306 = call float @dx.op.dot3.f32(i32 55, float %4303, float %4304, float %4305, float %4303, float %4304, float %4305)  ; Dot3(ax,ay,az,bx,by,bz)
  %4307 = call float @dx.op.unary.f32(i32 25, float %4306)  ; Rsqrt(value)
  %4308 = fmul fast float %4303, %4307
  %4309 = fmul fast float %4304, %4307
  %4310 = fmul fast float %4305, %4307
  %4311 = fsub fast float %4308, %3547
  %4312 = fsub fast float %4309, %3548
  %4313 = fsub fast float %4310, %3549
  %4314 = fmul fast float %4311, %4191
  %4315 = fmul fast float %4312, %4191
  %4316 = fmul fast float %4313, %4191
  %4317 = fadd fast float %4314, %3547
  %4318 = fadd fast float %4315, %3548
  %4319 = fadd fast float %4316, %3549
  %4320 = call float @dx.op.binary.f32(i32 36, float %3472, float %4239)  ; FMin(a,b)
  %4321 = fsub fast float %4320, %3472
  %4322 = fmul fast float %4321, %4191
  %4323 = fadd fast float %4322, %3472
  %4324 = fsub fast float %4252, %3652
  %4325 = fmul fast float %4324, %4191
  %4326 = fadd fast float %4325, %3652
  br label %4327

; <label>:4327                                    ; preds = %4189, %4151, %4053
  %4328 = phi float [ %4300, %4189 ], [ %3568, %4151 ], [ %3568, %4053 ]
  %4329 = phi float [ %4301, %4189 ], [ %3569, %4151 ], [ %3569, %4053 ]
  %4330 = phi float [ %4302, %4189 ], [ %3570, %4151 ], [ %3570, %4053 ]
  %4331 = phi float [ %4291, %4189 ], [ %3649, %4151 ], [ %3649, %4053 ]
  %4332 = phi float [ %4292, %4189 ], [ %3650, %4151 ], [ %3650, %4053 ]
  %4333 = phi float [ %4293, %4189 ], [ %3651, %4151 ], [ %3651, %4053 ]
  %4334 = phi float [ %4317, %4189 ], [ %3547, %4151 ], [ %3547, %4053 ]
  %4335 = phi float [ %4318, %4189 ], [ %3548, %4151 ], [ %3548, %4053 ]
  %4336 = phi float [ %4319, %4189 ], [ %3549, %4151 ], [ %3549, %4053 ]
  %4337 = phi float [ %4326, %4189 ], [ %3652, %4151 ], [ %3652, %4053 ]
  %4338 = phi float [ %4323, %4189 ], [ %3472, %4151 ], [ %3472, %4053 ]
  br i1 %4051, label %4339, label %4612

; <label>:4339                                    ; preds = %4327
  %4340 = call float @dx.op.unary.f32(i32 23, float %4338)  ; Log(value)
  %4341 = fmul fast float %4340, 4.000000e+00
  %4342 = call float @dx.op.unary.f32(i32 21, float %4341)  ; Exp(value)
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = fmul fast float %4344, %30
  %4346 = fmul fast float %4344, %31
  %4347 = fmul fast float %4344, %32
  %4348 = call float @dx.op.unary.f32(i32 6, float %39)  ; FAbs(value)
  %4349 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %4351 = call float @dx.op.unary.f32(i32 23, float %4348)  ; Log(value)
  %4352 = call float @dx.op.unary.f32(i32 23, float %4349)  ; Log(value)
  %4353 = call float @dx.op.unary.f32(i32 23, float %4350)  ; Log(value)
  %4354 = fmul fast float %4351, 4.000000e+00
  %4355 = fmul fast float %4352, 4.000000e+00
  %4356 = fmul fast float %4353, 4.000000e+00
  %4357 = call float @dx.op.unary.f32(i32 21, float %4354)  ; Exp(value)
  %4358 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4359 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4360 = fadd fast float %4358, %4357
  %4361 = fadd fast float %4360, %4359
  %4362 = fdiv fast float 1.000000e+00, %4361
  %4363 = fmul fast float %4362, %4357
  %4364 = fcmp fast ogt float %39, 0.000000e+00
  %4365 = fcmp fast ogt float %40, 0.000000e+00
  %4366 = fcmp fast ogt float %41, 0.000000e+00
  %4367 = fcmp fast olt float %39, 0.000000e+00
  %4368 = fcmp fast olt float %40, 0.000000e+00
  %4369 = fcmp fast olt float %41, 0.000000e+00
  %4370 = zext i1 %4364 to i32
  %4371 = zext i1 %4365 to i32
  %4372 = zext i1 %4366 to i32
  %4373 = zext i1 %4367 to i32
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = sub nsw i32 %4370, %4373
  %4377 = sub nsw i32 %4371, %4374
  %4378 = sub nsw i32 %4372, %4375
  %4379 = call float @dx.op.unary.f32(i32 83, float %4345)  ; DerivCoarseX(value)
  %4380 = call float @dx.op.unary.f32(i32 83, float %4346)  ; DerivCoarseX(value)
  %4381 = call float @dx.op.unary.f32(i32 83, float %4347)  ; DerivCoarseX(value)
  %4382 = call float @dx.op.unary.f32(i32 84, float %4345)  ; DerivCoarseY(value)
  %4383 = call float @dx.op.unary.f32(i32 84, float %4346)  ; DerivCoarseY(value)
  %4384 = call float @dx.op.unary.f32(i32 84, float %4347)  ; DerivCoarseY(value)
  %4385 = fcmp fast ole float %219, %4363
  %4386 = fmul fast float %4362, %4360
  %4387 = fcmp fast ole float %219, %4386
  %4388 = select i1 %4387, float %4347, float %4345
  %4389 = select i1 %4387, float %4345, float %4346
  %4390 = select i1 %4385, float %4346, float %4388
  %4391 = select i1 %4385, float %4347, float %4389
  %4392 = select i1 %4387, float %4381, float %4379
  %4393 = select i1 %4387, float %4379, float %4380
  %4394 = select i1 %4385, float %4380, float %4392
  %4395 = select i1 %4385, float %4381, float %4393
  %4396 = select i1 %4387, float %4384, float %4382
  %4397 = select i1 %4387, float %4382, float %4383
  %4398 = select i1 %4385, float %4383, float %4396
  %4399 = select i1 %4385, float %4384, float %4397
  %4400 = call float @dx.op.unary.f32(i32 27, float %4390)  ; Round_ni(value)
  %4401 = call float @dx.op.unary.f32(i32 27, float %4391)  ; Round_ni(value)
  %4402 = fptosi float %4400 to i32
  %4403 = fptosi float %4401 to i32
  %4404 = xor i32 %4403, %4402
  %4405 = sitofp i32 %4404 to float
  %4406 = fptosi float %4405 to i32
  %4407 = sitofp i32 %4406 to float
  %4408 = fmul fast float %4407, 0x3FE3C6EF40000000
  %4409 = frem fast float %4400, 2.560000e+02
  %4410 = frem fast float %4401, 2.560000e+02
  %4411 = fptoui float %4409 to i32
  %4412 = fptoui float %4410 to i32
  %4413 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %4411, i32 %4412, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = fadd fast float %4414, %4408
  %4418 = fadd fast float %4415, %4408
  %4419 = fadd fast float %4416, %4408
  %4420 = call float @dx.op.unary.f32(i32 22, float %4417)  ; Frc(value)
  %4421 = call float @dx.op.unary.f32(i32 22, float %4418)  ; Frc(value)
  %4422 = call float @dx.op.unary.f32(i32 22, float %4419)  ; Frc(value)
  %4423 = fmul fast float %4422, 0x401921FB60000000
  %4424 = call float @dx.op.unary.f32(i32 13, float %4423)  ; Sin(value)
  %4425 = call float @dx.op.unary.f32(i32 12, float %4423)  ; Cos(value)
  %4426 = fsub fast float -0.000000e+00, %4425
  %4427 = fmul fast float %4425, %4390
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4391, float %4427)  ; FMad(a,b,c)
  %4429 = fmul fast float %4424, %4390
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4426, float %4391, float %4429)  ; FMad(a,b,c)
  %4431 = fadd fast float %4428, %4420
  %4432 = fadd fast float %4430, %4421
  %4433 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4434 = bitcast float %4433 to i32
  %4435 = icmp eq i32 %4434, 0
  br i1 %4435, label %4474, label %4436

; <label>:4436                                    ; preds = %4339
  %4437 = add i32 %4434, 0
  %4438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4439 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4438, %dx.types.Handle %74, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4441, 2
  %4444 = fsub fast float 1.000000e+00, %4049
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4446 = bitcast float %4049 to i32
  %4447 = sitofp i32 %4446 to float
  %4448 = fadd fast float %4447, 0xC1CFBF8940000000
  %4449 = fmul fast float %4443, %4448
  %4450 = fadd fast float %4449, 0x41CFBF8940000000
  %4451 = fptosi float %4450 to i32
  %4452 = bitcast i32 %4451 to float
  %4453 = bitcast float %4445 to i32
  %4454 = sitofp i32 %4453 to float
  %4455 = fadd fast float %4454, 0xC1CFBF8940000000
  %4456 = fmul fast float %4455, %4443
  %4457 = fadd fast float %4456, 0x41CFBF8940000000
  %4458 = fptosi float %4457 to i32
  %4459 = bitcast i32 %4458 to float
  %4460 = fmul fast float %4452, %4442
  %4461 = fmul fast float %4459, %4442
  %4462 = fsub fast float %4445, %4460
  %4463 = fadd fast float %4461, %4445
  %4464 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4466 = fsub fast float %4440, %4464
  %4467 = fsub fast float %4465, %4464
  %4468 = bitcast float %4467 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4466
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fcmp fast olt float %4472, 0x3F70101020000000
  br i1 %4473, label %4612, label %4474

; <label>:4474                                    ; preds = %4436, %4339
  %4475 = phi float [ %4472, %4436 ], [ %4049, %4339 ]
  %4476 = fmul fast float %4475, %4342
  %4477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.i32 %4477, 1
  %4479 = extractvalue %dx.types.CBufRet.i32 %4477, 0
  %4480 = add i32 %4479, 0
  %4481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4481, %dx.types.Handle %73, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.ResRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.ResRet.f32 %4482, 2
  %4486 = extractvalue %dx.types.ResRet.f32 %4482, 3
  %4487 = and i32 %4478, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = lshr i32 %4478, 8
  %4490 = and i32 %4489, 255
  %4491 = uitofp i32 %4490 to float
  %4492 = fmul fast float %4486, %4488
  %4493 = fadd fast float %4492, %4491
  %4494 = fmul fast float %4493, 0x3F70101000000000
  %4495 = fadd fast float %4494, 0xBFB99999A0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 0x3FF1C71C80000000
  %4498 = call float @dx.op.binary.f32(i32 36, float %4494, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4499 = fsub fast float 1.000000e+00, %4497
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, %4483
  %4502 = fmul fast float %4500, %4484
  %4503 = fmul fast float %4500, %4485
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = fmul fast float %4497, %4483
  %4508 = fmul fast float %4497, %4484
  %4509 = fmul fast float %4497, %4485
  %4510 = fadd fast float %4507, %4498
  %4511 = fadd fast float %4508, %4498
  %4512 = fadd fast float %4509, %4498
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.i32 %4516, 3
  %4518 = extractvalue %dx.types.CBufRet.i32 %4516, 2
  %4519 = add i32 %4518, 0
  %4520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4520, %dx.types.Handle %73, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float %4394, float %4395, float undef, float %4398, float %4399, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.ResRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.ResRet.f32 %4521, 2
  %4525 = extractvalue %dx.types.ResRet.f32 %4521, 3
  %4526 = and i32 %4517, 255
  %4527 = uitofp i32 %4526 to float
  %4528 = lshr i32 %4517, 8
  %4529 = and i32 %4528, 255
  %4530 = uitofp i32 %4529 to float
  %4531 = lshr i32 %4517, 16
  %4532 = and i32 %4531, 255
  %4533 = uitofp i32 %4532 to float
  %4534 = fmul fast float %4533, 0x3F70101000000000
  %4535 = fmul fast float %4522, %4527
  %4536 = fadd fast float %4535, %4530
  %4537 = fmul fast float %4536, 0x3F70101000000000
  %4538 = fadd fast float %4523, -5.000000e-01
  %4539 = fadd fast float %4525, -5.000000e-01
  %4540 = fmul fast float %4538, %4534
  %4541 = fmul fast float %4539, %4534
  %4542 = fadd fast float %4540, 5.000000e-01
  %4543 = fadd fast float %4541, 5.000000e-01
  %4544 = fmul fast float %4542, 2.000000e+00
  %4545 = fadd fast float %4544, -1.000000e+00
  %4546 = fmul fast float %4543, 2.000000e+00
  %4547 = fadd fast float %4546, -1.000000e+00
  %4548 = fadd fast float %4545, %4547
  %4549 = fmul fast float %4548, 5.000000e-01
  %4550 = fsub fast float %4545, %4547
  %4551 = fmul fast float %4550, 5.000000e-01
  %4552 = call float @dx.op.unary.f32(i32 6, float %4549)  ; FAbs(value)
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4555 = fsub fast float %4553, %4554
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4551, float %4555, float %4549, float %4551, float %4555)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 25, float %4556)  ; Rsqrt(value)
  %4558 = fmul fast float %4549, %4557
  %4559 = fmul fast float %4551, %4557
  %4560 = select i1 %4387, i32 %4377, i32 %4378
  %4561 = select i1 %4385, i32 %4376, i32 %4560
  %4562 = sitofp i32 %4561 to float
  %4563 = fmul fast float %4555, %4562
  %4564 = fmul fast float %4563, %4557
  %4565 = select i1 %4387, float %4564, float %4559
  %4566 = select i1 %4387, float %4559, float %4564
  %4567 = select i1 %4385, float %4564, float %4558
  %4568 = select i1 %4385, float %4559, float %4565
  %4569 = select i1 %4385, float %4558, float %4566
  %4570 = fsub fast float %4504, %4331
  %4571 = fsub fast float %4505, %4332
  %4572 = fsub fast float %4506, %4333
  %4573 = fmul fast float %4570, %4476
  %4574 = fmul fast float %4571, %4476
  %4575 = fmul fast float %4572, %4476
  %4576 = fadd fast float %4573, %4331
  %4577 = fadd fast float %4574, %4332
  %4578 = fadd fast float %4575, %4333
  %4579 = fsub fast float %4513, %4328
  %4580 = fsub fast float %4514, %4329
  %4581 = fsub fast float %4515, %4330
  %4582 = fmul fast float %4579, %4476
  %4583 = fmul fast float %4580, %4476
  %4584 = fmul fast float %4581, %4476
  %4585 = fadd fast float %4582, %4328
  %4586 = fadd fast float %4583, %4329
  %4587 = fadd fast float %4584, %4330
  %4588 = fadd fast float %4567, %4334
  %4589 = fadd fast float %4568, %4335
  %4590 = fadd fast float %4569, %4336
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4588, float %4589, float %4590, float %4588, float %4589, float %4590)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = call float @dx.op.unary.f32(i32 25, float %4591)  ; Rsqrt(value)
  %4593 = fmul fast float %4588, %4592
  %4594 = fmul fast float %4589, %4592
  %4595 = fmul fast float %4590, %4592
  %4596 = fsub fast float %4593, %4334
  %4597 = fsub fast float %4594, %4335
  %4598 = fsub fast float %4595, %4336
  %4599 = fmul fast float %4596, %4476
  %4600 = fmul fast float %4597, %4476
  %4601 = fmul fast float %4598, %4476
  %4602 = fadd fast float %4599, %4334
  %4603 = fadd fast float %4600, %4335
  %4604 = fadd fast float %4601, %4336
  %4605 = call float @dx.op.binary.f32(i32 36, float %4338, float %4524)  ; FMin(a,b)
  %4606 = fsub fast float %4605, %4338
  %4607 = fmul fast float %4606, %4476
  %4608 = fadd fast float %4607, %4338
  %4609 = fsub fast float %4537, %4337
  %4610 = fmul fast float %4609, %4476
  %4611 = fadd fast float %4610, %4337
  br label %4612

; <label>:4612                                    ; preds = %4474, %4436, %4327, %4043
  %4613 = phi float [ %4585, %4474 ], [ %4328, %4436 ], [ %4328, %4327 ], [ %3568, %4043 ]
  %4614 = phi float [ %4586, %4474 ], [ %4329, %4436 ], [ %4329, %4327 ], [ %3569, %4043 ]
  %4615 = phi float [ %4587, %4474 ], [ %4330, %4436 ], [ %4330, %4327 ], [ %3570, %4043 ]
  %4616 = phi float [ %4576, %4474 ], [ %4331, %4436 ], [ %4331, %4327 ], [ %3649, %4043 ]
  %4617 = phi float [ %4577, %4474 ], [ %4332, %4436 ], [ %4332, %4327 ], [ %3650, %4043 ]
  %4618 = phi float [ %4578, %4474 ], [ %4333, %4436 ], [ %4333, %4327 ], [ %3651, %4043 ]
  %4619 = phi float [ %4602, %4474 ], [ %4334, %4436 ], [ %4334, %4327 ], [ %3547, %4043 ]
  %4620 = phi float [ %4603, %4474 ], [ %4335, %4436 ], [ %4335, %4327 ], [ %3548, %4043 ]
  %4621 = phi float [ %4604, %4474 ], [ %4336, %4436 ], [ %4336, %4327 ], [ %3549, %4043 ]
  %4622 = phi float [ %4611, %4474 ], [ %4337, %4436 ], [ %4337, %4327 ], [ %3652, %4043 ]
  %4623 = phi float [ %4608, %4474 ], [ %4338, %4436 ], [ %4338, %4327 ], [ %3472, %4043 ]
  %4624 = fcmp fast une float %4047, 0.000000e+00
  %4625 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 25, float %4625)  ; Rsqrt(value)
  br i1 %4624, label %4634, label %4627

; <label>:4627                                    ; preds = %4612
  %4628 = fmul fast float %4626, %156
  %4629 = fmul fast float %4626, %157
  %4630 = fmul fast float %4626, %158
  %4631 = fsub fast float -0.000000e+00, %4628
  %4632 = fsub fast float -0.000000e+00, %4629
  %4633 = fsub fast float -0.000000e+00, %4630
  br label %4803

; <label>:4634                                    ; preds = %4612
  %4635 = fmul fast float %156, %4626
  %4636 = fsub fast float -0.000000e+00, %4635
  %4637 = fmul fast float %157, %4626
  %4638 = fsub fast float -0.000000e+00, %4637
  %4639 = fmul fast float %158, %4626
  %4640 = fsub fast float -0.000000e+00, %4639
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4638, float %4640, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = fmul fast float %4047, 2.500000e+00
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fmul fast float %4047, 0x4013FFFFE0000000
  %4645 = fadd fast float %4644, 0xBFFFFFFFE0000000
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4047, 0x4004000020000000
  %4648 = fadd fast float %4647, 0xBFF8000040000000
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %3550, 1.000000e+01
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, 2.000000e+00
  %4653 = fsub fast float 3.000000e+00, %4652
  %4654 = fmul fast float %4651, %4651
  %4655 = fmul fast float %4654, %4653
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = fmul fast float %4622, 0x3FF75C2900000000
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fsub fast float 0x3FE3333340000000, %4658
  %4660 = fmul fast float %4659, 0x400AAAAAA0000000
  %4661 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4662 = fmul fast float %4656, %4661
  %4663 = fmul fast float %4616, 0x3FEA2B8620000000
  %4664 = fmul fast float %4617, 0x3FEA2B8620000000
  %4665 = fmul fast float %4618, 0x3FEA2B8620000000
  %4666 = fadd fast float %4663, 0x3FC81DFBA0000000
  %4667 = fmul fast float %4666, %4616
  %4668 = fadd fast float %4667, 0x3F910E6020000000
  %4669 = fadd fast float %4664, 0x3FC81DFBA0000000
  %4670 = fmul fast float %4669, %4617
  %4671 = fadd fast float %4670, 0x3F910E6020000000
  %4672 = fadd fast float %4665, 0x3FC81DFBA0000000
  %4673 = fmul fast float %4672, %4618
  %4674 = fadd fast float %4673, 0x3F910E6020000000
  %4675 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = fsub fast float %4675, %4616
  %4679 = fsub fast float %4676, %4617
  %4680 = fsub fast float %4677, %4618
  %4681 = fmul fast float %4678, %4643
  %4682 = fmul fast float %4681, %4662
  %4683 = fmul fast float %4679, %4643
  %4684 = fmul fast float %4683, %4662
  %4685 = fmul fast float %4662, %4643
  %4686 = fmul fast float %4685, %4680
  %4687 = fadd fast float %4682, %4616
  %4688 = fadd fast float %4684, %4617
  %4689 = fadd fast float %4686, %4618
  %4690 = fmul fast float %4623, %4623
  %4691 = fmul fast float %4690, %4690
  %4692 = fadd fast float %4646, 1.000000e+00
  %4693 = fsub fast float %4692, %4662
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fsub fast float 1.000000e+00, %4691
  %4698 = call float @dx.op.binary.f32(i32 36, float %4694, float %4697)  ; FMin(a,b)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4698, float %4699)  ; FMax(a,b)
  %4701 = fadd fast float %4696, 0xBFE4CCCCC0000000
  %4702 = fmul fast float %4701, 0x4006DB6DA0000000
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, 2.000000e+00
  %4705 = fsub fast float 3.000000e+00, %4704
  %4706 = bitcast float %4613 to i32
  %4707 = ashr i32 %4706, 1
  %4708 = add nsw i32 %4707, 532487669
  %4709 = bitcast i32 %4708 to float
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4713, 2.000000e+00
  %4715 = bitcast float %4614 to i32
  %4716 = ashr i32 %4715, 1
  %4717 = add nsw i32 %4716, 532487669
  %4718 = bitcast i32 %4717 to float
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sub nsw i32 2129859010, %4720
  %4722 = bitcast i32 %4721 to float
  %4723 = fmul fast float %4722, 2.000000e+00
  %4724 = bitcast float %4615 to i32
  %4725 = ashr i32 %4724, 1
  %4726 = add nsw i32 %4725, 532487669
  %4727 = bitcast i32 %4726 to float
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = bitcast float %4728 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4731, 2.000000e+00
  %4733 = fsub fast float 0x4002A9FBE0000000, %4714
  %4734 = fadd fast float %4714, 0x3FD54FDF00000000
  %4735 = bitcast float %4734 to i32
  %4736 = sub nsw i32 2129859010, %4735
  %4737 = bitcast i32 %4736 to float
  %4738 = fmul fast float %4737, %4733
  %4739 = fmul fast float %4738, %4738
  %4740 = fsub fast float 0x4002A9FBE0000000, %4723
  %4741 = fadd fast float %4723, 0x3FD54FDF00000000
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = fmul fast float %4744, %4740
  %4746 = fmul fast float %4745, %4745
  %4747 = fsub fast float 0x4002A9FBE0000000, %4732
  %4748 = fadd fast float %4732, 0x3FD54FDF00000000
  %4749 = bitcast float %4748 to i32
  %4750 = sub nsw i32 2129859010, %4749
  %4751 = bitcast i32 %4750 to float
  %4752 = fmul fast float %4751, %4747
  %4753 = fmul fast float %4752, %4752
  %4754 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4739)  ; FMax(a,b)
  %4755 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4746)  ; FMax(a,b)
  %4756 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4753)  ; FMax(a,b)
  %4757 = fsub fast float 1.000000e+00, %4641
  %4758 = fadd fast float %4757, %4656
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fsub fast float 1.000000e+00, %4028
  %4761 = fmul fast float %4700, %4760
  %4762 = fmul fast float %4703, %4703
  %4763 = fmul fast float %4762, %4761
  %4764 = fmul fast float %4763, %4705
  %4765 = fmul fast float %4760, 0xBFE99999A0000000
  %4766 = fmul fast float %4765, %4643
  %4767 = fmul fast float %4766, %4662
  %4768 = fadd fast float %4767, 1.000000e+00
  %4769 = fadd fast float %4622, -1.000000e+00
  %4770 = fmul fast float %4768, %4769
  %4771 = fadd fast float %4770, 1.000000e+00
  %4772 = fsub fast float %4754, %4613
  %4773 = fsub fast float %4755, %4614
  %4774 = fsub fast float %4756, %4615
  %4775 = fmul fast float %4764, %4772
  %4776 = fmul fast float %4764, %4773
  %4777 = fmul fast float %4764, %4774
  %4778 = fadd fast float %4775, %4613
  %4779 = fadd fast float %4776, %4614
  %4780 = fadd fast float %4777, %4615
  %4781 = fsub fast float %84, %4619
  %4782 = fsub fast float %85, %4620
  %4783 = fsub fast float %86, %4621
  %4784 = fmul fast float %4764, %4781
  %4785 = fmul fast float %4764, %4782
  %4786 = fmul fast float %4764, %4783
  %4787 = fadd fast float %4784, %4619
  %4788 = fadd fast float %4785, %4620
  %4789 = fadd fast float %4786, %4621
  %4790 = fmul fast float %4764, %4759
  %4791 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = fmul fast float %4790, %4792
  %4794 = fadd fast float %4793, %4791
  %4795 = fsub fast float 1.000000e+00, %4623
  %4796 = fmul fast float %4764, %4795
  %4797 = fadd fast float %4796, %4623
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float %4787, float %4788, float %4789)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 25, float %4798)  ; Rsqrt(value)
  %4800 = fmul fast float %4787, %4799
  %4801 = fmul fast float %4788, %4799
  %4802 = fmul fast float %4789, %4799
  br label %4803

; <label>:4803                                    ; preds = %4634, %4627
  %4804 = phi float [ %4633, %4627 ], [ %4640, %4634 ]
  %4805 = phi float [ %4632, %4627 ], [ %4638, %4634 ]
  %4806 = phi float [ %4631, %4627 ], [ %4636, %4634 ]
  %4807 = phi float [ %4630, %4627 ], [ %4639, %4634 ]
  %4808 = phi float [ %4629, %4627 ], [ %4637, %4634 ]
  %4809 = phi float [ %4628, %4627 ], [ %4635, %4634 ]
  %4810 = phi float [ %4613, %4627 ], [ %4778, %4634 ]
  %4811 = phi float [ %4614, %4627 ], [ %4779, %4634 ]
  %4812 = phi float [ %4615, %4627 ], [ %4780, %4634 ]
  %4813 = phi float [ %4616, %4627 ], [ %4687, %4634 ]
  %4814 = phi float [ %4617, %4627 ], [ %4688, %4634 ]
  %4815 = phi float [ %4618, %4627 ], [ %4689, %4634 ]
  %4816 = phi float [ %4619, %4627 ], [ %4800, %4634 ]
  %4817 = phi float [ %4620, %4627 ], [ %4801, %4634 ]
  %4818 = phi float [ %4621, %4627 ], [ %4802, %4634 ]
  %4819 = phi float [ %4622, %4627 ], [ %4794, %4634 ]
  %4820 = phi float [ %4623, %4627 ], [ %4797, %4634 ]
  %4821 = select i1 %208, float 0.000000e+00, float %4812
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %4806, float %4805, float %4804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4808, float %4807, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = fmul fast float %4824, 2.000000e+00
  %4826 = fmul fast float %4825, %4816
  %4827 = fmul fast float %4825, %4817
  %4828 = fmul fast float %4825, %4818
  %4829 = fsub fast float %4809, %4826
  %4830 = fsub fast float %4808, %4827
  %4831 = fsub fast float %4807, %4828
  %4832 = call float @dx.op.binary.f32(i32 36, float %4820, float 1.000000e+00)  ; FMin(a,b)
  %4833 = fsub fast float 1.000000e+00, %4820
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4838 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fcmp fast oeq float %4838, 0.000000e+00
  %4840 = fcmp fast oeq float %4837, 0.000000e+00
  %4841 = or i1 %4840, %4839
  br i1 %4841, label %4871, label %4842

; <label>:4842                                    ; preds = %4803
  %4843 = fsub fast float -0.000000e+00, %57
  %4844 = fsub fast float -0.000000e+00, %55
  %4845 = call float @dx.op.unary.f32(i32 24, float %4838)  ; Sqrt(value)
  %4846 = fdiv fast float %4845, %4837
  %4847 = fcmp fast ogt float %4846, 0x3FFB6F8900000000
  %4848 = select i1 %4847, float 0x3FFB6F8900000000, float %4846
  %4849 = fmul fast float %4848, 0x3FE8A23460000000
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4848, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4852 = fmul fast float %4850, %4837
  %4853 = fmul fast float %4851, 0x3FF279A740000000
  %4854 = fadd fast float %4853, -1.000000e+00
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4844, float %56, float %4843, float %4844, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 25, float %4855)  ; Rsqrt(value)
  %4857 = fmul fast float %4856, %4843
  %4858 = fmul fast float %4856, %4844
  %4859 = fmul fast float %4856, %56
  %4860 = fmul fast float %4854, %4854
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = fmul fast float %4851, 0x40005F8BE0000000
  %4863 = fsub fast float 0x400C5BF8A0000000, %4862
  %4864 = fdiv fast float %4852, %4863
  %4865 = fmul fast float %4864, 0x3FEE31C3C0000000
  %4866 = fmul fast float %4865, %4861
  %4867 = fmul fast float %4851, 0x3FDACB7480000000
  %4868 = fadd fast float %4867, 0xBFD7347680000000
  %4869 = fmul fast float %4868, %4864
  %4870 = fmul fast float %4869, %4861
  br label %4871

; <label>:4871                                    ; preds = %4842, %4803
  %4872 = phi float [ %4857, %4842 ], [ 0.000000e+00, %4803 ]
  %4873 = phi float [ %4858, %4842 ], [ 0.000000e+00, %4803 ]
  %4874 = phi float [ %4859, %4842 ], [ 0.000000e+00, %4803 ]
  %4875 = phi float [ %4866, %4842 ], [ 0.000000e+00, %4803 ]
  %4876 = phi float [ %4870, %4842 ], [ 0.000000e+00, %4803 ]
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = fmul fast float %4877, 0x3FDF454380000000
  %4879 = fmul fast float %4877, %4877
  %4880 = fmul fast float %4879, 0x3FEE471020000000
  %4881 = fadd fast float %4880, 0xBFD42F6020000000
  %4882 = fmul fast float %4837, 0x3FD20DD760000000
  %4883 = fmul fast float %4881, %4876
  %4884 = fadd fast float %4883, %4882
  %4885 = fmul fast float %4878, %4875
  %4886 = fadd fast float %4884, %4885
  %4887 = fsub fast float %4884, %4885
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = fmul fast float %4888, 0x3FDF454380000000
  %4890 = fmul fast float %4888, %4888
  %4891 = fmul fast float %4890, 0x3FEE471020000000
  %4892 = fadd fast float %4891, 0xBFD42F6020000000
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4875, float %4876, float 0x3FD20DD760000000, float %4889, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4895 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = fcmp fast oeq float %4895, 0.000000e+00
  %4897 = fcmp fast oeq float %4894, 0.000000e+00
  %4898 = or i1 %4897, %4896
  br i1 %4898, label %4928, label %4899

; <label>:4899                                    ; preds = %4871
  %4900 = fsub fast float -0.000000e+00, %53
  %4901 = fsub fast float -0.000000e+00, %51
  %4902 = call float @dx.op.unary.f32(i32 24, float %4895)  ; Sqrt(value)
  %4903 = fdiv fast float %4902, %4894
  %4904 = fcmp fast ogt float %4903, 0x3FFB6F8900000000
  %4905 = select i1 %4904, float 0x3FFB6F8900000000, float %4903
  %4906 = fmul fast float %4905, 0x3FE8A23460000000
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4905, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4909 = fmul fast float %4907, %4894
  %4910 = fmul fast float %4908, 0x3FF279A740000000
  %4911 = fadd fast float %4910, -1.000000e+00
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %52, float %4900, float %4901, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = call float @dx.op.unary.f32(i32 25, float %4912)  ; Rsqrt(value)
  %4914 = fmul fast float %4913, %4900
  %4915 = fmul fast float %4913, %4901
  %4916 = fmul fast float %4913, %52
  %4917 = fmul fast float %4911, %4911
  %4918 = fsub fast float 1.000000e+00, %4917
  %4919 = fmul fast float %4908, 0x40005F8BE0000000
  %4920 = fsub fast float 0x400C5BF8A0000000, %4919
  %4921 = fdiv fast float %4909, %4920
  %4922 = fmul fast float %4921, 0x3FEE31C3C0000000
  %4923 = fmul fast float %4922, %4918
  %4924 = fmul fast float %4908, 0x3FDACB7480000000
  %4925 = fadd fast float %4924, 0xBFD7347680000000
  %4926 = fmul fast float %4925, %4921
  %4927 = fmul fast float %4926, %4918
  br label %4928

; <label>:4928                                    ; preds = %4899, %4871
  %4929 = phi float [ %4914, %4899 ], [ 0.000000e+00, %4871 ]
  %4930 = phi float [ %4915, %4899 ], [ 0.000000e+00, %4871 ]
  %4931 = phi float [ %4916, %4899 ], [ 0.000000e+00, %4871 ]
  %4932 = phi float [ %4923, %4899 ], [ 0.000000e+00, %4871 ]
  %4933 = phi float [ %4927, %4899 ], [ 0.000000e+00, %4871 ]
  %4934 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = fmul fast float %4934, 0x3FDF454380000000
  %4936 = fmul fast float %4934, %4934
  %4937 = fmul fast float %4936, 0x3FEE471020000000
  %4938 = fadd fast float %4937, 0xBFD42F6020000000
  %4939 = fmul fast float %4894, 0x3FD20DD760000000
  %4940 = fmul fast float %4938, %4933
  %4941 = fadd fast float %4940, %4939
  %4942 = fmul fast float %4935, %4932
  %4943 = fadd fast float %4941, %4942
  %4944 = fsub fast float %4941, %4942
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = fmul fast float %4945, 0x3FDF454380000000
  %4947 = fmul fast float %4945, %4945
  %4948 = fmul fast float %4947, 0x3FEE471020000000
  %4949 = fadd fast float %4948, 0xBFD42F6020000000
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4932, float %4933, float 0x3FD20DD760000000, float %4946, float %4949)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %4952 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = fcmp fast oeq float %4952, 0.000000e+00
  %4954 = fcmp fast oeq float %4951, 0.000000e+00
  %4955 = or i1 %4954, %4953
  br i1 %4955, label %4985, label %4956

; <label>:4956                                    ; preds = %4928
  %4957 = fsub fast float -0.000000e+00, %49
  %4958 = fsub fast float -0.000000e+00, %47
  %4959 = call float @dx.op.unary.f32(i32 24, float %4952)  ; Sqrt(value)
  %4960 = fdiv fast float %4959, %4951
  %4961 = fcmp fast ogt float %4960, 0x3FFB6F8900000000
  %4962 = select i1 %4961, float 0x3FFB6F8900000000, float %4960
  %4963 = fmul fast float %4962, 0x3FE8A23460000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4962, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4966 = fmul fast float %4964, %4951
  %4967 = fmul fast float %4965, 0x3FF279A740000000
  %4968 = fadd fast float %4967, -1.000000e+00
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %48, float %4957, float %4958, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = call float @dx.op.unary.f32(i32 25, float %4969)  ; Rsqrt(value)
  %4971 = fmul fast float %4970, %4957
  %4972 = fmul fast float %4970, %4958
  %4973 = fmul fast float %4970, %48
  %4974 = fmul fast float %4968, %4968
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = fmul fast float %4965, 0x40005F8BE0000000
  %4977 = fsub fast float 0x400C5BF8A0000000, %4976
  %4978 = fdiv fast float %4966, %4977
  %4979 = fmul fast float %4978, 0x3FEE31C3C0000000
  %4980 = fmul fast float %4979, %4975
  %4981 = fmul fast float %4965, 0x3FDACB7480000000
  %4982 = fadd fast float %4981, 0xBFD7347680000000
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4975
  br label %4985

; <label>:4985                                    ; preds = %4956, %4928
  %4986 = phi float [ %4971, %4956 ], [ 0.000000e+00, %4928 ]
  %4987 = phi float [ %4972, %4956 ], [ 0.000000e+00, %4928 ]
  %4988 = phi float [ %4973, %4956 ], [ 0.000000e+00, %4928 ]
  %4989 = phi float [ %4980, %4956 ], [ 0.000000e+00, %4928 ]
  %4990 = phi float [ %4984, %4956 ], [ 0.000000e+00, %4928 ]
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = fmul fast float %4991, 0x3FDF454380000000
  %4993 = fmul fast float %4991, %4991
  %4994 = fmul fast float %4993, 0x3FEE471020000000
  %4995 = fadd fast float %4994, 0xBFD42F6020000000
  %4996 = fmul fast float %4951, 0x3FD20DD760000000
  %4997 = fmul fast float %4995, %4990
  %4998 = fadd fast float %4997, %4996
  %4999 = fmul fast float %4992, %4989
  %5000 = fadd fast float %4998, %4999
  %5001 = fsub fast float %4998, %4999
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = fmul fast float %5002, 0x3FDF454380000000
  %5004 = fmul fast float %5002, %5002
  %5005 = fmul fast float %5004, 0x3FEE471020000000
  %5006 = fadd fast float %5005, 0xBFD42F6020000000
  %5007 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4989, float %4990, float 0x3FD20DD760000000, float %5003, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.binary.f32(i32 35, float %4886, float 0.000000e+00)  ; FMax(a,b)
  %5009 = call float @dx.op.binary.f32(i32 35, float %4943, float 0.000000e+00)  ; FMax(a,b)
  %5010 = call float @dx.op.binary.f32(i32 35, float %5000, float 0.000000e+00)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float %4887, float 0.000000e+00)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 35, float %4944, float 0.000000e+00)  ; FMax(a,b)
  %5013 = call float @dx.op.binary.f32(i32 35, float %5001, float 0.000000e+00)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %4893, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 35, float %4950, float 0.000000e+00)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = call float @dx.op.binary.f32(i32 36, float %4813, float %5018)  ; FMin(a,b)
  %5020 = fsub fast float 1.000000e+00, %4832
  %5021 = fmul fast float %5019, %5020
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = call float @dx.op.binary.f32(i32 36, float %4814, float %5018)  ; FMin(a,b)
  %5027 = fmul fast float %5026, %5020
  %5028 = fsub fast float 1.000000e+00, %5027
  %5029 = bitcast float %5028 to i32
  %5030 = sub nsw i32 2129859010, %5029
  %5031 = bitcast i32 %5030 to float
  %5032 = call float @dx.op.binary.f32(i32 36, float %4815, float %5018)  ; FMin(a,b)
  %5033 = fmul fast float %5032, %5020
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = bitcast float %5034 to i32
  %5036 = sub nsw i32 2129859010, %5035
  %5037 = bitcast i32 %5036 to float
  %5038 = fmul fast float %5008, %4832
  %5039 = fmul fast float %5038, %5025
  %5040 = fmul fast float %5009, %4832
  %5041 = fmul fast float %5040, %5031
  %5042 = fmul fast float %5010, %4832
  %5043 = fmul fast float %5042, %5037
  %5044 = call float @dx.op.binary.f32(i32 36, float %4810, float %5018)  ; FMin(a,b)
  %5045 = fmul fast float %5044, %5020
  %5046 = fsub fast float 1.000000e+00, %5045
  %5047 = bitcast float %5046 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = call float @dx.op.binary.f32(i32 36, float %4811, float %5018)  ; FMin(a,b)
  %5051 = fmul fast float %5050, %5020
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = bitcast float %5052 to i32
  %5054 = sub nsw i32 2129859010, %5053
  %5055 = bitcast i32 %5054 to float
  %5056 = call float @dx.op.binary.f32(i32 36, float %4821, float %5018)  ; FMin(a,b)
  %5057 = fmul fast float %5056, %5020
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = bitcast float %5058 to i32
  %5060 = sub nsw i32 2129859010, %5059
  %5061 = bitcast i32 %5060 to float
  %5062 = fmul fast float %5014, %4832
  %5063 = fmul fast float %5062, %5049
  %5064 = fmul fast float %5015, %4832
  %5065 = fmul fast float %5064, %5055
  %5066 = fmul fast float %5016, %4832
  %5067 = fmul fast float %5066, %5061
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5041, float %5043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = select i1 %208, float 0.000000e+00, float %5039
  %5070 = select i1 %208, float %5068, float %5041
  %5071 = select i1 %208, float 0.000000e+00, float %5043
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5012, float %5013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = select i1 %208, float 0.000000e+00, float %5011
  %5074 = select i1 %208, float %5072, float %5012
  %5075 = select i1 %208, float 0.000000e+00, float %5013
  %5076 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5065, float %5067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = select i1 %208, float 0.000000e+00, float %5063
  %5078 = select i1 %208, float %5076, float %5065
  %5079 = select i1 %208, float 0.000000e+00, float %5067
  %5080 = fmul fast float %4823, 9.843750e-01
  %5081 = fmul fast float %4819, 9.843750e-01
  %5082 = fadd fast float %5080, 7.812500e-03
  %5083 = fadd fast float %5081, 7.812500e-03
  %5084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5082, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5085 = extractvalue %dx.types.ResRet.f32 %5084, 2
  %5086 = extractvalue %dx.types.ResRet.f32 %5084, 3
  %5087 = fmul fast float %5085, %4810
  %5088 = fmul fast float %5085, %4811
  %5089 = fmul fast float %5085, %4821
  %5090 = fadd fast float %5087, %5086
  %5091 = fadd fast float %5088, %5086
  %5092 = fadd fast float %5089, %5086
  %5093 = call float @dx.op.binary.f32(i32 35, float %5091, float %5092)  ; FMax(a,b)
  %5094 = call float @dx.op.binary.f32(i32 35, float %5090, float %5093)  ; FMax(a,b)
  %5095 = fsub fast float 1.000000e+00, %5094
  %5096 = fmul fast float %5090, %5077
  %5097 = fmul fast float %5091, %5078
  %5098 = fmul fast float %5092, %5079
  %5099 = fadd fast float %5096, %3517
  %5100 = fmul fast float %5099, %980
  %5101 = fadd fast float %5097, %3519
  %5102 = fmul fast float %5101, %980
  %5103 = fadd fast float %5098, %3521
  %5104 = fmul fast float %5103, %980
  %5105 = fmul fast float %5095, %5071
  %5106 = fmul fast float %5095, %5070
  %5107 = fmul fast float %5095, %5069
  %5108 = fmul fast float %5095, %3637
  %5109 = fadd fast float %5108, -1.000000e+00
  %5110 = fmul fast float %5109, %980
  %5111 = fadd fast float %5110, 1.000000e+00
  %5112 = fmul fast float %5095, %3636
  %5113 = fadd fast float %5112, -1.000000e+00
  %5114 = fmul fast float %5113, %980
  %5115 = fadd fast float %5114, 1.000000e+00
  %5116 = fmul fast float %5095, %3635
  %5117 = fadd fast float %5116, -1.000000e+00
  %5118 = fmul fast float %5117, %980
  %5119 = fadd fast float %5118, 1.000000e+00
  %5120 = fmul fast float %5119, %5073
  %5121 = fmul fast float %5115, %5074
  %5122 = fmul fast float %5111, %5075
  %5123 = fadd fast float %5120, %5107
  %5124 = fmul fast float %5123, %980
  %5125 = fadd fast float %5121, %5106
  %5126 = fmul fast float %5125, %980
  %5127 = fadd fast float %5122, %5105
  %5128 = fmul fast float %5127, %980
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 3
  %5131 = fcmp fast oeq float %5130, 0.000000e+00
  br i1 %5131, label %5347, label %5132

; <label>:5132                                    ; preds = %4985
  %5133 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5135 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5139 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = select i1 %208, float %5141, float %5137
  %5145 = select i1 %208, float %5143, float %5138
  %5146 = select i1 %208, float %5142, float %5139
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5149 = fcmp fast une float %5148, 0.000000e+00
  br i1 %5149, label %5150, label %5167

; <label>:5150                                    ; preds = %5132
  %5151 = fptoui float %77 to i32
  %5152 = fptoui float %78 to i32
  %5153 = lshr i32 %5151, 4
  %5154 = lshr i32 %5152, 4
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = fptoui float %5156 to i32
  %5158 = add i32 %5157, 15
  %5159 = lshr i32 %5158, 4
  %5160 = mul i32 %5159, %5154
  %5161 = add i32 %5160, %5153
  %5162 = shl i32 %5161, 3
  %5163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5162, i32 undef)  ; BufferLoad(srv,index,wot)
  %5164 = extractvalue %dx.types.ResRet.i32 %5163, 0
  %5165 = and i32 %5164, -268435456
  %5166 = icmp eq i32 %5165, -1342177280
  br i1 %5166, label %5177, label %5167

; <label>:5167                                    ; preds = %5150, %5132
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5171 = fmul fast float %5169, %77
  %5172 = fmul fast float %5170, %78
  %5173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %5171, float %5172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.ResRet.f32 %5173, 1
  %5176 = extractvalue %dx.types.ResRet.f32 %5173, 2
  br label %5177

; <label>:5177                                    ; preds = %5167, %5150
  %5178 = phi float [ %5174, %5167 ], [ 0.000000e+00, %5150 ]
  %5179 = phi float [ %5175, %5167 ], [ 0.000000e+00, %5150 ]
  %5180 = phi float [ %5176, %5167 ], [ 0.000000e+00, %5150 ]
  %5181 = call float @dx.op.binary.f32(i32 36, float %5179, float %5180)  ; FMin(a,b)
  %5182 = call float @dx.op.binary.f32(i32 36, float %5178, float %5181)  ; FMin(a,b)
  %5183 = fcmp fast ogt float %5182, 0.000000e+00
  br i1 %5183, label %5184, label %5347, !dx.controlflow.hints !71

; <label>:5184                                    ; preds = %5177
  %5185 = fmul fast float %5178, %5144
  %5186 = fmul fast float %5179, %5145
  %5187 = fmul fast float %5180, %5146
  %5188 = fsub fast float %5133, %4809
  %5189 = fsub fast float %5134, %4808
  %5190 = fsub fast float %5135, %4807
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5189, float %5190, float %5188, float %5189, float %5190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = call float @dx.op.unary.f32(i32 25, float %5191)  ; Rsqrt(value)
  %5193 = fmul fast float %5192, %5188
  %5194 = fmul fast float %5192, %5189
  %5195 = fmul fast float %5192, %5190
  %5196 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4805, float %4804, float %5193, float %5194, float %5195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5199 = fmul fast float %5198, %5198
  %5200 = fmul fast float %5199, %4836
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = fmul fast float %5201, %5198
  %5203 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %5193, float %5194, float %5195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = fmul fast float %5203, %5203
  %5205 = call float @dx.op.unary.f32(i32 6, float %5196)  ; FAbs(value)
  %5206 = fsub fast float 1.000000e+00, %4819
  %5207 = call float @dx.op.binary.f32(i32 35, float %5206, float 0x3F847AE140000000)  ; FMax(a,b)
  %5208 = fmul fast float %5207, %5207
  %5209 = fmul fast float %5208, %5208
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = fmul fast float %4823, %4823
  %5212 = fmul fast float %5211, %5210
  %5213 = fadd fast float %5212, %5209
  %5214 = bitcast float %5213 to i32
  %5215 = ashr i32 %5214, 1
  %5216 = add nsw i32 %5215, 532487669
  %5217 = bitcast i32 %5216 to float
  %5218 = fadd fast float %5217, %4823
  %5219 = fmul fast float %5209, %5204
  %5220 = fsub fast float 1.000000e+00, %5204
  %5221 = fadd fast float %5220, %5219
  %5222 = fmul fast float %5205, %5205
  %5223 = fmul fast float %5222, %5210
  %5224 = fadd fast float %5223, %5209
  %5225 = bitcast float %5224 to i32
  %5226 = ashr i32 %5225, 1
  %5227 = add nsw i32 %5226, 532487669
  %5228 = bitcast i32 %5227 to float
  %5229 = fadd fast float %5228, %5205
  %5230 = fmul fast float %5221, %5221
  %5231 = fmul fast float %5230, %5218
  %5232 = fmul fast float %5231, %5229
  %5233 = fdiv fast float 1.000000e+00, %5232
  %5234 = fmul fast float %5209, %5233
  %5235 = fmul fast float %5234, 0x3FF0A00000000000
  %5236 = fsub fast float 1.000000e+00, %3654
  %5237 = call float @dx.op.binary.f32(i32 35, float %5236, float 0x3F847AE140000000)  ; FMax(a,b)
  %5238 = fmul fast float %5237, %5237
  %5239 = fmul fast float %5238, %5238
  %5240 = fsub fast float 1.000000e+00, %5239
  %5241 = fmul fast float %5211, %5240
  %5242 = fadd fast float %5241, %5239
  %5243 = bitcast float %5242 to i32
  %5244 = ashr i32 %5243, 1
  %5245 = add nsw i32 %5244, 532487669
  %5246 = bitcast i32 %5245 to float
  %5247 = fadd fast float %5246, %4823
  %5248 = fmul fast float %5239, %5204
  %5249 = fadd fast float %5220, %5248
  %5250 = fmul fast float %5222, %5240
  %5251 = fadd fast float %5250, %5239
  %5252 = bitcast float %5251 to i32
  %5253 = ashr i32 %5252, 1
  %5254 = add nsw i32 %5253, 532487669
  %5255 = bitcast i32 %5254 to float
  %5256 = fadd fast float %5255, %5205
  %5257 = fmul fast float %5249, %5249
  %5258 = fmul fast float %5257, %5247
  %5259 = fmul fast float %5258, %5256
  %5260 = fdiv fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5239, %5260
  %5262 = fsub fast float %5261, %5234
  %5263 = fmul fast float %5262, 0x3FC3F33340000000
  %5264 = fadd fast float %5263, %5235
  %5265 = call float @dx.op.unary.f32(i32 6, float %5197)  ; FAbs(value)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = bitcast float %5266 to i32
  %5268 = sitofp i32 %5267 to float
  %5269 = fmul fast float %5268, 5.000000e+00
  %5270 = fadd fast float %5269, 0xC1EFBF8940000000
  %5271 = fptosi float %5270 to i32
  %5272 = bitcast i32 %5271 to float
  %5273 = fsub fast float 1.000000e+00, %4810
  %5274 = fsub fast float 1.000000e+00, %4811
  %5275 = fsub fast float 1.000000e+00, %4821
  %5276 = fmul fast float %5272, %5273
  %5277 = fmul fast float %5272, %5274
  %5278 = fmul fast float %5272, %5275
  %5279 = fadd fast float %5276, %4810
  %5280 = fadd fast float %5277, %4811
  %5281 = fadd fast float %5278, %4821
  %5282 = fmul fast float %5196, 9.843750e-01
  %5283 = fadd fast float %5282, 7.812500e-03
  %5284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5283, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 3
  %5287 = fmul fast float %5285, %4810
  %5288 = fmul fast float %5285, %4811
  %5289 = fmul fast float %5285, %4821
  %5290 = fadd fast float %5287, %5286
  %5291 = fadd fast float %5288, %5286
  %5292 = fadd fast float %5289, %5286
  %5293 = call float @dx.op.binary.f32(i32 35, float %5291, float %5292)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 35, float %5290, float %5293)  ; FMax(a,b)
  %5295 = fsub fast float 1.000000e+00, %5294
  %5296 = fsub fast float -0.000000e+00, %4816
  %5297 = fsub fast float -0.000000e+00, %4817
  %5298 = fsub fast float -0.000000e+00, %4818
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5300, 9.843750e-01
  %5302 = fadd fast float %5301, 7.812500e-03
  %5303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5302, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 3
  %5306 = fmul fast float %5304, %4810
  %5307 = fmul fast float %5304, %4811
  %5308 = fmul fast float %5304, %4821
  %5309 = fadd fast float %5306, %5305
  %5310 = fadd fast float %5307, %5305
  %5311 = fadd fast float %5308, %5305
  %5312 = call float @dx.op.binary.f32(i32 35, float %5310, float %5311)  ; FMax(a,b)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5309, float %5312)  ; FMax(a,b)
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fmul fast float %5314, %5300
  %5316 = fmul fast float %5315, %3635
  %5317 = fmul fast float %5315, %3636
  %5318 = fmul fast float %5315, %3637
  %5319 = fmul fast float %5295, %5202
  %5320 = fadd fast float %5316, %5319
  %5321 = fadd fast float %5317, %5319
  %5322 = fadd fast float %5318, %5319
  %5323 = fmul fast float %5320, %5185
  %5324 = fmul fast float %5321, %5186
  %5325 = fmul fast float %5322, %5187
  %5326 = fmul fast float %5202, %5185
  %5327 = fmul fast float %5326, %5264
  %5328 = fmul fast float %5327, %5279
  %5329 = fmul fast float %5202, %5186
  %5330 = fmul fast float %5329, %5264
  %5331 = fmul fast float %5330, %5280
  %5332 = fmul fast float %5202, %5187
  %5333 = fmul fast float %5332, %5264
  %5334 = fmul fast float %5333, %5281
  %5335 = fadd fast float %5323, %5123
  %5336 = fmul fast float %5335, %980
  %5337 = fadd fast float %5324, %5125
  %5338 = fmul fast float %5337, %980
  %5339 = fadd fast float %5325, %5127
  %5340 = fmul fast float %5339, %980
  %5341 = fadd fast float %5328, %5099
  %5342 = fmul fast float %5341, %980
  %5343 = fadd fast float %5331, %5101
  %5344 = fmul fast float %5343, %980
  %5345 = fadd fast float %5334, %5103
  %5346 = fmul fast float %5345, %980
  br label %5347

; <label>:5347                                    ; preds = %5184, %5177, %4985
  %5348 = phi float [ %5100, %4985 ], [ %5100, %5177 ], [ %5342, %5184 ]
  %5349 = phi float [ %5102, %4985 ], [ %5102, %5177 ], [ %5344, %5184 ]
  %5350 = phi float [ %5104, %4985 ], [ %5104, %5177 ], [ %5346, %5184 ]
  %5351 = phi float [ %5124, %4985 ], [ %5124, %5177 ], [ %5336, %5184 ]
  %5352 = phi float [ %5126, %4985 ], [ %5126, %5177 ], [ %5338, %5184 ]
  %5353 = phi float [ %5128, %4985 ], [ %5128, %5177 ], [ %5340, %5184 ]
  %5354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.i32 %5354, 0
  %5356 = icmp eq i32 %5355, 0
  br i1 %5356, label %5791, label %5357

; <label>:5357                                    ; preds = %5347
  %5358 = fptoui float %77 to i32
  %5359 = fptoui float %78 to i32
  %5360 = lshr i32 %5358, 4
  %5361 = lshr i32 %5359, 4
  %5362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.i32 %5362, 0
  %5364 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5361, i32 %5363, i32 %5360)  ; UMad(a,b,c)
  %5365 = add nsw i32 %5355, -1
  %5366 = call i32 @dx.op.binary.i32(i32 37, i32 %5365, i32 0)  ; IMax(a,b)
  %5367 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5368 = fptoui float %5367 to i32
  %5369 = lshr i32 %5368, 5
  %5370 = call i32 @dx.op.binary.i32(i32 40, i32 %5369, i32 8191)  ; UMin(a,b)
  %5371 = shl i32 %5370, 2
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = lshr i32 %5373, 16
  %5375 = and i32 %5373, 65535
  %5376 = lshr i32 %5373, 21
  %5377 = lshr i32 %5375, 5
  %5378 = call i32 @dx.op.binary.i32(i32 40, i32 %5377, i32 %5366)  ; UMin(a,b)
  %5379 = icmp ugt i32 %5376, %5378
  br i1 %5379, label %5791, label %5380

; <label>:5380                                    ; preds = %5357
  br label %5381

; <label>:5381                                    ; preds = %5781, %5380
  %5382 = phi i32 [ %5788, %5781 ], [ %5376, %5380 ]
  %5383 = phi float [ %5782, %5781 ], [ %5348, %5380 ]
  %5384 = phi float [ %5783, %5781 ], [ %5349, %5380 ]
  %5385 = phi float [ %5784, %5781 ], [ %5350, %5380 ]
  %5386 = phi float [ %5785, %5781 ], [ %5351, %5380 ]
  %5387 = phi float [ %5786, %5781 ], [ %5352, %5380 ]
  %5388 = phi float [ %5787, %5781 ], [ %5353, %5380 ]
  %5389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.i32 %5389, 0
  %5391 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5364, i32 %5390, i32 %5382)  ; UMad(a,b,c)
  %5392 = shl i32 %5391, 2
  %5393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.i32 %5393, 0
  %5395 = shl i32 %5382, 5
  %5396 = sub nsw i32 %5374, %5395
  %5397 = call i32 @dx.op.binary.i32(i32 37, i32 %5396, i32 0)  ; IMax(a,b)
  %5398 = call i32 @dx.op.binary.i32(i32 38, i32 %5397, i32 31)  ; IMin(a,b)
  %5399 = sub nsw i32 1, %5374
  %5400 = add nsw i32 %5399, %5375
  %5401 = call i32 @dx.op.binary.i32(i32 37, i32 %5400, i32 0)  ; IMax(a,b)
  %5402 = call i32 @dx.op.binary.i32(i32 38, i32 %5401, i32 32)  ; IMin(a,b)
  %5403 = and i32 %5402, 31
  %5404 = shl i32 -1, %5403
  %5405 = xor i32 %5404, -1
  %5406 = and i32 %5398, 31
  %5407 = shl i32 %5405, %5406
  %5408 = icmp eq i32 %5402, 32
  %5409 = select i1 %5408, i32 -1, i32 %5407
  %5410 = and i32 %5409, %5394
  %5411 = icmp eq i32 %5410, 0
  br i1 %5411, label %5781, label %5412

; <label>:5412                                    ; preds = %5381
  br label %5413

; <label>:5413                                    ; preds = %5493, %5412
  %5414 = phi i32 [ %5425, %5493 ], [ %5410, %5412 ]
  %5415 = phi float [ %5494, %5493 ], [ %5383, %5412 ]
  %5416 = phi float [ %5495, %5493 ], [ %5384, %5412 ]
  %5417 = phi float [ %5496, %5493 ], [ %5385, %5412 ]
  %5418 = phi float [ %5497, %5493 ], [ %5386, %5412 ]
  %5419 = phi float [ %5498, %5493 ], [ %5387, %5412 ]
  %5420 = phi float [ %5499, %5493 ], [ %5388, %5412 ]
  %5421 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5414)  ; FirstbitLo(value)
  %5422 = add i32 %5421, %5395
  %5423 = and i32 %5421, 31
  %5424 = shl i32 1, %5423
  %5425 = xor i32 %5424, %5414
  %5426 = mul i32 %5422, 112
  %5427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5426, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.ResRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.ResRet.f32 %5427, 2
  %5431 = or i32 %5426, 12
  %5432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = add i32 %5426, 44
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = add i32 %5426, 48
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.ResRet.f32 %5438, 2
  %5442 = add i32 %5426, 80
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5428, float %5429, float %5430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = select i1 %208, float %5444, float %5428
  %5448 = select i1 %208, float %5446, float %5429
  %5449 = select i1 %208, float %5445, float %5430
  %5450 = fsub fast float %5439, %156
  %5451 = fsub fast float %5440, %157
  %5452 = fsub fast float %5441, %158
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = call float @dx.op.unary.f32(i32 24, float %5453)  ; Sqrt(value)
  %5455 = fdiv fast float 1.000000e+00, %5454
  %5456 = fmul fast float %5455, %5450
  %5457 = fmul fast float %5455, %5451
  %5458 = fmul fast float %5455, %5452
  %5459 = fadd fast float %5454, %5433
  %5460 = fdiv fast float 1.000000e+00, %5459
  %5461 = fmul float %5436, %5460
  %5462 = fmul float %5461, %5461
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = and i32 %5424, %5410
  %5465 = icmp eq i32 %5464, 0
  br i1 %5465, label %5488, label %5466, !dx.controlflow.hints !72

; <label>:5466                                    ; preds = %5413
  %5467 = lshr i32 %5358, 5
  %5468 = lshr i32 %5359, 5
  %5469 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %5467, i32 %5468, i32 %5422, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = and i32 %5470, 3
  %5472 = icmp eq i32 %5471, 0
  %5473 = select i1 %5472, float 1.000000e+00, float 0.000000e+00
  %5474 = icmp eq i32 %5471, 3
  br i1 %5474, label %5475, label %5488

; <label>:5475                                    ; preds = %5466
  %5476 = lshr i32 %5470, 10
  %5477 = and i32 %5476, 8160
  %5478 = and i32 %5359, 31
  %5479 = or i32 %5477, %5478
  %5480 = lshr i32 %5470, 1
  %5481 = and i32 %5480, 16352
  %5482 = and i32 %5358, 31
  %5483 = or i32 %5481, %5482
  %5484 = lshr i32 %5470, 23
  %5485 = and i32 %5484, 255
  %5486 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %5483, i32 %5479, i32 %5485, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  br label %5488

; <label>:5488                                    ; preds = %5475, %5466, %5413
  %5489 = phi float [ %5487, %5475 ], [ %5473, %5466 ], [ 0.000000e+00, %5413 ]
  %5490 = call float @dx.op.binary.f32(i32 36, float %5489, float %5489)  ; FMin(a,b)
  %5491 = call float @dx.op.binary.f32(i32 36, float %5489, float %5490)  ; FMin(a,b)
  %5492 = fcmp fast ogt float %5491, 0.000000e+00
  br i1 %5492, label %5501, label %5493, !dx.controlflow.hints !73

; <label>:5493                                    ; preds = %5562, %5488
  %5494 = phi float [ %5415, %5488 ], [ %5777, %5562 ]
  %5495 = phi float [ %5416, %5488 ], [ %5778, %5562 ]
  %5496 = phi float [ %5417, %5488 ], [ %5779, %5562 ]
  %5497 = phi float [ %5418, %5488 ], [ %5765, %5562 ]
  %5498 = phi float [ %5419, %5488 ], [ %5766, %5562 ]
  %5499 = phi float [ %5420, %5488 ], [ %5767, %5562 ]
  %5500 = icmp eq i32 %5414, %5424
  br i1 %5500, label %5780, label %5413

; <label>:5501                                    ; preds = %5488
  %5502 = fmul fast float %5489, %5447
  %5503 = fmul fast float %5489, %5448
  %5504 = fmul fast float %5489, %5449
  %5505 = fsub fast float %5441, %4015
  %5506 = fcmp fast ogt float %5505, 0.000000e+00
  %5507 = fsub fast float %158, %4015
  %5508 = fcmp fast ogt float %5507, 0.000000e+00
  %5509 = xor i1 %5508, %5506
  %5510 = fsub fast float %4015, %5441
  %5511 = fmul fast float %5510, 2.000000e+00
  %5512 = fadd fast float %5511, %5441
  %5513 = select i1 %5509, float %5441, float %5512
  %5514 = fsub fast float %5513, %158
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5514, float %5450, float %5451, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = call float @dx.op.unary.f32(i32 25, float %5515)  ; Rsqrt(value)
  %5517 = fmul fast float %5516, %5450
  %5518 = fmul fast float %5516, %5451
  %5519 = fmul fast float %5516, %5514
  %5520 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fdiv fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5522, %5520
  %5524 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5507, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fcmp fast ogt float %5524, 0.000000e+00
  %5526 = fcmp fast olt float %5524, 0.000000e+00
  %5527 = zext i1 %5525 to i32
  %5528 = zext i1 %5526 to i32
  %5529 = sub nsw i32 %5527, %5528
  %5530 = sitofp i32 %5529 to float
  %5531 = fsub fast float %5513, %4015
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5531, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fcmp fast ogt float %5532, 0.000000e+00
  %5534 = fcmp fast olt float %5532, 0.000000e+00
  %5535 = zext i1 %5533 to i32
  %5536 = zext i1 %5534 to i32
  %5537 = sub nsw i32 %5535, %5536
  %5538 = sitofp i32 %5537 to float
  %5539 = fcmp fast une float %5530, %5538
  br i1 %5539, label %5540, label %5550

; <label>:5540                                    ; preds = %5501
  %5541 = fmul fast float %5523, %5519
  %5542 = fmul fast float %5523, %5518
  %5543 = fmul fast float %5523, %5517
  %5544 = fmul fast float %5543, %5543
  %5545 = fmul fast float %5542, %5542
  %5546 = fadd fast float %5544, %5545
  %5547 = fmul fast float %5541, %5541
  %5548 = fadd fast float %5546, %5547
  %5549 = call float @dx.op.unary.f32(i32 24, float %5548)  ; Sqrt(value)
  br label %5562

; <label>:5550                                    ; preds = %5501
  %5551 = icmp slt i32 %5529, 0
  br i1 %5551, label %5552, label %5562

; <label>:5552                                    ; preds = %5550
  %5553 = fsub fast float %156, %5439
  %5554 = fsub fast float %157, %5440
  %5555 = fsub fast float %158, %5513
  %5556 = fmul fast float %5553, %5553
  %5557 = fmul fast float %5554, %5554
  %5558 = fadd fast float %5556, %5557
  %5559 = fmul fast float %5555, %5555
  %5560 = fadd fast float %5558, %5559
  %5561 = call float @dx.op.unary.f32(i32 24, float %5560)  ; Sqrt(value)
  br label %5562

; <label>:5562                                    ; preds = %5552, %5550, %5540
  %5563 = phi float [ %5549, %5540 ], [ %5561, %5552 ], [ 0.000000e+00, %5550 ]
  %5564 = and i1 %5508, %5506
  %5565 = fsub fast float -0.000000e+00, %5563
  %5566 = select i1 %5564, float -0.000000e+00, float %5565
  %5567 = fmul fast float %4016, 0x3FF7154760000000
  %5568 = fmul fast float %5567, %5566
  %5569 = fmul fast float %4017, 0x3FF7154760000000
  %5570 = fmul fast float %5569, %5566
  %5571 = fmul fast float %4018, 0x3FF7154760000000
  %5572 = fmul fast float %5571, %5566
  %5573 = call float @dx.op.unary.f32(i32 21, float %5568)  ; Exp(value)
  %5574 = call float @dx.op.unary.f32(i32 21, float %5570)  ; Exp(value)
  %5575 = call float @dx.op.unary.f32(i32 21, float %5572)  ; Exp(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = fmul fast float %5502, %5576
  %5580 = fmul fast float %5503, %5577
  %5581 = fmul fast float %5504, %5578
  %5582 = fsub fast float %5456, %4809
  %5583 = fsub fast float %5457, %4808
  %5584 = fsub fast float %5458, %4807
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 25, float %5585)  ; Rsqrt(value)
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %5586, %5583
  %5589 = fmul fast float %5586, %5584
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4805, float %4804, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5593 = fmul fast float %5592, %5463
  %5594 = fmul fast float %5592, %5592
  %5595 = fmul fast float %5594, %4836
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fmul fast float %5593, %5596
  %5598 = bitcast float %5453 to i32
  %5599 = ashr i32 %5598, 1
  %5600 = sub nsw i32 1597463007, %5599
  %5601 = bitcast i32 %5600 to float
  %5602 = fmul fast float %5601, %5450
  %5603 = fmul fast float %5601, %5451
  %5604 = fmul fast float %5601, %5452
  %5605 = fmul fast float %5601, %5436
  %5606 = fsub fast float %5602, %4809
  %5607 = fsub fast float %5603, %4808
  %5608 = fsub fast float %5604, %4807
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %5606, float %5607, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 25, float %5609)  ; Rsqrt(value)
  %5611 = fmul fast float %5606, %5610
  %5612 = fmul fast float %5607, %5610
  %5613 = fmul fast float %5608, %5610
  %5614 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = fmul fast float %5614, %5614
  %5616 = call float @dx.op.unary.f32(i32 6, float %5590)  ; FAbs(value)
  %5617 = fsub fast float 1.000000e+00, %4819
  %5618 = call float @dx.op.binary.f32(i32 35, float %5617, float 0x3F847AE140000000)  ; FMax(a,b)
  %5619 = fmul fast float %5618, %5618
  %5620 = fmul fast float %5619, %5619
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fmul fast float %4823, %4823
  %5623 = fmul fast float %5622, %5621
  %5624 = fadd fast float %5623, %5620
  %5625 = bitcast float %5624 to i32
  %5626 = ashr i32 %5625, 1
  %5627 = add nsw i32 %5626, 532487669
  %5628 = bitcast i32 %5627 to float
  %5629 = fadd fast float %5628, %4823
  %5630 = fmul fast float %5620, %5615
  %5631 = fsub fast float 1.000000e+00, %5615
  %5632 = fadd fast float %5631, %5630
  %5633 = fmul fast float %5616, %5616
  %5634 = fmul fast float %5633, %5621
  %5635 = fadd fast float %5634, %5620
  %5636 = bitcast float %5635 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = add nsw i32 %5637, 532487669
  %5639 = bitcast i32 %5638 to float
  %5640 = fadd fast float %5639, %5616
  %5641 = fmul fast float %5632, %5632
  %5642 = fmul fast float %5641, %5629
  %5643 = fmul fast float %5642, %5640
  %5644 = fdiv fast float 1.000000e+00, %5643
  %5645 = bitcast float %5620 to i32
  %5646 = sitofp i32 %5645 to float
  %5647 = fmul fast float %5646, 0x3FE7F73180000000
  %5648 = fadd fast float %5647, 0x41AFE27C40000000
  %5649 = fptosi float %5648 to i32
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5605, 0x3FD80E9D60000000
  %5652 = fadd fast float %5650, %5651
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5620, %5644
  %5657 = fmul fast float %5656, %5650
  %5658 = fmul fast float %5657, %5655
  %5659 = fsub fast float 1.000000e+00, %3654
  %5660 = call float @dx.op.binary.f32(i32 35, float %5659, float 0x3F847AE140000000)  ; FMax(a,b)
  %5661 = fmul fast float %5660, %5660
  %5662 = fmul fast float %5661, %5661
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5622, %5663
  %5665 = fadd fast float %5664, %5662
  %5666 = bitcast float %5665 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fadd fast float %5669, %4823
  %5671 = fmul fast float %5662, %5615
  %5672 = fadd fast float %5631, %5671
  %5673 = fmul fast float %5633, %5663
  %5674 = fadd fast float %5673, %5662
  %5675 = bitcast float %5674 to i32
  %5676 = ashr i32 %5675, 1
  %5677 = add nsw i32 %5676, 532487669
  %5678 = bitcast i32 %5677 to float
  %5679 = fadd fast float %5678, %5616
  %5680 = fmul fast float %5672, %5672
  %5681 = fmul fast float %5680, %5670
  %5682 = fmul fast float %5681, %5679
  %5683 = fdiv fast float 1.000000e+00, %5682
  %5684 = bitcast float %5662 to i32
  %5685 = sitofp i32 %5684 to float
  %5686 = fmul fast float %5685, 0x3FE7F73180000000
  %5687 = fadd fast float %5686, 0x41AFE27C40000000
  %5688 = fptosi float %5687 to i32
  %5689 = bitcast i32 %5688 to float
  %5690 = fadd fast float %5689, %5651
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5662, %5683
  %5695 = fmul fast float %5694, %5689
  %5696 = fmul fast float %5695, %5693
  %5697 = fsub fast float %5696, %5658
  %5698 = fmul fast float %5697, 0x3FC3333340000000
  %5699 = fadd fast float %5698, %5658
  %5700 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = bitcast float %5701 to i32
  %5703 = sitofp i32 %5702 to float
  %5704 = fmul fast float %5703, 5.000000e+00
  %5705 = fadd fast float %5704, 0xC1EFBF8940000000
  %5706 = fptosi float %5705 to i32
  %5707 = bitcast i32 %5706 to float
  %5708 = fsub fast float 1.000000e+00, %4810
  %5709 = fsub fast float 1.000000e+00, %4811
  %5710 = fsub fast float 1.000000e+00, %4821
  %5711 = fmul fast float %5707, %5708
  %5712 = fmul fast float %5707, %5709
  %5713 = fmul fast float %5707, %5710
  %5714 = fadd fast float %5711, %4810
  %5715 = fadd fast float %5712, %4811
  %5716 = fadd fast float %5713, %4821
  %5717 = fmul fast float %5590, 9.843750e-01
  %5718 = fadd fast float %5717, 7.812500e-03
  %5719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5718, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 2
  %5721 = extractvalue %dx.types.ResRet.f32 %5719, 3
  %5722 = fmul fast float %5720, %4810
  %5723 = fmul fast float %5720, %4811
  %5724 = fmul fast float %5720, %4821
  %5725 = fadd fast float %5722, %5721
  %5726 = fadd fast float %5723, %5721
  %5727 = fadd fast float %5724, %5721
  %5728 = call float @dx.op.binary.f32(i32 35, float %5726, float %5727)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 35, float %5725, float %5728)  ; FMax(a,b)
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = fsub fast float -0.000000e+00, %4816
  %5732 = fsub fast float -0.000000e+00, %4817
  %5733 = fsub fast float -0.000000e+00, %4818
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float %5731, float %5732, float %5733)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5735, %5463
  %5737 = fmul fast float %5735, 9.843750e-01
  %5738 = fadd fast float %5737, 7.812500e-03
  %5739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %5738, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 2
  %5741 = extractvalue %dx.types.ResRet.f32 %5739, 3
  %5742 = fmul fast float %5740, %4810
  %5743 = fmul fast float %5740, %4811
  %5744 = fmul fast float %5740, %4821
  %5745 = fadd fast float %5742, %5741
  %5746 = fadd fast float %5743, %5741
  %5747 = fadd fast float %5744, %5741
  %5748 = call float @dx.op.binary.f32(i32 35, float %5746, float %5747)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5745, float %5748)  ; FMax(a,b)
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = fmul fast float %5736, %5750
  %5752 = fmul fast float %5751, %3635
  %5753 = fmul fast float %5751, %3636
  %5754 = fmul fast float %5751, %3637
  %5755 = fmul fast float %5730, %5597
  %5756 = fadd fast float %5752, %5755
  %5757 = fadd fast float %5753, %5755
  %5758 = fadd fast float %5754, %5755
  %5759 = fmul fast float %5579, %980
  %5760 = fmul fast float %5759, %5756
  %5761 = fmul fast float %5580, %980
  %5762 = fmul fast float %5761, %5757
  %5763 = fmul fast float %5581, %980
  %5764 = fmul fast float %5763, %5758
  %5765 = fadd fast float %5760, %5418
  %5766 = fadd fast float %5762, %5419
  %5767 = fadd fast float %5764, %5420
  %5768 = fmul fast float %5759, %5597
  %5769 = fmul fast float %5768, %5714
  %5770 = fmul fast float %5769, %5699
  %5771 = fmul fast float %5761, %5597
  %5772 = fmul fast float %5771, %5715
  %5773 = fmul fast float %5772, %5699
  %5774 = fmul fast float %5763, %5597
  %5775 = fmul fast float %5774, %5716
  %5776 = fmul fast float %5775, %5699
  %5777 = fadd fast float %5770, %5415
  %5778 = fadd fast float %5773, %5416
  %5779 = fadd fast float %5776, %5417
  br label %5493

; <label>:5780                                    ; preds = %5493
  br label %5781

; <label>:5781                                    ; preds = %5780, %5381
  %5782 = phi float [ %5383, %5381 ], [ %5494, %5780 ]
  %5783 = phi float [ %5384, %5381 ], [ %5495, %5780 ]
  %5784 = phi float [ %5385, %5381 ], [ %5496, %5780 ]
  %5785 = phi float [ %5386, %5381 ], [ %5497, %5780 ]
  %5786 = phi float [ %5387, %5381 ], [ %5498, %5780 ]
  %5787 = phi float [ %5388, %5381 ], [ %5499, %5780 ]
  %5788 = add i32 %5382, 1
  %5789 = icmp ugt i32 %5788, %5378
  br i1 %5789, label %5790, label %5381

; <label>:5790                                    ; preds = %5781
  br label %5791

; <label>:5791                                    ; preds = %5790, %5357, %5347
  %5792 = phi float [ %5348, %5347 ], [ %5348, %5357 ], [ %5782, %5790 ]
  %5793 = phi float [ %5349, %5347 ], [ %5349, %5357 ], [ %5783, %5790 ]
  %5794 = phi float [ %5350, %5347 ], [ %5350, %5357 ], [ %5784, %5790 ]
  %5795 = phi float [ %5351, %5347 ], [ %5351, %5357 ], [ %5785, %5790 ]
  %5796 = phi float [ %5352, %5347 ], [ %5352, %5357 ], [ %5786, %5790 ]
  %5797 = phi float [ %5353, %5347 ], [ %5353, %5357 ], [ %5787, %5790 ]
  %5798 = call float @dx.op.unary.f32(i32 24, float %4813)  ; Sqrt(value)
  %5799 = call float @dx.op.unary.f32(i32 24, float %4814)  ; Sqrt(value)
  %5800 = call float @dx.op.unary.f32(i32 24, float %4815)  ; Sqrt(value)
  %5801 = fmul fast float %5798, %5795
  %5802 = fmul fast float %5799, %5796
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  br i1 %208, label %5805, label %5826

; <label>:5805                                    ; preds = %5791
  %5806 = fadd fast float %3495, %5797
  %5807 = fmul fast float %5806, %3474
  %5808 = fsub fast float 1.000000e+00, %3474
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5812 = fmul fast float %5811, %5809
  %5813 = fadd fast float %5812, %5807
  %5814 = fsub fast float 1.000000e+00, %4823
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = fmul fast float %5816, %5814
  %5818 = fsub fast float %5813, %5817
  %5819 = fadd fast float %5802, %5801
  %5820 = fmul fast float %5804, %5819
  %5821 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5822 = fsub fast float %5818, %5821
  %5823 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5824 = fmul fast float %5822, %5823
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  br label %5842

; <label>:5826                                    ; preds = %5791
  %5827 = fmul fast float %5800, %5797
  %5828 = fmul fast float %5804, %5801
  %5829 = fmul fast float %5804, %5802
  %5830 = fmul fast float %5827, %5804
  %5831 = add i32 %28, 356
  %5832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5831, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.i32 %5832, 0
  %5834 = and i32 %5833, 32
  %5835 = icmp eq i32 %5834, 0
  br i1 %5835, label %5842, label %5836

; <label>:5836                                    ; preds = %5826
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = fmul fast float %5838, 0x3FE99999A0000000
  %5840 = fadd fast float %5838, %5828
  %5841 = fadd fast float %5839, %5830
  br label %5842

; <label>:5842                                    ; preds = %5836, %5826, %5805
  %5843 = phi float [ %5820, %5805 ], [ %5840, %5836 ], [ %5828, %5826 ]
  %5844 = phi float [ %5825, %5805 ], [ %5829, %5836 ], [ %5829, %5826 ]
  %5845 = phi float [ 1.000000e+00, %5805 ], [ %5841, %5836 ], [ %5830, %5826 ]
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5848 = fmul fast float %5847, %5793
  %5849 = fmul fast float %5847, %5794
  %5850 = fadd fast float %5793, %5792
  %5851 = select i1 %208, float %5850, float %5792
  %5852 = fmul float %5851, %5847
  %5853 = select i1 %208, float 0.000000e+00, float %5848
  %5854 = select i1 %208, float 0.000000e+00, float %5849
  %5855 = fmul fast float %5843, %5798
  %5856 = fmul fast float %5844, %5799
  %5857 = fmul fast float %5845, %5800
  %5858 = fadd fast float %5852, %5855
  %5859 = fadd fast float %5853, %5856
  %5860 = fadd fast float %5854, %5857
  %5861 = select i1 %208, float %5844, float %5859
  %5862 = select i1 %208, float %5845, float %5860
  %5863 = call float @dx.op.binary.f32(i32 36, float %5858, float 3.225500e+04)  ; FMin(a,b)
  %5864 = call float @dx.op.binary.f32(i32 36, float %5861, float 3.225500e+04)  ; FMin(a,b)
  %5865 = call float @dx.op.binary.f32(i32 36, float %5862, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5863)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5864)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5865)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!41 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !70}
!43 = !{!44, !68, null}
!44 = !{!45, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67}
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
!67 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

