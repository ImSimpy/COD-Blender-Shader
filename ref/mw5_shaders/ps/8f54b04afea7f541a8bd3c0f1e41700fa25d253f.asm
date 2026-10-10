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
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 87ab246c88f669259808bbb865560d98
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8             t0     1
;                                   texture     f32          2d      T9             t1     1
;                                   texture     f32          2d     T10             t2     1
;                                   texture     f32          2d     T11             t3     1
;                                   texture     f32          2d     T12             t4     1
;                                   texture     f32          2d     T13     t69,space2     1
;                                   texture    byte         r/o     T14     t49,space1     1
;                                   texture    byte         r/o     T15     t50,space1     1
;                                   texture    byte         r/o     T16     t51,space1     1
;                                   texture    byte         r/o     T17     t52,space1     1
;                                   texture    byte         r/o     T18     t16,space1     1
;                                   texture    byte         r/o     T19     t17,space1     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%CinematicConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %74, 2.000000e+00
  %108 = fmul fast float %107, %105
  %109 = fmul fast float %75, 2.000000e+00
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %69
  %138 = fmul fast float %134, %69
  %139 = fmul fast float %136, %69
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %74
  %144 = fmul fast float %142, %75
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.i32 %157, 3
  %159 = and i32 %158, 3
  %160 = icmp ne i32 %159, 0
  %161 = and i32 %158, 4
  %162 = icmp ne i32 %161, 0
  %163 = and i1 %160, %162
  br i1 %163, label %164, label %175

; <label>:164                                     ; preds = %0
  %165 = extractvalue %dx.types.CBufRet.f32 %156, 3
  %166 = fmul fast float %165, %75
  %167 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %168 = fmul fast float %167, %74
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %168, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fsub fast float 1.000000e+00, %170
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = fcmp fast olt float %171, %173
  br label %178

; <label>:175                                     ; preds = %0
  %176 = icmp eq i32 %161, 0
  %177 = and i1 %160, %176
  br label %178

; <label>:178                                     ; preds = %175, %164
  %179 = phi i1 [ %174, %164 ], [ %177, %175 ]
  %180 = add i32 %39, 216
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %182, 16
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = add i32 %39, 36
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %196, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %39, 288
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %203, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fmul fast float %205, 0x3F50624DE0000000
  %209 = fmul fast float %207, 0x3F50624DE0000000
  %210 = add i32 %39, 232
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = lshr i32 %212, 8
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = lshr i32 %212, 16
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = add i32 %39, 52
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %226, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %39, 304
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = fmul fast float %235, 0x3F50624DE0000000
  %239 = fmul fast float %237, 0x3F50624DE0000000
  %240 = add i32 %39, 248
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %254 = add i32 %39, 68
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %39, 320
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %265, 0x3F50624DE0000000
  %269 = fmul fast float %267, 0x3F50624DE0000000
  %270 = add i32 %39, 264
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %272, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %272, 16
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = add i32 %39, 84
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %39, 336
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = add i32 %39, 348
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 32
  %304 = icmp eq i32 %303, 0
  %305 = and i32 %302, 64
  %306 = icmp eq i32 %305, 0
  %307 = and i32 %302, 128
  %308 = icmp eq i32 %307, 0
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %326, label %313

; <label>:313                                     ; preds = %178
  %314 = add i32 %39, 488
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = add i32 %316, 0
  %318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %318, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = fmul fast float %320, %64
  %324 = fmul fast float %321, %65
  %325 = fmul fast float %322, %66
  br label %326

; <label>:326                                     ; preds = %313, %178
  %327 = phi float [ %66, %178 ], [ %325, %313 ]
  %328 = phi float [ %65, %178 ], [ %324, %313 ]
  %329 = phi float [ %64, %178 ], [ %323, %313 ]
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %353, label %334

; <label>:334                                     ; preds = %326
  %335 = add i32 %39, 44
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 1
  %339 = icmp ne i32 %338, 0
  %340 = select i1 %339, float %329, float 1.000000e+00
  %341 = add i32 %39, 60
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 1
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %345, float %328, float 1.000000e+00
  %347 = add i32 %39, 76
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 1
  %351 = icmp ne i32 %350, 0
  %352 = select i1 %351, float %327, float 1.000000e+00
  br label %353

; <label>:353                                     ; preds = %334, %326
  %354 = phi float [ %327, %326 ], [ %352, %334 ]
  %355 = phi float [ %328, %326 ], [ %346, %334 ]
  %356 = phi float [ %329, %326 ], [ %340, %334 ]
  %357 = lshr i32 %331, 20
  %358 = and i32 %357, 3
  %359 = add nuw nsw i32 %358, 1
  %360 = add i32 %39, 24
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %39, 28
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = or i32 %365, %362
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %779, label %368

; <label>:368                                     ; preds = %353
  %369 = and i32 %362, 262144
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %370, float %42, float 1.000000e+00
  %372 = select i1 %370, float %43, float 0.000000e+00
  %373 = select i1 %370, float %44, float 0.000000e+00
  %374 = select i1 %370, float %45, float 1.000000e+00
  %375 = select i1 %370, float %46, float %62
  %376 = select i1 %370, float %47, float %63
  %377 = add i32 %39, 284
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = lshr i32 %379, 16
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = fmul fast float %381, 0x3F50624DE0000000
  %383 = add i32 %39, 88
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = lshr i32 %385, 16
  %387 = and i32 %386, 255
  %388 = lshr i32 %385, 24
  %389 = add i32 %39, 292
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %39, 32
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = lshr i32 %398, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = shl i32 %398, 4
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %398, 7
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %410 = fmul fast float %409, 1.000000e+03
  %411 = fmul fast float %208, %410
  %412 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %413 = fadd fast float %412, %198
  %414 = fmul fast float %209, %410
  %415 = call float @dx.op.unary.f32(i32 22, float %414)  ; Frc(value)
  %416 = fadd fast float %415, %200
  %417 = fmul fast float %382, %410
  %418 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %419 = fmul fast float %418, 0x401921FB60000000
  %420 = fadd fast float %419, %401
  %421 = call float @dx.op.unary.f32(i32 13, float %420)  ; Sin(value)
  %422 = call float @dx.op.unary.f32(i32 12, float %420)  ; Cos(value)
  %423 = fsub fast float -0.000000e+00, %421
  %424 = fadd fast float %375, -5.000000e-01
  %425 = fadd fast float %376, -5.000000e-01
  %426 = fmul fast float %393, %424
  %427 = fmul fast float %395, %425
  %428 = fadd fast float %426, 5.000000e-01
  %429 = fadd fast float %427, 5.000000e-01
  %430 = fmul fast float %404, %428
  %431 = fmul fast float %407, %429
  %432 = fmul fast float %422, %430
  %433 = call float @dx.op.tertiary.f32(i32 46, float %423, float %431, float %432)  ; FMad(a,b,c)
  %434 = fmul fast float %421, %430
  %435 = call float @dx.op.tertiary.f32(i32 46, float %422, float %431, float %434)  ; FMad(a,b,c)
  %436 = fadd fast float %413, %433
  %437 = fadd fast float %416, %435
  %438 = icmp ugt i32 %387, 1
  %439 = icmp ugt i32 %385, 33554431
  %440 = or i1 %439, %438
  br i1 %440, label %441, label %466

; <label>:441                                     ; preds = %368
  %442 = add i32 %39, 228
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = lshr i32 %444, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = fmul fast float %409, %446
  %448 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %449 = mul nuw nsw i32 %387, %388
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %448, %450
  %452 = call float @dx.op.unary.f32(i32 27, float %451)  ; Round_ni(value)
  %453 = fptoui float %452 to i32
  %454 = urem i32 %453, %387
  %455 = udiv i32 %453, %388
  %456 = call float @dx.op.unary.f32(i32 22, float %436)  ; Frc(value)
  %457 = call float @dx.op.unary.f32(i32 22, float %437)  ; Frc(value)
  %458 = uitofp i32 %454 to float
  %459 = uitofp i32 %455 to float
  %460 = fadd fast float %456, %458
  %461 = fadd fast float %457, %459
  %462 = uitofp i32 %387 to float
  %463 = uitofp i32 %388 to float
  %464 = fdiv fast float %460, %462
  %465 = fdiv fast float %461, %463
  br label %466

; <label>:466                                     ; preds = %441, %368
  %467 = phi float [ %464, %441 ], [ %436, %368 ]
  %468 = phi float [ %465, %441 ], [ %437, %368 ]
  %469 = and i32 %362, 16
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %667, label %471

; <label>:471                                     ; preds = %466
  %472 = add i32 %39, 376
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %474, 0
  %476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %476, %dx.types.Handle %70, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = and i32 %385, 255
  %483 = uitofp i32 %482 to float
  %484 = lshr i32 %385, 8
  %485 = and i32 %484, 255
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %481, %483
  %488 = fadd fast float %487, %486
  %489 = fmul fast float %488, 0x3F70101000000000
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 512
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %502, label %494

; <label>:494                                     ; preds = %471
  %495 = add i32 %39, 456
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %499, %dx.types.Handle %71, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  br label %502

; <label>:502                                     ; preds = %494, %471
  %503 = phi float [ %501, %494 ], [ 1.000000e+00, %471 ]
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 33554432
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %614, label %508

; <label>:508                                     ; preds = %502
  %509 = add i32 %39, 224
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = add i32 %39, 228
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 24
  %524 = uitofp i32 %523 to float
  %525 = fmul fast float %524, 0x3F70101020000000
  %526 = and i32 %522, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %527, 0x3F70101020000000
  %529 = lshr i32 %522, 8
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %531, 0x3F70101020000000
  %533 = lshr i32 %522, 16
  %534 = and i32 %533, 255
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %535, 0x3F70101020000000
  %537 = add i32 %39, 220
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = lshr i32 %539, 24
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = and i32 %539, 255
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = lshr i32 %539, 8
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = lshr i32 %539, 16
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = bitcast float %478 to i32
  %555 = ashr i32 %554, 1
  %556 = sub nsw i32 1597463174, %555
  %557 = bitcast i32 %556 to float
  %558 = fmul fast float %478, 5.000000e-01
  %559 = fmul fast float %557, %557
  %560 = fmul fast float %559, %558
  %561 = fsub fast float 1.500000e+00, %560
  %562 = fmul fast float %557, %478
  %563 = fmul fast float %562, %561
  %564 = bitcast float %479 to i32
  %565 = ashr i32 %564, 1
  %566 = sub nsw i32 1597463174, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %479, 5.000000e-01
  %569 = fmul fast float %567, %567
  %570 = fmul fast float %569, %568
  %571 = fsub fast float 1.500000e+00, %570
  %572 = fmul fast float %567, %479
  %573 = fmul fast float %572, %571
  %574 = bitcast float %480 to i32
  %575 = ashr i32 %574, 1
  %576 = sub nsw i32 1597463174, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %480, 5.000000e-01
  %579 = fmul fast float %577, %577
  %580 = fmul fast float %579, %578
  %581 = fsub fast float 1.500000e+00, %580
  %582 = fmul fast float %577, %480
  %583 = fmul fast float %582, %581
  %584 = fsub fast float %563, %545
  %585 = fsub fast float %573, %549
  %586 = fsub fast float %583, %553
  %587 = fmul fast float %584, %513
  %588 = fmul fast float %585, %515
  %589 = fmul fast float %586, %520
  %590 = fadd fast float %587, %528
  %591 = fadd fast float %588, %532
  %592 = fadd fast float %589, %536
  %593 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %594 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %595 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %596 = fmul fast float %593, %593
  %597 = fmul fast float %594, %594
  %598 = fmul fast float %595, %595
  %599 = fsub fast float %596, %478
  %600 = fsub fast float %597, %479
  %601 = fsub fast float %598, %480
  %602 = fmul fast float %599, %503
  %603 = fmul fast float %600, %503
  %604 = fmul fast float %601, %503
  %605 = fadd fast float %602, %478
  %606 = fadd fast float %603, %479
  %607 = fadd fast float %604, %480
  %608 = fadd fast float %525, %489
  %609 = fsub fast float %608, %542
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fsub fast float %610, %489
  %612 = fmul fast float %611, %503
  %613 = fadd fast float %612, %489
  br label %667

; <label>:614                                     ; preds = %502
  %615 = and i32 %505, 134217728
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %651, label %617

; <label>:617                                     ; preds = %614
  %618 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %619 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %620 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %621 = fadd fast float %618, -5.000000e-01
  %622 = fadd fast float %619, -5.000000e-01
  %623 = fadd fast float %620, -5.000000e-01
  %624 = fmul fast float %621, %503
  %625 = fmul fast float %622, %503
  %626 = fmul fast float %623, %503
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = call float @dx.op.unary.f32(i32 24, float %478)  ; Sqrt(value)
  %631 = call float @dx.op.unary.f32(i32 24, float %479)  ; Sqrt(value)
  %632 = call float @dx.op.unary.f32(i32 24, float %480)  ; Sqrt(value)
  %633 = fmul fast float %627, 2.000000e+00
  %634 = fsub fast float 1.000000e+00, %633
  %635 = fmul fast float %634, %630
  %636 = fadd fast float %635, %633
  %637 = fmul fast float %636, %630
  %638 = fmul fast float %628, 2.000000e+00
  %639 = fsub fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %631
  %641 = fadd fast float %640, %638
  %642 = fmul fast float %641, %631
  %643 = fmul fast float %629, 2.000000e+00
  %644 = fsub fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %632
  %646 = fadd fast float %645, %643
  %647 = fmul fast float %646, %632
  %648 = fmul fast float %637, %637
  %649 = fmul fast float %642, %642
  %650 = fmul fast float %647, %647
  br label %667

; <label>:651                                     ; preds = %614
  %652 = fmul fast float %185, %185
  %653 = fmul fast float %189, %189
  %654 = fmul fast float %193, %193
  %655 = fadd fast float %652, -1.000000e+00
  %656 = fadd fast float %653, -1.000000e+00
  %657 = fadd fast float %654, -1.000000e+00
  %658 = fmul fast float %503, %655
  %659 = fmul fast float %503, %656
  %660 = fmul fast float %503, %657
  %661 = fadd fast float %658, 1.000000e+00
  %662 = fadd fast float %659, 1.000000e+00
  %663 = fadd fast float %660, 1.000000e+00
  %664 = fmul fast float %661, %478
  %665 = fmul fast float %662, %479
  %666 = fmul fast float %663, %480
  br label %667

; <label>:667                                     ; preds = %651, %617, %508, %466
  %668 = phi float [ %613, %508 ], [ %489, %617 ], [ %489, %651 ], [ 0x3FA23C0BE0000000, %466 ]
  %669 = phi float [ %605, %508 ], [ %648, %617 ], [ %664, %651 ], [ 1.000000e+00, %466 ]
  %670 = phi float [ %606, %508 ], [ %649, %617 ], [ %665, %651 ], [ 1.000000e+00, %466 ]
  %671 = phi float [ %607, %508 ], [ %650, %617 ], [ %666, %651 ], [ 1.000000e+00, %466 ]
  %672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.i32 %672, 1
  %674 = and i32 %673, 1
  %675 = icmp ne i32 %674, 0
  %676 = add i32 %39, 356
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 32
  %680 = icmp ne i32 %679, 0
  %681 = and i1 %675, %680
  %682 = select i1 %681, float 1.000000e+00, float %669
  %683 = select i1 %681, float 0x3FD3333340000000, float %670
  %684 = select i1 %681, float 0x3FD3333340000000, float %671
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 32
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %761, label %689

; <label>:689                                     ; preds = %667
  %690 = add i32 %39, 92
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %39, 392
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %70, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = extractvalue %dx.types.ResRet.f32 %698, 3
  %703 = and i32 %692, 255
  %704 = uitofp i32 %703 to float
  %705 = lshr i32 %692, 8
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %692, 16
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, 0x3F70101000000000
  %712 = fmul fast float %699, %704
  %713 = fadd fast float %712, %707
  %714 = fmul fast float %713, 0x3F70101000000000
  %715 = fadd fast float %700, -5.000000e-01
  %716 = fadd fast float %702, -5.000000e-01
  %717 = fmul fast float %715, %711
  %718 = fmul fast float %716, %711
  %719 = fadd fast float %717, 5.000000e-01
  %720 = fadd fast float %718, 5.000000e-01
  %721 = fmul fast float %719, 2.000000e+00
  %722 = fadd fast float %721, -1.000000e+00
  %723 = fmul fast float %720, 2.000000e+00
  %724 = fadd fast float %723, -1.000000e+00
  %725 = fadd fast float %722, %724
  %726 = fmul fast float %725, 5.000000e-01
  %727 = fsub fast float %722, %724
  %728 = fmul fast float %727, 5.000000e-01
  %729 = call float @dx.op.unary.f32(i32 6, float %726)  ; FAbs(value)
  %730 = fsub fast float 1.000000e+00, %729
  %731 = call float @dx.op.unary.f32(i32 6, float %728)  ; FAbs(value)
  %732 = fsub fast float %730, %731
  %733 = call float @dx.op.dot3.f32(i32 55, float %726, float %728, float %732, float %726, float %728, float %732)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = call float @dx.op.unary.f32(i32 25, float %733)  ; Rsqrt(value)
  %735 = fmul fast float %726, %734
  %736 = fmul fast float %728, %734
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 67108864
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %689
  %742 = add i32 %39, 280
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 65535
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 65535
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %744, 16
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = fsub fast float %714, %752
  %754 = fmul fast float %753, %746
  %755 = fadd fast float %754, %750
  %756 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  br label %757

; <label>:757                                     ; preds = %741, %689
  %758 = phi float [ %756, %741 ], [ %714, %689 ]
  %759 = call float @dx.op.dot2.f32(i32 54, float %735, float %736, float %371, float %372)  ; Dot2(ax,ay,bx,by)
  %760 = call float @dx.op.dot2.f32(i32 54, float %735, float %736, float %373, float %374)  ; Dot2(ax,ay,bx,by)
  br label %761

; <label>:761                                     ; preds = %757, %667
  %762 = phi float [ %758, %757 ], [ 0x3FD6666660000000, %667 ]
  %763 = phi float [ %759, %757 ], [ 0.000000e+00, %667 ]
  %764 = phi float [ %760, %757 ], [ 0.000000e+00, %667 ]
  %765 = phi float [ %701, %757 ], [ 1.000000e+00, %667 ]
  %766 = add i32 %39, 96
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = lshr i32 %768, 8
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = fmul fast float %773, %774
  %776 = fadd fast float %775, %770
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  br label %779

; <label>:779                                     ; preds = %761, %353
  %780 = phi float [ 0.000000e+00, %353 ], [ %763, %761 ]
  %781 = phi float [ 0.000000e+00, %353 ], [ %764, %761 ]
  %782 = phi float [ 0.000000e+00, %353 ], [ %682, %761 ]
  %783 = phi float [ 0.000000e+00, %353 ], [ %683, %761 ]
  %784 = phi float [ 0.000000e+00, %353 ], [ %684, %761 ]
  %785 = phi float [ 0.000000e+00, %353 ], [ %668, %761 ]
  %786 = phi float [ 0.000000e+00, %353 ], [ 1.000000e+00, %761 ]
  %787 = phi float [ 0.000000e+00, %353 ], [ %762, %761 ]
  %788 = phi float [ 0.000000e+00, %353 ], [ %765, %761 ]
  %789 = phi float [ 0.000000e+00, %353 ], [ %778, %761 ]
  br i1 %304, label %1563, label %790

; <label>:790                                     ; preds = %779
  %791 = icmp ult i32 %359, 2
  %792 = add i32 %39, 40
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %39, 44
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = or i32 %797, %794
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %1563, label %800

; <label>:800                                     ; preds = %790
  %801 = and i32 %794, 262144
  %802 = icmp ne i32 %801, 0
  %803 = select i1 %802, float %42, float 1.000000e+00
  %804 = select i1 %802, float %43, float 0.000000e+00
  %805 = select i1 %802, float %44, float 0.000000e+00
  %806 = select i1 %802, float %45, float 1.000000e+00
  %807 = select i1 %802, float %46, float %62
  %808 = select i1 %802, float %47, float %63
  %809 = add i32 %39, 300
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = lshr i32 %811, 16
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fmul fast float %813, 0x3F50624DE0000000
  %815 = add i32 %39, 104
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = lshr i32 %817, 16
  %819 = and i32 %818, 255
  %820 = lshr i32 %817, 24
  %821 = add i32 %39, 308
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %823, 16
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = add i32 %39, 48
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 22
  %832 = shl nuw nsw i32 %831, 5
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = shl i32 %830, 4
  %835 = and i32 %834, 32752
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %830, 7
  %838 = and i32 %837, 32752
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %842 = fmul fast float %841, 1.000000e+03
  %843 = fmul fast float %238, %842
  %844 = call float @dx.op.unary.f32(i32 22, float %843)  ; Frc(value)
  %845 = fadd fast float %844, %228
  %846 = fmul fast float %239, %842
  %847 = call float @dx.op.unary.f32(i32 22, float %846)  ; Frc(value)
  %848 = fadd fast float %847, %230
  %849 = fmul fast float %814, %842
  %850 = call float @dx.op.unary.f32(i32 22, float %849)  ; Frc(value)
  %851 = fmul fast float %850, 0x401921FB60000000
  %852 = fadd fast float %851, %833
  %853 = call float @dx.op.unary.f32(i32 13, float %852)  ; Sin(value)
  %854 = call float @dx.op.unary.f32(i32 12, float %852)  ; Cos(value)
  %855 = fsub fast float -0.000000e+00, %853
  %856 = fadd fast float %807, -5.000000e-01
  %857 = fadd fast float %808, -5.000000e-01
  %858 = fmul fast float %825, %856
  %859 = fmul fast float %827, %857
  %860 = fadd fast float %858, 5.000000e-01
  %861 = fadd fast float %859, 5.000000e-01
  %862 = fmul fast float %836, %860
  %863 = fmul fast float %839, %861
  %864 = fmul fast float %854, %862
  %865 = call float @dx.op.tertiary.f32(i32 46, float %855, float %863, float %864)  ; FMad(a,b,c)
  %866 = fmul fast float %853, %862
  %867 = call float @dx.op.tertiary.f32(i32 46, float %854, float %863, float %866)  ; FMad(a,b,c)
  %868 = fadd fast float %845, %865
  %869 = fadd fast float %848, %867
  %870 = icmp ugt i32 %819, 1
  %871 = icmp ugt i32 %817, 33554431
  %872 = or i1 %871, %870
  br i1 %872, label %873, label %898

; <label>:873                                     ; preds = %800
  %874 = add i32 %39, 244
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 16
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = fmul fast float %841, %878
  %880 = call float @dx.op.unary.f32(i32 22, float %879)  ; Frc(value)
  %881 = mul nuw nsw i32 %819, %820
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %880, %882
  %884 = call float @dx.op.unary.f32(i32 27, float %883)  ; Round_ni(value)
  %885 = fptoui float %884 to i32
  %886 = urem i32 %885, %819
  %887 = udiv i32 %885, %820
  %888 = call float @dx.op.unary.f32(i32 22, float %868)  ; Frc(value)
  %889 = call float @dx.op.unary.f32(i32 22, float %869)  ; Frc(value)
  %890 = uitofp i32 %886 to float
  %891 = uitofp i32 %887 to float
  %892 = fadd fast float %888, %890
  %893 = fadd fast float %889, %891
  %894 = uitofp i32 %819 to float
  %895 = uitofp i32 %820 to float
  %896 = fdiv fast float %892, %894
  %897 = fdiv fast float %893, %895
  br label %898

; <label>:898                                     ; preds = %873, %800
  %899 = phi float [ %896, %873 ], [ %868, %800 ]
  %900 = phi float [ %897, %873 ], [ %869, %800 ]
  %901 = and i32 %794, 16777216
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1012, label %903

; <label>:903                                     ; preds = %898
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fadd fast float %905, %137
  %909 = fadd fast float %906, %138
  %910 = fadd fast float %907, %139
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = icmp eq i32 %40, 65535
  br i1 %914, label %1009, label %915

; <label>:915                                     ; preds = %903
  %916 = lshr i32 %40, 1
  %917 = shl i32 %916, 2
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %40, 1
  %921 = icmp ne i32 %920, 0
  %922 = lshr i32 %919, 16
  %923 = and i32 %919, 65535
  %924 = select i1 %921, i32 %922, i32 %923
  %925 = icmp eq i32 %924, 65535
  br i1 %925, label %1005, label %926

; <label>:926                                     ; preds = %915
  %927 = mul nuw nsw i32 %924, 40
  %928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = add nuw nsw i32 %927, 12
  %933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = add nuw nsw i32 %927, 24
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = add nuw nsw i32 %927, 36
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = fsub fast float %908, %929
  %946 = fsub fast float %909, %930
  %947 = fsub fast float %910, %931
  %948 = fmul fast float %944, %945
  %949 = fmul fast float %944, %946
  %950 = fmul fast float %944, %947
  %951 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %952 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %953 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %954 = fadd fast float %951, 5.000000e-01
  %955 = fadd fast float %952, 5.000000e-01
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fmul fast float %954, %934
  %958 = fmul fast float %955, %935
  %959 = fmul fast float %956, %936
  %960 = shl i32 %40, 2
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = add i32 %962, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call float @dx.op.unary.f32(i32 22, float %957)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %967 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %964, %dx.types.Handle %35, float %965, float %966, float %967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = fmul fast float %969, 1.023000e+03
  %973 = fmul fast float %970, 1.023000e+03
  %974 = fmul fast float %971, 1.023000e+03
  %975 = fadd fast float %972, 5.000000e-01
  %976 = fadd fast float %973, 5.000000e-01
  %977 = fadd fast float %974, 5.000000e-01
  %978 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %979 = call float @dx.op.unary.f32(i32 27, float %976)  ; Round_ni(value)
  %980 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %981 = fsub fast float %948, %951
  %982 = fsub fast float %949, %952
  %983 = fsub fast float %950, %953
  %984 = fmul fast float %981, 7.500000e-01
  %985 = fmul fast float %982, 7.500000e-01
  %986 = fmul fast float %983, 7.500000e-01
  %987 = fadd fast float %951, 1.250000e-01
  %988 = fadd fast float %987, %984
  %989 = fadd fast float %988, %978
  %990 = fadd fast float %952, 1.250000e-01
  %991 = fadd fast float %990, %985
  %992 = fadd fast float %991, %979
  %993 = fadd fast float %953, 1.250000e-01
  %994 = fadd fast float %993, %986
  %995 = fadd fast float %994, %980
  %996 = fmul fast float %989, %939
  %997 = fmul fast float %992, %940
  %998 = fmul fast float %995, %941
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1002, %dx.types.Handle %33, float %996, float %997, float %998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  br label %1005

; <label>:1005                                    ; preds = %926, %915
  %1006 = phi float [ %1004, %926 ], [ -1.000000e+00, %915 ]
  %1007 = fadd fast float %1006, %913
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  br label %1009

; <label>:1009                                    ; preds = %1005, %903
  %1010 = phi float [ %1008, %1005 ], [ %913, %903 ]
  %1011 = fmul fast float %1010, %356
  br label %1012

; <label>:1012                                    ; preds = %1009, %898
  %1013 = phi float [ %1011, %1009 ], [ %356, %898 ]
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = and i32 %1015, 256
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1064, label %1018

; <label>:1018                                    ; preds = %1012
  %1019 = add i32 %39, 444
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = add i32 %1021, 0
  %1023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1023, %dx.types.Handle %71, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = add i32 %39, 116
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = shl i32 %1028, 4
  %1030 = and i32 %1029, 32752
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1028, 7
  %1033 = and i32 %1032, 32752
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = fsub fast float 1.000000e+00, %1013
  %1036 = call float @dx.op.binary.f32(i32 35, float %1035, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1037 = bitcast float %1013 to i32
  %1038 = sitofp i32 %1037 to float
  %1039 = fadd fast float %1038, 0xC1CFBF8940000000
  %1040 = fmul fast float %1034, %1039
  %1041 = fadd fast float %1040, 0x41CFBF8940000000
  %1042 = fptosi float %1041 to i32
  %1043 = bitcast i32 %1042 to float
  %1044 = bitcast float %1036 to i32
  %1045 = sitofp i32 %1044 to float
  %1046 = fadd fast float %1045, 0xC1CFBF8940000000
  %1047 = fmul fast float %1046, %1034
  %1048 = fadd fast float %1047, 0x41CFBF8940000000
  %1049 = fptosi float %1048 to i32
  %1050 = bitcast i32 %1049 to float
  %1051 = fmul fast float %1043, %1031
  %1052 = fmul fast float %1050, %1031
  %1053 = fsub fast float %1036, %1051
  %1054 = fadd fast float %1052, %1036
  %1055 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1056 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1057 = fsub fast float %1025, %1055
  %1058 = fsub fast float %1056, %1055
  %1059 = bitcast float %1058 to i32
  %1060 = sub nsw i32 2129859010, %1059
  %1061 = bitcast i32 %1060 to float
  %1062 = fmul fast float %1061, %1057
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  br label %1064

; <label>:1064                                    ; preds = %1018, %1012
  %1065 = phi float [ %1063, %1018 ], [ %1013, %1012 ]
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 128
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1086, label %1070

; <label>:1070                                    ; preds = %1064
  %1071 = add i32 %39, 428
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %71, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 524288
  %1081 = icmp ne i32 %1080, 0
  %1082 = fcmp fast ogt float %1077, 0x3FE0101020000000
  %1083 = select i1 %1082, float 1.000000e+00, float 0.000000e+00
  %1084 = select i1 %1081, float %1083, float %1077
  %1085 = fmul fast float %1084, %1065
  br label %1086

; <label>:1086                                    ; preds = %1070, %1064
  %1087 = phi float [ %1085, %1070 ], [ %1065, %1064 ]
  %1088 = fcmp fast ult float %1087, 0x3F70101020000000
  br i1 %1088, label %1563, label %1089

; <label>:1089                                    ; preds = %1086
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 16
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1292, label %1094

; <label>:1094                                    ; preds = %1089
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %39, 380
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %70, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = and i32 %1096, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = lshr i32 %1096, 8
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = fmul fast float %1106, %1108
  %1113 = fadd fast float %1112, %1111
  %1114 = fmul fast float %1113, 0x3F70101000000000
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 512
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1127, label %1119

; <label>:1119                                    ; preds = %1094
  %1120 = add i32 %39, 460
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %71, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  br label %1127

; <label>:1127                                    ; preds = %1119, %1094
  %1128 = phi float [ %1126, %1119 ], [ 1.000000e+00, %1094 ]
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 33554432
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1239, label %1133

; <label>:1133                                    ; preds = %1127
  %1134 = add i32 %39, 240
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 65535
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = lshr i32 %1136, 16
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = add i32 %39, 244
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 65535
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = lshr i32 %1147, 24
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = and i32 %1147, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1147, 8
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = lshr i32 %1147, 16
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = add i32 %39, 236
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 24
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F70101020000000
  %1168 = and i32 %1164, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1169, 0x3F70101020000000
  %1171 = lshr i32 %1164, 8
  %1172 = and i32 %1171, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F70101020000000
  %1175 = lshr i32 %1164, 16
  %1176 = and i32 %1175, 255
  %1177 = uitofp i32 %1176 to float
  %1178 = fmul fast float %1177, 0x3F70101020000000
  %1179 = bitcast float %1103 to i32
  %1180 = ashr i32 %1179, 1
  %1181 = sub nsw i32 1597463174, %1180
  %1182 = bitcast i32 %1181 to float
  %1183 = fmul fast float %1103, 5.000000e-01
  %1184 = fmul fast float %1182, %1182
  %1185 = fmul fast float %1184, %1183
  %1186 = fsub fast float 1.500000e+00, %1185
  %1187 = fmul fast float %1182, %1103
  %1188 = fmul fast float %1187, %1186
  %1189 = bitcast float %1104 to i32
  %1190 = ashr i32 %1189, 1
  %1191 = sub nsw i32 1597463174, %1190
  %1192 = bitcast i32 %1191 to float
  %1193 = fmul fast float %1104, 5.000000e-01
  %1194 = fmul fast float %1192, %1192
  %1195 = fmul fast float %1194, %1193
  %1196 = fsub fast float 1.500000e+00, %1195
  %1197 = fmul fast float %1192, %1104
  %1198 = fmul fast float %1197, %1196
  %1199 = bitcast float %1105 to i32
  %1200 = ashr i32 %1199, 1
  %1201 = sub nsw i32 1597463174, %1200
  %1202 = bitcast i32 %1201 to float
  %1203 = fmul fast float %1105, 5.000000e-01
  %1204 = fmul fast float %1202, %1202
  %1205 = fmul fast float %1204, %1203
  %1206 = fsub fast float 1.500000e+00, %1205
  %1207 = fmul fast float %1202, %1105
  %1208 = fmul fast float %1207, %1206
  %1209 = fsub fast float %1188, %1170
  %1210 = fsub fast float %1198, %1174
  %1211 = fsub fast float %1208, %1178
  %1212 = fmul fast float %1209, %1138
  %1213 = fmul fast float %1210, %1140
  %1214 = fmul fast float %1211, %1145
  %1215 = fadd fast float %1212, %1153
  %1216 = fadd fast float %1213, %1157
  %1217 = fadd fast float %1214, %1161
  %1218 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1219 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1220 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1221 = fmul fast float %1218, %1218
  %1222 = fmul fast float %1219, %1219
  %1223 = fmul fast float %1220, %1220
  %1224 = fsub fast float %1221, %1103
  %1225 = fsub fast float %1222, %1104
  %1226 = fsub fast float %1223, %1105
  %1227 = fmul fast float %1224, %1128
  %1228 = fmul fast float %1225, %1128
  %1229 = fmul fast float %1226, %1128
  %1230 = fadd fast float %1227, %1103
  %1231 = fadd fast float %1228, %1104
  %1232 = fadd fast float %1229, %1105
  %1233 = fadd fast float %1150, %1114
  %1234 = fsub fast float %1233, %1167
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fsub fast float %1235, %1114
  %1237 = fmul fast float %1236, %1128
  %1238 = fadd fast float %1237, %1114
  br label %1292

; <label>:1239                                    ; preds = %1127
  %1240 = and i32 %1130, 134217728
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1276, label %1242

; <label>:1242                                    ; preds = %1239
  %1243 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %1244 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %1245 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1246 = fadd fast float %1243, -5.000000e-01
  %1247 = fadd fast float %1244, -5.000000e-01
  %1248 = fadd fast float %1245, -5.000000e-01
  %1249 = fmul fast float %1246, %1128
  %1250 = fmul fast float %1247, %1128
  %1251 = fmul fast float %1248, %1128
  %1252 = fadd fast float %1249, 5.000000e-01
  %1253 = fadd fast float %1250, 5.000000e-01
  %1254 = fadd fast float %1251, 5.000000e-01
  %1255 = call float @dx.op.unary.f32(i32 24, float %1103)  ; Sqrt(value)
  %1256 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  %1257 = call float @dx.op.unary.f32(i32 24, float %1105)  ; Sqrt(value)
  %1258 = fmul fast float %1252, 2.000000e+00
  %1259 = fsub fast float 1.000000e+00, %1258
  %1260 = fmul fast float %1259, %1255
  %1261 = fadd fast float %1260, %1258
  %1262 = fmul fast float %1261, %1255
  %1263 = fmul fast float %1253, 2.000000e+00
  %1264 = fsub fast float 1.000000e+00, %1263
  %1265 = fmul fast float %1264, %1256
  %1266 = fadd fast float %1265, %1263
  %1267 = fmul fast float %1266, %1256
  %1268 = fmul fast float %1254, 2.000000e+00
  %1269 = fsub fast float 1.000000e+00, %1268
  %1270 = fmul fast float %1269, %1257
  %1271 = fadd fast float %1270, %1268
  %1272 = fmul fast float %1271, %1257
  %1273 = fmul fast float %1262, %1262
  %1274 = fmul fast float %1267, %1267
  %1275 = fmul fast float %1272, %1272
  br label %1292

; <label>:1276                                    ; preds = %1239
  %1277 = fmul fast float %215, %215
  %1278 = fmul fast float %219, %219
  %1279 = fmul fast float %223, %223
  %1280 = fadd fast float %1277, -1.000000e+00
  %1281 = fadd fast float %1278, -1.000000e+00
  %1282 = fadd fast float %1279, -1.000000e+00
  %1283 = fmul fast float %1128, %1280
  %1284 = fmul fast float %1128, %1281
  %1285 = fmul fast float %1128, %1282
  %1286 = fadd fast float %1283, 1.000000e+00
  %1287 = fadd fast float %1284, 1.000000e+00
  %1288 = fadd fast float %1285, 1.000000e+00
  %1289 = fmul fast float %1286, %1103
  %1290 = fmul fast float %1287, %1104
  %1291 = fmul fast float %1288, %1105
  br label %1292

; <label>:1292                                    ; preds = %1276, %1242, %1133, %1089
  %1293 = phi float [ %1238, %1133 ], [ %1114, %1242 ], [ %1114, %1276 ], [ 0x3FA23C0BE0000000, %1089 ]
  %1294 = phi float [ %1230, %1133 ], [ %1273, %1242 ], [ %1289, %1276 ], [ 1.000000e+00, %1089 ]
  %1295 = phi float [ %1231, %1133 ], [ %1274, %1242 ], [ %1290, %1276 ], [ 1.000000e+00, %1089 ]
  %1296 = phi float [ %1232, %1133 ], [ %1275, %1242 ], [ %1291, %1276 ], [ 1.000000e+00, %1089 ]
  %1297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.i32 %1297, 1
  %1299 = and i32 %1298, 1
  %1300 = icmp ne i32 %1299, 0
  %1301 = add i32 %39, 356
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 32
  %1305 = icmp ne i32 %1304, 0
  %1306 = and i1 %1300, %1305
  %1307 = select i1 %1306, float 1.000000e+00, float %1294
  %1308 = select i1 %1306, float 0x3FD3333340000000, float %1295
  %1309 = select i1 %1306, float 0x3FD3333340000000, float %1296
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 32
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1386, label %1314

; <label>:1314                                    ; preds = %1292
  %1315 = add i32 %39, 108
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %39, 396
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1322, %dx.types.Handle %70, float %899, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.ResRet.f32 %1323, 3
  %1328 = and i32 %1317, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = lshr i32 %1317, 8
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = lshr i32 %1317, 16
  %1334 = and i32 %1333, 255
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = fmul fast float %1324, %1329
  %1338 = fadd fast float %1337, %1332
  %1339 = fmul fast float %1338, 0x3F70101000000000
  %1340 = fadd fast float %1325, -5.000000e-01
  %1341 = fadd fast float %1327, -5.000000e-01
  %1342 = fmul fast float %1340, %1336
  %1343 = fmul fast float %1341, %1336
  %1344 = fadd fast float %1342, 5.000000e-01
  %1345 = fadd fast float %1343, 5.000000e-01
  %1346 = fmul fast float %1344, 2.000000e+00
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = fmul fast float %1345, 2.000000e+00
  %1349 = fadd fast float %1348, -1.000000e+00
  %1350 = fadd fast float %1347, %1349
  %1351 = fmul fast float %1350, 5.000000e-01
  %1352 = fsub fast float %1347, %1349
  %1353 = fmul fast float %1352, 5.000000e-01
  %1354 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = call float @dx.op.unary.f32(i32 6, float %1353)  ; FAbs(value)
  %1357 = fsub fast float %1355, %1356
  %1358 = call float @dx.op.dot3.f32(i32 55, float %1351, float %1353, float %1357, float %1351, float %1353, float %1357)  ; Dot3(ax,ay,az,bx,by,bz)
  %1359 = call float @dx.op.unary.f32(i32 25, float %1358)  ; Rsqrt(value)
  %1360 = fmul fast float %1351, %1359
  %1361 = fmul fast float %1353, %1359
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 67108864
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1382, label %1366

; <label>:1366                                    ; preds = %1314
  %1367 = add i32 %39, 296
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 65535
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 65535
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = lshr i32 %1369, 16
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = fsub fast float %1339, %1377
  %1379 = fmul fast float %1378, %1371
  %1380 = fadd fast float %1379, %1375
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  br label %1382

; <label>:1382                                    ; preds = %1366, %1314
  %1383 = phi float [ %1381, %1366 ], [ %1339, %1314 ]
  %1384 = call float @dx.op.dot2.f32(i32 54, float %1360, float %1361, float %803, float %804)  ; Dot2(ax,ay,bx,by)
  %1385 = call float @dx.op.dot2.f32(i32 54, float %1360, float %1361, float %805, float %806)  ; Dot2(ax,ay,bx,by)
  br label %1386

; <label>:1386                                    ; preds = %1382, %1292
  %1387 = phi float [ %1383, %1382 ], [ 0x3FD6666660000000, %1292 ]
  %1388 = phi float [ %1384, %1382 ], [ 0.000000e+00, %1292 ]
  %1389 = phi float [ %1385, %1382 ], [ 0.000000e+00, %1292 ]
  %1390 = phi float [ %1326, %1382 ], [ 1.000000e+00, %1292 ]
  %1391 = add i32 %39, 112
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = lshr i32 %1393, 8
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = fmul fast float %1398, %1399
  %1401 = fadd fast float %1400, %1395
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  br i1 %791, label %1404, label %1409

; <label>:1404                                    ; preds = %1386
  %1405 = fsub fast float 1.000000e+00, %1087
  %1406 = fmul fast float %1405, %782
  %1407 = fmul fast float %1405, %783
  %1408 = fmul fast float %1405, %784
  br label %1409

; <label>:1409                                    ; preds = %1404, %1386
  %1410 = phi float [ %1406, %1404 ], [ %782, %1386 ]
  %1411 = phi float [ %1407, %1404 ], [ %783, %1386 ]
  %1412 = phi float [ %1408, %1404 ], [ %784, %1386 ]
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 3
  %1416 = icmp eq i32 %1415, 3
  br i1 %1416, label %1483, label %1417

; <label>:1417                                    ; preds = %1409
  %1418 = and i32 %1414, 16
  %1419 = icmp ne i32 %1418, 0
  %1420 = select i1 %1419, float %1087, float 0.000000e+00
  %1421 = icmp eq i32 %1415, 0
  br i1 %1421, label %1422, label %1438

; <label>:1422                                    ; preds = %1417
  %1423 = fsub fast float %1307, %1410
  %1424 = fsub fast float %1308, %1411
  %1425 = fsub fast float %1309, %1412
  %1426 = fmul fast float %1420, %1423
  %1427 = fmul fast float %1420, %1424
  %1428 = fmul fast float %1420, %1425
  %1429 = fadd fast float %1426, %1410
  %1430 = fadd fast float %1427, %1411
  %1431 = fadd fast float %1428, %1412
  %1432 = fsub fast float %1293, %785
  %1433 = fmul fast float %1420, %1432
  %1434 = fadd fast float %1433, %785
  %1435 = fsub fast float %1403, %789
  %1436 = fmul fast float %1420, %1435
  %1437 = fadd fast float %1436, %789
  br label %1483

; <label>:1438                                    ; preds = %1417
  %1439 = icmp eq i32 %1415, 1
  br i1 %1439, label %1440, label %1453

; <label>:1440                                    ; preds = %1438
  %1441 = fadd fast float %1307, -1.000000e+00
  %1442 = fadd fast float %1308, -1.000000e+00
  %1443 = fadd fast float %1309, -1.000000e+00
  %1444 = fmul fast float %1420, %1441
  %1445 = fmul fast float %1420, %1442
  %1446 = fmul fast float %1420, %1443
  %1447 = fadd fast float %1444, 1.000000e+00
  %1448 = fadd fast float %1445, 1.000000e+00
  %1449 = fadd fast float %1446, 1.000000e+00
  %1450 = fmul fast float %1447, %1410
  %1451 = fmul fast float %1448, %1411
  %1452 = fmul fast float %1449, %1412
  br label %1483

; <label>:1453                                    ; preds = %1438
  %1454 = icmp eq i32 %1415, 2
  br i1 %1454, label %1455, label %1483

; <label>:1455                                    ; preds = %1453
  %1456 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1457 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1458 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fadd fast float %1457, -5.000000e-01
  %1461 = fadd fast float %1458, -5.000000e-01
  %1462 = fmul fast float %1459, %1420
  %1463 = fmul fast float %1460, %1420
  %1464 = fmul fast float %1461, %1420
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = fmul fast float %1465, 2.000000e+00
  %1469 = fsub fast float 1.000000e+00, %1468
  %1470 = fmul fast float %1469, %1410
  %1471 = fadd fast float %1470, %1468
  %1472 = fmul fast float %1471, %1410
  %1473 = fmul fast float %1466, 2.000000e+00
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = fmul fast float %1474, %1411
  %1476 = fadd fast float %1475, %1473
  %1477 = fmul fast float %1476, %1411
  %1478 = fmul fast float %1467, 2.000000e+00
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = fmul fast float %1479, %1412
  %1481 = fadd fast float %1480, %1478
  %1482 = fmul fast float %1481, %1412
  br label %1483

; <label>:1483                                    ; preds = %1455, %1453, %1440, %1422, %1409
  %1484 = phi float [ %1410, %1409 ], [ %1472, %1455 ], [ %1410, %1453 ], [ %1450, %1440 ], [ %1429, %1422 ]
  %1485 = phi float [ %1411, %1409 ], [ %1477, %1455 ], [ %1411, %1453 ], [ %1451, %1440 ], [ %1430, %1422 ]
  %1486 = phi float [ %1412, %1409 ], [ %1482, %1455 ], [ %1412, %1453 ], [ %1452, %1440 ], [ %1431, %1422 ]
  %1487 = phi float [ %785, %1409 ], [ %785, %1455 ], [ %785, %1453 ], [ %785, %1440 ], [ %1434, %1422 ]
  %1488 = phi float [ %789, %1409 ], [ %789, %1455 ], [ %789, %1453 ], [ %789, %1440 ], [ %1437, %1422 ]
  %1489 = and i32 %1414, 12
  %1490 = icmp eq i32 %1489, 12
  br i1 %1490, label %1563, label %1491

; <label>:1491                                    ; preds = %1483
  %1492 = and i32 %1414, 2097184
  %1493 = icmp eq i32 %1492, 2097184
  %1494 = select i1 %1493, float %1087, float 0.000000e+00
  %1495 = and i32 %1414, 4194336
  %1496 = icmp eq i32 %1495, 4194336
  %1497 = select i1 %1496, float %1087, float 0.000000e+00
  %1498 = and i32 %1414, 8388640
  %1499 = icmp eq i32 %1498, 8388640
  %1500 = select i1 %1499, float %1087, float 0.000000e+00
  %1501 = icmp eq i32 %1489, 0
  br i1 %1501, label %1502, label %1515

; <label>:1502                                    ; preds = %1491
  %1503 = fsub fast float %1388, %780
  %1504 = fsub fast float %1389, %781
  %1505 = fmul fast float %1494, %1503
  %1506 = fmul fast float %1494, %1504
  %1507 = fadd fast float %1505, %780
  %1508 = fadd fast float %1506, %781
  %1509 = fsub fast float %1390, %788
  %1510 = fmul fast float %1497, %1509
  %1511 = fadd fast float %1510, %788
  %1512 = fsub fast float %1387, %787
  %1513 = fmul fast float %1500, %1512
  %1514 = fadd fast float %1513, %787
  br label %1563

; <label>:1515                                    ; preds = %1491
  %1516 = icmp eq i32 %1489, 4
  br i1 %1516, label %1517, label %1549

; <label>:1517                                    ; preds = %1515
  %1518 = fmul fast float %1494, %1388
  %1519 = fmul fast float %1494, %1389
  %1520 = fadd fast float %1518, %780
  %1521 = fadd fast float %1519, %781
  %1522 = call float @dx.op.binary.f32(i32 36, float %788, float %1390)  ; FMin(a,b)
  %1523 = fsub fast float %1522, %788
  %1524 = fmul fast float %1523, %1497
  %1525 = fadd fast float %1524, %788
  %1526 = fadd fast float %1387, %787
  %1527 = fmul fast float %1526, 0x3FF337FAE0000000
  %1528 = fmul fast float %787, %787
  %1529 = fmul fast float %1387, %1387
  %1530 = fadd fast float %1529, %1528
  %1531 = fmul fast float %1530, 0x3FE5152B00000000
  %1532 = fmul fast float %787, 0xBFCC1F85E0000000
  %1533 = fmul fast float %1532, %1387
  %1534 = fadd fast float %1533, 0xBFE1363700000000
  %1535 = fadd fast float %1534, %1527
  %1536 = fsub fast float %1535, %1531
  %1537 = fmul fast float %1526, 0x3FBA6F0D00000000
  %1538 = fmul fast float %1530, 0x3FD0432880000000
  %1539 = fmul fast float %787, 0xBFEF110800000000
  %1540 = fmul fast float %1539, %1387
  %1541 = fadd fast float %1540, 1.000000e+00
  %1542 = fsub fast float %1541, %1537
  %1543 = fadd fast float %1542, %1538
  %1544 = fdiv fast float %1536, %1543
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1546 = fsub fast float %1545, %787
  %1547 = fmul fast float %1546, %1500
  %1548 = fadd fast float %1547, %787
  br label %1563

; <label>:1549                                    ; preds = %1515
  %1550 = icmp eq i32 %1489, 8
  br i1 %1550, label %1551, label %1563

; <label>:1551                                    ; preds = %1549
  %1552 = fmul fast float %1494, %1388
  %1553 = fmul fast float %1494, %1389
  %1554 = fadd fast float %1552, %780
  %1555 = fadd fast float %1553, %781
  %1556 = call float @dx.op.binary.f32(i32 36, float %788, float %1390)  ; FMin(a,b)
  %1557 = fsub fast float %1556, %788
  %1558 = fmul fast float %1557, %1497
  %1559 = fadd fast float %1558, %788
  %1560 = fsub fast float %1387, %787
  %1561 = fmul fast float %1500, %1560
  %1562 = fadd fast float %1561, %787
  br label %1563

; <label>:1563                                    ; preds = %1551, %1549, %1517, %1502, %1483, %1086, %790, %779
  %1564 = phi float [ %780, %1483 ], [ %780, %1086 ], [ %780, %779 ], [ %1554, %1551 ], [ %780, %1549 ], [ %1520, %1517 ], [ %1507, %1502 ], [ %780, %790 ]
  %1565 = phi float [ %781, %1483 ], [ %781, %1086 ], [ %781, %779 ], [ %1555, %1551 ], [ %781, %1549 ], [ %1521, %1517 ], [ %1508, %1502 ], [ %781, %790 ]
  %1566 = phi float [ %1484, %1483 ], [ %782, %1086 ], [ %782, %779 ], [ %1484, %1551 ], [ %1484, %1549 ], [ %1484, %1517 ], [ %1484, %1502 ], [ %782, %790 ]
  %1567 = phi float [ %1485, %1483 ], [ %783, %1086 ], [ %783, %779 ], [ %1485, %1551 ], [ %1485, %1549 ], [ %1485, %1517 ], [ %1485, %1502 ], [ %783, %790 ]
  %1568 = phi float [ %1486, %1483 ], [ %784, %1086 ], [ %784, %779 ], [ %1486, %1551 ], [ %1486, %1549 ], [ %1486, %1517 ], [ %1486, %1502 ], [ %784, %790 ]
  %1569 = phi float [ %1487, %1483 ], [ %785, %1086 ], [ %785, %779 ], [ %1487, %1551 ], [ %1487, %1549 ], [ %1487, %1517 ], [ %1487, %1502 ], [ %785, %790 ]
  %1570 = phi float [ %787, %1483 ], [ %787, %1086 ], [ %787, %779 ], [ %1562, %1551 ], [ %787, %1549 ], [ %1548, %1517 ], [ %1514, %1502 ], [ %787, %790 ]
  %1571 = phi float [ %788, %1483 ], [ %788, %1086 ], [ %788, %779 ], [ %1559, %1551 ], [ %788, %1549 ], [ %1525, %1517 ], [ %1511, %1502 ], [ %788, %790 ]
  %1572 = phi float [ %1488, %1483 ], [ %789, %1086 ], [ %789, %779 ], [ %1488, %1551 ], [ %1488, %1549 ], [ %1488, %1517 ], [ %1488, %1502 ], [ %789, %790 ]
  br i1 %306, label %2346, label %1573

; <label>:1573                                    ; preds = %1563
  %1574 = icmp ult i32 %359, 3
  %1575 = add i32 %39, 56
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %39, 60
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = or i32 %1580, %1577
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %2346, label %1583

; <label>:1583                                    ; preds = %1573
  %1584 = and i32 %1577, 262144
  %1585 = icmp ne i32 %1584, 0
  %1586 = select i1 %1585, float %42, float 1.000000e+00
  %1587 = select i1 %1585, float %43, float 0.000000e+00
  %1588 = select i1 %1585, float %44, float 0.000000e+00
  %1589 = select i1 %1585, float %45, float 1.000000e+00
  %1590 = select i1 %1585, float %46, float %62
  %1591 = select i1 %1585, float %47, float %63
  %1592 = add i32 %39, 316
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 16
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = fmul fast float %1596, 0x3F50624DE0000000
  %1598 = add i32 %39, 120
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = lshr i32 %1600, 16
  %1602 = and i32 %1601, 255
  %1603 = lshr i32 %1600, 24
  %1604 = add i32 %39, 324
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 65535
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = lshr i32 %1606, 16
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = add i32 %39, 64
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = lshr i32 %1613, 22
  %1615 = shl nuw nsw i32 %1614, 5
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = shl i32 %1613, 4
  %1618 = and i32 %1617, 32752
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = lshr i32 %1613, 7
  %1621 = and i32 %1620, 32752
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1625 = fmul fast float %1624, 1.000000e+03
  %1626 = fmul fast float %268, %1625
  %1627 = call float @dx.op.unary.f32(i32 22, float %1626)  ; Frc(value)
  %1628 = fadd fast float %1627, %258
  %1629 = fmul fast float %269, %1625
  %1630 = call float @dx.op.unary.f32(i32 22, float %1629)  ; Frc(value)
  %1631 = fadd fast float %1630, %260
  %1632 = fmul fast float %1597, %1625
  %1633 = call float @dx.op.unary.f32(i32 22, float %1632)  ; Frc(value)
  %1634 = fmul fast float %1633, 0x401921FB60000000
  %1635 = fadd fast float %1634, %1616
  %1636 = call float @dx.op.unary.f32(i32 13, float %1635)  ; Sin(value)
  %1637 = call float @dx.op.unary.f32(i32 12, float %1635)  ; Cos(value)
  %1638 = fsub fast float -0.000000e+00, %1636
  %1639 = fadd fast float %1590, -5.000000e-01
  %1640 = fadd fast float %1591, -5.000000e-01
  %1641 = fmul fast float %1608, %1639
  %1642 = fmul fast float %1610, %1640
  %1643 = fadd fast float %1641, 5.000000e-01
  %1644 = fadd fast float %1642, 5.000000e-01
  %1645 = fmul fast float %1619, %1643
  %1646 = fmul fast float %1622, %1644
  %1647 = fmul fast float %1637, %1645
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1638, float %1646, float %1647)  ; FMad(a,b,c)
  %1649 = fmul fast float %1636, %1645
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1637, float %1646, float %1649)  ; FMad(a,b,c)
  %1651 = fadd fast float %1628, %1648
  %1652 = fadd fast float %1631, %1650
  %1653 = icmp ugt i32 %1602, 1
  %1654 = icmp ugt i32 %1600, 33554431
  %1655 = or i1 %1654, %1653
  br i1 %1655, label %1656, label %1681

; <label>:1656                                    ; preds = %1583
  %1657 = add i32 %39, 260
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = lshr i32 %1659, 16
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = fmul fast float %1624, %1661
  %1663 = call float @dx.op.unary.f32(i32 22, float %1662)  ; Frc(value)
  %1664 = mul nuw nsw i32 %1602, %1603
  %1665 = uitofp i32 %1664 to float
  %1666 = fmul fast float %1663, %1665
  %1667 = call float @dx.op.unary.f32(i32 27, float %1666)  ; Round_ni(value)
  %1668 = fptoui float %1667 to i32
  %1669 = urem i32 %1668, %1602
  %1670 = udiv i32 %1668, %1603
  %1671 = call float @dx.op.unary.f32(i32 22, float %1651)  ; Frc(value)
  %1672 = call float @dx.op.unary.f32(i32 22, float %1652)  ; Frc(value)
  %1673 = uitofp i32 %1669 to float
  %1674 = uitofp i32 %1670 to float
  %1675 = fadd fast float %1671, %1673
  %1676 = fadd fast float %1672, %1674
  %1677 = uitofp i32 %1602 to float
  %1678 = uitofp i32 %1603 to float
  %1679 = fdiv fast float %1675, %1677
  %1680 = fdiv fast float %1676, %1678
  br label %1681

; <label>:1681                                    ; preds = %1656, %1583
  %1682 = phi float [ %1679, %1656 ], [ %1651, %1583 ]
  %1683 = phi float [ %1680, %1656 ], [ %1652, %1583 ]
  %1684 = and i32 %1577, 16777216
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %1795, label %1686

; <label>:1686                                    ; preds = %1681
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1691 = fadd fast float %1688, %137
  %1692 = fadd fast float %1689, %138
  %1693 = fadd fast float %1690, %139
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = icmp eq i32 %40, 65535
  br i1 %1697, label %1792, label %1698

; <label>:1698                                    ; preds = %1686
  %1699 = lshr i32 %40, 1
  %1700 = shl i32 %1699, 2
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %40, 1
  %1704 = icmp ne i32 %1703, 0
  %1705 = lshr i32 %1702, 16
  %1706 = and i32 %1702, 65535
  %1707 = select i1 %1704, i32 %1705, i32 %1706
  %1708 = icmp eq i32 %1707, 65535
  br i1 %1708, label %1788, label %1709

; <label>:1709                                    ; preds = %1698
  %1710 = mul nuw nsw i32 %1707, 40
  %1711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.ResRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.ResRet.f32 %1711, 2
  %1715 = add nuw nsw i32 %1710, 12
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = add nuw nsw i32 %1710, 24
  %1721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = add nuw nsw i32 %1710, 36
  %1726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = fsub fast float %1691, %1712
  %1729 = fsub fast float %1692, %1713
  %1730 = fsub fast float %1693, %1714
  %1731 = fmul fast float %1727, %1728
  %1732 = fmul fast float %1727, %1729
  %1733 = fmul fast float %1727, %1730
  %1734 = call float @dx.op.unary.f32(i32 27, float %1731)  ; Round_ni(value)
  %1735 = call float @dx.op.unary.f32(i32 27, float %1732)  ; Round_ni(value)
  %1736 = call float @dx.op.unary.f32(i32 27, float %1733)  ; Round_ni(value)
  %1737 = fadd fast float %1734, 5.000000e-01
  %1738 = fadd fast float %1735, 5.000000e-01
  %1739 = fadd fast float %1736, 5.000000e-01
  %1740 = fmul fast float %1737, %1717
  %1741 = fmul fast float %1738, %1718
  %1742 = fmul fast float %1739, %1719
  %1743 = shl i32 %40, 2
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = add i32 %1745, 0
  %1747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1746, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1748 = call float @dx.op.unary.f32(i32 22, float %1740)  ; Frc(value)
  %1749 = call float @dx.op.unary.f32(i32 22, float %1741)  ; Frc(value)
  %1750 = call float @dx.op.unary.f32(i32 22, float %1742)  ; Frc(value)
  %1751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1747, %dx.types.Handle %35, float %1748, float %1749, float %1750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = fmul fast float %1752, 1.023000e+03
  %1756 = fmul fast float %1753, 1.023000e+03
  %1757 = fmul fast float %1754, 1.023000e+03
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = call float @dx.op.unary.f32(i32 27, float %1758)  ; Round_ni(value)
  %1762 = call float @dx.op.unary.f32(i32 27, float %1759)  ; Round_ni(value)
  %1763 = call float @dx.op.unary.f32(i32 27, float %1760)  ; Round_ni(value)
  %1764 = fsub fast float %1731, %1734
  %1765 = fsub fast float %1732, %1735
  %1766 = fsub fast float %1733, %1736
  %1767 = fmul fast float %1764, 7.500000e-01
  %1768 = fmul fast float %1765, 7.500000e-01
  %1769 = fmul fast float %1766, 7.500000e-01
  %1770 = fadd fast float %1734, 1.250000e-01
  %1771 = fadd fast float %1770, %1767
  %1772 = fadd fast float %1771, %1761
  %1773 = fadd fast float %1735, 1.250000e-01
  %1774 = fadd fast float %1773, %1768
  %1775 = fadd fast float %1774, %1762
  %1776 = fadd fast float %1736, 1.250000e-01
  %1777 = fadd fast float %1776, %1769
  %1778 = fadd fast float %1777, %1763
  %1779 = fmul fast float %1772, %1722
  %1780 = fmul fast float %1775, %1723
  %1781 = fmul fast float %1778, %1724
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = add i32 %1783, 0
  %1785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1785, %dx.types.Handle %33, float %1779, float %1780, float %1781, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  br label %1788

; <label>:1788                                    ; preds = %1709, %1698
  %1789 = phi float [ %1787, %1709 ], [ -1.000000e+00, %1698 ]
  %1790 = fadd fast float %1789, %1696
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  br label %1792

; <label>:1792                                    ; preds = %1788, %1686
  %1793 = phi float [ %1791, %1788 ], [ %1696, %1686 ]
  %1794 = fmul fast float %1793, %355
  br label %1795

; <label>:1795                                    ; preds = %1792, %1681
  %1796 = phi float [ %1794, %1792 ], [ %355, %1681 ]
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 256
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1847, label %1801

; <label>:1801                                    ; preds = %1795
  %1802 = add i32 %39, 448
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %1804, 0
  %1806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1806, %dx.types.Handle %71, float %1682, float %1683, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = add i32 %39, 132
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = shl i32 %1811, 4
  %1813 = and i32 %1812, 32752
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %1811, 7
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = fsub fast float 1.000000e+00, %1796
  %1819 = call float @dx.op.binary.f32(i32 35, float %1818, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1820 = bitcast float %1796 to i32
  %1821 = sitofp i32 %1820 to float
  %1822 = fadd fast float %1821, 0xC1CFBF8940000000
  %1823 = fmul fast float %1817, %1822
  %1824 = fadd fast float %1823, 0x41CFBF8940000000
  %1825 = fptosi float %1824 to i32
  %1826 = bitcast i32 %1825 to float
  %1827 = bitcast float %1819 to i32
  %1828 = sitofp i32 %1827 to float
  %1829 = fadd fast float %1828, 0xC1CFBF8940000000
  %1830 = fmul fast float %1829, %1817
  %1831 = fadd fast float %1830, 0x41CFBF8940000000
  %1832 = fptosi float %1831 to i32
  %1833 = bitcast i32 %1832 to float
  %1834 = fmul fast float %1826, %1814
  %1835 = fmul fast float %1833, %1814
  %1836 = fsub fast float %1819, %1834
  %1837 = fadd fast float %1835, %1819
  %1838 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1839 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1840 = fsub fast float %1808, %1838
  %1841 = fsub fast float %1839, %1838
  %1842 = bitcast float %1841 to i32
  %1843 = sub nsw i32 2129859010, %1842
  %1844 = bitcast i32 %1843 to float
  %1845 = fmul fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1801, %1795
  %1848 = phi float [ %1846, %1801 ], [ %1796, %1795 ]
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 128
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1869, label %1853

; <label>:1853                                    ; preds = %1847
  %1854 = add i32 %39, 432
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = add i32 %1856, 0
  %1858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1858, %dx.types.Handle %71, float %1682, float %1683, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 524288
  %1864 = icmp ne i32 %1863, 0
  %1865 = fcmp fast ogt float %1860, 0x3FE0101020000000
  %1866 = select i1 %1865, float 1.000000e+00, float 0.000000e+00
  %1867 = select i1 %1864, float %1866, float %1860
  %1868 = fmul fast float %1867, %1848
  br label %1869

; <label>:1869                                    ; preds = %1853, %1847
  %1870 = phi float [ %1868, %1853 ], [ %1848, %1847 ]
  %1871 = fcmp fast ult float %1870, 0x3F70101020000000
  br i1 %1871, label %2346, label %1872

; <label>:1872                                    ; preds = %1869
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 16
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %2075, label %1877

; <label>:1877                                    ; preds = %1872
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = add i32 %39, 384
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = add i32 %1882, 0
  %1884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1884, %dx.types.Handle %70, float %1682, float %1683, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = extractvalue %dx.types.ResRet.f32 %1885, 3
  %1890 = and i32 %1879, 255
  %1891 = uitofp i32 %1890 to float
  %1892 = lshr i32 %1879, 8
  %1893 = and i32 %1892, 255
  %1894 = uitofp i32 %1893 to float
  %1895 = fmul fast float %1889, %1891
  %1896 = fadd fast float %1895, %1894
  %1897 = fmul fast float %1896, 0x3F70101000000000
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 512
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1910, label %1902

; <label>:1902                                    ; preds = %1877
  %1903 = add i32 %39, 464
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = add i32 %1905, 0
  %1907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1907, %dx.types.Handle %71, float %1682, float %1683, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  br label %1910

; <label>:1910                                    ; preds = %1902, %1877
  %1911 = phi float [ %1909, %1902 ], [ 1.000000e+00, %1877 ]
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 33554432
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %2022, label %1916

; <label>:1916                                    ; preds = %1910
  %1917 = add i32 %39, 256
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 65535
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = lshr i32 %1919, 16
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = add i32 %39, 260
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 65535
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = lshr i32 %1930, 24
  %1932 = uitofp i32 %1931 to float
  %1933 = fmul fast float %1932, 0x3F70101020000000
  %1934 = and i32 %1930, 255
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = lshr i32 %1930, 8
  %1938 = and i32 %1937, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = fmul fast float %1939, 0x3F70101020000000
  %1941 = lshr i32 %1930, 16
  %1942 = and i32 %1941, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = add i32 %39, 252
  %1946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1945, i32 undef)  ; BufferLoad(srv,index,wot)
  %1947 = extractvalue %dx.types.ResRet.i32 %1946, 0
  %1948 = lshr i32 %1947, 24
  %1949 = uitofp i32 %1948 to float
  %1950 = fmul fast float %1949, 0x3F70101020000000
  %1951 = and i32 %1947, 255
  %1952 = uitofp i32 %1951 to float
  %1953 = fmul fast float %1952, 0x3F70101020000000
  %1954 = lshr i32 %1947, 8
  %1955 = and i32 %1954, 255
  %1956 = uitofp i32 %1955 to float
  %1957 = fmul fast float %1956, 0x3F70101020000000
  %1958 = lshr i32 %1947, 16
  %1959 = and i32 %1958, 255
  %1960 = uitofp i32 %1959 to float
  %1961 = fmul fast float %1960, 0x3F70101020000000
  %1962 = bitcast float %1886 to i32
  %1963 = ashr i32 %1962, 1
  %1964 = sub nsw i32 1597463174, %1963
  %1965 = bitcast i32 %1964 to float
  %1966 = fmul fast float %1886, 5.000000e-01
  %1967 = fmul fast float %1965, %1965
  %1968 = fmul fast float %1967, %1966
  %1969 = fsub fast float 1.500000e+00, %1968
  %1970 = fmul fast float %1965, %1886
  %1971 = fmul fast float %1970, %1969
  %1972 = bitcast float %1887 to i32
  %1973 = ashr i32 %1972, 1
  %1974 = sub nsw i32 1597463174, %1973
  %1975 = bitcast i32 %1974 to float
  %1976 = fmul fast float %1887, 5.000000e-01
  %1977 = fmul fast float %1975, %1975
  %1978 = fmul fast float %1977, %1976
  %1979 = fsub fast float 1.500000e+00, %1978
  %1980 = fmul fast float %1975, %1887
  %1981 = fmul fast float %1980, %1979
  %1982 = bitcast float %1888 to i32
  %1983 = ashr i32 %1982, 1
  %1984 = sub nsw i32 1597463174, %1983
  %1985 = bitcast i32 %1984 to float
  %1986 = fmul fast float %1888, 5.000000e-01
  %1987 = fmul fast float %1985, %1985
  %1988 = fmul fast float %1987, %1986
  %1989 = fsub fast float 1.500000e+00, %1988
  %1990 = fmul fast float %1985, %1888
  %1991 = fmul fast float %1990, %1989
  %1992 = fsub fast float %1971, %1953
  %1993 = fsub fast float %1981, %1957
  %1994 = fsub fast float %1991, %1961
  %1995 = fmul fast float %1992, %1921
  %1996 = fmul fast float %1993, %1923
  %1997 = fmul fast float %1994, %1928
  %1998 = fadd fast float %1995, %1936
  %1999 = fadd fast float %1996, %1940
  %2000 = fadd fast float %1997, %1944
  %2001 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2002 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2004 = fmul fast float %2001, %2001
  %2005 = fmul fast float %2002, %2002
  %2006 = fmul fast float %2003, %2003
  %2007 = fsub fast float %2004, %1886
  %2008 = fsub fast float %2005, %1887
  %2009 = fsub fast float %2006, %1888
  %2010 = fmul fast float %2007, %1911
  %2011 = fmul fast float %2008, %1911
  %2012 = fmul fast float %2009, %1911
  %2013 = fadd fast float %2010, %1886
  %2014 = fadd fast float %2011, %1887
  %2015 = fadd fast float %2012, %1888
  %2016 = fadd fast float %1933, %1897
  %2017 = fsub fast float %2016, %1950
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2019 = fsub fast float %2018, %1897
  %2020 = fmul fast float %2019, %1911
  %2021 = fadd fast float %2020, %1897
  br label %2075

; <label>:2022                                    ; preds = %1910
  %2023 = and i32 %1913, 134217728
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2059, label %2025

; <label>:2025                                    ; preds = %2022
  %2026 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %2027 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %2028 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %2029 = fadd fast float %2026, -5.000000e-01
  %2030 = fadd fast float %2027, -5.000000e-01
  %2031 = fadd fast float %2028, -5.000000e-01
  %2032 = fmul fast float %2029, %1911
  %2033 = fmul fast float %2030, %1911
  %2034 = fmul fast float %2031, %1911
  %2035 = fadd fast float %2032, 5.000000e-01
  %2036 = fadd fast float %2033, 5.000000e-01
  %2037 = fadd fast float %2034, 5.000000e-01
  %2038 = call float @dx.op.unary.f32(i32 24, float %1886)  ; Sqrt(value)
  %2039 = call float @dx.op.unary.f32(i32 24, float %1887)  ; Sqrt(value)
  %2040 = call float @dx.op.unary.f32(i32 24, float %1888)  ; Sqrt(value)
  %2041 = fmul fast float %2035, 2.000000e+00
  %2042 = fsub fast float 1.000000e+00, %2041
  %2043 = fmul fast float %2042, %2038
  %2044 = fadd fast float %2043, %2041
  %2045 = fmul fast float %2044, %2038
  %2046 = fmul fast float %2036, 2.000000e+00
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = fmul fast float %2047, %2039
  %2049 = fadd fast float %2048, %2046
  %2050 = fmul fast float %2049, %2039
  %2051 = fmul fast float %2037, 2.000000e+00
  %2052 = fsub fast float 1.000000e+00, %2051
  %2053 = fmul fast float %2052, %2040
  %2054 = fadd fast float %2053, %2051
  %2055 = fmul fast float %2054, %2040
  %2056 = fmul fast float %2045, %2045
  %2057 = fmul fast float %2050, %2050
  %2058 = fmul fast float %2055, %2055
  br label %2075

; <label>:2059                                    ; preds = %2022
  %2060 = fmul fast float %245, %245
  %2061 = fmul fast float %249, %249
  %2062 = fmul fast float %253, %253
  %2063 = fadd fast float %2060, -1.000000e+00
  %2064 = fadd fast float %2061, -1.000000e+00
  %2065 = fadd fast float %2062, -1.000000e+00
  %2066 = fmul fast float %1911, %2063
  %2067 = fmul fast float %1911, %2064
  %2068 = fmul fast float %1911, %2065
  %2069 = fadd fast float %2066, 1.000000e+00
  %2070 = fadd fast float %2067, 1.000000e+00
  %2071 = fadd fast float %2068, 1.000000e+00
  %2072 = fmul fast float %2069, %1886
  %2073 = fmul fast float %2070, %1887
  %2074 = fmul fast float %2071, %1888
  br label %2075

; <label>:2075                                    ; preds = %2059, %2025, %1916, %1872
  %2076 = phi float [ %2021, %1916 ], [ %1897, %2025 ], [ %1897, %2059 ], [ 0x3FA23C0BE0000000, %1872 ]
  %2077 = phi float [ %2013, %1916 ], [ %2056, %2025 ], [ %2072, %2059 ], [ 1.000000e+00, %1872 ]
  %2078 = phi float [ %2014, %1916 ], [ %2057, %2025 ], [ %2073, %2059 ], [ 1.000000e+00, %1872 ]
  %2079 = phi float [ %2015, %1916 ], [ %2058, %2025 ], [ %2074, %2059 ], [ 1.000000e+00, %1872 ]
  %2080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.i32 %2080, 1
  %2082 = and i32 %2081, 1
  %2083 = icmp ne i32 %2082, 0
  %2084 = add i32 %39, 356
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 32
  %2088 = icmp ne i32 %2087, 0
  %2089 = and i1 %2083, %2088
  %2090 = select i1 %2089, float 1.000000e+00, float %2077
  %2091 = select i1 %2089, float 0x3FD3333340000000, float %2078
  %2092 = select i1 %2089, float 0x3FD3333340000000, float %2079
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 32
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2169, label %2097

; <label>:2097                                    ; preds = %2075
  %2098 = add i32 %39, 124
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %39, 400
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = add i32 %2103, 0
  %2105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2105, %dx.types.Handle %70, float %1682, float %1683, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = extractvalue %dx.types.ResRet.f32 %2106, 3
  %2111 = and i32 %2100, 255
  %2112 = uitofp i32 %2111 to float
  %2113 = lshr i32 %2100, 8
  %2114 = and i32 %2113, 255
  %2115 = uitofp i32 %2114 to float
  %2116 = lshr i32 %2100, 16
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101000000000
  %2120 = fmul fast float %2107, %2112
  %2121 = fadd fast float %2120, %2115
  %2122 = fmul fast float %2121, 0x3F70101000000000
  %2123 = fadd fast float %2108, -5.000000e-01
  %2124 = fadd fast float %2110, -5.000000e-01
  %2125 = fmul fast float %2123, %2119
  %2126 = fmul fast float %2124, %2119
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = fadd fast float %2126, 5.000000e-01
  %2129 = fmul fast float %2127, 2.000000e+00
  %2130 = fadd fast float %2129, -1.000000e+00
  %2131 = fmul fast float %2128, 2.000000e+00
  %2132 = fadd fast float %2131, -1.000000e+00
  %2133 = fadd fast float %2130, %2132
  %2134 = fmul fast float %2133, 5.000000e-01
  %2135 = fsub fast float %2130, %2132
  %2136 = fmul fast float %2135, 5.000000e-01
  %2137 = call float @dx.op.unary.f32(i32 6, float %2134)  ; FAbs(value)
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = call float @dx.op.unary.f32(i32 6, float %2136)  ; FAbs(value)
  %2140 = fsub fast float %2138, %2139
  %2141 = call float @dx.op.dot3.f32(i32 55, float %2134, float %2136, float %2140, float %2134, float %2136, float %2140)  ; Dot3(ax,ay,az,bx,by,bz)
  %2142 = call float @dx.op.unary.f32(i32 25, float %2141)  ; Rsqrt(value)
  %2143 = fmul fast float %2134, %2142
  %2144 = fmul fast float %2136, %2142
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 67108864
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2165, label %2149

; <label>:2149                                    ; preds = %2097
  %2150 = add i32 %39, 312
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 65535
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 65535
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = lshr i32 %2152, 16
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = fsub fast float %2122, %2160
  %2162 = fmul fast float %2161, %2154
  %2163 = fadd fast float %2162, %2158
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  br label %2165

; <label>:2165                                    ; preds = %2149, %2097
  %2166 = phi float [ %2164, %2149 ], [ %2122, %2097 ]
  %2167 = call float @dx.op.dot2.f32(i32 54, float %2143, float %2144, float %1586, float %1587)  ; Dot2(ax,ay,bx,by)
  %2168 = call float @dx.op.dot2.f32(i32 54, float %2143, float %2144, float %1588, float %1589)  ; Dot2(ax,ay,bx,by)
  br label %2169

; <label>:2169                                    ; preds = %2165, %2075
  %2170 = phi float [ %2166, %2165 ], [ 0x3FD6666660000000, %2075 ]
  %2171 = phi float [ %2167, %2165 ], [ 0.000000e+00, %2075 ]
  %2172 = phi float [ %2168, %2165 ], [ 0.000000e+00, %2075 ]
  %2173 = phi float [ %2109, %2165 ], [ 1.000000e+00, %2075 ]
  %2174 = add i32 %39, 128
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = lshr i32 %2176, 8
  %2180 = and i32 %2179, 255
  %2181 = uitofp i32 %2180 to float
  %2182 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2091, float %2092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2183 = fmul fast float %2181, %2182
  %2184 = fadd fast float %2183, %2178
  %2185 = fmul fast float %2184, 0x3F70101020000000
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  br i1 %1574, label %2187, label %2192

; <label>:2187                                    ; preds = %2169
  %2188 = fsub fast float 1.000000e+00, %1870
  %2189 = fmul fast float %2188, %1566
  %2190 = fmul fast float %2188, %1567
  %2191 = fmul fast float %2188, %1568
  br label %2192

; <label>:2192                                    ; preds = %2187, %2169
  %2193 = phi float [ %2189, %2187 ], [ %1566, %2169 ]
  %2194 = phi float [ %2190, %2187 ], [ %1567, %2169 ]
  %2195 = phi float [ %2191, %2187 ], [ %1568, %2169 ]
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 3
  %2199 = icmp eq i32 %2198, 3
  br i1 %2199, label %2266, label %2200

; <label>:2200                                    ; preds = %2192
  %2201 = and i32 %2197, 16
  %2202 = icmp ne i32 %2201, 0
  %2203 = select i1 %2202, float %1870, float 0.000000e+00
  %2204 = icmp eq i32 %2198, 0
  br i1 %2204, label %2205, label %2221

; <label>:2205                                    ; preds = %2200
  %2206 = fsub fast float %2090, %2193
  %2207 = fsub fast float %2091, %2194
  %2208 = fsub fast float %2092, %2195
  %2209 = fmul fast float %2203, %2206
  %2210 = fmul fast float %2203, %2207
  %2211 = fmul fast float %2203, %2208
  %2212 = fadd fast float %2209, %2193
  %2213 = fadd fast float %2210, %2194
  %2214 = fadd fast float %2211, %2195
  %2215 = fsub fast float %2076, %1569
  %2216 = fmul fast float %2203, %2215
  %2217 = fadd fast float %2216, %1569
  %2218 = fsub fast float %2186, %1572
  %2219 = fmul fast float %2203, %2218
  %2220 = fadd fast float %2219, %1572
  br label %2266

; <label>:2221                                    ; preds = %2200
  %2222 = icmp eq i32 %2198, 1
  br i1 %2222, label %2223, label %2236

; <label>:2223                                    ; preds = %2221
  %2224 = fadd fast float %2090, -1.000000e+00
  %2225 = fadd fast float %2091, -1.000000e+00
  %2226 = fadd fast float %2092, -1.000000e+00
  %2227 = fmul fast float %2203, %2224
  %2228 = fmul fast float %2203, %2225
  %2229 = fmul fast float %2203, %2226
  %2230 = fadd fast float %2227, 1.000000e+00
  %2231 = fadd fast float %2228, 1.000000e+00
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fmul fast float %2230, %2193
  %2234 = fmul fast float %2231, %2194
  %2235 = fmul fast float %2232, %2195
  br label %2266

; <label>:2236                                    ; preds = %2221
  %2237 = icmp eq i32 %2198, 2
  br i1 %2237, label %2238, label %2266

; <label>:2238                                    ; preds = %2236
  %2239 = call float @dx.op.unary.f32(i32 24, float %2090)  ; Sqrt(value)
  %2240 = call float @dx.op.unary.f32(i32 24, float %2091)  ; Sqrt(value)
  %2241 = call float @dx.op.unary.f32(i32 24, float %2092)  ; Sqrt(value)
  %2242 = fadd fast float %2239, -5.000000e-01
  %2243 = fadd fast float %2240, -5.000000e-01
  %2244 = fadd fast float %2241, -5.000000e-01
  %2245 = fmul fast float %2242, %2203
  %2246 = fmul fast float %2243, %2203
  %2247 = fmul fast float %2244, %2203
  %2248 = fadd fast float %2245, 5.000000e-01
  %2249 = fadd fast float %2246, 5.000000e-01
  %2250 = fadd fast float %2247, 5.000000e-01
  %2251 = fmul fast float %2248, 2.000000e+00
  %2252 = fsub fast float 1.000000e+00, %2251
  %2253 = fmul fast float %2252, %2193
  %2254 = fadd fast float %2253, %2251
  %2255 = fmul fast float %2254, %2193
  %2256 = fmul fast float %2249, 2.000000e+00
  %2257 = fsub fast float 1.000000e+00, %2256
  %2258 = fmul fast float %2257, %2194
  %2259 = fadd fast float %2258, %2256
  %2260 = fmul fast float %2259, %2194
  %2261 = fmul fast float %2250, 2.000000e+00
  %2262 = fsub fast float 1.000000e+00, %2261
  %2263 = fmul fast float %2262, %2195
  %2264 = fadd fast float %2263, %2261
  %2265 = fmul fast float %2264, %2195
  br label %2266

; <label>:2266                                    ; preds = %2238, %2236, %2223, %2205, %2192
  %2267 = phi float [ %2193, %2192 ], [ %2255, %2238 ], [ %2193, %2236 ], [ %2233, %2223 ], [ %2212, %2205 ]
  %2268 = phi float [ %2194, %2192 ], [ %2260, %2238 ], [ %2194, %2236 ], [ %2234, %2223 ], [ %2213, %2205 ]
  %2269 = phi float [ %2195, %2192 ], [ %2265, %2238 ], [ %2195, %2236 ], [ %2235, %2223 ], [ %2214, %2205 ]
  %2270 = phi float [ %1569, %2192 ], [ %1569, %2238 ], [ %1569, %2236 ], [ %1569, %2223 ], [ %2217, %2205 ]
  %2271 = phi float [ %1572, %2192 ], [ %1572, %2238 ], [ %1572, %2236 ], [ %1572, %2223 ], [ %2220, %2205 ]
  %2272 = and i32 %2197, 12
  %2273 = icmp eq i32 %2272, 12
  br i1 %2273, label %2346, label %2274

; <label>:2274                                    ; preds = %2266
  %2275 = and i32 %2197, 2097184
  %2276 = icmp eq i32 %2275, 2097184
  %2277 = select i1 %2276, float %1870, float 0.000000e+00
  %2278 = and i32 %2197, 4194336
  %2279 = icmp eq i32 %2278, 4194336
  %2280 = select i1 %2279, float %1870, float 0.000000e+00
  %2281 = and i32 %2197, 8388640
  %2282 = icmp eq i32 %2281, 8388640
  %2283 = select i1 %2282, float %1870, float 0.000000e+00
  %2284 = icmp eq i32 %2272, 0
  br i1 %2284, label %2285, label %2298

; <label>:2285                                    ; preds = %2274
  %2286 = fsub fast float %2171, %1564
  %2287 = fsub fast float %2172, %1565
  %2288 = fmul fast float %2277, %2286
  %2289 = fmul fast float %2277, %2287
  %2290 = fadd fast float %2288, %1564
  %2291 = fadd fast float %2289, %1565
  %2292 = fsub fast float %2173, %1571
  %2293 = fmul fast float %2280, %2292
  %2294 = fadd fast float %2293, %1571
  %2295 = fsub fast float %2170, %1570
  %2296 = fmul fast float %2283, %2295
  %2297 = fadd fast float %2296, %1570
  br label %2346

; <label>:2298                                    ; preds = %2274
  %2299 = icmp eq i32 %2272, 4
  br i1 %2299, label %2300, label %2332

; <label>:2300                                    ; preds = %2298
  %2301 = fmul fast float %2277, %2171
  %2302 = fmul fast float %2277, %2172
  %2303 = fadd fast float %2301, %1564
  %2304 = fadd fast float %2302, %1565
  %2305 = call float @dx.op.binary.f32(i32 36, float %1571, float %2173)  ; FMin(a,b)
  %2306 = fsub fast float %2305, %1571
  %2307 = fmul fast float %2306, %2280
  %2308 = fadd fast float %2307, %1571
  %2309 = fadd fast float %2170, %1570
  %2310 = fmul fast float %2309, 0x3FF337FAE0000000
  %2311 = fmul fast float %1570, %1570
  %2312 = fmul fast float %2170, %2170
  %2313 = fadd fast float %2312, %2311
  %2314 = fmul fast float %2313, 0x3FE5152B00000000
  %2315 = fmul fast float %1570, 0xBFCC1F85E0000000
  %2316 = fmul fast float %2315, %2170
  %2317 = fadd fast float %2316, 0xBFE1363700000000
  %2318 = fadd fast float %2317, %2310
  %2319 = fsub fast float %2318, %2314
  %2320 = fmul fast float %2309, 0x3FBA6F0D00000000
  %2321 = fmul fast float %2313, 0x3FD0432880000000
  %2322 = fmul fast float %1570, 0xBFEF110800000000
  %2323 = fmul fast float %2322, %2170
  %2324 = fadd fast float %2323, 1.000000e+00
  %2325 = fsub fast float %2324, %2320
  %2326 = fadd fast float %2325, %2321
  %2327 = fdiv fast float %2319, %2326
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2329 = fsub fast float %2328, %1570
  %2330 = fmul fast float %2329, %2283
  %2331 = fadd fast float %2330, %1570
  br label %2346

; <label>:2332                                    ; preds = %2298
  %2333 = icmp eq i32 %2272, 8
  br i1 %2333, label %2334, label %2346

; <label>:2334                                    ; preds = %2332
  %2335 = fmul fast float %2277, %2171
  %2336 = fmul fast float %2277, %2172
  %2337 = fadd fast float %2335, %1564
  %2338 = fadd fast float %2336, %1565
  %2339 = call float @dx.op.binary.f32(i32 36, float %1571, float %2173)  ; FMin(a,b)
  %2340 = fsub fast float %2339, %1571
  %2341 = fmul fast float %2340, %2280
  %2342 = fadd fast float %2341, %1571
  %2343 = fsub fast float %2170, %1570
  %2344 = fmul fast float %2283, %2343
  %2345 = fadd fast float %2344, %1570
  br label %2346

; <label>:2346                                    ; preds = %2334, %2332, %2300, %2285, %2266, %1869, %1573, %1563
  %2347 = phi float [ %1564, %2266 ], [ %1564, %1869 ], [ %1564, %1563 ], [ %2337, %2334 ], [ %1564, %2332 ], [ %2303, %2300 ], [ %2290, %2285 ], [ %1564, %1573 ]
  %2348 = phi float [ %1565, %2266 ], [ %1565, %1869 ], [ %1565, %1563 ], [ %2338, %2334 ], [ %1565, %2332 ], [ %2304, %2300 ], [ %2291, %2285 ], [ %1565, %1573 ]
  %2349 = phi float [ %2267, %2266 ], [ %1566, %1869 ], [ %1566, %1563 ], [ %2267, %2334 ], [ %2267, %2332 ], [ %2267, %2300 ], [ %2267, %2285 ], [ %1566, %1573 ]
  %2350 = phi float [ %2268, %2266 ], [ %1567, %1869 ], [ %1567, %1563 ], [ %2268, %2334 ], [ %2268, %2332 ], [ %2268, %2300 ], [ %2268, %2285 ], [ %1567, %1573 ]
  %2351 = phi float [ %2269, %2266 ], [ %1568, %1869 ], [ %1568, %1563 ], [ %2269, %2334 ], [ %2269, %2332 ], [ %2269, %2300 ], [ %2269, %2285 ], [ %1568, %1573 ]
  %2352 = phi float [ %2270, %2266 ], [ %1569, %1869 ], [ %1569, %1563 ], [ %2270, %2334 ], [ %2270, %2332 ], [ %2270, %2300 ], [ %2270, %2285 ], [ %1569, %1573 ]
  %2353 = phi float [ %1570, %2266 ], [ %1570, %1869 ], [ %1570, %1563 ], [ %2345, %2334 ], [ %1570, %2332 ], [ %2331, %2300 ], [ %2297, %2285 ], [ %1570, %1573 ]
  %2354 = phi float [ %1571, %2266 ], [ %1571, %1869 ], [ %1571, %1563 ], [ %2342, %2334 ], [ %1571, %2332 ], [ %2308, %2300 ], [ %2294, %2285 ], [ %1571, %1573 ]
  %2355 = phi float [ %2271, %2266 ], [ %1572, %1869 ], [ %1572, %1563 ], [ %2271, %2334 ], [ %2271, %2332 ], [ %2271, %2300 ], [ %2271, %2285 ], [ %1572, %1573 ]
  br i1 %308, label %3129, label %2356

; <label>:2356                                    ; preds = %2346
  %2357 = icmp ult i32 %359, 4
  %2358 = add i32 %39, 72
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %39, 76
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = or i32 %2363, %2360
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %3129, label %2366

; <label>:2366                                    ; preds = %2356
  %2367 = and i32 %2360, 262144
  %2368 = icmp ne i32 %2367, 0
  %2369 = select i1 %2368, float %42, float 1.000000e+00
  %2370 = select i1 %2368, float %43, float 0.000000e+00
  %2371 = select i1 %2368, float %44, float 0.000000e+00
  %2372 = select i1 %2368, float %45, float 1.000000e+00
  %2373 = select i1 %2368, float %46, float %62
  %2374 = select i1 %2368, float %47, float %63
  %2375 = add i32 %39, 332
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = lshr i32 %2377, 16
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = fmul fast float %2379, 0x3F50624DE0000000
  %2381 = add i32 %39, 136
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = lshr i32 %2383, 16
  %2385 = and i32 %2384, 255
  %2386 = lshr i32 %2383, 24
  %2387 = add i32 %39, 340
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = lshr i32 %2389, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = add i32 %39, 80
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = lshr i32 %2396, 22
  %2398 = shl nuw nsw i32 %2397, 5
  %2399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2398)  ; LegacyF16ToF32(value)
  %2400 = shl i32 %2396, 4
  %2401 = and i32 %2400, 32752
  %2402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2401)  ; LegacyF16ToF32(value)
  %2403 = lshr i32 %2396, 7
  %2404 = and i32 %2403, 32752
  %2405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2404)  ; LegacyF16ToF32(value)
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2408 = fmul fast float %2407, 1.000000e+03
  %2409 = fmul fast float %298, %2408
  %2410 = call float @dx.op.unary.f32(i32 22, float %2409)  ; Frc(value)
  %2411 = fadd fast float %2410, %288
  %2412 = fmul fast float %299, %2408
  %2413 = call float @dx.op.unary.f32(i32 22, float %2412)  ; Frc(value)
  %2414 = fadd fast float %2413, %290
  %2415 = fmul fast float %2380, %2408
  %2416 = call float @dx.op.unary.f32(i32 22, float %2415)  ; Frc(value)
  %2417 = fmul fast float %2416, 0x401921FB60000000
  %2418 = fadd fast float %2417, %2399
  %2419 = call float @dx.op.unary.f32(i32 13, float %2418)  ; Sin(value)
  %2420 = call float @dx.op.unary.f32(i32 12, float %2418)  ; Cos(value)
  %2421 = fsub fast float -0.000000e+00, %2419
  %2422 = fadd fast float %2373, -5.000000e-01
  %2423 = fadd fast float %2374, -5.000000e-01
  %2424 = fmul fast float %2391, %2422
  %2425 = fmul fast float %2393, %2423
  %2426 = fadd fast float %2424, 5.000000e-01
  %2427 = fadd fast float %2425, 5.000000e-01
  %2428 = fmul fast float %2402, %2426
  %2429 = fmul fast float %2405, %2427
  %2430 = fmul fast float %2420, %2428
  %2431 = call float @dx.op.tertiary.f32(i32 46, float %2421, float %2429, float %2430)  ; FMad(a,b,c)
  %2432 = fmul fast float %2419, %2428
  %2433 = call float @dx.op.tertiary.f32(i32 46, float %2420, float %2429, float %2432)  ; FMad(a,b,c)
  %2434 = fadd fast float %2411, %2431
  %2435 = fadd fast float %2414, %2433
  %2436 = icmp ugt i32 %2385, 1
  %2437 = icmp ugt i32 %2383, 33554431
  %2438 = or i1 %2437, %2436
  br i1 %2438, label %2439, label %2464

; <label>:2439                                    ; preds = %2366
  %2440 = add i32 %39, 276
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = lshr i32 %2442, 16
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = fmul fast float %2407, %2444
  %2446 = call float @dx.op.unary.f32(i32 22, float %2445)  ; Frc(value)
  %2447 = mul nuw nsw i32 %2385, %2386
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2446, %2448
  %2450 = call float @dx.op.unary.f32(i32 27, float %2449)  ; Round_ni(value)
  %2451 = fptoui float %2450 to i32
  %2452 = urem i32 %2451, %2385
  %2453 = udiv i32 %2451, %2386
  %2454 = call float @dx.op.unary.f32(i32 22, float %2434)  ; Frc(value)
  %2455 = call float @dx.op.unary.f32(i32 22, float %2435)  ; Frc(value)
  %2456 = uitofp i32 %2452 to float
  %2457 = uitofp i32 %2453 to float
  %2458 = fadd fast float %2454, %2456
  %2459 = fadd fast float %2455, %2457
  %2460 = uitofp i32 %2385 to float
  %2461 = uitofp i32 %2386 to float
  %2462 = fdiv fast float %2458, %2460
  %2463 = fdiv fast float %2459, %2461
  br label %2464

; <label>:2464                                    ; preds = %2439, %2366
  %2465 = phi float [ %2462, %2439 ], [ %2434, %2366 ]
  %2466 = phi float [ %2463, %2439 ], [ %2435, %2366 ]
  %2467 = and i32 %2360, 16777216
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2578, label %2469

; <label>:2469                                    ; preds = %2464
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2474 = fadd fast float %2471, %137
  %2475 = fadd fast float %2472, %138
  %2476 = fadd fast float %2473, %139
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2480 = icmp eq i32 %40, 65535
  br i1 %2480, label %2575, label %2481

; <label>:2481                                    ; preds = %2469
  %2482 = lshr i32 %40, 1
  %2483 = shl i32 %2482, 2
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %40, 1
  %2487 = icmp ne i32 %2486, 0
  %2488 = lshr i32 %2485, 16
  %2489 = and i32 %2485, 65535
  %2490 = select i1 %2487, i32 %2488, i32 %2489
  %2491 = icmp eq i32 %2490, 65535
  br i1 %2491, label %2571, label %2492

; <label>:2492                                    ; preds = %2481
  %2493 = mul nuw nsw i32 %2490, 40
  %2494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.ResRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.ResRet.f32 %2494, 2
  %2498 = add nuw nsw i32 %2493, 12
  %2499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = add nuw nsw i32 %2493, 24
  %2504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = add nuw nsw i32 %2493, 36
  %2509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = fsub fast float %2474, %2495
  %2512 = fsub fast float %2475, %2496
  %2513 = fsub fast float %2476, %2497
  %2514 = fmul fast float %2510, %2511
  %2515 = fmul fast float %2510, %2512
  %2516 = fmul fast float %2510, %2513
  %2517 = call float @dx.op.unary.f32(i32 27, float %2514)  ; Round_ni(value)
  %2518 = call float @dx.op.unary.f32(i32 27, float %2515)  ; Round_ni(value)
  %2519 = call float @dx.op.unary.f32(i32 27, float %2516)  ; Round_ni(value)
  %2520 = fadd fast float %2517, 5.000000e-01
  %2521 = fadd fast float %2518, 5.000000e-01
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = fmul fast float %2520, %2500
  %2524 = fmul fast float %2521, %2501
  %2525 = fmul fast float %2522, %2502
  %2526 = shl i32 %40, 2
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = add i32 %2528, 0
  %2530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2531 = call float @dx.op.unary.f32(i32 22, float %2523)  ; Frc(value)
  %2532 = call float @dx.op.unary.f32(i32 22, float %2524)  ; Frc(value)
  %2533 = call float @dx.op.unary.f32(i32 22, float %2525)  ; Frc(value)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2530, %dx.types.Handle %35, float %2531, float %2532, float %2533, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = fmul fast float %2535, 1.023000e+03
  %2539 = fmul fast float %2536, 1.023000e+03
  %2540 = fmul fast float %2537, 1.023000e+03
  %2541 = fadd fast float %2538, 5.000000e-01
  %2542 = fadd fast float %2539, 5.000000e-01
  %2543 = fadd fast float %2540, 5.000000e-01
  %2544 = call float @dx.op.unary.f32(i32 27, float %2541)  ; Round_ni(value)
  %2545 = call float @dx.op.unary.f32(i32 27, float %2542)  ; Round_ni(value)
  %2546 = call float @dx.op.unary.f32(i32 27, float %2543)  ; Round_ni(value)
  %2547 = fsub fast float %2514, %2517
  %2548 = fsub fast float %2515, %2518
  %2549 = fsub fast float %2516, %2519
  %2550 = fmul fast float %2547, 7.500000e-01
  %2551 = fmul fast float %2548, 7.500000e-01
  %2552 = fmul fast float %2549, 7.500000e-01
  %2553 = fadd fast float %2517, 1.250000e-01
  %2554 = fadd fast float %2553, %2550
  %2555 = fadd fast float %2554, %2544
  %2556 = fadd fast float %2518, 1.250000e-01
  %2557 = fadd fast float %2556, %2551
  %2558 = fadd fast float %2557, %2545
  %2559 = fadd fast float %2519, 1.250000e-01
  %2560 = fadd fast float %2559, %2552
  %2561 = fadd fast float %2560, %2546
  %2562 = fmul fast float %2555, %2505
  %2563 = fmul fast float %2558, %2506
  %2564 = fmul fast float %2561, %2507
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2568, %dx.types.Handle %33, float %2562, float %2563, float %2564, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  br label %2571

; <label>:2571                                    ; preds = %2492, %2481
  %2572 = phi float [ %2570, %2492 ], [ -1.000000e+00, %2481 ]
  %2573 = fadd fast float %2572, %2479
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  br label %2575

; <label>:2575                                    ; preds = %2571, %2469
  %2576 = phi float [ %2574, %2571 ], [ %2479, %2469 ]
  %2577 = fmul fast float %2576, %354
  br label %2578

; <label>:2578                                    ; preds = %2575, %2464
  %2579 = phi float [ %2577, %2575 ], [ %354, %2464 ]
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 256
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2630, label %2584

; <label>:2584                                    ; preds = %2578
  %2585 = add i32 %39, 452
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = add i32 %2587, 0
  %2589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2589, %dx.types.Handle %71, float %2465, float %2466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2591 = extractvalue %dx.types.ResRet.f32 %2590, 0
  %2592 = add i32 %39, 148
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = shl i32 %2594, 4
  %2596 = and i32 %2595, 32752
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = lshr i32 %2594, 7
  %2599 = and i32 %2598, 32752
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = fsub fast float 1.000000e+00, %2579
  %2602 = call float @dx.op.binary.f32(i32 35, float %2601, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2603 = bitcast float %2579 to i32
  %2604 = sitofp i32 %2603 to float
  %2605 = fadd fast float %2604, 0xC1CFBF8940000000
  %2606 = fmul fast float %2600, %2605
  %2607 = fadd fast float %2606, 0x41CFBF8940000000
  %2608 = fptosi float %2607 to i32
  %2609 = bitcast i32 %2608 to float
  %2610 = bitcast float %2602 to i32
  %2611 = sitofp i32 %2610 to float
  %2612 = fadd fast float %2611, 0xC1CFBF8940000000
  %2613 = fmul fast float %2612, %2600
  %2614 = fadd fast float %2613, 0x41CFBF8940000000
  %2615 = fptosi float %2614 to i32
  %2616 = bitcast i32 %2615 to float
  %2617 = fmul fast float %2609, %2597
  %2618 = fmul fast float %2616, %2597
  %2619 = fsub fast float %2602, %2617
  %2620 = fadd fast float %2618, %2602
  %2621 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2622 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2623 = fsub fast float %2591, %2621
  %2624 = fsub fast float %2622, %2621
  %2625 = bitcast float %2624 to i32
  %2626 = sub nsw i32 2129859010, %2625
  %2627 = bitcast i32 %2626 to float
  %2628 = fmul fast float %2627, %2623
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  br label %2630

; <label>:2630                                    ; preds = %2584, %2578
  %2631 = phi float [ %2629, %2584 ], [ %2579, %2578 ]
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 128
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2652, label %2636

; <label>:2636                                    ; preds = %2630
  %2637 = add i32 %39, 436
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %2639, 0
  %2641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2641, %dx.types.Handle %71, float %2465, float %2466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 524288
  %2647 = icmp ne i32 %2646, 0
  %2648 = fcmp fast ogt float %2643, 0x3FE0101020000000
  %2649 = select i1 %2648, float 1.000000e+00, float 0.000000e+00
  %2650 = select i1 %2647, float %2649, float %2643
  %2651 = fmul fast float %2650, %2631
  br label %2652

; <label>:2652                                    ; preds = %2636, %2630
  %2653 = phi float [ %2651, %2636 ], [ %2631, %2630 ]
  %2654 = fcmp fast ult float %2653, 0x3F70101020000000
  br i1 %2654, label %3129, label %2655

; <label>:2655                                    ; preds = %2652
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, 16
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2858, label %2660

; <label>:2660                                    ; preds = %2655
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %39, 388
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = add i32 %2665, 0
  %2667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2667, %dx.types.Handle %70, float %2465, float %2466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.ResRet.f32 %2668, 3
  %2673 = and i32 %2662, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = lshr i32 %2662, 8
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2672, %2674
  %2679 = fadd fast float %2678, %2677
  %2680 = fmul fast float %2679, 0x3F70101000000000
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 512
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2693, label %2685

; <label>:2685                                    ; preds = %2660
  %2686 = add i32 %39, 468
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = add i32 %2688, 0
  %2690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2690, %dx.types.Handle %71, float %2465, float %2466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  br label %2693

; <label>:2693                                    ; preds = %2685, %2660
  %2694 = phi float [ %2692, %2685 ], [ 1.000000e+00, %2660 ]
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = and i32 %2696, 33554432
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2805, label %2699

; <label>:2699                                    ; preds = %2693
  %2700 = add i32 %39, 272
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 65535
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = lshr i32 %2702, 16
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = add i32 %39, 276
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 65535
  %2711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2710)  ; LegacyF16ToF32(value)
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = lshr i32 %2713, 24
  %2715 = uitofp i32 %2714 to float
  %2716 = fmul fast float %2715, 0x3F70101020000000
  %2717 = and i32 %2713, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = lshr i32 %2713, 8
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = lshr i32 %2713, 16
  %2725 = and i32 %2724, 255
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2726, 0x3F70101020000000
  %2728 = add i32 %39, 268
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = lshr i32 %2730, 24
  %2732 = uitofp i32 %2731 to float
  %2733 = fmul fast float %2732, 0x3F70101020000000
  %2734 = and i32 %2730, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 0x3F70101020000000
  %2737 = lshr i32 %2730, 8
  %2738 = and i32 %2737, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2739, 0x3F70101020000000
  %2741 = lshr i32 %2730, 16
  %2742 = and i32 %2741, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2743, 0x3F70101020000000
  %2745 = bitcast float %2669 to i32
  %2746 = ashr i32 %2745, 1
  %2747 = sub nsw i32 1597463174, %2746
  %2748 = bitcast i32 %2747 to float
  %2749 = fmul fast float %2669, 5.000000e-01
  %2750 = fmul fast float %2748, %2748
  %2751 = fmul fast float %2750, %2749
  %2752 = fsub fast float 1.500000e+00, %2751
  %2753 = fmul fast float %2748, %2669
  %2754 = fmul fast float %2753, %2752
  %2755 = bitcast float %2670 to i32
  %2756 = ashr i32 %2755, 1
  %2757 = sub nsw i32 1597463174, %2756
  %2758 = bitcast i32 %2757 to float
  %2759 = fmul fast float %2670, 5.000000e-01
  %2760 = fmul fast float %2758, %2758
  %2761 = fmul fast float %2760, %2759
  %2762 = fsub fast float 1.500000e+00, %2761
  %2763 = fmul fast float %2758, %2670
  %2764 = fmul fast float %2763, %2762
  %2765 = bitcast float %2671 to i32
  %2766 = ashr i32 %2765, 1
  %2767 = sub nsw i32 1597463174, %2766
  %2768 = bitcast i32 %2767 to float
  %2769 = fmul fast float %2671, 5.000000e-01
  %2770 = fmul fast float %2768, %2768
  %2771 = fmul fast float %2770, %2769
  %2772 = fsub fast float 1.500000e+00, %2771
  %2773 = fmul fast float %2768, %2671
  %2774 = fmul fast float %2773, %2772
  %2775 = fsub fast float %2754, %2736
  %2776 = fsub fast float %2764, %2740
  %2777 = fsub fast float %2774, %2744
  %2778 = fmul fast float %2775, %2704
  %2779 = fmul fast float %2776, %2706
  %2780 = fmul fast float %2777, %2711
  %2781 = fadd fast float %2778, %2719
  %2782 = fadd fast float %2779, %2723
  %2783 = fadd fast float %2780, %2727
  %2784 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2785 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2786 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2787 = fmul fast float %2784, %2784
  %2788 = fmul fast float %2785, %2785
  %2789 = fmul fast float %2786, %2786
  %2790 = fsub fast float %2787, %2669
  %2791 = fsub fast float %2788, %2670
  %2792 = fsub fast float %2789, %2671
  %2793 = fmul fast float %2790, %2694
  %2794 = fmul fast float %2791, %2694
  %2795 = fmul fast float %2792, %2694
  %2796 = fadd fast float %2793, %2669
  %2797 = fadd fast float %2794, %2670
  %2798 = fadd fast float %2795, %2671
  %2799 = fadd fast float %2716, %2680
  %2800 = fsub fast float %2799, %2733
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = fsub fast float %2801, %2680
  %2803 = fmul fast float %2802, %2694
  %2804 = fadd fast float %2803, %2680
  br label %2858

; <label>:2805                                    ; preds = %2693
  %2806 = and i32 %2696, 134217728
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2842, label %2808

; <label>:2808                                    ; preds = %2805
  %2809 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2810 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2811 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2812 = fadd fast float %2809, -5.000000e-01
  %2813 = fadd fast float %2810, -5.000000e-01
  %2814 = fadd fast float %2811, -5.000000e-01
  %2815 = fmul fast float %2812, %2694
  %2816 = fmul fast float %2813, %2694
  %2817 = fmul fast float %2814, %2694
  %2818 = fadd fast float %2815, 5.000000e-01
  %2819 = fadd fast float %2816, 5.000000e-01
  %2820 = fadd fast float %2817, 5.000000e-01
  %2821 = call float @dx.op.unary.f32(i32 24, float %2669)  ; Sqrt(value)
  %2822 = call float @dx.op.unary.f32(i32 24, float %2670)  ; Sqrt(value)
  %2823 = call float @dx.op.unary.f32(i32 24, float %2671)  ; Sqrt(value)
  %2824 = fmul fast float %2818, 2.000000e+00
  %2825 = fsub fast float 1.000000e+00, %2824
  %2826 = fmul fast float %2825, %2821
  %2827 = fadd fast float %2826, %2824
  %2828 = fmul fast float %2827, %2821
  %2829 = fmul fast float %2819, 2.000000e+00
  %2830 = fsub fast float 1.000000e+00, %2829
  %2831 = fmul fast float %2830, %2822
  %2832 = fadd fast float %2831, %2829
  %2833 = fmul fast float %2832, %2822
  %2834 = fmul fast float %2820, 2.000000e+00
  %2835 = fsub fast float 1.000000e+00, %2834
  %2836 = fmul fast float %2835, %2823
  %2837 = fadd fast float %2836, %2834
  %2838 = fmul fast float %2837, %2823
  %2839 = fmul fast float %2828, %2828
  %2840 = fmul fast float %2833, %2833
  %2841 = fmul fast float %2838, %2838
  br label %2858

; <label>:2842                                    ; preds = %2805
  %2843 = fmul fast float %275, %275
  %2844 = fmul fast float %279, %279
  %2845 = fmul fast float %283, %283
  %2846 = fadd fast float %2843, -1.000000e+00
  %2847 = fadd fast float %2844, -1.000000e+00
  %2848 = fadd fast float %2845, -1.000000e+00
  %2849 = fmul fast float %2694, %2846
  %2850 = fmul fast float %2694, %2847
  %2851 = fmul fast float %2694, %2848
  %2852 = fadd fast float %2849, 1.000000e+00
  %2853 = fadd fast float %2850, 1.000000e+00
  %2854 = fadd fast float %2851, 1.000000e+00
  %2855 = fmul fast float %2852, %2669
  %2856 = fmul fast float %2853, %2670
  %2857 = fmul fast float %2854, %2671
  br label %2858

; <label>:2858                                    ; preds = %2842, %2808, %2699, %2655
  %2859 = phi float [ %2804, %2699 ], [ %2680, %2808 ], [ %2680, %2842 ], [ 0x3FA23C0BE0000000, %2655 ]
  %2860 = phi float [ %2796, %2699 ], [ %2839, %2808 ], [ %2855, %2842 ], [ 1.000000e+00, %2655 ]
  %2861 = phi float [ %2797, %2699 ], [ %2840, %2808 ], [ %2856, %2842 ], [ 1.000000e+00, %2655 ]
  %2862 = phi float [ %2798, %2699 ], [ %2841, %2808 ], [ %2857, %2842 ], [ 1.000000e+00, %2655 ]
  %2863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.i32 %2863, 1
  %2865 = and i32 %2864, 1
  %2866 = icmp ne i32 %2865, 0
  %2867 = add i32 %39, 356
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 32
  %2871 = icmp ne i32 %2870, 0
  %2872 = and i1 %2866, %2871
  %2873 = select i1 %2872, float 1.000000e+00, float %2860
  %2874 = select i1 %2872, float 0x3FD3333340000000, float %2861
  %2875 = select i1 %2872, float 0x3FD3333340000000, float %2862
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 32
  %2879 = icmp eq i32 %2878, 0
  br i1 %2879, label %2952, label %2880

; <label>:2880                                    ; preds = %2858
  %2881 = add i32 %39, 140
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = add i32 %39, 404
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = add i32 %2886, 0
  %2888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2887, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2888, %dx.types.Handle %70, float %2465, float %2466, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.ResRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.ResRet.f32 %2889, 2
  %2893 = extractvalue %dx.types.ResRet.f32 %2889, 3
  %2894 = and i32 %2883, 255
  %2895 = uitofp i32 %2894 to float
  %2896 = lshr i32 %2883, 8
  %2897 = and i32 %2896, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = lshr i32 %2883, 16
  %2900 = and i32 %2899, 255
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2901, 0x3F70101000000000
  %2903 = fmul fast float %2890, %2895
  %2904 = fadd fast float %2903, %2898
  %2905 = fmul fast float %2904, 0x3F70101000000000
  %2906 = fadd fast float %2891, -5.000000e-01
  %2907 = fadd fast float %2893, -5.000000e-01
  %2908 = fmul fast float %2906, %2902
  %2909 = fmul fast float %2907, %2902
  %2910 = fadd fast float %2908, 5.000000e-01
  %2911 = fadd fast float %2909, 5.000000e-01
  %2912 = fmul fast float %2910, 2.000000e+00
  %2913 = fadd fast float %2912, -1.000000e+00
  %2914 = fmul fast float %2911, 2.000000e+00
  %2915 = fadd fast float %2914, -1.000000e+00
  %2916 = fadd fast float %2913, %2915
  %2917 = fmul fast float %2916, 5.000000e-01
  %2918 = fsub fast float %2913, %2915
  %2919 = fmul fast float %2918, 5.000000e-01
  %2920 = call float @dx.op.unary.f32(i32 6, float %2917)  ; FAbs(value)
  %2921 = fsub fast float 1.000000e+00, %2920
  %2922 = call float @dx.op.unary.f32(i32 6, float %2919)  ; FAbs(value)
  %2923 = fsub fast float %2921, %2922
  %2924 = call float @dx.op.dot3.f32(i32 55, float %2917, float %2919, float %2923, float %2917, float %2919, float %2923)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = call float @dx.op.unary.f32(i32 25, float %2924)  ; Rsqrt(value)
  %2926 = fmul fast float %2917, %2925
  %2927 = fmul fast float %2919, %2925
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 67108864
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2948, label %2932

; <label>:2932                                    ; preds = %2880
  %2933 = add i32 %39, 328
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 65535
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2935, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = fsub fast float %2905, %2943
  %2945 = fmul fast float %2944, %2937
  %2946 = fadd fast float %2945, %2941
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  br label %2948

; <label>:2948                                    ; preds = %2932, %2880
  %2949 = phi float [ %2947, %2932 ], [ %2905, %2880 ]
  %2950 = call float @dx.op.dot2.f32(i32 54, float %2926, float %2927, float %2369, float %2370)  ; Dot2(ax,ay,bx,by)
  %2951 = call float @dx.op.dot2.f32(i32 54, float %2926, float %2927, float %2371, float %2372)  ; Dot2(ax,ay,bx,by)
  br label %2952

; <label>:2952                                    ; preds = %2948, %2858
  %2953 = phi float [ %2949, %2948 ], [ 0x3FD6666660000000, %2858 ]
  %2954 = phi float [ %2950, %2948 ], [ 0.000000e+00, %2858 ]
  %2955 = phi float [ %2951, %2948 ], [ 0.000000e+00, %2858 ]
  %2956 = phi float [ %2892, %2948 ], [ 1.000000e+00, %2858 ]
  %2957 = add i32 %39, 144
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2959, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2873, float %2874, float %2875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = fmul fast float %2964, %2965
  %2967 = fadd fast float %2966, %2961
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  br i1 %2357, label %2970, label %2975

; <label>:2970                                    ; preds = %2952
  %2971 = fsub fast float 1.000000e+00, %2653
  %2972 = fmul fast float %2971, %2349
  %2973 = fmul fast float %2971, %2350
  %2974 = fmul fast float %2971, %2351
  br label %2975

; <label>:2975                                    ; preds = %2970, %2952
  %2976 = phi float [ %2972, %2970 ], [ %2349, %2952 ]
  %2977 = phi float [ %2973, %2970 ], [ %2350, %2952 ]
  %2978 = phi float [ %2974, %2970 ], [ %2351, %2952 ]
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 3
  %2982 = icmp eq i32 %2981, 3
  br i1 %2982, label %3049, label %2983

; <label>:2983                                    ; preds = %2975
  %2984 = and i32 %2980, 16
  %2985 = icmp ne i32 %2984, 0
  %2986 = select i1 %2985, float %2653, float 0.000000e+00
  %2987 = icmp eq i32 %2981, 0
  br i1 %2987, label %2988, label %3004

; <label>:2988                                    ; preds = %2983
  %2989 = fsub fast float %2873, %2976
  %2990 = fsub fast float %2874, %2977
  %2991 = fsub fast float %2875, %2978
  %2992 = fmul fast float %2986, %2989
  %2993 = fmul fast float %2986, %2990
  %2994 = fmul fast float %2986, %2991
  %2995 = fadd fast float %2992, %2976
  %2996 = fadd fast float %2993, %2977
  %2997 = fadd fast float %2994, %2978
  %2998 = fsub fast float %2859, %2352
  %2999 = fmul fast float %2986, %2998
  %3000 = fadd fast float %2999, %2352
  %3001 = fsub fast float %2969, %2355
  %3002 = fmul fast float %2986, %3001
  %3003 = fadd fast float %3002, %2355
  br label %3049

; <label>:3004                                    ; preds = %2983
  %3005 = icmp eq i32 %2981, 1
  br i1 %3005, label %3006, label %3019

; <label>:3006                                    ; preds = %3004
  %3007 = fadd fast float %2873, -1.000000e+00
  %3008 = fadd fast float %2874, -1.000000e+00
  %3009 = fadd fast float %2875, -1.000000e+00
  %3010 = fmul fast float %2986, %3007
  %3011 = fmul fast float %2986, %3008
  %3012 = fmul fast float %2986, %3009
  %3013 = fadd fast float %3010, 1.000000e+00
  %3014 = fadd fast float %3011, 1.000000e+00
  %3015 = fadd fast float %3012, 1.000000e+00
  %3016 = fmul fast float %3013, %2976
  %3017 = fmul fast float %3014, %2977
  %3018 = fmul fast float %3015, %2978
  br label %3049

; <label>:3019                                    ; preds = %3004
  %3020 = icmp eq i32 %2981, 2
  br i1 %3020, label %3021, label %3049

; <label>:3021                                    ; preds = %3019
  %3022 = call float @dx.op.unary.f32(i32 24, float %2873)  ; Sqrt(value)
  %3023 = call float @dx.op.unary.f32(i32 24, float %2874)  ; Sqrt(value)
  %3024 = call float @dx.op.unary.f32(i32 24, float %2875)  ; Sqrt(value)
  %3025 = fadd fast float %3022, -5.000000e-01
  %3026 = fadd fast float %3023, -5.000000e-01
  %3027 = fadd fast float %3024, -5.000000e-01
  %3028 = fmul fast float %3025, %2986
  %3029 = fmul fast float %3026, %2986
  %3030 = fmul fast float %3027, %2986
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = fadd fast float %3029, 5.000000e-01
  %3033 = fadd fast float %3030, 5.000000e-01
  %3034 = fmul fast float %3031, 2.000000e+00
  %3035 = fsub fast float 1.000000e+00, %3034
  %3036 = fmul fast float %3035, %2976
  %3037 = fadd fast float %3036, %3034
  %3038 = fmul fast float %3037, %2976
  %3039 = fmul fast float %3032, 2.000000e+00
  %3040 = fsub fast float 1.000000e+00, %3039
  %3041 = fmul fast float %3040, %2977
  %3042 = fadd fast float %3041, %3039
  %3043 = fmul fast float %3042, %2977
  %3044 = fmul fast float %3033, 2.000000e+00
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = fmul fast float %3045, %2978
  %3047 = fadd fast float %3046, %3044
  %3048 = fmul fast float %3047, %2978
  br label %3049

; <label>:3049                                    ; preds = %3021, %3019, %3006, %2988, %2975
  %3050 = phi float [ %2976, %2975 ], [ %3038, %3021 ], [ %2976, %3019 ], [ %3016, %3006 ], [ %2995, %2988 ]
  %3051 = phi float [ %2977, %2975 ], [ %3043, %3021 ], [ %2977, %3019 ], [ %3017, %3006 ], [ %2996, %2988 ]
  %3052 = phi float [ %2978, %2975 ], [ %3048, %3021 ], [ %2978, %3019 ], [ %3018, %3006 ], [ %2997, %2988 ]
  %3053 = phi float [ %2352, %2975 ], [ %2352, %3021 ], [ %2352, %3019 ], [ %2352, %3006 ], [ %3000, %2988 ]
  %3054 = phi float [ %2355, %2975 ], [ %2355, %3021 ], [ %2355, %3019 ], [ %2355, %3006 ], [ %3003, %2988 ]
  %3055 = and i32 %2980, 12
  %3056 = icmp eq i32 %3055, 12
  br i1 %3056, label %3129, label %3057

; <label>:3057                                    ; preds = %3049
  %3058 = and i32 %2980, 2097184
  %3059 = icmp eq i32 %3058, 2097184
  %3060 = select i1 %3059, float %2653, float 0.000000e+00
  %3061 = and i32 %2980, 4194336
  %3062 = icmp eq i32 %3061, 4194336
  %3063 = select i1 %3062, float %2653, float 0.000000e+00
  %3064 = and i32 %2980, 8388640
  %3065 = icmp eq i32 %3064, 8388640
  %3066 = select i1 %3065, float %2653, float 0.000000e+00
  %3067 = icmp eq i32 %3055, 0
  br i1 %3067, label %3068, label %3081

; <label>:3068                                    ; preds = %3057
  %3069 = fsub fast float %2954, %2347
  %3070 = fsub fast float %2955, %2348
  %3071 = fmul fast float %3060, %3069
  %3072 = fmul fast float %3060, %3070
  %3073 = fadd fast float %3071, %2347
  %3074 = fadd fast float %3072, %2348
  %3075 = fsub fast float %2956, %2354
  %3076 = fmul fast float %3063, %3075
  %3077 = fadd fast float %3076, %2354
  %3078 = fsub fast float %2953, %2353
  %3079 = fmul fast float %3066, %3078
  %3080 = fadd fast float %3079, %2353
  br label %3129

; <label>:3081                                    ; preds = %3057
  %3082 = icmp eq i32 %3055, 4
  br i1 %3082, label %3083, label %3115

; <label>:3083                                    ; preds = %3081
  %3084 = fmul fast float %3060, %2954
  %3085 = fmul fast float %3060, %2955
  %3086 = fadd fast float %3084, %2347
  %3087 = fadd fast float %3085, %2348
  %3088 = call float @dx.op.binary.f32(i32 36, float %2354, float %2956)  ; FMin(a,b)
  %3089 = fsub fast float %3088, %2354
  %3090 = fmul fast float %3089, %3063
  %3091 = fadd fast float %3090, %2354
  %3092 = fadd fast float %2953, %2353
  %3093 = fmul fast float %3092, 0x3FF337FAE0000000
  %3094 = fmul fast float %2353, %2353
  %3095 = fmul fast float %2953, %2953
  %3096 = fadd fast float %3095, %3094
  %3097 = fmul fast float %3096, 0x3FE5152B00000000
  %3098 = fmul fast float %2353, 0xBFCC1F85E0000000
  %3099 = fmul fast float %3098, %2953
  %3100 = fadd fast float %3099, 0xBFE1363700000000
  %3101 = fadd fast float %3100, %3093
  %3102 = fsub fast float %3101, %3097
  %3103 = fmul fast float %3092, 0x3FBA6F0D00000000
  %3104 = fmul fast float %3096, 0x3FD0432880000000
  %3105 = fmul fast float %2353, 0xBFEF110800000000
  %3106 = fmul fast float %3105, %2953
  %3107 = fadd fast float %3106, 1.000000e+00
  %3108 = fsub fast float %3107, %3103
  %3109 = fadd fast float %3108, %3104
  %3110 = fdiv fast float %3102, %3109
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3112 = fsub fast float %3111, %2353
  %3113 = fmul fast float %3112, %3066
  %3114 = fadd fast float %3113, %2353
  br label %3129

; <label>:3115                                    ; preds = %3081
  %3116 = icmp eq i32 %3055, 8
  br i1 %3116, label %3117, label %3129

; <label>:3117                                    ; preds = %3115
  %3118 = fmul fast float %3060, %2954
  %3119 = fmul fast float %3060, %2955
  %3120 = fadd fast float %3118, %2347
  %3121 = fadd fast float %3119, %2348
  %3122 = call float @dx.op.binary.f32(i32 36, float %2354, float %2956)  ; FMin(a,b)
  %3123 = fsub fast float %3122, %2354
  %3124 = fmul fast float %3123, %3063
  %3125 = fadd fast float %3124, %2354
  %3126 = fsub fast float %2953, %2353
  %3127 = fmul fast float %3066, %3126
  %3128 = fadd fast float %3127, %2353
  br label %3129

; <label>:3129                                    ; preds = %3117, %3115, %3083, %3068, %3049, %2652, %2356, %2346
  %3130 = phi float [ %2347, %3049 ], [ %2347, %2652 ], [ %2347, %2346 ], [ %2347, %2356 ], [ %3073, %3068 ], [ %3086, %3083 ], [ %2347, %3115 ], [ %3120, %3117 ]
  %3131 = phi float [ %2348, %3049 ], [ %2348, %2652 ], [ %2348, %2346 ], [ %2348, %2356 ], [ %3074, %3068 ], [ %3087, %3083 ], [ %2348, %3115 ], [ %3121, %3117 ]
  %3132 = phi float [ %3050, %3049 ], [ %2349, %2652 ], [ %2349, %2346 ], [ %2349, %2356 ], [ %3050, %3068 ], [ %3050, %3083 ], [ %3050, %3115 ], [ %3050, %3117 ]
  %3133 = phi float [ %3051, %3049 ], [ %2350, %2652 ], [ %2350, %2346 ], [ %2350, %2356 ], [ %3051, %3068 ], [ %3051, %3083 ], [ %3051, %3115 ], [ %3051, %3117 ]
  %3134 = phi float [ %3052, %3049 ], [ %2351, %2652 ], [ %2351, %2346 ], [ %2351, %2356 ], [ %3052, %3068 ], [ %3052, %3083 ], [ %3052, %3115 ], [ %3052, %3117 ]
  %3135 = phi float [ %3053, %3049 ], [ %2352, %2652 ], [ %2352, %2346 ], [ %2352, %2356 ], [ %3053, %3068 ], [ %3053, %3083 ], [ %3053, %3115 ], [ %3053, %3117 ]
  %3136 = phi float [ %2353, %3049 ], [ %2353, %2652 ], [ %2353, %2346 ], [ %2353, %2356 ], [ %3080, %3068 ], [ %3114, %3083 ], [ %2353, %3115 ], [ %3128, %3117 ]
  %3137 = phi float [ %2354, %3049 ], [ %2354, %2652 ], [ %2354, %2346 ], [ %2354, %2356 ], [ %3077, %3068 ], [ %3091, %3083 ], [ %2354, %3115 ], [ %3125, %3117 ]
  %3138 = phi float [ %3054, %3049 ], [ %2355, %2652 ], [ %2355, %2346 ], [ %2355, %2356 ], [ %3054, %3068 ], [ %3054, %3083 ], [ %3054, %3115 ], [ %3054, %3117 ]
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  %3141 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %3142 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 0
  %3145 = fcmp fast ogt float %3144, 5.000000e-01
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3150 = extractvalue %dx.types.CBufRet.f32 %3146, 3
  %3151 = fmul fast float %3147, %3141
  %3152 = fmul fast float %3148, %3142
  %3153 = fmul fast float %3149, %3141
  %3154 = fmul fast float %3150, %3142
  %3155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %3151, float %3152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  br i1 %3145, label %3157, label %3161

; <label>:3157                                    ; preds = %3129
  %3158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %3153, float %3154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  br label %3166

; <label>:3161                                    ; preds = %3129
  %3162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %3153, float %3154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %3153, float %3154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  br label %3166

; <label>:3166                                    ; preds = %3161, %3157
  %3167 = phi float [ %3159, %3157 ], [ %3163, %3161 ]
  %3168 = phi float [ %3160, %3157 ], [ %3165, %3161 ]
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3174 = call float @dx.op.dot4.f32(i32 56, float %3170, float %3171, float %3172, float %3173, float %3156, float %3167, float %3168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3175 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3180 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3181 = call float @dx.op.dot4.f32(i32 56, float %3177, float %3178, float %3179, float %3180, float %3156, float %3167, float %3168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3182 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.CBufRet.f32 %3183, 2
  %3187 = extractvalue %dx.types.CBufRet.f32 %3183, 3
  %3188 = call float @dx.op.dot4.f32(i32 56, float %3184, float %3185, float %3186, float %3187, float %3156, float %3167, float %3168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %3151, float %3152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  %3192 = fcmp fast ole float %3175, 0x3FA4B5DCC0000000
  %3193 = fmul fast float %3175, 0x3FB3D07220000000
  %3194 = fadd fast float %3175, 0x3FAC28F5C0000000
  %3195 = fmul fast float %3194, 0x3FEE54EDE0000000
  %3196 = call float @dx.op.unary.f32(i32 23, float %3195)  ; Log(value)
  %3197 = fmul fast float %3196, 0x4003333340000000
  %3198 = call float @dx.op.unary.f32(i32 21, float %3197)  ; Exp(value)
  %3199 = select i1 %3192, float %3193, float %3198
  %3200 = fcmp fast ole float %3182, 0x3FA4B5DCC0000000
  %3201 = fmul fast float %3182, 0x3FB3D07220000000
  %3202 = fadd fast float %3182, 0x3FAC28F5C0000000
  %3203 = fmul fast float %3202, 0x3FEE54EDE0000000
  %3204 = call float @dx.op.unary.f32(i32 23, float %3203)  ; Log(value)
  %3205 = fmul fast float %3204, 0x4003333340000000
  %3206 = call float @dx.op.unary.f32(i32 21, float %3205)  ; Exp(value)
  %3207 = select i1 %3200, float %3201, float %3206
  %3208 = fcmp fast ole float %3189, 0x3FA4B5DCC0000000
  %3209 = fmul fast float %3189, 0x3FB3D07220000000
  %3210 = fadd fast float %3189, 0x3FAC28F5C0000000
  %3211 = fmul fast float %3210, 0x3FEE54EDE0000000
  %3212 = call float @dx.op.unary.f32(i32 23, float %3211)  ; Log(value)
  %3213 = fmul fast float %3212, 0x4003333340000000
  %3214 = call float @dx.op.unary.f32(i32 21, float %3213)  ; Exp(value)
  %3215 = select i1 %3208, float %3209, float %3214
  %3216 = fmul fast float %3199, %3191
  %3217 = fmul fast float %3207, %3191
  %3218 = fmul fast float %3215, %3191
  %3219 = add i32 %39, 360
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = extractvalue %dx.types.ResRet.i32 %3220, 1
  %3223 = extractvalue %dx.types.ResRet.i32 %3220, 2
  %3224 = bitcast i32 %3221 to float
  %3225 = bitcast i32 %3222 to float
  %3226 = bitcast i32 %3223 to float
  %3227 = fmul fast float %3216, %3224
  %3228 = fmul fast float %3217, %3225
  %3229 = fmul fast float %3218, %3226
  %3230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.f32 %3230, 0
  %3232 = fmul fast float %3227, %3231
  %3233 = fmul fast float %3228, %3231
  %3234 = fmul fast float %3229, %3231
  %3235 = call float @dx.op.dot2.f32(i32 54, float %3130, float %3131, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3236 = fmul fast float %3235, 0x3FE3333340000000
  %3237 = fsub fast float 1.000000e+00, %3236
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3237, float %3130, float %3131, float %3237)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.unary.f32(i32 25, float %3238)  ; Rsqrt(value)
  %3240 = fmul fast float %3239, %3130
  %3241 = fmul fast float %3239, %3131
  %3242 = fmul fast float %3237, %3239
  %3243 = fmul fast float %3242, %81
  %3244 = fmul fast float %3242, %82
  %3245 = fmul fast float %3242, %83
  %3246 = fmul fast float %3240, %55
  %3247 = fmul fast float %3240, %56
  %3248 = fmul fast float %3240, %57
  %3249 = fadd fast float %3243, %3246
  %3250 = fadd fast float %3244, %3247
  %3251 = fadd fast float %3245, %3248
  %3252 = fmul fast float %93, %3241
  %3253 = fmul fast float %94, %3241
  %3254 = fmul fast float %95, %3241
  %3255 = fadd fast float %3249, %3252
  %3256 = fadd fast float %3250, %3253
  %3257 = fadd fast float %3251, %3254
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3256, float %3257, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 25, float %3258)  ; Rsqrt(value)
  %3260 = fmul fast float %3255, %3259
  %3261 = fmul fast float %3256, %3259
  %3262 = fmul fast float %3257, %3259
  %3263 = and i32 %41, 1
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3265, label %3773

; <label>:3265                                    ; preds = %3166
  %3266 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %3267 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %3268 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %3269 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %3270 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %3271 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %3272 = fadd fast float %3266, %137
  %3273 = fadd fast float %3267, %138
  %3274 = fadd fast float %3268, %139
  %3275 = fadd fast float %3269, %137
  %3276 = fadd fast float %3270, %138
  %3277 = fadd fast float %3271, %139
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3278, 1
  %3281 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 2
  %3284 = extractvalue %dx.types.CBufRet.f32 %3282, 3
  %3285 = fmul fast float %3279, %74
  %3286 = fmul fast float %3285, %3283
  %3287 = fmul fast float %3280, %75
  %3288 = fmul fast float %3287, %3284
  %3289 = fptoui float %3286 to i32
  %3290 = fptoui float %3288 to i32
  %3291 = fadd fast float %3279, -1.000000e+00
  %3292 = fadd fast float %3280, -1.000000e+00
  %3293 = fptoui float %3291 to i32
  %3294 = fptoui float %3292 to i32
  %3295 = call i32 @dx.op.binary.i32(i32 40, i32 %3289, i32 %3293)  ; UMin(a,b)
  %3296 = call i32 @dx.op.binary.i32(i32 40, i32 %3290, i32 %3294)  ; UMin(a,b)
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 2
  %3299 = extractvalue %dx.types.CBufRet.f32 %3297, 3
  %3300 = fmul fast float %3298, %69
  %3301 = fsub fast float %3300, %3299
  %3302 = fadd fast float %3281, -1.000000e+00
  %3303 = call float @dx.op.binary.f32(i32 36, float %3301, float %3302)  ; FMin(a,b)
  %3304 = fptoui float %3303 to i32
  %3305 = fptoui float %3279 to i32
  %3306 = fptoui float %3280 to i32
  %3307 = mul i32 %3304, %3306
  %3308 = add i32 %3307, %3296
  %3309 = mul i32 %3308, %3305
  %3310 = add i32 %3309, %3295
  %3311 = shl i32 %3310, 2
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = and i32 %3313, 1023
  %3315 = lshr i32 %3313, 10
  %3316 = icmp eq i32 %3314, 0
  br i1 %3316, label %3742, label %3317

; <label>:3317                                    ; preds = %3265
  %3318 = and i32 %3313, 1023
  br label %3319

; <label>:3319                                    ; preds = %3445, %3317
  %3320 = phi i32 [ %3395, %3445 ], [ 0, %3317 ]
  %3321 = phi float [ %3446, %3445 ], [ 0.000000e+00, %3317 ]
  %3322 = phi float [ %3447, %3445 ], [ %3140, %3317 ]
  %3323 = phi float [ %3448, %3445 ], [ %3138, %3317 ]
  %3324 = phi float [ %3449, %3445 ], [ 0.000000e+00, %3317 ]
  %3325 = phi float [ %3450, %3445 ], [ 0.000000e+00, %3317 ]
  %3326 = phi float [ %3451, %3445 ], [ %3232, %3317 ]
  %3327 = phi float [ %3452, %3445 ], [ %3233, %3317 ]
  %3328 = phi float [ %3453, %3445 ], [ %3234, %3317 ]
  %3329 = phi float [ %3454, %3445 ], [ %3260, %3317 ]
  %3330 = phi float [ %3455, %3445 ], [ %3261, %3317 ]
  %3331 = phi float [ %3456, %3445 ], [ %3262, %3317 ]
  %3332 = phi float [ %3457, %3445 ], [ %3137, %3317 ]
  %3333 = phi float [ %3458, %3445 ], [ %3136, %3317 ]
  %3334 = phi float [ %3459, %3445 ], [ 0.000000e+00, %3317 ]
  %3335 = phi float [ %3460, %3445 ], [ %3135, %3317 ]
  %3336 = phi float [ %3461, %3445 ], [ %3132, %3317 ]
  %3337 = phi float [ %3462, %3445 ], [ %3133, %3317 ]
  %3338 = phi float [ %3463, %3445 ], [ %3134, %3317 ]
  %3339 = add nuw nsw i32 %3320, %3315
  %3340 = shl i32 %3339, 2
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = shl i32 %3342, 8
  %3344 = or i32 %3343, 48
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = extractvalue %dx.types.ResRet.f32 %3345, 3
  %3350 = or i32 %3343, 64
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.i32 %3351, 1
  %3354 = or i32 %3343, 80
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3358 = or i32 %3343, 96
  %3359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3358, i32 undef)  ; BufferLoad(srv,index,wot)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 1
  %3362 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3359, 3
  %3364 = or i32 %3343, 112
  %3365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 2
  %3367 = or i32 %3343, 128
  %3368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.ResRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.ResRet.f32 %3368, 2
  %3372 = extractvalue %dx.types.ResRet.f32 %3368, 3
  %3373 = or i32 %3343, 144
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.ResRet.f32 %3374, 3
  %3379 = or i32 %3343, 160
  %3380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = extractvalue %dx.types.ResRet.f32 %3380, 1
  %3383 = extractvalue %dx.types.ResRet.f32 %3380, 2
  %3384 = extractvalue %dx.types.ResRet.f32 %3380, 3
  %3385 = or i32 %3343, 192
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = or i32 %3343, 208
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = or i32 %3343, 248
  %3392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.ResRet.f32 %3392, 1
  %3395 = add nuw nsw i32 %3320, 1
  %3396 = bitcast float %3349 to i32
  %3397 = and i32 %3396, 512
  %3398 = icmp eq i32 %3397, 0
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = call float @dx.op.dot4.f32(i32 56, float %3400, float %3401, float %3402, float %3403, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3405 = or i32 %3343, 16
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3411 = call float @dx.op.dot4.f32(i32 56, float %3407, float %3408, float %3409, float %3410, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3412 = or i32 %3343, 32
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3418 = call float @dx.op.dot4.f32(i32 56, float %3414, float %3415, float %3416, float %3417, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3419 = call float @dx.op.unary.f32(i32 27, float %3404)  ; Round_ni(value)
  %3420 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3421 = call float @dx.op.unary.f32(i32 27, float %3411)  ; Round_ni(value)
  %3422 = call float @dx.op.unary.f32(i32 6, float %3421)  ; FAbs(value)
  %3423 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3424 = call float @dx.op.unary.f32(i32 27, float %3423)  ; Round_ni(value)
  %3425 = fadd fast float %3422, %3420
  %3426 = fadd fast float %3425, %3424
  %3427 = fcmp fast oeq float %3426, 0.000000e+00
  %3428 = call float @dx.op.dot4.f32(i32 56, float %3400, float %3401, float %3402, float %3403, float %3272, float %3273, float %3274, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3429 = call float @dx.op.dot4.f32(i32 56, float %3407, float %3408, float %3409, float %3410, float %3272, float %3273, float %3274, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3430 = call float @dx.op.dot4.f32(i32 56, float %3400, float %3401, float %3402, float %3403, float %3275, float %3276, float %3277, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3431 = call float @dx.op.dot4.f32(i32 56, float %3407, float %3408, float %3409, float %3410, float %3275, float %3276, float %3277, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3432 = fsub fast float %3428, %3404
  %3433 = fsub fast float %3430, %3404
  %3434 = fsub fast float %3429, %3411
  %3435 = fsub fast float %3431, %3411
  %3436 = call float @dx.op.dot3.f32(i32 55, float %3346, float %3347, float %3348, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 2
  %3439 = fadd fast float %3438, %3436
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3442 = fcmp fast ogt float %3440, %3441
  %3443 = and i1 %3427, %3442
  %3444 = and i1 %3398, %3443
  br i1 %3444, label %3465, label %3445

; <label>:3445                                    ; preds = %3728, %3546, %3465, %3319
  %3446 = phi float [ %3321, %3465 ], [ %3549, %3546 ], [ %3549, %3728 ], [ %3321, %3319 ]
  %3447 = phi float [ %3322, %3465 ], [ %3322, %3546 ], [ %3703, %3728 ], [ %3322, %3319 ]
  %3448 = phi float [ %3323, %3465 ], [ %3323, %3546 ], [ %3701, %3728 ], [ %3323, %3319 ]
  %3449 = phi float [ %3324, %3465 ], [ %3324, %3546 ], [ %3673, %3728 ], [ %3324, %3319 ]
  %3450 = phi float [ %3325, %3465 ], [ %3325, %3546 ], [ %3671, %3728 ], [ %3325, %3319 ]
  %3451 = phi float [ %3326, %3465 ], [ %3326, %3546 ], [ %3738, %3728 ], [ %3326, %3319 ]
  %3452 = phi float [ %3327, %3465 ], [ %3327, %3546 ], [ %3739, %3728 ], [ %3327, %3319 ]
  %3453 = phi float [ %3328, %3465 ], [ %3328, %3546 ], [ %3740, %3728 ], [ %3328, %3319 ]
  %3454 = phi float [ %3329, %3465 ], [ %3329, %3546 ], [ %3652, %3728 ], [ %3329, %3319 ]
  %3455 = phi float [ %3330, %3465 ], [ %3330, %3546 ], [ %3653, %3728 ], [ %3330, %3319 ]
  %3456 = phi float [ %3331, %3465 ], [ %3331, %3546 ], [ %3654, %3728 ], [ %3331, %3319 ]
  %3457 = phi float [ %3332, %3465 ], [ %3332, %3546 ], [ %3681, %3728 ], [ %3332, %3319 ]
  %3458 = phi float [ %3333, %3465 ], [ %3333, %3546 ], [ %3678, %3728 ], [ %3333, %3319 ]
  %3459 = phi float [ %3334, %3465 ], [ %3334, %3546 ], [ %3675, %3728 ], [ %3334, %3319 ]
  %3460 = phi float [ %3335, %3465 ], [ %3335, %3546 ], [ %3669, %3728 ], [ %3335, %3319 ]
  %3461 = phi float [ %3336, %3465 ], [ %3336, %3546 ], [ %3664, %3728 ], [ %3336, %3319 ]
  %3462 = phi float [ %3337, %3465 ], [ %3337, %3546 ], [ %3665, %3728 ], [ %3337, %3319 ]
  %3463 = phi float [ %3338, %3465 ], [ %3338, %3546 ], [ %3666, %3728 ], [ %3338, %3319 ]
  %3464 = icmp eq i32 %3395, %3318
  br i1 %3464, label %3741, label %3319

; <label>:3465                                    ; preds = %3319
  %3466 = extractvalue %dx.types.ResRet.f32 %3365, 3
  %3467 = extractvalue %dx.types.ResRet.f32 %3365, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3471 = extractvalue %dx.types.ResRet.i32 %3351, 3
  %3472 = extractvalue %dx.types.ResRet.i32 %3351, 2
  %3473 = add i32 %3471, 0
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3474, %dx.types.Handle %3475, float %3404, float %3411, float undef, float undef, i32 0, i32 0, i32 undef, float %3432, float %3434, float undef, float %3433, float %3435, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = fmul fast float %3477, %3470
  %3479 = fadd fast float %3478, %3469
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = fmul fast float %3404, %3360
  %3482 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3411, float %3481)  ; FMad(a,b,c)
  %3483 = fadd fast float %3482, %3468
  %3484 = fmul fast float %3404, %3362
  %3485 = call float @dx.op.tertiary.f32(i32 46, float %3363, float %3411, float %3484)  ; FMad(a,b,c)
  %3486 = fadd fast float %3485, %3467
  %3487 = fmul fast float %3432, %3360
  %3488 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3434, float %3487)  ; FMad(a,b,c)
  %3489 = fmul fast float %3432, %3362
  %3490 = call float @dx.op.tertiary.f32(i32 46, float %3363, float %3434, float %3489)  ; FMad(a,b,c)
  %3491 = fmul fast float %3433, %3360
  %3492 = call float @dx.op.tertiary.f32(i32 46, float %3361, float %3435, float %3491)  ; FMad(a,b,c)
  %3493 = fmul fast float %3433, %3362
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3363, float %3435, float %3493)  ; FMad(a,b,c)
  %3495 = add i32 %3472, 0
  %3496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3495, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3497 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3496, %dx.types.Handle %3475, float %3483, float %3486, float undef, float undef, i32 0, i32 0, i32 undef, float %3488, float %3490, float undef, float %3492, float %3494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3498 = extractvalue %dx.types.ResRet.f32 %3497, 0
  %3499 = and i32 %3396, 1024
  %3500 = icmp ne i32 %3499, 0
  %3501 = fcmp fast ogt float %3498, 0x3FE0101020000000
  %3502 = uitofp i1 %3501 to float
  %3503 = select i1 %3500, float %3502, float %3498
  %3504 = and i32 %3396, 8192
  %3505 = icmp ne i32 %3504, 0
  %3506 = select i1 %3505, float %3466, float 1.000000e+00
  %3507 = fmul fast float %3404, 2.000000e+00
  %3508 = fadd fast float %3507, -1.000000e+00
  %3509 = call float @dx.op.unary.f32(i32 6, float %3508)  ; FAbs(value)
  %3510 = fmul fast float %3509, %3393
  %3511 = fsub fast float %3510, %3393
  %3512 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3513 = fmul fast float %3411, 2.000000e+00
  %3514 = fadd fast float %3513, -1.000000e+00
  %3515 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3516 = fmul fast float %3515, %3394
  %3517 = fsub fast float %3516, %3394
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = fmul fast float %3423, %3356
  %3520 = fsub fast float %3519, %3356
  %3521 = call float @dx.op.unary.f32(i32 7, float %3520)  ; Saturate(value)
  %3522 = fmul fast float %3480, %3506
  %3523 = fmul fast float %3522, %3477
  %3524 = fmul fast float %3523, %3512
  %3525 = fmul fast float %3524, %3503
  %3526 = fmul fast float %3525, %3518
  %3527 = fmul fast float %3526, %3521
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 1
  %3530 = extractvalue %dx.types.CBufRet.f32 %3528, 0
  %3531 = fsub fast float %3440, %3530
  %3532 = fmul fast float %3531, %3529
  %3533 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3534 = fmul fast float %3527, %3357
  %3535 = fadd fast float %3527, %3357
  %3536 = fmul fast float %3535, %3366
  %3537 = fsub fast float %3536, %3366
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = and i32 %3396, 128
  %3540 = icmp ne i32 %3539, 0
  %3541 = select i1 %3540, float %3538, float %3534
  %3542 = fmul fast float %3541, %3533
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = fcmp fast ugt float %3542, %3544
  br i1 %3545, label %3546, label %3445

; <label>:3546                                    ; preds = %3465
  %3547 = select i1 %3505, float %3542, float 0.000000e+00
  %3548 = fadd fast float %3547, %3321
  %3549 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  br i1 %3505, label %3445, label %3550

; <label>:3550                                    ; preds = %3546
  %3551 = and i32 %3396, 4
  %3552 = and i32 %3396, 8
  %3553 = add i32 %3352, 0
  %3554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3553, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3556 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3554, %dx.types.Handle %3555, float %3483, float %3486, float undef, float undef, i32 0, i32 0, i32 undef, float %3488, float %3490, float undef, float %3492, float %3494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = extractvalue %dx.types.ResRet.f32 %3556, 3
  %3561 = bitcast float %3378 to i32
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = lshr i32 %3561, 8
  %3565 = and i32 %3564, 255
  %3566 = uitofp i32 %3565 to float
  %3567 = fmul fast float %3560, %3563
  %3568 = fadd fast float %3567, %3566
  %3569 = fmul fast float %3568, 0x3F70101000000000
  %3570 = add i32 %3353, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3571, %dx.types.Handle %3555, float %3483, float %3486, float undef, float undef, i32 0, i32 0, i32 undef, float %3488, float %3490, float undef, float %3492, float %3494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = extractvalue %dx.types.ResRet.f32 %3572, 3
  %3577 = bitcast float %3372 to i32
  %3578 = and i32 %3577, 255
  %3579 = uitofp i32 %3578 to float
  %3580 = lshr i32 %3577, 8
  %3581 = and i32 %3580, 255
  %3582 = uitofp i32 %3581 to float
  %3583 = lshr i32 %3577, 16
  %3584 = and i32 %3583, 255
  %3585 = uitofp i32 %3584 to float
  %3586 = fmul fast float %3585, 0x3F70101000000000
  %3587 = fmul fast float %3573, %3579
  %3588 = fadd fast float %3587, %3582
  %3589 = fmul fast float %3588, 0x3F70101000000000
  %3590 = fadd fast float %3574, -5.000000e-01
  %3591 = fadd fast float %3576, -5.000000e-01
  %3592 = fmul fast float %3590, %3586
  %3593 = fmul fast float %3591, %3586
  %3594 = fadd fast float %3592, 5.000000e-01
  %3595 = fadd fast float %3593, 5.000000e-01
  %3596 = fmul fast float %3557, %3381
  %3597 = fmul fast float %3558, %3382
  %3598 = fmul fast float %3559, %3383
  %3599 = fmul fast float %3594, 2.000000e+00
  %3600 = fadd fast float %3599, -1.000000e+00
  %3601 = fmul fast float %3595, 2.000000e+00
  %3602 = fadd fast float %3601, -1.000000e+00
  %3603 = fadd fast float %3600, %3602
  %3604 = fmul fast float %3603, 5.000000e-01
  %3605 = fsub fast float %3600, %3602
  %3606 = fmul fast float %3605, 5.000000e-01
  %3607 = call float @dx.op.unary.f32(i32 6, float %3604)  ; FAbs(value)
  %3608 = fsub fast float 1.000000e+00, %3607
  %3609 = call float @dx.op.unary.f32(i32 6, float %3606)  ; FAbs(value)
  %3610 = fsub fast float %3608, %3609
  %3611 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3606, float %3610, float %3604, float %3606, float %3610)  ; Dot3(ax,ay,az,bx,by,bz)
  %3612 = call float @dx.op.unary.f32(i32 25, float %3611)  ; Rsqrt(value)
  %3613 = fmul fast float %3604, %3612
  %3614 = fmul fast float %3606, %3612
  %3615 = fmul fast float %3612, %3610
  %3616 = fmul fast float %3615, %3346
  %3617 = fmul fast float %3615, %3347
  %3618 = fmul fast float %3615, %3348
  %3619 = fmul fast float %3613, %3369
  %3620 = fmul fast float %3613, %3370
  %3621 = fmul fast float %3613, %3371
  %3622 = fadd fast float %3619, %3616
  %3623 = fadd fast float %3620, %3617
  %3624 = fadd fast float %3621, %3618
  %3625 = fmul fast float %3614, %3375
  %3626 = fmul fast float %3614, %3376
  %3627 = fmul fast float %3614, %3377
  %3628 = fadd fast float %3622, %3625
  %3629 = fadd fast float %3623, %3626
  %3630 = fadd fast float %3624, %3627
  %3631 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3630, float %3628, float %3629, float %3630)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = call float @dx.op.unary.f32(i32 25, float %3631)  ; Rsqrt(value)
  %3633 = fmul fast float %3628, %3632
  %3634 = fmul fast float %3629, %3632
  %3635 = fmul fast float %3630, %3632
  %3636 = icmp ne i32 %3552, 0
  %3637 = select i1 %3636, float 1.000000e+00, float 0.000000e+00
  %3638 = fmul fast float %3542, %3637
  %3639 = and i32 %3396, 1
  %3640 = icmp eq i32 %3639, 0
  br i1 %3640, label %3641, label %3645

; <label>:3641                                    ; preds = %3550
  %3642 = fsub fast float %3633, %3329
  %3643 = fsub fast float %3634, %3330
  %3644 = fsub fast float %3635, %3331
  br label %3645

; <label>:3645                                    ; preds = %3641, %3550
  %3646 = phi float [ %3642, %3641 ], [ %3633, %3550 ]
  %3647 = phi float [ %3643, %3641 ], [ %3634, %3550 ]
  %3648 = phi float [ %3644, %3641 ], [ %3635, %3550 ]
  %3649 = fmul float %3648, %3638
  %3650 = fmul float %3647, %3638
  %3651 = fmul float %3646, %3638
  %3652 = fadd fast float %3651, %3329
  %3653 = fadd fast float %3650, %3330
  %3654 = fadd fast float %3649, %3331
  %3655 = icmp ne i32 %3551, 0
  %3656 = select i1 %3655, float 1.000000e+00, float 0.000000e+00
  %3657 = fmul fast float %3542, %3656
  %3658 = fsub fast float %3596, %3336
  %3659 = fsub fast float %3597, %3337
  %3660 = fsub fast float %3598, %3338
  %3661 = fmul fast float %3658, %3657
  %3662 = fmul fast float %3659, %3657
  %3663 = fmul fast float %3660, %3657
  %3664 = fadd fast float %3661, %3336
  %3665 = fadd fast float %3662, %3337
  %3666 = fadd fast float %3663, %3338
  %3667 = fsub fast float %3569, %3335
  %3668 = fmul fast float %3667, %3657
  %3669 = fadd fast float %3668, %3335
  %3670 = fmul fast float %3657, %3325
  %3671 = fsub fast float %3325, %3670
  %3672 = fmul fast float %3657, %3324
  %3673 = fsub fast float %3324, %3672
  %3674 = fadd fast float %3542, %3334
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fsub fast float %3589, %3333
  %3677 = fmul fast float %3676, %3638
  %3678 = fadd fast float %3677, %3333
  %3679 = fsub fast float %3575, %3332
  %3680 = fmul fast float %3679, %3638
  %3681 = fadd fast float %3680, %3332
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = fmul fast float %3685, %3682
  %3687 = fadd fast float %3686, %3684
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = bitcast float %3384 to i32
  %3690 = and i32 %3689, 65535
  %3691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3690)  ; LegacyF16ToF32(value)
  %3692 = lshr i32 %3689, 16
  %3693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3692)  ; LegacyF16ToF32(value)
  %3694 = fcmp fast oge float %3691, 0.000000e+00
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 0
  %3697 = select i1 %3694, float %3691, float %3696
  %3698 = fadd fast float %3697, %3693
  %3699 = fsub fast float %3688, %3323
  %3700 = fmul fast float %3699, %3542
  %3701 = fadd fast float %3700, %3323
  %3702 = fmul fast float %3698, %3542
  %3703 = call float @dx.op.binary.f32(i32 35, float %3322, float %3702)  ; FMax(a,b)
  %3704 = and i32 %3396, 16
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3728, label %3706

; <label>:3706                                    ; preds = %3645
  %3707 = bitcast float %3390 to i32
  %3708 = add i32 %3387, 0
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3708, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3709, %dx.types.Handle %3555, float %3483, float %3486, float undef, float undef, i32 0, i32 0, i32 undef, float %3488, float %3490, float undef, float %3492, float %3494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3710, 2
  %3714 = and i32 %3707, 65535
  %3715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3714)  ; LegacyF16ToF32(value)
  %3716 = fmul fast float %3711, %3381
  %3717 = fmul fast float %3712, %3382
  %3718 = fmul fast float %3713, %3383
  %3719 = and i32 %3396, 16384
  %3720 = icmp ne i32 %3719, 0
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = select i1 %3720, float %3722, float 1.000000e+00
  %3724 = fmul fast float %3723, %3715
  %3725 = fmul fast float %3716, %3724
  %3726 = fmul fast float %3717, %3724
  %3727 = fmul fast float %3718, %3724
  br label %3728

; <label>:3728                                    ; preds = %3706, %3645
  %3729 = phi float [ %3725, %3706 ], [ 0.000000e+00, %3645 ]
  %3730 = phi float [ %3726, %3706 ], [ 0.000000e+00, %3645 ]
  %3731 = phi float [ %3727, %3706 ], [ 0.000000e+00, %3645 ]
  %3732 = fsub fast float %3729, %3326
  %3733 = fsub fast float %3730, %3327
  %3734 = fsub fast float %3731, %3328
  %3735 = fmul fast float %3732, %3542
  %3736 = fmul fast float %3733, %3542
  %3737 = fmul fast float %3734, %3542
  %3738 = fadd fast float %3735, %3326
  %3739 = fadd fast float %3736, %3327
  %3740 = fadd fast float %3737, %3328
  br label %3445

; <label>:3741                                    ; preds = %3445
  br label %3742

; <label>:3742                                    ; preds = %3741, %3265
  %3743 = phi float [ 0.000000e+00, %3265 ], [ %3446, %3741 ]
  %3744 = phi float [ %3140, %3265 ], [ %3447, %3741 ]
  %3745 = phi float [ %3138, %3265 ], [ %3448, %3741 ]
  %3746 = phi float [ 0.000000e+00, %3265 ], [ %3449, %3741 ]
  %3747 = phi float [ 0.000000e+00, %3265 ], [ %3450, %3741 ]
  %3748 = phi float [ %3232, %3265 ], [ %3451, %3741 ]
  %3749 = phi float [ %3233, %3265 ], [ %3452, %3741 ]
  %3750 = phi float [ %3234, %3265 ], [ %3453, %3741 ]
  %3751 = phi float [ %3260, %3265 ], [ %3454, %3741 ]
  %3752 = phi float [ %3261, %3265 ], [ %3455, %3741 ]
  %3753 = phi float [ %3262, %3265 ], [ %3456, %3741 ]
  %3754 = phi float [ %3137, %3265 ], [ %3457, %3741 ]
  %3755 = phi float [ %3136, %3265 ], [ %3458, %3741 ]
  %3756 = phi float [ 0.000000e+00, %3265 ], [ %3459, %3741 ]
  %3757 = phi float [ %3135, %3265 ], [ %3460, %3741 ]
  %3758 = phi float [ %3132, %3265 ], [ %3461, %3741 ]
  %3759 = phi float [ %3133, %3265 ], [ %3462, %3741 ]
  %3760 = phi float [ %3134, %3265 ], [ %3463, %3741 ]
  %3761 = call float @dx.op.dot3.f32(i32 55, float %3751, float %3752, float %3753, float %3751, float %3752, float %3753)  ; Dot3(ax,ay,az,bx,by,bz)
  %3762 = call float @dx.op.unary.f32(i32 25, float %3761)  ; Rsqrt(value)
  %3763 = fmul fast float %3762, %3751
  %3764 = fmul fast float %3762, %3752
  %3765 = fmul fast float %3762, %3753
  %3766 = fadd fast float %3756, %786
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = call float @dx.op.dot3.f32(i32 55, float %3763, float %3764, float %3765, float %3763, float %3764, float %3765)  ; Dot3(ax,ay,az,bx,by,bz)
  %3769 = call float @dx.op.unary.f32(i32 25, float %3768)  ; Rsqrt(value)
  %3770 = fmul fast float %3769, %3763
  %3771 = fmul fast float %3769, %3764
  %3772 = fmul fast float %3769, %3765
  br label %3773

; <label>:3773                                    ; preds = %3742, %3166
  %3774 = phi float [ %3770, %3742 ], [ %3260, %3166 ]
  %3775 = phi float [ %3771, %3742 ], [ %3261, %3166 ]
  %3776 = phi float [ %3772, %3742 ], [ %3262, %3166 ]
  %3777 = phi float [ %3758, %3742 ], [ %3132, %3166 ]
  %3778 = phi float [ %3759, %3742 ], [ %3133, %3166 ]
  %3779 = phi float [ %3760, %3742 ], [ %3134, %3166 ]
  %3780 = phi float [ %3748, %3742 ], [ %3232, %3166 ]
  %3781 = phi float [ %3749, %3742 ], [ %3233, %3166 ]
  %3782 = phi float [ %3750, %3742 ], [ %3234, %3166 ]
  %3783 = phi float [ %3757, %3742 ], [ %3135, %3166 ]
  %3784 = phi float [ %3767, %3742 ], [ %786, %3166 ]
  %3785 = phi float [ %3755, %3742 ], [ %3136, %3166 ]
  %3786 = phi float [ %3754, %3742 ], [ %3137, %3166 ]
  %3787 = phi float [ %3747, %3742 ], [ 0.000000e+00, %3166 ]
  %3788 = phi float [ %3746, %3742 ], [ 0.000000e+00, %3166 ]
  %3789 = phi float [ %3743, %3742 ], [ 0.000000e+00, %3166 ]
  %3790 = phi float [ %3744, %3742 ], [ %3140, %3166 ]
  %3791 = phi float [ %3745, %3742 ], [ %3138, %3166 ]
  %3792 = fadd fast float %3783, 0xBFB99999A0000000
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fmul fast float %3793, 0x3FF1C71C80000000
  %3795 = call float @dx.op.binary.f32(i32 36, float %3783, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3796 = fsub fast float 1.000000e+00, %3794
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = fmul fast float %3797, %3777
  %3799 = fmul fast float %3797, %3778
  %3800 = fmul fast float %3797, %3779
  %3801 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3802 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3803 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  %3804 = fmul fast float %3794, %3777
  %3805 = fmul fast float %3794, %3778
  %3806 = fmul fast float %3794, %3779
  %3807 = fadd fast float %3804, %3795
  %3808 = fadd fast float %3805, %3795
  %3809 = fadd fast float %3806, %3795
  %3810 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3811 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3812 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3813 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3815 = extractvalue %dx.types.CBufRet.i32 %3814, 3
  %3816 = and i32 %3815, 8
  %3817 = icmp ne i32 %3816, 0
  %3818 = call float @dx.op.binary.f32(i32 35, float %3801, float %3777)  ; FMax(a,b)
  %3819 = call float @dx.op.binary.f32(i32 35, float %3802, float %3777)  ; FMax(a,b)
  %3820 = call float @dx.op.binary.f32(i32 35, float %3803, float %3777)  ; FMax(a,b)
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = select i1 %179, float %3777, float %3801
  %3823 = select i1 %179, float %3821, float %3802
  %3824 = select i1 %179, float 1.000000e+00, float %3803
  %3825 = select i1 %3817, float %3818, float %3822
  %3826 = select i1 %3817, float %3819, float %3823
  %3827 = select i1 %3817, float %3820, float %3824
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3832 = fadd fast float %3829, %137
  %3833 = fadd fast float %3830, %138
  %3834 = fadd fast float %3831, %139
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3838 = fsub fast float %3832, %3836
  %3839 = fsub fast float %3833, %3837
  %3840 = fmul fast float %3838, %3838
  %3841 = fmul fast float %3839, %3839
  %3842 = fadd fast float %3840, %3841
  %3843 = call float @dx.op.unary.f32(i32 24, float %3842)  ; Sqrt(value)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3835, 2
  %3845 = fcmp fast olt float %3843, %3844
  br i1 %3845, label %3846, label %3913

; <label>:3846                                    ; preds = %3773
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3854 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3856 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3857 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3858 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3859 = fadd fast float %3856, %3832
  %3860 = fadd fast float %3857, %3833
  %3861 = fadd fast float %3858, %3834
  %3862 = fmul fast float %3859, %3848
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3850, float %3862)  ; FMad(a,b,c)
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3852, float %3863)  ; FMad(a,b,c)
  %3865 = fmul fast float %3859, %3853
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3854, float %3865)  ; FMad(a,b,c)
  %3867 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3855, float %3866)  ; FMad(a,b,c)
  %3868 = fsub fast float %3864, %3856
  %3869 = fsub fast float %3867, %3857
  %3870 = fsub fast float %3868, %3836
  %3871 = fadd fast float %3870, %3844
  %3872 = fsub fast float %3869, %3837
  %3873 = fadd fast float %3872, %3844
  %3874 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3875 = fmul fast float %3871, %3874
  %3876 = fmul fast float %3873, %3874
  %3877 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3878 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3879 = fsub fast float 1.000000e+00, %3877
  %3880 = fsub fast float 1.000000e+00, %3878
  %3881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %3879, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = fcmp fast ugt float %3882, 0.000000e+00
  br i1 %3883, label %3884, label %4187

; <label>:3884                                    ; preds = %3846
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3887 = fmul fast float %3886, %3882
  %3888 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3889 = fadd fast float %3888, %3887
  %3890 = extractvalue %dx.types.CBufRet.f32 %3851, 2
  %3891 = fadd fast float %3889, %3858
  %3892 = fmul fast float %3864, %3852
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3855, float %3892)  ; FMad(a,b,c)
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3891, float %3890, float %3893)  ; FMad(a,b,c)
  %3895 = fsub fast float %3894, %3858
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = fsub fast float %3895, %3897
  %3899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %3879, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %3879, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = fadd fast float %3904, %3900
  %3908 = fmul fast float %3907, 0x3F847AE140000000
  %3909 = fadd fast float %3905, %3901
  %3910 = fmul fast float %3909, 0x3F847AE140000000
  %3911 = fadd fast float %3906, %3902
  %3912 = fmul fast float %3911, 0x3F847AE140000000
  br label %4187

; <label>:3913                                    ; preds = %3773
  %3914 = and i32 %155, 1
  %3915 = icmp eq i32 %3914, 0
  br i1 %3915, label %4187, label %3916

; <label>:3916                                    ; preds = %3913
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3926 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3927 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3928 = extractvalue %dx.types.CBufRet.f32 %3921, 3
  %3929 = fadd fast float %3926, %3832
  %3930 = fadd fast float %3927, %3833
  %3931 = fadd fast float %3928, %3834
  %3932 = fmul fast float %3929, %3918
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3920, float %3932)  ; FMad(a,b,c)
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3922, float %3933)  ; FMad(a,b,c)
  %3935 = fmul fast float %3929, %3923
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3924, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3925, float %3936)  ; FMad(a,b,c)
  %3938 = fsub fast float %3934, %3926
  %3939 = fsub fast float %3937, %3927
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.i32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.i32 %3947, 1
  %3950 = udiv i32 %3949, %3948
  %3951 = fsub fast float %3938, %3941
  %3952 = fsub fast float %3939, %3942
  %3953 = call float @dx.op.binary.f32(i32 35, float %3951, float 0.000000e+00)  ; FMax(a,b)
  %3954 = call float @dx.op.binary.f32(i32 35, float %3952, float 0.000000e+00)  ; FMax(a,b)
  %3955 = call float @dx.op.binary.f32(i32 36, float %3953, float %3943)  ; FMin(a,b)
  %3956 = call float @dx.op.binary.f32(i32 36, float %3954, float %3944)  ; FMin(a,b)
  %3957 = add i32 %3948, -1
  %3958 = add i32 %3950, -1
  %3959 = fmul fast float %3955, %3946
  %3960 = fmul fast float %3956, %3946
  %3961 = fptoui float %3959 to i32
  %3962 = fptoui float %3960 to i32
  %3963 = call i32 @dx.op.binary.i32(i32 40, i32 %3961, i32 %3957)  ; UMin(a,b)
  %3964 = call i32 @dx.op.binary.i32(i32 40, i32 %3962, i32 %3958)  ; UMin(a,b)
  %3965 = mul i32 %3964, %3948
  %3966 = add i32 %3965, %3963
  %3967 = shl i32 %3966, 2
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = icmp eq i32 %3969, -1
  br i1 %3970, label %4187, label %3971

; <label>:3971                                    ; preds = %3916
  %3972 = mul i32 %3969, 148
  %3973 = add i32 %3972, 4
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = add i32 %3972, 8
  %3977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.f32 %3977, 0
  %3979 = add i32 %3972, 36
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = add i32 %3972, 60
  %3983 = add i32 %3972, 92
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = add i32 %3972, 116
  %3987 = fsub fast float %3938, %3975
  %3988 = fsub fast float %3939, %3978
  %3989 = fmul fast float %3946, %3987
  %3990 = fmul fast float %3946, %3988
  %3991 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3996 = call float @dx.op.unary.f32(i32 83, float %3991)  ; DerivCoarseX(value)
  %3997 = call float @dx.op.unary.f32(i32 83, float %3993)  ; DerivCoarseX(value)
  %3998 = call float @dx.op.unary.f32(i32 84, float %3991)  ; DerivCoarseY(value)
  %3999 = call float @dx.op.unary.f32(i32 84, float %3993)  ; DerivCoarseY(value)
  %4000 = fmul fast float %3996, %3995
  %4001 = fmul fast float %3997, %3995
  %4002 = fmul fast float %3998, %3995
  %4003 = fmul fast float %3999, %3995
  %4004 = call float @dx.op.dot2.f32(i32 54, float %4002, float %4003, float %4002, float %4003)  ; Dot2(ax,ay,bx,by)
  %4005 = call float @dx.op.dot2.f32(i32 54, float %4000, float %4001, float %4000, float %4001)  ; Dot2(ax,ay,bx,by)
  %4006 = call float @dx.op.binary.f32(i32 35, float %4005, float %4004)  ; FMax(a,b)
  %4007 = call float @dx.op.unary.f32(i32 23, float %4006)  ; Log(value)
  %4008 = fmul fast float %4007, 5.000000e-01
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4011 = fadd fast float %4010, %4008
  %4012 = call float @dx.op.binary.f32(i32 35, float %4011, float 0.000000e+00)  ; FMax(a,b)
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4015 = fadd fast float %4014, %4012
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4018 = fadd fast float %4015, %4017
  %4019 = add i32 %3985, 0
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4020, i32 0)  ; GetDimensions(handle,mipLevel)
  %4022 = extractvalue %dx.types.Dimensions %4021, 0
  %4023 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4022)  ; FirstbitLo(value)
  %4024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.i32 %4024, 1
  %4026 = sub nsw i32 %4025, %4023
  %4027 = sitofp i32 %4026 to float
  %4028 = fsub fast float %4018, %4027
  %4029 = call float @dx.op.binary.f32(i32 35, float %4028, float 0.000000e+00)  ; FMax(a,b)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4020, %dx.types.Handle %32, float %3991, float %3993, float %3981, float undef, i32 0, i32 0, i32 undef, float %4029)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = fcmp ule float %4031, 0x3FE0101020000000
  %4033 = extractvalue %dx.types.CBufRet.i32 %4024, 0
  %4034 = and i32 %4033, 128
  %4035 = icmp ne i32 %4034, 0
  %4036 = and i1 %4032, %4035
  br i1 %4036, label %4187, label %4037

; <label>:4037                                    ; preds = %3971
  %4038 = add i32 %3972, 20
  %4039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = add i32 %3972, 24
  %4042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = add i32 %3972, 40
  %4045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = add i32 %3972, 96
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 2
  %4052 = fmul fast float %4051, %3991
  %4053 = fmul fast float %4051, %3993
  %4054 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4055 = fadd fast float %4052, %4054
  %4056 = fadd fast float %4053, %4054
  %4057 = add i32 %4049, 0
  %4058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4057, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4059 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4058, i32 0)  ; GetDimensions(handle,mipLevel)
  %4060 = extractvalue %dx.types.Dimensions %4059, 0
  %4061 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4060)  ; FirstbitLo(value)
  %4062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.i32 %4062, 1
  %4064 = sub nsw i32 %4063, %4061
  %4065 = sitofp i32 %4064 to float
  %4066 = fsub fast float %4015, %4065
  %4067 = call float @dx.op.binary.f32(i32 35, float %4066, float 0.000000e+00)  ; FMax(a,b)
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4058, %dx.types.Handle %32, float %4055, float %4056, float %4046, float undef, i32 0, i32 0, i32 undef, float %4067)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = fmul fast float %4069, %4040
  %4071 = fadd fast float %4070, %4043
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4080 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4081 = fadd fast float %4077, %3938
  %4082 = fadd fast float %4079, %3939
  %4083 = fadd fast float %4071, %4080
  %4084 = fmul fast float %4081, %4073
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4074, float %4084)  ; FMad(a,b,c)
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4075, float %4085)  ; FMad(a,b,c)
  %4087 = fsub fast float %4086, %4080
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4090 = fsub fast float %4087, %4089
  %4091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.i32 %4091, 0
  %4093 = call i32 @dx.op.binary.i32(i32 40, i32 %3969, i32 %4092)  ; UMin(a,b)
  %4094 = mul i32 %4093, 36
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = add i32 %4094, 4
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = fmul fast float %4099, %3991
  %4101 = fmul fast float %4099, %3993
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4103 = fadd fast float %4100, %4102
  %4104 = fadd fast float %4101, %4102
  %4105 = icmp eq i32 %4096, 0
  br i1 %4105, label %4174, label %4106

; <label>:4106                                    ; preds = %4037
  br label %4107

; <label>:4107                                    ; preds = %4164, %4106
  %4108 = phi float [ %4165, %4164 ], [ 0.000000e+00, %4106 ]
  %4109 = phi float [ %4166, %4164 ], [ 0.000000e+00, %4106 ]
  %4110 = phi float [ %4167, %4164 ], [ 0.000000e+00, %4106 ]
  %4111 = phi float [ %4168, %4164 ], [ 0.000000e+00, %4106 ]
  %4112 = phi float [ %4169, %4164 ], [ 0.000000e+00, %4106 ]
  %4113 = phi float [ %4170, %4164 ], [ 0.000000e+00, %4106 ]
  %4114 = phi i32 [ %4171, %4164 ], [ 0, %4106 ]
  %4115 = shl i32 %4114, 2
  %4116 = add i32 %3982, %4115
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = add i32 %3986, %4115
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = add i32 %4121, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4123, i32 0)  ; GetDimensions(handle,mipLevel)
  %4125 = extractvalue %dx.types.Dimensions %4124, 0
  %4126 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4125)  ; FirstbitLo(value)
  %4127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.i32 %4127, 1
  %4129 = sub nsw i32 %4128, %4126
  %4130 = sitofp i32 %4129 to float
  %4131 = fsub fast float %4015, %4130
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float 0.000000e+00)  ; FMax(a,b)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4123, %dx.types.Handle %32, float %4103, float %4104, float %4118, float undef, i32 0, i32 0, i32 undef, float %4132)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = fcmp fast ogt float %4134, 0.000000e+00
  br i1 %4135, label %4136, label %4164

; <label>:4136                                    ; preds = %4107
  %4137 = add i32 %4097, %4115
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = and i32 %4139, 32767
  %4141 = mul nuw nsw i32 %4140, 928
  %4142 = add nuw nsw i32 %4141, 48
  %4143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = add nuw nsw i32 %4141, 60
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = fmul fast float %4144, %4134
  %4153 = fmul fast float %4145, %4134
  %4154 = fmul fast float %4146, %4134
  %4155 = fadd fast float %4152, %4108
  %4156 = fadd fast float %4153, %4109
  %4157 = fadd fast float %4154, %4110
  %4158 = fmul fast float %4149, %4134
  %4159 = fmul fast float %4150, %4134
  %4160 = fmul fast float %4151, %4134
  %4161 = fadd fast float %4158, %4111
  %4162 = fadd fast float %4159, %4112
  %4163 = fadd fast float %4160, %4113
  br label %4164

; <label>:4164                                    ; preds = %4136, %4107
  %4165 = phi float [ %4155, %4136 ], [ %4108, %4107 ]
  %4166 = phi float [ %4156, %4136 ], [ %4109, %4107 ]
  %4167 = phi float [ %4157, %4136 ], [ %4110, %4107 ]
  %4168 = phi float [ %4161, %4136 ], [ %4111, %4107 ]
  %4169 = phi float [ %4162, %4136 ], [ %4112, %4107 ]
  %4170 = phi float [ %4163, %4136 ], [ %4113, %4107 ]
  %4171 = add nuw i32 %4114, 1
  %4172 = icmp eq i32 %4171, %4096
  br i1 %4172, label %4173, label %4107

; <label>:4173                                    ; preds = %4164
  br label %4174

; <label>:4174                                    ; preds = %4173, %4037
  %4175 = phi float [ 0.000000e+00, %4037 ], [ %4165, %4173 ]
  %4176 = phi float [ 0.000000e+00, %4037 ], [ %4166, %4173 ]
  %4177 = phi float [ 0.000000e+00, %4037 ], [ %4167, %4173 ]
  %4178 = phi float [ 0.000000e+00, %4037 ], [ %4168, %4173 ]
  %4179 = phi float [ 0.000000e+00, %4037 ], [ %4169, %4173 ]
  %4180 = phi float [ 0.000000e+00, %4037 ], [ %4170, %4173 ]
  %4181 = fadd fast float %4178, %4175
  %4182 = fmul fast float %4181, 0x3F847AE140000000
  %4183 = fadd fast float %4179, %4176
  %4184 = fmul fast float %4183, 0x3F847AE140000000
  %4185 = fadd fast float %4180, %4177
  %4186 = fmul fast float %4185, 0x3F847AE140000000
  br label %4187

; <label>:4187                                    ; preds = %4174, %3971, %3916, %3913, %3884, %3846
  %4188 = phi float [ %3898, %3884 ], [ -1.310720e+05, %3846 ], [ %4090, %4174 ], [ -1.310720e+05, %3916 ], [ -1.310720e+05, %3971 ], [ -1.310720e+05, %3913 ]
  %4189 = phi float [ %3908, %3884 ], [ 0.000000e+00, %3846 ], [ %4182, %4174 ], [ 0.000000e+00, %3916 ], [ 0.000000e+00, %3971 ], [ 0.000000e+00, %3913 ]
  %4190 = phi float [ %3910, %3884 ], [ 0.000000e+00, %3846 ], [ %4184, %4174 ], [ 0.000000e+00, %3916 ], [ 0.000000e+00, %3971 ], [ 0.000000e+00, %3913 ]
  %4191 = phi float [ %3912, %3884 ], [ 0.000000e+00, %3846 ], [ %4186, %4174 ], [ 0.000000e+00, %3916 ], [ 0.000000e+00, %3971 ], [ 0.000000e+00, %3913 ]
  %4192 = phi i1 [ true, %3884 ], [ false, %3846 ], [ true, %4174 ], [ false, %3916 ], [ false, %3971 ], [ false, %3913 ]
  %4193 = and i32 %155, 3
  %4194 = icmp eq i32 %4193, 1
  %4195 = select i1 %4194, float 1.000000e+00, float 0.000000e+00
  %4196 = fsub fast float %4188, %139
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = select i1 %4192, float %4197, float 1.000000e+00
  %4199 = fmul fast float %4198, %4195
  %4200 = icmp eq i32 %4193, 3
  %4201 = select i1 %4200, float 1.000000e+00, float %4199
  %4202 = call float @dx.op.binary.f32(i32 35, float %3789, float %4201)  ; FMax(a,b)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = fcmp fast une float %4203, 0.000000e+00
  %4205 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.unary.f32(i32 25, float %4205)  ; Rsqrt(value)
  br i1 %4204, label %4214, label %4207

; <label>:4207                                    ; preds = %4187
  %4208 = fmul fast float %4206, %137
  %4209 = fmul fast float %4206, %138
  %4210 = fmul fast float %4206, %139
  %4211 = fsub fast float -0.000000e+00, %4208
  %4212 = fsub fast float -0.000000e+00, %4209
  %4213 = fsub fast float -0.000000e+00, %4210
  br label %4382

; <label>:4214                                    ; preds = %4187
  %4215 = fmul fast float %137, %4206
  %4216 = fsub fast float -0.000000e+00, %4215
  %4217 = fmul fast float %138, %4206
  %4218 = fsub fast float -0.000000e+00, %4217
  %4219 = fmul fast float %139, %4206
  %4220 = fsub fast float -0.000000e+00, %4219
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4216, float %4218, float %4220, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = fmul fast float %4203, 2.500000e+00
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4203, 0x4013FFFFE0000000
  %4225 = fadd fast float %4224, 0xBFFFFFFFE0000000
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = fmul fast float %4203, 0x4004000020000000
  %4228 = fadd fast float %4227, 0xBFF8000040000000
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4231 = fmul fast float %3792, 1.000000e+01
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4232, 2.000000e+00
  %4234 = fsub fast float 3.000000e+00, %4233
  %4235 = fmul fast float %4232, %4232
  %4236 = fmul fast float %4235, %4234
  %4237 = fsub fast float 1.000000e+00, %4236
  %4238 = fsub fast float 0x3FE3333340000000, %3813
  %4239 = fmul fast float %4238, 0x400AAAAAA0000000
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4237, %4240
  %4242 = fmul fast float %3825, 0x3FEA2B8620000000
  %4243 = fmul fast float %3826, 0x3FEA2B8620000000
  %4244 = fmul fast float %3827, 0x3FEA2B8620000000
  %4245 = fadd fast float %4242, 0x3FC81DFBA0000000
  %4246 = fmul fast float %4245, %3825
  %4247 = fadd fast float %4246, 0x3F910E6020000000
  %4248 = fadd fast float %4243, 0x3FC81DFBA0000000
  %4249 = fmul fast float %4248, %3826
  %4250 = fadd fast float %4249, 0x3F910E6020000000
  %4251 = fadd fast float %4244, 0x3FC81DFBA0000000
  %4252 = fmul fast float %4251, %3827
  %4253 = fadd fast float %4252, 0x3F910E6020000000
  %4254 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4256 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4257 = fsub fast float %4254, %3825
  %4258 = fsub fast float %4255, %3826
  %4259 = fsub fast float %4256, %3827
  %4260 = fmul fast float %4257, %4230
  %4261 = fmul fast float %4260, %4241
  %4262 = fmul fast float %4258, %4230
  %4263 = fmul fast float %4262, %4241
  %4264 = fmul fast float %4259, %4230
  %4265 = fmul fast float %4264, %4241
  %4266 = fadd fast float %4261, %3825
  %4267 = fadd fast float %4263, %3826
  %4268 = fadd fast float %4265, %3827
  %4269 = fmul fast float %3786, %3786
  %4270 = fmul fast float %4269, %4269
  %4271 = fadd fast float %4226, 1.000000e+00
  %4272 = fsub fast float %4271, %4241
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fsub fast float 1.000000e+00, %4270
  %4277 = call float @dx.op.binary.f32(i32 36, float %4273, float %4276)  ; FMin(a,b)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4279 = call float @dx.op.binary.f32(i32 35, float %4277, float %4278)  ; FMax(a,b)
  %4280 = fadd fast float %4275, 0xBFE4CCCCC0000000
  %4281 = fmul fast float %4280, 0x4006DB6DA0000000
  %4282 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4283 = fmul fast float %4282, 2.000000e+00
  %4284 = fsub fast float 3.000000e+00, %4283
  %4285 = bitcast float %3810 to i32
  %4286 = ashr i32 %4285, 1
  %4287 = add nsw i32 %4286, 532487669
  %4288 = bitcast i32 %4287 to float
  %4289 = fsub fast float 1.000000e+00, %4288
  %4290 = bitcast float %4289 to i32
  %4291 = sub nsw i32 2129859010, %4290
  %4292 = bitcast i32 %4291 to float
  %4293 = fmul fast float %4292, 2.000000e+00
  %4294 = bitcast float %3811 to i32
  %4295 = ashr i32 %4294, 1
  %4296 = add nsw i32 %4295, 532487669
  %4297 = bitcast i32 %4296 to float
  %4298 = fsub fast float 1.000000e+00, %4297
  %4299 = bitcast float %4298 to i32
  %4300 = sub nsw i32 2129859010, %4299
  %4301 = bitcast i32 %4300 to float
  %4302 = fmul fast float %4301, 2.000000e+00
  %4303 = bitcast float %3812 to i32
  %4304 = ashr i32 %4303, 1
  %4305 = add nsw i32 %4304, 532487669
  %4306 = bitcast i32 %4305 to float
  %4307 = fsub fast float 1.000000e+00, %4306
  %4308 = bitcast float %4307 to i32
  %4309 = sub nsw i32 2129859010, %4308
  %4310 = bitcast i32 %4309 to float
  %4311 = fmul fast float %4310, 2.000000e+00
  %4312 = fsub fast float 0x4002A9FBE0000000, %4293
  %4313 = fadd fast float %4293, 0x3FD54FDF00000000
  %4314 = bitcast float %4313 to i32
  %4315 = sub nsw i32 2129859010, %4314
  %4316 = bitcast i32 %4315 to float
  %4317 = fmul fast float %4316, %4312
  %4318 = fmul fast float %4317, %4317
  %4319 = fsub fast float 0x4002A9FBE0000000, %4302
  %4320 = fadd fast float %4302, 0x3FD54FDF00000000
  %4321 = bitcast float %4320 to i32
  %4322 = sub nsw i32 2129859010, %4321
  %4323 = bitcast i32 %4322 to float
  %4324 = fmul fast float %4323, %4319
  %4325 = fmul fast float %4324, %4324
  %4326 = fsub fast float 0x4002A9FBE0000000, %4311
  %4327 = fadd fast float %4311, 0x3FD54FDF00000000
  %4328 = bitcast float %4327 to i32
  %4329 = sub nsw i32 2129859010, %4328
  %4330 = bitcast i32 %4329 to float
  %4331 = fmul fast float %4330, %4326
  %4332 = fmul fast float %4331, %4331
  %4333 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4318)  ; FMax(a,b)
  %4334 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4325)  ; FMax(a,b)
  %4335 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4332)  ; FMax(a,b)
  %4336 = fsub fast float 1.000000e+00, %4221
  %4337 = fadd fast float %4336, %4237
  %4338 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4339 = fsub fast float 1.000000e+00, %4201
  %4340 = fmul fast float %4279, %4339
  %4341 = fmul fast float %4282, %4282
  %4342 = fmul fast float %4341, %4340
  %4343 = fmul fast float %4342, %4284
  %4344 = fmul fast float %4339, 0xBFE99999A0000000
  %4345 = fmul fast float %4344, %4230
  %4346 = fmul fast float %4345, %4241
  %4347 = fadd fast float %4346, 1.000000e+00
  %4348 = fadd fast float %3813, -1.000000e+00
  %4349 = fmul fast float %4347, %4348
  %4350 = fadd fast float %4349, 1.000000e+00
  %4351 = fsub fast float %4333, %3810
  %4352 = fsub fast float %4334, %3811
  %4353 = fsub fast float %4335, %3812
  %4354 = fmul fast float %4343, %4351
  %4355 = fmul fast float %4343, %4352
  %4356 = fmul fast float %4343, %4353
  %4357 = fadd fast float %4354, %3810
  %4358 = fadd fast float %4355, %3811
  %4359 = fadd fast float %4356, %3812
  %4360 = fsub fast float %81, %3774
  %4361 = fsub fast float %82, %3775
  %4362 = fsub fast float %83, %3776
  %4363 = fmul fast float %4343, %4360
  %4364 = fmul fast float %4343, %4361
  %4365 = fmul fast float %4343, %4362
  %4366 = fadd fast float %4363, %3774
  %4367 = fadd fast float %4364, %3775
  %4368 = fadd fast float %4365, %3776
  %4369 = fmul fast float %4343, %4338
  %4370 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = fmul fast float %4369, %4371
  %4373 = fadd fast float %4372, %4370
  %4374 = fsub fast float 1.000000e+00, %3786
  %4375 = fmul fast float %4343, %4374
  %4376 = fadd fast float %4375, %3786
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4366, float %4367, float %4368, float %4366, float %4367, float %4368)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call float @dx.op.unary.f32(i32 25, float %4377)  ; Rsqrt(value)
  %4379 = fmul fast float %4366, %4378
  %4380 = fmul fast float %4367, %4378
  %4381 = fmul fast float %4368, %4378
  br label %4382

; <label>:4382                                    ; preds = %4214, %4207
  %4383 = phi float [ %4213, %4207 ], [ %4220, %4214 ]
  %4384 = phi float [ %4212, %4207 ], [ %4218, %4214 ]
  %4385 = phi float [ %4211, %4207 ], [ %4216, %4214 ]
  %4386 = phi float [ %4210, %4207 ], [ %4219, %4214 ]
  %4387 = phi float [ %4209, %4207 ], [ %4217, %4214 ]
  %4388 = phi float [ %4208, %4207 ], [ %4215, %4214 ]
  %4389 = phi float [ %3825, %4207 ], [ %4266, %4214 ]
  %4390 = phi float [ %3826, %4207 ], [ %4267, %4214 ]
  %4391 = phi float [ %3827, %4207 ], [ %4268, %4214 ]
  %4392 = phi float [ %3774, %4207 ], [ %4379, %4214 ]
  %4393 = phi float [ %3775, %4207 ], [ %4380, %4214 ]
  %4394 = phi float [ %3776, %4207 ], [ %4381, %4214 ]
  %4395 = phi float [ %3810, %4207 ], [ %4357, %4214 ]
  %4396 = phi float [ %3811, %4207 ], [ %4358, %4214 ]
  %4397 = phi float [ %3812, %4207 ], [ %4359, %4214 ]
  %4398 = phi float [ %3813, %4207 ], [ %4373, %4214 ]
  %4399 = phi float [ %3786, %4207 ], [ %4376, %4214 ]
  %4400 = select i1 %179, float 0.000000e+00, float %4397
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %4385, float %4384, float %4383)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4387, float %4386, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4404 = fmul fast float %4403, 2.000000e+00
  %4405 = fmul fast float %4404, %4392
  %4406 = fmul fast float %4404, %4393
  %4407 = fmul fast float %4404, %4394
  %4408 = fsub fast float %4388, %4405
  %4409 = fsub fast float %4387, %4406
  %4410 = fsub fast float %4386, %4407
  %4411 = call float @dx.op.binary.f32(i32 36, float %4399, float 1.000000e+00)  ; FMin(a,b)
  %4412 = fsub fast float 1.000000e+00, %4399
  %4413 = bitcast float %4412 to i32
  %4414 = sub nsw i32 2129859010, %4413
  %4415 = bitcast i32 %4414 to float
  %4416 = fsub fast float 1.000000e+00, %51
  %4417 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = call float @dx.op.binary.f32(i32 35, float %4417, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4419 = fdiv fast float %4416, %4418
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %4421, 5.000000e-01
  %4423 = fadd fast float %4422, 5.000000e-01
  %4424 = fmul fast float %4423, %51
  %4425 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, %4419
  %4428 = fadd fast float %4424, %4427
  %4429 = fsub fast float 5.000000e-01, %4422
  %4430 = fmul fast float %4429, %4389
  %4431 = fmul fast float %4429, %4390
  %4432 = fmul fast float %4429, %4391
  %4433 = fadd fast float %4428, %4430
  %4434 = fadd fast float %4428, %4431
  %4435 = fadd fast float %4428, %4432
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4410, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4437, 5.000000e-01
  %4439 = fadd fast float %4438, 5.000000e-01
  %4440 = fmul fast float %4439, %51
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4410, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4442, %4419
  %4444 = fadd fast float %4440, %4443
  %4445 = fsub fast float 5.000000e-01, %4438
  %4446 = fmul fast float %4445, %4389
  %4447 = fmul fast float %4445, %4390
  %4448 = fmul fast float %4445, %4391
  %4449 = fadd fast float %4444, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4444, %4448
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = call float @dx.op.binary.f32(i32 36, float %4389, float %4453)  ; FMin(a,b)
  %4455 = fsub fast float 1.000000e+00, %4411
  %4456 = fmul fast float %4454, %4455
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = bitcast float %4457 to i32
  %4459 = sub nsw i32 2129859010, %4458
  %4460 = bitcast i32 %4459 to float
  %4461 = call float @dx.op.binary.f32(i32 36, float %4390, float %4453)  ; FMin(a,b)
  %4462 = fmul fast float %4461, %4455
  %4463 = fsub fast float 1.000000e+00, %4462
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = bitcast i32 %4465 to float
  %4467 = call float @dx.op.binary.f32(i32 36, float %4391, float %4453)  ; FMin(a,b)
  %4468 = fmul fast float %4467, %4455
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = bitcast float %4469 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = fmul fast float %4411, %52
  %4474 = fmul fast float %4473, %4433
  %4475 = fmul fast float %4474, %4460
  %4476 = fmul fast float %4411, %53
  %4477 = fmul fast float %4476, %4434
  %4478 = fmul fast float %4477, %4466
  %4479 = fmul fast float %4411, %54
  %4480 = fmul fast float %4479, %4435
  %4481 = fmul fast float %4480, %4472
  %4482 = call float @dx.op.binary.f32(i32 36, float %4395, float %4453)  ; FMin(a,b)
  %4483 = fmul fast float %4482, %4455
  %4484 = fsub fast float 1.000000e+00, %4483
  %4485 = bitcast float %4484 to i32
  %4486 = sub nsw i32 2129859010, %4485
  %4487 = bitcast i32 %4486 to float
  %4488 = call float @dx.op.binary.f32(i32 36, float %4396, float %4453)  ; FMin(a,b)
  %4489 = fmul fast float %4488, %4455
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = bitcast float %4490 to i32
  %4492 = sub nsw i32 2129859010, %4491
  %4493 = bitcast i32 %4492 to float
  %4494 = call float @dx.op.binary.f32(i32 36, float %4400, float %4453)  ; FMin(a,b)
  %4495 = fmul fast float %4494, %4455
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = bitcast float %4496 to i32
  %4498 = sub nsw i32 2129859010, %4497
  %4499 = bitcast i32 %4498 to float
  %4500 = fmul fast float %4473, %4449
  %4501 = fmul fast float %4500, %4487
  %4502 = fmul fast float %4476, %4450
  %4503 = fmul fast float %4502, %4493
  %4504 = fmul fast float %4479, %4451
  %4505 = fmul fast float %4504, %4499
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4478, float %4481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = select i1 %179, float 0.000000e+00, float %4475
  %4508 = select i1 %179, float %4506, float %4478
  %4509 = select i1 %179, float 0.000000e+00, float %4481
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4501, float %4503, float %4505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = select i1 %179, float 0.000000e+00, float %4501
  %4512 = select i1 %179, float %4510, float %4503
  %4513 = select i1 %179, float 0.000000e+00, float %4505
  %4514 = fmul fast float %4402, 9.843750e-01
  %4515 = fmul fast float %4398, 9.843750e-01
  %4516 = fadd fast float %4514, 7.812500e-03
  %4517 = fadd fast float %4515, 7.812500e-03
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %4516, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 2
  %4520 = extractvalue %dx.types.ResRet.f32 %4518, 3
  %4521 = fmul fast float %4519, %4395
  %4522 = fmul fast float %4519, %4396
  %4523 = fmul fast float %4519, %4400
  %4524 = fadd fast float %4521, %4520
  %4525 = fadd fast float %4522, %4520
  %4526 = fadd fast float %4523, %4520
  %4527 = fcmp fast ogt float %3787, 0.000000e+00
  br i1 %4527, label %4528, label %4554

; <label>:4528                                    ; preds = %4382
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3787, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4533 = fadd fast float %4530, -5.000000e-01
  %4534 = fadd fast float %4531, -5.000000e-01
  %4535 = fadd fast float %4532, -5.000000e-01
  %4536 = fsub fast float 1.000000e+00, %4395
  %4537 = fsub fast float 1.000000e+00, %4396
  %4538 = fsub fast float 1.000000e+00, %4400
  %4539 = fmul fast float %4395, 4.000000e+00
  %4540 = fmul fast float %4539, %4536
  %4541 = fmul fast float %4540, %4533
  %4542 = fmul fast float %4396, 4.000000e+00
  %4543 = fmul fast float %4542, %4537
  %4544 = fmul fast float %4543, %4534
  %4545 = fmul fast float %4400, 4.000000e+00
  %4546 = fmul fast float %4545, %4538
  %4547 = fmul fast float %4546, %4535
  %4548 = fadd fast float %4541, %4524
  %4549 = fadd fast float %4544, %4525
  %4550 = fadd fast float %4547, %4526
  %4551 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4552 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4553 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  br label %4554

; <label>:4554                                    ; preds = %4528, %4382
  %4555 = phi float [ %4551, %4528 ], [ %4524, %4382 ]
  %4556 = phi float [ %4552, %4528 ], [ %4525, %4382 ]
  %4557 = phi float [ %4553, %4528 ], [ %4526, %4382 ]
  %4558 = call float @dx.op.binary.f32(i32 35, float %4556, float %4557)  ; FMax(a,b)
  %4559 = call float @dx.op.binary.f32(i32 35, float %4555, float %4558)  ; FMax(a,b)
  %4560 = fsub fast float 1.000000e+00, %4559
  %4561 = fmul fast float %4560, %4507
  %4562 = fmul fast float %4560, %4508
  %4563 = fmul fast float %4560, %4509
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = fcmp fast ogt float %4564, 0x3E7FF19E20000000
  %4566 = fdiv fast float 1.000000e+00, %4564
  %4567 = select i1 %4565, float %4566, float 0.000000e+00
  %4568 = fmul fast float %4567, %4389
  %4569 = fmul fast float %4567, %4390
  %4570 = fmul fast float %4567, %4391
  %4571 = fadd fast float %4568, -1.000000e+00
  %4572 = fadd fast float %4569, -1.000000e+00
  %4573 = fadd fast float %4570, -1.000000e+00
  %4574 = fmul fast float %4571, 5.000000e-01
  %4575 = fmul fast float %4572, 5.000000e-01
  %4576 = fmul fast float %4573, 5.000000e-01
  %4577 = fadd fast float %4574, 1.000000e+00
  %4578 = fadd fast float %4575, 1.000000e+00
  %4579 = fadd fast float %4576, 1.000000e+00
  %4580 = fmul fast float %4555, %4511
  %4581 = fmul fast float %4556, %4512
  %4582 = fmul fast float %4557, %4513
  %4583 = fsub fast float 1.000000e+00, %4402
  %4584 = bitcast float %4583 to i32
  %4585 = sitofp i32 %4584 to float
  %4586 = fmul fast float %4585, 5.000000e+00
  %4587 = fadd fast float %4586, 0xC1EFBF8940000000
  %4588 = fptosi float %4587 to i32
  %4589 = bitcast i32 %4588 to float
  %4590 = fmul fast float %4589, %3788
  %4591 = fmul fast float %4507, %4590
  %4592 = fmul fast float %4591, %4560
  %4593 = fmul fast float %4592, %4577
  %4594 = fmul fast float %4508, %4590
  %4595 = fmul fast float %4594, %4560
  %4596 = fmul fast float %4595, %4578
  %4597 = fmul fast float %4509, %4590
  %4598 = fmul fast float %4597, %4560
  %4599 = fmul fast float %4598, %4579
  %4600 = fmul fast float %4561, %3784
  %4601 = fmul fast float %4562, %3784
  %4602 = fmul fast float %4563, %3784
  %4603 = fadd fast float %4580, %3780
  %4604 = fadd fast float %4603, %4593
  %4605 = fmul fast float %4604, %3784
  %4606 = fadd fast float %4581, %3781
  %4607 = fadd fast float %4606, %4596
  %4608 = fmul fast float %4607, %3784
  %4609 = fadd fast float %4582, %3782
  %4610 = fadd fast float %4609, %4599
  %4611 = fmul fast float %4610, %3784
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = fcmp fast oeq float %4613, 0.000000e+00
  br i1 %4614, label %4842, label %4615

; <label>:4615                                    ; preds = %4554
  %4616 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = select i1 %179, float %4624, float %4620
  %4628 = select i1 %179, float %4626, float %4621
  %4629 = select i1 %179, float %4625, float %4622
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4632 = fcmp fast une float %4631, 0.000000e+00
  br i1 %4632, label %4633, label %4650

; <label>:4633                                    ; preds = %4615
  %4634 = fptoui float %74 to i32
  %4635 = fptoui float %75 to i32
  %4636 = lshr i32 %4634, 4
  %4637 = lshr i32 %4635, 4
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fptoui float %4639 to i32
  %4641 = add i32 %4640, 15
  %4642 = lshr i32 %4641, 4
  %4643 = mul i32 %4642, %4637
  %4644 = add i32 %4643, %4636
  %4645 = shl i32 %4644, 3
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = and i32 %4647, -268435456
  %4649 = icmp eq i32 %4648, -1342177280
  br i1 %4649, label %4660, label %4650

; <label>:4650                                    ; preds = %4633, %4615
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 2
  %4653 = extractvalue %dx.types.CBufRet.f32 %4651, 3
  %4654 = fmul fast float %4652, %74
  %4655 = fmul fast float %4653, %75
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %4654, float %4655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  br label %4660

; <label>:4660                                    ; preds = %4650, %4633
  %4661 = phi float [ %4657, %4650 ], [ 0.000000e+00, %4633 ]
  %4662 = phi float [ %4658, %4650 ], [ 0.000000e+00, %4633 ]
  %4663 = phi float [ %4659, %4650 ], [ 0.000000e+00, %4633 ]
  %4664 = call float @dx.op.binary.f32(i32 36, float %4662, float %4663)  ; FMin(a,b)
  %4665 = call float @dx.op.binary.f32(i32 36, float %4661, float %4664)  ; FMin(a,b)
  %4666 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %4666, label %4667, label %4842, !dx.controlflow.hints !78

; <label>:4667                                    ; preds = %4660
  %4668 = fmul fast float %4661, %4627
  %4669 = fmul fast float %4662, %4628
  %4670 = fmul fast float %4663, %4629
  %4671 = fsub fast float %4616, %4388
  %4672 = fsub fast float %4617, %4387
  %4673 = fsub fast float %4618, %4386
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4675, %4672
  %4678 = fmul fast float %4675, %4673
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4384, float %4383, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4682 = fmul fast float %4681, %4681
  %4683 = fmul fast float %4682, %4415
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, %4681
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, %4686
  %4688 = call float @dx.op.unary.f32(i32 6, float %4679)  ; FAbs(value)
  %4689 = fsub fast float 1.000000e+00, %4398
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F847AE140000000)  ; FMax(a,b)
  %4691 = fmul fast float %4690, %4690
  %4692 = fmul fast float %4691, %4691
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = fmul fast float %4402, %4402
  %4695 = fmul fast float %4694, %4693
  %4696 = fadd fast float %4695, %4692
  %4697 = bitcast float %4696 to i32
  %4698 = ashr i32 %4697, 1
  %4699 = add nsw i32 %4698, 532487669
  %4700 = bitcast i32 %4699 to float
  %4701 = fadd fast float %4700, %4402
  %4702 = fmul fast float %4692, %4687
  %4703 = fsub fast float 1.000000e+00, %4687
  %4704 = fadd fast float %4703, %4702
  %4705 = fmul fast float %4688, %4688
  %4706 = fmul fast float %4705, %4693
  %4707 = fadd fast float %4706, %4692
  %4708 = bitcast float %4707 to i32
  %4709 = ashr i32 %4708, 1
  %4710 = add nsw i32 %4709, 532487669
  %4711 = bitcast i32 %4710 to float
  %4712 = fadd fast float %4711, %4688
  %4713 = fmul fast float %4704, %4704
  %4714 = fmul fast float %4713, %4701
  %4715 = fmul fast float %4714, %4712
  %4716 = fdiv fast float 0x3FF0A00000000000, %4715
  %4717 = fmul fast float %4716, %4692
  %4718 = call float @dx.op.unary.f32(i32 6, float %4680)  ; FAbs(value)
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sitofp i32 %4720 to float
  %4722 = fmul fast float %4721, 5.000000e+00
  %4723 = fadd fast float %4722, 0xC1EFBF8940000000
  %4724 = fptosi float %4723 to i32
  %4725 = bitcast i32 %4724 to float
  %4726 = fsub fast float 1.000000e+00, %4395
  %4727 = fsub fast float 1.000000e+00, %4396
  %4728 = fsub fast float 1.000000e+00, %4400
  %4729 = fmul fast float %4725, %4726
  %4730 = fmul fast float %4725, %4727
  %4731 = fmul fast float %4725, %4728
  %4732 = fadd fast float %4729, %4395
  %4733 = fadd fast float %4730, %4396
  %4734 = fadd fast float %4731, %4400
  br i1 %4527, label %4735, label %4758

; <label>:4735                                    ; preds = %4667
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3787, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.ResRet.f32 %4736, 1
  %4739 = extractvalue %dx.types.ResRet.f32 %4736, 2
  %4740 = fadd fast float %4737, -5.000000e-01
  %4741 = fadd fast float %4738, -5.000000e-01
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fmul fast float %4395, 4.000000e+00
  %4744 = fmul fast float %4743, %4726
  %4745 = fmul fast float %4744, %4740
  %4746 = fmul fast float %4396, 4.000000e+00
  %4747 = fmul fast float %4746, %4727
  %4748 = fmul fast float %4747, %4741
  %4749 = fmul fast float %4400, 4.000000e+00
  %4750 = fmul fast float %4749, %4728
  %4751 = fmul fast float %4750, %4742
  %4752 = fadd fast float %4745, %4732
  %4753 = fadd fast float %4748, %4733
  %4754 = fadd fast float %4751, %4734
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  br label %4758

; <label>:4758                                    ; preds = %4735, %4667
  %4759 = phi float [ %4755, %4735 ], [ %4732, %4667 ]
  %4760 = phi float [ %4756, %4735 ], [ %4733, %4667 ]
  %4761 = phi float [ %4757, %4735 ], [ %4734, %4667 ]
  %4762 = fmul fast float %4679, 9.843750e-01
  %4763 = fadd fast float %4762, 7.812500e-03
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %4763, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4767 = fmul fast float %4765, %4395
  %4768 = fmul fast float %4765, %4396
  %4769 = fmul fast float %4765, %4400
  %4770 = fadd fast float %4767, %4766
  %4771 = fadd fast float %4768, %4766
  %4772 = fadd fast float %4769, %4766
  br i1 %4527, label %4773, label %4796

; <label>:4773                                    ; preds = %4758
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3787, float %4679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = fadd fast float %4775, -5.000000e-01
  %4779 = fadd fast float %4776, -5.000000e-01
  %4780 = fadd fast float %4777, -5.000000e-01
  %4781 = fmul fast float %4395, 4.000000e+00
  %4782 = fmul fast float %4781, %4726
  %4783 = fmul fast float %4782, %4778
  %4784 = fmul fast float %4396, 4.000000e+00
  %4785 = fmul fast float %4784, %4727
  %4786 = fmul fast float %4785, %4779
  %4787 = fmul fast float %4400, 4.000000e+00
  %4788 = fmul fast float %4787, %4728
  %4789 = fmul fast float %4788, %4780
  %4790 = fadd fast float %4783, %4770
  %4791 = fadd fast float %4786, %4771
  %4792 = fadd fast float %4789, %4772
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  br label %4796

; <label>:4796                                    ; preds = %4773, %4758
  %4797 = phi float [ %4793, %4773 ], [ %4770, %4758 ]
  %4798 = phi float [ %4794, %4773 ], [ %4771, %4758 ]
  %4799 = phi float [ %4795, %4773 ], [ %4772, %4758 ]
  %4800 = call float @dx.op.binary.f32(i32 35, float %4798, float %4799)  ; FMax(a,b)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4797, float %4800)  ; FMax(a,b)
  %4802 = fsub fast float 1.000000e+00, %4801
  %4803 = fmul fast float %4759, %4717
  %4804 = fmul fast float %4760, %4717
  %4805 = fmul fast float %4761, %4717
  %4806 = fsub fast float 1.000000e+00, %4680
  %4807 = bitcast float %4806 to i32
  %4808 = sitofp i32 %4807 to float
  %4809 = fmul fast float %4808, 5.000000e+00
  %4810 = fadd fast float %4809, 0xC1EFBF8940000000
  %4811 = fptosi float %4810 to i32
  %4812 = bitcast i32 %4811 to float
  %4813 = fmul fast float %4812, %3788
  %4814 = fmul fast float %4802, %4813
  %4815 = fmul fast float %4814, %4577
  %4816 = fmul fast float %4814, %4578
  %4817 = fmul fast float %4814, %4579
  %4818 = fadd fast float %4815, %4803
  %4819 = fadd fast float %4816, %4804
  %4820 = fadd fast float %4817, %4805
  %4821 = fmul fast float %4685, %4668
  %4822 = fmul fast float %4821, %4802
  %4823 = fmul fast float %4685, %4669
  %4824 = fmul fast float %4823, %4802
  %4825 = fmul fast float %4685, %4670
  %4826 = fmul fast float %4825, %4802
  %4827 = fmul fast float %4821, %4818
  %4828 = fmul fast float %4823, %4819
  %4829 = fmul fast float %4825, %4820
  %4830 = fadd fast float %4822, %4561
  %4831 = fmul fast float %4830, %3784
  %4832 = fadd fast float %4824, %4562
  %4833 = fmul fast float %4832, %3784
  %4834 = fadd fast float %4826, %4563
  %4835 = fmul fast float %4834, %3784
  %4836 = fadd fast float %4827, %4604
  %4837 = fmul fast float %4836, %3784
  %4838 = fadd fast float %4828, %4607
  %4839 = fmul fast float %4838, %3784
  %4840 = fadd fast float %4829, %4610
  %4841 = fmul fast float %4840, %3784
  br label %4842

; <label>:4842                                    ; preds = %4796, %4660, %4554
  %4843 = phi float [ %4605, %4554 ], [ %4605, %4660 ], [ %4837, %4796 ]
  %4844 = phi float [ %4608, %4554 ], [ %4608, %4660 ], [ %4839, %4796 ]
  %4845 = phi float [ %4611, %4554 ], [ %4611, %4660 ], [ %4841, %4796 ]
  %4846 = phi float [ %4600, %4554 ], [ %4600, %4660 ], [ %4831, %4796 ]
  %4847 = phi float [ %4601, %4554 ], [ %4601, %4660 ], [ %4833, %4796 ]
  %4848 = phi float [ %4602, %4554 ], [ %4602, %4660 ], [ %4835, %4796 ]
  %4849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.i32 %4849, 0
  %4851 = icmp eq i32 %4850, 0
  br i1 %4851, label %5286, label %4852

; <label>:4852                                    ; preds = %4842
  %4853 = fptoui float %74 to i32
  %4854 = fptoui float %75 to i32
  %4855 = lshr i32 %4853, 4
  %4856 = lshr i32 %4854, 4
  %4857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.i32 %4857, 0
  %4859 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4856, i32 %4858, i32 %4855)  ; UMad(a,b,c)
  %4860 = add nsw i32 %4850, -1
  %4861 = call i32 @dx.op.binary.i32(i32 37, i32 %4860, i32 0)  ; IMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4863 = fptoui float %4862 to i32
  %4864 = lshr i32 %4863, 5
  %4865 = call i32 @dx.op.binary.i32(i32 40, i32 %4864, i32 8191)  ; UMin(a,b)
  %4866 = shl i32 %4865, 2
  %4867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4866, i32 undef)  ; BufferLoad(srv,index,wot)
  %4868 = extractvalue %dx.types.ResRet.i32 %4867, 0
  %4869 = lshr i32 %4868, 16
  %4870 = and i32 %4868, 65535
  %4871 = lshr i32 %4868, 21
  %4872 = lshr i32 %4870, 5
  %4873 = call i32 @dx.op.binary.i32(i32 40, i32 %4872, i32 %4861)  ; UMin(a,b)
  %4874 = icmp ugt i32 %4871, %4873
  br i1 %4874, label %5286, label %4875

; <label>:4875                                    ; preds = %4852
  br label %4876

; <label>:4876                                    ; preds = %5276, %4875
  %4877 = phi i32 [ %5283, %5276 ], [ %4871, %4875 ]
  %4878 = phi float [ %5277, %5276 ], [ %4843, %4875 ]
  %4879 = phi float [ %5278, %5276 ], [ %4844, %4875 ]
  %4880 = phi float [ %5279, %5276 ], [ %4845, %4875 ]
  %4881 = phi float [ %5280, %5276 ], [ %4846, %4875 ]
  %4882 = phi float [ %5281, %5276 ], [ %4847, %4875 ]
  %4883 = phi float [ %5282, %5276 ], [ %4848, %4875 ]
  %4884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.i32 %4884, 0
  %4886 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4859, i32 %4885, i32 %4877)  ; UMad(a,b,c)
  %4887 = shl i32 %4886, 2
  %4888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.i32 %4888, 0
  %4890 = shl i32 %4877, 5
  %4891 = sub nsw i32 %4869, %4890
  %4892 = call i32 @dx.op.binary.i32(i32 37, i32 %4891, i32 0)  ; IMax(a,b)
  %4893 = call i32 @dx.op.binary.i32(i32 38, i32 %4892, i32 31)  ; IMin(a,b)
  %4894 = sub nsw i32 1, %4869
  %4895 = add nsw i32 %4894, %4870
  %4896 = call i32 @dx.op.binary.i32(i32 37, i32 %4895, i32 0)  ; IMax(a,b)
  %4897 = call i32 @dx.op.binary.i32(i32 38, i32 %4896, i32 32)  ; IMin(a,b)
  %4898 = and i32 %4897, 31
  %4899 = shl i32 -1, %4898
  %4900 = xor i32 %4899, -1
  %4901 = and i32 %4893, 31
  %4902 = shl i32 %4900, %4901
  %4903 = icmp eq i32 %4897, 32
  %4904 = select i1 %4903, i32 -1, i32 %4902
  %4905 = and i32 %4904, %4889
  %4906 = icmp eq i32 %4905, 0
  br i1 %4906, label %5276, label %4907

; <label>:4907                                    ; preds = %4876
  br label %4908

; <label>:4908                                    ; preds = %4988, %4907
  %4909 = phi i32 [ %4920, %4988 ], [ %4905, %4907 ]
  %4910 = phi float [ %4989, %4988 ], [ %4878, %4907 ]
  %4911 = phi float [ %4990, %4988 ], [ %4879, %4907 ]
  %4912 = phi float [ %4991, %4988 ], [ %4880, %4907 ]
  %4913 = phi float [ %4992, %4988 ], [ %4881, %4907 ]
  %4914 = phi float [ %4993, %4988 ], [ %4882, %4907 ]
  %4915 = phi float [ %4994, %4988 ], [ %4883, %4907 ]
  %4916 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4909)  ; FirstbitLo(value)
  %4917 = add i32 %4916, %4890
  %4918 = and i32 %4916, 31
  %4919 = shl i32 1, %4918
  %4920 = xor i32 %4919, %4909
  %4921 = mul i32 %4917, 112
  %4922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4921, i32 undef)  ; BufferLoad(srv,index,wot)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4926 = or i32 %4921, 12
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = add i32 %4921, 44
  %4930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4929, i32 undef)  ; BufferLoad(srv,index,wot)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = add i32 %4921, 48
  %4933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4937 = add i32 %4921, 80
  %4938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4937, i32 undef)  ; BufferLoad(srv,index,wot)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 1
  %4940 = extractvalue %dx.types.ResRet.f32 %4938, 2
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = select i1 %179, float %4939, float %4923
  %4943 = select i1 %179, float %4941, float %4924
  %4944 = select i1 %179, float %4940, float %4925
  %4945 = fsub fast float %4934, %137
  %4946 = fsub fast float %4935, %138
  %4947 = fsub fast float %4936, %139
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %4947, float %4945, float %4946, float %4947)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 24, float %4948)  ; Sqrt(value)
  %4950 = fdiv fast float 1.000000e+00, %4949
  %4951 = fmul fast float %4950, %4945
  %4952 = fmul fast float %4950, %4946
  %4953 = fmul fast float %4950, %4947
  %4954 = fadd fast float %4949, %4928
  %4955 = fdiv fast float 1.000000e+00, %4954
  %4956 = fmul float %4931, %4955
  %4957 = fmul float %4956, %4956
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = and i32 %4919, %4905
  %4960 = icmp eq i32 %4959, 0
  br i1 %4960, label %4983, label %4961, !dx.controlflow.hints !79

; <label>:4961                                    ; preds = %4908
  %4962 = lshr i32 %4853, 5
  %4963 = lshr i32 %4854, 5
  %4964 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %4962, i32 %4963, i32 %4917, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4965 = extractvalue %dx.types.ResRet.i32 %4964, 0
  %4966 = and i32 %4965, 3
  %4967 = icmp eq i32 %4966, 0
  %4968 = select i1 %4967, float 1.000000e+00, float 0.000000e+00
  %4969 = icmp eq i32 %4966, 3
  br i1 %4969, label %4970, label %4983

; <label>:4970                                    ; preds = %4961
  %4971 = lshr i32 %4965, 10
  %4972 = and i32 %4971, 8160
  %4973 = and i32 %4854, 31
  %4974 = or i32 %4972, %4973
  %4975 = lshr i32 %4965, 1
  %4976 = and i32 %4975, 16352
  %4977 = and i32 %4853, 31
  %4978 = or i32 %4976, %4977
  %4979 = lshr i32 %4965, 23
  %4980 = and i32 %4979, 255
  %4981 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4978, i32 %4974, i32 %4980, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  br label %4983

; <label>:4983                                    ; preds = %4970, %4961, %4908
  %4984 = phi float [ %4982, %4970 ], [ %4968, %4961 ], [ 0.000000e+00, %4908 ]
  %4985 = call float @dx.op.binary.f32(i32 36, float %4984, float %4984)  ; FMin(a,b)
  %4986 = call float @dx.op.binary.f32(i32 36, float %4984, float %4985)  ; FMin(a,b)
  %4987 = fcmp fast ogt float %4986, 0.000000e+00
  br i1 %4987, label %4996, label %4988, !dx.controlflow.hints !80

; <label>:4988                                    ; preds = %5232, %4983
  %4989 = phi float [ %4910, %4983 ], [ %5272, %5232 ]
  %4990 = phi float [ %4911, %4983 ], [ %5273, %5232 ]
  %4991 = phi float [ %4912, %4983 ], [ %5274, %5232 ]
  %4992 = phi float [ %4913, %4983 ], [ %5266, %5232 ]
  %4993 = phi float [ %4914, %4983 ], [ %5267, %5232 ]
  %4994 = phi float [ %4915, %4983 ], [ %5268, %5232 ]
  %4995 = icmp eq i32 %4909, %4919
  br i1 %4995, label %5275, label %4908

; <label>:4996                                    ; preds = %4983
  %4997 = fmul fast float %4984, %4942
  %4998 = fmul fast float %4984, %4943
  %4999 = fmul fast float %4984, %4944
  %5000 = fsub fast float %4936, %4188
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  %5002 = fsub fast float %139, %4188
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  %5004 = xor i1 %5003, %5001
  %5005 = fsub fast float %4188, %4936
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = fadd fast float %5006, %4936
  %5008 = select i1 %5004, float %4936, float %5007
  %5009 = fsub fast float %5008, %139
  %5010 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %5009, float %4945, float %4946, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = call float @dx.op.unary.f32(i32 25, float %5010)  ; Rsqrt(value)
  %5012 = fmul fast float %5011, %4945
  %5013 = fmul fast float %5011, %4946
  %5014 = fmul fast float %5011, %5009
  %5015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = fdiv fast float 1.000000e+00, %5016
  %5018 = fmul fast float %5017, %5015
  %5019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5002, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fcmp fast olt float %5019, 0.000000e+00
  %5022 = zext i1 %5020 to i32
  %5023 = zext i1 %5021 to i32
  %5024 = sub nsw i32 %5022, %5023
  %5025 = sitofp i32 %5024 to float
  %5026 = fsub fast float %5008, %4188
  %5027 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %5026, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = fcmp fast ogt float %5027, 0.000000e+00
  %5029 = fcmp fast olt float %5027, 0.000000e+00
  %5030 = zext i1 %5028 to i32
  %5031 = zext i1 %5029 to i32
  %5032 = sub nsw i32 %5030, %5031
  %5033 = sitofp i32 %5032 to float
  %5034 = fcmp fast une float %5025, %5033
  br i1 %5034, label %5035, label %5045

; <label>:5035                                    ; preds = %4996
  %5036 = fmul fast float %5018, %5014
  %5037 = fmul fast float %5018, %5013
  %5038 = fmul fast float %5018, %5012
  %5039 = fmul fast float %5038, %5038
  %5040 = fmul fast float %5037, %5037
  %5041 = fadd fast float %5039, %5040
  %5042 = fmul fast float %5036, %5036
  %5043 = fadd fast float %5041, %5042
  %5044 = call float @dx.op.unary.f32(i32 24, float %5043)  ; Sqrt(value)
  br label %5057

; <label>:5045                                    ; preds = %4996
  %5046 = icmp slt i32 %5024, 0
  br i1 %5046, label %5047, label %5057

; <label>:5047                                    ; preds = %5045
  %5048 = fsub fast float %137, %4934
  %5049 = fsub fast float %138, %4935
  %5050 = fsub fast float %139, %5008
  %5051 = fmul fast float %5048, %5048
  %5052 = fmul fast float %5049, %5049
  %5053 = fadd fast float %5051, %5052
  %5054 = fmul fast float %5050, %5050
  %5055 = fadd fast float %5053, %5054
  %5056 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  br label %5057

; <label>:5057                                    ; preds = %5047, %5045, %5035
  %5058 = phi float [ %5044, %5035 ], [ %5056, %5047 ], [ 0.000000e+00, %5045 ]
  %5059 = and i1 %5003, %5001
  %5060 = fsub fast float -0.000000e+00, %5058
  %5061 = select i1 %5059, float -0.000000e+00, float %5060
  %5062 = fmul fast float %4189, 0x3FF7154760000000
  %5063 = fmul fast float %5062, %5061
  %5064 = fmul fast float %4190, 0x3FF7154760000000
  %5065 = fmul fast float %5064, %5061
  %5066 = fmul fast float %4191, 0x3FF7154760000000
  %5067 = fmul fast float %5066, %5061
  %5068 = call float @dx.op.unary.f32(i32 21, float %5063)  ; Exp(value)
  %5069 = call float @dx.op.unary.f32(i32 21, float %5065)  ; Exp(value)
  %5070 = call float @dx.op.unary.f32(i32 21, float %5067)  ; Exp(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = fmul fast float %4997, %5071
  %5075 = fmul fast float %4998, %5072
  %5076 = fmul fast float %4999, %5073
  %5077 = fsub fast float %4951, %4388
  %5078 = fsub fast float %4952, %4387
  %5079 = fsub fast float %4953, %4386
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 25, float %5080)  ; Rsqrt(value)
  %5082 = fmul fast float %5081, %5077
  %5083 = fmul fast float %5081, %5078
  %5084 = fmul fast float %5081, %5079
  %5085 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4384, float %4383, float %5082, float %5083, float %5084)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5088 = fmul fast float %5087, %4958
  %5089 = fmul fast float %5087, %5087
  %5090 = fmul fast float %5089, %4415
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5088, %5091
  %5093 = bitcast float %4948 to i32
  %5094 = ashr i32 %5093, 1
  %5095 = sub nsw i32 1597463007, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %4945
  %5098 = fmul fast float %5096, %4946
  %5099 = fmul fast float %5096, %4947
  %5100 = fsub fast float %5097, %4388
  %5101 = fsub fast float %5098, %4387
  %5102 = fsub fast float %5099, %4386
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 25, float %5103)  ; Rsqrt(value)
  %5105 = fmul fast float %5100, %5104
  %5106 = fmul fast float %5101, %5104
  %5107 = fmul fast float %5102, %5104
  %5108 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = fmul fast float %5108, %5108
  %5110 = call float @dx.op.unary.f32(i32 6, float %5085)  ; FAbs(value)
  %5111 = fsub fast float 1.000000e+00, %4398
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0x3F847AE140000000)  ; FMax(a,b)
  %5113 = fmul fast float %5112, %5112
  %5114 = fmul fast float %5113, %5113
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = fmul fast float %4402, %4402
  %5117 = fmul fast float %5116, %5115
  %5118 = fadd fast float %5117, %5114
  %5119 = bitcast float %5118 to i32
  %5120 = ashr i32 %5119, 1
  %5121 = add nsw i32 %5120, 532487669
  %5122 = bitcast i32 %5121 to float
  %5123 = fadd fast float %5122, %4402
  %5124 = fmul fast float %5114, %5109
  %5125 = fsub fast float 1.000000e+00, %5109
  %5126 = fadd fast float %5125, %5124
  %5127 = fmul fast float %5110, %5110
  %5128 = fmul fast float %5127, %5115
  %5129 = fadd fast float %5128, %5114
  %5130 = bitcast float %5129 to i32
  %5131 = ashr i32 %5130, 1
  %5132 = add nsw i32 %5131, 532487669
  %5133 = bitcast i32 %5132 to float
  %5134 = fadd fast float %5133, %5110
  %5135 = fmul fast float %5126, %5126
  %5136 = fmul fast float %5135, %5123
  %5137 = fmul fast float %5136, %5134
  %5138 = fdiv fast float 1.000000e+00, %5137
  %5139 = bitcast float %5114 to i32
  %5140 = sitofp i32 %5139 to float
  %5141 = fmul fast float %5140, 0x3FE7F73180000000
  %5142 = fadd fast float %5141, 0x41AFE27C40000000
  %5143 = fptosi float %5142 to i32
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %4931, 0x3FD80E9D60000000
  %5146 = fmul fast float %5145, %5096
  %5147 = fadd fast float %5144, %5146
  %5148 = bitcast float %5147 to i32
  %5149 = sub nsw i32 2129859010, %5148
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %5114, %5138
  %5152 = fmul fast float %5151, %5144
  %5153 = fmul fast float %5152, %5150
  %5154 = call float @dx.op.unary.f32(i32 6, float %5086)  ; FAbs(value)
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = bitcast float %5155 to i32
  %5157 = sitofp i32 %5156 to float
  %5158 = fmul fast float %5157, 5.000000e+00
  %5159 = fadd fast float %5158, 0xC1EFBF8940000000
  %5160 = fptosi float %5159 to i32
  %5161 = bitcast i32 %5160 to float
  %5162 = fsub fast float 1.000000e+00, %4395
  %5163 = fsub fast float 1.000000e+00, %4396
  %5164 = fsub fast float 1.000000e+00, %4400
  %5165 = fmul fast float %5161, %5162
  %5166 = fmul fast float %5161, %5163
  %5167 = fmul fast float %5161, %5164
  %5168 = fadd fast float %5165, %4395
  %5169 = fadd fast float %5166, %4396
  %5170 = fadd fast float %5167, %4400
  br i1 %4527, label %5171, label %5194

; <label>:5171                                    ; preds = %5057
  %5172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3787, float %5154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5173 = extractvalue %dx.types.ResRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.ResRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.ResRet.f32 %5172, 2
  %5176 = fadd fast float %5173, -5.000000e-01
  %5177 = fadd fast float %5174, -5.000000e-01
  %5178 = fadd fast float %5175, -5.000000e-01
  %5179 = fmul fast float %4395, 4.000000e+00
  %5180 = fmul fast float %5179, %5162
  %5181 = fmul fast float %5180, %5176
  %5182 = fmul fast float %4396, 4.000000e+00
  %5183 = fmul fast float %5182, %5163
  %5184 = fmul fast float %5183, %5177
  %5185 = fmul fast float %4400, 4.000000e+00
  %5186 = fmul fast float %5185, %5164
  %5187 = fmul fast float %5186, %5178
  %5188 = fadd fast float %5181, %5168
  %5189 = fadd fast float %5184, %5169
  %5190 = fadd fast float %5187, %5170
  %5191 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5192 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  br label %5194

; <label>:5194                                    ; preds = %5171, %5057
  %5195 = phi float [ %5191, %5171 ], [ %5168, %5057 ]
  %5196 = phi float [ %5192, %5171 ], [ %5169, %5057 ]
  %5197 = phi float [ %5193, %5171 ], [ %5170, %5057 ]
  %5198 = fmul fast float %5085, 9.843750e-01
  %5199 = fadd fast float %5198, 7.812500e-03
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5199, float %4517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 2
  %5202 = extractvalue %dx.types.ResRet.f32 %5200, 3
  %5203 = fmul fast float %5201, %4395
  %5204 = fmul fast float %5201, %4396
  %5205 = fmul fast float %5201, %4400
  %5206 = fadd fast float %5203, %5202
  %5207 = fadd fast float %5204, %5202
  %5208 = fadd fast float %5205, %5202
  br i1 %4527, label %5209, label %5232

; <label>:5209                                    ; preds = %5194
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3787, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = fadd fast float %5211, -5.000000e-01
  %5215 = fadd fast float %5212, -5.000000e-01
  %5216 = fadd fast float %5213, -5.000000e-01
  %5217 = fmul fast float %4395, 4.000000e+00
  %5218 = fmul fast float %5217, %5162
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %4396, 4.000000e+00
  %5221 = fmul fast float %5220, %5163
  %5222 = fmul fast float %5221, %5215
  %5223 = fmul fast float %4400, 4.000000e+00
  %5224 = fmul fast float %5223, %5164
  %5225 = fmul fast float %5224, %5216
  %5226 = fadd fast float %5219, %5206
  %5227 = fadd fast float %5222, %5207
  %5228 = fadd fast float %5225, %5208
  %5229 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5230 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  br label %5232

; <label>:5232                                    ; preds = %5209, %5194
  %5233 = phi float [ %5229, %5209 ], [ %5206, %5194 ]
  %5234 = phi float [ %5230, %5209 ], [ %5207, %5194 ]
  %5235 = phi float [ %5231, %5209 ], [ %5208, %5194 ]
  %5236 = call float @dx.op.binary.f32(i32 35, float %5234, float %5235)  ; FMax(a,b)
  %5237 = call float @dx.op.binary.f32(i32 35, float %5233, float %5236)  ; FMax(a,b)
  %5238 = fsub fast float 1.000000e+00, %5237
  %5239 = fmul fast float %5195, %5153
  %5240 = fmul fast float %5196, %5153
  %5241 = fmul fast float %5197, %5153
  %5242 = fsub fast float 1.000000e+00, %5086
  %5243 = bitcast float %5242 to i32
  %5244 = sitofp i32 %5243 to float
  %5245 = fmul fast float %5244, 5.000000e+00
  %5246 = fadd fast float %5245, 0xC1EFBF8940000000
  %5247 = fptosi float %5246 to i32
  %5248 = bitcast i32 %5247 to float
  %5249 = fmul fast float %5248, %3788
  %5250 = fmul fast float %5238, %5249
  %5251 = fmul fast float %5250, %4577
  %5252 = fmul fast float %5250, %4578
  %5253 = fmul fast float %5250, %4579
  %5254 = fadd fast float %5251, %5239
  %5255 = fadd fast float %5252, %5240
  %5256 = fadd fast float %5253, %5241
  %5257 = fmul fast float %5074, %3784
  %5258 = fmul fast float %5257, %5092
  %5259 = fmul fast float %5258, %5238
  %5260 = fmul fast float %5075, %3784
  %5261 = fmul fast float %5260, %5092
  %5262 = fmul fast float %5261, %5238
  %5263 = fmul fast float %5076, %3784
  %5264 = fmul fast float %5263, %5092
  %5265 = fmul fast float %5264, %5238
  %5266 = fadd fast float %5259, %4913
  %5267 = fadd fast float %5262, %4914
  %5268 = fadd fast float %5265, %4915
  %5269 = fmul fast float %5258, %5254
  %5270 = fmul fast float %5261, %5255
  %5271 = fmul fast float %5264, %5256
  %5272 = fadd fast float %5269, %4910
  %5273 = fadd fast float %5270, %4911
  %5274 = fadd fast float %5271, %4912
  br label %4988

; <label>:5275                                    ; preds = %4988
  br label %5276

; <label>:5276                                    ; preds = %5275, %4876
  %5277 = phi float [ %4878, %4876 ], [ %4989, %5275 ]
  %5278 = phi float [ %4879, %4876 ], [ %4990, %5275 ]
  %5279 = phi float [ %4880, %4876 ], [ %4991, %5275 ]
  %5280 = phi float [ %4881, %4876 ], [ %4992, %5275 ]
  %5281 = phi float [ %4882, %4876 ], [ %4993, %5275 ]
  %5282 = phi float [ %4883, %4876 ], [ %4994, %5275 ]
  %5283 = add i32 %4877, 1
  %5284 = icmp ugt i32 %5283, %4873
  br i1 %5284, label %5285, label %4876

; <label>:5285                                    ; preds = %5276
  br label %5286

; <label>:5286                                    ; preds = %5285, %4852, %4842
  %5287 = phi float [ %4843, %4842 ], [ %4843, %4852 ], [ %5277, %5285 ]
  %5288 = phi float [ %4844, %4842 ], [ %4844, %4852 ], [ %5278, %5285 ]
  %5289 = phi float [ %4845, %4842 ], [ %4845, %4852 ], [ %5279, %5285 ]
  %5290 = phi float [ %4846, %4842 ], [ %4846, %4852 ], [ %5280, %5285 ]
  %5291 = phi float [ %4847, %4842 ], [ %4847, %4852 ], [ %5281, %5285 ]
  %5292 = phi float [ %4848, %4842 ], [ %4848, %4852 ], [ %5282, %5285 ]
  %5293 = call float @dx.op.unary.f32(i32 24, float %4389)  ; Sqrt(value)
  %5294 = call float @dx.op.unary.f32(i32 24, float %4390)  ; Sqrt(value)
  %5295 = call float @dx.op.unary.f32(i32 24, float %4391)  ; Sqrt(value)
  %5296 = fmul fast float %5293, %5290
  %5297 = fmul fast float %5294, %5291
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  br i1 %179, label %5300, label %5320

; <label>:5300                                    ; preds = %5286
  %5301 = fadd fast float %5292, %3790
  %5302 = fmul fast float %5301, %3791
  %5303 = fsub fast float 1.000000e+00, %3791
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5307 = fmul fast float %5306, %5304
  %5308 = fadd fast float %5307, %5302
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = fmul fast float %5310, %4583
  %5312 = fsub fast float %5308, %5311
  %5313 = fadd fast float %5297, %5296
  %5314 = fmul fast float %5299, %5313
  %5315 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5316 = fsub fast float %5312, %5315
  %5317 = extractvalue %dx.types.CBufRet.f32 %5305, 2
  %5318 = fmul fast float %5316, %5317
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  br label %5336

; <label>:5320                                    ; preds = %5286
  %5321 = fmul fast float %5295, %5292
  %5322 = fmul fast float %5299, %5296
  %5323 = fmul fast float %5299, %5297
  %5324 = fmul fast float %5321, %5299
  %5325 = add i32 %39, 356
  %5326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.i32 %5326, 0
  %5328 = and i32 %5327, 32
  %5329 = icmp eq i32 %5328, 0
  br i1 %5329, label %5336, label %5330

; <label>:5330                                    ; preds = %5320
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = fmul fast float %5332, 0x3FE99999A0000000
  %5334 = fadd fast float %5332, %5322
  %5335 = fadd fast float %5333, %5324
  br label %5336

; <label>:5336                                    ; preds = %5330, %5320, %5300
  %5337 = phi float [ %5314, %5300 ], [ %5334, %5330 ], [ %5322, %5320 ]
  %5338 = phi float [ %5319, %5300 ], [ %5323, %5330 ], [ %5323, %5320 ]
  %5339 = phi float [ 1.000000e+00, %5300 ], [ %5335, %5330 ], [ %5324, %5320 ]
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = fmul fast float %5341, %5288
  %5343 = fmul fast float %5341, %5289
  %5344 = fadd fast float %5288, %5287
  %5345 = select i1 %179, float %5344, float %5287
  %5346 = fmul float %5345, %5341
  %5347 = select i1 %179, float 0.000000e+00, float %5342
  %5348 = select i1 %179, float 0.000000e+00, float %5343
  %5349 = fmul fast float %5337, %5293
  %5350 = fmul fast float %5338, %5294
  %5351 = fmul fast float %5339, %5295
  %5352 = fadd fast float %5346, %5349
  %5353 = fadd fast float %5347, %5350
  %5354 = fadd fast float %5348, %5351
  %5355 = select i1 %179, float %5338, float %5353
  %5356 = select i1 %179, float %5339, float %5354
  %5357 = call float @dx.op.binary.f32(i32 36, float %5352, float 3.225500e+04)  ; FMin(a,b)
  %5358 = call float @dx.op.binary.f32(i32 36, float %5355, float 3.225500e+04)  ; FMin(a,b)
  %5359 = call float @dx.op.binary.f32(i32 36, float %5356, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5357)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{!44, !45, !46}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{i32 2, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !77}
!55 = !{!56, !75, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!61 = !{i32 3, i32 14}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 5, i8 0, !65}
!69 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!70 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 7, i8 0, !63}
!71 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!72 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 9, i8 0, !73}
!73 = !{i32 3, i32 13}
!74 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}

