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
; shader hash: e724e4482d247c246c05a7271a3612d7
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
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14             t2     1
;                                   texture     f32          2d     T15             t3     1
;                                   texture     f32          2d     T16             t4     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture    byte         r/o     T22     t16,space1     1
;                                   texture    byte         r/o     T23     t17,space1     1
;                                   texture     f32          2d     T24     t37,space2     1
;                                   texture     f32          2d     T25             t5     1
;                                   texture     f32     2darray     T26     t49,space2     1
;                                   texture     f32          2d     T27     t58,space2     1
;                                   texture     f32          2d     T28     t59,space2     1
;                                   texture     f32          2d     T29     t60,space2     1
;                                   texture    byte         r/o     T30     t45,space1     1
;                                   texture    byte         r/o     T31     t46,space1     1
;                                   texture    byte         r/o     T32     t47,space1     1
;                                   texture    byte         r/o     T33     t48,space1     1
;                                   texture     f32          2d     T34     t57,space2     1
;                                   texture    byte         r/o     T35     t69,space1     1
;                                   texture     f32     2darray     T36     t35,space2     1
;                                   texture     f32          2d     T37     t34,space2     1
;                                   texture     f32          3d     T38     t31,space2     1
;                                   texture    byte         r/o     T39     t10,space1     1
;                                   texture    byte         r/o     T40     t68,space1     1
;                                   texture     f32          2d     T41      t0,space2     1
;                                   texture    byte         r/o     T42     t11,space1     1
;                                   texture    byte         r/o     T43     t13,space1     1
;                                   texture     f32          2d     T44     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %77
  %85 = fmul fast float %83, %78
  %86 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = bitcast float %86 to i32
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 1597250115, %88
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %90, %69
  %92 = fmul fast float %90, %70
  %93 = fmul fast float %90, %71
  %94 = fmul fast float %70, %67
  %95 = fmul fast float %71, %66
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %71, %65
  %98 = fmul fast float %69, %67
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %69, %66
  %101 = fmul fast float %70, %65
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %96, %68
  %104 = fmul fast float %99, %68
  %105 = fmul fast float %102, %68
  %106 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %58
  %112 = fmul fast float %110, %59
  %113 = fmul fast float %110, %60
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %84, 2.000000e+00
  %118 = fmul fast float %117, %115
  %119 = fmul fast float %85, 2.000000e+00
  %120 = fmul fast float %119, %116
  %121 = fsub fast float 1.000000e+00, %118
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %121, %124
  %128 = fmul fast float %121, %125
  %129 = fmul fast float %121, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %122, %131
  %135 = fmul fast float %122, %132
  %136 = fmul fast float %122, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %141, %127
  %143 = fadd fast float %135, %139
  %144 = fadd fast float %143, %128
  %145 = fadd fast float %136, %140
  %146 = fadd fast float %145, %129
  %147 = fmul fast float %142, %79
  %148 = fmul fast float %144, %79
  %149 = fmul fast float %146, %79
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %84
  %154 = fmul fast float %152, %85
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

; <label>:174                                     ; preds = %0
  %175 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %176 = fmul fast float %175, %85
  %177 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %178 = fmul fast float %177, %84
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %44, float %178, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fcmp fast olt float %181, %183
  br label %188

; <label>:185                                     ; preds = %0
  %186 = icmp eq i32 %171, 0
  %187 = and i1 %170, %186
  br label %188

; <label>:188                                     ; preds = %185, %174
  %189 = phi i1 [ %184, %174 ], [ %187, %185 ]
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fmul fast float %191, 0x3FE3C6EF40000000
  %193 = frem fast float %84, 2.560000e+02
  %194 = frem fast float %85, 2.560000e+02
  %195 = fptoui float %193 to i32
  %196 = fptoui float %194 to i32
  %197 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = fadd fast float %198, %192
  %201 = fadd fast float %199, %192
  %202 = call float @dx.op.unary.f32(i32 22, float %200)  ; Frc(value)
  %203 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %204 = add i32 %49, 216
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 255
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F70101020000000
  %210 = lshr i32 %206, 8
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %206, 16
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = add i32 %49, 36
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %220, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = add i32 %49, 288
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %227, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = fmul fast float %229, 0x3F50624DE0000000
  %233 = fmul fast float %231, 0x3F50624DE0000000
  %234 = add i32 %49, 232
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %248 = add i32 %49, 52
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %49, 304
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = add i32 %49, 248
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %49, 68
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %49, 320
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %49, 264
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %49, 84
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %49, 336
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %49, 348
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 32
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %326, 64
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %326, 128
  %332 = icmp eq i32 %331, 0
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 2
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %350, label %337

; <label>:337                                     ; preds = %188
  %338 = add i32 %49, 488
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = add i32 %340, 0
  %342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %342, %dx.types.Handle %81, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = fmul fast float %344, %74
  %348 = fmul fast float %345, %75
  %349 = fmul fast float %346, %76
  br label %350

; <label>:350                                     ; preds = %337, %188
  %351 = phi float [ %76, %188 ], [ %349, %337 ]
  %352 = phi float [ %75, %188 ], [ %348, %337 ]
  %353 = phi float [ %74, %188 ], [ %347, %337 ]
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 2
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %377, label %358

; <label>:358                                     ; preds = %350
  %359 = add i32 %49, 44
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, float %353, float 1.000000e+00
  %365 = add i32 %49, 60
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 1
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %369, float %352, float 1.000000e+00
  %371 = add i32 %49, 76
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %351, float 1.000000e+00
  br label %377

; <label>:377                                     ; preds = %358, %350
  %378 = phi float [ %351, %350 ], [ %376, %358 ]
  %379 = phi float [ %352, %350 ], [ %370, %358 ]
  %380 = phi float [ %353, %350 ], [ %364, %358 ]
  %381 = lshr i32 %355, 20
  %382 = and i32 %381, 3
  %383 = add nuw nsw i32 %382, 1
  %384 = add i32 %49, 24
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %49, 28
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = or i32 %389, %386
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %803, label %392

; <label>:392                                     ; preds = %377
  %393 = and i32 %386, 262144
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %394, float %52, float 1.000000e+00
  %396 = select i1 %394, float %53, float 0.000000e+00
  %397 = select i1 %394, float %54, float 0.000000e+00
  %398 = select i1 %394, float %55, float 1.000000e+00
  %399 = select i1 %394, float %56, float %72
  %400 = select i1 %394, float %57, float %73
  %401 = add i32 %49, 284
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = lshr i32 %403, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = fmul fast float %405, 0x3F50624DE0000000
  %407 = add i32 %49, 88
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = lshr i32 %409, 16
  %411 = and i32 %410, 255
  %412 = lshr i32 %409, 24
  %413 = add i32 %49, 292
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = add i32 %49, 32
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = lshr i32 %422, 22
  %424 = shl nuw nsw i32 %423, 5
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = shl i32 %422, 4
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %422, 7
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 3
  %434 = fmul fast float %433, 1.000000e+03
  %435 = fmul fast float %232, %434
  %436 = call float @dx.op.unary.f32(i32 22, float %435)  ; Frc(value)
  %437 = fadd fast float %436, %222
  %438 = fmul fast float %233, %434
  %439 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %440 = fadd fast float %439, %224
  %441 = fmul fast float %406, %434
  %442 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %443 = fmul fast float %442, 0x401921FB60000000
  %444 = fadd fast float %443, %425
  %445 = call float @dx.op.unary.f32(i32 13, float %444)  ; Sin(value)
  %446 = call float @dx.op.unary.f32(i32 12, float %444)  ; Cos(value)
  %447 = fsub fast float -0.000000e+00, %445
  %448 = fadd fast float %399, -5.000000e-01
  %449 = fadd fast float %400, -5.000000e-01
  %450 = fmul fast float %417, %448
  %451 = fmul fast float %419, %449
  %452 = fadd fast float %450, 5.000000e-01
  %453 = fadd fast float %451, 5.000000e-01
  %454 = fmul fast float %428, %452
  %455 = fmul fast float %431, %453
  %456 = fmul fast float %446, %454
  %457 = call float @dx.op.tertiary.f32(i32 46, float %447, float %455, float %456)  ; FMad(a,b,c)
  %458 = fmul fast float %445, %454
  %459 = call float @dx.op.tertiary.f32(i32 46, float %446, float %455, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %437, %457
  %461 = fadd fast float %440, %459
  %462 = icmp ugt i32 %411, 1
  %463 = icmp ugt i32 %409, 33554431
  %464 = or i1 %463, %462
  br i1 %464, label %465, label %490

; <label>:465                                     ; preds = %392
  %466 = add i32 %49, 228
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 16
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = fmul fast float %433, %470
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = mul nuw nsw i32 %411, %412
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %472, %474
  %476 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %477 = fptoui float %476 to i32
  %478 = urem i32 %477, %411
  %479 = udiv i32 %477, %412
  %480 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %481 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %482 = uitofp i32 %478 to float
  %483 = uitofp i32 %479 to float
  %484 = fadd fast float %480, %482
  %485 = fadd fast float %481, %483
  %486 = uitofp i32 %411 to float
  %487 = uitofp i32 %412 to float
  %488 = fdiv fast float %484, %486
  %489 = fdiv fast float %485, %487
  br label %490

; <label>:490                                     ; preds = %465, %392
  %491 = phi float [ %488, %465 ], [ %460, %392 ]
  %492 = phi float [ %489, %465 ], [ %461, %392 ]
  %493 = and i32 %386, 16
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %691, label %495

; <label>:495                                     ; preds = %490
  %496 = add i32 %49, 376
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = add i32 %498, 0
  %500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %500, %dx.types.Handle %80, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = and i32 %409, 255
  %507 = uitofp i32 %506 to float
  %508 = lshr i32 %409, 8
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %505, %507
  %512 = fadd fast float %511, %510
  %513 = fmul fast float %512, 0x3F70101000000000
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 512
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %526, label %518

; <label>:518                                     ; preds = %495
  %519 = add i32 %49, 456
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = add i32 %521, 0
  %523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %523, %dx.types.Handle %81, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  br label %526

; <label>:526                                     ; preds = %518, %495
  %527 = phi float [ %525, %518 ], [ 1.000000e+00, %495 ]
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 33554432
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %638, label %532

; <label>:532                                     ; preds = %526
  %533 = add i32 %49, 224
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 65535
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %535, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = add i32 %49, 228
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 65535
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 24
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = and i32 %546, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = lshr i32 %546, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %555, 0x3F70101020000000
  %557 = lshr i32 %546, 16
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = add i32 %49, 220
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 24
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = and i32 %563, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %563, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %563, 16
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = bitcast float %502 to i32
  %579 = ashr i32 %578, 1
  %580 = sub nsw i32 1597463174, %579
  %581 = bitcast i32 %580 to float
  %582 = fmul fast float %502, 5.000000e-01
  %583 = fmul fast float %581, %581
  %584 = fmul fast float %583, %582
  %585 = fsub fast float 1.500000e+00, %584
  %586 = fmul fast float %581, %502
  %587 = fmul fast float %586, %585
  %588 = bitcast float %503 to i32
  %589 = ashr i32 %588, 1
  %590 = sub nsw i32 1597463174, %589
  %591 = bitcast i32 %590 to float
  %592 = fmul fast float %503, 5.000000e-01
  %593 = fmul fast float %591, %591
  %594 = fmul fast float %593, %592
  %595 = fsub fast float 1.500000e+00, %594
  %596 = fmul fast float %591, %503
  %597 = fmul fast float %596, %595
  %598 = bitcast float %504 to i32
  %599 = ashr i32 %598, 1
  %600 = sub nsw i32 1597463174, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %504, 5.000000e-01
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %603, %602
  %605 = fsub fast float 1.500000e+00, %604
  %606 = fmul fast float %601, %504
  %607 = fmul fast float %606, %605
  %608 = fsub fast float %587, %569
  %609 = fsub fast float %597, %573
  %610 = fsub fast float %607, %577
  %611 = fmul fast float %608, %537
  %612 = fmul fast float %609, %539
  %613 = fmul fast float %610, %544
  %614 = fadd fast float %611, %552
  %615 = fadd fast float %612, %556
  %616 = fadd fast float %613, %560
  %617 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %618 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %619 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %620 = fmul fast float %617, %617
  %621 = fmul fast float %618, %618
  %622 = fmul fast float %619, %619
  %623 = fsub fast float %620, %502
  %624 = fsub fast float %621, %503
  %625 = fsub fast float %622, %504
  %626 = fmul fast float %623, %527
  %627 = fmul fast float %624, %527
  %628 = fmul fast float %625, %527
  %629 = fadd fast float %626, %502
  %630 = fadd fast float %627, %503
  %631 = fadd fast float %628, %504
  %632 = fadd fast float %549, %513
  %633 = fsub fast float %632, %566
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fsub fast float %634, %513
  %636 = fmul fast float %635, %527
  %637 = fadd fast float %636, %513
  br label %691

; <label>:638                                     ; preds = %526
  %639 = and i32 %529, 134217728
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %675, label %641

; <label>:641                                     ; preds = %638
  %642 = call float @dx.op.unary.f32(i32 24, float %209)  ; Sqrt(value)
  %643 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %644 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %645 = fadd fast float %642, -5.000000e-01
  %646 = fadd fast float %643, -5.000000e-01
  %647 = fadd fast float %644, -5.000000e-01
  %648 = fmul fast float %645, %527
  %649 = fmul fast float %646, %527
  %650 = fmul fast float %647, %527
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fadd fast float %650, 5.000000e-01
  %654 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %655 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %657 = fmul fast float %651, 2.000000e+00
  %658 = fsub fast float 1.000000e+00, %657
  %659 = fmul fast float %658, %654
  %660 = fadd fast float %659, %657
  %661 = fmul fast float %660, %654
  %662 = fmul fast float %652, 2.000000e+00
  %663 = fsub fast float 1.000000e+00, %662
  %664 = fmul fast float %663, %655
  %665 = fadd fast float %664, %662
  %666 = fmul fast float %665, %655
  %667 = fmul fast float %653, 2.000000e+00
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %656
  %670 = fadd fast float %669, %667
  %671 = fmul fast float %670, %656
  %672 = fmul fast float %661, %661
  %673 = fmul fast float %666, %666
  %674 = fmul fast float %671, %671
  br label %691

; <label>:675                                     ; preds = %638
  %676 = fmul fast float %209, %209
  %677 = fmul fast float %213, %213
  %678 = fmul fast float %217, %217
  %679 = fadd fast float %676, -1.000000e+00
  %680 = fadd fast float %677, -1.000000e+00
  %681 = fadd fast float %678, -1.000000e+00
  %682 = fmul fast float %527, %679
  %683 = fmul fast float %527, %680
  %684 = fmul fast float %527, %681
  %685 = fadd fast float %682, 1.000000e+00
  %686 = fadd fast float %683, 1.000000e+00
  %687 = fadd fast float %684, 1.000000e+00
  %688 = fmul fast float %685, %502
  %689 = fmul fast float %686, %503
  %690 = fmul fast float %687, %504
  br label %691

; <label>:691                                     ; preds = %675, %641, %532, %490
  %692 = phi float [ %637, %532 ], [ %513, %641 ], [ %513, %675 ], [ 0x3FA23C0BE0000000, %490 ]
  %693 = phi float [ %629, %532 ], [ %672, %641 ], [ %688, %675 ], [ 1.000000e+00, %490 ]
  %694 = phi float [ %630, %532 ], [ %673, %641 ], [ %689, %675 ], [ 1.000000e+00, %490 ]
  %695 = phi float [ %631, %532 ], [ %674, %641 ], [ %690, %675 ], [ 1.000000e+00, %490 ]
  %696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.i32 %696, 1
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = add i32 %49, 356
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 32
  %704 = icmp ne i32 %703, 0
  %705 = and i1 %699, %704
  %706 = select i1 %705, float 1.000000e+00, float %693
  %707 = select i1 %705, float 0x3FD3333340000000, float %694
  %708 = select i1 %705, float 0x3FD3333340000000, float %695
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 32
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %785, label %713

; <label>:713                                     ; preds = %691
  %714 = add i32 %49, 92
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %49, 392
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %80, float %491, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = extractvalue %dx.types.ResRet.f32 %722, 2
  %726 = extractvalue %dx.types.ResRet.f32 %722, 3
  %727 = and i32 %716, 255
  %728 = uitofp i32 %727 to float
  %729 = lshr i32 %716, 8
  %730 = and i32 %729, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %716, 16
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101000000000
  %736 = fmul fast float %723, %728
  %737 = fadd fast float %736, %731
  %738 = fmul fast float %737, 0x3F70101000000000
  %739 = fadd fast float %724, -5.000000e-01
  %740 = fadd fast float %726, -5.000000e-01
  %741 = fmul fast float %739, %735
  %742 = fmul fast float %740, %735
  %743 = fadd fast float %741, 5.000000e-01
  %744 = fadd fast float %742, 5.000000e-01
  %745 = fmul fast float %743, 2.000000e+00
  %746 = fadd fast float %745, -1.000000e+00
  %747 = fmul fast float %744, 2.000000e+00
  %748 = fadd fast float %747, -1.000000e+00
  %749 = fadd fast float %746, %748
  %750 = fmul fast float %749, 5.000000e-01
  %751 = fsub fast float %746, %748
  %752 = fmul fast float %751, 5.000000e-01
  %753 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %754 = fsub fast float 1.000000e+00, %753
  %755 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %756 = fsub fast float %754, %755
  %757 = call float @dx.op.dot3.f32(i32 55, float %750, float %752, float %756, float %750, float %752, float %756)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.unary.f32(i32 25, float %757)  ; Rsqrt(value)
  %759 = fmul fast float %750, %758
  %760 = fmul fast float %752, %758
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 67108864
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %781, label %765

; <label>:765                                     ; preds = %713
  %766 = add i32 %49, 280
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 65535
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 65535
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = lshr i32 %768, 16
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = fsub fast float %738, %776
  %778 = fmul fast float %777, %770
  %779 = fadd fast float %778, %774
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  br label %781

; <label>:781                                     ; preds = %765, %713
  %782 = phi float [ %780, %765 ], [ %738, %713 ]
  %783 = call float @dx.op.dot2.f32(i32 54, float %759, float %760, float %395, float %396)  ; Dot2(ax,ay,bx,by)
  %784 = call float @dx.op.dot2.f32(i32 54, float %759, float %760, float %397, float %398)  ; Dot2(ax,ay,bx,by)
  br label %785

; <label>:785                                     ; preds = %781, %691
  %786 = phi float [ %782, %781 ], [ 0x3FD6666660000000, %691 ]
  %787 = phi float [ %783, %781 ], [ 0.000000e+00, %691 ]
  %788 = phi float [ %784, %781 ], [ 0.000000e+00, %691 ]
  %789 = phi float [ %725, %781 ], [ 1.000000e+00, %691 ]
  %790 = add i32 %49, 96
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 255
  %794 = uitofp i32 %793 to float
  %795 = lshr i32 %792, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = call float @dx.op.dot3.f32(i32 55, float %706, float %707, float %708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = fmul fast float %797, %798
  %800 = fadd fast float %799, %794
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  br label %803

; <label>:803                                     ; preds = %785, %377
  %804 = phi float [ 0.000000e+00, %377 ], [ %787, %785 ]
  %805 = phi float [ 0.000000e+00, %377 ], [ %788, %785 ]
  %806 = phi float [ 0.000000e+00, %377 ], [ %706, %785 ]
  %807 = phi float [ 0.000000e+00, %377 ], [ %707, %785 ]
  %808 = phi float [ 0.000000e+00, %377 ], [ %708, %785 ]
  %809 = phi float [ 0.000000e+00, %377 ], [ %692, %785 ]
  %810 = phi float [ 0.000000e+00, %377 ], [ 1.000000e+00, %785 ]
  %811 = phi float [ 0.000000e+00, %377 ], [ %786, %785 ]
  %812 = phi float [ 0.000000e+00, %377 ], [ %789, %785 ]
  %813 = phi float [ 0.000000e+00, %377 ], [ %802, %785 ]
  br i1 %328, label %1587, label %814

; <label>:814                                     ; preds = %803
  %815 = icmp ult i32 %383, 2
  %816 = add i32 %49, 40
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %49, 44
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = or i32 %821, %818
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %1587, label %824

; <label>:824                                     ; preds = %814
  %825 = and i32 %818, 262144
  %826 = icmp ne i32 %825, 0
  %827 = select i1 %826, float %52, float 1.000000e+00
  %828 = select i1 %826, float %53, float 0.000000e+00
  %829 = select i1 %826, float %54, float 0.000000e+00
  %830 = select i1 %826, float %55, float 1.000000e+00
  %831 = select i1 %826, float %56, float %72
  %832 = select i1 %826, float %57, float %73
  %833 = add i32 %49, 300
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 16
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fmul fast float %837, 0x3F50624DE0000000
  %839 = add i32 %49, 104
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = lshr i32 %841, 24
  %845 = add i32 %49, 308
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 65535
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = lshr i32 %847, 16
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = add i32 %49, 48
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 22
  %856 = shl nuw nsw i32 %855, 5
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = shl i32 %854, 4
  %859 = and i32 %858, 32752
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = lshr i32 %854, 7
  %862 = and i32 %861, 32752
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 3
  %866 = fmul fast float %865, 1.000000e+03
  %867 = fmul fast float %262, %866
  %868 = call float @dx.op.unary.f32(i32 22, float %867)  ; Frc(value)
  %869 = fadd fast float %868, %252
  %870 = fmul fast float %263, %866
  %871 = call float @dx.op.unary.f32(i32 22, float %870)  ; Frc(value)
  %872 = fadd fast float %871, %254
  %873 = fmul fast float %838, %866
  %874 = call float @dx.op.unary.f32(i32 22, float %873)  ; Frc(value)
  %875 = fmul fast float %874, 0x401921FB60000000
  %876 = fadd fast float %875, %857
  %877 = call float @dx.op.unary.f32(i32 13, float %876)  ; Sin(value)
  %878 = call float @dx.op.unary.f32(i32 12, float %876)  ; Cos(value)
  %879 = fsub fast float -0.000000e+00, %877
  %880 = fadd fast float %831, -5.000000e-01
  %881 = fadd fast float %832, -5.000000e-01
  %882 = fmul fast float %849, %880
  %883 = fmul fast float %851, %881
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fmul fast float %860, %884
  %887 = fmul fast float %863, %885
  %888 = fmul fast float %878, %886
  %889 = call float @dx.op.tertiary.f32(i32 46, float %879, float %887, float %888)  ; FMad(a,b,c)
  %890 = fmul fast float %877, %886
  %891 = call float @dx.op.tertiary.f32(i32 46, float %878, float %887, float %890)  ; FMad(a,b,c)
  %892 = fadd fast float %869, %889
  %893 = fadd fast float %872, %891
  %894 = icmp ugt i32 %843, 1
  %895 = icmp ugt i32 %841, 33554431
  %896 = or i1 %895, %894
  br i1 %896, label %897, label %922

; <label>:897                                     ; preds = %824
  %898 = add i32 %49, 244
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 16
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = fmul fast float %865, %902
  %904 = call float @dx.op.unary.f32(i32 22, float %903)  ; Frc(value)
  %905 = mul nuw nsw i32 %843, %844
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %904, %906
  %908 = call float @dx.op.unary.f32(i32 27, float %907)  ; Round_ni(value)
  %909 = fptoui float %908 to i32
  %910 = urem i32 %909, %843
  %911 = udiv i32 %909, %844
  %912 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %913 = call float @dx.op.unary.f32(i32 22, float %893)  ; Frc(value)
  %914 = uitofp i32 %910 to float
  %915 = uitofp i32 %911 to float
  %916 = fadd fast float %912, %914
  %917 = fadd fast float %913, %915
  %918 = uitofp i32 %843 to float
  %919 = uitofp i32 %844 to float
  %920 = fdiv fast float %916, %918
  %921 = fdiv fast float %917, %919
  br label %922

; <label>:922                                     ; preds = %897, %824
  %923 = phi float [ %920, %897 ], [ %892, %824 ]
  %924 = phi float [ %921, %897 ], [ %893, %824 ]
  %925 = and i32 %818, 16777216
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %1036, label %927

; <label>:927                                     ; preds = %922
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = fadd fast float %929, %147
  %933 = fadd fast float %930, %148
  %934 = fadd fast float %931, %149
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = icmp eq i32 %50, 65535
  br i1 %938, label %1033, label %939

; <label>:939                                     ; preds = %927
  %940 = lshr i32 %50, 1
  %941 = shl i32 %940, 2
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %50, 1
  %945 = icmp ne i32 %944, 0
  %946 = lshr i32 %943, 16
  %947 = and i32 %943, 65535
  %948 = select i1 %945, i32 %946, i32 %947
  %949 = icmp eq i32 %948, 65535
  br i1 %949, label %1029, label %950

; <label>:950                                     ; preds = %939
  %951 = mul nuw nsw i32 %948, 40
  %952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  %954 = extractvalue %dx.types.ResRet.f32 %952, 1
  %955 = extractvalue %dx.types.ResRet.f32 %952, 2
  %956 = add nuw nsw i32 %951, 12
  %957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  %961 = add nuw nsw i32 %951, 24
  %962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = extractvalue %dx.types.ResRet.f32 %962, 1
  %965 = extractvalue %dx.types.ResRet.f32 %962, 2
  %966 = add nuw nsw i32 %951, 36
  %967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = fsub fast float %932, %953
  %970 = fsub fast float %933, %954
  %971 = fsub fast float %934, %955
  %972 = fmul fast float %968, %969
  %973 = fmul fast float %968, %970
  %974 = fmul fast float %968, %971
  %975 = call float @dx.op.unary.f32(i32 27, float %972)  ; Round_ni(value)
  %976 = call float @dx.op.unary.f32(i32 27, float %973)  ; Round_ni(value)
  %977 = call float @dx.op.unary.f32(i32 27, float %974)  ; Round_ni(value)
  %978 = fadd fast float %975, 5.000000e-01
  %979 = fadd fast float %976, 5.000000e-01
  %980 = fadd fast float %977, 5.000000e-01
  %981 = fmul fast float %978, %958
  %982 = fmul fast float %979, %959
  %983 = fmul fast float %980, %960
  %984 = shl i32 %50, 2
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %990 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %991 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %988, %dx.types.Handle %45, float %989, float %990, float %991, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = fmul fast float %993, 1.023000e+03
  %997 = fmul fast float %994, 1.023000e+03
  %998 = fmul fast float %995, 1.023000e+03
  %999 = fadd fast float %996, 5.000000e-01
  %1000 = fadd fast float %997, 5.000000e-01
  %1001 = fadd fast float %998, 5.000000e-01
  %1002 = call float @dx.op.unary.f32(i32 27, float %999)  ; Round_ni(value)
  %1003 = call float @dx.op.unary.f32(i32 27, float %1000)  ; Round_ni(value)
  %1004 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1005 = fsub fast float %972, %975
  %1006 = fsub fast float %973, %976
  %1007 = fsub fast float %974, %977
  %1008 = fmul fast float %1005, 7.500000e-01
  %1009 = fmul fast float %1006, 7.500000e-01
  %1010 = fmul fast float %1007, 7.500000e-01
  %1011 = fadd fast float %975, 1.250000e-01
  %1012 = fadd fast float %1011, %1008
  %1013 = fadd fast float %1012, %1002
  %1014 = fadd fast float %976, 1.250000e-01
  %1015 = fadd fast float %1014, %1009
  %1016 = fadd fast float %1015, %1003
  %1017 = fadd fast float %977, 1.250000e-01
  %1018 = fadd fast float %1017, %1010
  %1019 = fadd fast float %1018, %1004
  %1020 = fmul fast float %1013, %963
  %1021 = fmul fast float %1016, %964
  %1022 = fmul fast float %1019, %965
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = add i32 %1024, 0
  %1026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1026, %dx.types.Handle %43, float %1020, float %1021, float %1022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  br label %1029

; <label>:1029                                    ; preds = %950, %939
  %1030 = phi float [ %1028, %950 ], [ -1.000000e+00, %939 ]
  %1031 = fadd fast float %1030, %937
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  br label %1033

; <label>:1033                                    ; preds = %1029, %927
  %1034 = phi float [ %1032, %1029 ], [ %937, %927 ]
  %1035 = fmul fast float %1034, %380
  br label %1036

; <label>:1036                                    ; preds = %1033, %922
  %1037 = phi float [ %1035, %1033 ], [ %380, %922 ]
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 256
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1088, label %1042

; <label>:1042                                    ; preds = %1036
  %1043 = add i32 %49, 444
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %81, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = add i32 %49, 116
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = shl i32 %1052, 4
  %1054 = and i32 %1053, 32752
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1052, 7
  %1057 = and i32 %1056, 32752
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = fsub fast float 1.000000e+00, %1037
  %1060 = call float @dx.op.binary.f32(i32 35, float %1059, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1061 = bitcast float %1037 to i32
  %1062 = sitofp i32 %1061 to float
  %1063 = fadd fast float %1062, 0xC1CFBF8940000000
  %1064 = fmul fast float %1058, %1063
  %1065 = fadd fast float %1064, 0x41CFBF8940000000
  %1066 = fptosi float %1065 to i32
  %1067 = bitcast i32 %1066 to float
  %1068 = bitcast float %1060 to i32
  %1069 = sitofp i32 %1068 to float
  %1070 = fadd fast float %1069, 0xC1CFBF8940000000
  %1071 = fmul fast float %1070, %1058
  %1072 = fadd fast float %1071, 0x41CFBF8940000000
  %1073 = fptosi float %1072 to i32
  %1074 = bitcast i32 %1073 to float
  %1075 = fmul fast float %1067, %1055
  %1076 = fmul fast float %1074, %1055
  %1077 = fsub fast float %1060, %1075
  %1078 = fadd fast float %1076, %1060
  %1079 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1080 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1081 = fsub fast float %1049, %1079
  %1082 = fsub fast float %1080, %1079
  %1083 = bitcast float %1082 to i32
  %1084 = sub nsw i32 2129859010, %1083
  %1085 = bitcast i32 %1084 to float
  %1086 = fmul fast float %1085, %1081
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  br label %1088

; <label>:1088                                    ; preds = %1042, %1036
  %1089 = phi float [ %1087, %1042 ], [ %1037, %1036 ]
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 128
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1110, label %1094

; <label>:1094                                    ; preds = %1088
  %1095 = add i32 %49, 428
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = add i32 %1097, 0
  %1099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1099, %dx.types.Handle %81, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 524288
  %1105 = icmp ne i32 %1104, 0
  %1106 = fcmp fast ogt float %1101, 0x3FE0101020000000
  %1107 = select i1 %1106, float 1.000000e+00, float 0.000000e+00
  %1108 = select i1 %1105, float %1107, float %1101
  %1109 = fmul fast float %1108, %1089
  br label %1110

; <label>:1110                                    ; preds = %1094, %1088
  %1111 = phi float [ %1109, %1094 ], [ %1089, %1088 ]
  %1112 = fcmp fast ult float %1111, 0x3F70101020000000
  br i1 %1112, label %1587, label %1113

; <label>:1113                                    ; preds = %1110
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 16
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1316, label %1118

; <label>:1118                                    ; preds = %1113
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %49, 380
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1125, %dx.types.Handle %80, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = and i32 %1120, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = lshr i32 %1120, 8
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1130, %1132
  %1137 = fadd fast float %1136, %1135
  %1138 = fmul fast float %1137, 0x3F70101000000000
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 512
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1151, label %1143

; <label>:1143                                    ; preds = %1118
  %1144 = add i32 %49, 460
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1148, %dx.types.Handle %81, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  br label %1151

; <label>:1151                                    ; preds = %1143, %1118
  %1152 = phi float [ %1150, %1143 ], [ 1.000000e+00, %1118 ]
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 33554432
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1263, label %1157

; <label>:1157                                    ; preds = %1151
  %1158 = add i32 %49, 240
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = lshr i32 %1160, 16
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = add i32 %49, 244
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 24
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1173, 0x3F70101020000000
  %1175 = and i32 %1171, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1176, 0x3F70101020000000
  %1178 = lshr i32 %1171, 8
  %1179 = and i32 %1178, 255
  %1180 = uitofp i32 %1179 to float
  %1181 = fmul fast float %1180, 0x3F70101020000000
  %1182 = lshr i32 %1171, 16
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F70101020000000
  %1186 = add i32 %49, 236
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 24
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F70101020000000
  %1192 = and i32 %1188, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F70101020000000
  %1195 = lshr i32 %1188, 8
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F70101020000000
  %1199 = lshr i32 %1188, 16
  %1200 = and i32 %1199, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = bitcast float %1127 to i32
  %1204 = ashr i32 %1203, 1
  %1205 = sub nsw i32 1597463174, %1204
  %1206 = bitcast i32 %1205 to float
  %1207 = fmul fast float %1127, 5.000000e-01
  %1208 = fmul fast float %1206, %1206
  %1209 = fmul fast float %1208, %1207
  %1210 = fsub fast float 1.500000e+00, %1209
  %1211 = fmul fast float %1206, %1127
  %1212 = fmul fast float %1211, %1210
  %1213 = bitcast float %1128 to i32
  %1214 = ashr i32 %1213, 1
  %1215 = sub nsw i32 1597463174, %1214
  %1216 = bitcast i32 %1215 to float
  %1217 = fmul fast float %1128, 5.000000e-01
  %1218 = fmul fast float %1216, %1216
  %1219 = fmul fast float %1218, %1217
  %1220 = fsub fast float 1.500000e+00, %1219
  %1221 = fmul fast float %1216, %1128
  %1222 = fmul fast float %1221, %1220
  %1223 = bitcast float %1129 to i32
  %1224 = ashr i32 %1223, 1
  %1225 = sub nsw i32 1597463174, %1224
  %1226 = bitcast i32 %1225 to float
  %1227 = fmul fast float %1129, 5.000000e-01
  %1228 = fmul fast float %1226, %1226
  %1229 = fmul fast float %1228, %1227
  %1230 = fsub fast float 1.500000e+00, %1229
  %1231 = fmul fast float %1226, %1129
  %1232 = fmul fast float %1231, %1230
  %1233 = fsub fast float %1212, %1194
  %1234 = fsub fast float %1222, %1198
  %1235 = fsub fast float %1232, %1202
  %1236 = fmul fast float %1233, %1162
  %1237 = fmul fast float %1234, %1164
  %1238 = fmul fast float %1235, %1169
  %1239 = fadd fast float %1236, %1177
  %1240 = fadd fast float %1237, %1181
  %1241 = fadd fast float %1238, %1185
  %1242 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1245 = fmul fast float %1242, %1242
  %1246 = fmul fast float %1243, %1243
  %1247 = fmul fast float %1244, %1244
  %1248 = fsub fast float %1245, %1127
  %1249 = fsub fast float %1246, %1128
  %1250 = fsub fast float %1247, %1129
  %1251 = fmul fast float %1248, %1152
  %1252 = fmul fast float %1249, %1152
  %1253 = fmul fast float %1250, %1152
  %1254 = fadd fast float %1251, %1127
  %1255 = fadd fast float %1252, %1128
  %1256 = fadd fast float %1253, %1129
  %1257 = fadd fast float %1174, %1138
  %1258 = fsub fast float %1257, %1191
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fsub fast float %1259, %1138
  %1261 = fmul fast float %1260, %1152
  %1262 = fadd fast float %1261, %1138
  br label %1316

; <label>:1263                                    ; preds = %1151
  %1264 = and i32 %1154, 134217728
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1300, label %1266

; <label>:1266                                    ; preds = %1263
  %1267 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1268 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1269 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1270 = fadd fast float %1267, -5.000000e-01
  %1271 = fadd fast float %1268, -5.000000e-01
  %1272 = fadd fast float %1269, -5.000000e-01
  %1273 = fmul fast float %1270, %1152
  %1274 = fmul fast float %1271, %1152
  %1275 = fmul fast float %1272, %1152
  %1276 = fadd fast float %1273, 5.000000e-01
  %1277 = fadd fast float %1274, 5.000000e-01
  %1278 = fadd fast float %1275, 5.000000e-01
  %1279 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1280 = call float @dx.op.unary.f32(i32 24, float %1128)  ; Sqrt(value)
  %1281 = call float @dx.op.unary.f32(i32 24, float %1129)  ; Sqrt(value)
  %1282 = fmul fast float %1276, 2.000000e+00
  %1283 = fsub fast float 1.000000e+00, %1282
  %1284 = fmul fast float %1283, %1279
  %1285 = fadd fast float %1284, %1282
  %1286 = fmul fast float %1285, %1279
  %1287 = fmul fast float %1277, 2.000000e+00
  %1288 = fsub fast float 1.000000e+00, %1287
  %1289 = fmul fast float %1288, %1280
  %1290 = fadd fast float %1289, %1287
  %1291 = fmul fast float %1290, %1280
  %1292 = fmul fast float %1278, 2.000000e+00
  %1293 = fsub fast float 1.000000e+00, %1292
  %1294 = fmul fast float %1293, %1281
  %1295 = fadd fast float %1294, %1292
  %1296 = fmul fast float %1295, %1281
  %1297 = fmul fast float %1286, %1286
  %1298 = fmul fast float %1291, %1291
  %1299 = fmul fast float %1296, %1296
  br label %1316

; <label>:1300                                    ; preds = %1263
  %1301 = fmul fast float %239, %239
  %1302 = fmul fast float %243, %243
  %1303 = fmul fast float %247, %247
  %1304 = fadd fast float %1301, -1.000000e+00
  %1305 = fadd fast float %1302, -1.000000e+00
  %1306 = fadd fast float %1303, -1.000000e+00
  %1307 = fmul fast float %1152, %1304
  %1308 = fmul fast float %1152, %1305
  %1309 = fmul fast float %1152, %1306
  %1310 = fadd fast float %1307, 1.000000e+00
  %1311 = fadd fast float %1308, 1.000000e+00
  %1312 = fadd fast float %1309, 1.000000e+00
  %1313 = fmul fast float %1310, %1127
  %1314 = fmul fast float %1311, %1128
  %1315 = fmul fast float %1312, %1129
  br label %1316

; <label>:1316                                    ; preds = %1300, %1266, %1157, %1113
  %1317 = phi float [ %1262, %1157 ], [ %1138, %1266 ], [ %1138, %1300 ], [ 0x3FA23C0BE0000000, %1113 ]
  %1318 = phi float [ %1254, %1157 ], [ %1297, %1266 ], [ %1313, %1300 ], [ 1.000000e+00, %1113 ]
  %1319 = phi float [ %1255, %1157 ], [ %1298, %1266 ], [ %1314, %1300 ], [ 1.000000e+00, %1113 ]
  %1320 = phi float [ %1256, %1157 ], [ %1299, %1266 ], [ %1315, %1300 ], [ 1.000000e+00, %1113 ]
  %1321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.i32 %1321, 1
  %1323 = and i32 %1322, 1
  %1324 = icmp ne i32 %1323, 0
  %1325 = add i32 %49, 356
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 32
  %1329 = icmp ne i32 %1328, 0
  %1330 = and i1 %1324, %1329
  %1331 = select i1 %1330, float 1.000000e+00, float %1318
  %1332 = select i1 %1330, float 0x3FD3333340000000, float %1319
  %1333 = select i1 %1330, float 0x3FD3333340000000, float %1320
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 32
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1410, label %1338

; <label>:1338                                    ; preds = %1316
  %1339 = add i32 %49, 108
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %49, 396
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %80, float %923, float %924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = extractvalue %dx.types.ResRet.f32 %1347, 3
  %1352 = and i32 %1341, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = lshr i32 %1341, 8
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = lshr i32 %1341, 16
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101000000000
  %1361 = fmul fast float %1348, %1353
  %1362 = fadd fast float %1361, %1356
  %1363 = fmul fast float %1362, 0x3F70101000000000
  %1364 = fadd fast float %1349, -5.000000e-01
  %1365 = fadd fast float %1351, -5.000000e-01
  %1366 = fmul fast float %1364, %1360
  %1367 = fmul fast float %1365, %1360
  %1368 = fadd fast float %1366, 5.000000e-01
  %1369 = fadd fast float %1367, 5.000000e-01
  %1370 = fmul fast float %1368, 2.000000e+00
  %1371 = fadd fast float %1370, -1.000000e+00
  %1372 = fmul fast float %1369, 2.000000e+00
  %1373 = fadd fast float %1372, -1.000000e+00
  %1374 = fadd fast float %1371, %1373
  %1375 = fmul fast float %1374, 5.000000e-01
  %1376 = fsub fast float %1371, %1373
  %1377 = fmul fast float %1376, 5.000000e-01
  %1378 = call float @dx.op.unary.f32(i32 6, float %1375)  ; FAbs(value)
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1381 = fsub fast float %1379, %1380
  %1382 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1377, float %1381, float %1375, float %1377, float %1381)  ; Dot3(ax,ay,az,bx,by,bz)
  %1383 = call float @dx.op.unary.f32(i32 25, float %1382)  ; Rsqrt(value)
  %1384 = fmul fast float %1375, %1383
  %1385 = fmul fast float %1377, %1383
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 67108864
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1406, label %1390

; <label>:1390                                    ; preds = %1338
  %1391 = add i32 %49, 296
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 65535
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 65535
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = lshr i32 %1393, 16
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = fsub fast float %1363, %1401
  %1403 = fmul fast float %1402, %1395
  %1404 = fadd fast float %1403, %1399
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  br label %1406

; <label>:1406                                    ; preds = %1390, %1338
  %1407 = phi float [ %1405, %1390 ], [ %1363, %1338 ]
  %1408 = call float @dx.op.dot2.f32(i32 54, float %1384, float %1385, float %827, float %828)  ; Dot2(ax,ay,bx,by)
  %1409 = call float @dx.op.dot2.f32(i32 54, float %1384, float %1385, float %829, float %830)  ; Dot2(ax,ay,bx,by)
  br label %1410

; <label>:1410                                    ; preds = %1406, %1316
  %1411 = phi float [ %1407, %1406 ], [ 0x3FD6666660000000, %1316 ]
  %1412 = phi float [ %1408, %1406 ], [ 0.000000e+00, %1316 ]
  %1413 = phi float [ %1409, %1406 ], [ 0.000000e+00, %1316 ]
  %1414 = phi float [ %1350, %1406 ], [ 1.000000e+00, %1316 ]
  %1415 = add i32 %49, 112
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = lshr i32 %1417, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1331, float %1332, float %1333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = fmul fast float %1422, %1423
  %1425 = fadd fast float %1424, %1419
  %1426 = fmul fast float %1425, 0x3F70101020000000
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  br i1 %815, label %1428, label %1433

; <label>:1428                                    ; preds = %1410
  %1429 = fsub fast float 1.000000e+00, %1111
  %1430 = fmul fast float %1429, %806
  %1431 = fmul fast float %1429, %807
  %1432 = fmul fast float %1429, %808
  br label %1433

; <label>:1433                                    ; preds = %1428, %1410
  %1434 = phi float [ %1430, %1428 ], [ %806, %1410 ]
  %1435 = phi float [ %1431, %1428 ], [ %807, %1410 ]
  %1436 = phi float [ %1432, %1428 ], [ %808, %1410 ]
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 3
  %1440 = icmp eq i32 %1439, 3
  br i1 %1440, label %1507, label %1441

; <label>:1441                                    ; preds = %1433
  %1442 = and i32 %1438, 16
  %1443 = icmp ne i32 %1442, 0
  %1444 = select i1 %1443, float %1111, float 0.000000e+00
  %1445 = icmp eq i32 %1439, 0
  br i1 %1445, label %1446, label %1462

; <label>:1446                                    ; preds = %1441
  %1447 = fsub fast float %1331, %1434
  %1448 = fsub fast float %1332, %1435
  %1449 = fsub fast float %1333, %1436
  %1450 = fmul fast float %1444, %1447
  %1451 = fmul fast float %1444, %1448
  %1452 = fmul fast float %1444, %1449
  %1453 = fadd fast float %1450, %1434
  %1454 = fadd fast float %1451, %1435
  %1455 = fadd fast float %1452, %1436
  %1456 = fsub fast float %1317, %809
  %1457 = fmul fast float %1444, %1456
  %1458 = fadd fast float %1457, %809
  %1459 = fsub fast float %1427, %813
  %1460 = fmul fast float %1444, %1459
  %1461 = fadd fast float %1460, %813
  br label %1507

; <label>:1462                                    ; preds = %1441
  %1463 = icmp eq i32 %1439, 1
  br i1 %1463, label %1464, label %1477

; <label>:1464                                    ; preds = %1462
  %1465 = fadd fast float %1331, -1.000000e+00
  %1466 = fadd fast float %1332, -1.000000e+00
  %1467 = fadd fast float %1333, -1.000000e+00
  %1468 = fmul fast float %1444, %1465
  %1469 = fmul fast float %1444, %1466
  %1470 = fmul fast float %1444, %1467
  %1471 = fadd fast float %1468, 1.000000e+00
  %1472 = fadd fast float %1469, 1.000000e+00
  %1473 = fadd fast float %1470, 1.000000e+00
  %1474 = fmul fast float %1471, %1434
  %1475 = fmul fast float %1472, %1435
  %1476 = fmul fast float %1473, %1436
  br label %1507

; <label>:1477                                    ; preds = %1462
  %1478 = icmp eq i32 %1439, 2
  br i1 %1478, label %1479, label %1507

; <label>:1479                                    ; preds = %1477
  %1480 = call float @dx.op.unary.f32(i32 24, float %1331)  ; Sqrt(value)
  %1481 = call float @dx.op.unary.f32(i32 24, float %1332)  ; Sqrt(value)
  %1482 = call float @dx.op.unary.f32(i32 24, float %1333)  ; Sqrt(value)
  %1483 = fadd fast float %1480, -5.000000e-01
  %1484 = fadd fast float %1481, -5.000000e-01
  %1485 = fadd fast float %1482, -5.000000e-01
  %1486 = fmul fast float %1483, %1444
  %1487 = fmul fast float %1484, %1444
  %1488 = fmul fast float %1485, %1444
  %1489 = fadd fast float %1486, 5.000000e-01
  %1490 = fadd fast float %1487, 5.000000e-01
  %1491 = fadd fast float %1488, 5.000000e-01
  %1492 = fmul fast float %1489, 2.000000e+00
  %1493 = fsub fast float 1.000000e+00, %1492
  %1494 = fmul fast float %1493, %1434
  %1495 = fadd fast float %1494, %1492
  %1496 = fmul fast float %1495, %1434
  %1497 = fmul fast float %1490, 2.000000e+00
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = fmul fast float %1498, %1435
  %1500 = fadd fast float %1499, %1497
  %1501 = fmul fast float %1500, %1435
  %1502 = fmul fast float %1491, 2.000000e+00
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = fmul fast float %1503, %1436
  %1505 = fadd fast float %1504, %1502
  %1506 = fmul fast float %1505, %1436
  br label %1507

; <label>:1507                                    ; preds = %1479, %1477, %1464, %1446, %1433
  %1508 = phi float [ %1434, %1433 ], [ %1496, %1479 ], [ %1434, %1477 ], [ %1474, %1464 ], [ %1453, %1446 ]
  %1509 = phi float [ %1435, %1433 ], [ %1501, %1479 ], [ %1435, %1477 ], [ %1475, %1464 ], [ %1454, %1446 ]
  %1510 = phi float [ %1436, %1433 ], [ %1506, %1479 ], [ %1436, %1477 ], [ %1476, %1464 ], [ %1455, %1446 ]
  %1511 = phi float [ %809, %1433 ], [ %809, %1479 ], [ %809, %1477 ], [ %809, %1464 ], [ %1458, %1446 ]
  %1512 = phi float [ %813, %1433 ], [ %813, %1479 ], [ %813, %1477 ], [ %813, %1464 ], [ %1461, %1446 ]
  %1513 = and i32 %1438, 12
  %1514 = icmp eq i32 %1513, 12
  br i1 %1514, label %1587, label %1515

; <label>:1515                                    ; preds = %1507
  %1516 = and i32 %1438, 2097184
  %1517 = icmp eq i32 %1516, 2097184
  %1518 = select i1 %1517, float %1111, float 0.000000e+00
  %1519 = and i32 %1438, 4194336
  %1520 = icmp eq i32 %1519, 4194336
  %1521 = select i1 %1520, float %1111, float 0.000000e+00
  %1522 = and i32 %1438, 8388640
  %1523 = icmp eq i32 %1522, 8388640
  %1524 = select i1 %1523, float %1111, float 0.000000e+00
  %1525 = icmp eq i32 %1513, 0
  br i1 %1525, label %1526, label %1539

; <label>:1526                                    ; preds = %1515
  %1527 = fsub fast float %1412, %804
  %1528 = fsub fast float %1413, %805
  %1529 = fmul fast float %1518, %1527
  %1530 = fmul fast float %1518, %1528
  %1531 = fadd fast float %1529, %804
  %1532 = fadd fast float %1530, %805
  %1533 = fsub fast float %1414, %812
  %1534 = fmul fast float %1521, %1533
  %1535 = fadd fast float %1534, %812
  %1536 = fsub fast float %1411, %811
  %1537 = fmul fast float %1524, %1536
  %1538 = fadd fast float %1537, %811
  br label %1587

; <label>:1539                                    ; preds = %1515
  %1540 = icmp eq i32 %1513, 4
  br i1 %1540, label %1541, label %1573

; <label>:1541                                    ; preds = %1539
  %1542 = fmul fast float %1518, %1412
  %1543 = fmul fast float %1518, %1413
  %1544 = fadd fast float %1542, %804
  %1545 = fadd fast float %1543, %805
  %1546 = call float @dx.op.binary.f32(i32 36, float %812, float %1414)  ; FMin(a,b)
  %1547 = fsub fast float %1546, %812
  %1548 = fmul fast float %1547, %1521
  %1549 = fadd fast float %1548, %812
  %1550 = fadd fast float %1411, %811
  %1551 = fmul fast float %1550, 0x3FF337FAE0000000
  %1552 = fmul fast float %811, %811
  %1553 = fmul fast float %1411, %1411
  %1554 = fadd fast float %1553, %1552
  %1555 = fmul fast float %1554, 0x3FE5152B00000000
  %1556 = fmul fast float %811, 0xBFCC1F85E0000000
  %1557 = fmul fast float %1556, %1411
  %1558 = fadd fast float %1557, 0xBFE1363700000000
  %1559 = fadd fast float %1558, %1551
  %1560 = fsub fast float %1559, %1555
  %1561 = fmul fast float %1550, 0x3FBA6F0D00000000
  %1562 = fmul fast float %1554, 0x3FD0432880000000
  %1563 = fmul fast float %811, 0xBFEF110800000000
  %1564 = fmul fast float %1563, %1411
  %1565 = fadd fast float %1564, 1.000000e+00
  %1566 = fsub fast float %1565, %1561
  %1567 = fadd fast float %1566, %1562
  %1568 = fdiv fast float %1560, %1567
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fsub fast float %1569, %811
  %1571 = fmul fast float %1570, %1524
  %1572 = fadd fast float %1571, %811
  br label %1587

; <label>:1573                                    ; preds = %1539
  %1574 = icmp eq i32 %1513, 8
  br i1 %1574, label %1575, label %1587

; <label>:1575                                    ; preds = %1573
  %1576 = fmul fast float %1518, %1412
  %1577 = fmul fast float %1518, %1413
  %1578 = fadd fast float %1576, %804
  %1579 = fadd fast float %1577, %805
  %1580 = call float @dx.op.binary.f32(i32 36, float %812, float %1414)  ; FMin(a,b)
  %1581 = fsub fast float %1580, %812
  %1582 = fmul fast float %1581, %1521
  %1583 = fadd fast float %1582, %812
  %1584 = fsub fast float %1411, %811
  %1585 = fmul fast float %1524, %1584
  %1586 = fadd fast float %1585, %811
  br label %1587

; <label>:1587                                    ; preds = %1575, %1573, %1541, %1526, %1507, %1110, %814, %803
  %1588 = phi float [ %804, %1507 ], [ %804, %1110 ], [ %804, %803 ], [ %1578, %1575 ], [ %804, %1573 ], [ %1544, %1541 ], [ %1531, %1526 ], [ %804, %814 ]
  %1589 = phi float [ %805, %1507 ], [ %805, %1110 ], [ %805, %803 ], [ %1579, %1575 ], [ %805, %1573 ], [ %1545, %1541 ], [ %1532, %1526 ], [ %805, %814 ]
  %1590 = phi float [ %1508, %1507 ], [ %806, %1110 ], [ %806, %803 ], [ %1508, %1575 ], [ %1508, %1573 ], [ %1508, %1541 ], [ %1508, %1526 ], [ %806, %814 ]
  %1591 = phi float [ %1509, %1507 ], [ %807, %1110 ], [ %807, %803 ], [ %1509, %1575 ], [ %1509, %1573 ], [ %1509, %1541 ], [ %1509, %1526 ], [ %807, %814 ]
  %1592 = phi float [ %1510, %1507 ], [ %808, %1110 ], [ %808, %803 ], [ %1510, %1575 ], [ %1510, %1573 ], [ %1510, %1541 ], [ %1510, %1526 ], [ %808, %814 ]
  %1593 = phi float [ %1511, %1507 ], [ %809, %1110 ], [ %809, %803 ], [ %1511, %1575 ], [ %1511, %1573 ], [ %1511, %1541 ], [ %1511, %1526 ], [ %809, %814 ]
  %1594 = phi float [ %811, %1507 ], [ %811, %1110 ], [ %811, %803 ], [ %1586, %1575 ], [ %811, %1573 ], [ %1572, %1541 ], [ %1538, %1526 ], [ %811, %814 ]
  %1595 = phi float [ %812, %1507 ], [ %812, %1110 ], [ %812, %803 ], [ %1583, %1575 ], [ %812, %1573 ], [ %1549, %1541 ], [ %1535, %1526 ], [ %812, %814 ]
  %1596 = phi float [ %1512, %1507 ], [ %813, %1110 ], [ %813, %803 ], [ %1512, %1575 ], [ %1512, %1573 ], [ %1512, %1541 ], [ %1512, %1526 ], [ %813, %814 ]
  br i1 %330, label %2370, label %1597

; <label>:1597                                    ; preds = %1587
  %1598 = icmp ult i32 %383, 3
  %1599 = add i32 %49, 56
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %49, 60
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = or i32 %1604, %1601
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %2370, label %1607

; <label>:1607                                    ; preds = %1597
  %1608 = and i32 %1601, 262144
  %1609 = icmp ne i32 %1608, 0
  %1610 = select i1 %1609, float %52, float 1.000000e+00
  %1611 = select i1 %1609, float %53, float 0.000000e+00
  %1612 = select i1 %1609, float %54, float 0.000000e+00
  %1613 = select i1 %1609, float %55, float 1.000000e+00
  %1614 = select i1 %1609, float %56, float %72
  %1615 = select i1 %1609, float %57, float %73
  %1616 = add i32 %49, 316
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = lshr i32 %1618, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = fmul fast float %1620, 0x3F50624DE0000000
  %1622 = add i32 %49, 120
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = lshr i32 %1624, 16
  %1626 = and i32 %1625, 255
  %1627 = lshr i32 %1624, 24
  %1628 = add i32 %49, 324
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 65535
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = lshr i32 %1630, 16
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = add i32 %49, 64
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = lshr i32 %1637, 22
  %1639 = shl nuw nsw i32 %1638, 5
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = shl i32 %1637, 4
  %1642 = and i32 %1641, 32752
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = lshr i32 %1637, 7
  %1645 = and i32 %1644, 32752
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1649 = fmul fast float %1648, 1.000000e+03
  %1650 = fmul fast float %292, %1649
  %1651 = call float @dx.op.unary.f32(i32 22, float %1650)  ; Frc(value)
  %1652 = fadd fast float %1651, %282
  %1653 = fmul fast float %293, %1649
  %1654 = call float @dx.op.unary.f32(i32 22, float %1653)  ; Frc(value)
  %1655 = fadd fast float %1654, %284
  %1656 = fmul fast float %1621, %1649
  %1657 = call float @dx.op.unary.f32(i32 22, float %1656)  ; Frc(value)
  %1658 = fmul fast float %1657, 0x401921FB60000000
  %1659 = fadd fast float %1658, %1640
  %1660 = call float @dx.op.unary.f32(i32 13, float %1659)  ; Sin(value)
  %1661 = call float @dx.op.unary.f32(i32 12, float %1659)  ; Cos(value)
  %1662 = fsub fast float -0.000000e+00, %1660
  %1663 = fadd fast float %1614, -5.000000e-01
  %1664 = fadd fast float %1615, -5.000000e-01
  %1665 = fmul fast float %1632, %1663
  %1666 = fmul fast float %1634, %1664
  %1667 = fadd fast float %1665, 5.000000e-01
  %1668 = fadd fast float %1666, 5.000000e-01
  %1669 = fmul fast float %1643, %1667
  %1670 = fmul fast float %1646, %1668
  %1671 = fmul fast float %1661, %1669
  %1672 = call float @dx.op.tertiary.f32(i32 46, float %1662, float %1670, float %1671)  ; FMad(a,b,c)
  %1673 = fmul fast float %1660, %1669
  %1674 = call float @dx.op.tertiary.f32(i32 46, float %1661, float %1670, float %1673)  ; FMad(a,b,c)
  %1675 = fadd fast float %1652, %1672
  %1676 = fadd fast float %1655, %1674
  %1677 = icmp ugt i32 %1626, 1
  %1678 = icmp ugt i32 %1624, 33554431
  %1679 = or i1 %1678, %1677
  br i1 %1679, label %1680, label %1705

; <label>:1680                                    ; preds = %1607
  %1681 = add i32 %49, 260
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = lshr i32 %1683, 16
  %1685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1684)  ; LegacyF16ToF32(value)
  %1686 = fmul fast float %1648, %1685
  %1687 = call float @dx.op.unary.f32(i32 22, float %1686)  ; Frc(value)
  %1688 = mul nuw nsw i32 %1626, %1627
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1687, %1689
  %1691 = call float @dx.op.unary.f32(i32 27, float %1690)  ; Round_ni(value)
  %1692 = fptoui float %1691 to i32
  %1693 = urem i32 %1692, %1626
  %1694 = udiv i32 %1692, %1627
  %1695 = call float @dx.op.unary.f32(i32 22, float %1675)  ; Frc(value)
  %1696 = call float @dx.op.unary.f32(i32 22, float %1676)  ; Frc(value)
  %1697 = uitofp i32 %1693 to float
  %1698 = uitofp i32 %1694 to float
  %1699 = fadd fast float %1695, %1697
  %1700 = fadd fast float %1696, %1698
  %1701 = uitofp i32 %1626 to float
  %1702 = uitofp i32 %1627 to float
  %1703 = fdiv fast float %1699, %1701
  %1704 = fdiv fast float %1700, %1702
  br label %1705

; <label>:1705                                    ; preds = %1680, %1607
  %1706 = phi float [ %1703, %1680 ], [ %1675, %1607 ]
  %1707 = phi float [ %1704, %1680 ], [ %1676, %1607 ]
  %1708 = and i32 %1601, 16777216
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1819, label %1710

; <label>:1710                                    ; preds = %1705
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1715 = fadd fast float %1712, %147
  %1716 = fadd fast float %1713, %148
  %1717 = fadd fast float %1714, %149
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = icmp eq i32 %50, 65535
  br i1 %1721, label %1816, label %1722

; <label>:1722                                    ; preds = %1710
  %1723 = lshr i32 %50, 1
  %1724 = shl i32 %1723, 2
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %50, 1
  %1728 = icmp ne i32 %1727, 0
  %1729 = lshr i32 %1726, 16
  %1730 = and i32 %1726, 65535
  %1731 = select i1 %1728, i32 %1729, i32 %1730
  %1732 = icmp eq i32 %1731, 65535
  br i1 %1732, label %1812, label %1733

; <label>:1733                                    ; preds = %1722
  %1734 = mul nuw nsw i32 %1731, 40
  %1735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = add nuw nsw i32 %1734, 12
  %1740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.ResRet.f32 %1740, 2
  %1744 = add nuw nsw i32 %1734, 24
  %1745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.ResRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.ResRet.f32 %1745, 2
  %1749 = add nuw nsw i32 %1734, 36
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = fsub fast float %1715, %1736
  %1753 = fsub fast float %1716, %1737
  %1754 = fsub fast float %1717, %1738
  %1755 = fmul fast float %1751, %1752
  %1756 = fmul fast float %1751, %1753
  %1757 = fmul fast float %1751, %1754
  %1758 = call float @dx.op.unary.f32(i32 27, float %1755)  ; Round_ni(value)
  %1759 = call float @dx.op.unary.f32(i32 27, float %1756)  ; Round_ni(value)
  %1760 = call float @dx.op.unary.f32(i32 27, float %1757)  ; Round_ni(value)
  %1761 = fadd fast float %1758, 5.000000e-01
  %1762 = fadd fast float %1759, 5.000000e-01
  %1763 = fadd fast float %1760, 5.000000e-01
  %1764 = fmul fast float %1761, %1741
  %1765 = fmul fast float %1762, %1742
  %1766 = fmul fast float %1763, %1743
  %1767 = shl i32 %50, 2
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = add i32 %1769, 0
  %1771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1772 = call float @dx.op.unary.f32(i32 22, float %1764)  ; Frc(value)
  %1773 = call float @dx.op.unary.f32(i32 22, float %1765)  ; Frc(value)
  %1774 = call float @dx.op.unary.f32(i32 22, float %1766)  ; Frc(value)
  %1775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1771, %dx.types.Handle %45, float %1772, float %1773, float %1774, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = fmul fast float %1776, 1.023000e+03
  %1780 = fmul fast float %1777, 1.023000e+03
  %1781 = fmul fast float %1778, 1.023000e+03
  %1782 = fadd fast float %1779, 5.000000e-01
  %1783 = fadd fast float %1780, 5.000000e-01
  %1784 = fadd fast float %1781, 5.000000e-01
  %1785 = call float @dx.op.unary.f32(i32 27, float %1782)  ; Round_ni(value)
  %1786 = call float @dx.op.unary.f32(i32 27, float %1783)  ; Round_ni(value)
  %1787 = call float @dx.op.unary.f32(i32 27, float %1784)  ; Round_ni(value)
  %1788 = fsub fast float %1755, %1758
  %1789 = fsub fast float %1756, %1759
  %1790 = fsub fast float %1757, %1760
  %1791 = fmul fast float %1788, 7.500000e-01
  %1792 = fmul fast float %1789, 7.500000e-01
  %1793 = fmul fast float %1790, 7.500000e-01
  %1794 = fadd fast float %1758, 1.250000e-01
  %1795 = fadd fast float %1794, %1791
  %1796 = fadd fast float %1795, %1785
  %1797 = fadd fast float %1759, 1.250000e-01
  %1798 = fadd fast float %1797, %1792
  %1799 = fadd fast float %1798, %1786
  %1800 = fadd fast float %1760, 1.250000e-01
  %1801 = fadd fast float %1800, %1793
  %1802 = fadd fast float %1801, %1787
  %1803 = fmul fast float %1796, %1746
  %1804 = fmul fast float %1799, %1747
  %1805 = fmul fast float %1802, %1748
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1807, 0
  %1809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1809, %dx.types.Handle %43, float %1803, float %1804, float %1805, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  br label %1812

; <label>:1812                                    ; preds = %1733, %1722
  %1813 = phi float [ %1811, %1733 ], [ -1.000000e+00, %1722 ]
  %1814 = fadd fast float %1813, %1720
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  br label %1816

; <label>:1816                                    ; preds = %1812, %1710
  %1817 = phi float [ %1815, %1812 ], [ %1720, %1710 ]
  %1818 = fmul fast float %1817, %379
  br label %1819

; <label>:1819                                    ; preds = %1816, %1705
  %1820 = phi float [ %1818, %1816 ], [ %379, %1705 ]
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 256
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1871, label %1825

; <label>:1825                                    ; preds = %1819
  %1826 = add i32 %49, 448
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = add i32 %1828, 0
  %1830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1830, %dx.types.Handle %81, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1832 = extractvalue %dx.types.ResRet.f32 %1831, 0
  %1833 = add i32 %49, 132
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = shl i32 %1835, 4
  %1837 = and i32 %1836, 32752
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = lshr i32 %1835, 7
  %1840 = and i32 %1839, 32752
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = fsub fast float 1.000000e+00, %1820
  %1843 = call float @dx.op.binary.f32(i32 35, float %1842, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1844 = bitcast float %1820 to i32
  %1845 = sitofp i32 %1844 to float
  %1846 = fadd fast float %1845, 0xC1CFBF8940000000
  %1847 = fmul fast float %1841, %1846
  %1848 = fadd fast float %1847, 0x41CFBF8940000000
  %1849 = fptosi float %1848 to i32
  %1850 = bitcast i32 %1849 to float
  %1851 = bitcast float %1843 to i32
  %1852 = sitofp i32 %1851 to float
  %1853 = fadd fast float %1852, 0xC1CFBF8940000000
  %1854 = fmul fast float %1853, %1841
  %1855 = fadd fast float %1854, 0x41CFBF8940000000
  %1856 = fptosi float %1855 to i32
  %1857 = bitcast i32 %1856 to float
  %1858 = fmul fast float %1850, %1838
  %1859 = fmul fast float %1857, %1838
  %1860 = fsub fast float %1843, %1858
  %1861 = fadd fast float %1859, %1843
  %1862 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  %1863 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1864 = fsub fast float %1832, %1862
  %1865 = fsub fast float %1863, %1862
  %1866 = bitcast float %1865 to i32
  %1867 = sub nsw i32 2129859010, %1866
  %1868 = bitcast i32 %1867 to float
  %1869 = fmul fast float %1868, %1864
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  br label %1871

; <label>:1871                                    ; preds = %1825, %1819
  %1872 = phi float [ %1870, %1825 ], [ %1820, %1819 ]
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 128
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1893, label %1877

; <label>:1877                                    ; preds = %1871
  %1878 = add i32 %49, 432
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = add i32 %1880, 0
  %1882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1882, %dx.types.Handle %81, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 524288
  %1888 = icmp ne i32 %1887, 0
  %1889 = fcmp fast ogt float %1884, 0x3FE0101020000000
  %1890 = select i1 %1889, float 1.000000e+00, float 0.000000e+00
  %1891 = select i1 %1888, float %1890, float %1884
  %1892 = fmul fast float %1891, %1872
  br label %1893

; <label>:1893                                    ; preds = %1877, %1871
  %1894 = phi float [ %1892, %1877 ], [ %1872, %1871 ]
  %1895 = fcmp fast ult float %1894, 0x3F70101020000000
  br i1 %1895, label %2370, label %1896

; <label>:1896                                    ; preds = %1893
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 16
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %2099, label %1901

; <label>:1901                                    ; preds = %1896
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = add i32 %49, 384
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = add i32 %1906, 0
  %1908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1908, %dx.types.Handle %80, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = extractvalue %dx.types.ResRet.f32 %1909, 3
  %1914 = and i32 %1903, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = lshr i32 %1903, 8
  %1917 = and i32 %1916, 255
  %1918 = uitofp i32 %1917 to float
  %1919 = fmul fast float %1913, %1915
  %1920 = fadd fast float %1919, %1918
  %1921 = fmul fast float %1920, 0x3F70101000000000
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = and i32 %1923, 512
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1934, label %1926

; <label>:1926                                    ; preds = %1901
  %1927 = add i32 %49, 464
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = add i32 %1929, 0
  %1931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1931, %dx.types.Handle %81, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  br label %1934

; <label>:1934                                    ; preds = %1926, %1901
  %1935 = phi float [ %1933, %1926 ], [ 1.000000e+00, %1901 ]
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = and i32 %1937, 33554432
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %2046, label %1940

; <label>:1940                                    ; preds = %1934
  %1941 = add i32 %49, 256
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = and i32 %1943, 65535
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = lshr i32 %1943, 16
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = add i32 %49, 260
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 65535
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = lshr i32 %1954, 24
  %1956 = uitofp i32 %1955 to float
  %1957 = fmul fast float %1956, 0x3F70101020000000
  %1958 = and i32 %1954, 255
  %1959 = uitofp i32 %1958 to float
  %1960 = fmul fast float %1959, 0x3F70101020000000
  %1961 = lshr i32 %1954, 8
  %1962 = and i32 %1961, 255
  %1963 = uitofp i32 %1962 to float
  %1964 = fmul fast float %1963, 0x3F70101020000000
  %1965 = lshr i32 %1954, 16
  %1966 = and i32 %1965, 255
  %1967 = uitofp i32 %1966 to float
  %1968 = fmul fast float %1967, 0x3F70101020000000
  %1969 = add i32 %49, 252
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = lshr i32 %1971, 24
  %1973 = uitofp i32 %1972 to float
  %1974 = fmul fast float %1973, 0x3F70101020000000
  %1975 = and i32 %1971, 255
  %1976 = uitofp i32 %1975 to float
  %1977 = fmul fast float %1976, 0x3F70101020000000
  %1978 = lshr i32 %1971, 8
  %1979 = and i32 %1978, 255
  %1980 = uitofp i32 %1979 to float
  %1981 = fmul fast float %1980, 0x3F70101020000000
  %1982 = lshr i32 %1971, 16
  %1983 = and i32 %1982, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F70101020000000
  %1986 = bitcast float %1910 to i32
  %1987 = ashr i32 %1986, 1
  %1988 = sub nsw i32 1597463174, %1987
  %1989 = bitcast i32 %1988 to float
  %1990 = fmul fast float %1910, 5.000000e-01
  %1991 = fmul fast float %1989, %1989
  %1992 = fmul fast float %1991, %1990
  %1993 = fsub fast float 1.500000e+00, %1992
  %1994 = fmul fast float %1989, %1910
  %1995 = fmul fast float %1994, %1993
  %1996 = bitcast float %1911 to i32
  %1997 = ashr i32 %1996, 1
  %1998 = sub nsw i32 1597463174, %1997
  %1999 = bitcast i32 %1998 to float
  %2000 = fmul fast float %1911, 5.000000e-01
  %2001 = fmul fast float %1999, %1999
  %2002 = fmul fast float %2001, %2000
  %2003 = fsub fast float 1.500000e+00, %2002
  %2004 = fmul fast float %1999, %1911
  %2005 = fmul fast float %2004, %2003
  %2006 = bitcast float %1912 to i32
  %2007 = ashr i32 %2006, 1
  %2008 = sub nsw i32 1597463174, %2007
  %2009 = bitcast i32 %2008 to float
  %2010 = fmul fast float %1912, 5.000000e-01
  %2011 = fmul fast float %2009, %2009
  %2012 = fmul fast float %2011, %2010
  %2013 = fsub fast float 1.500000e+00, %2012
  %2014 = fmul fast float %2009, %1912
  %2015 = fmul fast float %2014, %2013
  %2016 = fsub fast float %1995, %1977
  %2017 = fsub fast float %2005, %1981
  %2018 = fsub fast float %2015, %1985
  %2019 = fmul fast float %2016, %1945
  %2020 = fmul fast float %2017, %1947
  %2021 = fmul fast float %2018, %1952
  %2022 = fadd fast float %2019, %1960
  %2023 = fadd fast float %2020, %1964
  %2024 = fadd fast float %2021, %1968
  %2025 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2028 = fmul fast float %2025, %2025
  %2029 = fmul fast float %2026, %2026
  %2030 = fmul fast float %2027, %2027
  %2031 = fsub fast float %2028, %1910
  %2032 = fsub fast float %2029, %1911
  %2033 = fsub fast float %2030, %1912
  %2034 = fmul fast float %2031, %1935
  %2035 = fmul fast float %2032, %1935
  %2036 = fmul fast float %2033, %1935
  %2037 = fadd fast float %2034, %1910
  %2038 = fadd fast float %2035, %1911
  %2039 = fadd fast float %2036, %1912
  %2040 = fadd fast float %1957, %1921
  %2041 = fsub fast float %2040, %1974
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fsub fast float %2042, %1921
  %2044 = fmul fast float %2043, %1935
  %2045 = fadd fast float %2044, %1921
  br label %2099

; <label>:2046                                    ; preds = %1934
  %2047 = and i32 %1937, 134217728
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2083, label %2049

; <label>:2049                                    ; preds = %2046
  %2050 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2051 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2052 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2053 = fadd fast float %2050, -5.000000e-01
  %2054 = fadd fast float %2051, -5.000000e-01
  %2055 = fadd fast float %2052, -5.000000e-01
  %2056 = fmul fast float %2053, %1935
  %2057 = fmul fast float %2054, %1935
  %2058 = fmul fast float %2055, %1935
  %2059 = fadd fast float %2056, 5.000000e-01
  %2060 = fadd fast float %2057, 5.000000e-01
  %2061 = fadd fast float %2058, 5.000000e-01
  %2062 = call float @dx.op.unary.f32(i32 24, float %1910)  ; Sqrt(value)
  %2063 = call float @dx.op.unary.f32(i32 24, float %1911)  ; Sqrt(value)
  %2064 = call float @dx.op.unary.f32(i32 24, float %1912)  ; Sqrt(value)
  %2065 = fmul fast float %2059, 2.000000e+00
  %2066 = fsub fast float 1.000000e+00, %2065
  %2067 = fmul fast float %2066, %2062
  %2068 = fadd fast float %2067, %2065
  %2069 = fmul fast float %2068, %2062
  %2070 = fmul fast float %2060, 2.000000e+00
  %2071 = fsub fast float 1.000000e+00, %2070
  %2072 = fmul fast float %2071, %2063
  %2073 = fadd fast float %2072, %2070
  %2074 = fmul fast float %2073, %2063
  %2075 = fmul fast float %2061, 2.000000e+00
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = fmul fast float %2076, %2064
  %2078 = fadd fast float %2077, %2075
  %2079 = fmul fast float %2078, %2064
  %2080 = fmul fast float %2069, %2069
  %2081 = fmul fast float %2074, %2074
  %2082 = fmul fast float %2079, %2079
  br label %2099

; <label>:2083                                    ; preds = %2046
  %2084 = fmul fast float %269, %269
  %2085 = fmul fast float %273, %273
  %2086 = fmul fast float %277, %277
  %2087 = fadd fast float %2084, -1.000000e+00
  %2088 = fadd fast float %2085, -1.000000e+00
  %2089 = fadd fast float %2086, -1.000000e+00
  %2090 = fmul fast float %1935, %2087
  %2091 = fmul fast float %1935, %2088
  %2092 = fmul fast float %1935, %2089
  %2093 = fadd fast float %2090, 1.000000e+00
  %2094 = fadd fast float %2091, 1.000000e+00
  %2095 = fadd fast float %2092, 1.000000e+00
  %2096 = fmul fast float %2093, %1910
  %2097 = fmul fast float %2094, %1911
  %2098 = fmul fast float %2095, %1912
  br label %2099

; <label>:2099                                    ; preds = %2083, %2049, %1940, %1896
  %2100 = phi float [ %2045, %1940 ], [ %1921, %2049 ], [ %1921, %2083 ], [ 0x3FA23C0BE0000000, %1896 ]
  %2101 = phi float [ %2037, %1940 ], [ %2080, %2049 ], [ %2096, %2083 ], [ 1.000000e+00, %1896 ]
  %2102 = phi float [ %2038, %1940 ], [ %2081, %2049 ], [ %2097, %2083 ], [ 1.000000e+00, %1896 ]
  %2103 = phi float [ %2039, %1940 ], [ %2082, %2049 ], [ %2098, %2083 ], [ 1.000000e+00, %1896 ]
  %2104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.i32 %2104, 1
  %2106 = and i32 %2105, 1
  %2107 = icmp ne i32 %2106, 0
  %2108 = add i32 %49, 356
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 32
  %2112 = icmp ne i32 %2111, 0
  %2113 = and i1 %2107, %2112
  %2114 = select i1 %2113, float 1.000000e+00, float %2101
  %2115 = select i1 %2113, float 0x3FD3333340000000, float %2102
  %2116 = select i1 %2113, float 0x3FD3333340000000, float %2103
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = and i32 %2118, 32
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2193, label %2121

; <label>:2121                                    ; preds = %2099
  %2122 = add i32 %49, 124
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = add i32 %49, 400
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2129, %dx.types.Handle %80, float %1706, float %1707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = extractvalue %dx.types.ResRet.f32 %2130, 3
  %2135 = and i32 %2124, 255
  %2136 = uitofp i32 %2135 to float
  %2137 = lshr i32 %2124, 8
  %2138 = and i32 %2137, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = lshr i32 %2124, 16
  %2141 = and i32 %2140, 255
  %2142 = uitofp i32 %2141 to float
  %2143 = fmul fast float %2142, 0x3F70101000000000
  %2144 = fmul fast float %2131, %2136
  %2145 = fadd fast float %2144, %2139
  %2146 = fmul fast float %2145, 0x3F70101000000000
  %2147 = fadd fast float %2132, -5.000000e-01
  %2148 = fadd fast float %2134, -5.000000e-01
  %2149 = fmul fast float %2147, %2143
  %2150 = fmul fast float %2148, %2143
  %2151 = fadd fast float %2149, 5.000000e-01
  %2152 = fadd fast float %2150, 5.000000e-01
  %2153 = fmul fast float %2151, 2.000000e+00
  %2154 = fadd fast float %2153, -1.000000e+00
  %2155 = fmul fast float %2152, 2.000000e+00
  %2156 = fadd fast float %2155, -1.000000e+00
  %2157 = fadd fast float %2154, %2156
  %2158 = fmul fast float %2157, 5.000000e-01
  %2159 = fsub fast float %2154, %2156
  %2160 = fmul fast float %2159, 5.000000e-01
  %2161 = call float @dx.op.unary.f32(i32 6, float %2158)  ; FAbs(value)
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = call float @dx.op.unary.f32(i32 6, float %2160)  ; FAbs(value)
  %2164 = fsub fast float %2162, %2163
  %2165 = call float @dx.op.dot3.f32(i32 55, float %2158, float %2160, float %2164, float %2158, float %2160, float %2164)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.unary.f32(i32 25, float %2165)  ; Rsqrt(value)
  %2167 = fmul fast float %2158, %2166
  %2168 = fmul fast float %2160, %2166
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 67108864
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2189, label %2173

; <label>:2173                                    ; preds = %2121
  %2174 = add i32 %49, 312
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 65535
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 65535
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = lshr i32 %2176, 16
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = fsub fast float %2146, %2184
  %2186 = fmul fast float %2185, %2178
  %2187 = fadd fast float %2186, %2182
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  br label %2189

; <label>:2189                                    ; preds = %2173, %2121
  %2190 = phi float [ %2188, %2173 ], [ %2146, %2121 ]
  %2191 = call float @dx.op.dot2.f32(i32 54, float %2167, float %2168, float %1610, float %1611)  ; Dot2(ax,ay,bx,by)
  %2192 = call float @dx.op.dot2.f32(i32 54, float %2167, float %2168, float %1612, float %1613)  ; Dot2(ax,ay,bx,by)
  br label %2193

; <label>:2193                                    ; preds = %2189, %2099
  %2194 = phi float [ %2190, %2189 ], [ 0x3FD6666660000000, %2099 ]
  %2195 = phi float [ %2191, %2189 ], [ 0.000000e+00, %2099 ]
  %2196 = phi float [ %2192, %2189 ], [ 0.000000e+00, %2099 ]
  %2197 = phi float [ %2133, %2189 ], [ 1.000000e+00, %2099 ]
  %2198 = add i32 %49, 128
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = lshr i32 %2200, 8
  %2204 = and i32 %2203, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2115, float %2116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2207 = fmul fast float %2205, %2206
  %2208 = fadd fast float %2207, %2202
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  br i1 %1598, label %2211, label %2216

; <label>:2211                                    ; preds = %2193
  %2212 = fsub fast float 1.000000e+00, %1894
  %2213 = fmul fast float %2212, %1590
  %2214 = fmul fast float %2212, %1591
  %2215 = fmul fast float %2212, %1592
  br label %2216

; <label>:2216                                    ; preds = %2211, %2193
  %2217 = phi float [ %2213, %2211 ], [ %1590, %2193 ]
  %2218 = phi float [ %2214, %2211 ], [ %1591, %2193 ]
  %2219 = phi float [ %2215, %2211 ], [ %1592, %2193 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 3
  %2223 = icmp eq i32 %2222, 3
  br i1 %2223, label %2290, label %2224

; <label>:2224                                    ; preds = %2216
  %2225 = and i32 %2221, 16
  %2226 = icmp ne i32 %2225, 0
  %2227 = select i1 %2226, float %1894, float 0.000000e+00
  %2228 = icmp eq i32 %2222, 0
  br i1 %2228, label %2229, label %2245

; <label>:2229                                    ; preds = %2224
  %2230 = fsub fast float %2114, %2217
  %2231 = fsub fast float %2115, %2218
  %2232 = fsub fast float %2116, %2219
  %2233 = fmul fast float %2227, %2230
  %2234 = fmul fast float %2227, %2231
  %2235 = fmul fast float %2227, %2232
  %2236 = fadd fast float %2233, %2217
  %2237 = fadd fast float %2234, %2218
  %2238 = fadd fast float %2235, %2219
  %2239 = fsub fast float %2100, %1593
  %2240 = fmul fast float %2227, %2239
  %2241 = fadd fast float %2240, %1593
  %2242 = fsub fast float %2210, %1596
  %2243 = fmul fast float %2227, %2242
  %2244 = fadd fast float %2243, %1596
  br label %2290

; <label>:2245                                    ; preds = %2224
  %2246 = icmp eq i32 %2222, 1
  br i1 %2246, label %2247, label %2260

; <label>:2247                                    ; preds = %2245
  %2248 = fadd fast float %2114, -1.000000e+00
  %2249 = fadd fast float %2115, -1.000000e+00
  %2250 = fadd fast float %2116, -1.000000e+00
  %2251 = fmul fast float %2227, %2248
  %2252 = fmul fast float %2227, %2249
  %2253 = fmul fast float %2227, %2250
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fadd fast float %2252, 1.000000e+00
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fmul fast float %2254, %2217
  %2258 = fmul fast float %2255, %2218
  %2259 = fmul fast float %2256, %2219
  br label %2290

; <label>:2260                                    ; preds = %2245
  %2261 = icmp eq i32 %2222, 2
  br i1 %2261, label %2262, label %2290

; <label>:2262                                    ; preds = %2260
  %2263 = call float @dx.op.unary.f32(i32 24, float %2114)  ; Sqrt(value)
  %2264 = call float @dx.op.unary.f32(i32 24, float %2115)  ; Sqrt(value)
  %2265 = call float @dx.op.unary.f32(i32 24, float %2116)  ; Sqrt(value)
  %2266 = fadd fast float %2263, -5.000000e-01
  %2267 = fadd fast float %2264, -5.000000e-01
  %2268 = fadd fast float %2265, -5.000000e-01
  %2269 = fmul fast float %2266, %2227
  %2270 = fmul fast float %2267, %2227
  %2271 = fmul fast float %2268, %2227
  %2272 = fadd fast float %2269, 5.000000e-01
  %2273 = fadd fast float %2270, 5.000000e-01
  %2274 = fadd fast float %2271, 5.000000e-01
  %2275 = fmul fast float %2272, 2.000000e+00
  %2276 = fsub fast float 1.000000e+00, %2275
  %2277 = fmul fast float %2276, %2217
  %2278 = fadd fast float %2277, %2275
  %2279 = fmul fast float %2278, %2217
  %2280 = fmul fast float %2273, 2.000000e+00
  %2281 = fsub fast float 1.000000e+00, %2280
  %2282 = fmul fast float %2281, %2218
  %2283 = fadd fast float %2282, %2280
  %2284 = fmul fast float %2283, %2218
  %2285 = fmul fast float %2274, 2.000000e+00
  %2286 = fsub fast float 1.000000e+00, %2285
  %2287 = fmul fast float %2286, %2219
  %2288 = fadd fast float %2287, %2285
  %2289 = fmul fast float %2288, %2219
  br label %2290

; <label>:2290                                    ; preds = %2262, %2260, %2247, %2229, %2216
  %2291 = phi float [ %2217, %2216 ], [ %2279, %2262 ], [ %2217, %2260 ], [ %2257, %2247 ], [ %2236, %2229 ]
  %2292 = phi float [ %2218, %2216 ], [ %2284, %2262 ], [ %2218, %2260 ], [ %2258, %2247 ], [ %2237, %2229 ]
  %2293 = phi float [ %2219, %2216 ], [ %2289, %2262 ], [ %2219, %2260 ], [ %2259, %2247 ], [ %2238, %2229 ]
  %2294 = phi float [ %1593, %2216 ], [ %1593, %2262 ], [ %1593, %2260 ], [ %1593, %2247 ], [ %2241, %2229 ]
  %2295 = phi float [ %1596, %2216 ], [ %1596, %2262 ], [ %1596, %2260 ], [ %1596, %2247 ], [ %2244, %2229 ]
  %2296 = and i32 %2221, 12
  %2297 = icmp eq i32 %2296, 12
  br i1 %2297, label %2370, label %2298

; <label>:2298                                    ; preds = %2290
  %2299 = and i32 %2221, 2097184
  %2300 = icmp eq i32 %2299, 2097184
  %2301 = select i1 %2300, float %1894, float 0.000000e+00
  %2302 = and i32 %2221, 4194336
  %2303 = icmp eq i32 %2302, 4194336
  %2304 = select i1 %2303, float %1894, float 0.000000e+00
  %2305 = and i32 %2221, 8388640
  %2306 = icmp eq i32 %2305, 8388640
  %2307 = select i1 %2306, float %1894, float 0.000000e+00
  %2308 = icmp eq i32 %2296, 0
  br i1 %2308, label %2309, label %2322

; <label>:2309                                    ; preds = %2298
  %2310 = fsub fast float %2195, %1588
  %2311 = fsub fast float %2196, %1589
  %2312 = fmul fast float %2301, %2310
  %2313 = fmul fast float %2301, %2311
  %2314 = fadd fast float %2312, %1588
  %2315 = fadd fast float %2313, %1589
  %2316 = fsub fast float %2197, %1595
  %2317 = fmul fast float %2304, %2316
  %2318 = fadd fast float %2317, %1595
  %2319 = fsub fast float %2194, %1594
  %2320 = fmul fast float %2307, %2319
  %2321 = fadd fast float %2320, %1594
  br label %2370

; <label>:2322                                    ; preds = %2298
  %2323 = icmp eq i32 %2296, 4
  br i1 %2323, label %2324, label %2356

; <label>:2324                                    ; preds = %2322
  %2325 = fmul fast float %2301, %2195
  %2326 = fmul fast float %2301, %2196
  %2327 = fadd fast float %2325, %1588
  %2328 = fadd fast float %2326, %1589
  %2329 = call float @dx.op.binary.f32(i32 36, float %1595, float %2197)  ; FMin(a,b)
  %2330 = fsub fast float %2329, %1595
  %2331 = fmul fast float %2330, %2304
  %2332 = fadd fast float %2331, %1595
  %2333 = fadd fast float %2194, %1594
  %2334 = fmul fast float %2333, 0x3FF337FAE0000000
  %2335 = fmul fast float %1594, %1594
  %2336 = fmul fast float %2194, %2194
  %2337 = fadd fast float %2336, %2335
  %2338 = fmul fast float %2337, 0x3FE5152B00000000
  %2339 = fmul fast float %1594, 0xBFCC1F85E0000000
  %2340 = fmul fast float %2339, %2194
  %2341 = fadd fast float %2340, 0xBFE1363700000000
  %2342 = fadd fast float %2341, %2334
  %2343 = fsub fast float %2342, %2338
  %2344 = fmul fast float %2333, 0x3FBA6F0D00000000
  %2345 = fmul fast float %2337, 0x3FD0432880000000
  %2346 = fmul fast float %1594, 0xBFEF110800000000
  %2347 = fmul fast float %2346, %2194
  %2348 = fadd fast float %2347, 1.000000e+00
  %2349 = fsub fast float %2348, %2344
  %2350 = fadd fast float %2349, %2345
  %2351 = fdiv fast float %2343, %2350
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = fsub fast float %2352, %1594
  %2354 = fmul fast float %2353, %2307
  %2355 = fadd fast float %2354, %1594
  br label %2370

; <label>:2356                                    ; preds = %2322
  %2357 = icmp eq i32 %2296, 8
  br i1 %2357, label %2358, label %2370

; <label>:2358                                    ; preds = %2356
  %2359 = fmul fast float %2301, %2195
  %2360 = fmul fast float %2301, %2196
  %2361 = fadd fast float %2359, %1588
  %2362 = fadd fast float %2360, %1589
  %2363 = call float @dx.op.binary.f32(i32 36, float %1595, float %2197)  ; FMin(a,b)
  %2364 = fsub fast float %2363, %1595
  %2365 = fmul fast float %2364, %2304
  %2366 = fadd fast float %2365, %1595
  %2367 = fsub fast float %2194, %1594
  %2368 = fmul fast float %2307, %2367
  %2369 = fadd fast float %2368, %1594
  br label %2370

; <label>:2370                                    ; preds = %2358, %2356, %2324, %2309, %2290, %1893, %1597, %1587
  %2371 = phi float [ %1588, %2290 ], [ %1588, %1893 ], [ %1588, %1587 ], [ %2361, %2358 ], [ %1588, %2356 ], [ %2327, %2324 ], [ %2314, %2309 ], [ %1588, %1597 ]
  %2372 = phi float [ %1589, %2290 ], [ %1589, %1893 ], [ %1589, %1587 ], [ %2362, %2358 ], [ %1589, %2356 ], [ %2328, %2324 ], [ %2315, %2309 ], [ %1589, %1597 ]
  %2373 = phi float [ %2291, %2290 ], [ %1590, %1893 ], [ %1590, %1587 ], [ %2291, %2358 ], [ %2291, %2356 ], [ %2291, %2324 ], [ %2291, %2309 ], [ %1590, %1597 ]
  %2374 = phi float [ %2292, %2290 ], [ %1591, %1893 ], [ %1591, %1587 ], [ %2292, %2358 ], [ %2292, %2356 ], [ %2292, %2324 ], [ %2292, %2309 ], [ %1591, %1597 ]
  %2375 = phi float [ %2293, %2290 ], [ %1592, %1893 ], [ %1592, %1587 ], [ %2293, %2358 ], [ %2293, %2356 ], [ %2293, %2324 ], [ %2293, %2309 ], [ %1592, %1597 ]
  %2376 = phi float [ %2294, %2290 ], [ %1593, %1893 ], [ %1593, %1587 ], [ %2294, %2358 ], [ %2294, %2356 ], [ %2294, %2324 ], [ %2294, %2309 ], [ %1593, %1597 ]
  %2377 = phi float [ %1594, %2290 ], [ %1594, %1893 ], [ %1594, %1587 ], [ %2369, %2358 ], [ %1594, %2356 ], [ %2355, %2324 ], [ %2321, %2309 ], [ %1594, %1597 ]
  %2378 = phi float [ %1595, %2290 ], [ %1595, %1893 ], [ %1595, %1587 ], [ %2366, %2358 ], [ %1595, %2356 ], [ %2332, %2324 ], [ %2318, %2309 ], [ %1595, %1597 ]
  %2379 = phi float [ %2295, %2290 ], [ %1596, %1893 ], [ %1596, %1587 ], [ %2295, %2358 ], [ %2295, %2356 ], [ %2295, %2324 ], [ %2295, %2309 ], [ %1596, %1597 ]
  br i1 %332, label %3153, label %2380

; <label>:2380                                    ; preds = %2370
  %2381 = icmp ult i32 %383, 4
  %2382 = add i32 %49, 72
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = add i32 %49, 76
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = or i32 %2387, %2384
  %2389 = icmp eq i32 %2388, 0
  br i1 %2389, label %3153, label %2390

; <label>:2390                                    ; preds = %2380
  %2391 = and i32 %2384, 262144
  %2392 = icmp ne i32 %2391, 0
  %2393 = select i1 %2392, float %52, float 1.000000e+00
  %2394 = select i1 %2392, float %53, float 0.000000e+00
  %2395 = select i1 %2392, float %54, float 0.000000e+00
  %2396 = select i1 %2392, float %55, float 1.000000e+00
  %2397 = select i1 %2392, float %56, float %72
  %2398 = select i1 %2392, float %57, float %73
  %2399 = add i32 %49, 332
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = lshr i32 %2401, 16
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = fmul fast float %2403, 0x3F50624DE0000000
  %2405 = add i32 %49, 136
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = lshr i32 %2407, 16
  %2409 = and i32 %2408, 255
  %2410 = lshr i32 %2407, 24
  %2411 = add i32 %49, 340
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = lshr i32 %2413, 16
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = add i32 %49, 80
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = lshr i32 %2420, 22
  %2422 = shl nuw nsw i32 %2421, 5
  %2423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2422)  ; LegacyF16ToF32(value)
  %2424 = shl i32 %2420, 4
  %2425 = and i32 %2424, 32752
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = lshr i32 %2420, 7
  %2428 = and i32 %2427, 32752
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 3
  %2432 = fmul fast float %2431, 1.000000e+03
  %2433 = fmul fast float %322, %2432
  %2434 = call float @dx.op.unary.f32(i32 22, float %2433)  ; Frc(value)
  %2435 = fadd fast float %2434, %312
  %2436 = fmul fast float %323, %2432
  %2437 = call float @dx.op.unary.f32(i32 22, float %2436)  ; Frc(value)
  %2438 = fadd fast float %2437, %314
  %2439 = fmul fast float %2404, %2432
  %2440 = call float @dx.op.unary.f32(i32 22, float %2439)  ; Frc(value)
  %2441 = fmul fast float %2440, 0x401921FB60000000
  %2442 = fadd fast float %2441, %2423
  %2443 = call float @dx.op.unary.f32(i32 13, float %2442)  ; Sin(value)
  %2444 = call float @dx.op.unary.f32(i32 12, float %2442)  ; Cos(value)
  %2445 = fsub fast float -0.000000e+00, %2443
  %2446 = fadd fast float %2397, -5.000000e-01
  %2447 = fadd fast float %2398, -5.000000e-01
  %2448 = fmul fast float %2415, %2446
  %2449 = fmul fast float %2417, %2447
  %2450 = fadd fast float %2448, 5.000000e-01
  %2451 = fadd fast float %2449, 5.000000e-01
  %2452 = fmul fast float %2426, %2450
  %2453 = fmul fast float %2429, %2451
  %2454 = fmul fast float %2444, %2452
  %2455 = call float @dx.op.tertiary.f32(i32 46, float %2445, float %2453, float %2454)  ; FMad(a,b,c)
  %2456 = fmul fast float %2443, %2452
  %2457 = call float @dx.op.tertiary.f32(i32 46, float %2444, float %2453, float %2456)  ; FMad(a,b,c)
  %2458 = fadd fast float %2435, %2455
  %2459 = fadd fast float %2438, %2457
  %2460 = icmp ugt i32 %2409, 1
  %2461 = icmp ugt i32 %2407, 33554431
  %2462 = or i1 %2461, %2460
  br i1 %2462, label %2463, label %2488

; <label>:2463                                    ; preds = %2390
  %2464 = add i32 %49, 276
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = lshr i32 %2466, 16
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = fmul fast float %2431, %2468
  %2470 = call float @dx.op.unary.f32(i32 22, float %2469)  ; Frc(value)
  %2471 = mul nuw nsw i32 %2409, %2410
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2470, %2472
  %2474 = call float @dx.op.unary.f32(i32 27, float %2473)  ; Round_ni(value)
  %2475 = fptoui float %2474 to i32
  %2476 = urem i32 %2475, %2409
  %2477 = udiv i32 %2475, %2410
  %2478 = call float @dx.op.unary.f32(i32 22, float %2458)  ; Frc(value)
  %2479 = call float @dx.op.unary.f32(i32 22, float %2459)  ; Frc(value)
  %2480 = uitofp i32 %2476 to float
  %2481 = uitofp i32 %2477 to float
  %2482 = fadd fast float %2478, %2480
  %2483 = fadd fast float %2479, %2481
  %2484 = uitofp i32 %2409 to float
  %2485 = uitofp i32 %2410 to float
  %2486 = fdiv fast float %2482, %2484
  %2487 = fdiv fast float %2483, %2485
  br label %2488

; <label>:2488                                    ; preds = %2463, %2390
  %2489 = phi float [ %2486, %2463 ], [ %2458, %2390 ]
  %2490 = phi float [ %2487, %2463 ], [ %2459, %2390 ]
  %2491 = and i32 %2384, 16777216
  %2492 = icmp eq i32 %2491, 0
  br i1 %2492, label %2602, label %2493

; <label>:2493                                    ; preds = %2488
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.CBufRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.CBufRet.f32 %2494, 2
  %2498 = fadd fast float %2495, %147
  %2499 = fadd fast float %2496, %148
  %2500 = fadd fast float %2497, %149
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = icmp eq i32 %50, 65535
  br i1 %2504, label %2599, label %2505

; <label>:2505                                    ; preds = %2493
  %2506 = lshr i32 %50, 1
  %2507 = shl i32 %2506, 2
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %50, 1
  %2511 = icmp ne i32 %2510, 0
  %2512 = lshr i32 %2509, 16
  %2513 = and i32 %2509, 65535
  %2514 = select i1 %2511, i32 %2512, i32 %2513
  %2515 = icmp eq i32 %2514, 65535
  br i1 %2515, label %2595, label %2516

; <label>:2516                                    ; preds = %2505
  %2517 = mul nuw nsw i32 %2514, 40
  %2518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2522 = add nuw nsw i32 %2517, 12
  %2523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.ResRet.f32 %2523, 2
  %2527 = add nuw nsw i32 %2517, 24
  %2528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = add nuw nsw i32 %2517, 36
  %2533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = fsub fast float %2498, %2519
  %2536 = fsub fast float %2499, %2520
  %2537 = fsub fast float %2500, %2521
  %2538 = fmul fast float %2534, %2535
  %2539 = fmul fast float %2534, %2536
  %2540 = fmul fast float %2534, %2537
  %2541 = call float @dx.op.unary.f32(i32 27, float %2538)  ; Round_ni(value)
  %2542 = call float @dx.op.unary.f32(i32 27, float %2539)  ; Round_ni(value)
  %2543 = call float @dx.op.unary.f32(i32 27, float %2540)  ; Round_ni(value)
  %2544 = fadd fast float %2541, 5.000000e-01
  %2545 = fadd fast float %2542, 5.000000e-01
  %2546 = fadd fast float %2543, 5.000000e-01
  %2547 = fmul fast float %2544, %2524
  %2548 = fmul fast float %2545, %2525
  %2549 = fmul fast float %2546, %2526
  %2550 = shl i32 %50, 2
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = add i32 %2552, 0
  %2554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2555 = call float @dx.op.unary.f32(i32 22, float %2547)  ; Frc(value)
  %2556 = call float @dx.op.unary.f32(i32 22, float %2548)  ; Frc(value)
  %2557 = call float @dx.op.unary.f32(i32 22, float %2549)  ; Frc(value)
  %2558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2554, %dx.types.Handle %45, float %2555, float %2556, float %2557, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2559 = extractvalue %dx.types.ResRet.f32 %2558, 0
  %2560 = extractvalue %dx.types.ResRet.f32 %2558, 1
  %2561 = extractvalue %dx.types.ResRet.f32 %2558, 2
  %2562 = fmul fast float %2559, 1.023000e+03
  %2563 = fmul fast float %2560, 1.023000e+03
  %2564 = fmul fast float %2561, 1.023000e+03
  %2565 = fadd fast float %2562, 5.000000e-01
  %2566 = fadd fast float %2563, 5.000000e-01
  %2567 = fadd fast float %2564, 5.000000e-01
  %2568 = call float @dx.op.unary.f32(i32 27, float %2565)  ; Round_ni(value)
  %2569 = call float @dx.op.unary.f32(i32 27, float %2566)  ; Round_ni(value)
  %2570 = call float @dx.op.unary.f32(i32 27, float %2567)  ; Round_ni(value)
  %2571 = fsub fast float %2538, %2541
  %2572 = fsub fast float %2539, %2542
  %2573 = fsub fast float %2540, %2543
  %2574 = fmul fast float %2571, 7.500000e-01
  %2575 = fmul fast float %2572, 7.500000e-01
  %2576 = fmul fast float %2573, 7.500000e-01
  %2577 = fadd fast float %2541, 1.250000e-01
  %2578 = fadd fast float %2577, %2574
  %2579 = fadd fast float %2578, %2568
  %2580 = fadd fast float %2542, 1.250000e-01
  %2581 = fadd fast float %2580, %2575
  %2582 = fadd fast float %2581, %2569
  %2583 = fadd fast float %2543, 1.250000e-01
  %2584 = fadd fast float %2583, %2576
  %2585 = fadd fast float %2584, %2570
  %2586 = fmul fast float %2579, %2529
  %2587 = fmul fast float %2582, %2530
  %2588 = fmul fast float %2585, %2531
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2592, %dx.types.Handle %43, float %2586, float %2587, float %2588, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  br label %2595

; <label>:2595                                    ; preds = %2516, %2505
  %2596 = phi float [ %2594, %2516 ], [ -1.000000e+00, %2505 ]
  %2597 = fadd fast float %2596, %2503
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  br label %2599

; <label>:2599                                    ; preds = %2595, %2493
  %2600 = phi float [ %2598, %2595 ], [ %2503, %2493 ]
  %2601 = fmul fast float %2600, %378
  br label %2602

; <label>:2602                                    ; preds = %2599, %2488
  %2603 = phi float [ %2601, %2599 ], [ %378, %2488 ]
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 256
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2654, label %2608

; <label>:2608                                    ; preds = %2602
  %2609 = add i32 %49, 452
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %81, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = add i32 %49, 148
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = shl i32 %2618, 4
  %2620 = and i32 %2619, 32752
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = lshr i32 %2618, 7
  %2623 = and i32 %2622, 32752
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = fsub fast float 1.000000e+00, %2603
  %2626 = call float @dx.op.binary.f32(i32 35, float %2625, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2627 = bitcast float %2603 to i32
  %2628 = sitofp i32 %2627 to float
  %2629 = fadd fast float %2628, 0xC1CFBF8940000000
  %2630 = fmul fast float %2624, %2629
  %2631 = fadd fast float %2630, 0x41CFBF8940000000
  %2632 = fptosi float %2631 to i32
  %2633 = bitcast i32 %2632 to float
  %2634 = bitcast float %2626 to i32
  %2635 = sitofp i32 %2634 to float
  %2636 = fadd fast float %2635, 0xC1CFBF8940000000
  %2637 = fmul fast float %2636, %2624
  %2638 = fadd fast float %2637, 0x41CFBF8940000000
  %2639 = fptosi float %2638 to i32
  %2640 = bitcast i32 %2639 to float
  %2641 = fmul fast float %2633, %2621
  %2642 = fmul fast float %2640, %2621
  %2643 = fsub fast float %2626, %2641
  %2644 = fadd fast float %2642, %2626
  %2645 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2646 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2647 = fsub fast float %2615, %2645
  %2648 = fsub fast float %2646, %2645
  %2649 = bitcast float %2648 to i32
  %2650 = sub nsw i32 2129859010, %2649
  %2651 = bitcast i32 %2650 to float
  %2652 = fmul fast float %2651, %2647
  %2653 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  br label %2654

; <label>:2654                                    ; preds = %2608, %2602
  %2655 = phi float [ %2653, %2608 ], [ %2603, %2602 ]
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, 128
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2676, label %2660

; <label>:2660                                    ; preds = %2654
  %2661 = add i32 %49, 436
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = add i32 %2663, 0
  %2665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2665, %dx.types.Handle %81, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 524288
  %2671 = icmp ne i32 %2670, 0
  %2672 = fcmp fast ogt float %2667, 0x3FE0101020000000
  %2673 = select i1 %2672, float 1.000000e+00, float 0.000000e+00
  %2674 = select i1 %2671, float %2673, float %2667
  %2675 = fmul fast float %2674, %2655
  br label %2676

; <label>:2676                                    ; preds = %2660, %2654
  %2677 = phi float [ %2675, %2660 ], [ %2655, %2654 ]
  %2678 = fcmp fast ult float %2677, 0x3F70101020000000
  br i1 %2678, label %3153, label %2679

; <label>:2679                                    ; preds = %2676
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = and i32 %2681, 16
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2882, label %2684

; <label>:2684                                    ; preds = %2679
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = add i32 %49, 388
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = add i32 %2689, 0
  %2691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2691, %dx.types.Handle %80, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.ResRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.ResRet.f32 %2692, 2
  %2696 = extractvalue %dx.types.ResRet.f32 %2692, 3
  %2697 = and i32 %2686, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = lshr i32 %2686, 8
  %2700 = and i32 %2699, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2696, %2698
  %2703 = fadd fast float %2702, %2701
  %2704 = fmul fast float %2703, 0x3F70101000000000
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 512
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2717, label %2709

; <label>:2709                                    ; preds = %2684
  %2710 = add i32 %49, 468
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = add i32 %2712, 0
  %2714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2714, %dx.types.Handle %81, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  br label %2717

; <label>:2717                                    ; preds = %2709, %2684
  %2718 = phi float [ %2716, %2709 ], [ 1.000000e+00, %2684 ]
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 33554432
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2829, label %2723

; <label>:2723                                    ; preds = %2717
  %2724 = add i32 %49, 272
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 65535
  %2728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2727)  ; LegacyF16ToF32(value)
  %2729 = lshr i32 %2726, 16
  %2730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2729)  ; LegacyF16ToF32(value)
  %2731 = add i32 %49, 276
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 65535
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = lshr i32 %2737, 24
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2739, 0x3F70101020000000
  %2741 = and i32 %2737, 255
  %2742 = uitofp i32 %2741 to float
  %2743 = fmul fast float %2742, 0x3F70101020000000
  %2744 = lshr i32 %2737, 8
  %2745 = and i32 %2744, 255
  %2746 = uitofp i32 %2745 to float
  %2747 = fmul fast float %2746, 0x3F70101020000000
  %2748 = lshr i32 %2737, 16
  %2749 = and i32 %2748, 255
  %2750 = uitofp i32 %2749 to float
  %2751 = fmul fast float %2750, 0x3F70101020000000
  %2752 = add i32 %49, 268
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = lshr i32 %2754, 24
  %2756 = uitofp i32 %2755 to float
  %2757 = fmul fast float %2756, 0x3F70101020000000
  %2758 = and i32 %2754, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = fmul fast float %2759, 0x3F70101020000000
  %2761 = lshr i32 %2754, 8
  %2762 = and i32 %2761, 255
  %2763 = uitofp i32 %2762 to float
  %2764 = fmul fast float %2763, 0x3F70101020000000
  %2765 = lshr i32 %2754, 16
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = fmul fast float %2767, 0x3F70101020000000
  %2769 = bitcast float %2693 to i32
  %2770 = ashr i32 %2769, 1
  %2771 = sub nsw i32 1597463174, %2770
  %2772 = bitcast i32 %2771 to float
  %2773 = fmul fast float %2693, 5.000000e-01
  %2774 = fmul fast float %2772, %2772
  %2775 = fmul fast float %2774, %2773
  %2776 = fsub fast float 1.500000e+00, %2775
  %2777 = fmul fast float %2772, %2693
  %2778 = fmul fast float %2777, %2776
  %2779 = bitcast float %2694 to i32
  %2780 = ashr i32 %2779, 1
  %2781 = sub nsw i32 1597463174, %2780
  %2782 = bitcast i32 %2781 to float
  %2783 = fmul fast float %2694, 5.000000e-01
  %2784 = fmul fast float %2782, %2782
  %2785 = fmul fast float %2784, %2783
  %2786 = fsub fast float 1.500000e+00, %2785
  %2787 = fmul fast float %2782, %2694
  %2788 = fmul fast float %2787, %2786
  %2789 = bitcast float %2695 to i32
  %2790 = ashr i32 %2789, 1
  %2791 = sub nsw i32 1597463174, %2790
  %2792 = bitcast i32 %2791 to float
  %2793 = fmul fast float %2695, 5.000000e-01
  %2794 = fmul fast float %2792, %2792
  %2795 = fmul fast float %2794, %2793
  %2796 = fsub fast float 1.500000e+00, %2795
  %2797 = fmul fast float %2792, %2695
  %2798 = fmul fast float %2797, %2796
  %2799 = fsub fast float %2778, %2760
  %2800 = fsub fast float %2788, %2764
  %2801 = fsub fast float %2798, %2768
  %2802 = fmul fast float %2799, %2728
  %2803 = fmul fast float %2800, %2730
  %2804 = fmul fast float %2801, %2735
  %2805 = fadd fast float %2802, %2743
  %2806 = fadd fast float %2803, %2747
  %2807 = fadd fast float %2804, %2751
  %2808 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2809 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2810 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2811 = fmul fast float %2808, %2808
  %2812 = fmul fast float %2809, %2809
  %2813 = fmul fast float %2810, %2810
  %2814 = fsub fast float %2811, %2693
  %2815 = fsub fast float %2812, %2694
  %2816 = fsub fast float %2813, %2695
  %2817 = fmul fast float %2814, %2718
  %2818 = fmul fast float %2815, %2718
  %2819 = fmul fast float %2816, %2718
  %2820 = fadd fast float %2817, %2693
  %2821 = fadd fast float %2818, %2694
  %2822 = fadd fast float %2819, %2695
  %2823 = fadd fast float %2740, %2704
  %2824 = fsub fast float %2823, %2757
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fsub fast float %2825, %2704
  %2827 = fmul fast float %2826, %2718
  %2828 = fadd fast float %2827, %2704
  br label %2882

; <label>:2829                                    ; preds = %2717
  %2830 = and i32 %2720, 134217728
  %2831 = icmp eq i32 %2830, 0
  br i1 %2831, label %2866, label %2832

; <label>:2832                                    ; preds = %2829
  %2833 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2834 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2835 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2836 = fadd fast float %2833, -5.000000e-01
  %2837 = fadd fast float %2834, -5.000000e-01
  %2838 = fadd fast float %2835, -5.000000e-01
  %2839 = fmul fast float %2836, %2718
  %2840 = fmul fast float %2837, %2718
  %2841 = fmul fast float %2838, %2718
  %2842 = fadd fast float %2839, 5.000000e-01
  %2843 = fadd fast float %2840, 5.000000e-01
  %2844 = fadd fast float %2841, 5.000000e-01
  %2845 = call float @dx.op.unary.f32(i32 24, float %2693)  ; Sqrt(value)
  %2846 = call float @dx.op.unary.f32(i32 24, float %2694)  ; Sqrt(value)
  %2847 = call float @dx.op.unary.f32(i32 24, float %2695)  ; Sqrt(value)
  %2848 = fmul fast float %2842, 2.000000e+00
  %2849 = fsub fast float 1.000000e+00, %2848
  %2850 = fmul fast float %2849, %2845
  %2851 = fadd fast float %2850, %2848
  %2852 = fmul fast float %2851, %2845
  %2853 = fmul fast float %2843, 2.000000e+00
  %2854 = fsub fast float 1.000000e+00, %2853
  %2855 = fmul fast float %2854, %2846
  %2856 = fadd fast float %2855, %2853
  %2857 = fmul fast float %2856, %2846
  %2858 = fmul fast float %2844, 2.000000e+00
  %2859 = fsub fast float 1.000000e+00, %2858
  %2860 = fmul fast float %2859, %2847
  %2861 = fadd fast float %2860, %2858
  %2862 = fmul fast float %2861, %2847
  %2863 = fmul fast float %2852, %2852
  %2864 = fmul fast float %2857, %2857
  %2865 = fmul fast float %2862, %2862
  br label %2882

; <label>:2866                                    ; preds = %2829
  %2867 = fmul fast float %299, %299
  %2868 = fmul fast float %303, %303
  %2869 = fmul fast float %307, %307
  %2870 = fadd fast float %2867, -1.000000e+00
  %2871 = fadd fast float %2868, -1.000000e+00
  %2872 = fadd fast float %2869, -1.000000e+00
  %2873 = fmul fast float %2718, %2870
  %2874 = fmul fast float %2718, %2871
  %2875 = fmul fast float %2718, %2872
  %2876 = fadd fast float %2873, 1.000000e+00
  %2877 = fadd fast float %2874, 1.000000e+00
  %2878 = fadd fast float %2875, 1.000000e+00
  %2879 = fmul fast float %2876, %2693
  %2880 = fmul fast float %2877, %2694
  %2881 = fmul fast float %2878, %2695
  br label %2882

; <label>:2882                                    ; preds = %2866, %2832, %2723, %2679
  %2883 = phi float [ %2828, %2723 ], [ %2704, %2832 ], [ %2704, %2866 ], [ 0x3FA23C0BE0000000, %2679 ]
  %2884 = phi float [ %2820, %2723 ], [ %2863, %2832 ], [ %2879, %2866 ], [ 1.000000e+00, %2679 ]
  %2885 = phi float [ %2821, %2723 ], [ %2864, %2832 ], [ %2880, %2866 ], [ 1.000000e+00, %2679 ]
  %2886 = phi float [ %2822, %2723 ], [ %2865, %2832 ], [ %2881, %2866 ], [ 1.000000e+00, %2679 ]
  %2887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2888 = extractvalue %dx.types.CBufRet.i32 %2887, 1
  %2889 = and i32 %2888, 1
  %2890 = icmp ne i32 %2889, 0
  %2891 = add i32 %49, 356
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 32
  %2895 = icmp ne i32 %2894, 0
  %2896 = and i1 %2890, %2895
  %2897 = select i1 %2896, float 1.000000e+00, float %2884
  %2898 = select i1 %2896, float 0x3FD3333340000000, float %2885
  %2899 = select i1 %2896, float 0x3FD3333340000000, float %2886
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = and i32 %2901, 32
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %2976, label %2904

; <label>:2904                                    ; preds = %2882
  %2905 = add i32 %49, 140
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = add i32 %49, 404
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2912, %dx.types.Handle %80, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.ResRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.ResRet.f32 %2913, 2
  %2917 = extractvalue %dx.types.ResRet.f32 %2913, 3
  %2918 = and i32 %2907, 255
  %2919 = uitofp i32 %2918 to float
  %2920 = lshr i32 %2907, 8
  %2921 = and i32 %2920, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = lshr i32 %2907, 16
  %2924 = and i32 %2923, 255
  %2925 = uitofp i32 %2924 to float
  %2926 = fmul fast float %2925, 0x3F70101000000000
  %2927 = fmul fast float %2914, %2919
  %2928 = fadd fast float %2927, %2922
  %2929 = fmul fast float %2928, 0x3F70101000000000
  %2930 = fadd fast float %2915, -5.000000e-01
  %2931 = fadd fast float %2917, -5.000000e-01
  %2932 = fmul fast float %2930, %2926
  %2933 = fmul fast float %2931, %2926
  %2934 = fadd fast float %2932, 5.000000e-01
  %2935 = fadd fast float %2933, 5.000000e-01
  %2936 = fmul fast float %2934, 2.000000e+00
  %2937 = fadd fast float %2936, -1.000000e+00
  %2938 = fmul fast float %2935, 2.000000e+00
  %2939 = fadd fast float %2938, -1.000000e+00
  %2940 = fadd fast float %2937, %2939
  %2941 = fmul fast float %2940, 5.000000e-01
  %2942 = fsub fast float %2937, %2939
  %2943 = fmul fast float %2942, 5.000000e-01
  %2944 = call float @dx.op.unary.f32(i32 6, float %2941)  ; FAbs(value)
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = call float @dx.op.unary.f32(i32 6, float %2943)  ; FAbs(value)
  %2947 = fsub fast float %2945, %2946
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2943, float %2947, float %2941, float %2943, float %2947)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = call float @dx.op.unary.f32(i32 25, float %2948)  ; Rsqrt(value)
  %2950 = fmul fast float %2941, %2949
  %2951 = fmul fast float %2943, %2949
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 67108864
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %2972, label %2956

; <label>:2956                                    ; preds = %2904
  %2957 = add i32 %49, 328
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 65535
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 65535
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = lshr i32 %2959, 16
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = fsub fast float %2929, %2967
  %2969 = fmul fast float %2968, %2961
  %2970 = fadd fast float %2969, %2965
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  br label %2972

; <label>:2972                                    ; preds = %2956, %2904
  %2973 = phi float [ %2971, %2956 ], [ %2929, %2904 ]
  %2974 = call float @dx.op.dot2.f32(i32 54, float %2950, float %2951, float %2393, float %2394)  ; Dot2(ax,ay,bx,by)
  %2975 = call float @dx.op.dot2.f32(i32 54, float %2950, float %2951, float %2395, float %2396)  ; Dot2(ax,ay,bx,by)
  br label %2976

; <label>:2976                                    ; preds = %2972, %2882
  %2977 = phi float [ %2973, %2972 ], [ 0x3FD6666660000000, %2882 ]
  %2978 = phi float [ %2974, %2972 ], [ 0.000000e+00, %2882 ]
  %2979 = phi float [ %2975, %2972 ], [ 0.000000e+00, %2882 ]
  %2980 = phi float [ %2916, %2972 ], [ 1.000000e+00, %2882 ]
  %2981 = add i32 %49, 144
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = lshr i32 %2983, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2897, float %2898, float %2899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = fmul fast float %2988, %2989
  %2991 = fadd fast float %2990, %2985
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  br i1 %2381, label %2994, label %2999

; <label>:2994                                    ; preds = %2976
  %2995 = fsub fast float 1.000000e+00, %2677
  %2996 = fmul fast float %2995, %2373
  %2997 = fmul fast float %2995, %2374
  %2998 = fmul fast float %2995, %2375
  br label %2999

; <label>:2999                                    ; preds = %2994, %2976
  %3000 = phi float [ %2996, %2994 ], [ %2373, %2976 ]
  %3001 = phi float [ %2997, %2994 ], [ %2374, %2976 ]
  %3002 = phi float [ %2998, %2994 ], [ %2375, %2976 ]
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 3
  %3006 = icmp eq i32 %3005, 3
  br i1 %3006, label %3073, label %3007

; <label>:3007                                    ; preds = %2999
  %3008 = and i32 %3004, 16
  %3009 = icmp ne i32 %3008, 0
  %3010 = select i1 %3009, float %2677, float 0.000000e+00
  %3011 = icmp eq i32 %3005, 0
  br i1 %3011, label %3012, label %3028

; <label>:3012                                    ; preds = %3007
  %3013 = fsub fast float %2897, %3000
  %3014 = fsub fast float %2898, %3001
  %3015 = fsub fast float %2899, %3002
  %3016 = fmul fast float %3010, %3013
  %3017 = fmul fast float %3010, %3014
  %3018 = fmul fast float %3010, %3015
  %3019 = fadd fast float %3016, %3000
  %3020 = fadd fast float %3017, %3001
  %3021 = fadd fast float %3018, %3002
  %3022 = fsub fast float %2883, %2376
  %3023 = fmul fast float %3010, %3022
  %3024 = fadd fast float %3023, %2376
  %3025 = fsub fast float %2993, %2379
  %3026 = fmul fast float %3010, %3025
  %3027 = fadd fast float %3026, %2379
  br label %3073

; <label>:3028                                    ; preds = %3007
  %3029 = icmp eq i32 %3005, 1
  br i1 %3029, label %3030, label %3043

; <label>:3030                                    ; preds = %3028
  %3031 = fadd fast float %2897, -1.000000e+00
  %3032 = fadd fast float %2898, -1.000000e+00
  %3033 = fadd fast float %2899, -1.000000e+00
  %3034 = fmul fast float %3010, %3031
  %3035 = fmul fast float %3010, %3032
  %3036 = fmul fast float %3010, %3033
  %3037 = fadd fast float %3034, 1.000000e+00
  %3038 = fadd fast float %3035, 1.000000e+00
  %3039 = fadd fast float %3036, 1.000000e+00
  %3040 = fmul fast float %3037, %3000
  %3041 = fmul fast float %3038, %3001
  %3042 = fmul fast float %3039, %3002
  br label %3073

; <label>:3043                                    ; preds = %3028
  %3044 = icmp eq i32 %3005, 2
  br i1 %3044, label %3045, label %3073

; <label>:3045                                    ; preds = %3043
  %3046 = call float @dx.op.unary.f32(i32 24, float %2897)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %2898)  ; Sqrt(value)
  %3048 = call float @dx.op.unary.f32(i32 24, float %2899)  ; Sqrt(value)
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fadd fast float %3048, -5.000000e-01
  %3052 = fmul fast float %3049, %3010
  %3053 = fmul fast float %3050, %3010
  %3054 = fmul fast float %3051, %3010
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = fadd fast float %3054, 5.000000e-01
  %3058 = fmul fast float %3055, 2.000000e+00
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %3059, %3000
  %3061 = fadd fast float %3060, %3058
  %3062 = fmul fast float %3061, %3000
  %3063 = fmul fast float %3056, 2.000000e+00
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = fmul fast float %3064, %3001
  %3066 = fadd fast float %3065, %3063
  %3067 = fmul fast float %3066, %3001
  %3068 = fmul fast float %3057, 2.000000e+00
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %3069, %3002
  %3071 = fadd fast float %3070, %3068
  %3072 = fmul fast float %3071, %3002
  br label %3073

; <label>:3073                                    ; preds = %3045, %3043, %3030, %3012, %2999
  %3074 = phi float [ %3000, %2999 ], [ %3062, %3045 ], [ %3000, %3043 ], [ %3040, %3030 ], [ %3019, %3012 ]
  %3075 = phi float [ %3001, %2999 ], [ %3067, %3045 ], [ %3001, %3043 ], [ %3041, %3030 ], [ %3020, %3012 ]
  %3076 = phi float [ %3002, %2999 ], [ %3072, %3045 ], [ %3002, %3043 ], [ %3042, %3030 ], [ %3021, %3012 ]
  %3077 = phi float [ %2376, %2999 ], [ %2376, %3045 ], [ %2376, %3043 ], [ %2376, %3030 ], [ %3024, %3012 ]
  %3078 = phi float [ %2379, %2999 ], [ %2379, %3045 ], [ %2379, %3043 ], [ %2379, %3030 ], [ %3027, %3012 ]
  %3079 = and i32 %3004, 12
  %3080 = icmp eq i32 %3079, 12
  br i1 %3080, label %3153, label %3081

; <label>:3081                                    ; preds = %3073
  %3082 = and i32 %3004, 2097184
  %3083 = icmp eq i32 %3082, 2097184
  %3084 = select i1 %3083, float %2677, float 0.000000e+00
  %3085 = and i32 %3004, 4194336
  %3086 = icmp eq i32 %3085, 4194336
  %3087 = select i1 %3086, float %2677, float 0.000000e+00
  %3088 = and i32 %3004, 8388640
  %3089 = icmp eq i32 %3088, 8388640
  %3090 = select i1 %3089, float %2677, float 0.000000e+00
  %3091 = icmp eq i32 %3079, 0
  br i1 %3091, label %3092, label %3105

; <label>:3092                                    ; preds = %3081
  %3093 = fsub fast float %2978, %2371
  %3094 = fsub fast float %2979, %2372
  %3095 = fmul fast float %3084, %3093
  %3096 = fmul fast float %3084, %3094
  %3097 = fadd fast float %3095, %2371
  %3098 = fadd fast float %3096, %2372
  %3099 = fsub fast float %2980, %2378
  %3100 = fmul fast float %3087, %3099
  %3101 = fadd fast float %3100, %2378
  %3102 = fsub fast float %2977, %2377
  %3103 = fmul fast float %3090, %3102
  %3104 = fadd fast float %3103, %2377
  br label %3153

; <label>:3105                                    ; preds = %3081
  %3106 = icmp eq i32 %3079, 4
  br i1 %3106, label %3107, label %3139

; <label>:3107                                    ; preds = %3105
  %3108 = fmul fast float %3084, %2978
  %3109 = fmul fast float %3084, %2979
  %3110 = fadd fast float %3108, %2371
  %3111 = fadd fast float %3109, %2372
  %3112 = call float @dx.op.binary.f32(i32 36, float %2378, float %2980)  ; FMin(a,b)
  %3113 = fsub fast float %3112, %2378
  %3114 = fmul fast float %3113, %3087
  %3115 = fadd fast float %3114, %2378
  %3116 = fadd fast float %2977, %2377
  %3117 = fmul fast float %3116, 0x3FF337FAE0000000
  %3118 = fmul fast float %2377, %2377
  %3119 = fmul fast float %2977, %2977
  %3120 = fadd fast float %3119, %3118
  %3121 = fmul fast float %3120, 0x3FE5152B00000000
  %3122 = fmul fast float %2377, 0xBFCC1F85E0000000
  %3123 = fmul fast float %3122, %2977
  %3124 = fadd fast float %3123, 0xBFE1363700000000
  %3125 = fadd fast float %3124, %3117
  %3126 = fsub fast float %3125, %3121
  %3127 = fmul fast float %3116, 0x3FBA6F0D00000000
  %3128 = fmul fast float %3120, 0x3FD0432880000000
  %3129 = fmul fast float %2377, 0xBFEF110800000000
  %3130 = fmul fast float %3129, %2977
  %3131 = fadd fast float %3130, 1.000000e+00
  %3132 = fsub fast float %3131, %3127
  %3133 = fadd fast float %3132, %3128
  %3134 = fdiv fast float %3126, %3133
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  %3136 = fsub fast float %3135, %2377
  %3137 = fmul fast float %3136, %3090
  %3138 = fadd fast float %3137, %2377
  br label %3153

; <label>:3139                                    ; preds = %3105
  %3140 = icmp eq i32 %3079, 8
  br i1 %3140, label %3141, label %3153

; <label>:3141                                    ; preds = %3139
  %3142 = fmul fast float %3084, %2978
  %3143 = fmul fast float %3084, %2979
  %3144 = fadd fast float %3142, %2371
  %3145 = fadd fast float %3143, %2372
  %3146 = call float @dx.op.binary.f32(i32 36, float %2378, float %2980)  ; FMin(a,b)
  %3147 = fsub fast float %3146, %2378
  %3148 = fmul fast float %3147, %3087
  %3149 = fadd fast float %3148, %2378
  %3150 = fsub fast float %2977, %2377
  %3151 = fmul fast float %3090, %3150
  %3152 = fadd fast float %3151, %2377
  br label %3153

; <label>:3153                                    ; preds = %3141, %3139, %3107, %3092, %3073, %2676, %2380, %2370
  %3154 = phi float [ %2371, %3073 ], [ %2371, %2676 ], [ %2371, %2370 ], [ %2371, %2380 ], [ %3097, %3092 ], [ %3110, %3107 ], [ %2371, %3139 ], [ %3144, %3141 ]
  %3155 = phi float [ %2372, %3073 ], [ %2372, %2676 ], [ %2372, %2370 ], [ %2372, %2380 ], [ %3098, %3092 ], [ %3111, %3107 ], [ %2372, %3139 ], [ %3145, %3141 ]
  %3156 = phi float [ %3074, %3073 ], [ %2373, %2676 ], [ %2373, %2370 ], [ %2373, %2380 ], [ %3074, %3092 ], [ %3074, %3107 ], [ %3074, %3139 ], [ %3074, %3141 ]
  %3157 = phi float [ %3075, %3073 ], [ %2374, %2676 ], [ %2374, %2370 ], [ %2374, %2380 ], [ %3075, %3092 ], [ %3075, %3107 ], [ %3075, %3139 ], [ %3075, %3141 ]
  %3158 = phi float [ %3076, %3073 ], [ %2375, %2676 ], [ %2375, %2370 ], [ %2375, %2380 ], [ %3076, %3092 ], [ %3076, %3107 ], [ %3076, %3139 ], [ %3076, %3141 ]
  %3159 = phi float [ %3077, %3073 ], [ %2376, %2676 ], [ %2376, %2370 ], [ %2376, %2380 ], [ %3077, %3092 ], [ %3077, %3107 ], [ %3077, %3139 ], [ %3077, %3141 ]
  %3160 = phi float [ %2377, %3073 ], [ %2377, %2676 ], [ %2377, %2370 ], [ %2377, %2380 ], [ %3104, %3092 ], [ %3138, %3107 ], [ %2377, %3139 ], [ %3152, %3141 ]
  %3161 = phi float [ %2378, %3073 ], [ %2378, %2676 ], [ %2378, %2370 ], [ %2378, %2380 ], [ %3101, %3092 ], [ %3115, %3107 ], [ %2378, %3139 ], [ %3149, %3141 ]
  %3162 = phi float [ %3078, %3073 ], [ %2379, %2676 ], [ %2379, %2370 ], [ %2379, %2380 ], [ %3078, %3092 ], [ %3078, %3107 ], [ %3078, %3139 ], [ %3078, %3141 ]
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 0
  %3165 = call float @dx.op.unary.f32(i32 22, float %72)  ; Frc(value)
  %3166 = call float @dx.op.unary.f32(i32 22, float %73)  ; Frc(value)
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = fcmp fast ogt float %3168, 5.000000e-01
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.CBufRet.f32 %3170, 2
  %3174 = extractvalue %dx.types.CBufRet.f32 %3170, 3
  %3175 = fmul fast float %3171, %3165
  %3176 = fmul fast float %3172, %3166
  %3177 = fmul fast float %3173, %3165
  %3178 = fmul fast float %3174, %3166
  %3179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %3175, float %3176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  br i1 %3169, label %3181, label %3185

; <label>:3181                                    ; preds = %3153
  %3182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  br label %3190

; <label>:3185                                    ; preds = %3153
  %3186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %3177, float %3178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  br label %3190

; <label>:3190                                    ; preds = %3185, %3181
  %3191 = phi float [ %3183, %3181 ], [ %3187, %3185 ]
  %3192 = phi float [ %3184, %3181 ], [ %3189, %3185 ]
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3197 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3198 = call float @dx.op.dot4.f32(i32 56, float %3194, float %3195, float %3196, float %3197, float %3180, float %3191, float %3192, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.CBufRet.f32 %3200, 3
  %3205 = call float @dx.op.dot4.f32(i32 56, float %3201, float %3202, float %3203, float %3204, float %3180, float %3191, float %3192, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3206 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = extractvalue %dx.types.CBufRet.f32 %3207, 3
  %3212 = call float @dx.op.dot4.f32(i32 56, float %3208, float %3209, float %3210, float %3211, float %3180, float %3191, float %3192, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %3175, float %3176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = fcmp fast ole float %3199, 0x3FA4B5DCC0000000
  %3217 = fmul fast float %3199, 0x3FB3D07220000000
  %3218 = fadd fast float %3199, 0x3FAC28F5C0000000
  %3219 = fmul fast float %3218, 0x3FEE54EDE0000000
  %3220 = call float @dx.op.unary.f32(i32 23, float %3219)  ; Log(value)
  %3221 = fmul fast float %3220, 0x4003333340000000
  %3222 = call float @dx.op.unary.f32(i32 21, float %3221)  ; Exp(value)
  %3223 = select i1 %3216, float %3217, float %3222
  %3224 = fcmp fast ole float %3206, 0x3FA4B5DCC0000000
  %3225 = fmul fast float %3206, 0x3FB3D07220000000
  %3226 = fadd fast float %3206, 0x3FAC28F5C0000000
  %3227 = fmul fast float %3226, 0x3FEE54EDE0000000
  %3228 = call float @dx.op.unary.f32(i32 23, float %3227)  ; Log(value)
  %3229 = fmul fast float %3228, 0x4003333340000000
  %3230 = call float @dx.op.unary.f32(i32 21, float %3229)  ; Exp(value)
  %3231 = select i1 %3224, float %3225, float %3230
  %3232 = fcmp fast ole float %3213, 0x3FA4B5DCC0000000
  %3233 = fmul fast float %3213, 0x3FB3D07220000000
  %3234 = fadd fast float %3213, 0x3FAC28F5C0000000
  %3235 = fmul fast float %3234, 0x3FEE54EDE0000000
  %3236 = call float @dx.op.unary.f32(i32 23, float %3235)  ; Log(value)
  %3237 = fmul fast float %3236, 0x4003333340000000
  %3238 = call float @dx.op.unary.f32(i32 21, float %3237)  ; Exp(value)
  %3239 = select i1 %3232, float %3233, float %3238
  %3240 = fmul fast float %3223, %3215
  %3241 = fmul fast float %3231, %3215
  %3242 = fmul fast float %3239, %3215
  %3243 = add i32 %49, 360
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.i32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.i32 %3244, 2
  %3248 = bitcast i32 %3245 to float
  %3249 = bitcast i32 %3246 to float
  %3250 = bitcast i32 %3247 to float
  %3251 = fmul fast float %3240, %3248
  %3252 = fmul fast float %3241, %3249
  %3253 = fmul fast float %3242, %3250
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = fmul fast float %3251, %3255
  %3257 = fmul fast float %3252, %3255
  %3258 = fmul fast float %3253, %3255
  %3259 = call float @dx.op.dot2.f32(i32 54, float %3154, float %3155, float %3154, float %3155)  ; Dot2(ax,ay,bx,by)
  %3260 = fmul fast float %3259, 0x3FE3333340000000
  %3261 = fsub fast float 1.000000e+00, %3260
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3155, float %3261, float %3154, float %3155, float %3261)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = call float @dx.op.unary.f32(i32 25, float %3262)  ; Rsqrt(value)
  %3264 = fmul fast float %3263, %3154
  %3265 = fmul fast float %3263, %3155
  %3266 = fmul fast float %3261, %3263
  %3267 = fmul fast float %3266, %91
  %3268 = fmul fast float %3266, %92
  %3269 = fmul fast float %3266, %93
  %3270 = fmul fast float %3264, %65
  %3271 = fmul fast float %3264, %66
  %3272 = fmul fast float %3264, %67
  %3273 = fadd fast float %3267, %3270
  %3274 = fadd fast float %3268, %3271
  %3275 = fadd fast float %3269, %3272
  %3276 = fmul fast float %103, %3265
  %3277 = fmul fast float %104, %3265
  %3278 = fmul fast float %105, %3265
  %3279 = fadd fast float %3273, %3276
  %3280 = fadd fast float %3274, %3277
  %3281 = fadd fast float %3275, %3278
  %3282 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3280, float %3281, float %3279, float %3280, float %3281)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = call float @dx.op.unary.f32(i32 25, float %3282)  ; Rsqrt(value)
  %3284 = fmul fast float %3279, %3283
  %3285 = fmul fast float %3280, %3283
  %3286 = fmul fast float %3281, %3283
  %3287 = and i32 %51, 1
  %3288 = icmp eq i32 %3287, 0
  br i1 %3288, label %3289, label %3797

; <label>:3289                                    ; preds = %3190
  %3290 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3291 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %3292 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %3293 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3294 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %3295 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %3296 = fadd fast float %3290, %147
  %3297 = fadd fast float %3291, %148
  %3298 = fadd fast float %3292, %149
  %3299 = fadd fast float %3293, %147
  %3300 = fadd fast float %3294, %148
  %3301 = fadd fast float %3295, %149
  %3302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.CBufRet.f32 %3302, 1
  %3305 = extractvalue %dx.types.CBufRet.f32 %3302, 2
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3309 = fmul fast float %3303, %84
  %3310 = fmul fast float %3309, %3307
  %3311 = fmul fast float %3304, %85
  %3312 = fmul fast float %3311, %3308
  %3313 = fptoui float %3310 to i32
  %3314 = fptoui float %3312 to i32
  %3315 = fadd fast float %3303, -1.000000e+00
  %3316 = fadd fast float %3304, -1.000000e+00
  %3317 = fptoui float %3315 to i32
  %3318 = fptoui float %3316 to i32
  %3319 = call i32 @dx.op.binary.i32(i32 40, i32 %3313, i32 %3317)  ; UMin(a,b)
  %3320 = call i32 @dx.op.binary.i32(i32 40, i32 %3314, i32 %3318)  ; UMin(a,b)
  %3321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3321, 2
  %3323 = extractvalue %dx.types.CBufRet.f32 %3321, 3
  %3324 = fmul fast float %3322, %79
  %3325 = fsub fast float %3324, %3323
  %3326 = fadd fast float %3305, -1.000000e+00
  %3327 = call float @dx.op.binary.f32(i32 36, float %3325, float %3326)  ; FMin(a,b)
  %3328 = fptoui float %3327 to i32
  %3329 = fptoui float %3303 to i32
  %3330 = fptoui float %3304 to i32
  %3331 = mul i32 %3328, %3330
  %3332 = add i32 %3331, %3320
  %3333 = mul i32 %3332, %3329
  %3334 = add i32 %3333, %3319
  %3335 = shl i32 %3334, 2
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 1023
  %3339 = lshr i32 %3337, 10
  %3340 = icmp eq i32 %3338, 0
  br i1 %3340, label %3766, label %3341

; <label>:3341                                    ; preds = %3289
  %3342 = and i32 %3337, 1023
  br label %3343

; <label>:3343                                    ; preds = %3469, %3341
  %3344 = phi i32 [ %3419, %3469 ], [ 0, %3341 ]
  %3345 = phi float [ %3470, %3469 ], [ 0.000000e+00, %3341 ]
  %3346 = phi float [ %3471, %3469 ], [ %3164, %3341 ]
  %3347 = phi float [ %3472, %3469 ], [ %3162, %3341 ]
  %3348 = phi float [ %3473, %3469 ], [ 0.000000e+00, %3341 ]
  %3349 = phi float [ %3474, %3469 ], [ 0.000000e+00, %3341 ]
  %3350 = phi float [ %3475, %3469 ], [ %3256, %3341 ]
  %3351 = phi float [ %3476, %3469 ], [ %3257, %3341 ]
  %3352 = phi float [ %3477, %3469 ], [ %3258, %3341 ]
  %3353 = phi float [ %3478, %3469 ], [ %3284, %3341 ]
  %3354 = phi float [ %3479, %3469 ], [ %3285, %3341 ]
  %3355 = phi float [ %3480, %3469 ], [ %3286, %3341 ]
  %3356 = phi float [ %3481, %3469 ], [ %3161, %3341 ]
  %3357 = phi float [ %3482, %3469 ], [ %3160, %3341 ]
  %3358 = phi float [ %3483, %3469 ], [ 0.000000e+00, %3341 ]
  %3359 = phi float [ %3484, %3469 ], [ %3159, %3341 ]
  %3360 = phi float [ %3485, %3469 ], [ %3156, %3341 ]
  %3361 = phi float [ %3486, %3469 ], [ %3157, %3341 ]
  %3362 = phi float [ %3487, %3469 ], [ %3158, %3341 ]
  %3363 = add nuw nsw i32 %3344, %3339
  %3364 = shl i32 %3363, 2
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = shl i32 %3366, 8
  %3368 = or i32 %3367, 48
  %3369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = or i32 %3367, 64
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.i32 %3375, 1
  %3378 = or i32 %3367, 80
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 3
  %3382 = or i32 %3367, 96
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = or i32 %3367, 112
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3391 = or i32 %3367, 128
  %3392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.ResRet.f32 %3392, 1
  %3395 = extractvalue %dx.types.ResRet.f32 %3392, 2
  %3396 = extractvalue %dx.types.ResRet.f32 %3392, 3
  %3397 = or i32 %3367, 144
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3403 = or i32 %3367, 160
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3409 = or i32 %3367, 192
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = or i32 %3367, 208
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = or i32 %3367, 248
  %3416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.ResRet.f32 %3416, 1
  %3419 = add nuw nsw i32 %3344, 1
  %3420 = bitcast float %3373 to i32
  %3421 = and i32 %3420, 512
  %3422 = icmp eq i32 %3421, 0
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = call float @dx.op.dot4.f32(i32 56, float %3424, float %3425, float %3426, float %3427, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3429 = or i32 %3367, 16
  %3430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3434 = extractvalue %dx.types.ResRet.f32 %3430, 3
  %3435 = call float @dx.op.dot4.f32(i32 56, float %3431, float %3432, float %3433, float %3434, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3436 = or i32 %3367, 32
  %3437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3437, 2
  %3441 = extractvalue %dx.types.ResRet.f32 %3437, 3
  %3442 = call float @dx.op.dot4.f32(i32 56, float %3438, float %3439, float %3440, float %3441, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3443 = call float @dx.op.unary.f32(i32 27, float %3428)  ; Round_ni(value)
  %3444 = call float @dx.op.unary.f32(i32 6, float %3443)  ; FAbs(value)
  %3445 = call float @dx.op.unary.f32(i32 27, float %3435)  ; Round_ni(value)
  %3446 = call float @dx.op.unary.f32(i32 6, float %3445)  ; FAbs(value)
  %3447 = call float @dx.op.unary.f32(i32 6, float %3442)  ; FAbs(value)
  %3448 = call float @dx.op.unary.f32(i32 27, float %3447)  ; Round_ni(value)
  %3449 = fadd fast float %3446, %3444
  %3450 = fadd fast float %3449, %3448
  %3451 = fcmp fast oeq float %3450, 0.000000e+00
  %3452 = call float @dx.op.dot4.f32(i32 56, float %3424, float %3425, float %3426, float %3427, float %3296, float %3297, float %3298, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3453 = call float @dx.op.dot4.f32(i32 56, float %3431, float %3432, float %3433, float %3434, float %3296, float %3297, float %3298, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3454 = call float @dx.op.dot4.f32(i32 56, float %3424, float %3425, float %3426, float %3427, float %3299, float %3300, float %3301, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3455 = call float @dx.op.dot4.f32(i32 56, float %3431, float %3432, float %3433, float %3434, float %3299, float %3300, float %3301, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3456 = fsub fast float %3452, %3428
  %3457 = fsub fast float %3454, %3428
  %3458 = fsub fast float %3453, %3435
  %3459 = fsub fast float %3455, %3435
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 2
  %3463 = fadd fast float %3462, %3460
  %3464 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3466 = fcmp fast ogt float %3464, %3465
  %3467 = and i1 %3451, %3466
  %3468 = and i1 %3422, %3467
  br i1 %3468, label %3489, label %3469

; <label>:3469                                    ; preds = %3752, %3570, %3489, %3343
  %3470 = phi float [ %3345, %3489 ], [ %3573, %3570 ], [ %3573, %3752 ], [ %3345, %3343 ]
  %3471 = phi float [ %3346, %3489 ], [ %3346, %3570 ], [ %3727, %3752 ], [ %3346, %3343 ]
  %3472 = phi float [ %3347, %3489 ], [ %3347, %3570 ], [ %3725, %3752 ], [ %3347, %3343 ]
  %3473 = phi float [ %3348, %3489 ], [ %3348, %3570 ], [ %3697, %3752 ], [ %3348, %3343 ]
  %3474 = phi float [ %3349, %3489 ], [ %3349, %3570 ], [ %3695, %3752 ], [ %3349, %3343 ]
  %3475 = phi float [ %3350, %3489 ], [ %3350, %3570 ], [ %3762, %3752 ], [ %3350, %3343 ]
  %3476 = phi float [ %3351, %3489 ], [ %3351, %3570 ], [ %3763, %3752 ], [ %3351, %3343 ]
  %3477 = phi float [ %3352, %3489 ], [ %3352, %3570 ], [ %3764, %3752 ], [ %3352, %3343 ]
  %3478 = phi float [ %3353, %3489 ], [ %3353, %3570 ], [ %3676, %3752 ], [ %3353, %3343 ]
  %3479 = phi float [ %3354, %3489 ], [ %3354, %3570 ], [ %3677, %3752 ], [ %3354, %3343 ]
  %3480 = phi float [ %3355, %3489 ], [ %3355, %3570 ], [ %3678, %3752 ], [ %3355, %3343 ]
  %3481 = phi float [ %3356, %3489 ], [ %3356, %3570 ], [ %3705, %3752 ], [ %3356, %3343 ]
  %3482 = phi float [ %3357, %3489 ], [ %3357, %3570 ], [ %3702, %3752 ], [ %3357, %3343 ]
  %3483 = phi float [ %3358, %3489 ], [ %3358, %3570 ], [ %3699, %3752 ], [ %3358, %3343 ]
  %3484 = phi float [ %3359, %3489 ], [ %3359, %3570 ], [ %3693, %3752 ], [ %3359, %3343 ]
  %3485 = phi float [ %3360, %3489 ], [ %3360, %3570 ], [ %3688, %3752 ], [ %3360, %3343 ]
  %3486 = phi float [ %3361, %3489 ], [ %3361, %3570 ], [ %3689, %3752 ], [ %3361, %3343 ]
  %3487 = phi float [ %3362, %3489 ], [ %3362, %3570 ], [ %3690, %3752 ], [ %3362, %3343 ]
  %3488 = icmp eq i32 %3419, %3342
  br i1 %3488, label %3765, label %3343

; <label>:3489                                    ; preds = %3343
  %3490 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3491 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3495 = extractvalue %dx.types.ResRet.i32 %3375, 3
  %3496 = extractvalue %dx.types.ResRet.i32 %3375, 2
  %3497 = add i32 %3495, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3500 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3498, %dx.types.Handle %3499, float %3428, float %3435, float undef, float undef, i32 0, i32 0, i32 undef, float %3456, float %3458, float undef, float %3457, float %3459, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = fmul fast float %3501, %3494
  %3503 = fadd fast float %3502, %3493
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3505 = fmul fast float %3428, %3384
  %3506 = call float @dx.op.tertiary.f32(i32 46, float %3385, float %3435, float %3505)  ; FMad(a,b,c)
  %3507 = fadd fast float %3506, %3492
  %3508 = fmul fast float %3428, %3386
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3387, float %3435, float %3508)  ; FMad(a,b,c)
  %3510 = fadd fast float %3509, %3491
  %3511 = fmul fast float %3456, %3384
  %3512 = call float @dx.op.tertiary.f32(i32 46, float %3385, float %3458, float %3511)  ; FMad(a,b,c)
  %3513 = fmul fast float %3456, %3386
  %3514 = call float @dx.op.tertiary.f32(i32 46, float %3387, float %3458, float %3513)  ; FMad(a,b,c)
  %3515 = fmul fast float %3457, %3384
  %3516 = call float @dx.op.tertiary.f32(i32 46, float %3385, float %3459, float %3515)  ; FMad(a,b,c)
  %3517 = fmul fast float %3457, %3386
  %3518 = call float @dx.op.tertiary.f32(i32 46, float %3387, float %3459, float %3517)  ; FMad(a,b,c)
  %3519 = add i32 %3496, 0
  %3520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3519, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3521 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3520, %dx.types.Handle %3499, float %3507, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float %3512, float %3514, float undef, float %3516, float %3518, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = and i32 %3420, 1024
  %3524 = icmp ne i32 %3523, 0
  %3525 = fcmp fast ogt float %3522, 0x3FE0101020000000
  %3526 = uitofp i1 %3525 to float
  %3527 = select i1 %3524, float %3526, float %3522
  %3528 = and i32 %3420, 8192
  %3529 = icmp ne i32 %3528, 0
  %3530 = select i1 %3529, float %3490, float 1.000000e+00
  %3531 = fmul fast float %3428, 2.000000e+00
  %3532 = fadd fast float %3531, -1.000000e+00
  %3533 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3534 = fmul fast float %3533, %3417
  %3535 = fsub fast float %3534, %3417
  %3536 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  %3537 = fmul fast float %3435, 2.000000e+00
  %3538 = fadd fast float %3537, -1.000000e+00
  %3539 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3540 = fmul fast float %3539, %3418
  %3541 = fsub fast float %3540, %3418
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3543 = fmul fast float %3447, %3380
  %3544 = fsub fast float %3543, %3380
  %3545 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3546 = fmul fast float %3504, %3530
  %3547 = fmul fast float %3546, %3501
  %3548 = fmul fast float %3547, %3536
  %3549 = fmul fast float %3548, %3527
  %3550 = fmul fast float %3549, %3542
  %3551 = fmul fast float %3550, %3545
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3555 = fsub fast float %3464, %3554
  %3556 = fmul fast float %3555, %3553
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fmul fast float %3551, %3381
  %3559 = fadd fast float %3551, %3381
  %3560 = fmul fast float %3559, %3390
  %3561 = fsub fast float %3560, %3390
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = and i32 %3420, 128
  %3564 = icmp ne i32 %3563, 0
  %3565 = select i1 %3564, float %3562, float %3558
  %3566 = fmul fast float %3565, %3557
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3569 = fcmp fast ugt float %3566, %3568
  br i1 %3569, label %3570, label %3469

; <label>:3570                                    ; preds = %3489
  %3571 = select i1 %3529, float %3566, float 0.000000e+00
  %3572 = fadd fast float %3571, %3345
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  br i1 %3529, label %3469, label %3574

; <label>:3574                                    ; preds = %3570
  %3575 = and i32 %3420, 4
  %3576 = and i32 %3420, 8
  %3577 = add i32 %3376, 0
  %3578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3577, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3578, %dx.types.Handle %3579, float %3507, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float %3512, float %3514, float undef, float %3516, float %3518, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.ResRet.f32 %3580, 3
  %3585 = bitcast float %3402 to i32
  %3586 = and i32 %3585, 255
  %3587 = uitofp i32 %3586 to float
  %3588 = lshr i32 %3585, 8
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3584, %3587
  %3592 = fadd fast float %3591, %3590
  %3593 = fmul fast float %3592, 0x3F70101000000000
  %3594 = add i32 %3377, 0
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3594, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3595, %dx.types.Handle %3579, float %3507, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float %3512, float %3514, float undef, float %3516, float %3518, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3601 = bitcast float %3396 to i32
  %3602 = and i32 %3601, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = lshr i32 %3601, 8
  %3605 = and i32 %3604, 255
  %3606 = uitofp i32 %3605 to float
  %3607 = lshr i32 %3601, 16
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = fmul fast float %3609, 0x3F70101000000000
  %3611 = fmul fast float %3597, %3603
  %3612 = fadd fast float %3611, %3606
  %3613 = fmul fast float %3612, 0x3F70101000000000
  %3614 = fadd fast float %3598, -5.000000e-01
  %3615 = fadd fast float %3600, -5.000000e-01
  %3616 = fmul fast float %3614, %3610
  %3617 = fmul fast float %3615, %3610
  %3618 = fadd fast float %3616, 5.000000e-01
  %3619 = fadd fast float %3617, 5.000000e-01
  %3620 = fmul fast float %3581, %3405
  %3621 = fmul fast float %3582, %3406
  %3622 = fmul fast float %3583, %3407
  %3623 = fmul fast float %3618, 2.000000e+00
  %3624 = fadd fast float %3623, -1.000000e+00
  %3625 = fmul fast float %3619, 2.000000e+00
  %3626 = fadd fast float %3625, -1.000000e+00
  %3627 = fadd fast float %3624, %3626
  %3628 = fmul fast float %3627, 5.000000e-01
  %3629 = fsub fast float %3624, %3626
  %3630 = fmul fast float %3629, 5.000000e-01
  %3631 = call float @dx.op.unary.f32(i32 6, float %3628)  ; FAbs(value)
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = call float @dx.op.unary.f32(i32 6, float %3630)  ; FAbs(value)
  %3634 = fsub fast float %3632, %3633
  %3635 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3630, float %3634, float %3628, float %3630, float %3634)  ; Dot3(ax,ay,az,bx,by,bz)
  %3636 = call float @dx.op.unary.f32(i32 25, float %3635)  ; Rsqrt(value)
  %3637 = fmul fast float %3628, %3636
  %3638 = fmul fast float %3630, %3636
  %3639 = fmul fast float %3636, %3634
  %3640 = fmul fast float %3639, %3370
  %3641 = fmul fast float %3639, %3371
  %3642 = fmul fast float %3639, %3372
  %3643 = fmul fast float %3637, %3393
  %3644 = fmul fast float %3637, %3394
  %3645 = fmul fast float %3637, %3395
  %3646 = fadd fast float %3643, %3640
  %3647 = fadd fast float %3644, %3641
  %3648 = fadd fast float %3645, %3642
  %3649 = fmul fast float %3638, %3399
  %3650 = fmul fast float %3638, %3400
  %3651 = fmul fast float %3638, %3401
  %3652 = fadd fast float %3646, %3649
  %3653 = fadd fast float %3647, %3650
  %3654 = fadd fast float %3648, %3651
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3652, float %3653, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call float @dx.op.unary.f32(i32 25, float %3655)  ; Rsqrt(value)
  %3657 = fmul fast float %3652, %3656
  %3658 = fmul fast float %3653, %3656
  %3659 = fmul fast float %3654, %3656
  %3660 = icmp ne i32 %3576, 0
  %3661 = select i1 %3660, float 1.000000e+00, float 0.000000e+00
  %3662 = fmul fast float %3566, %3661
  %3663 = and i32 %3420, 1
  %3664 = icmp eq i32 %3663, 0
  br i1 %3664, label %3665, label %3669

; <label>:3665                                    ; preds = %3574
  %3666 = fsub fast float %3657, %3353
  %3667 = fsub fast float %3658, %3354
  %3668 = fsub fast float %3659, %3355
  br label %3669

; <label>:3669                                    ; preds = %3665, %3574
  %3670 = phi float [ %3666, %3665 ], [ %3657, %3574 ]
  %3671 = phi float [ %3667, %3665 ], [ %3658, %3574 ]
  %3672 = phi float [ %3668, %3665 ], [ %3659, %3574 ]
  %3673 = fmul float %3672, %3662
  %3674 = fmul float %3671, %3662
  %3675 = fmul float %3670, %3662
  %3676 = fadd fast float %3675, %3353
  %3677 = fadd fast float %3674, %3354
  %3678 = fadd fast float %3673, %3355
  %3679 = icmp ne i32 %3575, 0
  %3680 = select i1 %3679, float 1.000000e+00, float 0.000000e+00
  %3681 = fmul fast float %3566, %3680
  %3682 = fsub fast float %3620, %3360
  %3683 = fsub fast float %3621, %3361
  %3684 = fsub fast float %3622, %3362
  %3685 = fmul fast float %3682, %3681
  %3686 = fmul fast float %3683, %3681
  %3687 = fmul fast float %3684, %3681
  %3688 = fadd fast float %3685, %3360
  %3689 = fadd fast float %3686, %3361
  %3690 = fadd fast float %3687, %3362
  %3691 = fsub fast float %3593, %3359
  %3692 = fmul fast float %3691, %3681
  %3693 = fadd fast float %3692, %3359
  %3694 = fmul fast float %3681, %3349
  %3695 = fsub fast float %3349, %3694
  %3696 = fmul fast float %3681, %3348
  %3697 = fsub fast float %3348, %3696
  %3698 = fadd fast float %3566, %3358
  %3699 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3700 = fsub fast float %3613, %3357
  %3701 = fmul fast float %3700, %3662
  %3702 = fadd fast float %3701, %3357
  %3703 = fsub fast float %3599, %3356
  %3704 = fmul fast float %3703, %3662
  %3705 = fadd fast float %3704, %3356
  %3706 = call float @dx.op.dot3.f32(i32 55, float %3620, float %3621, float %3622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = fmul fast float %3709, %3706
  %3711 = fadd fast float %3710, %3708
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = bitcast float %3408 to i32
  %3714 = and i32 %3713, 65535
  %3715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3714)  ; LegacyF16ToF32(value)
  %3716 = lshr i32 %3713, 16
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = fcmp fast oge float %3715, 0.000000e+00
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = select i1 %3718, float %3715, float %3720
  %3722 = fadd fast float %3721, %3717
  %3723 = fsub fast float %3712, %3347
  %3724 = fmul fast float %3723, %3566
  %3725 = fadd fast float %3724, %3347
  %3726 = fmul fast float %3722, %3566
  %3727 = call float @dx.op.binary.f32(i32 35, float %3346, float %3726)  ; FMax(a,b)
  %3728 = and i32 %3420, 16
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3752, label %3730

; <label>:3730                                    ; preds = %3669
  %3731 = bitcast float %3414 to i32
  %3732 = add i32 %3411, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3733, %dx.types.Handle %3579, float %3507, float %3510, float undef, float undef, i32 0, i32 0, i32 undef, float %3512, float %3514, float undef, float %3516, float %3518, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.ResRet.f32 %3734, 1
  %3737 = extractvalue %dx.types.ResRet.f32 %3734, 2
  %3738 = and i32 %3731, 65535
  %3739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3738)  ; LegacyF16ToF32(value)
  %3740 = fmul fast float %3735, %3405
  %3741 = fmul fast float %3736, %3406
  %3742 = fmul fast float %3737, %3407
  %3743 = and i32 %3420, 16384
  %3744 = icmp ne i32 %3743, 0
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = select i1 %3744, float %3746, float 1.000000e+00
  %3748 = fmul fast float %3747, %3739
  %3749 = fmul fast float %3740, %3748
  %3750 = fmul fast float %3741, %3748
  %3751 = fmul fast float %3742, %3748
  br label %3752

; <label>:3752                                    ; preds = %3730, %3669
  %3753 = phi float [ %3749, %3730 ], [ 0.000000e+00, %3669 ]
  %3754 = phi float [ %3750, %3730 ], [ 0.000000e+00, %3669 ]
  %3755 = phi float [ %3751, %3730 ], [ 0.000000e+00, %3669 ]
  %3756 = fsub fast float %3753, %3350
  %3757 = fsub fast float %3754, %3351
  %3758 = fsub fast float %3755, %3352
  %3759 = fmul fast float %3756, %3566
  %3760 = fmul fast float %3757, %3566
  %3761 = fmul fast float %3758, %3566
  %3762 = fadd fast float %3759, %3350
  %3763 = fadd fast float %3760, %3351
  %3764 = fadd fast float %3761, %3352
  br label %3469

; <label>:3765                                    ; preds = %3469
  br label %3766

; <label>:3766                                    ; preds = %3765, %3289
  %3767 = phi float [ 0.000000e+00, %3289 ], [ %3470, %3765 ]
  %3768 = phi float [ %3164, %3289 ], [ %3471, %3765 ]
  %3769 = phi float [ %3162, %3289 ], [ %3472, %3765 ]
  %3770 = phi float [ 0.000000e+00, %3289 ], [ %3473, %3765 ]
  %3771 = phi float [ 0.000000e+00, %3289 ], [ %3474, %3765 ]
  %3772 = phi float [ %3256, %3289 ], [ %3475, %3765 ]
  %3773 = phi float [ %3257, %3289 ], [ %3476, %3765 ]
  %3774 = phi float [ %3258, %3289 ], [ %3477, %3765 ]
  %3775 = phi float [ %3284, %3289 ], [ %3478, %3765 ]
  %3776 = phi float [ %3285, %3289 ], [ %3479, %3765 ]
  %3777 = phi float [ %3286, %3289 ], [ %3480, %3765 ]
  %3778 = phi float [ %3161, %3289 ], [ %3481, %3765 ]
  %3779 = phi float [ %3160, %3289 ], [ %3482, %3765 ]
  %3780 = phi float [ 0.000000e+00, %3289 ], [ %3483, %3765 ]
  %3781 = phi float [ %3159, %3289 ], [ %3484, %3765 ]
  %3782 = phi float [ %3156, %3289 ], [ %3485, %3765 ]
  %3783 = phi float [ %3157, %3289 ], [ %3486, %3765 ]
  %3784 = phi float [ %3158, %3289 ], [ %3487, %3765 ]
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3775, float %3776, float %3777, float %3775, float %3776, float %3777)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = call float @dx.op.unary.f32(i32 25, float %3785)  ; Rsqrt(value)
  %3787 = fmul fast float %3786, %3775
  %3788 = fmul fast float %3786, %3776
  %3789 = fmul fast float %3786, %3777
  %3790 = fadd fast float %3780, %810
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3787, float %3788, float %3789)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = call float @dx.op.unary.f32(i32 25, float %3792)  ; Rsqrt(value)
  %3794 = fmul fast float %3793, %3787
  %3795 = fmul fast float %3793, %3788
  %3796 = fmul fast float %3793, %3789
  br label %3797

; <label>:3797                                    ; preds = %3766, %3190
  %3798 = phi float [ %3794, %3766 ], [ %3284, %3190 ]
  %3799 = phi float [ %3795, %3766 ], [ %3285, %3190 ]
  %3800 = phi float [ %3796, %3766 ], [ %3286, %3190 ]
  %3801 = phi float [ %3782, %3766 ], [ %3156, %3190 ]
  %3802 = phi float [ %3783, %3766 ], [ %3157, %3190 ]
  %3803 = phi float [ %3784, %3766 ], [ %3158, %3190 ]
  %3804 = phi float [ %3772, %3766 ], [ %3256, %3190 ]
  %3805 = phi float [ %3773, %3766 ], [ %3257, %3190 ]
  %3806 = phi float [ %3774, %3766 ], [ %3258, %3190 ]
  %3807 = phi float [ %3781, %3766 ], [ %3159, %3190 ]
  %3808 = phi float [ %3791, %3766 ], [ %810, %3190 ]
  %3809 = phi float [ %3779, %3766 ], [ %3160, %3190 ]
  %3810 = phi float [ %3778, %3766 ], [ %3161, %3190 ]
  %3811 = phi float [ %3771, %3766 ], [ 0.000000e+00, %3190 ]
  %3812 = phi float [ %3770, %3766 ], [ 0.000000e+00, %3190 ]
  %3813 = phi float [ %3767, %3766 ], [ 0.000000e+00, %3190 ]
  %3814 = phi float [ %3768, %3766 ], [ %3164, %3190 ]
  %3815 = phi float [ %3769, %3766 ], [ %3162, %3190 ]
  %3816 = fadd fast float %3807, 0xBFB99999A0000000
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = fmul fast float %3817, 0x3FF1C71C80000000
  %3819 = call float @dx.op.binary.f32(i32 36, float %3807, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3820 = fsub fast float 1.000000e+00, %3818
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fmul fast float %3821, %3801
  %3823 = fmul fast float %3821, %3802
  %3824 = fmul fast float %3821, %3803
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3827 = call float @dx.op.unary.f32(i32 7, float %3824)  ; Saturate(value)
  %3828 = fmul fast float %3818, %3801
  %3829 = fmul fast float %3818, %3802
  %3830 = fmul fast float %3818, %3803
  %3831 = fadd fast float %3828, %3819
  %3832 = fadd fast float %3829, %3819
  %3833 = fadd fast float %3830, %3819
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3836 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3837 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.i32 %3838, 3
  %3840 = and i32 %3839, 8
  %3841 = icmp ne i32 %3840, 0
  %3842 = call float @dx.op.binary.f32(i32 35, float %3825, float %3801)  ; FMax(a,b)
  %3843 = call float @dx.op.binary.f32(i32 35, float %3826, float %3801)  ; FMax(a,b)
  %3844 = call float @dx.op.binary.f32(i32 35, float %3827, float %3801)  ; FMax(a,b)
  %3845 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3846 = select i1 %189, float %3801, float %3825
  %3847 = select i1 %189, float %3845, float %3826
  %3848 = select i1 %189, float 1.000000e+00, float %3827
  %3849 = select i1 %3841, float %3842, float %3846
  %3850 = select i1 %3841, float %3843, float %3847
  %3851 = select i1 %3841, float %3844, float %3848
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3856 = fadd fast float %3853, %147
  %3857 = fadd fast float %3854, %148
  %3858 = fadd fast float %3855, %149
  %3859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3860 = extractvalue %dx.types.CBufRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.CBufRet.f32 %3859, 1
  %3862 = fsub fast float %3856, %3860
  %3863 = fsub fast float %3857, %3861
  %3864 = fmul fast float %3862, %3862
  %3865 = fmul fast float %3863, %3863
  %3866 = fadd fast float %3864, %3865
  %3867 = call float @dx.op.unary.f32(i32 24, float %3866)  ; Sqrt(value)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3859, 2
  %3869 = fcmp fast olt float %3867, %3868
  br i1 %3869, label %3870, label %3937

; <label>:3870                                    ; preds = %3797
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3878 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3875, 1
  %3880 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3881 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3882 = extractvalue %dx.types.CBufRet.f32 %3875, 3
  %3883 = fadd fast float %3880, %3856
  %3884 = fadd fast float %3881, %3857
  %3885 = fadd fast float %3882, %3858
  %3886 = fmul fast float %3883, %3872
  %3887 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3874, float %3886)  ; FMad(a,b,c)
  %3888 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3876, float %3887)  ; FMad(a,b,c)
  %3889 = fmul fast float %3883, %3877
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3878, float %3889)  ; FMad(a,b,c)
  %3891 = call float @dx.op.tertiary.f32(i32 46, float %3885, float %3879, float %3890)  ; FMad(a,b,c)
  %3892 = fsub fast float %3888, %3880
  %3893 = fsub fast float %3891, %3881
  %3894 = fsub fast float %3892, %3860
  %3895 = fadd fast float %3894, %3868
  %3896 = fsub fast float %3893, %3861
  %3897 = fadd fast float %3896, %3868
  %3898 = extractvalue %dx.types.CBufRet.f32 %3859, 3
  %3899 = fmul fast float %3895, %3898
  %3900 = fmul fast float %3897, %3898
  %3901 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3903 = fsub fast float 1.000000e+00, %3901
  %3904 = fsub fast float 1.000000e+00, %3902
  %3905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %3903, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = fcmp fast ugt float %3906, 0.000000e+00
  br i1 %3907, label %3908, label %4211

; <label>:3908                                    ; preds = %3870
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3911 = fmul fast float %3910, %3906
  %3912 = extractvalue %dx.types.CBufRet.f32 %3909, 3
  %3913 = fadd fast float %3912, %3911
  %3914 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3915 = fadd fast float %3913, %3882
  %3916 = fmul fast float %3888, %3876
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %3891, float %3879, float %3916)  ; FMad(a,b,c)
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %3915, float %3914, float %3917)  ; FMad(a,b,c)
  %3919 = fsub fast float %3918, %3882
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3922 = fsub fast float %3919, %3921
  %3923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %3903, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %3926 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %3903, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = fadd fast float %3928, %3924
  %3932 = fmul fast float %3931, 0x3F847AE140000000
  %3933 = fadd fast float %3929, %3925
  %3934 = fmul fast float %3933, 0x3F847AE140000000
  %3935 = fadd fast float %3930, %3926
  %3936 = fmul fast float %3935, 0x3F847AE140000000
  br label %4211

; <label>:3937                                    ; preds = %3797
  %3938 = and i32 %165, 1
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %4211, label %3940

; <label>:3940                                    ; preds = %3937
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3951 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3952 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3953 = fadd fast float %3950, %3856
  %3954 = fadd fast float %3951, %3857
  %3955 = fadd fast float %3952, %3858
  %3956 = fmul fast float %3953, %3942
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3944, float %3956)  ; FMad(a,b,c)
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3946, float %3957)  ; FMad(a,b,c)
  %3959 = fmul fast float %3953, %3947
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3948, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fsub fast float %3958, %3950
  %3963 = fsub fast float %3961, %3951
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.CBufRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 3
  %3971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.i32 %3971, 0
  %3973 = extractvalue %dx.types.CBufRet.i32 %3971, 1
  %3974 = udiv i32 %3973, %3972
  %3975 = fsub fast float %3962, %3965
  %3976 = fsub fast float %3963, %3966
  %3977 = call float @dx.op.binary.f32(i32 35, float %3975, float 0.000000e+00)  ; FMax(a,b)
  %3978 = call float @dx.op.binary.f32(i32 35, float %3976, float 0.000000e+00)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 36, float %3977, float %3967)  ; FMin(a,b)
  %3980 = call float @dx.op.binary.f32(i32 36, float %3978, float %3968)  ; FMin(a,b)
  %3981 = add i32 %3972, -1
  %3982 = add i32 %3974, -1
  %3983 = fmul fast float %3979, %3970
  %3984 = fmul fast float %3980, %3970
  %3985 = fptoui float %3983 to i32
  %3986 = fptoui float %3984 to i32
  %3987 = call i32 @dx.op.binary.i32(i32 40, i32 %3985, i32 %3981)  ; UMin(a,b)
  %3988 = call i32 @dx.op.binary.i32(i32 40, i32 %3986, i32 %3982)  ; UMin(a,b)
  %3989 = mul i32 %3988, %3972
  %3990 = add i32 %3989, %3987
  %3991 = shl i32 %3990, 2
  %3992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.i32 %3992, 0
  %3994 = icmp eq i32 %3993, -1
  br i1 %3994, label %4211, label %3995

; <label>:3995                                    ; preds = %3940
  %3996 = mul i32 %3993, 148
  %3997 = add i32 %3996, 4
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = add i32 %3996, 8
  %4001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4000, i32 undef)  ; BufferLoad(srv,index,wot)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = add i32 %3996, 36
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = add i32 %3996, 60
  %4007 = add i32 %3996, 92
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = add i32 %3996, 116
  %4011 = fsub fast float %3962, %3999
  %4012 = fsub fast float %3963, %4002
  %4013 = fmul fast float %3970, %4011
  %4014 = fmul fast float %3970, %4012
  %4015 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4016 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4017 = fsub fast float 1.000000e+00, %4016
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4020 = call float @dx.op.unary.f32(i32 83, float %4015)  ; DerivCoarseX(value)
  %4021 = call float @dx.op.unary.f32(i32 83, float %4017)  ; DerivCoarseX(value)
  %4022 = call float @dx.op.unary.f32(i32 84, float %4015)  ; DerivCoarseY(value)
  %4023 = call float @dx.op.unary.f32(i32 84, float %4017)  ; DerivCoarseY(value)
  %4024 = fmul fast float %4020, %4019
  %4025 = fmul fast float %4021, %4019
  %4026 = fmul fast float %4022, %4019
  %4027 = fmul fast float %4023, %4019
  %4028 = call float @dx.op.dot2.f32(i32 54, float %4026, float %4027, float %4026, float %4027)  ; Dot2(ax,ay,bx,by)
  %4029 = call float @dx.op.dot2.f32(i32 54, float %4024, float %4025, float %4024, float %4025)  ; Dot2(ax,ay,bx,by)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4029, float %4028)  ; FMax(a,b)
  %4031 = call float @dx.op.unary.f32(i32 23, float %4030)  ; Log(value)
  %4032 = fmul fast float %4031, 5.000000e-01
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4035 = fadd fast float %4034, %4032
  %4036 = call float @dx.op.binary.f32(i32 35, float %4035, float 0.000000e+00)  ; FMax(a,b)
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4039 = fadd fast float %4038, %4036
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4042 = fadd fast float %4039, %4041
  %4043 = add i32 %4009, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4044, i32 0)  ; GetDimensions(handle,mipLevel)
  %4046 = extractvalue %dx.types.Dimensions %4045, 0
  %4047 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4046)  ; FirstbitLo(value)
  %4048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.i32 %4048, 1
  %4050 = sub nsw i32 %4049, %4047
  %4051 = sitofp i32 %4050 to float
  %4052 = fsub fast float %4042, %4051
  %4053 = call float @dx.op.binary.f32(i32 35, float %4052, float 0.000000e+00)  ; FMax(a,b)
  %4054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4044, %dx.types.Handle %42, float %4015, float %4017, float %4005, float undef, i32 0, i32 0, i32 undef, float %4053)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = fcmp ule float %4055, 0x3FE0101020000000
  %4057 = extractvalue %dx.types.CBufRet.i32 %4048, 0
  %4058 = and i32 %4057, 128
  %4059 = icmp ne i32 %4058, 0
  %4060 = and i1 %4056, %4059
  br i1 %4060, label %4211, label %4061

; <label>:4061                                    ; preds = %3995
  %4062 = add i32 %3996, 20
  %4063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4062, i32 undef)  ; BufferLoad(srv,index,wot)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = add i32 %3996, 24
  %4066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4065, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = add i32 %3996, 40
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = add i32 %3996, 96
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = fmul fast float %4075, %4015
  %4077 = fmul fast float %4075, %4017
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4079 = fadd fast float %4076, %4078
  %4080 = fadd fast float %4077, %4078
  %4081 = add i32 %4073, 0
  %4082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4081, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4083 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4082, i32 0)  ; GetDimensions(handle,mipLevel)
  %4084 = extractvalue %dx.types.Dimensions %4083, 0
  %4085 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4084)  ; FirstbitLo(value)
  %4086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.i32 %4086, 1
  %4088 = sub nsw i32 %4087, %4085
  %4089 = sitofp i32 %4088 to float
  %4090 = fsub fast float %4039, %4089
  %4091 = call float @dx.op.binary.f32(i32 35, float %4090, float 0.000000e+00)  ; FMax(a,b)
  %4092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4082, %dx.types.Handle %42, float %4079, float %4080, float %4070, float undef, i32 0, i32 0, i32 undef, float %4091)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = fmul fast float %4093, %4064
  %4095 = fadd fast float %4094, %4067
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4104 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4105 = fadd fast float %4101, %3962
  %4106 = fadd fast float %4103, %3963
  %4107 = fadd fast float %4095, %4104
  %4108 = fmul fast float %4105, %4097
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4098, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4099, float %4109)  ; FMad(a,b,c)
  %4111 = fsub fast float %4110, %4104
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 2
  %4114 = fsub fast float %4111, %4113
  %4115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.i32 %4115, 0
  %4117 = call i32 @dx.op.binary.i32(i32 40, i32 %3993, i32 %4116)  ; UMin(a,b)
  %4118 = mul i32 %4117, 36
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = add i32 %4118, 4
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = fmul fast float %4123, %4015
  %4125 = fmul fast float %4123, %4017
  %4126 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4127 = fadd fast float %4124, %4126
  %4128 = fadd fast float %4125, %4126
  %4129 = icmp eq i32 %4120, 0
  br i1 %4129, label %4198, label %4130

; <label>:4130                                    ; preds = %4061
  br label %4131

; <label>:4131                                    ; preds = %4188, %4130
  %4132 = phi float [ %4189, %4188 ], [ 0.000000e+00, %4130 ]
  %4133 = phi float [ %4190, %4188 ], [ 0.000000e+00, %4130 ]
  %4134 = phi float [ %4191, %4188 ], [ 0.000000e+00, %4130 ]
  %4135 = phi float [ %4192, %4188 ], [ 0.000000e+00, %4130 ]
  %4136 = phi float [ %4193, %4188 ], [ 0.000000e+00, %4130 ]
  %4137 = phi float [ %4194, %4188 ], [ 0.000000e+00, %4130 ]
  %4138 = phi i32 [ %4195, %4188 ], [ 0, %4130 ]
  %4139 = shl i32 %4138, 2
  %4140 = add i32 %4006, %4139
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = add i32 %4010, %4139
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = add i32 %4145, 0
  %4147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4146, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4148 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4147, i32 0)  ; GetDimensions(handle,mipLevel)
  %4149 = extractvalue %dx.types.Dimensions %4148, 0
  %4150 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4149)  ; FirstbitLo(value)
  %4151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.i32 %4151, 1
  %4153 = sub nsw i32 %4152, %4150
  %4154 = sitofp i32 %4153 to float
  %4155 = fsub fast float %4039, %4154
  %4156 = call float @dx.op.binary.f32(i32 35, float %4155, float 0.000000e+00)  ; FMax(a,b)
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4147, %dx.types.Handle %42, float %4127, float %4128, float %4142, float undef, i32 0, i32 0, i32 undef, float %4156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = fcmp fast ogt float %4158, 0.000000e+00
  br i1 %4159, label %4160, label %4188

; <label>:4160                                    ; preds = %4131
  %4161 = add i32 %4121, %4139
  %4162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.i32 %4162, 0
  %4164 = and i32 %4163, 32767
  %4165 = mul nuw nsw i32 %4164, 928
  %4166 = add nuw nsw i32 %4165, 48
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = add nuw nsw i32 %4165, 60
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = fmul fast float %4168, %4158
  %4177 = fmul fast float %4169, %4158
  %4178 = fmul fast float %4170, %4158
  %4179 = fadd fast float %4176, %4132
  %4180 = fadd fast float %4177, %4133
  %4181 = fadd fast float %4178, %4134
  %4182 = fmul fast float %4173, %4158
  %4183 = fmul fast float %4174, %4158
  %4184 = fmul fast float %4175, %4158
  %4185 = fadd fast float %4182, %4135
  %4186 = fadd fast float %4183, %4136
  %4187 = fadd fast float %4184, %4137
  br label %4188

; <label>:4188                                    ; preds = %4160, %4131
  %4189 = phi float [ %4179, %4160 ], [ %4132, %4131 ]
  %4190 = phi float [ %4180, %4160 ], [ %4133, %4131 ]
  %4191 = phi float [ %4181, %4160 ], [ %4134, %4131 ]
  %4192 = phi float [ %4185, %4160 ], [ %4135, %4131 ]
  %4193 = phi float [ %4186, %4160 ], [ %4136, %4131 ]
  %4194 = phi float [ %4187, %4160 ], [ %4137, %4131 ]
  %4195 = add nuw i32 %4138, 1
  %4196 = icmp eq i32 %4195, %4120
  br i1 %4196, label %4197, label %4131

; <label>:4197                                    ; preds = %4188
  br label %4198

; <label>:4198                                    ; preds = %4197, %4061
  %4199 = phi float [ 0.000000e+00, %4061 ], [ %4189, %4197 ]
  %4200 = phi float [ 0.000000e+00, %4061 ], [ %4190, %4197 ]
  %4201 = phi float [ 0.000000e+00, %4061 ], [ %4191, %4197 ]
  %4202 = phi float [ 0.000000e+00, %4061 ], [ %4192, %4197 ]
  %4203 = phi float [ 0.000000e+00, %4061 ], [ %4193, %4197 ]
  %4204 = phi float [ 0.000000e+00, %4061 ], [ %4194, %4197 ]
  %4205 = fadd fast float %4202, %4199
  %4206 = fmul fast float %4205, 0x3F847AE140000000
  %4207 = fadd fast float %4203, %4200
  %4208 = fmul fast float %4207, 0x3F847AE140000000
  %4209 = fadd fast float %4204, %4201
  %4210 = fmul fast float %4209, 0x3F847AE140000000
  br label %4211

; <label>:4211                                    ; preds = %4198, %3995, %3940, %3937, %3908, %3870
  %4212 = phi float [ %3922, %3908 ], [ -1.310720e+05, %3870 ], [ %4114, %4198 ], [ -1.310720e+05, %3940 ], [ -1.310720e+05, %3995 ], [ -1.310720e+05, %3937 ]
  %4213 = phi float [ %3932, %3908 ], [ 0.000000e+00, %3870 ], [ %4206, %4198 ], [ 0.000000e+00, %3940 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %3937 ]
  %4214 = phi float [ %3934, %3908 ], [ 0.000000e+00, %3870 ], [ %4208, %4198 ], [ 0.000000e+00, %3940 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %3937 ]
  %4215 = phi float [ %3936, %3908 ], [ 0.000000e+00, %3870 ], [ %4210, %4198 ], [ 0.000000e+00, %3940 ], [ 0.000000e+00, %3995 ], [ 0.000000e+00, %3937 ]
  %4216 = phi i1 [ true, %3908 ], [ false, %3870 ], [ true, %4198 ], [ false, %3940 ], [ false, %3995 ], [ false, %3937 ]
  %4217 = and i32 %165, 3
  %4218 = icmp eq i32 %4217, 1
  %4219 = select i1 %4218, float 1.000000e+00, float 0.000000e+00
  %4220 = fsub fast float %4212, %149
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4222 = select i1 %4216, float %4221, float 1.000000e+00
  %4223 = fmul fast float %4222, %4219
  %4224 = icmp eq i32 %4217, 3
  %4225 = select i1 %4224, float 1.000000e+00, float %4223
  %4226 = call float @dx.op.binary.f32(i32 35, float %3813, float %4225)  ; FMax(a,b)
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = fcmp fast une float %4227, 0.000000e+00
  %4229 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call float @dx.op.unary.f32(i32 25, float %4229)  ; Rsqrt(value)
  br i1 %4228, label %4238, label %4231

; <label>:4231                                    ; preds = %4211
  %4232 = fmul fast float %4230, %147
  %4233 = fmul fast float %4230, %148
  %4234 = fmul fast float %4230, %149
  %4235 = fsub fast float -0.000000e+00, %4232
  %4236 = fsub fast float -0.000000e+00, %4233
  %4237 = fsub fast float -0.000000e+00, %4234
  br label %4406

; <label>:4238                                    ; preds = %4211
  %4239 = fmul fast float %147, %4230
  %4240 = fsub fast float -0.000000e+00, %4239
  %4241 = fmul fast float %148, %4230
  %4242 = fsub fast float -0.000000e+00, %4241
  %4243 = fmul fast float %149, %4230
  %4244 = fsub fast float -0.000000e+00, %4243
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4242, float %4244, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = fmul fast float %4227, 2.500000e+00
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fmul fast float %4227, 0x4013FFFFE0000000
  %4249 = fadd fast float %4248, 0xBFFFFFFFE0000000
  %4250 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4251 = fmul fast float %4227, 0x4004000020000000
  %4252 = fadd fast float %4251, 0xBFF8000040000000
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4255 = fmul fast float %3816, 1.000000e+01
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, 2.000000e+00
  %4258 = fsub fast float 3.000000e+00, %4257
  %4259 = fmul fast float %4256, %4256
  %4260 = fmul fast float %4259, %4258
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = fsub fast float 0x3FE3333340000000, %3837
  %4263 = fmul fast float %4262, 0x400AAAAAA0000000
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = fmul fast float %4261, %4264
  %4266 = fmul fast float %3849, 0x3FEA2B8620000000
  %4267 = fmul fast float %3850, 0x3FEA2B8620000000
  %4268 = fmul fast float %3851, 0x3FEA2B8620000000
  %4269 = fadd fast float %4266, 0x3FC81DFBA0000000
  %4270 = fmul fast float %4269, %3849
  %4271 = fadd fast float %4270, 0x3F910E6020000000
  %4272 = fadd fast float %4267, 0x3FC81DFBA0000000
  %4273 = fmul fast float %4272, %3850
  %4274 = fadd fast float %4273, 0x3F910E6020000000
  %4275 = fadd fast float %4268, 0x3FC81DFBA0000000
  %4276 = fmul fast float %4275, %3851
  %4277 = fadd fast float %4276, 0x3F910E6020000000
  %4278 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = fsub fast float %4278, %3849
  %4282 = fsub fast float %4279, %3850
  %4283 = fsub fast float %4280, %3851
  %4284 = fmul fast float %4281, %4254
  %4285 = fmul fast float %4284, %4265
  %4286 = fmul fast float %4282, %4254
  %4287 = fmul fast float %4286, %4265
  %4288 = fmul fast float %4283, %4254
  %4289 = fmul fast float %4288, %4265
  %4290 = fadd fast float %4285, %3849
  %4291 = fadd fast float %4287, %3850
  %4292 = fadd fast float %4289, %3851
  %4293 = fmul fast float %3810, %3810
  %4294 = fmul fast float %4293, %4293
  %4295 = fadd fast float %4250, 1.000000e+00
  %4296 = fsub fast float %4295, %4265
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = fsub fast float 1.000000e+00, %4294
  %4301 = call float @dx.op.binary.f32(i32 36, float %4297, float %4300)  ; FMin(a,b)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4303 = call float @dx.op.binary.f32(i32 35, float %4301, float %4302)  ; FMax(a,b)
  %4304 = fadd fast float %4299, 0xBFE4CCCCC0000000
  %4305 = fmul fast float %4304, 0x4006DB6DA0000000
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = fmul fast float %4306, 2.000000e+00
  %4308 = fsub fast float 3.000000e+00, %4307
  %4309 = bitcast float %3834 to i32
  %4310 = ashr i32 %4309, 1
  %4311 = add nsw i32 %4310, 532487669
  %4312 = bitcast i32 %4311 to float
  %4313 = fsub fast float 1.000000e+00, %4312
  %4314 = bitcast float %4313 to i32
  %4315 = sub nsw i32 2129859010, %4314
  %4316 = bitcast i32 %4315 to float
  %4317 = fmul fast float %4316, 2.000000e+00
  %4318 = bitcast float %3835 to i32
  %4319 = ashr i32 %4318, 1
  %4320 = add nsw i32 %4319, 532487669
  %4321 = bitcast i32 %4320 to float
  %4322 = fsub fast float 1.000000e+00, %4321
  %4323 = bitcast float %4322 to i32
  %4324 = sub nsw i32 2129859010, %4323
  %4325 = bitcast i32 %4324 to float
  %4326 = fmul fast float %4325, 2.000000e+00
  %4327 = bitcast float %3836 to i32
  %4328 = ashr i32 %4327, 1
  %4329 = add nsw i32 %4328, 532487669
  %4330 = bitcast i32 %4329 to float
  %4331 = fsub fast float 1.000000e+00, %4330
  %4332 = bitcast float %4331 to i32
  %4333 = sub nsw i32 2129859010, %4332
  %4334 = bitcast i32 %4333 to float
  %4335 = fmul fast float %4334, 2.000000e+00
  %4336 = fsub fast float 0x4002A9FBE0000000, %4317
  %4337 = fadd fast float %4317, 0x3FD54FDF00000000
  %4338 = bitcast float %4337 to i32
  %4339 = sub nsw i32 2129859010, %4338
  %4340 = bitcast i32 %4339 to float
  %4341 = fmul fast float %4340, %4336
  %4342 = fmul fast float %4341, %4341
  %4343 = fsub fast float 0x4002A9FBE0000000, %4326
  %4344 = fadd fast float %4326, 0x3FD54FDF00000000
  %4345 = bitcast float %4344 to i32
  %4346 = sub nsw i32 2129859010, %4345
  %4347 = bitcast i32 %4346 to float
  %4348 = fmul fast float %4347, %4343
  %4349 = fmul fast float %4348, %4348
  %4350 = fsub fast float 0x4002A9FBE0000000, %4335
  %4351 = fadd fast float %4335, 0x3FD54FDF00000000
  %4352 = bitcast float %4351 to i32
  %4353 = sub nsw i32 2129859010, %4352
  %4354 = bitcast i32 %4353 to float
  %4355 = fmul fast float %4354, %4350
  %4356 = fmul fast float %4355, %4355
  %4357 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4342)  ; FMax(a,b)
  %4358 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4349)  ; FMax(a,b)
  %4359 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4356)  ; FMax(a,b)
  %4360 = fsub fast float 1.000000e+00, %4245
  %4361 = fadd fast float %4360, %4261
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fsub fast float 1.000000e+00, %4225
  %4364 = fmul fast float %4303, %4363
  %4365 = fmul fast float %4306, %4306
  %4366 = fmul fast float %4365, %4364
  %4367 = fmul fast float %4366, %4308
  %4368 = fmul fast float %4363, 0xBFE99999A0000000
  %4369 = fmul fast float %4368, %4254
  %4370 = fmul fast float %4369, %4265
  %4371 = fadd fast float %4370, 1.000000e+00
  %4372 = fadd fast float %3837, -1.000000e+00
  %4373 = fmul fast float %4371, %4372
  %4374 = fadd fast float %4373, 1.000000e+00
  %4375 = fsub fast float %4357, %3834
  %4376 = fsub fast float %4358, %3835
  %4377 = fsub fast float %4359, %3836
  %4378 = fmul fast float %4367, %4375
  %4379 = fmul fast float %4367, %4376
  %4380 = fmul fast float %4367, %4377
  %4381 = fadd fast float %4378, %3834
  %4382 = fadd fast float %4379, %3835
  %4383 = fadd fast float %4380, %3836
  %4384 = fsub fast float %91, %3798
  %4385 = fsub fast float %92, %3799
  %4386 = fsub fast float %93, %3800
  %4387 = fmul fast float %4367, %4384
  %4388 = fmul fast float %4367, %4385
  %4389 = fmul fast float %4367, %4386
  %4390 = fadd fast float %4387, %3798
  %4391 = fadd fast float %4388, %3799
  %4392 = fadd fast float %4389, %3800
  %4393 = fmul fast float %4367, %4362
  %4394 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4395 = fsub fast float 1.000000e+00, %4394
  %4396 = fmul fast float %4393, %4395
  %4397 = fadd fast float %4396, %4394
  %4398 = fsub fast float 1.000000e+00, %3810
  %4399 = fmul fast float %4367, %4398
  %4400 = fadd fast float %4399, %3810
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4390, float %4391, float %4392, float %4390, float %4391, float %4392)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4390, %4402
  %4404 = fmul fast float %4391, %4402
  %4405 = fmul fast float %4392, %4402
  br label %4406

; <label>:4406                                    ; preds = %4238, %4231
  %4407 = phi float [ %4237, %4231 ], [ %4244, %4238 ]
  %4408 = phi float [ %4236, %4231 ], [ %4242, %4238 ]
  %4409 = phi float [ %4235, %4231 ], [ %4240, %4238 ]
  %4410 = phi float [ %4234, %4231 ], [ %4243, %4238 ]
  %4411 = phi float [ %4233, %4231 ], [ %4241, %4238 ]
  %4412 = phi float [ %4232, %4231 ], [ %4239, %4238 ]
  %4413 = phi float [ %3834, %4231 ], [ %4381, %4238 ]
  %4414 = phi float [ %3835, %4231 ], [ %4382, %4238 ]
  %4415 = phi float [ %3836, %4231 ], [ %4383, %4238 ]
  %4416 = phi float [ %3849, %4231 ], [ %4290, %4238 ]
  %4417 = phi float [ %3850, %4231 ], [ %4291, %4238 ]
  %4418 = phi float [ %3851, %4231 ], [ %4292, %4238 ]
  %4419 = phi float [ %3798, %4231 ], [ %4403, %4238 ]
  %4420 = phi float [ %3799, %4231 ], [ %4404, %4238 ]
  %4421 = phi float [ %3800, %4231 ], [ %4405, %4238 ]
  %4422 = phi float [ %3837, %4231 ], [ %4397, %4238 ]
  %4423 = phi float [ %3810, %4231 ], [ %4400, %4238 ]
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 2
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 3
  %4427 = fmul fast float %4425, %84
  %4428 = fmul fast float %4426, %85
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.CBufRet.f32 %4429, 1
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = fmul fast float %4433, %4431
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fadd fast float %4435, -1.000000e+00
  %4437 = fmul fast float %4436, %4430
  %4438 = fadd fast float %4437, 1.000000e+00
  %4439 = select i1 %189, float 0.000000e+00, float %4415
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %4409, float %4408, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4411, float %4410, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = fmul fast float %4442, 2.000000e+00
  %4444 = fmul fast float %4443, %4419
  %4445 = fmul fast float %4443, %4420
  %4446 = fmul fast float %4443, %4421
  %4447 = fsub fast float %4412, %4444
  %4448 = fsub fast float %4411, %4445
  %4449 = fsub fast float %4410, %4446
  %4450 = call float @dx.op.binary.f32(i32 36, float %4423, float %4438)  ; FMin(a,b)
  %4451 = fsub fast float 1.000000e+00, %4450
  %4452 = bitcast float %4451 to i32
  %4453 = ashr i32 %4452, 1
  %4454 = add nsw i32 %4453, 532487669
  %4455 = bitcast i32 %4454 to float
  %4456 = fsub fast float 1.000000e+00, %4422
  %4457 = call float @dx.op.binary.f32(i32 35, float %4456, float 0x3F847AE140000000)  ; FMax(a,b)
  %4458 = fmul fast float %4457, %4457
  %4459 = fmul fast float %4458, %4458
  %4460 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %4455, float %4459, float %4460, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = fsub fast float 1.000000e+00, %4423
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = fsub fast float 1.000000e+00, %61
  %4467 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.binary.f32(i32 35, float %4467, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4469 = fdiv fast float %4466, %4468
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4471, 5.000000e-01
  %4473 = fadd fast float %4472, 5.000000e-01
  %4474 = fmul fast float %4473, %61
  %4475 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, %4469
  %4478 = fadd fast float %4474, %4477
  %4479 = fsub fast float 5.000000e-01, %4472
  %4480 = fmul fast float %4479, %4416
  %4481 = fmul fast float %4479, %4417
  %4482 = fmul fast float %4479, %4418
  %4483 = fadd fast float %4478, %4480
  %4484 = fadd fast float %4478, %4481
  %4485 = fadd fast float %4478, %4482
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4449, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, 5.000000e-01
  %4489 = fadd fast float %4488, 5.000000e-01
  %4490 = fmul fast float %4489, %61
  %4491 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4449, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, %4469
  %4494 = fadd fast float %4490, %4493
  %4495 = fsub fast float 5.000000e-01, %4488
  %4496 = fmul fast float %4495, %4416
  %4497 = fmul fast float %4495, %4417
  %4498 = fmul fast float %4495, %4418
  %4499 = fadd fast float %4494, %4496
  %4500 = fadd fast float %4494, %4497
  %4501 = fadd fast float %4494, %4498
  %4502 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = call float @dx.op.binary.f32(i32 36, float %4416, float %4504)  ; FMin(a,b)
  %4506 = fmul fast float %4505, %4451
  %4507 = fsub fast float 1.000000e+00, %4506
  %4508 = bitcast float %4507 to i32
  %4509 = sub nsw i32 2129859010, %4508
  %4510 = bitcast i32 %4509 to float
  %4511 = call float @dx.op.binary.f32(i32 36, float %4417, float %4504)  ; FMin(a,b)
  %4512 = fmul fast float %4511, %4451
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = bitcast float %4513 to i32
  %4515 = sub nsw i32 2129859010, %4514
  %4516 = bitcast i32 %4515 to float
  %4517 = call float @dx.op.binary.f32(i32 36, float %4418, float %4504)  ; FMin(a,b)
  %4518 = fmul fast float %4517, %4451
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = bitcast float %4519 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = fmul fast float %4450, %62
  %4524 = fmul fast float %4523, %4483
  %4525 = fmul fast float %4524, %4510
  %4526 = fmul fast float %4450, %63
  %4527 = fmul fast float %4526, %4484
  %4528 = fmul fast float %4527, %4516
  %4529 = fmul fast float %4450, %64
  %4530 = fmul fast float %4529, %4485
  %4531 = fmul fast float %4530, %4522
  %4532 = call float @dx.op.binary.f32(i32 36, float %4413, float %4504)  ; FMin(a,b)
  %4533 = fmul fast float %4532, %4451
  %4534 = fsub fast float 1.000000e+00, %4533
  %4535 = bitcast float %4534 to i32
  %4536 = sub nsw i32 2129859010, %4535
  %4537 = bitcast i32 %4536 to float
  %4538 = call float @dx.op.binary.f32(i32 36, float %4414, float %4504)  ; FMin(a,b)
  %4539 = fmul fast float %4538, %4451
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = bitcast float %4540 to i32
  %4542 = sub nsw i32 2129859010, %4541
  %4543 = bitcast i32 %4542 to float
  %4544 = call float @dx.op.binary.f32(i32 36, float %4439, float %4504)  ; FMin(a,b)
  %4545 = fmul fast float %4544, %4451
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4523, %4499
  %4551 = fmul fast float %4550, %4537
  %4552 = fmul fast float %4526, %4500
  %4553 = fmul fast float %4552, %4543
  %4554 = fmul fast float %4529, %4501
  %4555 = fmul fast float %4554, %4549
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4528, float %4531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = select i1 %189, float 0.000000e+00, float %4525
  %4558 = select i1 %189, float %4556, float %4528
  %4559 = select i1 %189, float 0.000000e+00, float %4531
  %4560 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4553, float %4555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = select i1 %189, float 0.000000e+00, float %4551
  %4562 = select i1 %189, float %4560, float %4553
  %4563 = select i1 %189, float 0.000000e+00, float %4555
  %4564 = fmul fast float %4441, 9.843750e-01
  %4565 = fmul fast float %4422, 9.843750e-01
  %4566 = fadd fast float %4564, 7.812500e-03
  %4567 = fadd fast float %4565, 7.812500e-03
  %4568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4571 = fmul fast float %4569, %4413
  %4572 = fmul fast float %4569, %4414
  %4573 = fmul fast float %4569, %4439
  %4574 = fadd fast float %4571, %4570
  %4575 = fadd fast float %4572, %4570
  %4576 = fadd fast float %4573, %4570
  %4577 = fcmp fast ogt float %3811, 0.000000e+00
  br i1 %4577, label %4578, label %4604

; <label>:4578                                    ; preds = %4406
  %4579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3811, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = fadd fast float %4580, -5.000000e-01
  %4584 = fadd fast float %4581, -5.000000e-01
  %4585 = fadd fast float %4582, -5.000000e-01
  %4586 = fsub fast float 1.000000e+00, %4413
  %4587 = fsub fast float 1.000000e+00, %4414
  %4588 = fsub fast float 1.000000e+00, %4439
  %4589 = fmul fast float %4413, 4.000000e+00
  %4590 = fmul fast float %4589, %4586
  %4591 = fmul fast float %4590, %4583
  %4592 = fmul fast float %4414, 4.000000e+00
  %4593 = fmul fast float %4592, %4587
  %4594 = fmul fast float %4593, %4584
  %4595 = fmul fast float %4439, 4.000000e+00
  %4596 = fmul fast float %4595, %4588
  %4597 = fmul fast float %4596, %4585
  %4598 = fadd fast float %4591, %4574
  %4599 = fadd fast float %4594, %4575
  %4600 = fadd fast float %4597, %4576
  %4601 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  br label %4604

; <label>:4604                                    ; preds = %4578, %4406
  %4605 = phi float [ %4601, %4578 ], [ %4574, %4406 ]
  %4606 = phi float [ %4602, %4578 ], [ %4575, %4406 ]
  %4607 = phi float [ %4603, %4578 ], [ %4576, %4406 ]
  %4608 = call float @dx.op.binary.f32(i32 35, float %4606, float %4607)  ; FMax(a,b)
  %4609 = call float @dx.op.binary.f32(i32 35, float %4605, float %4608)  ; FMax(a,b)
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = fmul fast float %4609, %4422
  %4612 = fadd fast float %4611, %4422
  %4613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.CBufRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.CBufRet.f32 %4613, 2
  %4617 = extractvalue %dx.types.CBufRet.f32 %4613, 3
  %4618 = fmul fast float %4612, %4614
  %4619 = fadd fast float %4618, %4615
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = fmul fast float %4616, %4612
  %4622 = fadd fast float %4621, %4617
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = fsub fast float 1.000000e+00, %4462
  %4625 = fadd fast float %4624, %4623
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fcmp fast olt float %4626, 1.000000e+00
  br i1 %4627, label %4628, label %5483

; <label>:4628                                    ; preds = %4604
  %4629 = fcmp fast olt float %4620, 1.000000e+00
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4632 = fcmp fast ogt float %4631, 0.000000e+00
  %4633 = or i1 %4629, %4632
  %4634 = or i1 %4629, %4632
  %4635 = xor i1 %4634, true
  %4636 = zext i1 %4635 to i32
  br i1 %4633, label %4637, label %4880

; <label>:4637                                    ; preds = %4628
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4642 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4647 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.CBufRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.CBufRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.CBufRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.CBufRet.f32 %4663, 2
  %4667 = extractvalue %dx.types.CBufRet.f32 %4663, 3
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4447, float %4448, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 6, float %4669)  ; FAbs(value)
  %4671 = fmul fast float %4670, 8.000000e+00
  %4672 = fadd fast float %4671, -6.000000e+00
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fmul fast float %4668, 8.000000e+00
  %4675 = fmul fast float %4674, %4631
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fcmp fast ogt float %4676, 0.000000e+00
  br i1 %4677, label %4678, label %4855, !dx.controlflow.hints !88

; <label>:4678                                    ; preds = %4637
  %4679 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4680 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %4681 = fsub fast float %4679, %4680
  %4682 = fmul fast float %4681, %4422
  %4683 = fadd fast float %4682, %4680
  %4684 = fmul fast float %202, 2.000000e+00
  %4685 = fmul fast float %203, 2.000000e+00
  %4686 = fadd fast float %4684, -1.000000e+00
  %4687 = fadd fast float %4685, -1.000000e+00
  %4688 = fmul fast float %4683, %4686
  %4689 = fmul fast float %4683, %4687
  %4690 = fadd fast float %4688, %84
  %4691 = fadd fast float %4689, %85
  %4692 = fmul fast float %4690, %4425
  %4693 = fmul fast float %4691, %4426
  %4694 = fadd fast float %4422, 0xBFE3333340000000
  %4695 = fmul fast float %4694, 0x4004000020000000
  %4696 = fsub fast float 1.000000e+00, %4695
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fmul fast float %4697, 3.000000e+00
  %4699 = fadd fast float %4698, %202
  %4700 = call float @dx.op.unary.f32(i32 27, float %4699)  ; Round_ni(value)
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4692, float %4693, float %4700, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = fcmp fast une float %4702, 0xFFF0000000000000
  %4704 = fcmp fast une float %4702, 0x7FF0000000000000
  %4705 = and i1 %4703, %4704
  %4706 = fcmp fast olt float %4702, 0.000000e+00
  %4707 = call float @dx.op.unary.f32(i32 6, float %4702)  ; FAbs(value)
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = select i1 %4705, float 1.000000e+00, float 0.000000e+00
  %4710 = fmul fast float %4709, %4676
  %4711 = fcmp fast ogt float %4710, 0.000000e+00
  br i1 %4711, label %4712, label %4855, !dx.controlflow.hints !89

; <label>:4712                                    ; preds = %4678
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4717 = select i1 %4706, float 0.000000e+00, float %4714
  %4718 = select i1 %4706, float 0.000000e+00, float %4715
  %4719 = select i1 %4706, float 0.000000e+00, float %4716
  %4720 = select i1 %4706, float %4639, float %4654
  %4721 = select i1 %4706, float %4644, float %4659
  %4722 = select i1 %4706, float %4649, float %4664
  %4723 = select i1 %4706, float %4640, float %4655
  %4724 = select i1 %4706, float %4645, float %4660
  %4725 = select i1 %4706, float %4650, float %4665
  %4726 = select i1 %4706, float %4641, float %4656
  %4727 = select i1 %4706, float %4646, float %4661
  %4728 = select i1 %4706, float %4651, float %4666
  %4729 = select i1 %4706, float %4642, float %4657
  %4730 = select i1 %4706, float %4647, float %4662
  %4731 = select i1 %4706, float %4652, float %4667
  %4732 = fadd fast float %4717, %147
  %4733 = fadd fast float %4718, %148
  %4734 = fadd fast float %4719, %149
  %4735 = fmul fast float %4732, %4720
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4733, float %4723, float %4735)  ; FMad(a,b,c)
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4726, float %4736)  ; FMad(a,b,c)
  %4738 = fadd fast float %4737, %4729
  %4739 = fmul fast float %4732, %4721
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4733, float %4724, float %4739)  ; FMad(a,b,c)
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4727, float %4740)  ; FMad(a,b,c)
  %4742 = fadd fast float %4741, %4730
  %4743 = fmul fast float %4732, %4722
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4733, float %4725, float %4743)  ; FMad(a,b,c)
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4734, float %4728, float %4744)  ; FMad(a,b,c)
  %4746 = fadd fast float %4745, %4731
  %4747 = fdiv fast float 1.000000e+00, %4746
  %4748 = fmul fast float %4747, %4738
  %4749 = fmul fast float %4747, %4742
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4753 = fmul fast float %4748, %4751
  %4754 = fmul fast float %4749, %4752
  %4755 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4756 = extractvalue %dx.types.CBufRet.f32 %4750, 3
  %4757 = fadd fast float %4753, %4755
  %4758 = fadd fast float %4754, %4756
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4761 = fmul fast float %4760, %4447
  %4762 = fmul fast float %4760, %4448
  %4763 = fmul fast float %4760, %4449
  %4764 = fadd fast float %4761, %4732
  %4765 = fadd fast float %4762, %4733
  %4766 = fadd fast float %4763, %4734
  %4767 = fmul fast float %4764, %4720
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4723, float %4767)  ; FMad(a,b,c)
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4766, float %4726, float %4768)  ; FMad(a,b,c)
  %4770 = fadd fast float %4769, %4729
  %4771 = fmul fast float %4764, %4721
  %4772 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4724, float %4771)  ; FMad(a,b,c)
  %4773 = call float @dx.op.tertiary.f32(i32 46, float %4766, float %4727, float %4772)  ; FMad(a,b,c)
  %4774 = fadd fast float %4773, %4730
  %4775 = fmul fast float %4764, %4722
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4725, float %4775)  ; FMad(a,b,c)
  %4777 = call float @dx.op.tertiary.f32(i32 46, float %4766, float %4728, float %4776)  ; FMad(a,b,c)
  %4778 = fadd fast float %4777, %4731
  %4779 = fdiv fast float 1.000000e+00, %4778
  %4780 = fmul fast float %4779, %4770
  %4781 = fmul fast float %4779, %4774
  %4782 = fmul fast float %4757, 2.000000e+00
  %4783 = fadd fast float %4782, -1.000000e+00
  %4784 = call float @dx.op.unary.f32(i32 6, float %4783)  ; FAbs(value)
  %4785 = fmul fast float %4784, 5.000000e+00
  %4786 = fadd fast float %4785, -4.000000e+00
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, %4673
  %4789 = fsub fast float %4748, %4780
  %4790 = fmul fast float %4751, %4789
  %4791 = fmul fast float %4788, %4790
  %4792 = fsub fast float %4780, %4748
  %4793 = fmul fast float %4751, %4792
  %4794 = fadd fast float %4793, %4791
  %4795 = fsub fast float %4781, %4749
  %4796 = fmul fast float %4752, %4795
  %4797 = fmul fast float %4794, %4708
  %4798 = fmul fast float %4796, %4708
  %4799 = fadd fast float %4797, %4757
  %4800 = fadd fast float %4798, %4758
  %4801 = fsub fast float %4779, %4747
  %4802 = fmul fast float %4801, %4708
  %4803 = fadd fast float %4802, %4747
  %4804 = fdiv fast float 1.000000e+00, %4803
  %4805 = fadd fast float %4422, -1.000000e+00
  %4806 = fsub fast float %4804, %4746
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4809 = fmul fast float %4808, %4804
  %4810 = fdiv fast float 1.600000e+02, %4809
  %4811 = fmul fast float %4805, %4805
  %4812 = fmul fast float %4811, 0xBFB5B17960000000
  %4813 = fmul fast float %4812, %4806
  %4814 = fmul fast float %4813, %4810
  %4815 = call float @dx.op.unary.f32(i32 21, float %4814)  ; Exp(value)
  %4816 = fmul fast float %4815, 0x3FF04B2960000000
  %4817 = fsub fast float 0x3FF04B2960000000, %4816
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4818, 4.000000e+00
  %4820 = fadd fast float %202, -5.000000e-01
  %4821 = fadd fast float %203, -5.000000e-01
  %4822 = fmul fast float %4818, 0x3FBEB851E0000000
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = fmul fast float %4823, %4820
  %4825 = fmul fast float %4823, %4821
  %4826 = fadd fast float %4799, %4824
  %4827 = fadd fast float %4800, %4825
  %4828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %4826, float %4827, float undef, float undef, i32 0, i32 0, i32 undef, float %4819)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4834 = fmul fast float %4833, %4829
  %4835 = fmul fast float %4833, %4830
  %4836 = fmul fast float %4833, %4831
  %4837 = select i1 %189, float 0.000000e+00, float %4835
  %4838 = select i1 %189, float 0.000000e+00, float %4836
  %4839 = fmul fast float %4826, 2.000000e+00
  %4840 = fmul fast float %4827, 2.000000e+00
  %4841 = fadd fast float %4839, -1.000000e+00
  %4842 = fadd fast float %4840, -1.000000e+00
  %4843 = fmul fast float %4841, %4841
  %4844 = fsub fast float 1.000000e+00, %4843
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = fmul fast float %4846, %4673
  %4848 = fadd fast float %4847, %4845
  %4849 = fmul fast float %4842, %4842
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = fmul fast float %4848, %4851
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, %4710
  br label %4855

; <label>:4855                                    ; preds = %4712, %4678, %4637
  %4856 = phi float [ %4834, %4712 ], [ 0.000000e+00, %4678 ], [ 0.000000e+00, %4637 ]
  %4857 = phi float [ %4837, %4712 ], [ 0.000000e+00, %4678 ], [ 0.000000e+00, %4637 ]
  %4858 = phi float [ %4838, %4712 ], [ 0.000000e+00, %4678 ], [ 0.000000e+00, %4637 ]
  %4859 = phi float [ %4854, %4712 ], [ 0.000000e+00, %4678 ], [ 0.000000e+00, %4637 ]
  %4860 = fcmp fast olt float %4859, 1.000000e+00
  %4861 = or i1 %4860, %4635
  %4862 = zext i1 %4861 to i32
  %4863 = fmul fast float %4859, %4620
  %4864 = fsub fast float %4859, %4863
  %4865 = fsub fast float 1.000000e+00, %4626
  %4866 = fmul fast float %4864, %4865
  %4867 = fadd fast float %4866, %4626
  %4868 = fsub fast float %4867, %4864
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fmul fast float %4869, %4561
  %4871 = fmul fast float %4869, %4562
  %4872 = fmul fast float %4869, %4563
  %4873 = fsub fast float -0.000000e+00, %4867
  %4874 = fmul fast float %4864, %4856
  %4875 = fmul fast float %4864, %4857
  %4876 = fmul fast float %4864, %4858
  %4877 = fadd fast float %4874, %4870
  %4878 = fadd fast float %4875, %4871
  %4879 = fadd fast float %4876, %4872
  br label %4880

; <label>:4880                                    ; preds = %4855, %4628
  %4881 = phi float [ %4626, %4628 ], [ %4873, %4855 ]
  %4882 = phi float [ %4561, %4628 ], [ %4877, %4855 ]
  %4883 = phi float [ %4562, %4628 ], [ %4878, %4855 ]
  %4884 = phi float [ %4563, %4628 ], [ %4879, %4855 ]
  %4885 = phi i32 [ %4636, %4628 ], [ %4862, %4855 ]
  %4886 = icmp eq i32 %4885, 0
  br i1 %4886, label %5483, label %4887

; <label>:4887                                    ; preds = %4880
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 3
  %4891 = fmul fast float %4889, %84
  %4892 = fmul fast float %4890, %85
  %4893 = fptoui float %4891 to i32
  %4894 = fptoui float %4892 to i32
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4899 = fadd fast float %79, -4.000000e+00
  %4900 = call float @dx.op.binary.f32(i32 35, float %4899, float 0.000000e+00)  ; FMax(a,b)
  %4901 = fadd fast float %4900, %4896
  %4902 = fmul fast float %4901, %4897
  %4903 = call float @dx.op.unary.f32(i32 23, float %4902)  ; Log(value)
  %4904 = fmul fast float %4903, %4898
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.f32 %4905, 2
  %4907 = fmul fast float %4904, %4906
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.i32 %4909, 1
  %4911 = add i32 %4910, -1
  %4912 = uitofp i32 %4910 to float
  %4913 = fmul fast float %4912, %4908
  %4914 = fptoui float %4913 to i32
  %4915 = call i32 @dx.op.binary.i32(i32 40, i32 %4914, i32 %4911)  ; UMin(a,b)
  %4916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.i32 %4916, 2
  %4918 = extractvalue %dx.types.CBufRet.i32 %4916, 3
  %4919 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4894, i32 %4917, i32 %4893)  ; UMad(a,b,c)
  %4920 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4915, i32 %4918, i32 %4919)  ; UMad(a,b,c)
  %4921 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %4922 = fptoui float %4921 to i32
  %4923 = lshr i32 %4922, 5
  %4924 = call i32 @dx.op.binary.i32(i32 40, i32 %4923, i32 8191)  ; UMin(a,b)
  %4925 = fcmp fast ogt float %4221, 0.000000e+00
  %4926 = fcmp fast ogt float %4449, 0.000000e+00
  %4927 = and i1 %4926, %4925
  br i1 %4927, label %4928, label %4957

; <label>:4928                                    ; preds = %4887
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4449, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4929, float -1.000000e+00)  ; FMax(a,b)
  %4931 = call float @dx.op.binary.f32(i32 36, float %4930, float 1.000000e+00)  ; FMin(a,b)
  %4932 = fmul fast float %4931, %4931
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = fmul fast float %4933, 0x3FFC6E2300000000
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fcmp fast ogt float %4935, 0.000000e+00
  %4937 = call float @dx.op.unary.f32(i32 24, float %4935)  ; Sqrt(value)
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = call float @dx.op.unary.f32(i32 23, float %4938)  ; Log(value)
  %4940 = fmul fast float %4939, 5.000000e+00
  %4941 = call float @dx.op.unary.f32(i32 21, float %4940)  ; Exp(value)
  %4942 = fmul fast float %4941, 0x3FEF591A60000000
  %4943 = fadd fast float %4942, 0x3F94DCB540000000
  %4944 = select i1 %4936, float %4943, float 1.000000e+00
  %4945 = fcmp fast oge float %4944, 1.000000e+00
  %4946 = fmul fast float %4929, 2.000000e+00
  %4947 = fadd fast float %4946, %4449
  %4948 = select i1 %4945, float %4947, float %4449
  %4949 = fsub fast float %4948, %4449
  %4950 = fmul fast float %4949, %4221
  %4951 = fadd fast float %4950, %4449
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4951, float %4447, float %4448, float %4951)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.unary.f32(i32 25, float %4952)  ; Rsqrt(value)
  %4954 = fmul fast float %4953, %4447
  %4955 = fmul fast float %4953, %4448
  %4956 = fmul fast float %4951, %4953
  br label %4957

; <label>:4957                                    ; preds = %4928, %4887
  %4958 = phi float [ %4954, %4928 ], [ %4447, %4887 ]
  %4959 = phi float [ %4955, %4928 ], [ %4448, %4887 ]
  %4960 = phi float [ %4956, %4928 ], [ %4449, %4887 ]
  %4961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.i32 %4961, 2
  %4963 = add nsw i32 %4962, -1
  %4964 = call i32 @dx.op.binary.i32(i32 37, i32 %4963, i32 0)  ; IMax(a,b)
  %4965 = shl i32 %4924, 2
  %4966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4967 = extractvalue %dx.types.ResRet.i32 %4966, 0
  %4968 = lshr i32 %4967, 16
  %4969 = and i32 %4967, 65535
  %4970 = lshr i32 %4967, 21
  %4971 = lshr i32 %4969, 5
  %4972 = call i32 @dx.op.binary.i32(i32 40, i32 %4971, i32 %4964)  ; UMin(a,b)
  %4973 = icmp ugt i32 %4970, %4972
  br i1 %4973, label %5355, label %4974

; <label>:4974                                    ; preds = %4957
  br label %4975

; <label>:4975                                    ; preds = %5344, %4974
  %4976 = phi float [ %5345, %5344 ], [ 0.000000e+00, %4974 ]
  %4977 = phi float [ %5346, %5344 ], [ 0.000000e+00, %4974 ]
  %4978 = phi float [ %5347, %5344 ], [ 0.000000e+00, %4974 ]
  %4979 = phi float [ %5348, %5344 ], [ 1.000000e+00, %4974 ]
  %4980 = phi i32 [ %5352, %5344 ], [ %4970, %4974 ]
  %4981 = phi float [ %5349, %5344 ], [ 0.000000e+00, %4974 ]
  %4982 = phi float [ %5350, %5344 ], [ 0.000000e+00, %4974 ]
  %4983 = phi float [ %5351, %5344 ], [ 0.000000e+00, %4974 ]
  %4984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.i32 %4984, 2
  %4986 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4920, i32 %4985, i32 %4980)  ; UMad(a,b,c)
  %4987 = shl i32 %4986, 2
  %4988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4987, i32 undef)  ; BufferLoad(srv,index,wot)
  %4989 = extractvalue %dx.types.ResRet.i32 %4988, 0
  %4990 = shl i32 %4980, 5
  %4991 = sub nsw i32 %4968, %4990
  %4992 = call i32 @dx.op.binary.i32(i32 37, i32 %4991, i32 0)  ; IMax(a,b)
  %4993 = call i32 @dx.op.binary.i32(i32 38, i32 %4992, i32 31)  ; IMin(a,b)
  %4994 = sub nsw i32 1, %4968
  %4995 = add nsw i32 %4994, %4969
  %4996 = call i32 @dx.op.binary.i32(i32 37, i32 %4995, i32 0)  ; IMax(a,b)
  %4997 = call i32 @dx.op.binary.i32(i32 38, i32 %4996, i32 32)  ; IMin(a,b)
  %4998 = and i32 %4997, 31
  %4999 = shl i32 -1, %4998
  %5000 = xor i32 %4999, -1
  %5001 = and i32 %4993, 31
  %5002 = shl i32 %5000, %5001
  %5003 = icmp eq i32 %4997, 32
  %5004 = select i1 %5003, i32 -1, i32 %5002
  %5005 = and i32 %5004, %4989
  %5006 = icmp eq i32 %5005, 0
  br i1 %5006, label %5344, label %5007

; <label>:5007                                    ; preds = %4975
  br label %5008

; <label>:5008                                    ; preds = %5118, %5007
  %5009 = phi float [ %5119, %5118 ], [ %4976, %5007 ]
  %5010 = phi float [ %5120, %5118 ], [ %4977, %5007 ]
  %5011 = phi float [ %5121, %5118 ], [ %4978, %5007 ]
  %5012 = phi float [ %5122, %5118 ], [ %4979, %5007 ]
  %5013 = phi i32 [ %5021, %5118 ], [ %5005, %5007 ]
  %5014 = phi float [ %5123, %5118 ], [ %4981, %5007 ]
  %5015 = phi float [ %5124, %5118 ], [ %4982, %5007 ]
  %5016 = phi float [ %5125, %5118 ], [ %4983, %5007 ]
  %5017 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5013)  ; FirstbitLo(value)
  %5018 = add i32 %5017, %4990
  %5019 = and i32 %5017, 31
  %5020 = shl i32 1, %5019
  %5021 = xor i32 %5020, %5013
  %5022 = mul i32 %5018, 72
  %5023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = add i32 %5022, 12
  %5028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.i32 %5028, 0
  %5030 = add i32 %5022, 16
  %5031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5030, i32 undef)  ; BufferLoad(srv,index,wot)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = add i32 %5022, 28
  %5036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5035, i32 undef)  ; BufferLoad(srv,index,wot)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = add i32 %5022, 32
  %5039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5038, i32 undef)  ; BufferLoad(srv,index,wot)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.ResRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.ResRet.f32 %5039, 2
  %5043 = extractvalue %dx.types.ResRet.f32 %5039, 3
  %5044 = add i32 %5022, 48
  %5045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5044, i32 undef)  ; BufferLoad(srv,index,wot)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = add i32 %5022, 56
  %5049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5048, i32 undef)  ; BufferLoad(srv,index,wot)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = add i32 %5022, 64
  %5053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5052, i32 undef)  ; BufferLoad(srv,index,wot)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = mul i32 %5018, 60
  %5057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.ResRet.f32 %5057, 2
  %5061 = add i32 %5056, 12
  %5062 = add i32 %5056, 48
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.ResRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.ResRet.f32 %5063, 2
  %5067 = and i32 %5029, 32767
  %5068 = bitcast float %5024 to i32
  %5069 = icmp eq i32 %5068, -1
  %5070 = bitcast float %5025 to i32
  %5071 = and i32 %5029, 32768
  %5072 = icmp ne i32 %5071, 0
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5077 = fsub fast float %5058, %5074
  %5078 = fsub fast float %5059, %5075
  %5079 = fsub fast float %5060, %5076
  %5080 = fsub fast float %147, %5077
  %5081 = fsub fast float %148, %5078
  %5082 = fsub fast float %149, %5079
  %5083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5061, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.f32 %5083, 2
  %5087 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5084, float %5085, float %5086)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = add i32 %5056, 24
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5088, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.ResRet.f32 %5089, 2
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = add i32 %5056, 36
  %5095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5094, i32 undef)  ; BufferLoad(srv,index,wot)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 6, float %5087)  ; FAbs(value)
  %5101 = call float @dx.op.unary.f32(i32 6, float %5093)  ; FAbs(value)
  %5102 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5103 = fsub fast float %5064, %5100
  %5104 = fsub fast float %5065, %5101
  %5105 = fsub fast float %5066, %5102
  %5106 = fmul fast float %5103, %5032
  %5107 = fmul fast float %5104, %5033
  %5108 = fmul fast float %5105, %5034
  %5109 = call float @dx.op.binary.f32(i32 36, float %5107, float %5108)  ; FMin(a,b)
  %5110 = call float @dx.op.binary.f32(i32 36, float %5106, float %5109)  ; FMin(a,b)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = call float @dx.op.binary.f32(i32 36, float %5012, float %5111)  ; FMin(a,b)
  %5113 = uitofp i1 %5072 to float
  %5114 = fadd fast float %4221, 1.000000e+00
  %5115 = fsub fast float %5114, %5113
  %5116 = fmul fast float %5112, %5115
  %5117 = fcmp fast ogt float %5116, 0.000000e+00
  br i1 %5117, label %5127, label %5118

; <label>:5118                                    ; preds = %5269, %5008
  %5119 = phi float [ %5333, %5269 ], [ %5009, %5008 ]
  %5120 = phi float [ %5334, %5269 ], [ %5010, %5008 ]
  %5121 = phi float [ %5335, %5269 ], [ %5011, %5008 ]
  %5122 = phi float [ %5342, %5269 ], [ %5012, %5008 ]
  %5123 = phi float [ %5339, %5269 ], [ %5014, %5008 ]
  %5124 = phi float [ %5340, %5269 ], [ %5015, %5008 ]
  %5125 = phi float [ %5341, %5269 ], [ %5016, %5008 ]
  %5126 = icmp eq i32 %5013, %5020
  br i1 %5126, label %5343, label %5008

; <label>:5127                                    ; preds = %5008
  br i1 %5069, label %5185, label %5128

; <label>:5128                                    ; preds = %5127
  %5129 = fsub fast float -0.000000e+00, %5084
  %5130 = fsub fast float -0.000000e+00, %5085
  %5131 = fsub fast float -0.000000e+00, %5086
  %5132 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5129, float %5130, float %5131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = fsub fast float -0.000000e+00, %5132
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5129, float %5130, float %5131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = fadd fast float %5134, %5047
  %5136 = fadd fast float %5046, %5134
  %5137 = fsub fast float -0.000000e+00, %5136
  %5138 = fcmp ogt float %5132, -0.000000e+00
  %5139 = select i1 %5138, float %5137, float %5135
  %5140 = call float @dx.op.unary.f32(i32 6, float %5133)  ; FAbs(value)
  %5141 = fdiv fast float 1.000000e+00, %5140
  %5142 = fmul fast float %5139, %5141
  %5143 = call float @dx.op.binary.f32(i32 35, float %5142, float 0.000000e+00)  ; FMax(a,b)
  %5144 = fsub fast float -0.000000e+00, %5090
  %5145 = fsub fast float -0.000000e+00, %5091
  %5146 = fsub fast float -0.000000e+00, %5092
  %5147 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5144, float %5145, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = fsub fast float -0.000000e+00, %5147
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5144, float %5145, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = fadd fast float %5149, %5051
  %5151 = fadd fast float %5050, %5149
  %5152 = fsub fast float -0.000000e+00, %5151
  %5153 = fcmp ogt float %5147, -0.000000e+00
  %5154 = select i1 %5153, float %5152, float %5150
  %5155 = call float @dx.op.unary.f32(i32 6, float %5148)  ; FAbs(value)
  %5156 = fdiv fast float 1.000000e+00, %5155
  %5157 = fmul fast float %5154, %5156
  %5158 = call float @dx.op.binary.f32(i32 35, float %5157, float 0.000000e+00)  ; FMax(a,b)
  %5159 = fsub fast float -0.000000e+00, %5096
  %5160 = fsub fast float -0.000000e+00, %5097
  %5161 = fsub fast float -0.000000e+00, %5098
  %5162 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %5159, float %5160, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = fsub fast float -0.000000e+00, %5162
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5159, float %5160, float %5161)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = fadd fast float %5164, %5055
  %5166 = fadd fast float %5054, %5164
  %5167 = fsub fast float -0.000000e+00, %5166
  %5168 = fcmp ogt float %5162, -0.000000e+00
  %5169 = select i1 %5168, float %5167, float %5165
  %5170 = call float @dx.op.unary.f32(i32 6, float %5163)  ; FAbs(value)
  %5171 = fdiv fast float 1.000000e+00, %5170
  %5172 = fmul fast float %5169, %5171
  %5173 = call float @dx.op.binary.f32(i32 35, float %5172, float 0.000000e+00)  ; FMax(a,b)
  %5174 = call float @dx.op.binary.f32(i32 36, float %5158, float %5173)  ; FMin(a,b)
  %5175 = call float @dx.op.binary.f32(i32 36, float %5143, float %5174)  ; FMin(a,b)
  %5176 = fmul fast float %5175, %4958
  %5177 = fmul fast float %5175, %4959
  %5178 = fmul fast float %5175, %4960
  %5179 = fadd fast float %5176, %147
  %5180 = fadd fast float %5177, %148
  %5181 = fadd fast float %5178, %149
  %5182 = fsub fast float %5179, %5024
  %5183 = fsub fast float %5180, %5025
  %5184 = fsub fast float %5181, %5026
  br label %5192

; <label>:5185                                    ; preds = %5127
  %5186 = fmul fast float %4958, 8.096000e+03
  %5187 = fmul fast float %4959, 8.096000e+03
  %5188 = fmul fast float %4960, 8.096000e+03
  %5189 = fadd fast float %5186, %147
  %5190 = fadd fast float %5187, %148
  %5191 = fadd fast float %5188, %149
  br label %5192

; <label>:5192                                    ; preds = %5185, %5128
  %5193 = phi float [ %4958, %5185 ], [ %5182, %5128 ]
  %5194 = phi float [ %4959, %5185 ], [ %5183, %5128 ]
  %5195 = phi float [ %4960, %5185 ], [ %5184, %5128 ]
  %5196 = phi float [ %5189, %5185 ], [ %5179, %5128 ]
  %5197 = phi float [ %5190, %5185 ], [ %5180, %5128 ]
  %5198 = phi float [ %5191, %5185 ], [ %5181, %5128 ]
  %5199 = fcmp fast olt float %5043, 1.000000e+00
  br i1 %5199, label %5200, label %5231, !dx.controlflow.hints !90

; <label>:5200                                    ; preds = %5192
  %5201 = fmul fast float %5195, %5041
  %5202 = fmul fast float %5194, %5042
  %5203 = fsub fast float %5201, %5202
  %5204 = fmul fast float %5193, %5042
  %5205 = fmul fast float %5195, %5040
  %5206 = fsub fast float %5204, %5205
  %5207 = fmul fast float %5194, %5040
  %5208 = fmul fast float %5193, %5041
  %5209 = fsub fast float %5207, %5208
  %5210 = fmul fast float %5203, 2.000000e+00
  %5211 = fmul fast float %5206, 2.000000e+00
  %5212 = fmul fast float %5209, 2.000000e+00
  %5213 = fmul fast float %5210, %5043
  %5214 = fmul fast float %5211, %5043
  %5215 = fmul fast float %5212, %5043
  %5216 = fmul fast float %5212, %5041
  %5217 = fmul fast float %5211, %5042
  %5218 = fmul fast float %5210, %5042
  %5219 = fmul fast float %5212, %5040
  %5220 = fmul fast float %5211, %5040
  %5221 = fmul fast float %5210, %5041
  %5222 = fadd fast float %5216, %5193
  %5223 = fadd fast float %5222, %5213
  %5224 = fsub fast float %5223, %5217
  %5225 = fsub fast float %5194, %5219
  %5226 = fadd fast float %5225, %5214
  %5227 = fadd fast float %5226, %5218
  %5228 = fadd fast float %5215, %5195
  %5229 = fsub fast float %5228, %5221
  %5230 = fadd fast float %5229, %5220
  br label %5231

; <label>:5231                                    ; preds = %5200, %5192
  %5232 = phi float [ %5224, %5200 ], [ %5193, %5192 ]
  %5233 = phi float [ %5227, %5200 ], [ %5194, %5192 ]
  %5234 = phi float [ %5230, %5200 ], [ %5195, %5192 ]
  br i1 %5069, label %5266, label %5235

; <label>:5235                                    ; preds = %5231
  %5236 = fmul fast float %4422, 0x400187C840000000
  %5237 = fadd fast float %5236, 0xC00EFC2120000000
  %5238 = fmul fast float %5237, %4422
  %5239 = fadd fast float %5238, 0x3FE5D16340000000
  %5240 = fmul fast float %5239, %4422
  %5241 = fadd fast float %5240, 1.000000e+00
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fsub fast float %5196, %147
  %5244 = fsub fast float %5197, %148
  %5245 = fsub fast float %5198, %149
  %5246 = fsub fast float %5196, %5024
  %5247 = fsub fast float %5197, %5025
  %5248 = fsub fast float %5198, %5026
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %5243, float %5244, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = fadd fast float %5250, 0x3EE4F8B580000000
  %5252 = fdiv fast float %5249, %5251
  %5253 = bitcast float %5252 to i32
  %5254 = ashr i32 %5253, 1
  %5255 = add nsw i32 %5254, 532487669
  %5256 = bitcast i32 %5255 to float
  %5257 = fmul fast float %5256, %5242
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = fmul fast float %5258, 0x4009981AE0000000
  %5260 = fsub fast float 0x40111BBD80000000, %5259
  %5261 = fmul fast float %5260, %5258
  %5262 = fadd fast float %5261, 0xC0009F6020000000
  %5263 = fmul fast float %5262, %5258
  %5264 = fadd fast float %5263, 1.000000e+00
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  br label %5269

; <label>:5266                                    ; preds = %5231
  %5267 = icmp ne i32 %5070, -1
  %5268 = zext i1 %5267 to i32
  br label %5269

; <label>:5269                                    ; preds = %5266, %5235
  %5270 = phi float [ %4422, %5266 ], [ %5265, %5235 ]
  %5271 = phi i32 [ %5268, %5266 ], [ 0, %5235 ]
  %5272 = fmul float %5270, 5.000000e+00
  %5273 = fsub float 5.000000e+00, %5272
  %5274 = icmp ne i32 %5271, 0
  %5275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.f32 %5275, 3
  %5277 = fadd fast float %5276, %5273
  %5278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5277)  ; FMax(a,b)
  %5279 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5280 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5281 = fadd fast float %5280, %5279
  %5282 = call float @dx.op.unary.f32(i32 6, float %5234)  ; FAbs(value)
  %5283 = fadd fast float %5281, %5282
  %5284 = fcmp fast oeq float %5283, 0.000000e+00
  %5285 = fdiv fast float 1.000000e+00, %5283
  %5286 = select i1 %5284, float 1.000000e+00, float %5285
  %5287 = fmul fast float %5286, %5232
  %5288 = fmul fast float %5286, %5233
  %5289 = call float @dx.op.unary.f32(i32 6, float %5288)  ; FAbs(value)
  %5290 = call float @dx.op.unary.f32(i32 6, float %5287)  ; FAbs(value)
  %5291 = fsub fast float 1.000000e+00, %5289
  %5292 = fsub fast float 1.000000e+00, %5290
  %5293 = fcmp fast oge float %5287, 0.000000e+00
  %5294 = fcmp fast oge float %5288, 0.000000e+00
  %5295 = select i1 %5293, float 1.000000e+00, float -1.000000e+00
  %5296 = select i1 %5294, float 1.000000e+00, float -1.000000e+00
  %5297 = fcmp fast ole float %5234, 0.000000e+00
  %5298 = fmul fast float %5295, %5291
  %5299 = fmul fast float %5296, %5292
  %5300 = select i1 %5297, float %5298, float %5287
  %5301 = select i1 %5297, float %5299, float %5288
  %5302 = fmul fast float %5300, 5.000000e-01
  %5303 = fmul fast float %5301, 5.000000e-01
  %5304 = fadd fast float %5302, 5.000000e-01
  %5305 = fadd fast float %5303, 5.000000e-01
  %5306 = uitofp i32 %5067 to float
  %5307 = call float @dx.op.binary.f32(i32 36, float %5278, float 3.000000e+00)  ; FMin(a,b)
  %5308 = fadd fast float %5307, 2.000000e+00
  %5309 = call float @dx.op.unary.f32(i32 21, float %5308)  ; Exp(value)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5275, 1
  %5311 = fmul fast float %5310, %5309
  %5312 = fmul fast float %5311, 2.000000e+00
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = fmul fast float %5304, %5313
  %5315 = fmul fast float %5305, %5313
  %5316 = fadd fast float %5314, %5311
  %5317 = fadd fast float %5315, %5311
  %5318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %5316, float %5317, float %5306, float undef, i32 0, i32 0, i32 undef, float %5278)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5324 = fmul fast float %5323, %5037
  %5325 = call float @dx.op.binary.f32(i32 36, float %4502, float %5324)  ; FMin(a,b)
  %5326 = select i1 %5274, float %5325, float %5324
  %5327 = fmul fast float %5319, %5116
  %5328 = fmul fast float %5327, %5326
  %5329 = fmul fast float %5320, %5116
  %5330 = fmul fast float %5329, %5326
  %5331 = fmul fast float %5321, %5116
  %5332 = fmul fast float %5331, %5326
  %5333 = fadd fast float %5328, %5009
  %5334 = fadd fast float %5330, %5010
  %5335 = fadd fast float %5332, %5011
  %5336 = fmul fast float %5196, %5116
  %5337 = fmul fast float %5197, %5116
  %5338 = fmul fast float %5198, %5116
  %5339 = fadd fast float %5336, %5014
  %5340 = fadd fast float %5337, %5015
  %5341 = fadd fast float %5338, %5016
  %5342 = fsub fast float %5012, %5116
  br label %5118

; <label>:5343                                    ; preds = %5118
  br label %5344

; <label>:5344                                    ; preds = %5343, %4975
  %5345 = phi float [ %4976, %4975 ], [ %5119, %5343 ]
  %5346 = phi float [ %4977, %4975 ], [ %5120, %5343 ]
  %5347 = phi float [ %4978, %4975 ], [ %5121, %5343 ]
  %5348 = phi float [ %4979, %4975 ], [ %5122, %5343 ]
  %5349 = phi float [ %4981, %4975 ], [ %5123, %5343 ]
  %5350 = phi float [ %4982, %4975 ], [ %5124, %5343 ]
  %5351 = phi float [ %4983, %4975 ], [ %5125, %5343 ]
  %5352 = add i32 %4980, 1
  %5353 = icmp ugt i32 %5352, %4972
  br i1 %5353, label %5354, label %4975, !llvm.loop !91

; <label>:5354                                    ; preds = %5344
  br label %5355

; <label>:5355                                    ; preds = %5354, %4957
  %5356 = phi float [ 0.000000e+00, %4957 ], [ %5345, %5354 ]
  %5357 = phi float [ 0.000000e+00, %4957 ], [ %5346, %5354 ]
  %5358 = phi float [ 0.000000e+00, %4957 ], [ %5347, %5354 ]
  %5359 = phi float [ 0.000000e+00, %4957 ], [ %5349, %5354 ]
  %5360 = phi float [ 0.000000e+00, %4957 ], [ %5350, %5354 ]
  %5361 = phi float [ 0.000000e+00, %4957 ], [ %5351, %5354 ]
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = select i1 %189, float 0.000000e+00, float %5356
  %5364 = select i1 %189, float %5362, float %5357
  %5365 = select i1 %189, float 0.000000e+00, float %5358
  %5366 = fcmp fast olt float %4881, 0.000000e+00
  %5367 = call float @dx.op.unary.f32(i32 6, float %4881)  ; FAbs(value)
  %5368 = fmul fast float %5367, %4882
  %5369 = fmul fast float %5367, %4883
  %5370 = fmul fast float %5367, %4884
  %5371 = select i1 %5366, float %4882, float %5368
  %5372 = select i1 %5366, float %4883, float %5369
  %5373 = select i1 %5366, float %4884, float %5370
  %5374 = fsub fast float 1.000000e+00, %5367
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fmul fast float %5375, %5363
  %5377 = fmul fast float %5375, %5364
  %5378 = fmul fast float %5375, %5365
  %5379 = fadd fast float %5371, %5376
  %5380 = fadd fast float %5372, %5377
  %5381 = fadd fast float %5373, %5378
  %5382 = fcmp fast une float %4631, 0.000000e+00
  br i1 %5382, label %5483, label %5383

; <label>:5383                                    ; preds = %5355
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5398 = extractvalue %dx.types.CBufRet.f32 %5394, 3
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %4447, float %4448, float %4449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = fadd fast float %4422, -1.000000e+00
  %5403 = fsub fast float %5400, %5401
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 2
  %5406 = fmul fast float %5405, %5400
  %5407 = fdiv fast float 1.600000e+02, %5406
  %5408 = fmul fast float %5402, %5402
  %5409 = fmul fast float %5408, 0xBFB5B17960000000
  %5410 = fmul fast float %5409, %5403
  %5411 = fmul fast float %5410, %5407
  %5412 = call float @dx.op.unary.f32(i32 21, float %5411)  ; Exp(value)
  %5413 = fmul fast float %5412, 0x3FF04B2960000000
  %5414 = fsub fast float 0x3FF04B2960000000, %5413
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = fmul fast float %5415, 4.000000e+00
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5421 = fadd fast float %5418, %5359
  %5422 = fadd fast float %5419, %5360
  %5423 = fadd fast float %5420, %5361
  %5424 = fmul fast float %5421, %5385
  %5425 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5386, float %5424)  ; FMad(a,b,c)
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %5423, float %5387, float %5425)  ; FMad(a,b,c)
  %5427 = fadd fast float %5426, %5388
  %5428 = fmul fast float %5421, %5390
  %5429 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5391, float %5428)  ; FMad(a,b,c)
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5423, float %5392, float %5429)  ; FMad(a,b,c)
  %5431 = fadd fast float %5430, %5393
  %5432 = fmul fast float %5421, %5395
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %5422, float %5396, float %5432)  ; FMad(a,b,c)
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %5423, float %5397, float %5433)  ; FMad(a,b,c)
  %5435 = fadd fast float %5434, %5398
  %5436 = fdiv fast float %5427, %5435
  %5437 = fdiv fast float %5431, %5435
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = fmul fast float %5439, %5436
  %5442 = fmul fast float %5440, %5437
  %5443 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5445 = fadd fast float %5441, %5443
  %5446 = fadd fast float %5442, %5444
  %5447 = fmul fast float %5399, 8.000000e+00
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fmul fast float %5445, 2.000000e+00
  %5450 = fmul fast float %5446, 2.000000e+00
  %5451 = fadd fast float %5449, -1.000000e+00
  %5452 = fadd fast float %5450, -1.000000e+00
  %5453 = fmul fast float %5451, %5451
  %5454 = fsub fast float 1.000000e+00, %5453
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = fmul fast float %5452, %5452
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = fmul fast float %4631, %5455
  %5460 = fmul fast float %5459, %5458
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = fmul fast float %5461, %5448
  %5463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %5445, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float %5416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = select i1 %189, float 0.000000e+00, float %5465
  %5468 = select i1 %189, float 0.000000e+00, float %5466
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5471 = fmul fast float %5470, %5464
  %5472 = fmul fast float %5467, %5470
  %5473 = fmul fast float %5468, %5470
  %5474 = fsub fast float %5471, %5363
  %5475 = fsub fast float %5472, %5364
  %5476 = fsub fast float %5473, %5365
  %5477 = fmul fast float %5474, %5462
  %5478 = fmul fast float %5475, %5462
  %5479 = fmul fast float %5476, %5462
  %5480 = fadd fast float %5477, %5363
  %5481 = fadd fast float %5478, %5364
  %5482 = fadd fast float %5479, %5365
  br label %5483

; <label>:5483                                    ; preds = %5383, %5355, %4880, %4604
  %5484 = phi float [ %4882, %4880 ], [ %5379, %5355 ], [ %4561, %4604 ], [ %5480, %5383 ]
  %5485 = phi float [ %4883, %4880 ], [ %5380, %5355 ], [ %4562, %4604 ], [ %5481, %5383 ]
  %5486 = phi float [ %4884, %4880 ], [ %5381, %5355 ], [ %4563, %4604 ], [ %5482, %5383 ]
  %5487 = fmul fast float %4610, %4557
  %5488 = fmul fast float %4610, %4558
  %5489 = fmul fast float %4610, %4559
  %5490 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4417, float %4418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fcmp fast ogt float %5490, 0x3E7FF19E20000000
  %5492 = fdiv fast float 1.000000e+00, %5490
  %5493 = select i1 %5491, float %5492, float 0.000000e+00
  %5494 = fmul fast float %5493, %4416
  %5495 = fmul fast float %5493, %4417
  %5496 = fmul fast float %5493, %4418
  %5497 = fadd fast float %5494, -1.000000e+00
  %5498 = fadd fast float %5495, -1.000000e+00
  %5499 = fadd fast float %5496, -1.000000e+00
  %5500 = fmul fast float %5497, 5.000000e-01
  %5501 = fmul fast float %5498, 5.000000e-01
  %5502 = fmul fast float %5499, 5.000000e-01
  %5503 = fadd fast float %5500, 1.000000e+00
  %5504 = fadd fast float %5501, 1.000000e+00
  %5505 = fadd fast float %5502, 1.000000e+00
  %5506 = fmul fast float %5484, %4605
  %5507 = fmul fast float %5485, %4606
  %5508 = fmul fast float %5486, %4607
  %5509 = fsub fast float 1.000000e+00, %4441
  %5510 = bitcast float %5509 to i32
  %5511 = sitofp i32 %5510 to float
  %5512 = fmul fast float %5511, 5.000000e+00
  %5513 = fadd fast float %5512, 0xC1EFBF8940000000
  %5514 = fptosi float %5513 to i32
  %5515 = bitcast i32 %5514 to float
  %5516 = fmul fast float %5515, %3812
  %5517 = fmul fast float %4557, %5516
  %5518 = fmul fast float %5517, %4610
  %5519 = fmul fast float %5518, %5503
  %5520 = fmul fast float %4558, %5516
  %5521 = fmul fast float %5520, %4610
  %5522 = fmul fast float %5521, %5504
  %5523 = fmul fast float %4559, %5516
  %5524 = fmul fast float %5523, %4610
  %5525 = fmul fast float %5524, %5505
  %5526 = fmul fast float %5487, %3808
  %5527 = fmul fast float %5488, %3808
  %5528 = fmul fast float %5489, %3808
  %5529 = fadd fast float %5506, %3804
  %5530 = fadd fast float %5529, %5519
  %5531 = fmul fast float %5530, %3808
  %5532 = fadd fast float %5507, %3805
  %5533 = fadd fast float %5532, %5522
  %5534 = fmul fast float %5533, %3808
  %5535 = fadd fast float %5508, %3806
  %5536 = fadd fast float %5535, %5525
  %5537 = fmul fast float %5536, %3808
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 3
  %5540 = fcmp fast oeq float %5539, 0.000000e+00
  br i1 %5540, label %5760, label %5541

; <label>:5541                                    ; preds = %5483
  %5542 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5538, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5538, 2
  %5545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5545, 0
  %5547 = extractvalue %dx.types.CBufRet.f32 %5545, 1
  %5548 = extractvalue %dx.types.CBufRet.f32 %5545, 2
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = select i1 %189, float %5550, float %5546
  %5554 = select i1 %189, float %5552, float %5547
  %5555 = select i1 %189, float %5551, float %5548
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5558 = fcmp fast une float %5557, 0.000000e+00
  br i1 %5558, label %5559, label %5576

; <label>:5559                                    ; preds = %5541
  %5560 = fptoui float %84 to i32
  %5561 = fptoui float %85 to i32
  %5562 = lshr i32 %5560, 4
  %5563 = lshr i32 %5561, 4
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = fptoui float %5565 to i32
  %5567 = add i32 %5566, 15
  %5568 = lshr i32 %5567, 4
  %5569 = mul i32 %5568, %5563
  %5570 = add i32 %5569, %5562
  %5571 = shl i32 %5570, 3
  %5572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5571, i32 undef)  ; BufferLoad(srv,index,wot)
  %5573 = extractvalue %dx.types.ResRet.i32 %5572, 0
  %5574 = and i32 %5573, -268435456
  %5575 = icmp eq i32 %5574, -1342177280
  br i1 %5575, label %5581, label %5576

; <label>:5576                                    ; preds = %5559, %5541
  %5577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.ResRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.ResRet.f32 %5577, 2
  br label %5581

; <label>:5581                                    ; preds = %5576, %5559
  %5582 = phi float [ %5578, %5576 ], [ 0.000000e+00, %5559 ]
  %5583 = phi float [ %5579, %5576 ], [ 0.000000e+00, %5559 ]
  %5584 = phi float [ %5580, %5576 ], [ 0.000000e+00, %5559 ]
  %5585 = call float @dx.op.binary.f32(i32 36, float %5583, float %5584)  ; FMin(a,b)
  %5586 = call float @dx.op.binary.f32(i32 36, float %5582, float %5585)  ; FMin(a,b)
  %5587 = fcmp fast ogt float %5586, 0.000000e+00
  br i1 %5587, label %5588, label %5760, !dx.controlflow.hints !93

; <label>:5588                                    ; preds = %5581
  %5589 = fmul fast float %5582, %5553
  %5590 = fmul fast float %5583, %5554
  %5591 = fmul fast float %5584, %5555
  %5592 = fsub fast float %5542, %4412
  %5593 = fsub fast float %5543, %4411
  %5594 = fsub fast float %5544, %4410
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 25, float %5595)  ; Rsqrt(value)
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5596, %5593
  %5599 = fmul fast float %5596, %5594
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4408, float %4407, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5603 = bitcast i32 %4465 to float
  %5604 = fmul fast float %5602, %5602
  %5605 = fmul fast float %5604, %5603
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5606, %5602
  %5608 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fmul fast float %5608, %5608
  %5610 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5611 = fsub fast float 1.000000e+00, %4459
  %5612 = fmul fast float %4441, %4441
  %5613 = fmul fast float %5612, %5611
  %5614 = fadd fast float %5613, %4459
  %5615 = bitcast float %5614 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fadd fast float %5618, %4441
  %5620 = fmul fast float %4459, %5609
  %5621 = fsub fast float 1.000000e+00, %5609
  %5622 = fadd fast float %5621, %5620
  %5623 = fmul fast float %5610, %5610
  %5624 = fmul fast float %5623, %5611
  %5625 = fadd fast float %5624, %4459
  %5626 = bitcast float %5625 to i32
  %5627 = ashr i32 %5626, 1
  %5628 = add nsw i32 %5627, 532487669
  %5629 = bitcast i32 %5628 to float
  %5630 = fadd fast float %5629, %5610
  %5631 = fmul fast float %5622, %5622
  %5632 = fmul fast float %5631, %5619
  %5633 = fmul fast float %5632, %5630
  %5634 = fdiv fast float 0x3FF0A00000000000, %5633
  %5635 = fmul fast float %5634, %4459
  %5636 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = bitcast float %5637 to i32
  %5639 = sitofp i32 %5638 to float
  %5640 = fmul fast float %5639, 5.000000e+00
  %5641 = fadd fast float %5640, 0xC1EFBF8940000000
  %5642 = fptosi float %5641 to i32
  %5643 = bitcast i32 %5642 to float
  %5644 = fsub fast float 1.000000e+00, %4413
  %5645 = fsub fast float 1.000000e+00, %4414
  %5646 = fsub fast float 1.000000e+00, %4439
  %5647 = fmul fast float %5643, %5644
  %5648 = fmul fast float %5643, %5645
  %5649 = fmul fast float %5643, %5646
  %5650 = fadd fast float %5647, %4413
  %5651 = fadd fast float %5648, %4414
  %5652 = fadd fast float %5649, %4439
  br i1 %4577, label %5653, label %5676

; <label>:5653                                    ; preds = %5588
  %5654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3811, float %5636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5655 = extractvalue %dx.types.ResRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.ResRet.f32 %5654, 1
  %5657 = extractvalue %dx.types.ResRet.f32 %5654, 2
  %5658 = fadd fast float %5655, -5.000000e-01
  %5659 = fadd fast float %5656, -5.000000e-01
  %5660 = fadd fast float %5657, -5.000000e-01
  %5661 = fmul fast float %4413, 4.000000e+00
  %5662 = fmul fast float %5661, %5644
  %5663 = fmul fast float %5662, %5658
  %5664 = fmul fast float %4414, 4.000000e+00
  %5665 = fmul fast float %5664, %5645
  %5666 = fmul fast float %5665, %5659
  %5667 = fmul fast float %4439, 4.000000e+00
  %5668 = fmul fast float %5667, %5646
  %5669 = fmul fast float %5668, %5660
  %5670 = fadd fast float %5663, %5650
  %5671 = fadd fast float %5666, %5651
  %5672 = fadd fast float %5669, %5652
  %5673 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  br label %5676

; <label>:5676                                    ; preds = %5653, %5588
  %5677 = phi float [ %5673, %5653 ], [ %5650, %5588 ]
  %5678 = phi float [ %5674, %5653 ], [ %5651, %5588 ]
  %5679 = phi float [ %5675, %5653 ], [ %5652, %5588 ]
  %5680 = fmul fast float %5600, 9.843750e-01
  %5681 = fadd fast float %5680, 7.812500e-03
  %5682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %5681, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 3
  %5685 = fmul fast float %5683, %4413
  %5686 = fmul fast float %5683, %4414
  %5687 = fmul fast float %5683, %4439
  %5688 = fadd fast float %5685, %5684
  %5689 = fadd fast float %5686, %5684
  %5690 = fadd fast float %5687, %5684
  br i1 %4577, label %5691, label %5714

; <label>:5691                                    ; preds = %5676
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3811, float %5600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = fadd fast float %5693, -5.000000e-01
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fmul fast float %4413, 4.000000e+00
  %5700 = fmul fast float %5699, %5644
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %4414, 4.000000e+00
  %5703 = fmul fast float %5702, %5645
  %5704 = fmul fast float %5703, %5697
  %5705 = fmul fast float %4439, 4.000000e+00
  %5706 = fmul fast float %5705, %5646
  %5707 = fmul fast float %5706, %5698
  %5708 = fadd fast float %5701, %5688
  %5709 = fadd fast float %5704, %5689
  %5710 = fadd fast float %5707, %5690
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  br label %5714

; <label>:5714                                    ; preds = %5691, %5676
  %5715 = phi float [ %5711, %5691 ], [ %5688, %5676 ]
  %5716 = phi float [ %5712, %5691 ], [ %5689, %5676 ]
  %5717 = phi float [ %5713, %5691 ], [ %5690, %5676 ]
  %5718 = call float @dx.op.binary.f32(i32 35, float %5716, float %5717)  ; FMax(a,b)
  %5719 = call float @dx.op.binary.f32(i32 35, float %5715, float %5718)  ; FMax(a,b)
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = fmul fast float %5677, %5635
  %5722 = fmul fast float %5678, %5635
  %5723 = fmul fast float %5679, %5635
  %5724 = fsub fast float 1.000000e+00, %5601
  %5725 = bitcast float %5724 to i32
  %5726 = sitofp i32 %5725 to float
  %5727 = fmul fast float %5726, 5.000000e+00
  %5728 = fadd fast float %5727, 0xC1EFBF8940000000
  %5729 = fptosi float %5728 to i32
  %5730 = bitcast i32 %5729 to float
  %5731 = fmul fast float %5730, %3812
  %5732 = fmul fast float %5720, %5731
  %5733 = fmul fast float %5732, %5503
  %5734 = fmul fast float %5732, %5504
  %5735 = fmul fast float %5732, %5505
  %5736 = fadd fast float %5733, %5721
  %5737 = fadd fast float %5734, %5722
  %5738 = fadd fast float %5735, %5723
  %5739 = fmul fast float %5607, %5589
  %5740 = fmul fast float %5739, %5720
  %5741 = fmul fast float %5607, %5590
  %5742 = fmul fast float %5741, %5720
  %5743 = fmul fast float %5607, %5591
  %5744 = fmul fast float %5743, %5720
  %5745 = fmul fast float %5739, %5736
  %5746 = fmul fast float %5741, %5737
  %5747 = fmul fast float %5743, %5738
  %5748 = fadd fast float %5740, %5487
  %5749 = fmul fast float %5748, %3808
  %5750 = fadd fast float %5742, %5488
  %5751 = fmul fast float %5750, %3808
  %5752 = fadd fast float %5744, %5489
  %5753 = fmul fast float %5752, %3808
  %5754 = fadd fast float %5745, %5530
  %5755 = fmul fast float %5754, %3808
  %5756 = fadd fast float %5746, %5533
  %5757 = fmul fast float %5756, %3808
  %5758 = fadd fast float %5747, %5536
  %5759 = fmul fast float %5758, %3808
  br label %5760

; <label>:5760                                    ; preds = %5714, %5581, %5483
  %5761 = phi float [ %5531, %5483 ], [ %5531, %5581 ], [ %5755, %5714 ]
  %5762 = phi float [ %5534, %5483 ], [ %5534, %5581 ], [ %5757, %5714 ]
  %5763 = phi float [ %5537, %5483 ], [ %5537, %5581 ], [ %5759, %5714 ]
  %5764 = phi float [ %5526, %5483 ], [ %5526, %5581 ], [ %5749, %5714 ]
  %5765 = phi float [ %5527, %5483 ], [ %5527, %5581 ], [ %5751, %5714 ]
  %5766 = phi float [ %5528, %5483 ], [ %5528, %5581 ], [ %5753, %5714 ]
  %5767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.i32 %5767, 0
  %5769 = icmp eq i32 %5768, 0
  br i1 %5769, label %6201, label %5770

; <label>:5770                                    ; preds = %5760
  %5771 = fptoui float %84 to i32
  %5772 = fptoui float %85 to i32
  %5773 = lshr i32 %5771, 4
  %5774 = lshr i32 %5772, 4
  %5775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.i32 %5775, 0
  %5777 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5774, i32 %5776, i32 %5773)  ; UMad(a,b,c)
  %5778 = add nsw i32 %5768, -1
  %5779 = call i32 @dx.op.binary.i32(i32 37, i32 %5778, i32 0)  ; IMax(a,b)
  %5780 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5781 = fptoui float %5780 to i32
  %5782 = lshr i32 %5781, 5
  %5783 = call i32 @dx.op.binary.i32(i32 40, i32 %5782, i32 8191)  ; UMin(a,b)
  %5784 = shl i32 %5783, 2
  %5785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.i32 %5785, 0
  %5787 = lshr i32 %5786, 16
  %5788 = and i32 %5786, 65535
  %5789 = lshr i32 %5786, 21
  %5790 = lshr i32 %5788, 5
  %5791 = call i32 @dx.op.binary.i32(i32 40, i32 %5790, i32 %5779)  ; UMin(a,b)
  %5792 = icmp ugt i32 %5789, %5791
  br i1 %5792, label %6201, label %5793

; <label>:5793                                    ; preds = %5770
  br label %5794

; <label>:5794                                    ; preds = %6191, %5793
  %5795 = phi i32 [ %6198, %6191 ], [ %5789, %5793 ]
  %5796 = phi float [ %6192, %6191 ], [ %5761, %5793 ]
  %5797 = phi float [ %6193, %6191 ], [ %5762, %5793 ]
  %5798 = phi float [ %6194, %6191 ], [ %5763, %5793 ]
  %5799 = phi float [ %6195, %6191 ], [ %5764, %5793 ]
  %5800 = phi float [ %6196, %6191 ], [ %5765, %5793 ]
  %5801 = phi float [ %6197, %6191 ], [ %5766, %5793 ]
  %5802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.i32 %5802, 0
  %5804 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5777, i32 %5803, i32 %5795)  ; UMad(a,b,c)
  %5805 = shl i32 %5804, 2
  %5806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.i32 %5806, 0
  %5808 = shl i32 %5795, 5
  %5809 = sub nsw i32 %5787, %5808
  %5810 = call i32 @dx.op.binary.i32(i32 37, i32 %5809, i32 0)  ; IMax(a,b)
  %5811 = call i32 @dx.op.binary.i32(i32 38, i32 %5810, i32 31)  ; IMin(a,b)
  %5812 = sub nsw i32 1, %5787
  %5813 = add nsw i32 %5812, %5788
  %5814 = call i32 @dx.op.binary.i32(i32 37, i32 %5813, i32 0)  ; IMax(a,b)
  %5815 = call i32 @dx.op.binary.i32(i32 38, i32 %5814, i32 32)  ; IMin(a,b)
  %5816 = and i32 %5815, 31
  %5817 = shl i32 -1, %5816
  %5818 = xor i32 %5817, -1
  %5819 = and i32 %5811, 31
  %5820 = shl i32 %5818, %5819
  %5821 = icmp eq i32 %5815, 32
  %5822 = select i1 %5821, i32 -1, i32 %5820
  %5823 = and i32 %5822, %5807
  %5824 = icmp eq i32 %5823, 0
  br i1 %5824, label %6191, label %5825

; <label>:5825                                    ; preds = %5794
  br label %5826

; <label>:5826                                    ; preds = %5906, %5825
  %5827 = phi i32 [ %5838, %5906 ], [ %5823, %5825 ]
  %5828 = phi float [ %5907, %5906 ], [ %5796, %5825 ]
  %5829 = phi float [ %5908, %5906 ], [ %5797, %5825 ]
  %5830 = phi float [ %5909, %5906 ], [ %5798, %5825 ]
  %5831 = phi float [ %5910, %5906 ], [ %5799, %5825 ]
  %5832 = phi float [ %5911, %5906 ], [ %5800, %5825 ]
  %5833 = phi float [ %5912, %5906 ], [ %5801, %5825 ]
  %5834 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5827)  ; FirstbitLo(value)
  %5835 = add i32 %5834, %5808
  %5836 = and i32 %5834, 31
  %5837 = shl i32 1, %5836
  %5838 = xor i32 %5837, %5827
  %5839 = mul i32 %5835, 112
  %5840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.ResRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.ResRet.f32 %5840, 2
  %5844 = or i32 %5839, 12
  %5845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5844, i32 undef)  ; BufferLoad(srv,index,wot)
  %5846 = extractvalue %dx.types.ResRet.f32 %5845, 0
  %5847 = add i32 %5839, 44
  %5848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5847, i32 undef)  ; BufferLoad(srv,index,wot)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = add i32 %5839, 48
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.ResRet.f32 %5851, 2
  %5855 = add i32 %5839, 80
  %5856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5855, i32 undef)  ; BufferLoad(srv,index,wot)
  %5857 = extractvalue %dx.types.ResRet.f32 %5856, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5856, 2
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = select i1 %189, float %5857, float %5841
  %5861 = select i1 %189, float %5859, float %5842
  %5862 = select i1 %189, float %5858, float %5843
  %5863 = fsub fast float %5852, %147
  %5864 = fsub fast float %5853, %148
  %5865 = fsub fast float %5854, %149
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5865, float %5863, float %5864, float %5865)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = call float @dx.op.unary.f32(i32 24, float %5866)  ; Sqrt(value)
  %5868 = fdiv fast float 1.000000e+00, %5867
  %5869 = fmul fast float %5868, %5863
  %5870 = fmul fast float %5868, %5864
  %5871 = fmul fast float %5868, %5865
  %5872 = fadd fast float %5867, %5846
  %5873 = fdiv fast float 1.000000e+00, %5872
  %5874 = fmul float %5849, %5873
  %5875 = fmul float %5874, %5874
  %5876 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5877 = and i32 %5837, %5823
  %5878 = icmp eq i32 %5877, 0
  br i1 %5878, label %5901, label %5879, !dx.controlflow.hints !94

; <label>:5879                                    ; preds = %5826
  %5880 = lshr i32 %5771, 5
  %5881 = lshr i32 %5772, 5
  %5882 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %5880, i32 %5881, i32 %5835, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5883 = extractvalue %dx.types.ResRet.i32 %5882, 0
  %5884 = and i32 %5883, 3
  %5885 = icmp eq i32 %5884, 0
  %5886 = select i1 %5885, float 1.000000e+00, float 0.000000e+00
  %5887 = icmp eq i32 %5884, 3
  br i1 %5887, label %5888, label %5901

; <label>:5888                                    ; preds = %5879
  %5889 = lshr i32 %5883, 10
  %5890 = and i32 %5889, 8160
  %5891 = and i32 %5772, 31
  %5892 = or i32 %5890, %5891
  %5893 = lshr i32 %5883, 1
  %5894 = and i32 %5893, 16352
  %5895 = and i32 %5771, 31
  %5896 = or i32 %5894, %5895
  %5897 = lshr i32 %5883, 23
  %5898 = and i32 %5897, 255
  %5899 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %5896, i32 %5892, i32 %5898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  br label %5901

; <label>:5901                                    ; preds = %5888, %5879, %5826
  %5902 = phi float [ %5900, %5888 ], [ %5886, %5879 ], [ 0.000000e+00, %5826 ]
  %5903 = call float @dx.op.binary.f32(i32 36, float %5902, float %5902)  ; FMin(a,b)
  %5904 = call float @dx.op.binary.f32(i32 36, float %5902, float %5903)  ; FMin(a,b)
  %5905 = fcmp fast ogt float %5904, 0.000000e+00
  br i1 %5905, label %5914, label %5906, !dx.controlflow.hints !95

; <label>:5906                                    ; preds = %6147, %5901
  %5907 = phi float [ %5828, %5901 ], [ %6187, %6147 ]
  %5908 = phi float [ %5829, %5901 ], [ %6188, %6147 ]
  %5909 = phi float [ %5830, %5901 ], [ %6189, %6147 ]
  %5910 = phi float [ %5831, %5901 ], [ %6181, %6147 ]
  %5911 = phi float [ %5832, %5901 ], [ %6182, %6147 ]
  %5912 = phi float [ %5833, %5901 ], [ %6183, %6147 ]
  %5913 = icmp eq i32 %5827, %5837
  br i1 %5913, label %6190, label %5826

; <label>:5914                                    ; preds = %5901
  %5915 = fmul fast float %5902, %5860
  %5916 = fmul fast float %5902, %5861
  %5917 = fmul fast float %5902, %5862
  %5918 = fsub fast float %5854, %4212
  %5919 = fcmp fast ogt float %5918, 0.000000e+00
  %5920 = fsub fast float %149, %4212
  %5921 = fcmp fast ogt float %5920, 0.000000e+00
  %5922 = xor i1 %5921, %5919
  %5923 = fsub fast float %4212, %5854
  %5924 = fmul fast float %5923, 2.000000e+00
  %5925 = fadd fast float %5924, %5854
  %5926 = select i1 %5922, float %5854, float %5925
  %5927 = fsub fast float %5926, %149
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5927, float %5863, float %5864, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = call float @dx.op.unary.f32(i32 25, float %5928)  ; Rsqrt(value)
  %5930 = fmul fast float %5929, %5863
  %5931 = fmul fast float %5929, %5864
  %5932 = fmul fast float %5929, %5927
  %5933 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5930, float %5931, float %5932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fdiv fast float 1.000000e+00, %5934
  %5936 = fmul fast float %5935, %5933
  %5937 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5920, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  %5939 = fcmp fast olt float %5937, 0.000000e+00
  %5940 = zext i1 %5938 to i32
  %5941 = zext i1 %5939 to i32
  %5942 = sub nsw i32 %5940, %5941
  %5943 = sitofp i32 %5942 to float
  %5944 = fsub fast float %5926, %4212
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %5944, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fcmp fast ogt float %5945, 0.000000e+00
  %5947 = fcmp fast olt float %5945, 0.000000e+00
  %5948 = zext i1 %5946 to i32
  %5949 = zext i1 %5947 to i32
  %5950 = sub nsw i32 %5948, %5949
  %5951 = sitofp i32 %5950 to float
  %5952 = fcmp fast une float %5943, %5951
  br i1 %5952, label %5953, label %5963

; <label>:5953                                    ; preds = %5914
  %5954 = fmul fast float %5936, %5932
  %5955 = fmul fast float %5936, %5931
  %5956 = fmul fast float %5936, %5930
  %5957 = fmul fast float %5956, %5956
  %5958 = fmul fast float %5955, %5955
  %5959 = fadd fast float %5957, %5958
  %5960 = fmul fast float %5954, %5954
  %5961 = fadd fast float %5959, %5960
  %5962 = call float @dx.op.unary.f32(i32 24, float %5961)  ; Sqrt(value)
  br label %5975

; <label>:5963                                    ; preds = %5914
  %5964 = icmp slt i32 %5942, 0
  br i1 %5964, label %5965, label %5975

; <label>:5965                                    ; preds = %5963
  %5966 = fsub fast float %147, %5852
  %5967 = fsub fast float %148, %5853
  %5968 = fsub fast float %149, %5926
  %5969 = fmul fast float %5966, %5966
  %5970 = fmul fast float %5967, %5967
  %5971 = fadd fast float %5969, %5970
  %5972 = fmul fast float %5968, %5968
  %5973 = fadd fast float %5971, %5972
  %5974 = call float @dx.op.unary.f32(i32 24, float %5973)  ; Sqrt(value)
  br label %5975

; <label>:5975                                    ; preds = %5965, %5963, %5953
  %5976 = phi float [ %5962, %5953 ], [ %5974, %5965 ], [ 0.000000e+00, %5963 ]
  %5977 = and i1 %5921, %5919
  %5978 = fsub fast float -0.000000e+00, %5976
  %5979 = select i1 %5977, float -0.000000e+00, float %5978
  %5980 = fmul fast float %4213, 0x3FF7154760000000
  %5981 = fmul fast float %5980, %5979
  %5982 = fmul fast float %4214, 0x3FF7154760000000
  %5983 = fmul fast float %5982, %5979
  %5984 = fmul fast float %4215, 0x3FF7154760000000
  %5985 = fmul fast float %5984, %5979
  %5986 = call float @dx.op.unary.f32(i32 21, float %5981)  ; Exp(value)
  %5987 = call float @dx.op.unary.f32(i32 21, float %5983)  ; Exp(value)
  %5988 = call float @dx.op.unary.f32(i32 21, float %5985)  ; Exp(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5990 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = fmul fast float %5915, %5989
  %5993 = fmul fast float %5916, %5990
  %5994 = fmul fast float %5917, %5991
  %5995 = fsub fast float %5869, %4412
  %5996 = fsub fast float %5870, %4411
  %5997 = fsub fast float %5871, %4410
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.unary.f32(i32 25, float %5998)  ; Rsqrt(value)
  %6000 = fmul fast float %5999, %5995
  %6001 = fmul fast float %5999, %5996
  %6002 = fmul fast float %5999, %5997
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %4419, float %4420, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4408, float %4407, float %6000, float %6001, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6006 = fmul fast float %6005, %5876
  %6007 = bitcast i32 %4465 to float
  %6008 = fmul fast float %6005, %6005
  %6009 = fmul fast float %6008, %6007
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = fmul fast float %6006, %6010
  %6012 = bitcast float %5866 to i32
  %6013 = ashr i32 %6012, 1
  %6014 = sub nsw i32 1597463007, %6013
  %6015 = bitcast i32 %6014 to float
  %6016 = fmul fast float %6015, %5863
  %6017 = fmul fast float %6015, %5864
  %6018 = fmul fast float %6015, %5865
  %6019 = fsub fast float %6016, %4412
  %6020 = fsub fast float %6017, %4411
  %6021 = fsub fast float %6018, %4410
  %6022 = call float @dx.op.dot3.f32(i32 55, float %6019, float %6020, float %6021, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.unary.f32(i32 25, float %6022)  ; Rsqrt(value)
  %6024 = fmul fast float %6019, %6023
  %6025 = fmul fast float %6020, %6023
  %6026 = fmul fast float %6021, %6023
  %6027 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float %6024, float %6025, float %6026)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = fmul fast float %6027, %6027
  %6029 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6030 = fsub fast float 1.000000e+00, %4459
  %6031 = fmul fast float %4441, %4441
  %6032 = fmul fast float %6031, %6030
  %6033 = fadd fast float %6032, %4459
  %6034 = bitcast float %6033 to i32
  %6035 = ashr i32 %6034, 1
  %6036 = add nsw i32 %6035, 532487669
  %6037 = bitcast i32 %6036 to float
  %6038 = fadd fast float %6037, %4441
  %6039 = fmul fast float %4459, %6028
  %6040 = fsub fast float 1.000000e+00, %6028
  %6041 = fadd fast float %6040, %6039
  %6042 = fmul fast float %6029, %6029
  %6043 = fmul fast float %6042, %6030
  %6044 = fadd fast float %6043, %4459
  %6045 = bitcast float %6044 to i32
  %6046 = ashr i32 %6045, 1
  %6047 = add nsw i32 %6046, 532487669
  %6048 = bitcast i32 %6047 to float
  %6049 = fadd fast float %6048, %6029
  %6050 = fmul fast float %6041, %6041
  %6051 = fmul fast float %6050, %6038
  %6052 = fmul fast float %6051, %6049
  %6053 = fdiv fast float 1.000000e+00, %6052
  %6054 = bitcast float %4459 to i32
  %6055 = sitofp i32 %6054 to float
  %6056 = fmul fast float %6055, 0x3FE7F73180000000
  %6057 = fadd fast float %6056, 0x41AFE27C40000000
  %6058 = fptosi float %6057 to i32
  %6059 = bitcast i32 %6058 to float
  %6060 = fmul fast float %5849, 0x3FD80E9D60000000
  %6061 = fmul fast float %6060, %6015
  %6062 = fadd fast float %6059, %6061
  %6063 = bitcast float %6062 to i32
  %6064 = sub nsw i32 2129859010, %6063
  %6065 = bitcast i32 %6064 to float
  %6066 = fmul fast float %4459, %6053
  %6067 = fmul fast float %6066, %6059
  %6068 = fmul fast float %6067, %6065
  %6069 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = bitcast float %6070 to i32
  %6072 = sitofp i32 %6071 to float
  %6073 = fmul fast float %6072, 5.000000e+00
  %6074 = fadd fast float %6073, 0xC1EFBF8940000000
  %6075 = fptosi float %6074 to i32
  %6076 = bitcast i32 %6075 to float
  %6077 = fsub fast float 1.000000e+00, %4413
  %6078 = fsub fast float 1.000000e+00, %4414
  %6079 = fsub fast float 1.000000e+00, %4439
  %6080 = fmul fast float %6076, %6077
  %6081 = fmul fast float %6076, %6078
  %6082 = fmul fast float %6076, %6079
  %6083 = fadd fast float %6080, %4413
  %6084 = fadd fast float %6081, %4414
  %6085 = fadd fast float %6082, %4439
  br i1 %4577, label %6086, label %6109

; <label>:6086                                    ; preds = %5975
  %6087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3811, float %6069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = fadd fast float %6088, -5.000000e-01
  %6092 = fadd fast float %6089, -5.000000e-01
  %6093 = fadd fast float %6090, -5.000000e-01
  %6094 = fmul fast float %4413, 4.000000e+00
  %6095 = fmul fast float %6094, %6077
  %6096 = fmul fast float %6095, %6091
  %6097 = fmul fast float %4414, 4.000000e+00
  %6098 = fmul fast float %6097, %6078
  %6099 = fmul fast float %6098, %6092
  %6100 = fmul fast float %4439, 4.000000e+00
  %6101 = fmul fast float %6100, %6079
  %6102 = fmul fast float %6101, %6093
  %6103 = fadd fast float %6096, %6083
  %6104 = fadd fast float %6099, %6084
  %6105 = fadd fast float %6102, %6085
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  br label %6109

; <label>:6109                                    ; preds = %6086, %5975
  %6110 = phi float [ %6106, %6086 ], [ %6083, %5975 ]
  %6111 = phi float [ %6107, %6086 ], [ %6084, %5975 ]
  %6112 = phi float [ %6108, %6086 ], [ %6085, %5975 ]
  %6113 = fmul fast float %6003, 9.843750e-01
  %6114 = fadd fast float %6113, 7.812500e-03
  %6115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %6114, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 2
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 3
  %6118 = fmul fast float %6116, %4413
  %6119 = fmul fast float %6116, %4414
  %6120 = fmul fast float %6116, %4439
  %6121 = fadd fast float %6118, %6117
  %6122 = fadd fast float %6119, %6117
  %6123 = fadd fast float %6120, %6117
  br i1 %4577, label %6124, label %6147

; <label>:6124                                    ; preds = %6109
  %6125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3811, float %6003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 0
  %6127 = extractvalue %dx.types.ResRet.f32 %6125, 1
  %6128 = extractvalue %dx.types.ResRet.f32 %6125, 2
  %6129 = fadd fast float %6126, -5.000000e-01
  %6130 = fadd fast float %6127, -5.000000e-01
  %6131 = fadd fast float %6128, -5.000000e-01
  %6132 = fmul fast float %4413, 4.000000e+00
  %6133 = fmul fast float %6132, %6077
  %6134 = fmul fast float %6133, %6129
  %6135 = fmul fast float %4414, 4.000000e+00
  %6136 = fmul fast float %6135, %6078
  %6137 = fmul fast float %6136, %6130
  %6138 = fmul fast float %4439, 4.000000e+00
  %6139 = fmul fast float %6138, %6079
  %6140 = fmul fast float %6139, %6131
  %6141 = fadd fast float %6134, %6121
  %6142 = fadd fast float %6137, %6122
  %6143 = fadd fast float %6140, %6123
  %6144 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6145 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6146 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  br label %6147

; <label>:6147                                    ; preds = %6124, %6109
  %6148 = phi float [ %6144, %6124 ], [ %6121, %6109 ]
  %6149 = phi float [ %6145, %6124 ], [ %6122, %6109 ]
  %6150 = phi float [ %6146, %6124 ], [ %6123, %6109 ]
  %6151 = call float @dx.op.binary.f32(i32 35, float %6149, float %6150)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 35, float %6148, float %6151)  ; FMax(a,b)
  %6153 = fsub fast float 1.000000e+00, %6152
  %6154 = fmul fast float %6110, %6068
  %6155 = fmul fast float %6111, %6068
  %6156 = fmul fast float %6112, %6068
  %6157 = fsub fast float 1.000000e+00, %6004
  %6158 = bitcast float %6157 to i32
  %6159 = sitofp i32 %6158 to float
  %6160 = fmul fast float %6159, 5.000000e+00
  %6161 = fadd fast float %6160, 0xC1EFBF8940000000
  %6162 = fptosi float %6161 to i32
  %6163 = bitcast i32 %6162 to float
  %6164 = fmul fast float %6163, %3812
  %6165 = fmul fast float %6153, %6164
  %6166 = fmul fast float %6165, %5503
  %6167 = fmul fast float %6165, %5504
  %6168 = fmul fast float %6165, %5505
  %6169 = fadd fast float %6166, %6154
  %6170 = fadd fast float %6167, %6155
  %6171 = fadd fast float %6168, %6156
  %6172 = fmul fast float %5992, %3808
  %6173 = fmul fast float %6172, %6011
  %6174 = fmul fast float %6173, %6153
  %6175 = fmul fast float %5993, %3808
  %6176 = fmul fast float %6175, %6011
  %6177 = fmul fast float %6176, %6153
  %6178 = fmul fast float %5994, %3808
  %6179 = fmul fast float %6178, %6011
  %6180 = fmul fast float %6179, %6153
  %6181 = fadd fast float %6174, %5831
  %6182 = fadd fast float %6177, %5832
  %6183 = fadd fast float %6180, %5833
  %6184 = fmul fast float %6173, %6169
  %6185 = fmul fast float %6176, %6170
  %6186 = fmul fast float %6179, %6171
  %6187 = fadd fast float %6184, %5828
  %6188 = fadd fast float %6185, %5829
  %6189 = fadd fast float %6186, %5830
  br label %5906

; <label>:6190                                    ; preds = %5906
  br label %6191

; <label>:6191                                    ; preds = %6190, %5794
  %6192 = phi float [ %5796, %5794 ], [ %5907, %6190 ]
  %6193 = phi float [ %5797, %5794 ], [ %5908, %6190 ]
  %6194 = phi float [ %5798, %5794 ], [ %5909, %6190 ]
  %6195 = phi float [ %5799, %5794 ], [ %5910, %6190 ]
  %6196 = phi float [ %5800, %5794 ], [ %5911, %6190 ]
  %6197 = phi float [ %5801, %5794 ], [ %5912, %6190 ]
  %6198 = add i32 %5795, 1
  %6199 = icmp ugt i32 %6198, %5791
  br i1 %6199, label %6200, label %5794

; <label>:6200                                    ; preds = %6191
  br label %6201

; <label>:6201                                    ; preds = %6200, %5770, %5760
  %6202 = phi float [ %5761, %5760 ], [ %5761, %5770 ], [ %6192, %6200 ]
  %6203 = phi float [ %5762, %5760 ], [ %5762, %5770 ], [ %6193, %6200 ]
  %6204 = phi float [ %5763, %5760 ], [ %5763, %5770 ], [ %6194, %6200 ]
  %6205 = phi float [ %5764, %5760 ], [ %5764, %5770 ], [ %6195, %6200 ]
  %6206 = phi float [ %5765, %5760 ], [ %5765, %5770 ], [ %6196, %6200 ]
  %6207 = phi float [ %5766, %5760 ], [ %5766, %5770 ], [ %6197, %6200 ]
  %6208 = call float @dx.op.unary.f32(i32 24, float %4416)  ; Sqrt(value)
  %6209 = call float @dx.op.unary.f32(i32 24, float %4417)  ; Sqrt(value)
  %6210 = call float @dx.op.unary.f32(i32 24, float %4418)  ; Sqrt(value)
  %6211 = fmul fast float %6208, %6205
  %6212 = fmul fast float %6209, %6206
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  br i1 %189, label %6215, label %6238

; <label>:6215                                    ; preds = %6201
  %6216 = fadd fast float %6207, %3814
  %6217 = fmul fast float %6216, %3815
  %6218 = fsub fast float 1.000000e+00, %3815
  %6219 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 3
  %6222 = fmul fast float %6221, %6219
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = fmul fast float %6224, %5509
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = fmul fast float %6226, %4437
  %6228 = fadd fast float %6212, %6211
  %6229 = fmul fast float %6214, %6228
  %6230 = extractvalue %dx.types.CBufRet.f32 %6220, 1
  %6231 = fadd fast float %6222, %6217
  %6232 = fsub fast float %6231, %6225
  %6233 = fadd fast float %6232, %6227
  %6234 = fsub fast float %6233, %6230
  %6235 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6236 = fmul fast float %6234, %6235
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  br label %6254

; <label>:6238                                    ; preds = %6201
  %6239 = fmul fast float %6210, %6207
  %6240 = fmul fast float %6214, %6211
  %6241 = fmul fast float %6214, %6212
  %6242 = fmul fast float %6239, %6214
  %6243 = add i32 %49, 356
  %6244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.i32 %6244, 0
  %6246 = and i32 %6245, 32
  %6247 = icmp eq i32 %6246, 0
  br i1 %6247, label %6254, label %6248

; <label>:6248                                    ; preds = %6238
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = fmul fast float %6250, 0x3FE99999A0000000
  %6252 = fadd fast float %6250, %6240
  %6253 = fadd fast float %6251, %6242
  br label %6254

; <label>:6254                                    ; preds = %6248, %6238, %6215
  %6255 = phi float [ %6229, %6215 ], [ %6252, %6248 ], [ %6240, %6238 ]
  %6256 = phi float [ %6237, %6215 ], [ %6241, %6248 ], [ %6241, %6238 ]
  %6257 = phi float [ 1.000000e+00, %6215 ], [ %6253, %6248 ], [ %6242, %6238 ]
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = fmul fast float %6259, %6203
  %6261 = fmul fast float %6259, %6204
  %6262 = fadd fast float %6203, %6202
  %6263 = select i1 %189, float %6262, float %6202
  %6264 = fmul float %6263, %6259
  %6265 = select i1 %189, float 0.000000e+00, float %6260
  %6266 = select i1 %189, float 0.000000e+00, float %6261
  %6267 = fmul fast float %6255, %6208
  %6268 = fmul fast float %6256, %6209
  %6269 = fmul fast float %6257, %6210
  %6270 = fadd fast float %6264, %6267
  %6271 = fadd fast float %6265, %6268
  %6272 = fadd fast float %6266, %6269
  %6273 = select i1 %189, float %6256, float %6271
  %6274 = select i1 %189, float %6257, float %6272
  %6275 = call float @dx.op.binary.f32(i32 36, float %6270, float 3.225500e+04)  ; FMin(a,b)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6273, float 3.225500e+04)  ; FMin(a,b)
  %6277 = call float @dx.op.binary.f32(i32 36, float %6274, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6275)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6276)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6277)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !57}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!47 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!48 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!49 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!50 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!51 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55, !56}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{i32 2, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!57 = !{!58, !59, !60, !61, !62}
!58 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!59 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !87}
!65 = !{!66, !85, null}
!66 = !{!67, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 11}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!71 = !{i32 3, i32 14}
!72 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!77 = !{i32 3, i32 15}
!78 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 5, i8 0, !75}
!79 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!80 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 7, i8 0, !73}
!81 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 8, i8 0, !77}
!82 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 9, i8 0, !83}
!83 = !{i32 3, i32 13}
!84 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!85 = !{!86}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!87 = !{i32 0, i64 24}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

