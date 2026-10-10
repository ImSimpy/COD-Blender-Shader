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
; shader hash: e8b033c48b39bbd1fd738f35a40cf3d8
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
  %314 = add i32 %39, 504
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
  %472 = add i32 %39, 392
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
  %495 = add i32 %39, 472
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
  %693 = add i32 %39, 408
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
  %1019 = add i32 %39, 460
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
  %1071 = add i32 %39, 444
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
  %1097 = add i32 %39, 396
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
  %1120 = add i32 %39, 476
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
  %1318 = add i32 %39, 412
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
  %1802 = add i32 %39, 464
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
  %1854 = add i32 %39, 448
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
  %1880 = add i32 %39, 400
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
  %1903 = add i32 %39, 480
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
  %2101 = add i32 %39, 416
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
  %2585 = add i32 %39, 468
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
  %2637 = add i32 %39, 452
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
  %2663 = add i32 %39, 404
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
  %2686 = add i32 %39, 484
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
  %2884 = add i32 %39, 420
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
  %3139 = add i32 %39, 360
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = bitcast i32 %3141 to float
  %3143 = fcmp fast oge float %3142, 0.000000e+00
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = select i1 %3143, float %3142, float %3145
  %3147 = call float @dx.op.unary.f32(i32 22, float %62)  ; Frc(value)
  %3148 = call float @dx.op.unary.f32(i32 22, float %63)  ; Frc(value)
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 0
  %3151 = fcmp fast ogt float %3150, 5.000000e-01
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3152, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3157 = fmul fast float %3153, %3147
  %3158 = fmul fast float %3154, %3148
  %3159 = fmul fast float %3155, %3147
  %3160 = fmul fast float %3156, %3148
  %3161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  br i1 %3151, label %3163, label %3167

; <label>:3163                                    ; preds = %3129
  %3164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  br label %3172

; <label>:3167                                    ; preds = %3129
  %3168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  br label %3172

; <label>:3172                                    ; preds = %3167, %3163
  %3173 = phi float [ %3165, %3163 ], [ %3169, %3167 ]
  %3174 = phi float [ %3166, %3163 ], [ %3171, %3167 ]
  %3175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3176 = extractvalue %dx.types.CBufRet.f32 %3175, 0
  %3177 = extractvalue %dx.types.CBufRet.f32 %3175, 1
  %3178 = extractvalue %dx.types.CBufRet.f32 %3175, 2
  %3179 = extractvalue %dx.types.CBufRet.f32 %3175, 3
  %3180 = call float @dx.op.dot4.f32(i32 56, float %3176, float %3177, float %3178, float %3179, float %3162, float %3173, float %3174, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3183 = extractvalue %dx.types.CBufRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.CBufRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.CBufRet.f32 %3182, 2
  %3186 = extractvalue %dx.types.CBufRet.f32 %3182, 3
  %3187 = call float @dx.op.dot4.f32(i32 56, float %3183, float %3184, float %3185, float %3186, float %3162, float %3173, float %3174, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3190 = extractvalue %dx.types.CBufRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.CBufRet.f32 %3189, 1
  %3192 = extractvalue %dx.types.CBufRet.f32 %3189, 2
  %3193 = extractvalue %dx.types.CBufRet.f32 %3189, 3
  %3194 = call float @dx.op.dot4.f32(i32 56, float %3190, float %3191, float %3192, float %3193, float %3162, float %3173, float %3174, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %34, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = fcmp fast ole float %3181, 0x3FA4B5DCC0000000
  %3199 = fmul fast float %3181, 0x3FB3D07220000000
  %3200 = fadd fast float %3181, 0x3FAC28F5C0000000
  %3201 = fmul fast float %3200, 0x3FEE54EDE0000000
  %3202 = call float @dx.op.unary.f32(i32 23, float %3201)  ; Log(value)
  %3203 = fmul fast float %3202, 0x4003333340000000
  %3204 = call float @dx.op.unary.f32(i32 21, float %3203)  ; Exp(value)
  %3205 = select i1 %3198, float %3199, float %3204
  %3206 = fcmp fast ole float %3188, 0x3FA4B5DCC0000000
  %3207 = fmul fast float %3188, 0x3FB3D07220000000
  %3208 = fadd fast float %3188, 0x3FAC28F5C0000000
  %3209 = fmul fast float %3208, 0x3FEE54EDE0000000
  %3210 = call float @dx.op.unary.f32(i32 23, float %3209)  ; Log(value)
  %3211 = fmul fast float %3210, 0x4003333340000000
  %3212 = call float @dx.op.unary.f32(i32 21, float %3211)  ; Exp(value)
  %3213 = select i1 %3206, float %3207, float %3212
  %3214 = fcmp fast ole float %3195, 0x3FA4B5DCC0000000
  %3215 = fmul fast float %3195, 0x3FB3D07220000000
  %3216 = fadd fast float %3195, 0x3FAC28F5C0000000
  %3217 = fmul fast float %3216, 0x3FEE54EDE0000000
  %3218 = call float @dx.op.unary.f32(i32 23, float %3217)  ; Log(value)
  %3219 = fmul fast float %3218, 0x4003333340000000
  %3220 = call float @dx.op.unary.f32(i32 21, float %3219)  ; Exp(value)
  %3221 = select i1 %3214, float %3215, float %3220
  %3222 = fmul fast float %3205, %3197
  %3223 = fmul fast float %3213, %3197
  %3224 = fmul fast float %3221, %3197
  %3225 = add i32 %39, 376
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.i32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.i32 %3226, 2
  %3230 = bitcast i32 %3227 to float
  %3231 = bitcast i32 %3228 to float
  %3232 = bitcast i32 %3229 to float
  %3233 = fmul fast float %3222, %3230
  %3234 = fmul fast float %3223, %3231
  %3235 = fmul fast float %3224, %3232
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = fmul fast float %3233, %3237
  %3239 = fmul fast float %3234, %3237
  %3240 = fmul fast float %3235, %3237
  %3241 = call float @dx.op.dot2.f32(i32 54, float %3130, float %3131, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3242 = fmul fast float %3241, 0x3FE3333340000000
  %3243 = fsub fast float 1.000000e+00, %3242
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3243, float %3130, float %3131, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.unary.f32(i32 25, float %3244)  ; Rsqrt(value)
  %3246 = fmul fast float %3245, %3130
  %3247 = fmul fast float %3245, %3131
  %3248 = fmul fast float %3243, %3245
  %3249 = fmul fast float %3248, %81
  %3250 = fmul fast float %3248, %82
  %3251 = fmul fast float %3248, %83
  %3252 = fmul fast float %3246, %55
  %3253 = fmul fast float %3246, %56
  %3254 = fmul fast float %3246, %57
  %3255 = fadd fast float %3249, %3252
  %3256 = fadd fast float %3250, %3253
  %3257 = fadd fast float %3251, %3254
  %3258 = fmul fast float %93, %3247
  %3259 = fmul fast float %94, %3247
  %3260 = fmul fast float %95, %3247
  %3261 = fadd fast float %3255, %3258
  %3262 = fadd fast float %3256, %3259
  %3263 = fadd fast float %3257, %3260
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %3261, float %3262, float %3263)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = call float @dx.op.unary.f32(i32 25, float %3264)  ; Rsqrt(value)
  %3266 = fmul fast float %3261, %3265
  %3267 = fmul fast float %3262, %3265
  %3268 = fmul fast float %3263, %3265
  %3269 = and i32 %41, 1
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3271, label %3779

; <label>:3271                                    ; preds = %3172
  %3272 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %3273 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %3274 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %3275 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %3276 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %3277 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %3278 = fadd fast float %3272, %137
  %3279 = fadd fast float %3273, %138
  %3280 = fadd fast float %3274, %139
  %3281 = fadd fast float %3275, %137
  %3282 = fadd fast float %3276, %138
  %3283 = fadd fast float %3277, %139
  %3284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3285 = extractvalue %dx.types.CBufRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.CBufRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.CBufRet.f32 %3284, 2
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 2
  %3290 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3291 = fmul fast float %3285, %74
  %3292 = fmul fast float %3291, %3289
  %3293 = fmul fast float %3286, %75
  %3294 = fmul fast float %3293, %3290
  %3295 = fptoui float %3292 to i32
  %3296 = fptoui float %3294 to i32
  %3297 = fadd fast float %3285, -1.000000e+00
  %3298 = fadd fast float %3286, -1.000000e+00
  %3299 = fptoui float %3297 to i32
  %3300 = fptoui float %3298 to i32
  %3301 = call i32 @dx.op.binary.i32(i32 40, i32 %3295, i32 %3299)  ; UMin(a,b)
  %3302 = call i32 @dx.op.binary.i32(i32 40, i32 %3296, i32 %3300)  ; UMin(a,b)
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 2
  %3305 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3306 = fmul fast float %3304, %69
  %3307 = fsub fast float %3306, %3305
  %3308 = fadd fast float %3287, -1.000000e+00
  %3309 = call float @dx.op.binary.f32(i32 36, float %3307, float %3308)  ; FMin(a,b)
  %3310 = fptoui float %3309 to i32
  %3311 = fptoui float %3285 to i32
  %3312 = fptoui float %3286 to i32
  %3313 = mul i32 %3310, %3312
  %3314 = add i32 %3313, %3302
  %3315 = mul i32 %3314, %3311
  %3316 = add i32 %3315, %3301
  %3317 = shl i32 %3316, 2
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, 1023
  %3321 = lshr i32 %3319, 10
  %3322 = icmp eq i32 %3320, 0
  br i1 %3322, label %3748, label %3323

; <label>:3323                                    ; preds = %3271
  %3324 = and i32 %3319, 1023
  br label %3325

; <label>:3325                                    ; preds = %3451, %3323
  %3326 = phi i32 [ %3401, %3451 ], [ 0, %3323 ]
  %3327 = phi float [ %3452, %3451 ], [ 0.000000e+00, %3323 ]
  %3328 = phi float [ %3453, %3451 ], [ %3146, %3323 ]
  %3329 = phi float [ %3454, %3451 ], [ %3138, %3323 ]
  %3330 = phi float [ %3455, %3451 ], [ 0.000000e+00, %3323 ]
  %3331 = phi float [ %3456, %3451 ], [ 0.000000e+00, %3323 ]
  %3332 = phi float [ %3457, %3451 ], [ %3238, %3323 ]
  %3333 = phi float [ %3458, %3451 ], [ %3239, %3323 ]
  %3334 = phi float [ %3459, %3451 ], [ %3240, %3323 ]
  %3335 = phi float [ %3460, %3451 ], [ %3266, %3323 ]
  %3336 = phi float [ %3461, %3451 ], [ %3267, %3323 ]
  %3337 = phi float [ %3462, %3451 ], [ %3268, %3323 ]
  %3338 = phi float [ %3463, %3451 ], [ %3137, %3323 ]
  %3339 = phi float [ %3464, %3451 ], [ %3136, %3323 ]
  %3340 = phi float [ %3465, %3451 ], [ 0.000000e+00, %3323 ]
  %3341 = phi float [ %3466, %3451 ], [ %3135, %3323 ]
  %3342 = phi float [ %3467, %3451 ], [ %3132, %3323 ]
  %3343 = phi float [ %3468, %3451 ], [ %3133, %3323 ]
  %3344 = phi float [ %3469, %3451 ], [ %3134, %3323 ]
  %3345 = add nuw nsw i32 %3326, %3321
  %3346 = shl i32 %3345, 2
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = shl i32 %3348, 8
  %3350 = or i32 %3349, 48
  %3351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.ResRet.f32 %3351, 3
  %3356 = or i32 %3349, 64
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.i32 %3357, 1
  %3360 = or i32 %3349, 80
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 3
  %3364 = or i32 %3349, 96
  %3365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.ResRet.f32 %3365, 1
  %3368 = extractvalue %dx.types.ResRet.f32 %3365, 2
  %3369 = extractvalue %dx.types.ResRet.f32 %3365, 3
  %3370 = or i32 %3349, 112
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3373 = or i32 %3349, 128
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.ResRet.f32 %3374, 3
  %3379 = or i32 %3349, 144
  %3380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = extractvalue %dx.types.ResRet.f32 %3380, 1
  %3383 = extractvalue %dx.types.ResRet.f32 %3380, 2
  %3384 = extractvalue %dx.types.ResRet.f32 %3380, 3
  %3385 = or i32 %3349, 160
  %3386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = or i32 %3349, 192
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = or i32 %3349, 208
  %3395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = or i32 %3349, 248
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = add nuw nsw i32 %3326, 1
  %3402 = bitcast float %3355 to i32
  %3403 = and i32 %3402, 512
  %3404 = icmp eq i32 %3403, 0
  %3405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3405, 3
  %3410 = call float @dx.op.dot4.f32(i32 56, float %3406, float %3407, float %3408, float %3409, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3411 = or i32 %3349, 16
  %3412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = extractvalue %dx.types.ResRet.f32 %3412, 1
  %3415 = extractvalue %dx.types.ResRet.f32 %3412, 2
  %3416 = extractvalue %dx.types.ResRet.f32 %3412, 3
  %3417 = call float @dx.op.dot4.f32(i32 56, float %3413, float %3414, float %3415, float %3416, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3418 = or i32 %3349, 32
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3424 = call float @dx.op.dot4.f32(i32 56, float %3420, float %3421, float %3422, float %3423, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3425 = call float @dx.op.unary.f32(i32 27, float %3410)  ; Round_ni(value)
  %3426 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3427 = call float @dx.op.unary.f32(i32 27, float %3417)  ; Round_ni(value)
  %3428 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3429 = call float @dx.op.unary.f32(i32 6, float %3424)  ; FAbs(value)
  %3430 = call float @dx.op.unary.f32(i32 27, float %3429)  ; Round_ni(value)
  %3431 = fadd fast float %3428, %3426
  %3432 = fadd fast float %3431, %3430
  %3433 = fcmp fast oeq float %3432, 0.000000e+00
  %3434 = call float @dx.op.dot4.f32(i32 56, float %3406, float %3407, float %3408, float %3409, float %3278, float %3279, float %3280, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3435 = call float @dx.op.dot4.f32(i32 56, float %3413, float %3414, float %3415, float %3416, float %3278, float %3279, float %3280, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3436 = call float @dx.op.dot4.f32(i32 56, float %3406, float %3407, float %3408, float %3409, float %3281, float %3282, float %3283, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3437 = call float @dx.op.dot4.f32(i32 56, float %3413, float %3414, float %3415, float %3416, float %3281, float %3282, float %3283, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3438 = fsub fast float %3434, %3410
  %3439 = fsub fast float %3436, %3410
  %3440 = fsub fast float %3435, %3417
  %3441 = fsub fast float %3437, %3417
  %3442 = call float @dx.op.dot3.f32(i32 55, float %3352, float %3353, float %3354, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 2
  %3445 = fadd fast float %3444, %3442
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3448 = fcmp fast ogt float %3446, %3447
  %3449 = and i1 %3433, %3448
  %3450 = and i1 %3404, %3449
  br i1 %3450, label %3471, label %3451

; <label>:3451                                    ; preds = %3734, %3552, %3471, %3325
  %3452 = phi float [ %3327, %3471 ], [ %3555, %3552 ], [ %3555, %3734 ], [ %3327, %3325 ]
  %3453 = phi float [ %3328, %3471 ], [ %3328, %3552 ], [ %3709, %3734 ], [ %3328, %3325 ]
  %3454 = phi float [ %3329, %3471 ], [ %3329, %3552 ], [ %3707, %3734 ], [ %3329, %3325 ]
  %3455 = phi float [ %3330, %3471 ], [ %3330, %3552 ], [ %3679, %3734 ], [ %3330, %3325 ]
  %3456 = phi float [ %3331, %3471 ], [ %3331, %3552 ], [ %3677, %3734 ], [ %3331, %3325 ]
  %3457 = phi float [ %3332, %3471 ], [ %3332, %3552 ], [ %3744, %3734 ], [ %3332, %3325 ]
  %3458 = phi float [ %3333, %3471 ], [ %3333, %3552 ], [ %3745, %3734 ], [ %3333, %3325 ]
  %3459 = phi float [ %3334, %3471 ], [ %3334, %3552 ], [ %3746, %3734 ], [ %3334, %3325 ]
  %3460 = phi float [ %3335, %3471 ], [ %3335, %3552 ], [ %3658, %3734 ], [ %3335, %3325 ]
  %3461 = phi float [ %3336, %3471 ], [ %3336, %3552 ], [ %3659, %3734 ], [ %3336, %3325 ]
  %3462 = phi float [ %3337, %3471 ], [ %3337, %3552 ], [ %3660, %3734 ], [ %3337, %3325 ]
  %3463 = phi float [ %3338, %3471 ], [ %3338, %3552 ], [ %3687, %3734 ], [ %3338, %3325 ]
  %3464 = phi float [ %3339, %3471 ], [ %3339, %3552 ], [ %3684, %3734 ], [ %3339, %3325 ]
  %3465 = phi float [ %3340, %3471 ], [ %3340, %3552 ], [ %3681, %3734 ], [ %3340, %3325 ]
  %3466 = phi float [ %3341, %3471 ], [ %3341, %3552 ], [ %3675, %3734 ], [ %3341, %3325 ]
  %3467 = phi float [ %3342, %3471 ], [ %3342, %3552 ], [ %3670, %3734 ], [ %3342, %3325 ]
  %3468 = phi float [ %3343, %3471 ], [ %3343, %3552 ], [ %3671, %3734 ], [ %3343, %3325 ]
  %3469 = phi float [ %3344, %3471 ], [ %3344, %3552 ], [ %3672, %3734 ], [ %3344, %3325 ]
  %3470 = icmp eq i32 %3401, %3324
  br i1 %3470, label %3747, label %3325

; <label>:3471                                    ; preds = %3325
  %3472 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3473 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3477 = extractvalue %dx.types.ResRet.i32 %3357, 3
  %3478 = extractvalue %dx.types.ResRet.i32 %3357, 2
  %3479 = add i32 %3477, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3479, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3480, %dx.types.Handle %3481, float %3410, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float %3438, float %3440, float undef, float %3439, float %3441, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %3476
  %3485 = fadd fast float %3484, %3475
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = fmul fast float %3410, %3366
  %3488 = call float @dx.op.tertiary.f32(i32 46, float %3367, float %3417, float %3487)  ; FMad(a,b,c)
  %3489 = fadd fast float %3488, %3474
  %3490 = fmul fast float %3410, %3368
  %3491 = call float @dx.op.tertiary.f32(i32 46, float %3369, float %3417, float %3490)  ; FMad(a,b,c)
  %3492 = fadd fast float %3491, %3473
  %3493 = fmul fast float %3438, %3366
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3367, float %3440, float %3493)  ; FMad(a,b,c)
  %3495 = fmul fast float %3438, %3368
  %3496 = call float @dx.op.tertiary.f32(i32 46, float %3369, float %3440, float %3495)  ; FMad(a,b,c)
  %3497 = fmul fast float %3439, %3366
  %3498 = call float @dx.op.tertiary.f32(i32 46, float %3367, float %3441, float %3497)  ; FMad(a,b,c)
  %3499 = fmul fast float %3439, %3368
  %3500 = call float @dx.op.tertiary.f32(i32 46, float %3369, float %3441, float %3499)  ; FMad(a,b,c)
  %3501 = add i32 %3478, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3501, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3502, %dx.types.Handle %3481, float %3489, float %3492, float undef, float undef, i32 0, i32 0, i32 undef, float %3494, float %3496, float undef, float %3498, float %3500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = and i32 %3402, 1024
  %3506 = icmp ne i32 %3505, 0
  %3507 = fcmp fast ogt float %3504, 0x3FE0101020000000
  %3508 = uitofp i1 %3507 to float
  %3509 = select i1 %3506, float %3508, float %3504
  %3510 = and i32 %3402, 8192
  %3511 = icmp ne i32 %3510, 0
  %3512 = select i1 %3511, float %3472, float 1.000000e+00
  %3513 = fmul fast float %3410, 2.000000e+00
  %3514 = fadd fast float %3513, -1.000000e+00
  %3515 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3516 = fmul fast float %3515, %3399
  %3517 = fsub fast float %3516, %3399
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = fmul fast float %3417, 2.000000e+00
  %3520 = fadd fast float %3519, -1.000000e+00
  %3521 = call float @dx.op.unary.f32(i32 6, float %3520)  ; FAbs(value)
  %3522 = fmul fast float %3521, %3400
  %3523 = fsub fast float %3522, %3400
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = fmul fast float %3429, %3362
  %3526 = fsub fast float %3525, %3362
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = fmul fast float %3486, %3512
  %3529 = fmul fast float %3528, %3483
  %3530 = fmul fast float %3529, %3518
  %3531 = fmul fast float %3530, %3509
  %3532 = fmul fast float %3531, %3524
  %3533 = fmul fast float %3532, %3527
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3537 = fsub fast float %3446, %3536
  %3538 = fmul fast float %3537, %3535
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3540 = fmul fast float %3533, %3363
  %3541 = fadd fast float %3533, %3363
  %3542 = fmul fast float %3541, %3372
  %3543 = fsub fast float %3542, %3372
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3545 = and i32 %3402, 128
  %3546 = icmp ne i32 %3545, 0
  %3547 = select i1 %3546, float %3544, float %3540
  %3548 = fmul fast float %3547, %3539
  %3549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.f32 %3549, 0
  %3551 = fcmp fast ugt float %3548, %3550
  br i1 %3551, label %3552, label %3451

; <label>:3552                                    ; preds = %3471
  %3553 = select i1 %3511, float %3548, float 0.000000e+00
  %3554 = fadd fast float %3553, %3327
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  br i1 %3511, label %3451, label %3556

; <label>:3556                                    ; preds = %3552
  %3557 = and i32 %3402, 4
  %3558 = and i32 %3402, 8
  %3559 = add i32 %3358, 0
  %3560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3559, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3562 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3560, %dx.types.Handle %3561, float %3489, float %3492, float undef, float undef, i32 0, i32 0, i32 undef, float %3494, float %3496, float undef, float %3498, float %3500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = extractvalue %dx.types.ResRet.f32 %3562, 3
  %3567 = bitcast float %3384 to i32
  %3568 = and i32 %3567, 255
  %3569 = uitofp i32 %3568 to float
  %3570 = lshr i32 %3567, 8
  %3571 = and i32 %3570, 255
  %3572 = uitofp i32 %3571 to float
  %3573 = fmul fast float %3566, %3569
  %3574 = fadd fast float %3573, %3572
  %3575 = fmul fast float %3574, 0x3F70101000000000
  %3576 = add i32 %3359, 0
  %3577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3578 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3577, %dx.types.Handle %3561, float %3489, float %3492, float undef, float undef, i32 0, i32 0, i32 undef, float %3494, float %3496, float undef, float %3498, float %3500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = bitcast float %3378 to i32
  %3584 = and i32 %3583, 255
  %3585 = uitofp i32 %3584 to float
  %3586 = lshr i32 %3583, 8
  %3587 = and i32 %3586, 255
  %3588 = uitofp i32 %3587 to float
  %3589 = lshr i32 %3583, 16
  %3590 = and i32 %3589, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = fmul fast float %3591, 0x3F70101000000000
  %3593 = fmul fast float %3579, %3585
  %3594 = fadd fast float %3593, %3588
  %3595 = fmul fast float %3594, 0x3F70101000000000
  %3596 = fadd fast float %3580, -5.000000e-01
  %3597 = fadd fast float %3582, -5.000000e-01
  %3598 = fmul fast float %3596, %3592
  %3599 = fmul fast float %3597, %3592
  %3600 = fadd fast float %3598, 5.000000e-01
  %3601 = fadd fast float %3599, 5.000000e-01
  %3602 = fmul fast float %3563, %3387
  %3603 = fmul fast float %3564, %3388
  %3604 = fmul fast float %3565, %3389
  %3605 = fmul fast float %3600, 2.000000e+00
  %3606 = fadd fast float %3605, -1.000000e+00
  %3607 = fmul fast float %3601, 2.000000e+00
  %3608 = fadd fast float %3607, -1.000000e+00
  %3609 = fadd fast float %3606, %3608
  %3610 = fmul fast float %3609, 5.000000e-01
  %3611 = fsub fast float %3606, %3608
  %3612 = fmul fast float %3611, 5.000000e-01
  %3613 = call float @dx.op.unary.f32(i32 6, float %3610)  ; FAbs(value)
  %3614 = fsub fast float 1.000000e+00, %3613
  %3615 = call float @dx.op.unary.f32(i32 6, float %3612)  ; FAbs(value)
  %3616 = fsub fast float %3614, %3615
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3612, float %3616, float %3610, float %3612, float %3616)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = call float @dx.op.unary.f32(i32 25, float %3617)  ; Rsqrt(value)
  %3619 = fmul fast float %3610, %3618
  %3620 = fmul fast float %3612, %3618
  %3621 = fmul fast float %3618, %3616
  %3622 = fmul fast float %3621, %3352
  %3623 = fmul fast float %3621, %3353
  %3624 = fmul fast float %3621, %3354
  %3625 = fmul fast float %3619, %3375
  %3626 = fmul fast float %3619, %3376
  %3627 = fmul fast float %3619, %3377
  %3628 = fadd fast float %3625, %3622
  %3629 = fadd fast float %3626, %3623
  %3630 = fadd fast float %3627, %3624
  %3631 = fmul fast float %3620, %3381
  %3632 = fmul fast float %3620, %3382
  %3633 = fmul fast float %3620, %3383
  %3634 = fadd fast float %3628, %3631
  %3635 = fadd fast float %3629, %3632
  %3636 = fadd fast float %3630, %3633
  %3637 = call float @dx.op.dot3.f32(i32 55, float %3634, float %3635, float %3636, float %3634, float %3635, float %3636)  ; Dot3(ax,ay,az,bx,by,bz)
  %3638 = call float @dx.op.unary.f32(i32 25, float %3637)  ; Rsqrt(value)
  %3639 = fmul fast float %3634, %3638
  %3640 = fmul fast float %3635, %3638
  %3641 = fmul fast float %3636, %3638
  %3642 = icmp ne i32 %3558, 0
  %3643 = select i1 %3642, float 1.000000e+00, float 0.000000e+00
  %3644 = fmul fast float %3548, %3643
  %3645 = and i32 %3402, 1
  %3646 = icmp eq i32 %3645, 0
  br i1 %3646, label %3647, label %3651

; <label>:3647                                    ; preds = %3556
  %3648 = fsub fast float %3639, %3335
  %3649 = fsub fast float %3640, %3336
  %3650 = fsub fast float %3641, %3337
  br label %3651

; <label>:3651                                    ; preds = %3647, %3556
  %3652 = phi float [ %3648, %3647 ], [ %3639, %3556 ]
  %3653 = phi float [ %3649, %3647 ], [ %3640, %3556 ]
  %3654 = phi float [ %3650, %3647 ], [ %3641, %3556 ]
  %3655 = fmul float %3654, %3644
  %3656 = fmul float %3653, %3644
  %3657 = fmul float %3652, %3644
  %3658 = fadd fast float %3657, %3335
  %3659 = fadd fast float %3656, %3336
  %3660 = fadd fast float %3655, %3337
  %3661 = icmp ne i32 %3557, 0
  %3662 = select i1 %3661, float 1.000000e+00, float 0.000000e+00
  %3663 = fmul fast float %3548, %3662
  %3664 = fsub fast float %3602, %3342
  %3665 = fsub fast float %3603, %3343
  %3666 = fsub fast float %3604, %3344
  %3667 = fmul fast float %3664, %3663
  %3668 = fmul fast float %3665, %3663
  %3669 = fmul fast float %3666, %3663
  %3670 = fadd fast float %3667, %3342
  %3671 = fadd fast float %3668, %3343
  %3672 = fadd fast float %3669, %3344
  %3673 = fsub fast float %3575, %3341
  %3674 = fmul fast float %3673, %3663
  %3675 = fadd fast float %3674, %3341
  %3676 = fmul fast float %3663, %3331
  %3677 = fsub fast float %3331, %3676
  %3678 = fmul fast float %3663, %3330
  %3679 = fsub fast float %3330, %3678
  %3680 = fadd fast float %3548, %3340
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = fsub fast float %3595, %3339
  %3683 = fmul fast float %3682, %3644
  %3684 = fadd fast float %3683, %3339
  %3685 = fsub fast float %3581, %3338
  %3686 = fmul fast float %3685, %3644
  %3687 = fadd fast float %3686, %3338
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3692 = fmul fast float %3691, %3688
  %3693 = fadd fast float %3692, %3690
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = bitcast float %3390 to i32
  %3696 = and i32 %3695, 65535
  %3697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3696)  ; LegacyF16ToF32(value)
  %3698 = lshr i32 %3695, 16
  %3699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3698)  ; LegacyF16ToF32(value)
  %3700 = fcmp fast oge float %3697, 0.000000e+00
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 0
  %3703 = select i1 %3700, float %3697, float %3702
  %3704 = fadd fast float %3703, %3699
  %3705 = fsub fast float %3694, %3329
  %3706 = fmul fast float %3705, %3548
  %3707 = fadd fast float %3706, %3329
  %3708 = fmul fast float %3704, %3548
  %3709 = call float @dx.op.binary.f32(i32 35, float %3328, float %3708)  ; FMax(a,b)
  %3710 = and i32 %3402, 16
  %3711 = icmp eq i32 %3710, 0
  br i1 %3711, label %3734, label %3712

; <label>:3712                                    ; preds = %3651
  %3713 = bitcast float %3396 to i32
  %3714 = add i32 %3393, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3715, %dx.types.Handle %3561, float %3489, float %3492, float undef, float undef, i32 0, i32 0, i32 undef, float %3494, float %3496, float undef, float %3498, float %3500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = and i32 %3713, 65535
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = fmul fast float %3717, %3387
  %3723 = fmul fast float %3718, %3388
  %3724 = fmul fast float %3719, %3389
  %3725 = and i32 %3402, 16384
  %3726 = icmp ne i32 %3725, 0
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = select i1 %3726, float %3728, float 1.000000e+00
  %3730 = fmul fast float %3729, %3721
  %3731 = fmul fast float %3722, %3730
  %3732 = fmul fast float %3723, %3730
  %3733 = fmul fast float %3724, %3730
  br label %3734

; <label>:3734                                    ; preds = %3712, %3651
  %3735 = phi float [ %3731, %3712 ], [ 0.000000e+00, %3651 ]
  %3736 = phi float [ %3732, %3712 ], [ 0.000000e+00, %3651 ]
  %3737 = phi float [ %3733, %3712 ], [ 0.000000e+00, %3651 ]
  %3738 = fsub fast float %3735, %3332
  %3739 = fsub fast float %3736, %3333
  %3740 = fsub fast float %3737, %3334
  %3741 = fmul fast float %3738, %3548
  %3742 = fmul fast float %3739, %3548
  %3743 = fmul fast float %3740, %3548
  %3744 = fadd fast float %3741, %3332
  %3745 = fadd fast float %3742, %3333
  %3746 = fadd fast float %3743, %3334
  br label %3451

; <label>:3747                                    ; preds = %3451
  br label %3748

; <label>:3748                                    ; preds = %3747, %3271
  %3749 = phi float [ 0.000000e+00, %3271 ], [ %3452, %3747 ]
  %3750 = phi float [ %3146, %3271 ], [ %3453, %3747 ]
  %3751 = phi float [ %3138, %3271 ], [ %3454, %3747 ]
  %3752 = phi float [ 0.000000e+00, %3271 ], [ %3455, %3747 ]
  %3753 = phi float [ 0.000000e+00, %3271 ], [ %3456, %3747 ]
  %3754 = phi float [ %3238, %3271 ], [ %3457, %3747 ]
  %3755 = phi float [ %3239, %3271 ], [ %3458, %3747 ]
  %3756 = phi float [ %3240, %3271 ], [ %3459, %3747 ]
  %3757 = phi float [ %3266, %3271 ], [ %3460, %3747 ]
  %3758 = phi float [ %3267, %3271 ], [ %3461, %3747 ]
  %3759 = phi float [ %3268, %3271 ], [ %3462, %3747 ]
  %3760 = phi float [ %3137, %3271 ], [ %3463, %3747 ]
  %3761 = phi float [ %3136, %3271 ], [ %3464, %3747 ]
  %3762 = phi float [ 0.000000e+00, %3271 ], [ %3465, %3747 ]
  %3763 = phi float [ %3135, %3271 ], [ %3466, %3747 ]
  %3764 = phi float [ %3132, %3271 ], [ %3467, %3747 ]
  %3765 = phi float [ %3133, %3271 ], [ %3468, %3747 ]
  %3766 = phi float [ %3134, %3271 ], [ %3469, %3747 ]
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3757, float %3758, float %3759, float %3757, float %3758, float %3759)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = call float @dx.op.unary.f32(i32 25, float %3767)  ; Rsqrt(value)
  %3769 = fmul fast float %3768, %3757
  %3770 = fmul fast float %3768, %3758
  %3771 = fmul fast float %3768, %3759
  %3772 = fadd fast float %3762, %786
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3769, float %3770, float %3771, float %3769, float %3770, float %3771)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.unary.f32(i32 25, float %3774)  ; Rsqrt(value)
  %3776 = fmul fast float %3775, %3769
  %3777 = fmul fast float %3775, %3770
  %3778 = fmul fast float %3775, %3771
  br label %3779

; <label>:3779                                    ; preds = %3748, %3172
  %3780 = phi float [ %3776, %3748 ], [ %3266, %3172 ]
  %3781 = phi float [ %3777, %3748 ], [ %3267, %3172 ]
  %3782 = phi float [ %3778, %3748 ], [ %3268, %3172 ]
  %3783 = phi float [ %3764, %3748 ], [ %3132, %3172 ]
  %3784 = phi float [ %3765, %3748 ], [ %3133, %3172 ]
  %3785 = phi float [ %3766, %3748 ], [ %3134, %3172 ]
  %3786 = phi float [ %3754, %3748 ], [ %3238, %3172 ]
  %3787 = phi float [ %3755, %3748 ], [ %3239, %3172 ]
  %3788 = phi float [ %3756, %3748 ], [ %3240, %3172 ]
  %3789 = phi float [ %3763, %3748 ], [ %3135, %3172 ]
  %3790 = phi float [ %3773, %3748 ], [ %786, %3172 ]
  %3791 = phi float [ %3761, %3748 ], [ %3136, %3172 ]
  %3792 = phi float [ %3760, %3748 ], [ %3137, %3172 ]
  %3793 = phi float [ %3753, %3748 ], [ 0.000000e+00, %3172 ]
  %3794 = phi float [ %3752, %3748 ], [ 0.000000e+00, %3172 ]
  %3795 = phi float [ %3749, %3748 ], [ 0.000000e+00, %3172 ]
  %3796 = phi float [ %3750, %3748 ], [ %3146, %3172 ]
  %3797 = phi float [ %3751, %3748 ], [ %3138, %3172 ]
  %3798 = fadd fast float %3789, 0xBFB99999A0000000
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = fmul fast float %3799, 0x3FF1C71C80000000
  %3801 = call float @dx.op.binary.f32(i32 36, float %3789, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3802 = fsub fast float 1.000000e+00, %3800
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = fmul fast float %3803, %3783
  %3805 = fmul fast float %3803, %3784
  %3806 = fmul fast float %3803, %3785
  %3807 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3808 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = fmul fast float %3800, %3783
  %3811 = fmul fast float %3800, %3784
  %3812 = fmul fast float %3800, %3785
  %3813 = fadd fast float %3810, %3801
  %3814 = fadd fast float %3811, %3801
  %3815 = fadd fast float %3812, %3801
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.i32 %3820, 3
  %3822 = and i32 %3821, 8
  %3823 = icmp ne i32 %3822, 0
  %3824 = call float @dx.op.binary.f32(i32 35, float %3807, float %3783)  ; FMax(a,b)
  %3825 = call float @dx.op.binary.f32(i32 35, float %3808, float %3783)  ; FMax(a,b)
  %3826 = call float @dx.op.binary.f32(i32 35, float %3809, float %3783)  ; FMax(a,b)
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3807, float %3808, float %3809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = select i1 %179, float %3783, float %3807
  %3829 = select i1 %179, float %3827, float %3808
  %3830 = select i1 %179, float 1.000000e+00, float %3809
  %3831 = select i1 %3823, float %3824, float %3828
  %3832 = select i1 %3823, float %3825, float %3829
  %3833 = select i1 %3823, float %3826, float %3830
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3838 = fadd fast float %3835, %137
  %3839 = fadd fast float %3836, %138
  %3840 = fadd fast float %3837, %139
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.CBufRet.f32 %3841, 1
  %3844 = fsub fast float %3838, %3842
  %3845 = fsub fast float %3839, %3843
  %3846 = fmul fast float %3844, %3844
  %3847 = fmul fast float %3845, %3845
  %3848 = fadd fast float %3846, %3847
  %3849 = call float @dx.op.unary.f32(i32 24, float %3848)  ; Sqrt(value)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3841, 2
  %3851 = fcmp fast olt float %3849, %3850
  br i1 %3851, label %3852, label %3919

; <label>:3852                                    ; preds = %3779
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3855, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3862 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3863 = extractvalue %dx.types.CBufRet.f32 %3855, 3
  %3864 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3865 = fadd fast float %3862, %3838
  %3866 = fadd fast float %3863, %3839
  %3867 = fadd fast float %3864, %3840
  %3868 = fmul fast float %3865, %3854
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3856, float %3868)  ; FMad(a,b,c)
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3858, float %3869)  ; FMad(a,b,c)
  %3871 = fmul fast float %3865, %3859
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3860, float %3871)  ; FMad(a,b,c)
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3867, float %3861, float %3872)  ; FMad(a,b,c)
  %3874 = fsub fast float %3870, %3862
  %3875 = fsub fast float %3873, %3863
  %3876 = fsub fast float %3874, %3842
  %3877 = fadd fast float %3876, %3850
  %3878 = fsub fast float %3875, %3843
  %3879 = fadd fast float %3878, %3850
  %3880 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3881 = fmul fast float %3877, %3880
  %3882 = fmul fast float %3879, %3880
  %3883 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3884 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3885 = fsub fast float 1.000000e+00, %3883
  %3886 = fsub fast float 1.000000e+00, %3884
  %3887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = fcmp fast ugt float %3888, 0.000000e+00
  br i1 %3889, label %3890, label %4193

; <label>:3890                                    ; preds = %3852
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 2
  %3893 = fmul fast float %3892, %3888
  %3894 = extractvalue %dx.types.CBufRet.f32 %3891, 3
  %3895 = fadd fast float %3894, %3893
  %3896 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3897 = fadd fast float %3895, %3864
  %3898 = fmul fast float %3870, %3858
  %3899 = call float @dx.op.tertiary.f32(i32 46, float %3873, float %3861, float %3898)  ; FMad(a,b,c)
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3896, float %3899)  ; FMad(a,b,c)
  %3901 = fsub fast float %3900, %3864
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 2
  %3904 = fsub fast float %3901, %3903
  %3905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %3885, float %3886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = fadd fast float %3910, %3906
  %3914 = fmul fast float %3913, 0x3F847AE140000000
  %3915 = fadd fast float %3911, %3907
  %3916 = fmul fast float %3915, 0x3F847AE140000000
  %3917 = fadd fast float %3912, %3908
  %3918 = fmul fast float %3917, 0x3F847AE140000000
  br label %4193

; <label>:3919                                    ; preds = %3779
  %3920 = and i32 %155, 1
  %3921 = icmp eq i32 %3920, 0
  br i1 %3921, label %4193, label %3922

; <label>:3922                                    ; preds = %3919
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3930 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3931 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3923, 3
  %3933 = extractvalue %dx.types.CBufRet.f32 %3925, 3
  %3934 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3935 = fadd fast float %3932, %3838
  %3936 = fadd fast float %3933, %3839
  %3937 = fadd fast float %3934, %3840
  %3938 = fmul fast float %3935, %3924
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3926, float %3938)  ; FMad(a,b,c)
  %3940 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3928, float %3939)  ; FMad(a,b,c)
  %3941 = fmul fast float %3935, %3929
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3936, float %3930, float %3941)  ; FMad(a,b,c)
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3931, float %3942)  ; FMad(a,b,c)
  %3944 = fsub fast float %3940, %3932
  %3945 = fsub fast float %3943, %3933
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.CBufRet.f32 %3946, 2
  %3950 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.i32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.i32 %3953, 1
  %3956 = udiv i32 %3955, %3954
  %3957 = fsub fast float %3944, %3947
  %3958 = fsub fast float %3945, %3948
  %3959 = call float @dx.op.binary.f32(i32 35, float %3957, float 0.000000e+00)  ; FMax(a,b)
  %3960 = call float @dx.op.binary.f32(i32 35, float %3958, float 0.000000e+00)  ; FMax(a,b)
  %3961 = call float @dx.op.binary.f32(i32 36, float %3959, float %3949)  ; FMin(a,b)
  %3962 = call float @dx.op.binary.f32(i32 36, float %3960, float %3950)  ; FMin(a,b)
  %3963 = add i32 %3954, -1
  %3964 = add i32 %3956, -1
  %3965 = fmul fast float %3961, %3952
  %3966 = fmul fast float %3962, %3952
  %3967 = fptoui float %3965 to i32
  %3968 = fptoui float %3966 to i32
  %3969 = call i32 @dx.op.binary.i32(i32 40, i32 %3967, i32 %3963)  ; UMin(a,b)
  %3970 = call i32 @dx.op.binary.i32(i32 40, i32 %3968, i32 %3964)  ; UMin(a,b)
  %3971 = mul i32 %3970, %3954
  %3972 = add i32 %3971, %3969
  %3973 = shl i32 %3972, 2
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = icmp eq i32 %3975, -1
  br i1 %3976, label %4193, label %3977

; <label>:3977                                    ; preds = %3922
  %3978 = mul i32 %3975, 148
  %3979 = add i32 %3978, 4
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = add i32 %3978, 8
  %3983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = add i32 %3978, 36
  %3986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = add i32 %3978, 60
  %3989 = add i32 %3978, 92
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = add i32 %3978, 116
  %3993 = fsub fast float %3944, %3981
  %3994 = fsub fast float %3945, %3984
  %3995 = fmul fast float %3952, %3993
  %3996 = fmul fast float %3952, %3994
  %3997 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3998 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 2
  %4002 = call float @dx.op.unary.f32(i32 83, float %3997)  ; DerivCoarseX(value)
  %4003 = call float @dx.op.unary.f32(i32 83, float %3999)  ; DerivCoarseX(value)
  %4004 = call float @dx.op.unary.f32(i32 84, float %3997)  ; DerivCoarseY(value)
  %4005 = call float @dx.op.unary.f32(i32 84, float %3999)  ; DerivCoarseY(value)
  %4006 = fmul fast float %4002, %4001
  %4007 = fmul fast float %4003, %4001
  %4008 = fmul fast float %4004, %4001
  %4009 = fmul fast float %4005, %4001
  %4010 = call float @dx.op.dot2.f32(i32 54, float %4008, float %4009, float %4008, float %4009)  ; Dot2(ax,ay,bx,by)
  %4011 = call float @dx.op.dot2.f32(i32 54, float %4006, float %4007, float %4006, float %4007)  ; Dot2(ax,ay,bx,by)
  %4012 = call float @dx.op.binary.f32(i32 35, float %4011, float %4010)  ; FMax(a,b)
  %4013 = call float @dx.op.unary.f32(i32 23, float %4012)  ; Log(value)
  %4014 = fmul fast float %4013, 5.000000e-01
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4017 = fadd fast float %4016, %4014
  %4018 = call float @dx.op.binary.f32(i32 35, float %4017, float 0.000000e+00)  ; FMax(a,b)
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4021 = fadd fast float %4020, %4018
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4024 = fadd fast float %4021, %4023
  %4025 = add i32 %3991, 0
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4025, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4026, i32 0)  ; GetDimensions(handle,mipLevel)
  %4028 = extractvalue %dx.types.Dimensions %4027, 0
  %4029 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4028)  ; FirstbitLo(value)
  %4030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.i32 %4030, 1
  %4032 = sub nsw i32 %4031, %4029
  %4033 = sitofp i32 %4032 to float
  %4034 = fsub fast float %4024, %4033
  %4035 = call float @dx.op.binary.f32(i32 35, float %4034, float 0.000000e+00)  ; FMax(a,b)
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4026, %dx.types.Handle %32, float %3997, float %3999, float %3987, float undef, i32 0, i32 0, i32 undef, float %4035)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = fcmp ule float %4037, 0x3FE0101020000000
  %4039 = extractvalue %dx.types.CBufRet.i32 %4030, 0
  %4040 = and i32 %4039, 128
  %4041 = icmp ne i32 %4040, 0
  %4042 = and i1 %4038, %4041
  br i1 %4042, label %4193, label %4043

; <label>:4043                                    ; preds = %3977
  %4044 = add i32 %3978, 20
  %4045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = add i32 %3978, 24
  %4048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.f32 %4048, 0
  %4050 = add i32 %3978, 40
  %4051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4050, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = add i32 %3978, 96
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4058 = fmul fast float %4057, %3997
  %4059 = fmul fast float %4057, %3999
  %4060 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4061 = fadd fast float %4058, %4060
  %4062 = fadd fast float %4059, %4060
  %4063 = add i32 %4055, 0
  %4064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4063, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4065 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4064, i32 0)  ; GetDimensions(handle,mipLevel)
  %4066 = extractvalue %dx.types.Dimensions %4065, 0
  %4067 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4066)  ; FirstbitLo(value)
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 1
  %4070 = sub nsw i32 %4069, %4067
  %4071 = sitofp i32 %4070 to float
  %4072 = fsub fast float %4021, %4071
  %4073 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4064, %dx.types.Handle %32, float %4061, float %4062, float %4052, float undef, i32 0, i32 0, i32 undef, float %4073)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = fmul fast float %4075, %4046
  %4077 = fadd fast float %4076, %4049
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4086 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4087 = fadd fast float %4083, %3944
  %4088 = fadd fast float %4085, %3945
  %4089 = fadd fast float %4077, %4086
  %4090 = fmul fast float %4087, %4079
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4080, float %4090)  ; FMad(a,b,c)
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4081, float %4091)  ; FMad(a,b,c)
  %4093 = fsub fast float %4092, %4086
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4096 = fsub fast float %4093, %4095
  %4097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.i32 %4097, 0
  %4099 = call i32 @dx.op.binary.i32(i32 40, i32 %3975, i32 %4098)  ; UMin(a,b)
  %4100 = mul i32 %4099, 36
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4100, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = add i32 %4100, 4
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = fmul fast float %4105, %3997
  %4107 = fmul fast float %4105, %3999
  %4108 = extractvalue %dx.types.CBufRet.f32 %4104, 1
  %4109 = fadd fast float %4106, %4108
  %4110 = fadd fast float %4107, %4108
  %4111 = icmp eq i32 %4102, 0
  br i1 %4111, label %4180, label %4112

; <label>:4112                                    ; preds = %4043
  br label %4113

; <label>:4113                                    ; preds = %4170, %4112
  %4114 = phi float [ %4171, %4170 ], [ 0.000000e+00, %4112 ]
  %4115 = phi float [ %4172, %4170 ], [ 0.000000e+00, %4112 ]
  %4116 = phi float [ %4173, %4170 ], [ 0.000000e+00, %4112 ]
  %4117 = phi float [ %4174, %4170 ], [ 0.000000e+00, %4112 ]
  %4118 = phi float [ %4175, %4170 ], [ 0.000000e+00, %4112 ]
  %4119 = phi float [ %4176, %4170 ], [ 0.000000e+00, %4112 ]
  %4120 = phi i32 [ %4177, %4170 ], [ 0, %4112 ]
  %4121 = shl i32 %4120, 2
  %4122 = add i32 %3988, %4121
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = add i32 %3992, %4121
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = add i32 %4127, 0
  %4129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4128, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4130 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4129, i32 0)  ; GetDimensions(handle,mipLevel)
  %4131 = extractvalue %dx.types.Dimensions %4130, 0
  %4132 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4131)  ; FirstbitLo(value)
  %4133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.i32 %4133, 1
  %4135 = sub nsw i32 %4134, %4132
  %4136 = sitofp i32 %4135 to float
  %4137 = fsub fast float %4021, %4136
  %4138 = call float @dx.op.binary.f32(i32 35, float %4137, float 0.000000e+00)  ; FMax(a,b)
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4129, %dx.types.Handle %32, float %4109, float %4110, float %4124, float undef, i32 0, i32 0, i32 undef, float %4138)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = fcmp fast ogt float %4140, 0.000000e+00
  br i1 %4141, label %4142, label %4170

; <label>:4142                                    ; preds = %4113
  %4143 = add i32 %4103, %4121
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = and i32 %4145, 32767
  %4147 = mul nuw nsw i32 %4146, 928
  %4148 = add nuw nsw i32 %4147, 48
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = add nuw nsw i32 %4147, 60
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = fmul fast float %4150, %4140
  %4159 = fmul fast float %4151, %4140
  %4160 = fmul fast float %4152, %4140
  %4161 = fadd fast float %4158, %4114
  %4162 = fadd fast float %4159, %4115
  %4163 = fadd fast float %4160, %4116
  %4164 = fmul fast float %4155, %4140
  %4165 = fmul fast float %4156, %4140
  %4166 = fmul fast float %4157, %4140
  %4167 = fadd fast float %4164, %4117
  %4168 = fadd fast float %4165, %4118
  %4169 = fadd fast float %4166, %4119
  br label %4170

; <label>:4170                                    ; preds = %4142, %4113
  %4171 = phi float [ %4161, %4142 ], [ %4114, %4113 ]
  %4172 = phi float [ %4162, %4142 ], [ %4115, %4113 ]
  %4173 = phi float [ %4163, %4142 ], [ %4116, %4113 ]
  %4174 = phi float [ %4167, %4142 ], [ %4117, %4113 ]
  %4175 = phi float [ %4168, %4142 ], [ %4118, %4113 ]
  %4176 = phi float [ %4169, %4142 ], [ %4119, %4113 ]
  %4177 = add nuw i32 %4120, 1
  %4178 = icmp eq i32 %4177, %4102
  br i1 %4178, label %4179, label %4113

; <label>:4179                                    ; preds = %4170
  br label %4180

; <label>:4180                                    ; preds = %4179, %4043
  %4181 = phi float [ 0.000000e+00, %4043 ], [ %4171, %4179 ]
  %4182 = phi float [ 0.000000e+00, %4043 ], [ %4172, %4179 ]
  %4183 = phi float [ 0.000000e+00, %4043 ], [ %4173, %4179 ]
  %4184 = phi float [ 0.000000e+00, %4043 ], [ %4174, %4179 ]
  %4185 = phi float [ 0.000000e+00, %4043 ], [ %4175, %4179 ]
  %4186 = phi float [ 0.000000e+00, %4043 ], [ %4176, %4179 ]
  %4187 = fadd fast float %4184, %4181
  %4188 = fmul fast float %4187, 0x3F847AE140000000
  %4189 = fadd fast float %4185, %4182
  %4190 = fmul fast float %4189, 0x3F847AE140000000
  %4191 = fadd fast float %4186, %4183
  %4192 = fmul fast float %4191, 0x3F847AE140000000
  br label %4193

; <label>:4193                                    ; preds = %4180, %3977, %3922, %3919, %3890, %3852
  %4194 = phi float [ %3904, %3890 ], [ -1.310720e+05, %3852 ], [ %4096, %4180 ], [ -1.310720e+05, %3922 ], [ -1.310720e+05, %3977 ], [ -1.310720e+05, %3919 ]
  %4195 = phi float [ %3914, %3890 ], [ 0.000000e+00, %3852 ], [ %4188, %4180 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %3919 ]
  %4196 = phi float [ %3916, %3890 ], [ 0.000000e+00, %3852 ], [ %4190, %4180 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %3919 ]
  %4197 = phi float [ %3918, %3890 ], [ 0.000000e+00, %3852 ], [ %4192, %4180 ], [ 0.000000e+00, %3922 ], [ 0.000000e+00, %3977 ], [ 0.000000e+00, %3919 ]
  %4198 = phi i1 [ true, %3890 ], [ false, %3852 ], [ true, %4180 ], [ false, %3922 ], [ false, %3977 ], [ false, %3919 ]
  %4199 = and i32 %155, 3
  %4200 = icmp eq i32 %4199, 1
  %4201 = select i1 %4200, float 1.000000e+00, float 0.000000e+00
  %4202 = fsub fast float %4194, %139
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = select i1 %4198, float %4203, float 1.000000e+00
  %4205 = fmul fast float %4204, %4201
  %4206 = icmp eq i32 %4199, 3
  %4207 = select i1 %4206, float 1.000000e+00, float %4205
  %4208 = call float @dx.op.binary.f32(i32 35, float %3795, float %4207)  ; FMax(a,b)
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = fcmp fast une float %4209, 0.000000e+00
  %4211 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call float @dx.op.unary.f32(i32 25, float %4211)  ; Rsqrt(value)
  br i1 %4210, label %4220, label %4213

; <label>:4213                                    ; preds = %4193
  %4214 = fmul fast float %4212, %137
  %4215 = fmul fast float %4212, %138
  %4216 = fmul fast float %4212, %139
  %4217 = fsub fast float -0.000000e+00, %4214
  %4218 = fsub fast float -0.000000e+00, %4215
  %4219 = fsub fast float -0.000000e+00, %4216
  br label %4388

; <label>:4220                                    ; preds = %4193
  %4221 = fmul fast float %137, %4212
  %4222 = fsub fast float -0.000000e+00, %4221
  %4223 = fmul fast float %138, %4212
  %4224 = fsub fast float -0.000000e+00, %4223
  %4225 = fmul fast float %139, %4212
  %4226 = fsub fast float -0.000000e+00, %4225
  %4227 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4224, float %4226, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = fmul fast float %4209, 2.500000e+00
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = fmul fast float %4209, 0x4013FFFFE0000000
  %4231 = fadd fast float %4230, 0xBFFFFFFFE0000000
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4209, 0x4004000020000000
  %4234 = fadd fast float %4233, 0xBFF8000040000000
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4237 = fmul fast float %3798, 1.000000e+01
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = fmul fast float %4238, 2.000000e+00
  %4240 = fsub fast float 3.000000e+00, %4239
  %4241 = fmul fast float %4238, %4238
  %4242 = fmul fast float %4241, %4240
  %4243 = fsub fast float 1.000000e+00, %4242
  %4244 = fsub fast float 0x3FE3333340000000, %3819
  %4245 = fmul fast float %4244, 0x400AAAAAA0000000
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fmul fast float %4243, %4246
  %4248 = fmul fast float %3831, 0x3FEA2B8620000000
  %4249 = fmul fast float %3832, 0x3FEA2B8620000000
  %4250 = fmul fast float %3833, 0x3FEA2B8620000000
  %4251 = fadd fast float %4248, 0x3FC81DFBA0000000
  %4252 = fmul fast float %4251, %3831
  %4253 = fadd fast float %4252, 0x3F910E6020000000
  %4254 = fadd fast float %4249, 0x3FC81DFBA0000000
  %4255 = fmul fast float %4254, %3832
  %4256 = fadd fast float %4255, 0x3F910E6020000000
  %4257 = fadd fast float %4250, 0x3FC81DFBA0000000
  %4258 = fmul fast float %4257, %3833
  %4259 = fadd fast float %4258, 0x3F910E6020000000
  %4260 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = fsub fast float %4260, %3831
  %4264 = fsub fast float %4261, %3832
  %4265 = fsub fast float %4262, %3833
  %4266 = fmul fast float %4263, %4236
  %4267 = fmul fast float %4266, %4247
  %4268 = fmul fast float %4264, %4236
  %4269 = fmul fast float %4268, %4247
  %4270 = fmul fast float %4265, %4236
  %4271 = fmul fast float %4270, %4247
  %4272 = fadd fast float %4267, %3831
  %4273 = fadd fast float %4269, %3832
  %4274 = fadd fast float %4271, %3833
  %4275 = fmul fast float %3792, %3792
  %4276 = fmul fast float %4275, %4275
  %4277 = fadd fast float %4232, 1.000000e+00
  %4278 = fsub fast float %4277, %4247
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fsub fast float 1.000000e+00, %4276
  %4283 = call float @dx.op.binary.f32(i32 36, float %4279, float %4282)  ; FMin(a,b)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4283, float %4284)  ; FMax(a,b)
  %4286 = fadd fast float %4281, 0xBFE4CCCCC0000000
  %4287 = fmul fast float %4286, 0x4006DB6DA0000000
  %4288 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4289 = fmul fast float %4288, 2.000000e+00
  %4290 = fsub fast float 3.000000e+00, %4289
  %4291 = bitcast float %3816 to i32
  %4292 = ashr i32 %4291, 1
  %4293 = add nsw i32 %4292, 532487669
  %4294 = bitcast i32 %4293 to float
  %4295 = fsub fast float 1.000000e+00, %4294
  %4296 = bitcast float %4295 to i32
  %4297 = sub nsw i32 2129859010, %4296
  %4298 = bitcast i32 %4297 to float
  %4299 = fmul fast float %4298, 2.000000e+00
  %4300 = bitcast float %3817 to i32
  %4301 = ashr i32 %4300, 1
  %4302 = add nsw i32 %4301, 532487669
  %4303 = bitcast i32 %4302 to float
  %4304 = fsub fast float 1.000000e+00, %4303
  %4305 = bitcast float %4304 to i32
  %4306 = sub nsw i32 2129859010, %4305
  %4307 = bitcast i32 %4306 to float
  %4308 = fmul fast float %4307, 2.000000e+00
  %4309 = bitcast float %3818 to i32
  %4310 = ashr i32 %4309, 1
  %4311 = add nsw i32 %4310, 532487669
  %4312 = bitcast i32 %4311 to float
  %4313 = fsub fast float 1.000000e+00, %4312
  %4314 = bitcast float %4313 to i32
  %4315 = sub nsw i32 2129859010, %4314
  %4316 = bitcast i32 %4315 to float
  %4317 = fmul fast float %4316, 2.000000e+00
  %4318 = fsub fast float 0x4002A9FBE0000000, %4299
  %4319 = fadd fast float %4299, 0x3FD54FDF00000000
  %4320 = bitcast float %4319 to i32
  %4321 = sub nsw i32 2129859010, %4320
  %4322 = bitcast i32 %4321 to float
  %4323 = fmul fast float %4322, %4318
  %4324 = fmul fast float %4323, %4323
  %4325 = fsub fast float 0x4002A9FBE0000000, %4308
  %4326 = fadd fast float %4308, 0x3FD54FDF00000000
  %4327 = bitcast float %4326 to i32
  %4328 = sub nsw i32 2129859010, %4327
  %4329 = bitcast i32 %4328 to float
  %4330 = fmul fast float %4329, %4325
  %4331 = fmul fast float %4330, %4330
  %4332 = fsub fast float 0x4002A9FBE0000000, %4317
  %4333 = fadd fast float %4317, 0x3FD54FDF00000000
  %4334 = bitcast float %4333 to i32
  %4335 = sub nsw i32 2129859010, %4334
  %4336 = bitcast i32 %4335 to float
  %4337 = fmul fast float %4336, %4332
  %4338 = fmul fast float %4337, %4337
  %4339 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4324)  ; FMax(a,b)
  %4340 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4331)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4338)  ; FMax(a,b)
  %4342 = fsub fast float 1.000000e+00, %4227
  %4343 = fadd fast float %4342, %4243
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fsub fast float 1.000000e+00, %4207
  %4346 = fmul fast float %4285, %4345
  %4347 = fmul fast float %4288, %4288
  %4348 = fmul fast float %4347, %4346
  %4349 = fmul fast float %4348, %4290
  %4350 = fmul fast float %4345, 0xBFE99999A0000000
  %4351 = fmul fast float %4350, %4236
  %4352 = fmul fast float %4351, %4247
  %4353 = fadd fast float %4352, 1.000000e+00
  %4354 = fadd fast float %3819, -1.000000e+00
  %4355 = fmul fast float %4353, %4354
  %4356 = fadd fast float %4355, 1.000000e+00
  %4357 = fsub fast float %4339, %3816
  %4358 = fsub fast float %4340, %3817
  %4359 = fsub fast float %4341, %3818
  %4360 = fmul fast float %4349, %4357
  %4361 = fmul fast float %4349, %4358
  %4362 = fmul fast float %4349, %4359
  %4363 = fadd fast float %4360, %3816
  %4364 = fadd fast float %4361, %3817
  %4365 = fadd fast float %4362, %3818
  %4366 = fsub fast float %81, %3780
  %4367 = fsub fast float %82, %3781
  %4368 = fsub fast float %83, %3782
  %4369 = fmul fast float %4349, %4366
  %4370 = fmul fast float %4349, %4367
  %4371 = fmul fast float %4349, %4368
  %4372 = fadd fast float %4369, %3780
  %4373 = fadd fast float %4370, %3781
  %4374 = fadd fast float %4371, %3782
  %4375 = fmul fast float %4349, %4344
  %4376 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4377 = fsub fast float 1.000000e+00, %4376
  %4378 = fmul fast float %4375, %4377
  %4379 = fadd fast float %4378, %4376
  %4380 = fsub fast float 1.000000e+00, %3792
  %4381 = fmul fast float %4349, %4380
  %4382 = fadd fast float %4381, %3792
  %4383 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float %4372, float %4373, float %4374)  ; Dot3(ax,ay,az,bx,by,bz)
  %4384 = call float @dx.op.unary.f32(i32 25, float %4383)  ; Rsqrt(value)
  %4385 = fmul fast float %4372, %4384
  %4386 = fmul fast float %4373, %4384
  %4387 = fmul fast float %4374, %4384
  br label %4388

; <label>:4388                                    ; preds = %4220, %4213
  %4389 = phi float [ %4219, %4213 ], [ %4226, %4220 ]
  %4390 = phi float [ %4218, %4213 ], [ %4224, %4220 ]
  %4391 = phi float [ %4217, %4213 ], [ %4222, %4220 ]
  %4392 = phi float [ %4216, %4213 ], [ %4225, %4220 ]
  %4393 = phi float [ %4215, %4213 ], [ %4223, %4220 ]
  %4394 = phi float [ %4214, %4213 ], [ %4221, %4220 ]
  %4395 = phi float [ %3816, %4213 ], [ %4363, %4220 ]
  %4396 = phi float [ %3817, %4213 ], [ %4364, %4220 ]
  %4397 = phi float [ %3818, %4213 ], [ %4365, %4220 ]
  %4398 = phi float [ %3831, %4213 ], [ %4272, %4220 ]
  %4399 = phi float [ %3832, %4213 ], [ %4273, %4220 ]
  %4400 = phi float [ %3833, %4213 ], [ %4274, %4220 ]
  %4401 = phi float [ %3780, %4213 ], [ %4385, %4220 ]
  %4402 = phi float [ %3781, %4213 ], [ %4386, %4220 ]
  %4403 = phi float [ %3782, %4213 ], [ %4387, %4220 ]
  %4404 = phi float [ %3819, %4213 ], [ %4379, %4220 ]
  %4405 = phi float [ %3792, %4213 ], [ %4382, %4220 ]
  %4406 = select i1 %179, float 0.000000e+00, float %4397
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float %4391, float %4390, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = call float @dx.op.dot3.f32(i32 55, float %4394, float %4393, float %4392, float %4401, float %4402, float %4403)  ; Dot3(ax,ay,az,bx,by,bz)
  %4410 = fmul fast float %4409, 2.000000e+00
  %4411 = fmul fast float %4410, %4401
  %4412 = fmul fast float %4410, %4402
  %4413 = fmul fast float %4410, %4403
  %4414 = fsub fast float %4394, %4411
  %4415 = fsub fast float %4393, %4412
  %4416 = fsub fast float %4392, %4413
  %4417 = call float @dx.op.binary.f32(i32 36, float %4405, float 1.000000e+00)  ; FMin(a,b)
  %4418 = fsub fast float 1.000000e+00, %4405
  %4419 = bitcast float %4418 to i32
  %4420 = sub nsw i32 2129859010, %4419
  %4421 = bitcast i32 %4420 to float
  %4422 = fsub fast float 1.000000e+00, %51
  %4423 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = call float @dx.op.binary.f32(i32 35, float %4423, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4425 = fdiv fast float %4422, %4424
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4427, 5.000000e-01
  %4429 = fadd fast float %4428, 5.000000e-01
  %4430 = fmul fast float %4429, %51
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fmul fast float %4432, %4425
  %4434 = fadd fast float %4430, %4433
  %4435 = fsub fast float 5.000000e-01, %4428
  %4436 = fmul fast float %4435, %4398
  %4437 = fmul fast float %4435, %4399
  %4438 = fmul fast float %4435, %4400
  %4439 = fadd fast float %4434, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = fadd fast float %4434, %4438
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4443, 5.000000e-01
  %4445 = fadd fast float %4444, 5.000000e-01
  %4446 = fmul fast float %4445, %51
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fmul fast float %4448, %4425
  %4450 = fadd fast float %4446, %4449
  %4451 = fsub fast float 5.000000e-01, %4444
  %4452 = fmul fast float %4451, %4398
  %4453 = fmul fast float %4451, %4399
  %4454 = fmul fast float %4451, %4400
  %4455 = fadd fast float %4450, %4452
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4450, %4454
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 0
  %4460 = call float @dx.op.binary.f32(i32 36, float %4398, float %4459)  ; FMin(a,b)
  %4461 = fsub fast float 1.000000e+00, %4417
  %4462 = fmul fast float %4460, %4461
  %4463 = fsub fast float 1.000000e+00, %4462
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = bitcast i32 %4465 to float
  %4467 = call float @dx.op.binary.f32(i32 36, float %4399, float %4459)  ; FMin(a,b)
  %4468 = fmul fast float %4467, %4461
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = bitcast float %4469 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = call float @dx.op.binary.f32(i32 36, float %4400, float %4459)  ; FMin(a,b)
  %4474 = fmul fast float %4473, %4461
  %4475 = fsub fast float 1.000000e+00, %4474
  %4476 = bitcast float %4475 to i32
  %4477 = sub nsw i32 2129859010, %4476
  %4478 = bitcast i32 %4477 to float
  %4479 = fmul fast float %4417, %52
  %4480 = fmul fast float %4479, %4439
  %4481 = fmul fast float %4480, %4466
  %4482 = fmul fast float %4417, %53
  %4483 = fmul fast float %4482, %4440
  %4484 = fmul fast float %4483, %4472
  %4485 = fmul fast float %4417, %54
  %4486 = fmul fast float %4485, %4441
  %4487 = fmul fast float %4486, %4478
  %4488 = call float @dx.op.binary.f32(i32 36, float %4395, float %4459)  ; FMin(a,b)
  %4489 = fmul fast float %4488, %4461
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = bitcast float %4490 to i32
  %4492 = sub nsw i32 2129859010, %4491
  %4493 = bitcast i32 %4492 to float
  %4494 = call float @dx.op.binary.f32(i32 36, float %4396, float %4459)  ; FMin(a,b)
  %4495 = fmul fast float %4494, %4461
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = bitcast float %4496 to i32
  %4498 = sub nsw i32 2129859010, %4497
  %4499 = bitcast i32 %4498 to float
  %4500 = call float @dx.op.binary.f32(i32 36, float %4406, float %4459)  ; FMin(a,b)
  %4501 = fmul fast float %4500, %4461
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = bitcast float %4502 to i32
  %4504 = sub nsw i32 2129859010, %4503
  %4505 = bitcast i32 %4504 to float
  %4506 = fmul fast float %4479, %4455
  %4507 = fmul fast float %4506, %4493
  %4508 = fmul fast float %4482, %4456
  %4509 = fmul fast float %4508, %4499
  %4510 = fmul fast float %4485, %4457
  %4511 = fmul fast float %4510, %4505
  %4512 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4484, float %4487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = select i1 %179, float 0.000000e+00, float %4481
  %4514 = select i1 %179, float %4512, float %4484
  %4515 = select i1 %179, float 0.000000e+00, float %4487
  %4516 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4509, float %4511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4517 = select i1 %179, float 0.000000e+00, float %4507
  %4518 = select i1 %179, float %4516, float %4509
  %4519 = select i1 %179, float 0.000000e+00, float %4511
  %4520 = fmul fast float %4408, 9.843750e-01
  %4521 = fmul fast float %4404, 9.843750e-01
  %4522 = fadd fast float %4520, 7.812500e-03
  %4523 = fadd fast float %4521, 7.812500e-03
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %4522, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 3
  %4527 = fmul fast float %4525, %4395
  %4528 = fmul fast float %4525, %4396
  %4529 = fmul fast float %4525, %4406
  %4530 = fadd fast float %4527, %4526
  %4531 = fadd fast float %4528, %4526
  %4532 = fadd fast float %4529, %4526
  %4533 = fcmp fast ogt float %3793, 0.000000e+00
  br i1 %4533, label %4534, label %4560

; <label>:4534                                    ; preds = %4388
  %4535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3793, float %4408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = fadd fast float %4536, -5.000000e-01
  %4540 = fadd fast float %4537, -5.000000e-01
  %4541 = fadd fast float %4538, -5.000000e-01
  %4542 = fsub fast float 1.000000e+00, %4395
  %4543 = fsub fast float 1.000000e+00, %4396
  %4544 = fsub fast float 1.000000e+00, %4406
  %4545 = fmul fast float %4395, 4.000000e+00
  %4546 = fmul fast float %4545, %4542
  %4547 = fmul fast float %4546, %4539
  %4548 = fmul fast float %4396, 4.000000e+00
  %4549 = fmul fast float %4548, %4543
  %4550 = fmul fast float %4549, %4540
  %4551 = fmul fast float %4406, 4.000000e+00
  %4552 = fmul fast float %4551, %4544
  %4553 = fmul fast float %4552, %4541
  %4554 = fadd fast float %4547, %4530
  %4555 = fadd fast float %4550, %4531
  %4556 = fadd fast float %4553, %4532
  %4557 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  br label %4560

; <label>:4560                                    ; preds = %4534, %4388
  %4561 = phi float [ %4557, %4534 ], [ %4530, %4388 ]
  %4562 = phi float [ %4558, %4534 ], [ %4531, %4388 ]
  %4563 = phi float [ %4559, %4534 ], [ %4532, %4388 ]
  %4564 = call float @dx.op.binary.f32(i32 35, float %4562, float %4563)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 35, float %4561, float %4564)  ; FMax(a,b)
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4566, %4513
  %4568 = fmul fast float %4566, %4514
  %4569 = fmul fast float %4566, %4515
  %4570 = call float @dx.op.dot3.f32(i32 55, float %4398, float %4399, float %4400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4571 = fcmp fast ogt float %4570, 0x3E7FF19E20000000
  %4572 = fdiv fast float 1.000000e+00, %4570
  %4573 = select i1 %4571, float %4572, float 0.000000e+00
  %4574 = fmul fast float %4573, %4398
  %4575 = fmul fast float %4573, %4399
  %4576 = fmul fast float %4573, %4400
  %4577 = fadd fast float %4574, -1.000000e+00
  %4578 = fadd fast float %4575, -1.000000e+00
  %4579 = fadd fast float %4576, -1.000000e+00
  %4580 = fmul fast float %4577, 5.000000e-01
  %4581 = fmul fast float %4578, 5.000000e-01
  %4582 = fmul fast float %4579, 5.000000e-01
  %4583 = fadd fast float %4580, 1.000000e+00
  %4584 = fadd fast float %4581, 1.000000e+00
  %4585 = fadd fast float %4582, 1.000000e+00
  %4586 = fmul fast float %4561, %4517
  %4587 = fmul fast float %4562, %4518
  %4588 = fmul fast float %4563, %4519
  %4589 = fsub fast float 1.000000e+00, %4408
  %4590 = bitcast float %4589 to i32
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, 5.000000e+00
  %4593 = fadd fast float %4592, 0xC1EFBF8940000000
  %4594 = fptosi float %4593 to i32
  %4595 = bitcast i32 %4594 to float
  %4596 = fmul fast float %4595, %3794
  %4597 = fmul fast float %4513, %4596
  %4598 = fmul fast float %4597, %4566
  %4599 = fmul fast float %4598, %4583
  %4600 = fmul fast float %4514, %4596
  %4601 = fmul fast float %4600, %4566
  %4602 = fmul fast float %4601, %4584
  %4603 = fmul fast float %4515, %4596
  %4604 = fmul fast float %4603, %4566
  %4605 = fmul fast float %4604, %4585
  %4606 = fmul fast float %4567, %3790
  %4607 = fmul fast float %4568, %3790
  %4608 = fmul fast float %4569, %3790
  %4609 = fadd fast float %4586, %3786
  %4610 = fadd fast float %4609, %4599
  %4611 = fmul fast float %4610, %3790
  %4612 = fadd fast float %4587, %3787
  %4613 = fadd fast float %4612, %4602
  %4614 = fmul fast float %4613, %3790
  %4615 = fadd fast float %4588, %3788
  %4616 = fadd fast float %4615, %4605
  %4617 = fmul fast float %4616, %3790
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4620 = fcmp fast oeq float %4619, 0.000000e+00
  br i1 %4620, label %4848, label %4621

; <label>:4621                                    ; preds = %4560
  %4622 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4624 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = select i1 %179, float %4630, float %4626
  %4634 = select i1 %179, float %4632, float %4627
  %4635 = select i1 %179, float %4631, float %4628
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4638 = fcmp fast une float %4637, 0.000000e+00
  br i1 %4638, label %4639, label %4656

; <label>:4639                                    ; preds = %4621
  %4640 = fptoui float %74 to i32
  %4641 = fptoui float %75 to i32
  %4642 = lshr i32 %4640, 4
  %4643 = lshr i32 %4641, 4
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = fptoui float %4645 to i32
  %4647 = add i32 %4646, 15
  %4648 = lshr i32 %4647, 4
  %4649 = mul i32 %4648, %4643
  %4650 = add i32 %4649, %4642
  %4651 = shl i32 %4650, 3
  %4652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.i32 %4652, 0
  %4654 = and i32 %4653, -268435456
  %4655 = icmp eq i32 %4654, -1342177280
  br i1 %4655, label %4666, label %4656

; <label>:4656                                    ; preds = %4639, %4621
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 2
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 3
  %4660 = fmul fast float %4658, %74
  %4661 = fmul fast float %4659, %75
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %4660, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  br label %4666

; <label>:4666                                    ; preds = %4656, %4639
  %4667 = phi float [ %4663, %4656 ], [ 0.000000e+00, %4639 ]
  %4668 = phi float [ %4664, %4656 ], [ 0.000000e+00, %4639 ]
  %4669 = phi float [ %4665, %4656 ], [ 0.000000e+00, %4639 ]
  %4670 = call float @dx.op.binary.f32(i32 36, float %4668, float %4669)  ; FMin(a,b)
  %4671 = call float @dx.op.binary.f32(i32 36, float %4667, float %4670)  ; FMin(a,b)
  %4672 = fcmp fast ogt float %4671, 0.000000e+00
  br i1 %4672, label %4673, label %4848, !dx.controlflow.hints !78

; <label>:4673                                    ; preds = %4666
  %4674 = fmul fast float %4667, %4633
  %4675 = fmul fast float %4668, %4634
  %4676 = fmul fast float %4669, %4635
  %4677 = fsub fast float %4622, %4394
  %4678 = fsub fast float %4623, %4393
  %4679 = fsub fast float %4624, %4392
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4681, %4677
  %4683 = fmul fast float %4681, %4678
  %4684 = fmul fast float %4681, %4679
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float %4401, float %4402, float %4403)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4391, float %4390, float %4389, float %4682, float %4683, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4688 = fmul fast float %4687, %4687
  %4689 = fmul fast float %4688, %4421
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = fmul fast float %4690, %4687
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float %4682, float %4683, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = fmul fast float %4692, %4692
  %4694 = call float @dx.op.unary.f32(i32 6, float %4685)  ; FAbs(value)
  %4695 = fsub fast float 1.000000e+00, %4404
  %4696 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3F847AE140000000)  ; FMax(a,b)
  %4697 = fmul fast float %4696, %4696
  %4698 = fmul fast float %4697, %4697
  %4699 = fsub fast float 1.000000e+00, %4698
  %4700 = fmul fast float %4408, %4408
  %4701 = fmul fast float %4700, %4699
  %4702 = fadd fast float %4701, %4698
  %4703 = bitcast float %4702 to i32
  %4704 = ashr i32 %4703, 1
  %4705 = add nsw i32 %4704, 532487669
  %4706 = bitcast i32 %4705 to float
  %4707 = fadd fast float %4706, %4408
  %4708 = fmul fast float %4698, %4693
  %4709 = fsub fast float 1.000000e+00, %4693
  %4710 = fadd fast float %4709, %4708
  %4711 = fmul fast float %4694, %4694
  %4712 = fmul fast float %4711, %4699
  %4713 = fadd fast float %4712, %4698
  %4714 = bitcast float %4713 to i32
  %4715 = ashr i32 %4714, 1
  %4716 = add nsw i32 %4715, 532487669
  %4717 = bitcast i32 %4716 to float
  %4718 = fadd fast float %4717, %4694
  %4719 = fmul fast float %4710, %4710
  %4720 = fmul fast float %4719, %4707
  %4721 = fmul fast float %4720, %4718
  %4722 = fdiv fast float 0x3FF0A00000000000, %4721
  %4723 = fmul fast float %4722, %4698
  %4724 = call float @dx.op.unary.f32(i32 6, float %4686)  ; FAbs(value)
  %4725 = fsub fast float 1.000000e+00, %4724
  %4726 = bitcast float %4725 to i32
  %4727 = sitofp i32 %4726 to float
  %4728 = fmul fast float %4727, 5.000000e+00
  %4729 = fadd fast float %4728, 0xC1EFBF8940000000
  %4730 = fptosi float %4729 to i32
  %4731 = bitcast i32 %4730 to float
  %4732 = fsub fast float 1.000000e+00, %4395
  %4733 = fsub fast float 1.000000e+00, %4396
  %4734 = fsub fast float 1.000000e+00, %4406
  %4735 = fmul fast float %4731, %4732
  %4736 = fmul fast float %4731, %4733
  %4737 = fmul fast float %4731, %4734
  %4738 = fadd fast float %4735, %4395
  %4739 = fadd fast float %4736, %4396
  %4740 = fadd fast float %4737, %4406
  br i1 %4533, label %4741, label %4764

; <label>:4741                                    ; preds = %4673
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3793, float %4724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4746 = fadd fast float %4743, -5.000000e-01
  %4747 = fadd fast float %4744, -5.000000e-01
  %4748 = fadd fast float %4745, -5.000000e-01
  %4749 = fmul fast float %4395, 4.000000e+00
  %4750 = fmul fast float %4749, %4732
  %4751 = fmul fast float %4750, %4746
  %4752 = fmul fast float %4396, 4.000000e+00
  %4753 = fmul fast float %4752, %4733
  %4754 = fmul fast float %4753, %4747
  %4755 = fmul fast float %4406, 4.000000e+00
  %4756 = fmul fast float %4755, %4734
  %4757 = fmul fast float %4756, %4748
  %4758 = fadd fast float %4751, %4738
  %4759 = fadd fast float %4754, %4739
  %4760 = fadd fast float %4757, %4740
  %4761 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  br label %4764

; <label>:4764                                    ; preds = %4741, %4673
  %4765 = phi float [ %4761, %4741 ], [ %4738, %4673 ]
  %4766 = phi float [ %4762, %4741 ], [ %4739, %4673 ]
  %4767 = phi float [ %4763, %4741 ], [ %4740, %4673 ]
  %4768 = fmul fast float %4685, 9.843750e-01
  %4769 = fadd fast float %4768, 7.812500e-03
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %4769, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 3
  %4773 = fmul fast float %4771, %4395
  %4774 = fmul fast float %4771, %4396
  %4775 = fmul fast float %4771, %4406
  %4776 = fadd fast float %4773, %4772
  %4777 = fadd fast float %4774, %4772
  %4778 = fadd fast float %4775, %4772
  br i1 %4533, label %4779, label %4802

; <label>:4779                                    ; preds = %4764
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3793, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = fadd fast float %4781, -5.000000e-01
  %4785 = fadd fast float %4782, -5.000000e-01
  %4786 = fadd fast float %4783, -5.000000e-01
  %4787 = fmul fast float %4395, 4.000000e+00
  %4788 = fmul fast float %4787, %4732
  %4789 = fmul fast float %4788, %4784
  %4790 = fmul fast float %4396, 4.000000e+00
  %4791 = fmul fast float %4790, %4733
  %4792 = fmul fast float %4791, %4785
  %4793 = fmul fast float %4406, 4.000000e+00
  %4794 = fmul fast float %4793, %4734
  %4795 = fmul fast float %4794, %4786
  %4796 = fadd fast float %4789, %4776
  %4797 = fadd fast float %4792, %4777
  %4798 = fadd fast float %4795, %4778
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  br label %4802

; <label>:4802                                    ; preds = %4779, %4764
  %4803 = phi float [ %4799, %4779 ], [ %4776, %4764 ]
  %4804 = phi float [ %4800, %4779 ], [ %4777, %4764 ]
  %4805 = phi float [ %4801, %4779 ], [ %4778, %4764 ]
  %4806 = call float @dx.op.binary.f32(i32 35, float %4804, float %4805)  ; FMax(a,b)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4803, float %4806)  ; FMax(a,b)
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = fmul fast float %4765, %4723
  %4810 = fmul fast float %4766, %4723
  %4811 = fmul fast float %4767, %4723
  %4812 = fsub fast float 1.000000e+00, %4686
  %4813 = bitcast float %4812 to i32
  %4814 = sitofp i32 %4813 to float
  %4815 = fmul fast float %4814, 5.000000e+00
  %4816 = fadd fast float %4815, 0xC1EFBF8940000000
  %4817 = fptosi float %4816 to i32
  %4818 = bitcast i32 %4817 to float
  %4819 = fmul fast float %4818, %3794
  %4820 = fmul fast float %4808, %4819
  %4821 = fmul fast float %4820, %4583
  %4822 = fmul fast float %4820, %4584
  %4823 = fmul fast float %4820, %4585
  %4824 = fadd fast float %4821, %4809
  %4825 = fadd fast float %4822, %4810
  %4826 = fadd fast float %4823, %4811
  %4827 = fmul fast float %4691, %4674
  %4828 = fmul fast float %4827, %4808
  %4829 = fmul fast float %4691, %4675
  %4830 = fmul fast float %4829, %4808
  %4831 = fmul fast float %4691, %4676
  %4832 = fmul fast float %4831, %4808
  %4833 = fmul fast float %4827, %4824
  %4834 = fmul fast float %4829, %4825
  %4835 = fmul fast float %4831, %4826
  %4836 = fadd fast float %4828, %4567
  %4837 = fmul fast float %4836, %3790
  %4838 = fadd fast float %4830, %4568
  %4839 = fmul fast float %4838, %3790
  %4840 = fadd fast float %4832, %4569
  %4841 = fmul fast float %4840, %3790
  %4842 = fadd fast float %4833, %4610
  %4843 = fmul fast float %4842, %3790
  %4844 = fadd fast float %4834, %4613
  %4845 = fmul fast float %4844, %3790
  %4846 = fadd fast float %4835, %4616
  %4847 = fmul fast float %4846, %3790
  br label %4848

; <label>:4848                                    ; preds = %4802, %4666, %4560
  %4849 = phi float [ %4611, %4560 ], [ %4611, %4666 ], [ %4843, %4802 ]
  %4850 = phi float [ %4614, %4560 ], [ %4614, %4666 ], [ %4845, %4802 ]
  %4851 = phi float [ %4617, %4560 ], [ %4617, %4666 ], [ %4847, %4802 ]
  %4852 = phi float [ %4606, %4560 ], [ %4606, %4666 ], [ %4837, %4802 ]
  %4853 = phi float [ %4607, %4560 ], [ %4607, %4666 ], [ %4839, %4802 ]
  %4854 = phi float [ %4608, %4560 ], [ %4608, %4666 ], [ %4841, %4802 ]
  %4855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.i32 %4855, 0
  %4857 = icmp eq i32 %4856, 0
  br i1 %4857, label %5292, label %4858

; <label>:4858                                    ; preds = %4848
  %4859 = fptoui float %74 to i32
  %4860 = fptoui float %75 to i32
  %4861 = lshr i32 %4859, 4
  %4862 = lshr i32 %4860, 4
  %4863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.i32 %4863, 0
  %4865 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4862, i32 %4864, i32 %4861)  ; UMad(a,b,c)
  %4866 = add nsw i32 %4856, -1
  %4867 = call i32 @dx.op.binary.i32(i32 37, i32 %4866, i32 0)  ; IMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4869 = fptoui float %4868 to i32
  %4870 = lshr i32 %4869, 5
  %4871 = call i32 @dx.op.binary.i32(i32 40, i32 %4870, i32 8191)  ; UMin(a,b)
  %4872 = shl i32 %4871, 2
  %4873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4872, i32 undef)  ; BufferLoad(srv,index,wot)
  %4874 = extractvalue %dx.types.ResRet.i32 %4873, 0
  %4875 = lshr i32 %4874, 16
  %4876 = and i32 %4874, 65535
  %4877 = lshr i32 %4874, 21
  %4878 = lshr i32 %4876, 5
  %4879 = call i32 @dx.op.binary.i32(i32 40, i32 %4878, i32 %4867)  ; UMin(a,b)
  %4880 = icmp ugt i32 %4877, %4879
  br i1 %4880, label %5292, label %4881

; <label>:4881                                    ; preds = %4858
  br label %4882

; <label>:4882                                    ; preds = %5282, %4881
  %4883 = phi i32 [ %5289, %5282 ], [ %4877, %4881 ]
  %4884 = phi float [ %5283, %5282 ], [ %4849, %4881 ]
  %4885 = phi float [ %5284, %5282 ], [ %4850, %4881 ]
  %4886 = phi float [ %5285, %5282 ], [ %4851, %4881 ]
  %4887 = phi float [ %5286, %5282 ], [ %4852, %4881 ]
  %4888 = phi float [ %5287, %5282 ], [ %4853, %4881 ]
  %4889 = phi float [ %5288, %5282 ], [ %4854, %4881 ]
  %4890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.i32 %4890, 0
  %4892 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4865, i32 %4891, i32 %4883)  ; UMad(a,b,c)
  %4893 = shl i32 %4892, 2
  %4894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.i32 %4894, 0
  %4896 = shl i32 %4883, 5
  %4897 = sub nsw i32 %4875, %4896
  %4898 = call i32 @dx.op.binary.i32(i32 37, i32 %4897, i32 0)  ; IMax(a,b)
  %4899 = call i32 @dx.op.binary.i32(i32 38, i32 %4898, i32 31)  ; IMin(a,b)
  %4900 = sub nsw i32 1, %4875
  %4901 = add nsw i32 %4900, %4876
  %4902 = call i32 @dx.op.binary.i32(i32 37, i32 %4901, i32 0)  ; IMax(a,b)
  %4903 = call i32 @dx.op.binary.i32(i32 38, i32 %4902, i32 32)  ; IMin(a,b)
  %4904 = and i32 %4903, 31
  %4905 = shl i32 -1, %4904
  %4906 = xor i32 %4905, -1
  %4907 = and i32 %4899, 31
  %4908 = shl i32 %4906, %4907
  %4909 = icmp eq i32 %4903, 32
  %4910 = select i1 %4909, i32 -1, i32 %4908
  %4911 = and i32 %4910, %4895
  %4912 = icmp eq i32 %4911, 0
  br i1 %4912, label %5282, label %4913

; <label>:4913                                    ; preds = %4882
  br label %4914

; <label>:4914                                    ; preds = %4994, %4913
  %4915 = phi i32 [ %4926, %4994 ], [ %4911, %4913 ]
  %4916 = phi float [ %4995, %4994 ], [ %4884, %4913 ]
  %4917 = phi float [ %4996, %4994 ], [ %4885, %4913 ]
  %4918 = phi float [ %4997, %4994 ], [ %4886, %4913 ]
  %4919 = phi float [ %4998, %4994 ], [ %4887, %4913 ]
  %4920 = phi float [ %4999, %4994 ], [ %4888, %4913 ]
  %4921 = phi float [ %5000, %4994 ], [ %4889, %4913 ]
  %4922 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4915)  ; FirstbitLo(value)
  %4923 = add i32 %4922, %4896
  %4924 = and i32 %4922, 31
  %4925 = shl i32 1, %4924
  %4926 = xor i32 %4925, %4915
  %4927 = mul i32 %4923, 112
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = or i32 %4927, 12
  %4933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 0
  %4935 = add i32 %4927, 44
  %4936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4935, i32 undef)  ; BufferLoad(srv,index,wot)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = add i32 %4927, 48
  %4939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4938, i32 undef)  ; BufferLoad(srv,index,wot)
  %4940 = extractvalue %dx.types.ResRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.ResRet.f32 %4939, 1
  %4942 = extractvalue %dx.types.ResRet.f32 %4939, 2
  %4943 = add i32 %4927, 80
  %4944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4943, i32 undef)  ; BufferLoad(srv,index,wot)
  %4945 = extractvalue %dx.types.ResRet.f32 %4944, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4944, 2
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = select i1 %179, float %4945, float %4929
  %4949 = select i1 %179, float %4947, float %4930
  %4950 = select i1 %179, float %4946, float %4931
  %4951 = fsub fast float %4940, %137
  %4952 = fsub fast float %4941, %138
  %4953 = fsub fast float %4942, %139
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4951, float %4952, float %4953)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call float @dx.op.unary.f32(i32 24, float %4954)  ; Sqrt(value)
  %4956 = fdiv fast float 1.000000e+00, %4955
  %4957 = fmul fast float %4956, %4951
  %4958 = fmul fast float %4956, %4952
  %4959 = fmul fast float %4956, %4953
  %4960 = fadd fast float %4955, %4934
  %4961 = fdiv fast float 1.000000e+00, %4960
  %4962 = fmul float %4937, %4961
  %4963 = fmul float %4962, %4962
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = and i32 %4925, %4911
  %4966 = icmp eq i32 %4965, 0
  br i1 %4966, label %4989, label %4967, !dx.controlflow.hints !79

; <label>:4967                                    ; preds = %4914
  %4968 = lshr i32 %4859, 5
  %4969 = lshr i32 %4860, 5
  %4970 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %4968, i32 %4969, i32 %4923, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4971 = extractvalue %dx.types.ResRet.i32 %4970, 0
  %4972 = and i32 %4971, 3
  %4973 = icmp eq i32 %4972, 0
  %4974 = select i1 %4973, float 1.000000e+00, float 0.000000e+00
  %4975 = icmp eq i32 %4972, 3
  br i1 %4975, label %4976, label %4989

; <label>:4976                                    ; preds = %4967
  %4977 = lshr i32 %4971, 10
  %4978 = and i32 %4977, 8160
  %4979 = and i32 %4860, 31
  %4980 = or i32 %4978, %4979
  %4981 = lshr i32 %4971, 1
  %4982 = and i32 %4981, 16352
  %4983 = and i32 %4859, 31
  %4984 = or i32 %4982, %4983
  %4985 = lshr i32 %4971, 23
  %4986 = and i32 %4985, 255
  %4987 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4984, i32 %4980, i32 %4986, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4988 = extractvalue %dx.types.ResRet.f32 %4987, 0
  br label %4989

; <label>:4989                                    ; preds = %4976, %4967, %4914
  %4990 = phi float [ %4988, %4976 ], [ %4974, %4967 ], [ 0.000000e+00, %4914 ]
  %4991 = call float @dx.op.binary.f32(i32 36, float %4990, float %4990)  ; FMin(a,b)
  %4992 = call float @dx.op.binary.f32(i32 36, float %4990, float %4991)  ; FMin(a,b)
  %4993 = fcmp fast ogt float %4992, 0.000000e+00
  br i1 %4993, label %5002, label %4994, !dx.controlflow.hints !80

; <label>:4994                                    ; preds = %5238, %4989
  %4995 = phi float [ %4916, %4989 ], [ %5278, %5238 ]
  %4996 = phi float [ %4917, %4989 ], [ %5279, %5238 ]
  %4997 = phi float [ %4918, %4989 ], [ %5280, %5238 ]
  %4998 = phi float [ %4919, %4989 ], [ %5272, %5238 ]
  %4999 = phi float [ %4920, %4989 ], [ %5273, %5238 ]
  %5000 = phi float [ %4921, %4989 ], [ %5274, %5238 ]
  %5001 = icmp eq i32 %4915, %4925
  br i1 %5001, label %5281, label %4914

; <label>:5002                                    ; preds = %4989
  %5003 = fmul fast float %4990, %4948
  %5004 = fmul fast float %4990, %4949
  %5005 = fmul fast float %4990, %4950
  %5006 = fsub fast float %4942, %4194
  %5007 = fcmp fast ogt float %5006, 0.000000e+00
  %5008 = fsub fast float %139, %4194
  %5009 = fcmp fast ogt float %5008, 0.000000e+00
  %5010 = xor i1 %5009, %5007
  %5011 = fsub fast float %4194, %4942
  %5012 = fmul fast float %5011, 2.000000e+00
  %5013 = fadd fast float %5012, %4942
  %5014 = select i1 %5010, float %4942, float %5013
  %5015 = fsub fast float %5014, %139
  %5016 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %5015, float %4951, float %4952, float %5015)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 25, float %5016)  ; Rsqrt(value)
  %5018 = fmul fast float %5017, %4951
  %5019 = fmul fast float %5017, %4952
  %5020 = fmul fast float %5017, %5015
  %5021 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = fdiv fast float 1.000000e+00, %5022
  %5024 = fmul fast float %5023, %5021
  %5025 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5008, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = fcmp fast ogt float %5025, 0.000000e+00
  %5027 = fcmp fast olt float %5025, 0.000000e+00
  %5028 = zext i1 %5026 to i32
  %5029 = zext i1 %5027 to i32
  %5030 = sub nsw i32 %5028, %5029
  %5031 = sitofp i32 %5030 to float
  %5032 = fsub fast float %5014, %4194
  %5033 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %5032, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = fcmp fast ogt float %5033, 0.000000e+00
  %5035 = fcmp fast olt float %5033, 0.000000e+00
  %5036 = zext i1 %5034 to i32
  %5037 = zext i1 %5035 to i32
  %5038 = sub nsw i32 %5036, %5037
  %5039 = sitofp i32 %5038 to float
  %5040 = fcmp fast une float %5031, %5039
  br i1 %5040, label %5041, label %5051

; <label>:5041                                    ; preds = %5002
  %5042 = fmul fast float %5024, %5020
  %5043 = fmul fast float %5024, %5019
  %5044 = fmul fast float %5024, %5018
  %5045 = fmul fast float %5044, %5044
  %5046 = fmul fast float %5043, %5043
  %5047 = fadd fast float %5045, %5046
  %5048 = fmul fast float %5042, %5042
  %5049 = fadd fast float %5047, %5048
  %5050 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  br label %5063

; <label>:5051                                    ; preds = %5002
  %5052 = icmp slt i32 %5030, 0
  br i1 %5052, label %5053, label %5063

; <label>:5053                                    ; preds = %5051
  %5054 = fsub fast float %137, %4940
  %5055 = fsub fast float %138, %4941
  %5056 = fsub fast float %139, %5014
  %5057 = fmul fast float %5054, %5054
  %5058 = fmul fast float %5055, %5055
  %5059 = fadd fast float %5057, %5058
  %5060 = fmul fast float %5056, %5056
  %5061 = fadd fast float %5059, %5060
  %5062 = call float @dx.op.unary.f32(i32 24, float %5061)  ; Sqrt(value)
  br label %5063

; <label>:5063                                    ; preds = %5053, %5051, %5041
  %5064 = phi float [ %5050, %5041 ], [ %5062, %5053 ], [ 0.000000e+00, %5051 ]
  %5065 = and i1 %5009, %5007
  %5066 = fsub fast float -0.000000e+00, %5064
  %5067 = select i1 %5065, float -0.000000e+00, float %5066
  %5068 = fmul fast float %4195, 0x3FF7154760000000
  %5069 = fmul fast float %5068, %5067
  %5070 = fmul fast float %4196, 0x3FF7154760000000
  %5071 = fmul fast float %5070, %5067
  %5072 = fmul fast float %4197, 0x3FF7154760000000
  %5073 = fmul fast float %5072, %5067
  %5074 = call float @dx.op.unary.f32(i32 21, float %5069)  ; Exp(value)
  %5075 = call float @dx.op.unary.f32(i32 21, float %5071)  ; Exp(value)
  %5076 = call float @dx.op.unary.f32(i32 21, float %5073)  ; Exp(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = fmul fast float %5003, %5077
  %5081 = fmul fast float %5004, %5078
  %5082 = fmul fast float %5005, %5079
  %5083 = fsub fast float %4957, %4394
  %5084 = fsub fast float %4958, %4393
  %5085 = fsub fast float %4959, %4392
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float %5083, float %5084, float %5085)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 25, float %5086)  ; Rsqrt(value)
  %5088 = fmul fast float %5087, %5083
  %5089 = fmul fast float %5087, %5084
  %5090 = fmul fast float %5087, %5085
  %5091 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %4401, float %4402, float %4403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = call float @dx.op.dot3.f32(i32 55, float %4391, float %4390, float %4389, float %5088, float %5089, float %5090)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5094 = fmul fast float %5093, %4964
  %5095 = fmul fast float %5093, %5093
  %5096 = fmul fast float %5095, %4421
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5094, %5097
  %5099 = bitcast float %4954 to i32
  %5100 = ashr i32 %5099, 1
  %5101 = sub nsw i32 1597463007, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5102, %4951
  %5104 = fmul fast float %5102, %4952
  %5105 = fmul fast float %5102, %4953
  %5106 = fsub fast float %5103, %4394
  %5107 = fsub fast float %5104, %4393
  %5108 = fsub fast float %5105, %4392
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float %5106, float %5107, float %5108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = call float @dx.op.unary.f32(i32 25, float %5109)  ; Rsqrt(value)
  %5111 = fmul fast float %5106, %5110
  %5112 = fmul fast float %5107, %5110
  %5113 = fmul fast float %5108, %5110
  %5114 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float %5111, float %5112, float %5113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = fmul fast float %5114, %5114
  %5116 = call float @dx.op.unary.f32(i32 6, float %5091)  ; FAbs(value)
  %5117 = fsub fast float 1.000000e+00, %4404
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0x3F847AE140000000)  ; FMax(a,b)
  %5119 = fmul fast float %5118, %5118
  %5120 = fmul fast float %5119, %5119
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = fmul fast float %4408, %4408
  %5123 = fmul fast float %5122, %5121
  %5124 = fadd fast float %5123, %5120
  %5125 = bitcast float %5124 to i32
  %5126 = ashr i32 %5125, 1
  %5127 = add nsw i32 %5126, 532487669
  %5128 = bitcast i32 %5127 to float
  %5129 = fadd fast float %5128, %4408
  %5130 = fmul fast float %5120, %5115
  %5131 = fsub fast float 1.000000e+00, %5115
  %5132 = fadd fast float %5131, %5130
  %5133 = fmul fast float %5116, %5116
  %5134 = fmul fast float %5133, %5121
  %5135 = fadd fast float %5134, %5120
  %5136 = bitcast float %5135 to i32
  %5137 = ashr i32 %5136, 1
  %5138 = add nsw i32 %5137, 532487669
  %5139 = bitcast i32 %5138 to float
  %5140 = fadd fast float %5139, %5116
  %5141 = fmul fast float %5132, %5132
  %5142 = fmul fast float %5141, %5129
  %5143 = fmul fast float %5142, %5140
  %5144 = fdiv fast float 1.000000e+00, %5143
  %5145 = bitcast float %5120 to i32
  %5146 = sitofp i32 %5145 to float
  %5147 = fmul fast float %5146, 0x3FE7F73180000000
  %5148 = fadd fast float %5147, 0x41AFE27C40000000
  %5149 = fptosi float %5148 to i32
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %4937, 0x3FD80E9D60000000
  %5152 = fmul fast float %5151, %5102
  %5153 = fadd fast float %5150, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5120, %5144
  %5158 = fmul fast float %5157, %5150
  %5159 = fmul fast float %5158, %5156
  %5160 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = bitcast float %5161 to i32
  %5163 = sitofp i32 %5162 to float
  %5164 = fmul fast float %5163, 5.000000e+00
  %5165 = fadd fast float %5164, 0xC1EFBF8940000000
  %5166 = fptosi float %5165 to i32
  %5167 = bitcast i32 %5166 to float
  %5168 = fsub fast float 1.000000e+00, %4395
  %5169 = fsub fast float 1.000000e+00, %4396
  %5170 = fsub fast float 1.000000e+00, %4406
  %5171 = fmul fast float %5167, %5168
  %5172 = fmul fast float %5167, %5169
  %5173 = fmul fast float %5167, %5170
  %5174 = fadd fast float %5171, %4395
  %5175 = fadd fast float %5172, %4396
  %5176 = fadd fast float %5173, %4406
  br i1 %4533, label %5177, label %5200

; <label>:5177                                    ; preds = %5063
  %5178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3793, float %5160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.ResRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.ResRet.f32 %5178, 2
  %5182 = fadd fast float %5179, -5.000000e-01
  %5183 = fadd fast float %5180, -5.000000e-01
  %5184 = fadd fast float %5181, -5.000000e-01
  %5185 = fmul fast float %4395, 4.000000e+00
  %5186 = fmul fast float %5185, %5168
  %5187 = fmul fast float %5186, %5182
  %5188 = fmul fast float %4396, 4.000000e+00
  %5189 = fmul fast float %5188, %5169
  %5190 = fmul fast float %5189, %5183
  %5191 = fmul fast float %4406, 4.000000e+00
  %5192 = fmul fast float %5191, %5170
  %5193 = fmul fast float %5192, %5184
  %5194 = fadd fast float %5187, %5174
  %5195 = fadd fast float %5190, %5175
  %5196 = fadd fast float %5193, %5176
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  br label %5200

; <label>:5200                                    ; preds = %5177, %5063
  %5201 = phi float [ %5197, %5177 ], [ %5174, %5063 ]
  %5202 = phi float [ %5198, %5177 ], [ %5175, %5063 ]
  %5203 = phi float [ %5199, %5177 ], [ %5176, %5063 ]
  %5204 = fmul fast float %5091, 9.843750e-01
  %5205 = fadd fast float %5204, 7.812500e-03
  %5206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5205, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 3
  %5209 = fmul fast float %5207, %4395
  %5210 = fmul fast float %5207, %4396
  %5211 = fmul fast float %5207, %4406
  %5212 = fadd fast float %5209, %5208
  %5213 = fadd fast float %5210, %5208
  %5214 = fadd fast float %5211, %5208
  br i1 %4533, label %5215, label %5238

; <label>:5215                                    ; preds = %5200
  %5216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3793, float %5091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5216, 2
  %5220 = fadd fast float %5217, -5.000000e-01
  %5221 = fadd fast float %5218, -5.000000e-01
  %5222 = fadd fast float %5219, -5.000000e-01
  %5223 = fmul fast float %4395, 4.000000e+00
  %5224 = fmul fast float %5223, %5168
  %5225 = fmul fast float %5224, %5220
  %5226 = fmul fast float %4396, 4.000000e+00
  %5227 = fmul fast float %5226, %5169
  %5228 = fmul fast float %5227, %5221
  %5229 = fmul fast float %4406, 4.000000e+00
  %5230 = fmul fast float %5229, %5170
  %5231 = fmul fast float %5230, %5222
  %5232 = fadd fast float %5225, %5212
  %5233 = fadd fast float %5228, %5213
  %5234 = fadd fast float %5231, %5214
  %5235 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5236 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  br label %5238

; <label>:5238                                    ; preds = %5215, %5200
  %5239 = phi float [ %5235, %5215 ], [ %5212, %5200 ]
  %5240 = phi float [ %5236, %5215 ], [ %5213, %5200 ]
  %5241 = phi float [ %5237, %5215 ], [ %5214, %5200 ]
  %5242 = call float @dx.op.binary.f32(i32 35, float %5240, float %5241)  ; FMax(a,b)
  %5243 = call float @dx.op.binary.f32(i32 35, float %5239, float %5242)  ; FMax(a,b)
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fmul fast float %5201, %5159
  %5246 = fmul fast float %5202, %5159
  %5247 = fmul fast float %5203, %5159
  %5248 = fsub fast float 1.000000e+00, %5092
  %5249 = bitcast float %5248 to i32
  %5250 = sitofp i32 %5249 to float
  %5251 = fmul fast float %5250, 5.000000e+00
  %5252 = fadd fast float %5251, 0xC1EFBF8940000000
  %5253 = fptosi float %5252 to i32
  %5254 = bitcast i32 %5253 to float
  %5255 = fmul fast float %5254, %3794
  %5256 = fmul fast float %5244, %5255
  %5257 = fmul fast float %5256, %4583
  %5258 = fmul fast float %5256, %4584
  %5259 = fmul fast float %5256, %4585
  %5260 = fadd fast float %5257, %5245
  %5261 = fadd fast float %5258, %5246
  %5262 = fadd fast float %5259, %5247
  %5263 = fmul fast float %5080, %3790
  %5264 = fmul fast float %5263, %5098
  %5265 = fmul fast float %5264, %5244
  %5266 = fmul fast float %5081, %3790
  %5267 = fmul fast float %5266, %5098
  %5268 = fmul fast float %5267, %5244
  %5269 = fmul fast float %5082, %3790
  %5270 = fmul fast float %5269, %5098
  %5271 = fmul fast float %5270, %5244
  %5272 = fadd fast float %5265, %4919
  %5273 = fadd fast float %5268, %4920
  %5274 = fadd fast float %5271, %4921
  %5275 = fmul fast float %5264, %5260
  %5276 = fmul fast float %5267, %5261
  %5277 = fmul fast float %5270, %5262
  %5278 = fadd fast float %5275, %4916
  %5279 = fadd fast float %5276, %4917
  %5280 = fadd fast float %5277, %4918
  br label %4994

; <label>:5281                                    ; preds = %4994
  br label %5282

; <label>:5282                                    ; preds = %5281, %4882
  %5283 = phi float [ %4884, %4882 ], [ %4995, %5281 ]
  %5284 = phi float [ %4885, %4882 ], [ %4996, %5281 ]
  %5285 = phi float [ %4886, %4882 ], [ %4997, %5281 ]
  %5286 = phi float [ %4887, %4882 ], [ %4998, %5281 ]
  %5287 = phi float [ %4888, %4882 ], [ %4999, %5281 ]
  %5288 = phi float [ %4889, %4882 ], [ %5000, %5281 ]
  %5289 = add i32 %4883, 1
  %5290 = icmp ugt i32 %5289, %4879
  br i1 %5290, label %5291, label %4882

; <label>:5291                                    ; preds = %5282
  br label %5292

; <label>:5292                                    ; preds = %5291, %4858, %4848
  %5293 = phi float [ %4849, %4848 ], [ %4849, %4858 ], [ %5283, %5291 ]
  %5294 = phi float [ %4850, %4848 ], [ %4850, %4858 ], [ %5284, %5291 ]
  %5295 = phi float [ %4851, %4848 ], [ %4851, %4858 ], [ %5285, %5291 ]
  %5296 = phi float [ %4852, %4848 ], [ %4852, %4858 ], [ %5286, %5291 ]
  %5297 = phi float [ %4853, %4848 ], [ %4853, %4858 ], [ %5287, %5291 ]
  %5298 = phi float [ %4854, %4848 ], [ %4854, %4858 ], [ %5288, %5291 ]
  %5299 = call float @dx.op.unary.f32(i32 24, float %4398)  ; Sqrt(value)
  %5300 = call float @dx.op.unary.f32(i32 24, float %4399)  ; Sqrt(value)
  %5301 = call float @dx.op.unary.f32(i32 24, float %4400)  ; Sqrt(value)
  %5302 = fmul fast float %5299, %5296
  %5303 = fmul fast float %5300, %5297
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  br i1 %179, label %5306, label %5326

; <label>:5306                                    ; preds = %5292
  %5307 = fadd fast float %5298, %3796
  %5308 = fmul fast float %5307, %3797
  %5309 = fsub fast float 1.000000e+00, %3797
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5313 = fmul fast float %5312, %5310
  %5314 = fadd fast float %5313, %5308
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = fmul fast float %5316, %4589
  %5318 = fsub fast float %5314, %5317
  %5319 = fadd fast float %5303, %5302
  %5320 = fmul fast float %5305, %5319
  %5321 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5322 = fsub fast float %5318, %5321
  %5323 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5324 = fmul fast float %5322, %5323
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  br label %5342

; <label>:5326                                    ; preds = %5292
  %5327 = fmul fast float %5301, %5298
  %5328 = fmul fast float %5305, %5302
  %5329 = fmul fast float %5305, %5303
  %5330 = fmul fast float %5327, %5305
  %5331 = add i32 %39, 356
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5331, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = and i32 %5333, 32
  %5335 = icmp eq i32 %5334, 0
  br i1 %5335, label %5342, label %5336

; <label>:5336                                    ; preds = %5326
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = fmul fast float %5338, 0x3FE99999A0000000
  %5340 = fadd fast float %5338, %5328
  %5341 = fadd fast float %5339, %5330
  br label %5342

; <label>:5342                                    ; preds = %5336, %5326, %5306
  %5343 = phi float [ %5320, %5306 ], [ %5340, %5336 ], [ %5328, %5326 ]
  %5344 = phi float [ %5325, %5306 ], [ %5329, %5336 ], [ %5329, %5326 ]
  %5345 = phi float [ 1.000000e+00, %5306 ], [ %5341, %5336 ], [ %5330, %5326 ]
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = fmul fast float %5347, %5294
  %5349 = fmul fast float %5347, %5295
  %5350 = fadd fast float %5294, %5293
  %5351 = select i1 %179, float %5350, float %5293
  %5352 = fmul float %5351, %5347
  %5353 = select i1 %179, float 0.000000e+00, float %5348
  %5354 = select i1 %179, float 0.000000e+00, float %5349
  %5355 = fmul fast float %5343, %5299
  %5356 = fmul fast float %5344, %5300
  %5357 = fmul fast float %5345, %5301
  %5358 = fadd fast float %5352, %5355
  %5359 = fadd fast float %5353, %5356
  %5360 = fadd fast float %5354, %5357
  %5361 = select i1 %179, float %5344, float %5359
  %5362 = select i1 %179, float %5345, float %5360
  %5363 = call float @dx.op.binary.f32(i32 36, float %5358, float 3.225500e+04)  ; FMin(a,b)
  %5364 = call float @dx.op.binary.f32(i32 36, float %5361, float 3.225500e+04)  ; FMin(a,b)
  %5365 = call float @dx.op.binary.f32(i32 36, float %5362, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5363)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5364)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5365)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

