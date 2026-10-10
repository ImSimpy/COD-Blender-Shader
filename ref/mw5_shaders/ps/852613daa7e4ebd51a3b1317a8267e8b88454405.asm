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
; shader hash: 2230b01cb4634450e83edebdaa3b1f73
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
  %3254 = call float @dx.op.dot2.f32(i32 54, float %3154, float %3155, float %3154, float %3155)  ; Dot2(ax,ay,bx,by)
  %3255 = fmul fast float %3254, 0x3FE3333340000000
  %3256 = fsub fast float 1.000000e+00, %3255
  %3257 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3155, float %3256, float %3154, float %3155, float %3256)  ; Dot3(ax,ay,az,bx,by,bz)
  %3258 = call float @dx.op.unary.f32(i32 25, float %3257)  ; Rsqrt(value)
  %3259 = fmul fast float %3258, %3154
  %3260 = fmul fast float %3258, %3155
  %3261 = fmul fast float %3256, %3258
  %3262 = fmul fast float %3261, %91
  %3263 = fmul fast float %3261, %92
  %3264 = fmul fast float %3261, %93
  %3265 = fmul fast float %3259, %65
  %3266 = fmul fast float %3259, %66
  %3267 = fmul fast float %3259, %67
  %3268 = fadd fast float %3262, %3265
  %3269 = fadd fast float %3263, %3266
  %3270 = fadd fast float %3264, %3267
  %3271 = fmul fast float %103, %3260
  %3272 = fmul fast float %104, %3260
  %3273 = fmul fast float %105, %3260
  %3274 = fadd fast float %3268, %3271
  %3275 = fadd fast float %3269, %3272
  %3276 = fadd fast float %3270, %3273
  %3277 = call float @dx.op.dot3.f32(i32 55, float %3274, float %3275, float %3276, float %3274, float %3275, float %3276)  ; Dot3(ax,ay,az,bx,by,bz)
  %3278 = call float @dx.op.unary.f32(i32 25, float %3277)  ; Rsqrt(value)
  %3279 = fmul fast float %3274, %3278
  %3280 = fmul fast float %3275, %3278
  %3281 = fmul fast float %3276, %3278
  %3282 = and i32 %51, 1
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3284, label %3792

; <label>:3284                                    ; preds = %3190
  %3285 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3286 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %3287 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %3288 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3289 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %3290 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %3291 = fadd fast float %3285, %147
  %3292 = fadd fast float %3286, %148
  %3293 = fadd fast float %3287, %149
  %3294 = fadd fast float %3288, %147
  %3295 = fadd fast float %3289, %148
  %3296 = fadd fast float %3290, %149
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.CBufRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.CBufRet.f32 %3297, 2
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 2
  %3303 = extractvalue %dx.types.CBufRet.f32 %3301, 3
  %3304 = fmul fast float %3298, %84
  %3305 = fmul fast float %3304, %3302
  %3306 = fmul fast float %3299, %85
  %3307 = fmul fast float %3306, %3303
  %3308 = fptoui float %3305 to i32
  %3309 = fptoui float %3307 to i32
  %3310 = fadd fast float %3298, -1.000000e+00
  %3311 = fadd fast float %3299, -1.000000e+00
  %3312 = fptoui float %3310 to i32
  %3313 = fptoui float %3311 to i32
  %3314 = call i32 @dx.op.binary.i32(i32 40, i32 %3308, i32 %3312)  ; UMin(a,b)
  %3315 = call i32 @dx.op.binary.i32(i32 40, i32 %3309, i32 %3313)  ; UMin(a,b)
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 2
  %3318 = extractvalue %dx.types.CBufRet.f32 %3316, 3
  %3319 = fmul fast float %3317, %79
  %3320 = fsub fast float %3319, %3318
  %3321 = fadd fast float %3300, -1.000000e+00
  %3322 = call float @dx.op.binary.f32(i32 36, float %3320, float %3321)  ; FMin(a,b)
  %3323 = fptoui float %3322 to i32
  %3324 = fptoui float %3298 to i32
  %3325 = fptoui float %3299 to i32
  %3326 = mul i32 %3323, %3325
  %3327 = add i32 %3326, %3315
  %3328 = mul i32 %3327, %3324
  %3329 = add i32 %3328, %3314
  %3330 = shl i32 %3329, 2
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 1023
  %3334 = lshr i32 %3332, 10
  %3335 = icmp eq i32 %3333, 0
  br i1 %3335, label %3761, label %3336

; <label>:3336                                    ; preds = %3284
  %3337 = and i32 %3332, 1023
  br label %3338

; <label>:3338                                    ; preds = %3464, %3336
  %3339 = phi i32 [ %3414, %3464 ], [ 0, %3336 ]
  %3340 = phi float [ %3465, %3464 ], [ 0.000000e+00, %3336 ]
  %3341 = phi float [ %3466, %3464 ], [ %3164, %3336 ]
  %3342 = phi float [ %3467, %3464 ], [ %3162, %3336 ]
  %3343 = phi float [ %3468, %3464 ], [ 0.000000e+00, %3336 ]
  %3344 = phi float [ %3469, %3464 ], [ 0.000000e+00, %3336 ]
  %3345 = phi float [ %3470, %3464 ], [ %3251, %3336 ]
  %3346 = phi float [ %3471, %3464 ], [ %3252, %3336 ]
  %3347 = phi float [ %3472, %3464 ], [ %3253, %3336 ]
  %3348 = phi float [ %3473, %3464 ], [ %3279, %3336 ]
  %3349 = phi float [ %3474, %3464 ], [ %3280, %3336 ]
  %3350 = phi float [ %3475, %3464 ], [ %3281, %3336 ]
  %3351 = phi float [ %3476, %3464 ], [ %3161, %3336 ]
  %3352 = phi float [ %3477, %3464 ], [ %3160, %3336 ]
  %3353 = phi float [ %3478, %3464 ], [ 0.000000e+00, %3336 ]
  %3354 = phi float [ %3479, %3464 ], [ %3159, %3336 ]
  %3355 = phi float [ %3480, %3464 ], [ %3156, %3336 ]
  %3356 = phi float [ %3481, %3464 ], [ %3157, %3336 ]
  %3357 = phi float [ %3482, %3464 ], [ %3158, %3336 ]
  %3358 = add nuw nsw i32 %3339, %3334
  %3359 = shl i32 %3358, 2
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = shl i32 %3361, 8
  %3363 = or i32 %3362, 48
  %3364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.ResRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.ResRet.f32 %3364, 2
  %3368 = extractvalue %dx.types.ResRet.f32 %3364, 3
  %3369 = or i32 %3362, 64
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = extractvalue %dx.types.ResRet.i32 %3370, 1
  %3373 = or i32 %3362, 80
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 3
  %3377 = or i32 %3362, 96
  %3378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.ResRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3378, 2
  %3382 = extractvalue %dx.types.ResRet.f32 %3378, 3
  %3383 = or i32 %3362, 112
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3386 = or i32 %3362, 128
  %3387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3391 = extractvalue %dx.types.ResRet.f32 %3387, 3
  %3392 = or i32 %3362, 144
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = extractvalue %dx.types.ResRet.f32 %3393, 3
  %3398 = or i32 %3362, 160
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = or i32 %3362, 192
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = or i32 %3362, 208
  %3408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 0
  %3410 = or i32 %3362, 248
  %3411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = extractvalue %dx.types.ResRet.f32 %3411, 1
  %3414 = add nuw nsw i32 %3339, 1
  %3415 = bitcast float %3368 to i32
  %3416 = and i32 %3415, 512
  %3417 = icmp eq i32 %3416, 0
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3423 = call float @dx.op.dot4.f32(i32 56, float %3419, float %3420, float %3421, float %3422, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3424 = or i32 %3362, 16
  %3425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.ResRet.f32 %3425, 3
  %3430 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3431 = or i32 %3362, 32
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = call float @dx.op.dot4.f32(i32 56, float %3433, float %3434, float %3435, float %3436, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3438 = call float @dx.op.unary.f32(i32 27, float %3423)  ; Round_ni(value)
  %3439 = call float @dx.op.unary.f32(i32 6, float %3438)  ; FAbs(value)
  %3440 = call float @dx.op.unary.f32(i32 27, float %3430)  ; Round_ni(value)
  %3441 = call float @dx.op.unary.f32(i32 6, float %3440)  ; FAbs(value)
  %3442 = call float @dx.op.unary.f32(i32 6, float %3437)  ; FAbs(value)
  %3443 = call float @dx.op.unary.f32(i32 27, float %3442)  ; Round_ni(value)
  %3444 = fadd fast float %3441, %3439
  %3445 = fadd fast float %3444, %3443
  %3446 = fcmp fast oeq float %3445, 0.000000e+00
  %3447 = call float @dx.op.dot4.f32(i32 56, float %3419, float %3420, float %3421, float %3422, float %3291, float %3292, float %3293, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3448 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %3291, float %3292, float %3293, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3449 = call float @dx.op.dot4.f32(i32 56, float %3419, float %3420, float %3421, float %3422, float %3294, float %3295, float %3296, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3450 = call float @dx.op.dot4.f32(i32 56, float %3426, float %3427, float %3428, float %3429, float %3294, float %3295, float %3296, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3451 = fsub fast float %3447, %3423
  %3452 = fsub fast float %3449, %3423
  %3453 = fsub fast float %3448, %3430
  %3454 = fsub fast float %3450, %3430
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3366, float %3367, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 2
  %3458 = fadd fast float %3457, %3455
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3461 = fcmp fast ogt float %3459, %3460
  %3462 = and i1 %3446, %3461
  %3463 = and i1 %3417, %3462
  br i1 %3463, label %3484, label %3464

; <label>:3464                                    ; preds = %3747, %3565, %3484, %3338
  %3465 = phi float [ %3340, %3484 ], [ %3568, %3565 ], [ %3568, %3747 ], [ %3340, %3338 ]
  %3466 = phi float [ %3341, %3484 ], [ %3341, %3565 ], [ %3722, %3747 ], [ %3341, %3338 ]
  %3467 = phi float [ %3342, %3484 ], [ %3342, %3565 ], [ %3720, %3747 ], [ %3342, %3338 ]
  %3468 = phi float [ %3343, %3484 ], [ %3343, %3565 ], [ %3692, %3747 ], [ %3343, %3338 ]
  %3469 = phi float [ %3344, %3484 ], [ %3344, %3565 ], [ %3690, %3747 ], [ %3344, %3338 ]
  %3470 = phi float [ %3345, %3484 ], [ %3345, %3565 ], [ %3757, %3747 ], [ %3345, %3338 ]
  %3471 = phi float [ %3346, %3484 ], [ %3346, %3565 ], [ %3758, %3747 ], [ %3346, %3338 ]
  %3472 = phi float [ %3347, %3484 ], [ %3347, %3565 ], [ %3759, %3747 ], [ %3347, %3338 ]
  %3473 = phi float [ %3348, %3484 ], [ %3348, %3565 ], [ %3671, %3747 ], [ %3348, %3338 ]
  %3474 = phi float [ %3349, %3484 ], [ %3349, %3565 ], [ %3672, %3747 ], [ %3349, %3338 ]
  %3475 = phi float [ %3350, %3484 ], [ %3350, %3565 ], [ %3673, %3747 ], [ %3350, %3338 ]
  %3476 = phi float [ %3351, %3484 ], [ %3351, %3565 ], [ %3700, %3747 ], [ %3351, %3338 ]
  %3477 = phi float [ %3352, %3484 ], [ %3352, %3565 ], [ %3697, %3747 ], [ %3352, %3338 ]
  %3478 = phi float [ %3353, %3484 ], [ %3353, %3565 ], [ %3694, %3747 ], [ %3353, %3338 ]
  %3479 = phi float [ %3354, %3484 ], [ %3354, %3565 ], [ %3688, %3747 ], [ %3354, %3338 ]
  %3480 = phi float [ %3355, %3484 ], [ %3355, %3565 ], [ %3683, %3747 ], [ %3355, %3338 ]
  %3481 = phi float [ %3356, %3484 ], [ %3356, %3565 ], [ %3684, %3747 ], [ %3356, %3338 ]
  %3482 = phi float [ %3357, %3484 ], [ %3357, %3565 ], [ %3685, %3747 ], [ %3357, %3338 ]
  %3483 = icmp eq i32 %3414, %3337
  br i1 %3483, label %3760, label %3338

; <label>:3484                                    ; preds = %3338
  %3485 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3486 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3490 = extractvalue %dx.types.ResRet.i32 %3370, 3
  %3491 = extractvalue %dx.types.ResRet.i32 %3370, 2
  %3492 = add i32 %3490, 0
  %3493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3495 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3493, %dx.types.Handle %3494, float %3423, float %3430, float undef, float undef, i32 0, i32 0, i32 undef, float %3451, float %3453, float undef, float %3452, float %3454, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = fmul fast float %3496, %3489
  %3498 = fadd fast float %3497, %3488
  %3499 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3500 = fmul fast float %3423, %3379
  %3501 = call float @dx.op.tertiary.f32(i32 46, float %3380, float %3430, float %3500)  ; FMad(a,b,c)
  %3502 = fadd fast float %3501, %3487
  %3503 = fmul fast float %3423, %3381
  %3504 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3430, float %3503)  ; FMad(a,b,c)
  %3505 = fadd fast float %3504, %3486
  %3506 = fmul fast float %3451, %3379
  %3507 = call float @dx.op.tertiary.f32(i32 46, float %3380, float %3453, float %3506)  ; FMad(a,b,c)
  %3508 = fmul fast float %3451, %3381
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3453, float %3508)  ; FMad(a,b,c)
  %3510 = fmul fast float %3452, %3379
  %3511 = call float @dx.op.tertiary.f32(i32 46, float %3380, float %3454, float %3510)  ; FMad(a,b,c)
  %3512 = fmul fast float %3452, %3381
  %3513 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3454, float %3512)  ; FMad(a,b,c)
  %3514 = add i32 %3491, 0
  %3515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3514, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3516 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3515, %dx.types.Handle %3494, float %3502, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3507, float %3509, float undef, float %3511, float %3513, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = and i32 %3415, 1024
  %3519 = icmp ne i32 %3518, 0
  %3520 = fcmp fast ogt float %3517, 0x3FE0101020000000
  %3521 = uitofp i1 %3520 to float
  %3522 = select i1 %3519, float %3521, float %3517
  %3523 = and i32 %3415, 8192
  %3524 = icmp ne i32 %3523, 0
  %3525 = select i1 %3524, float %3485, float 1.000000e+00
  %3526 = fmul fast float %3423, 2.000000e+00
  %3527 = fadd fast float %3526, -1.000000e+00
  %3528 = call float @dx.op.unary.f32(i32 6, float %3527)  ; FAbs(value)
  %3529 = fmul fast float %3528, %3412
  %3530 = fsub fast float %3529, %3412
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = fmul fast float %3430, 2.000000e+00
  %3533 = fadd fast float %3532, -1.000000e+00
  %3534 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3535 = fmul fast float %3534, %3413
  %3536 = fsub fast float %3535, %3413
  %3537 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3538 = fmul fast float %3442, %3375
  %3539 = fsub fast float %3538, %3375
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = fmul fast float %3499, %3525
  %3542 = fmul fast float %3541, %3496
  %3543 = fmul fast float %3542, %3531
  %3544 = fmul fast float %3543, %3522
  %3545 = fmul fast float %3544, %3537
  %3546 = fmul fast float %3545, %3540
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 1
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 0
  %3550 = fsub fast float %3459, %3549
  %3551 = fmul fast float %3550, %3548
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fmul fast float %3546, %3376
  %3554 = fadd fast float %3546, %3376
  %3555 = fmul fast float %3554, %3385
  %3556 = fsub fast float %3555, %3385
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = and i32 %3415, 128
  %3559 = icmp ne i32 %3558, 0
  %3560 = select i1 %3559, float %3557, float %3553
  %3561 = fmul fast float %3560, %3552
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = fcmp fast ugt float %3561, %3563
  br i1 %3564, label %3565, label %3464

; <label>:3565                                    ; preds = %3484
  %3566 = select i1 %3524, float %3561, float 0.000000e+00
  %3567 = fadd fast float %3566, %3340
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  br i1 %3524, label %3464, label %3569

; <label>:3569                                    ; preds = %3565
  %3570 = and i32 %3415, 4
  %3571 = and i32 %3415, 8
  %3572 = add i32 %3371, 0
  %3573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3572, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3573, %dx.types.Handle %3574, float %3502, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3507, float %3509, float undef, float %3511, float %3513, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = extractvalue %dx.types.ResRet.f32 %3575, 3
  %3580 = bitcast float %3397 to i32
  %3581 = and i32 %3580, 255
  %3582 = uitofp i32 %3581 to float
  %3583 = lshr i32 %3580, 8
  %3584 = and i32 %3583, 255
  %3585 = uitofp i32 %3584 to float
  %3586 = fmul fast float %3579, %3582
  %3587 = fadd fast float %3586, %3585
  %3588 = fmul fast float %3587, 0x3F70101000000000
  %3589 = add i32 %3372, 0
  %3590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3590, %dx.types.Handle %3574, float %3502, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3507, float %3509, float undef, float %3511, float %3513, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3596 = bitcast float %3391 to i32
  %3597 = and i32 %3596, 255
  %3598 = uitofp i32 %3597 to float
  %3599 = lshr i32 %3596, 8
  %3600 = and i32 %3599, 255
  %3601 = uitofp i32 %3600 to float
  %3602 = lshr i32 %3596, 16
  %3603 = and i32 %3602, 255
  %3604 = uitofp i32 %3603 to float
  %3605 = fmul fast float %3604, 0x3F70101000000000
  %3606 = fmul fast float %3592, %3598
  %3607 = fadd fast float %3606, %3601
  %3608 = fmul fast float %3607, 0x3F70101000000000
  %3609 = fadd fast float %3593, -5.000000e-01
  %3610 = fadd fast float %3595, -5.000000e-01
  %3611 = fmul fast float %3609, %3605
  %3612 = fmul fast float %3610, %3605
  %3613 = fadd fast float %3611, 5.000000e-01
  %3614 = fadd fast float %3612, 5.000000e-01
  %3615 = fmul fast float %3576, %3400
  %3616 = fmul fast float %3577, %3401
  %3617 = fmul fast float %3578, %3402
  %3618 = fmul fast float %3613, 2.000000e+00
  %3619 = fadd fast float %3618, -1.000000e+00
  %3620 = fmul fast float %3614, 2.000000e+00
  %3621 = fadd fast float %3620, -1.000000e+00
  %3622 = fadd fast float %3619, %3621
  %3623 = fmul fast float %3622, 5.000000e-01
  %3624 = fsub fast float %3619, %3621
  %3625 = fmul fast float %3624, 5.000000e-01
  %3626 = call float @dx.op.unary.f32(i32 6, float %3623)  ; FAbs(value)
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = call float @dx.op.unary.f32(i32 6, float %3625)  ; FAbs(value)
  %3629 = fsub fast float %3627, %3628
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3625, float %3629, float %3623, float %3625, float %3629)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = call float @dx.op.unary.f32(i32 25, float %3630)  ; Rsqrt(value)
  %3632 = fmul fast float %3623, %3631
  %3633 = fmul fast float %3625, %3631
  %3634 = fmul fast float %3631, %3629
  %3635 = fmul fast float %3634, %3365
  %3636 = fmul fast float %3634, %3366
  %3637 = fmul fast float %3634, %3367
  %3638 = fmul fast float %3632, %3388
  %3639 = fmul fast float %3632, %3389
  %3640 = fmul fast float %3632, %3390
  %3641 = fadd fast float %3638, %3635
  %3642 = fadd fast float %3639, %3636
  %3643 = fadd fast float %3640, %3637
  %3644 = fmul fast float %3633, %3394
  %3645 = fmul fast float %3633, %3395
  %3646 = fmul fast float %3633, %3396
  %3647 = fadd fast float %3641, %3644
  %3648 = fadd fast float %3642, %3645
  %3649 = fadd fast float %3643, %3646
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3648, float %3649, float %3647, float %3648, float %3649)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = call float @dx.op.unary.f32(i32 25, float %3650)  ; Rsqrt(value)
  %3652 = fmul fast float %3647, %3651
  %3653 = fmul fast float %3648, %3651
  %3654 = fmul fast float %3649, %3651
  %3655 = icmp ne i32 %3571, 0
  %3656 = select i1 %3655, float 1.000000e+00, float 0.000000e+00
  %3657 = fmul fast float %3561, %3656
  %3658 = and i32 %3415, 1
  %3659 = icmp eq i32 %3658, 0
  br i1 %3659, label %3660, label %3664

; <label>:3660                                    ; preds = %3569
  %3661 = fsub fast float %3652, %3348
  %3662 = fsub fast float %3653, %3349
  %3663 = fsub fast float %3654, %3350
  br label %3664

; <label>:3664                                    ; preds = %3660, %3569
  %3665 = phi float [ %3661, %3660 ], [ %3652, %3569 ]
  %3666 = phi float [ %3662, %3660 ], [ %3653, %3569 ]
  %3667 = phi float [ %3663, %3660 ], [ %3654, %3569 ]
  %3668 = fmul float %3667, %3657
  %3669 = fmul float %3666, %3657
  %3670 = fmul float %3665, %3657
  %3671 = fadd fast float %3670, %3348
  %3672 = fadd fast float %3669, %3349
  %3673 = fadd fast float %3668, %3350
  %3674 = icmp ne i32 %3570, 0
  %3675 = select i1 %3674, float 1.000000e+00, float 0.000000e+00
  %3676 = fmul fast float %3561, %3675
  %3677 = fsub fast float %3615, %3355
  %3678 = fsub fast float %3616, %3356
  %3679 = fsub fast float %3617, %3357
  %3680 = fmul fast float %3677, %3676
  %3681 = fmul fast float %3678, %3676
  %3682 = fmul fast float %3679, %3676
  %3683 = fadd fast float %3680, %3355
  %3684 = fadd fast float %3681, %3356
  %3685 = fadd fast float %3682, %3357
  %3686 = fsub fast float %3588, %3354
  %3687 = fmul fast float %3686, %3676
  %3688 = fadd fast float %3687, %3354
  %3689 = fmul fast float %3676, %3344
  %3690 = fsub fast float %3344, %3689
  %3691 = fmul fast float %3676, %3343
  %3692 = fsub fast float %3343, %3691
  %3693 = fadd fast float %3561, %3353
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = fsub fast float %3608, %3352
  %3696 = fmul fast float %3695, %3657
  %3697 = fadd fast float %3696, %3352
  %3698 = fsub fast float %3594, %3351
  %3699 = fmul fast float %3698, %3657
  %3700 = fadd fast float %3699, %3351
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3616, float %3617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.CBufRet.f32 %3702, 1
  %3705 = fmul fast float %3704, %3701
  %3706 = fadd fast float %3705, %3703
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3708 = bitcast float %3403 to i32
  %3709 = and i32 %3708, 65535
  %3710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3709)  ; LegacyF16ToF32(value)
  %3711 = lshr i32 %3708, 16
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = fcmp fast oge float %3710, 0.000000e+00
  %3714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3715 = extractvalue %dx.types.CBufRet.f32 %3714, 0
  %3716 = select i1 %3713, float %3710, float %3715
  %3717 = fadd fast float %3716, %3712
  %3718 = fsub fast float %3707, %3342
  %3719 = fmul fast float %3718, %3561
  %3720 = fadd fast float %3719, %3342
  %3721 = fmul fast float %3717, %3561
  %3722 = call float @dx.op.binary.f32(i32 35, float %3341, float %3721)  ; FMax(a,b)
  %3723 = and i32 %3415, 16
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3747, label %3725

; <label>:3725                                    ; preds = %3664
  %3726 = bitcast float %3409 to i32
  %3727 = add i32 %3406, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3728, %dx.types.Handle %3574, float %3502, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3507, float %3509, float undef, float %3511, float %3513, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3732 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3733 = and i32 %3726, 65535
  %3734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3733)  ; LegacyF16ToF32(value)
  %3735 = fmul fast float %3730, %3400
  %3736 = fmul fast float %3731, %3401
  %3737 = fmul fast float %3732, %3402
  %3738 = and i32 %3415, 16384
  %3739 = icmp ne i32 %3738, 0
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = select i1 %3739, float %3741, float 1.000000e+00
  %3743 = fmul fast float %3742, %3734
  %3744 = fmul fast float %3735, %3743
  %3745 = fmul fast float %3736, %3743
  %3746 = fmul fast float %3737, %3743
  br label %3747

; <label>:3747                                    ; preds = %3725, %3664
  %3748 = phi float [ %3744, %3725 ], [ 0.000000e+00, %3664 ]
  %3749 = phi float [ %3745, %3725 ], [ 0.000000e+00, %3664 ]
  %3750 = phi float [ %3746, %3725 ], [ 0.000000e+00, %3664 ]
  %3751 = fsub fast float %3748, %3345
  %3752 = fsub fast float %3749, %3346
  %3753 = fsub fast float %3750, %3347
  %3754 = fmul fast float %3751, %3561
  %3755 = fmul fast float %3752, %3561
  %3756 = fmul fast float %3753, %3561
  %3757 = fadd fast float %3754, %3345
  %3758 = fadd fast float %3755, %3346
  %3759 = fadd fast float %3756, %3347
  br label %3464

; <label>:3760                                    ; preds = %3464
  br label %3761

; <label>:3761                                    ; preds = %3760, %3284
  %3762 = phi float [ 0.000000e+00, %3284 ], [ %3465, %3760 ]
  %3763 = phi float [ %3164, %3284 ], [ %3466, %3760 ]
  %3764 = phi float [ %3162, %3284 ], [ %3467, %3760 ]
  %3765 = phi float [ 0.000000e+00, %3284 ], [ %3468, %3760 ]
  %3766 = phi float [ 0.000000e+00, %3284 ], [ %3469, %3760 ]
  %3767 = phi float [ %3251, %3284 ], [ %3470, %3760 ]
  %3768 = phi float [ %3252, %3284 ], [ %3471, %3760 ]
  %3769 = phi float [ %3253, %3284 ], [ %3472, %3760 ]
  %3770 = phi float [ %3279, %3284 ], [ %3473, %3760 ]
  %3771 = phi float [ %3280, %3284 ], [ %3474, %3760 ]
  %3772 = phi float [ %3281, %3284 ], [ %3475, %3760 ]
  %3773 = phi float [ %3161, %3284 ], [ %3476, %3760 ]
  %3774 = phi float [ %3160, %3284 ], [ %3477, %3760 ]
  %3775 = phi float [ 0.000000e+00, %3284 ], [ %3478, %3760 ]
  %3776 = phi float [ %3159, %3284 ], [ %3479, %3760 ]
  %3777 = phi float [ %3156, %3284 ], [ %3480, %3760 ]
  %3778 = phi float [ %3157, %3284 ], [ %3481, %3760 ]
  %3779 = phi float [ %3158, %3284 ], [ %3482, %3760 ]
  %3780 = call float @dx.op.dot3.f32(i32 55, float %3770, float %3771, float %3772, float %3770, float %3771, float %3772)  ; Dot3(ax,ay,az,bx,by,bz)
  %3781 = call float @dx.op.unary.f32(i32 25, float %3780)  ; Rsqrt(value)
  %3782 = fmul fast float %3781, %3770
  %3783 = fmul fast float %3781, %3771
  %3784 = fmul fast float %3781, %3772
  %3785 = fadd fast float %3775, %810
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3782, float %3783, float %3784, float %3782, float %3783, float %3784)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = call float @dx.op.unary.f32(i32 25, float %3787)  ; Rsqrt(value)
  %3789 = fmul fast float %3788, %3782
  %3790 = fmul fast float %3788, %3783
  %3791 = fmul fast float %3788, %3784
  br label %3792

; <label>:3792                                    ; preds = %3761, %3190
  %3793 = phi float [ %3789, %3761 ], [ %3279, %3190 ]
  %3794 = phi float [ %3790, %3761 ], [ %3280, %3190 ]
  %3795 = phi float [ %3791, %3761 ], [ %3281, %3190 ]
  %3796 = phi float [ %3777, %3761 ], [ %3156, %3190 ]
  %3797 = phi float [ %3778, %3761 ], [ %3157, %3190 ]
  %3798 = phi float [ %3779, %3761 ], [ %3158, %3190 ]
  %3799 = phi float [ %3767, %3761 ], [ %3251, %3190 ]
  %3800 = phi float [ %3768, %3761 ], [ %3252, %3190 ]
  %3801 = phi float [ %3769, %3761 ], [ %3253, %3190 ]
  %3802 = phi float [ %3776, %3761 ], [ %3159, %3190 ]
  %3803 = phi float [ %3786, %3761 ], [ %810, %3190 ]
  %3804 = phi float [ %3774, %3761 ], [ %3160, %3190 ]
  %3805 = phi float [ %3773, %3761 ], [ %3161, %3190 ]
  %3806 = phi float [ %3766, %3761 ], [ 0.000000e+00, %3190 ]
  %3807 = phi float [ %3765, %3761 ], [ 0.000000e+00, %3190 ]
  %3808 = phi float [ %3762, %3761 ], [ 0.000000e+00, %3190 ]
  %3809 = phi float [ %3763, %3761 ], [ %3164, %3190 ]
  %3810 = phi float [ %3764, %3761 ], [ %3162, %3190 ]
  %3811 = fadd fast float %3802, 0xBFB99999A0000000
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fmul fast float %3812, 0x3FF1C71C80000000
  %3814 = call float @dx.op.binary.f32(i32 36, float %3802, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3815 = fsub fast float 1.000000e+00, %3813
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3816, %3796
  %3818 = fmul fast float %3816, %3797
  %3819 = fmul fast float %3816, %3798
  %3820 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3821 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3822 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3823 = fmul fast float %3813, %3796
  %3824 = fmul fast float %3813, %3797
  %3825 = fmul fast float %3813, %3798
  %3826 = fadd fast float %3823, %3814
  %3827 = fadd fast float %3824, %3814
  %3828 = fadd fast float %3825, %3814
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3832 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.i32 %3833, 3
  %3835 = and i32 %3834, 8
  %3836 = icmp ne i32 %3835, 0
  %3837 = call float @dx.op.binary.f32(i32 35, float %3820, float %3796)  ; FMax(a,b)
  %3838 = call float @dx.op.binary.f32(i32 35, float %3821, float %3796)  ; FMax(a,b)
  %3839 = call float @dx.op.binary.f32(i32 35, float %3822, float %3796)  ; FMax(a,b)
  %3840 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3821, float %3822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3841 = select i1 %189, float %3796, float %3820
  %3842 = select i1 %189, float %3840, float %3821
  %3843 = select i1 %189, float 1.000000e+00, float %3822
  %3844 = select i1 %3836, float %3837, float %3841
  %3845 = select i1 %3836, float %3838, float %3842
  %3846 = select i1 %3836, float %3839, float %3843
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3851 = fadd fast float %3848, %147
  %3852 = fadd fast float %3849, %148
  %3853 = fadd fast float %3850, %149
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3857 = fsub fast float %3851, %3855
  %3858 = fsub fast float %3852, %3856
  %3859 = fmul fast float %3857, %3857
  %3860 = fmul fast float %3858, %3858
  %3861 = fadd fast float %3859, %3860
  %3862 = call float @dx.op.unary.f32(i32 24, float %3861)  ; Sqrt(value)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3864 = fcmp fast olt float %3862, %3863
  br i1 %3864, label %3865, label %3932

; <label>:3865                                    ; preds = %3792
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.f32 %3868, 0
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3873 = extractvalue %dx.types.CBufRet.f32 %3868, 1
  %3874 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3875 = extractvalue %dx.types.CBufRet.f32 %3866, 3
  %3876 = extractvalue %dx.types.CBufRet.f32 %3868, 3
  %3877 = extractvalue %dx.types.CBufRet.f32 %3870, 3
  %3878 = fadd fast float %3875, %3851
  %3879 = fadd fast float %3876, %3852
  %3880 = fadd fast float %3877, %3853
  %3881 = fmul fast float %3878, %3867
  %3882 = call float @dx.op.tertiary.f32(i32 46, float %3879, float %3869, float %3881)  ; FMad(a,b,c)
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3880, float %3871, float %3882)  ; FMad(a,b,c)
  %3884 = fmul fast float %3878, %3872
  %3885 = call float @dx.op.tertiary.f32(i32 46, float %3879, float %3873, float %3884)  ; FMad(a,b,c)
  %3886 = call float @dx.op.tertiary.f32(i32 46, float %3880, float %3874, float %3885)  ; FMad(a,b,c)
  %3887 = fsub fast float %3883, %3875
  %3888 = fsub fast float %3886, %3876
  %3889 = fsub fast float %3887, %3855
  %3890 = fadd fast float %3889, %3863
  %3891 = fsub fast float %3888, %3856
  %3892 = fadd fast float %3891, %3863
  %3893 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3894 = fmul fast float %3890, %3893
  %3895 = fmul fast float %3892, %3893
  %3896 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3897 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3898 = fsub fast float 1.000000e+00, %3896
  %3899 = fsub fast float 1.000000e+00, %3897
  %3900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %3898, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = fcmp fast ugt float %3901, 0.000000e+00
  br i1 %3902, label %3903, label %4206

; <label>:3903                                    ; preds = %3865
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3906 = fmul fast float %3905, %3901
  %3907 = extractvalue %dx.types.CBufRet.f32 %3904, 3
  %3908 = fadd fast float %3907, %3906
  %3909 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3910 = fadd fast float %3908, %3877
  %3911 = fmul fast float %3883, %3871
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3886, float %3874, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3909, float %3912)  ; FMad(a,b,c)
  %3914 = fsub fast float %3913, %3877
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3917 = fsub fast float %3914, %3916
  %3918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %3898, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %3898, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3926 = fadd fast float %3923, %3919
  %3927 = fmul fast float %3926, 0x3F847AE140000000
  %3928 = fadd fast float %3924, %3920
  %3929 = fmul fast float %3928, 0x3F847AE140000000
  %3930 = fadd fast float %3925, %3921
  %3931 = fmul fast float %3930, 0x3F847AE140000000
  br label %4206

; <label>:3932                                    ; preds = %3792
  %3933 = and i32 %165, 1
  %3934 = icmp eq i32 %3933, 0
  br i1 %3934, label %4206, label %3935

; <label>:3935                                    ; preds = %3932
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3944 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3945 = extractvalue %dx.types.CBufRet.f32 %3936, 3
  %3946 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3947 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3948 = fadd fast float %3945, %3851
  %3949 = fadd fast float %3946, %3852
  %3950 = fadd fast float %3947, %3853
  %3951 = fmul fast float %3948, %3937
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3949, float %3939, float %3951)  ; FMad(a,b,c)
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %3941, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3948, %3942
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3949, float %3943, float %3954)  ; FMad(a,b,c)
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %3944, float %3955)  ; FMad(a,b,c)
  %3957 = fsub fast float %3953, %3945
  %3958 = fsub fast float %3956, %3946
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.CBufRet.f32 %3959, 3
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.i32 %3966, 0
  %3968 = extractvalue %dx.types.CBufRet.i32 %3966, 1
  %3969 = udiv i32 %3968, %3967
  %3970 = fsub fast float %3957, %3960
  %3971 = fsub fast float %3958, %3961
  %3972 = call float @dx.op.binary.f32(i32 35, float %3970, float 0.000000e+00)  ; FMax(a,b)
  %3973 = call float @dx.op.binary.f32(i32 35, float %3971, float 0.000000e+00)  ; FMax(a,b)
  %3974 = call float @dx.op.binary.f32(i32 36, float %3972, float %3962)  ; FMin(a,b)
  %3975 = call float @dx.op.binary.f32(i32 36, float %3973, float %3963)  ; FMin(a,b)
  %3976 = add i32 %3967, -1
  %3977 = add i32 %3969, -1
  %3978 = fmul fast float %3974, %3965
  %3979 = fmul fast float %3975, %3965
  %3980 = fptoui float %3978 to i32
  %3981 = fptoui float %3979 to i32
  %3982 = call i32 @dx.op.binary.i32(i32 40, i32 %3980, i32 %3976)  ; UMin(a,b)
  %3983 = call i32 @dx.op.binary.i32(i32 40, i32 %3981, i32 %3977)  ; UMin(a,b)
  %3984 = mul i32 %3983, %3967
  %3985 = add i32 %3984, %3982
  %3986 = shl i32 %3985, 2
  %3987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.i32 %3987, 0
  %3989 = icmp eq i32 %3988, -1
  br i1 %3989, label %4206, label %3990

; <label>:3990                                    ; preds = %3935
  %3991 = mul i32 %3988, 148
  %3992 = add i32 %3991, 4
  %3993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = add i32 %3991, 8
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = add i32 %3991, 36
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = add i32 %3991, 60
  %4002 = add i32 %3991, 92
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4002, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = add i32 %3991, 116
  %4006 = fsub fast float %3957, %3994
  %4007 = fsub fast float %3958, %3997
  %4008 = fmul fast float %3965, %4006
  %4009 = fmul fast float %3965, %4007
  %4010 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4011 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4012 = fsub fast float 1.000000e+00, %4011
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4015 = call float @dx.op.unary.f32(i32 83, float %4010)  ; DerivCoarseX(value)
  %4016 = call float @dx.op.unary.f32(i32 83, float %4012)  ; DerivCoarseX(value)
  %4017 = call float @dx.op.unary.f32(i32 84, float %4010)  ; DerivCoarseY(value)
  %4018 = call float @dx.op.unary.f32(i32 84, float %4012)  ; DerivCoarseY(value)
  %4019 = fmul fast float %4015, %4014
  %4020 = fmul fast float %4016, %4014
  %4021 = fmul fast float %4017, %4014
  %4022 = fmul fast float %4018, %4014
  %4023 = call float @dx.op.dot2.f32(i32 54, float %4021, float %4022, float %4021, float %4022)  ; Dot2(ax,ay,bx,by)
  %4024 = call float @dx.op.dot2.f32(i32 54, float %4019, float %4020, float %4019, float %4020)  ; Dot2(ax,ay,bx,by)
  %4025 = call float @dx.op.binary.f32(i32 35, float %4024, float %4023)  ; FMax(a,b)
  %4026 = call float @dx.op.unary.f32(i32 23, float %4025)  ; Log(value)
  %4027 = fmul fast float %4026, 5.000000e-01
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4030 = fadd fast float %4029, %4027
  %4031 = call float @dx.op.binary.f32(i32 35, float %4030, float 0.000000e+00)  ; FMax(a,b)
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4034 = fadd fast float %4033, %4031
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4037 = fadd fast float %4034, %4036
  %4038 = add i32 %4004, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4039, i32 0)  ; GetDimensions(handle,mipLevel)
  %4041 = extractvalue %dx.types.Dimensions %4040, 0
  %4042 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4041)  ; FirstbitLo(value)
  %4043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.i32 %4043, 1
  %4045 = sub nsw i32 %4044, %4042
  %4046 = sitofp i32 %4045 to float
  %4047 = fsub fast float %4037, %4046
  %4048 = call float @dx.op.binary.f32(i32 35, float %4047, float 0.000000e+00)  ; FMax(a,b)
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4039, %dx.types.Handle %42, float %4010, float %4012, float %4000, float undef, i32 0, i32 0, i32 undef, float %4048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = fcmp ule float %4050, 0x3FE0101020000000
  %4052 = extractvalue %dx.types.CBufRet.i32 %4043, 0
  %4053 = and i32 %4052, 128
  %4054 = icmp ne i32 %4053, 0
  %4055 = and i1 %4051, %4054
  br i1 %4055, label %4206, label %4056

; <label>:4056                                    ; preds = %3990
  %4057 = add i32 %3991, 20
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = add i32 %3991, 24
  %4061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4060, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = add i32 %3991, 40
  %4064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4063, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = add i32 %3991, 96
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4071 = fmul fast float %4070, %4010
  %4072 = fmul fast float %4070, %4012
  %4073 = extractvalue %dx.types.CBufRet.f32 %4069, 3
  %4074 = fadd fast float %4071, %4073
  %4075 = fadd fast float %4072, %4073
  %4076 = add i32 %4068, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4077, i32 0)  ; GetDimensions(handle,mipLevel)
  %4079 = extractvalue %dx.types.Dimensions %4078, 0
  %4080 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4079)  ; FirstbitLo(value)
  %4081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.i32 %4081, 1
  %4083 = sub nsw i32 %4082, %4080
  %4084 = sitofp i32 %4083 to float
  %4085 = fsub fast float %4034, %4084
  %4086 = call float @dx.op.binary.f32(i32 35, float %4085, float 0.000000e+00)  ; FMax(a,b)
  %4087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4077, %dx.types.Handle %42, float %4074, float %4075, float %4065, float undef, i32 0, i32 0, i32 undef, float %4086)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = fmul fast float %4088, %4059
  %4090 = fadd fast float %4089, %4062
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4099 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4100 = fadd fast float %4096, %3957
  %4101 = fadd fast float %4098, %3958
  %4102 = fadd fast float %4090, %4099
  %4103 = fmul fast float %4100, %4092
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4093, float %4103)  ; FMad(a,b,c)
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4102, float %4094, float %4104)  ; FMad(a,b,c)
  %4106 = fsub fast float %4105, %4099
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4109 = fsub fast float %4106, %4108
  %4110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.i32 %4110, 0
  %4112 = call i32 @dx.op.binary.i32(i32 40, i32 %3988, i32 %4111)  ; UMin(a,b)
  %4113 = mul i32 %4112, 36
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = add i32 %4113, 4
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = fmul fast float %4118, %4010
  %4120 = fmul fast float %4118, %4012
  %4121 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4122 = fadd fast float %4119, %4121
  %4123 = fadd fast float %4120, %4121
  %4124 = icmp eq i32 %4115, 0
  br i1 %4124, label %4193, label %4125

; <label>:4125                                    ; preds = %4056
  br label %4126

; <label>:4126                                    ; preds = %4183, %4125
  %4127 = phi float [ %4184, %4183 ], [ 0.000000e+00, %4125 ]
  %4128 = phi float [ %4185, %4183 ], [ 0.000000e+00, %4125 ]
  %4129 = phi float [ %4186, %4183 ], [ 0.000000e+00, %4125 ]
  %4130 = phi float [ %4187, %4183 ], [ 0.000000e+00, %4125 ]
  %4131 = phi float [ %4188, %4183 ], [ 0.000000e+00, %4125 ]
  %4132 = phi float [ %4189, %4183 ], [ 0.000000e+00, %4125 ]
  %4133 = phi i32 [ %4190, %4183 ], [ 0, %4125 ]
  %4134 = shl i32 %4133, 2
  %4135 = add i32 %4001, %4134
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4005, %4134
  %4139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.i32 %4139, 0
  %4141 = add i32 %4140, 0
  %4142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4141, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4143 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4142, i32 0)  ; GetDimensions(handle,mipLevel)
  %4144 = extractvalue %dx.types.Dimensions %4143, 0
  %4145 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4144)  ; FirstbitLo(value)
  %4146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.i32 %4146, 1
  %4148 = sub nsw i32 %4147, %4145
  %4149 = sitofp i32 %4148 to float
  %4150 = fsub fast float %4034, %4149
  %4151 = call float @dx.op.binary.f32(i32 35, float %4150, float 0.000000e+00)  ; FMax(a,b)
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4142, %dx.types.Handle %42, float %4122, float %4123, float %4137, float undef, i32 0, i32 0, i32 undef, float %4151)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = fcmp fast ogt float %4153, 0.000000e+00
  br i1 %4154, label %4155, label %4183

; <label>:4155                                    ; preds = %4126
  %4156 = add i32 %4116, %4134
  %4157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.i32 %4157, 0
  %4159 = and i32 %4158, 32767
  %4160 = mul nuw nsw i32 %4159, 928
  %4161 = add nuw nsw i32 %4160, 48
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = extractvalue %dx.types.ResRet.f32 %4162, 1
  %4165 = extractvalue %dx.types.ResRet.f32 %4162, 2
  %4166 = add nuw nsw i32 %4160, 60
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = fmul fast float %4163, %4153
  %4172 = fmul fast float %4164, %4153
  %4173 = fmul fast float %4165, %4153
  %4174 = fadd fast float %4171, %4127
  %4175 = fadd fast float %4172, %4128
  %4176 = fadd fast float %4173, %4129
  %4177 = fmul fast float %4168, %4153
  %4178 = fmul fast float %4169, %4153
  %4179 = fmul fast float %4170, %4153
  %4180 = fadd fast float %4177, %4130
  %4181 = fadd fast float %4178, %4131
  %4182 = fadd fast float %4179, %4132
  br label %4183

; <label>:4183                                    ; preds = %4155, %4126
  %4184 = phi float [ %4174, %4155 ], [ %4127, %4126 ]
  %4185 = phi float [ %4175, %4155 ], [ %4128, %4126 ]
  %4186 = phi float [ %4176, %4155 ], [ %4129, %4126 ]
  %4187 = phi float [ %4180, %4155 ], [ %4130, %4126 ]
  %4188 = phi float [ %4181, %4155 ], [ %4131, %4126 ]
  %4189 = phi float [ %4182, %4155 ], [ %4132, %4126 ]
  %4190 = add nuw i32 %4133, 1
  %4191 = icmp eq i32 %4190, %4115
  br i1 %4191, label %4192, label %4126

; <label>:4192                                    ; preds = %4183
  br label %4193

; <label>:4193                                    ; preds = %4192, %4056
  %4194 = phi float [ 0.000000e+00, %4056 ], [ %4184, %4192 ]
  %4195 = phi float [ 0.000000e+00, %4056 ], [ %4185, %4192 ]
  %4196 = phi float [ 0.000000e+00, %4056 ], [ %4186, %4192 ]
  %4197 = phi float [ 0.000000e+00, %4056 ], [ %4187, %4192 ]
  %4198 = phi float [ 0.000000e+00, %4056 ], [ %4188, %4192 ]
  %4199 = phi float [ 0.000000e+00, %4056 ], [ %4189, %4192 ]
  %4200 = fadd fast float %4197, %4194
  %4201 = fmul fast float %4200, 0x3F847AE140000000
  %4202 = fadd fast float %4198, %4195
  %4203 = fmul fast float %4202, 0x3F847AE140000000
  %4204 = fadd fast float %4199, %4196
  %4205 = fmul fast float %4204, 0x3F847AE140000000
  br label %4206

; <label>:4206                                    ; preds = %4193, %3990, %3935, %3932, %3903, %3865
  %4207 = phi float [ %3917, %3903 ], [ -1.310720e+05, %3865 ], [ %4109, %4193 ], [ -1.310720e+05, %3935 ], [ -1.310720e+05, %3990 ], [ -1.310720e+05, %3932 ]
  %4208 = phi float [ %3927, %3903 ], [ 0.000000e+00, %3865 ], [ %4201, %4193 ], [ 0.000000e+00, %3935 ], [ 0.000000e+00, %3990 ], [ 0.000000e+00, %3932 ]
  %4209 = phi float [ %3929, %3903 ], [ 0.000000e+00, %3865 ], [ %4203, %4193 ], [ 0.000000e+00, %3935 ], [ 0.000000e+00, %3990 ], [ 0.000000e+00, %3932 ]
  %4210 = phi float [ %3931, %3903 ], [ 0.000000e+00, %3865 ], [ %4205, %4193 ], [ 0.000000e+00, %3935 ], [ 0.000000e+00, %3990 ], [ 0.000000e+00, %3932 ]
  %4211 = phi i1 [ true, %3903 ], [ false, %3865 ], [ true, %4193 ], [ false, %3935 ], [ false, %3990 ], [ false, %3932 ]
  %4212 = and i32 %165, 3
  %4213 = icmp eq i32 %4212, 1
  %4214 = select i1 %4213, float 1.000000e+00, float 0.000000e+00
  %4215 = fsub fast float %4207, %149
  %4216 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4217 = select i1 %4211, float %4216, float 1.000000e+00
  %4218 = fmul fast float %4217, %4214
  %4219 = icmp eq i32 %4212, 3
  %4220 = select i1 %4219, float 1.000000e+00, float %4218
  %4221 = call float @dx.op.binary.f32(i32 35, float %3808, float %4220)  ; FMax(a,b)
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = fcmp fast une float %4222, 0.000000e+00
  %4224 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = call float @dx.op.unary.f32(i32 25, float %4224)  ; Rsqrt(value)
  br i1 %4223, label %4233, label %4226

; <label>:4226                                    ; preds = %4206
  %4227 = fmul fast float %4225, %147
  %4228 = fmul fast float %4225, %148
  %4229 = fmul fast float %4225, %149
  %4230 = fsub fast float -0.000000e+00, %4227
  %4231 = fsub fast float -0.000000e+00, %4228
  %4232 = fsub fast float -0.000000e+00, %4229
  br label %4401

; <label>:4233                                    ; preds = %4206
  %4234 = fmul fast float %147, %4225
  %4235 = fsub fast float -0.000000e+00, %4234
  %4236 = fmul fast float %148, %4225
  %4237 = fsub fast float -0.000000e+00, %4236
  %4238 = fmul fast float %149, %4225
  %4239 = fsub fast float -0.000000e+00, %4238
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4237, float %4239, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = fmul fast float %4222, 2.500000e+00
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = fmul fast float %4222, 0x4013FFFFE0000000
  %4244 = fadd fast float %4243, 0xBFFFFFFFE0000000
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = fmul fast float %4222, 0x4004000020000000
  %4247 = fadd fast float %4246, 0xBFF8000040000000
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4250 = fmul fast float %3811, 1.000000e+01
  %4251 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4252 = fmul fast float %4251, 2.000000e+00
  %4253 = fsub fast float 3.000000e+00, %4252
  %4254 = fmul fast float %4251, %4251
  %4255 = fmul fast float %4254, %4253
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fsub fast float 0x3FE3333340000000, %3832
  %4258 = fmul fast float %4257, 0x400AAAAAA0000000
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = fmul fast float %4256, %4259
  %4261 = fmul fast float %3844, 0x3FEA2B8620000000
  %4262 = fmul fast float %3845, 0x3FEA2B8620000000
  %4263 = fmul fast float %3846, 0x3FEA2B8620000000
  %4264 = fadd fast float %4261, 0x3FC81DFBA0000000
  %4265 = fmul fast float %4264, %3844
  %4266 = fadd fast float %4265, 0x3F910E6020000000
  %4267 = fadd fast float %4262, 0x3FC81DFBA0000000
  %4268 = fmul fast float %4267, %3845
  %4269 = fadd fast float %4268, 0x3F910E6020000000
  %4270 = fadd fast float %4263, 0x3FC81DFBA0000000
  %4271 = fmul fast float %4270, %3846
  %4272 = fadd fast float %4271, 0x3F910E6020000000
  %4273 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = fsub fast float %4273, %3844
  %4277 = fsub fast float %4274, %3845
  %4278 = fsub fast float %4275, %3846
  %4279 = fmul fast float %4276, %4249
  %4280 = fmul fast float %4279, %4260
  %4281 = fmul fast float %4277, %4249
  %4282 = fmul fast float %4281, %4260
  %4283 = fmul fast float %4278, %4249
  %4284 = fmul fast float %4283, %4260
  %4285 = fadd fast float %4280, %3844
  %4286 = fadd fast float %4282, %3845
  %4287 = fadd fast float %4284, %3846
  %4288 = fmul fast float %3805, %3805
  %4289 = fmul fast float %4288, %4288
  %4290 = fadd fast float %4245, 1.000000e+00
  %4291 = fsub fast float %4290, %4260
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = fsub fast float 1.000000e+00, %4289
  %4296 = call float @dx.op.binary.f32(i32 36, float %4292, float %4295)  ; FMin(a,b)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4296, float %4297)  ; FMax(a,b)
  %4299 = fadd fast float %4294, 0xBFE4CCCCC0000000
  %4300 = fmul fast float %4299, 0x4006DB6DA0000000
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = fmul fast float %4301, 2.000000e+00
  %4303 = fsub fast float 3.000000e+00, %4302
  %4304 = bitcast float %3829 to i32
  %4305 = ashr i32 %4304, 1
  %4306 = add nsw i32 %4305, 532487669
  %4307 = bitcast i32 %4306 to float
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = bitcast float %4308 to i32
  %4310 = sub nsw i32 2129859010, %4309
  %4311 = bitcast i32 %4310 to float
  %4312 = fmul fast float %4311, 2.000000e+00
  %4313 = bitcast float %3830 to i32
  %4314 = ashr i32 %4313, 1
  %4315 = add nsw i32 %4314, 532487669
  %4316 = bitcast i32 %4315 to float
  %4317 = fsub fast float 1.000000e+00, %4316
  %4318 = bitcast float %4317 to i32
  %4319 = sub nsw i32 2129859010, %4318
  %4320 = bitcast i32 %4319 to float
  %4321 = fmul fast float %4320, 2.000000e+00
  %4322 = bitcast float %3831 to i32
  %4323 = ashr i32 %4322, 1
  %4324 = add nsw i32 %4323, 532487669
  %4325 = bitcast i32 %4324 to float
  %4326 = fsub fast float 1.000000e+00, %4325
  %4327 = bitcast float %4326 to i32
  %4328 = sub nsw i32 2129859010, %4327
  %4329 = bitcast i32 %4328 to float
  %4330 = fmul fast float %4329, 2.000000e+00
  %4331 = fsub fast float 0x4002A9FBE0000000, %4312
  %4332 = fadd fast float %4312, 0x3FD54FDF00000000
  %4333 = bitcast float %4332 to i32
  %4334 = sub nsw i32 2129859010, %4333
  %4335 = bitcast i32 %4334 to float
  %4336 = fmul fast float %4335, %4331
  %4337 = fmul fast float %4336, %4336
  %4338 = fsub fast float 0x4002A9FBE0000000, %4321
  %4339 = fadd fast float %4321, 0x3FD54FDF00000000
  %4340 = bitcast float %4339 to i32
  %4341 = sub nsw i32 2129859010, %4340
  %4342 = bitcast i32 %4341 to float
  %4343 = fmul fast float %4342, %4338
  %4344 = fmul fast float %4343, %4343
  %4345 = fsub fast float 0x4002A9FBE0000000, %4330
  %4346 = fadd fast float %4330, 0x3FD54FDF00000000
  %4347 = bitcast float %4346 to i32
  %4348 = sub nsw i32 2129859010, %4347
  %4349 = bitcast i32 %4348 to float
  %4350 = fmul fast float %4349, %4345
  %4351 = fmul fast float %4350, %4350
  %4352 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4337)  ; FMax(a,b)
  %4353 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4344)  ; FMax(a,b)
  %4354 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4351)  ; FMax(a,b)
  %4355 = fsub fast float 1.000000e+00, %4240
  %4356 = fadd fast float %4355, %4256
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fsub fast float 1.000000e+00, %4220
  %4359 = fmul fast float %4298, %4358
  %4360 = fmul fast float %4301, %4301
  %4361 = fmul fast float %4360, %4359
  %4362 = fmul fast float %4361, %4303
  %4363 = fmul fast float %4358, 0xBFE99999A0000000
  %4364 = fmul fast float %4363, %4249
  %4365 = fmul fast float %4364, %4260
  %4366 = fadd fast float %4365, 1.000000e+00
  %4367 = fadd fast float %3832, -1.000000e+00
  %4368 = fmul fast float %4366, %4367
  %4369 = fadd fast float %4368, 1.000000e+00
  %4370 = fsub fast float %4352, %3829
  %4371 = fsub fast float %4353, %3830
  %4372 = fsub fast float %4354, %3831
  %4373 = fmul fast float %4362, %4370
  %4374 = fmul fast float %4362, %4371
  %4375 = fmul fast float %4362, %4372
  %4376 = fadd fast float %4373, %3829
  %4377 = fadd fast float %4374, %3830
  %4378 = fadd fast float %4375, %3831
  %4379 = fsub fast float %91, %3793
  %4380 = fsub fast float %92, %3794
  %4381 = fsub fast float %93, %3795
  %4382 = fmul fast float %4362, %4379
  %4383 = fmul fast float %4362, %4380
  %4384 = fmul fast float %4362, %4381
  %4385 = fadd fast float %4382, %3793
  %4386 = fadd fast float %4383, %3794
  %4387 = fadd fast float %4384, %3795
  %4388 = fmul fast float %4362, %4357
  %4389 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4390 = fsub fast float 1.000000e+00, %4389
  %4391 = fmul fast float %4388, %4390
  %4392 = fadd fast float %4391, %4389
  %4393 = fsub fast float 1.000000e+00, %3805
  %4394 = fmul fast float %4362, %4393
  %4395 = fadd fast float %4394, %3805
  %4396 = call float @dx.op.dot3.f32(i32 55, float %4385, float %4386, float %4387, float %4385, float %4386, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4397 = call float @dx.op.unary.f32(i32 25, float %4396)  ; Rsqrt(value)
  %4398 = fmul fast float %4385, %4397
  %4399 = fmul fast float %4386, %4397
  %4400 = fmul fast float %4387, %4397
  br label %4401

; <label>:4401                                    ; preds = %4233, %4226
  %4402 = phi float [ %4232, %4226 ], [ %4239, %4233 ]
  %4403 = phi float [ %4231, %4226 ], [ %4237, %4233 ]
  %4404 = phi float [ %4230, %4226 ], [ %4235, %4233 ]
  %4405 = phi float [ %4229, %4226 ], [ %4238, %4233 ]
  %4406 = phi float [ %4228, %4226 ], [ %4236, %4233 ]
  %4407 = phi float [ %4227, %4226 ], [ %4234, %4233 ]
  %4408 = phi float [ %3829, %4226 ], [ %4376, %4233 ]
  %4409 = phi float [ %3830, %4226 ], [ %4377, %4233 ]
  %4410 = phi float [ %3831, %4226 ], [ %4378, %4233 ]
  %4411 = phi float [ %3844, %4226 ], [ %4285, %4233 ]
  %4412 = phi float [ %3845, %4226 ], [ %4286, %4233 ]
  %4413 = phi float [ %3846, %4226 ], [ %4287, %4233 ]
  %4414 = phi float [ %3793, %4226 ], [ %4398, %4233 ]
  %4415 = phi float [ %3794, %4226 ], [ %4399, %4233 ]
  %4416 = phi float [ %3795, %4226 ], [ %4400, %4233 ]
  %4417 = phi float [ %3832, %4226 ], [ %4392, %4233 ]
  %4418 = phi float [ %3805, %4226 ], [ %4395, %4233 ]
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4421 = extractvalue %dx.types.CBufRet.f32 %4419, 3
  %4422 = fmul fast float %4420, %84
  %4423 = fmul fast float %4421, %85
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = fmul fast float %4428, %4426
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fadd fast float %4430, -1.000000e+00
  %4432 = fmul fast float %4431, %4425
  %4433 = fadd fast float %4432, 1.000000e+00
  %4434 = select i1 %189, float 0.000000e+00, float %4410
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %4404, float %4403, float %4402)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4406, float %4405, float %4414, float %4415, float %4416)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = fmul fast float %4437, 2.000000e+00
  %4439 = fmul fast float %4438, %4414
  %4440 = fmul fast float %4438, %4415
  %4441 = fmul fast float %4438, %4416
  %4442 = fsub fast float %4407, %4439
  %4443 = fsub fast float %4406, %4440
  %4444 = fsub fast float %4405, %4441
  %4445 = call float @dx.op.binary.f32(i32 36, float %4418, float %4433)  ; FMin(a,b)
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = bitcast float %4446 to i32
  %4448 = ashr i32 %4447, 1
  %4449 = add nsw i32 %4448, 532487669
  %4450 = bitcast i32 %4449 to float
  %4451 = fsub fast float 1.000000e+00, %4417
  %4452 = call float @dx.op.binary.f32(i32 35, float %4451, float 0x3F847AE140000000)  ; FMax(a,b)
  %4453 = fmul fast float %4452, %4452
  %4454 = fmul fast float %4453, %4453
  %4455 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %4450, float %4454, float %4455, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4457 = extractvalue %dx.types.ResRet.f32 %4456, 0
  %4458 = fsub fast float 1.000000e+00, %4418
  %4459 = bitcast float %4458 to i32
  %4460 = sub nsw i32 2129859010, %4459
  %4461 = fsub fast float 1.000000e+00, %61
  %4462 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.binary.f32(i32 35, float %4462, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4464 = fdiv fast float %4461, %4463
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4466, 5.000000e-01
  %4468 = fadd fast float %4467, 5.000000e-01
  %4469 = fmul fast float %4468, %61
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4471, %4464
  %4473 = fadd fast float %4469, %4472
  %4474 = fsub fast float 5.000000e-01, %4467
  %4475 = fmul fast float %4474, %4411
  %4476 = fmul fast float %4474, %4412
  %4477 = fmul fast float %4474, %4413
  %4478 = fadd fast float %4473, %4475
  %4479 = fadd fast float %4473, %4476
  %4480 = fadd fast float %4473, %4477
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, 5.000000e-01
  %4484 = fadd fast float %4483, 5.000000e-01
  %4485 = fmul fast float %4484, %61
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, %4464
  %4489 = fadd fast float %4485, %4488
  %4490 = fsub fast float 5.000000e-01, %4483
  %4491 = fmul fast float %4490, %4411
  %4492 = fmul fast float %4490, %4412
  %4493 = fmul fast float %4490, %4413
  %4494 = fadd fast float %4489, %4491
  %4495 = fadd fast float %4489, %4492
  %4496 = fadd fast float %4489, %4493
  %4497 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = call float @dx.op.binary.f32(i32 36, float %4411, float %4499)  ; FMin(a,b)
  %4501 = fmul fast float %4500, %4446
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = bitcast float %4502 to i32
  %4504 = sub nsw i32 2129859010, %4503
  %4505 = bitcast i32 %4504 to float
  %4506 = call float @dx.op.binary.f32(i32 36, float %4412, float %4499)  ; FMin(a,b)
  %4507 = fmul fast float %4506, %4446
  %4508 = fsub fast float 1.000000e+00, %4507
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = call float @dx.op.binary.f32(i32 36, float %4413, float %4499)  ; FMin(a,b)
  %4513 = fmul fast float %4512, %4446
  %4514 = fsub fast float 1.000000e+00, %4513
  %4515 = bitcast float %4514 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4445, %62
  %4519 = fmul fast float %4518, %4478
  %4520 = fmul fast float %4519, %4505
  %4521 = fmul fast float %4445, %63
  %4522 = fmul fast float %4521, %4479
  %4523 = fmul fast float %4522, %4511
  %4524 = fmul fast float %4445, %64
  %4525 = fmul fast float %4524, %4480
  %4526 = fmul fast float %4525, %4517
  %4527 = call float @dx.op.binary.f32(i32 36, float %4408, float %4499)  ; FMin(a,b)
  %4528 = fmul fast float %4527, %4446
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = call float @dx.op.binary.f32(i32 36, float %4409, float %4499)  ; FMin(a,b)
  %4534 = fmul fast float %4533, %4446
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = bitcast float %4535 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = call float @dx.op.binary.f32(i32 36, float %4434, float %4499)  ; FMin(a,b)
  %4540 = fmul fast float %4539, %4446
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4518, %4494
  %4546 = fmul fast float %4545, %4532
  %4547 = fmul fast float %4521, %4495
  %4548 = fmul fast float %4547, %4538
  %4549 = fmul fast float %4524, %4496
  %4550 = fmul fast float %4549, %4544
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4520, float %4523, float %4526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = select i1 %189, float 0.000000e+00, float %4520
  %4553 = select i1 %189, float %4551, float %4523
  %4554 = select i1 %189, float 0.000000e+00, float %4526
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4548, float %4550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = select i1 %189, float 0.000000e+00, float %4546
  %4557 = select i1 %189, float %4555, float %4548
  %4558 = select i1 %189, float 0.000000e+00, float %4550
  %4559 = fmul fast float %4436, 9.843750e-01
  %4560 = fmul fast float %4417, 9.843750e-01
  %4561 = fadd fast float %4559, 7.812500e-03
  %4562 = fadd fast float %4560, 7.812500e-03
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4566 = fmul fast float %4564, %4408
  %4567 = fmul fast float %4564, %4409
  %4568 = fmul fast float %4564, %4434
  %4569 = fadd fast float %4566, %4565
  %4570 = fadd fast float %4567, %4565
  %4571 = fadd fast float %4568, %4565
  %4572 = fcmp fast ogt float %3806, 0.000000e+00
  br i1 %4572, label %4573, label %4599

; <label>:4573                                    ; preds = %4401
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3806, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = fadd fast float %4575, -5.000000e-01
  %4579 = fadd fast float %4576, -5.000000e-01
  %4580 = fadd fast float %4577, -5.000000e-01
  %4581 = fsub fast float 1.000000e+00, %4408
  %4582 = fsub fast float 1.000000e+00, %4409
  %4583 = fsub fast float 1.000000e+00, %4434
  %4584 = fmul fast float %4408, 4.000000e+00
  %4585 = fmul fast float %4584, %4581
  %4586 = fmul fast float %4585, %4578
  %4587 = fmul fast float %4409, 4.000000e+00
  %4588 = fmul fast float %4587, %4582
  %4589 = fmul fast float %4588, %4579
  %4590 = fmul fast float %4434, 4.000000e+00
  %4591 = fmul fast float %4590, %4583
  %4592 = fmul fast float %4591, %4580
  %4593 = fadd fast float %4586, %4569
  %4594 = fadd fast float %4589, %4570
  %4595 = fadd fast float %4592, %4571
  %4596 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4597 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  br label %4599

; <label>:4599                                    ; preds = %4573, %4401
  %4600 = phi float [ %4596, %4573 ], [ %4569, %4401 ]
  %4601 = phi float [ %4597, %4573 ], [ %4570, %4401 ]
  %4602 = phi float [ %4598, %4573 ], [ %4571, %4401 ]
  %4603 = call float @dx.op.binary.f32(i32 35, float %4601, float %4602)  ; FMax(a,b)
  %4604 = call float @dx.op.binary.f32(i32 35, float %4600, float %4603)  ; FMax(a,b)
  %4605 = fsub fast float 1.000000e+00, %4604
  %4606 = fmul fast float %4604, %4417
  %4607 = fadd fast float %4606, %4417
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4613 = fmul fast float %4607, %4609
  %4614 = fadd fast float %4613, %4610
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = fmul fast float %4611, %4607
  %4617 = fadd fast float %4616, %4612
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = fsub fast float 1.000000e+00, %4457
  %4620 = fadd fast float %4619, %4618
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fcmp fast olt float %4621, 1.000000e+00
  br i1 %4622, label %4623, label %5478

; <label>:4623                                    ; preds = %4599
  %4624 = fcmp fast olt float %4615, 1.000000e+00
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = fcmp fast ogt float %4626, 0.000000e+00
  %4628 = or i1 %4624, %4627
  %4629 = or i1 %4624, %4627
  %4630 = xor i1 %4629, true
  %4631 = zext i1 %4630 to i32
  br i1 %4628, label %4632, label %4875

; <label>:4632                                    ; preds = %4623
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4633, 2
  %4637 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4642 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4647 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.CBufRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.CBufRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4661, float %4442, float %4443, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 6, float %4664)  ; FAbs(value)
  %4666 = fmul fast float %4665, 8.000000e+00
  %4667 = fadd fast float %4666, -6.000000e+00
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fmul fast float %4663, 8.000000e+00
  %4670 = fmul fast float %4669, %4626
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fcmp fast ogt float %4671, 0.000000e+00
  br i1 %4672, label %4673, label %4850, !dx.controlflow.hints !88

; <label>:4673                                    ; preds = %4632
  %4674 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4675 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4676 = fsub fast float %4674, %4675
  %4677 = fmul fast float %4676, %4417
  %4678 = fadd fast float %4677, %4675
  %4679 = fmul fast float %202, 2.000000e+00
  %4680 = fmul fast float %203, 2.000000e+00
  %4681 = fadd fast float %4679, -1.000000e+00
  %4682 = fadd fast float %4680, -1.000000e+00
  %4683 = fmul fast float %4678, %4681
  %4684 = fmul fast float %4678, %4682
  %4685 = fadd fast float %4683, %84
  %4686 = fadd fast float %4684, %85
  %4687 = fmul fast float %4685, %4420
  %4688 = fmul fast float %4686, %4421
  %4689 = fadd fast float %4417, 0xBFE3333340000000
  %4690 = fmul fast float %4689, 0x4004000020000000
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, 3.000000e+00
  %4694 = fadd fast float %4693, %202
  %4695 = call float @dx.op.unary.f32(i32 27, float %4694)  ; Round_ni(value)
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4687, float %4688, float %4695, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = fcmp fast une float %4697, 0xFFF0000000000000
  %4699 = fcmp fast une float %4697, 0x7FF0000000000000
  %4700 = and i1 %4698, %4699
  %4701 = fcmp fast olt float %4697, 0.000000e+00
  %4702 = call float @dx.op.unary.f32(i32 6, float %4697)  ; FAbs(value)
  %4703 = fsub fast float 1.000000e+00, %4702
  %4704 = select i1 %4700, float 1.000000e+00, float 0.000000e+00
  %4705 = fmul fast float %4704, %4671
  %4706 = fcmp fast ogt float %4705, 0.000000e+00
  br i1 %4706, label %4707, label %4850, !dx.controlflow.hints !89

; <label>:4707                                    ; preds = %4673
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4712 = select i1 %4701, float 0.000000e+00, float %4709
  %4713 = select i1 %4701, float 0.000000e+00, float %4710
  %4714 = select i1 %4701, float 0.000000e+00, float %4711
  %4715 = select i1 %4701, float %4634, float %4649
  %4716 = select i1 %4701, float %4639, float %4654
  %4717 = select i1 %4701, float %4644, float %4659
  %4718 = select i1 %4701, float %4635, float %4650
  %4719 = select i1 %4701, float %4640, float %4655
  %4720 = select i1 %4701, float %4645, float %4660
  %4721 = select i1 %4701, float %4636, float %4651
  %4722 = select i1 %4701, float %4641, float %4656
  %4723 = select i1 %4701, float %4646, float %4661
  %4724 = select i1 %4701, float %4637, float %4652
  %4725 = select i1 %4701, float %4642, float %4657
  %4726 = select i1 %4701, float %4647, float %4662
  %4727 = fadd fast float %4712, %147
  %4728 = fadd fast float %4713, %148
  %4729 = fadd fast float %4714, %149
  %4730 = fmul fast float %4727, %4715
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4718, float %4730)  ; FMad(a,b,c)
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4721, float %4731)  ; FMad(a,b,c)
  %4733 = fadd fast float %4732, %4724
  %4734 = fmul fast float %4727, %4716
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4719, float %4734)  ; FMad(a,b,c)
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4722, float %4735)  ; FMad(a,b,c)
  %4737 = fadd fast float %4736, %4725
  %4738 = fmul fast float %4727, %4717
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4720, float %4738)  ; FMad(a,b,c)
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4723, float %4739)  ; FMad(a,b,c)
  %4741 = fadd fast float %4740, %4726
  %4742 = fdiv fast float 1.000000e+00, %4741
  %4743 = fmul fast float %4742, %4733
  %4744 = fmul fast float %4742, %4737
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4748 = fmul fast float %4743, %4746
  %4749 = fmul fast float %4744, %4747
  %4750 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4751 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4752 = fadd fast float %4748, %4750
  %4753 = fadd fast float %4749, %4751
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 3
  %4756 = fmul fast float %4755, %4442
  %4757 = fmul fast float %4755, %4443
  %4758 = fmul fast float %4755, %4444
  %4759 = fadd fast float %4756, %4727
  %4760 = fadd fast float %4757, %4728
  %4761 = fadd fast float %4758, %4729
  %4762 = fmul fast float %4759, %4715
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %4760, float %4718, float %4762)  ; FMad(a,b,c)
  %4764 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4721, float %4763)  ; FMad(a,b,c)
  %4765 = fadd fast float %4764, %4724
  %4766 = fmul fast float %4759, %4716
  %4767 = call float @dx.op.tertiary.f32(i32 46, float %4760, float %4719, float %4766)  ; FMad(a,b,c)
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4722, float %4767)  ; FMad(a,b,c)
  %4769 = fadd fast float %4768, %4725
  %4770 = fmul fast float %4759, %4717
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4760, float %4720, float %4770)  ; FMad(a,b,c)
  %4772 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4723, float %4771)  ; FMad(a,b,c)
  %4773 = fadd fast float %4772, %4726
  %4774 = fdiv fast float 1.000000e+00, %4773
  %4775 = fmul fast float %4774, %4765
  %4776 = fmul fast float %4774, %4769
  %4777 = fmul fast float %4752, 2.000000e+00
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = call float @dx.op.unary.f32(i32 6, float %4778)  ; FAbs(value)
  %4780 = fmul fast float %4779, 5.000000e+00
  %4781 = fadd fast float %4780, -4.000000e+00
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4782, %4668
  %4784 = fsub fast float %4743, %4775
  %4785 = fmul fast float %4746, %4784
  %4786 = fmul fast float %4783, %4785
  %4787 = fsub fast float %4775, %4743
  %4788 = fmul fast float %4746, %4787
  %4789 = fadd fast float %4788, %4786
  %4790 = fsub fast float %4776, %4744
  %4791 = fmul fast float %4747, %4790
  %4792 = fmul fast float %4789, %4703
  %4793 = fmul fast float %4791, %4703
  %4794 = fadd fast float %4792, %4752
  %4795 = fadd fast float %4793, %4753
  %4796 = fsub fast float %4774, %4742
  %4797 = fmul fast float %4796, %4703
  %4798 = fadd fast float %4797, %4742
  %4799 = fdiv fast float 1.000000e+00, %4798
  %4800 = fadd fast float %4417, -1.000000e+00
  %4801 = fsub fast float %4799, %4741
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4804 = fmul fast float %4803, %4799
  %4805 = fdiv fast float 1.600000e+02, %4804
  %4806 = fmul fast float %4800, %4800
  %4807 = fmul fast float %4806, 0xBFB5B17960000000
  %4808 = fmul fast float %4807, %4801
  %4809 = fmul fast float %4808, %4805
  %4810 = call float @dx.op.unary.f32(i32 21, float %4809)  ; Exp(value)
  %4811 = fmul fast float %4810, 0x3FF04B2960000000
  %4812 = fsub fast float 0x3FF04B2960000000, %4811
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fmul fast float %4813, 4.000000e+00
  %4815 = fadd fast float %202, -5.000000e-01
  %4816 = fadd fast float %203, -5.000000e-01
  %4817 = fmul fast float %4813, 0x3FBEB851E0000000
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4818, %4815
  %4820 = fmul fast float %4818, %4816
  %4821 = fadd fast float %4794, %4819
  %4822 = fadd fast float %4795, %4820
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %4821, float %4822, float undef, float undef, i32 0, i32 0, i32 undef, float %4814)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4829 = fmul fast float %4828, %4824
  %4830 = fmul fast float %4828, %4825
  %4831 = fmul fast float %4828, %4826
  %4832 = select i1 %189, float 0.000000e+00, float %4830
  %4833 = select i1 %189, float 0.000000e+00, float %4831
  %4834 = fmul fast float %4821, 2.000000e+00
  %4835 = fmul fast float %4822, 2.000000e+00
  %4836 = fadd fast float %4834, -1.000000e+00
  %4837 = fadd fast float %4835, -1.000000e+00
  %4838 = fmul fast float %4836, %4836
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = fmul fast float %4841, %4668
  %4843 = fadd fast float %4842, %4840
  %4844 = fmul fast float %4837, %4837
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fmul fast float %4843, %4846
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = fmul fast float %4848, %4705
  br label %4850

; <label>:4850                                    ; preds = %4707, %4673, %4632
  %4851 = phi float [ %4829, %4707 ], [ 0.000000e+00, %4673 ], [ 0.000000e+00, %4632 ]
  %4852 = phi float [ %4832, %4707 ], [ 0.000000e+00, %4673 ], [ 0.000000e+00, %4632 ]
  %4853 = phi float [ %4833, %4707 ], [ 0.000000e+00, %4673 ], [ 0.000000e+00, %4632 ]
  %4854 = phi float [ %4849, %4707 ], [ 0.000000e+00, %4673 ], [ 0.000000e+00, %4632 ]
  %4855 = fcmp fast olt float %4854, 1.000000e+00
  %4856 = or i1 %4855, %4630
  %4857 = zext i1 %4856 to i32
  %4858 = fmul fast float %4854, %4615
  %4859 = fsub fast float %4854, %4858
  %4860 = fsub fast float 1.000000e+00, %4621
  %4861 = fmul fast float %4859, %4860
  %4862 = fadd fast float %4861, %4621
  %4863 = fsub fast float %4862, %4859
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fmul fast float %4864, %4556
  %4866 = fmul fast float %4864, %4557
  %4867 = fmul fast float %4864, %4558
  %4868 = fsub fast float -0.000000e+00, %4862
  %4869 = fmul fast float %4859, %4851
  %4870 = fmul fast float %4859, %4852
  %4871 = fmul fast float %4859, %4853
  %4872 = fadd fast float %4869, %4865
  %4873 = fadd fast float %4870, %4866
  %4874 = fadd fast float %4871, %4867
  br label %4875

; <label>:4875                                    ; preds = %4850, %4623
  %4876 = phi float [ %4621, %4623 ], [ %4868, %4850 ]
  %4877 = phi float [ %4556, %4623 ], [ %4872, %4850 ]
  %4878 = phi float [ %4557, %4623 ], [ %4873, %4850 ]
  %4879 = phi float [ %4558, %4623 ], [ %4874, %4850 ]
  %4880 = phi i32 [ %4631, %4623 ], [ %4857, %4850 ]
  %4881 = icmp eq i32 %4880, 0
  br i1 %4881, label %5478, label %4882

; <label>:4882                                    ; preds = %4875
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4883, 3
  %4886 = fmul fast float %4884, %84
  %4887 = fmul fast float %4885, %85
  %4888 = fptoui float %4886 to i32
  %4889 = fptoui float %4887 to i32
  %4890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.CBufRet.f32 %4890, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4890, 3
  %4894 = fadd fast float %79, -4.000000e+00
  %4895 = call float @dx.op.binary.f32(i32 35, float %4894, float 0.000000e+00)  ; FMax(a,b)
  %4896 = fadd fast float %4895, %4891
  %4897 = fmul fast float %4896, %4892
  %4898 = call float @dx.op.unary.f32(i32 23, float %4897)  ; Log(value)
  %4899 = fmul fast float %4898, %4893
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 2
  %4902 = fmul fast float %4899, %4901
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.i32 %4904, 1
  %4906 = add i32 %4905, -1
  %4907 = uitofp i32 %4905 to float
  %4908 = fmul fast float %4907, %4903
  %4909 = fptoui float %4908 to i32
  %4910 = call i32 @dx.op.binary.i32(i32 40, i32 %4909, i32 %4906)  ; UMin(a,b)
  %4911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.i32 %4911, 2
  %4913 = extractvalue %dx.types.CBufRet.i32 %4911, 3
  %4914 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4889, i32 %4912, i32 %4888)  ; UMad(a,b,c)
  %4915 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4910, i32 %4913, i32 %4914)  ; UMad(a,b,c)
  %4916 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %4917 = fptoui float %4916 to i32
  %4918 = lshr i32 %4917, 5
  %4919 = call i32 @dx.op.binary.i32(i32 40, i32 %4918, i32 8191)  ; UMin(a,b)
  %4920 = fcmp fast ogt float %4216, 0.000000e+00
  %4921 = fcmp fast ogt float %4444, 0.000000e+00
  %4922 = and i1 %4921, %4920
  br i1 %4922, label %4923, label %4952

; <label>:4923                                    ; preds = %4882
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4924, float -1.000000e+00)  ; FMax(a,b)
  %4926 = call float @dx.op.binary.f32(i32 36, float %4925, float 1.000000e+00)  ; FMin(a,b)
  %4927 = fmul fast float %4926, %4926
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = fmul fast float %4928, 0x3FFC6E2300000000
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = fcmp fast ogt float %4930, 0.000000e+00
  %4932 = call float @dx.op.unary.f32(i32 24, float %4930)  ; Sqrt(value)
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = call float @dx.op.unary.f32(i32 23, float %4933)  ; Log(value)
  %4935 = fmul fast float %4934, 5.000000e+00
  %4936 = call float @dx.op.unary.f32(i32 21, float %4935)  ; Exp(value)
  %4937 = fmul fast float %4936, 0x3FEF591A60000000
  %4938 = fadd fast float %4937, 0x3F94DCB540000000
  %4939 = select i1 %4931, float %4938, float 1.000000e+00
  %4940 = fcmp fast oge float %4939, 1.000000e+00
  %4941 = fmul fast float %4924, 2.000000e+00
  %4942 = fadd fast float %4941, %4444
  %4943 = select i1 %4940, float %4942, float %4444
  %4944 = fsub fast float %4943, %4444
  %4945 = fmul fast float %4944, %4216
  %4946 = fadd fast float %4945, %4444
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4946, float %4442, float %4443, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call float @dx.op.unary.f32(i32 25, float %4947)  ; Rsqrt(value)
  %4949 = fmul fast float %4948, %4442
  %4950 = fmul fast float %4948, %4443
  %4951 = fmul fast float %4946, %4948
  br label %4952

; <label>:4952                                    ; preds = %4923, %4882
  %4953 = phi float [ %4949, %4923 ], [ %4442, %4882 ]
  %4954 = phi float [ %4950, %4923 ], [ %4443, %4882 ]
  %4955 = phi float [ %4951, %4923 ], [ %4444, %4882 ]
  %4956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.i32 %4956, 2
  %4958 = add nsw i32 %4957, -1
  %4959 = call i32 @dx.op.binary.i32(i32 37, i32 %4958, i32 0)  ; IMax(a,b)
  %4960 = shl i32 %4919, 2
  %4961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4962 = extractvalue %dx.types.ResRet.i32 %4961, 0
  %4963 = lshr i32 %4962, 16
  %4964 = and i32 %4962, 65535
  %4965 = lshr i32 %4962, 21
  %4966 = lshr i32 %4964, 5
  %4967 = call i32 @dx.op.binary.i32(i32 40, i32 %4966, i32 %4959)  ; UMin(a,b)
  %4968 = icmp ugt i32 %4965, %4967
  br i1 %4968, label %5350, label %4969

; <label>:4969                                    ; preds = %4952
  br label %4970

; <label>:4970                                    ; preds = %5339, %4969
  %4971 = phi float [ %5340, %5339 ], [ 0.000000e+00, %4969 ]
  %4972 = phi float [ %5341, %5339 ], [ 0.000000e+00, %4969 ]
  %4973 = phi float [ %5342, %5339 ], [ 0.000000e+00, %4969 ]
  %4974 = phi float [ %5343, %5339 ], [ 1.000000e+00, %4969 ]
  %4975 = phi i32 [ %5347, %5339 ], [ %4965, %4969 ]
  %4976 = phi float [ %5344, %5339 ], [ 0.000000e+00, %4969 ]
  %4977 = phi float [ %5345, %5339 ], [ 0.000000e+00, %4969 ]
  %4978 = phi float [ %5346, %5339 ], [ 0.000000e+00, %4969 ]
  %4979 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.i32 %4979, 2
  %4981 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4915, i32 %4980, i32 %4975)  ; UMad(a,b,c)
  %4982 = shl i32 %4981, 2
  %4983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4982, i32 undef)  ; BufferLoad(srv,index,wot)
  %4984 = extractvalue %dx.types.ResRet.i32 %4983, 0
  %4985 = shl i32 %4975, 5
  %4986 = sub nsw i32 %4963, %4985
  %4987 = call i32 @dx.op.binary.i32(i32 37, i32 %4986, i32 0)  ; IMax(a,b)
  %4988 = call i32 @dx.op.binary.i32(i32 38, i32 %4987, i32 31)  ; IMin(a,b)
  %4989 = sub nsw i32 1, %4963
  %4990 = add nsw i32 %4989, %4964
  %4991 = call i32 @dx.op.binary.i32(i32 37, i32 %4990, i32 0)  ; IMax(a,b)
  %4992 = call i32 @dx.op.binary.i32(i32 38, i32 %4991, i32 32)  ; IMin(a,b)
  %4993 = and i32 %4992, 31
  %4994 = shl i32 -1, %4993
  %4995 = xor i32 %4994, -1
  %4996 = and i32 %4988, 31
  %4997 = shl i32 %4995, %4996
  %4998 = icmp eq i32 %4992, 32
  %4999 = select i1 %4998, i32 -1, i32 %4997
  %5000 = and i32 %4999, %4984
  %5001 = icmp eq i32 %5000, 0
  br i1 %5001, label %5339, label %5002

; <label>:5002                                    ; preds = %4970
  br label %5003

; <label>:5003                                    ; preds = %5113, %5002
  %5004 = phi float [ %5114, %5113 ], [ %4971, %5002 ]
  %5005 = phi float [ %5115, %5113 ], [ %4972, %5002 ]
  %5006 = phi float [ %5116, %5113 ], [ %4973, %5002 ]
  %5007 = phi float [ %5117, %5113 ], [ %4974, %5002 ]
  %5008 = phi i32 [ %5016, %5113 ], [ %5000, %5002 ]
  %5009 = phi float [ %5118, %5113 ], [ %4976, %5002 ]
  %5010 = phi float [ %5119, %5113 ], [ %4977, %5002 ]
  %5011 = phi float [ %5120, %5113 ], [ %4978, %5002 ]
  %5012 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5008)  ; FirstbitLo(value)
  %5013 = add i32 %5012, %4985
  %5014 = and i32 %5012, 31
  %5015 = shl i32 1, %5014
  %5016 = xor i32 %5015, %5008
  %5017 = mul i32 %5013, 72
  %5018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5017, i32 undef)  ; BufferLoad(srv,index,wot)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5022 = add i32 %5017, 12
  %5023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.i32 %5023, 0
  %5025 = add i32 %5017, 16
  %5026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = add i32 %5017, 28
  %5031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5030, i32 undef)  ; BufferLoad(srv,index,wot)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = add i32 %5017, 32
  %5034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = extractvalue %dx.types.ResRet.f32 %5034, 3
  %5039 = add i32 %5017, 48
  %5040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = add i32 %5017, 56
  %5044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.ResRet.f32 %5044, 1
  %5047 = add i32 %5017, 64
  %5048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = mul i32 %5013, 60
  %5052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = add i32 %5051, 12
  %5057 = add i32 %5051, 48
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.ResRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.ResRet.f32 %5058, 2
  %5062 = and i32 %5024, 32767
  %5063 = bitcast float %5019 to i32
  %5064 = icmp eq i32 %5063, -1
  %5065 = bitcast float %5020 to i32
  %5066 = and i32 %5024, 32768
  %5067 = icmp ne i32 %5066, 0
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5072 = fsub fast float %5053, %5069
  %5073 = fsub fast float %5054, %5070
  %5074 = fsub fast float %5055, %5071
  %5075 = fsub fast float %147, %5072
  %5076 = fsub fast float %148, %5073
  %5077 = fsub fast float %149, %5074
  %5078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5079 = extractvalue %dx.types.ResRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.ResRet.f32 %5078, 1
  %5081 = extractvalue %dx.types.ResRet.f32 %5078, 2
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5079, float %5080, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = add i32 %5051, 24
  %5084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5083, i32 undef)  ; BufferLoad(srv,index,wot)
  %5085 = extractvalue %dx.types.ResRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.ResRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.ResRet.f32 %5084, 2
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = add i32 %5051, 36
  %5090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5089, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.ResRet.f32 %5090, 1
  %5093 = extractvalue %dx.types.ResRet.f32 %5090, 2
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5091, float %5092, float %5093)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 6, float %5082)  ; FAbs(value)
  %5096 = call float @dx.op.unary.f32(i32 6, float %5088)  ; FAbs(value)
  %5097 = call float @dx.op.unary.f32(i32 6, float %5094)  ; FAbs(value)
  %5098 = fsub fast float %5059, %5095
  %5099 = fsub fast float %5060, %5096
  %5100 = fsub fast float %5061, %5097
  %5101 = fmul fast float %5098, %5027
  %5102 = fmul fast float %5099, %5028
  %5103 = fmul fast float %5100, %5029
  %5104 = call float @dx.op.binary.f32(i32 36, float %5102, float %5103)  ; FMin(a,b)
  %5105 = call float @dx.op.binary.f32(i32 36, float %5101, float %5104)  ; FMin(a,b)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = call float @dx.op.binary.f32(i32 36, float %5007, float %5106)  ; FMin(a,b)
  %5108 = uitofp i1 %5067 to float
  %5109 = fadd fast float %4216, 1.000000e+00
  %5110 = fsub fast float %5109, %5108
  %5111 = fmul fast float %5107, %5110
  %5112 = fcmp fast ogt float %5111, 0.000000e+00
  br i1 %5112, label %5122, label %5113

; <label>:5113                                    ; preds = %5264, %5003
  %5114 = phi float [ %5328, %5264 ], [ %5004, %5003 ]
  %5115 = phi float [ %5329, %5264 ], [ %5005, %5003 ]
  %5116 = phi float [ %5330, %5264 ], [ %5006, %5003 ]
  %5117 = phi float [ %5337, %5264 ], [ %5007, %5003 ]
  %5118 = phi float [ %5334, %5264 ], [ %5009, %5003 ]
  %5119 = phi float [ %5335, %5264 ], [ %5010, %5003 ]
  %5120 = phi float [ %5336, %5264 ], [ %5011, %5003 ]
  %5121 = icmp eq i32 %5008, %5015
  br i1 %5121, label %5338, label %5003

; <label>:5122                                    ; preds = %5003
  br i1 %5064, label %5180, label %5123

; <label>:5123                                    ; preds = %5122
  %5124 = fsub fast float -0.000000e+00, %5079
  %5125 = fsub fast float -0.000000e+00, %5080
  %5126 = fsub fast float -0.000000e+00, %5081
  %5127 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4954, float %4955, float %5124, float %5125, float %5126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fsub fast float -0.000000e+00, %5127
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5124, float %5125, float %5126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = fadd fast float %5129, %5042
  %5131 = fadd fast float %5041, %5129
  %5132 = fsub fast float -0.000000e+00, %5131
  %5133 = fcmp ogt float %5127, -0.000000e+00
  %5134 = select i1 %5133, float %5132, float %5130
  %5135 = call float @dx.op.unary.f32(i32 6, float %5128)  ; FAbs(value)
  %5136 = fdiv fast float 1.000000e+00, %5135
  %5137 = fmul fast float %5134, %5136
  %5138 = call float @dx.op.binary.f32(i32 35, float %5137, float 0.000000e+00)  ; FMax(a,b)
  %5139 = fsub fast float -0.000000e+00, %5085
  %5140 = fsub fast float -0.000000e+00, %5086
  %5141 = fsub fast float -0.000000e+00, %5087
  %5142 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4954, float %4955, float %5139, float %5140, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = fsub fast float -0.000000e+00, %5142
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5139, float %5140, float %5141)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = fadd fast float %5144, %5046
  %5146 = fadd fast float %5045, %5144
  %5147 = fsub fast float -0.000000e+00, %5146
  %5148 = fcmp ogt float %5142, -0.000000e+00
  %5149 = select i1 %5148, float %5147, float %5145
  %5150 = call float @dx.op.unary.f32(i32 6, float %5143)  ; FAbs(value)
  %5151 = fdiv fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5149, %5151
  %5153 = call float @dx.op.binary.f32(i32 35, float %5152, float 0.000000e+00)  ; FMax(a,b)
  %5154 = fsub fast float -0.000000e+00, %5091
  %5155 = fsub fast float -0.000000e+00, %5092
  %5156 = fsub fast float -0.000000e+00, %5093
  %5157 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4954, float %4955, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = fsub fast float -0.000000e+00, %5157
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = fadd fast float %5159, %5050
  %5161 = fadd fast float %5049, %5159
  %5162 = fsub fast float -0.000000e+00, %5161
  %5163 = fcmp ogt float %5157, -0.000000e+00
  %5164 = select i1 %5163, float %5162, float %5160
  %5165 = call float @dx.op.unary.f32(i32 6, float %5158)  ; FAbs(value)
  %5166 = fdiv fast float 1.000000e+00, %5165
  %5167 = fmul fast float %5164, %5166
  %5168 = call float @dx.op.binary.f32(i32 35, float %5167, float 0.000000e+00)  ; FMax(a,b)
  %5169 = call float @dx.op.binary.f32(i32 36, float %5153, float %5168)  ; FMin(a,b)
  %5170 = call float @dx.op.binary.f32(i32 36, float %5138, float %5169)  ; FMin(a,b)
  %5171 = fmul fast float %5170, %4953
  %5172 = fmul fast float %5170, %4954
  %5173 = fmul fast float %5170, %4955
  %5174 = fadd fast float %5171, %147
  %5175 = fadd fast float %5172, %148
  %5176 = fadd fast float %5173, %149
  %5177 = fsub fast float %5174, %5019
  %5178 = fsub fast float %5175, %5020
  %5179 = fsub fast float %5176, %5021
  br label %5187

; <label>:5180                                    ; preds = %5122
  %5181 = fmul fast float %4953, 8.096000e+03
  %5182 = fmul fast float %4954, 8.096000e+03
  %5183 = fmul fast float %4955, 8.096000e+03
  %5184 = fadd fast float %5181, %147
  %5185 = fadd fast float %5182, %148
  %5186 = fadd fast float %5183, %149
  br label %5187

; <label>:5187                                    ; preds = %5180, %5123
  %5188 = phi float [ %4953, %5180 ], [ %5177, %5123 ]
  %5189 = phi float [ %4954, %5180 ], [ %5178, %5123 ]
  %5190 = phi float [ %4955, %5180 ], [ %5179, %5123 ]
  %5191 = phi float [ %5184, %5180 ], [ %5174, %5123 ]
  %5192 = phi float [ %5185, %5180 ], [ %5175, %5123 ]
  %5193 = phi float [ %5186, %5180 ], [ %5176, %5123 ]
  %5194 = fcmp fast olt float %5038, 1.000000e+00
  br i1 %5194, label %5195, label %5226, !dx.controlflow.hints !90

; <label>:5195                                    ; preds = %5187
  %5196 = fmul fast float %5190, %5036
  %5197 = fmul fast float %5189, %5037
  %5198 = fsub fast float %5196, %5197
  %5199 = fmul fast float %5188, %5037
  %5200 = fmul fast float %5190, %5035
  %5201 = fsub fast float %5199, %5200
  %5202 = fmul fast float %5189, %5035
  %5203 = fmul fast float %5188, %5036
  %5204 = fsub fast float %5202, %5203
  %5205 = fmul fast float %5198, 2.000000e+00
  %5206 = fmul fast float %5201, 2.000000e+00
  %5207 = fmul fast float %5204, 2.000000e+00
  %5208 = fmul fast float %5205, %5038
  %5209 = fmul fast float %5206, %5038
  %5210 = fmul fast float %5207, %5038
  %5211 = fmul fast float %5207, %5036
  %5212 = fmul fast float %5206, %5037
  %5213 = fmul fast float %5205, %5037
  %5214 = fmul fast float %5207, %5035
  %5215 = fmul fast float %5206, %5035
  %5216 = fmul fast float %5205, %5036
  %5217 = fadd fast float %5211, %5188
  %5218 = fadd fast float %5217, %5208
  %5219 = fsub fast float %5218, %5212
  %5220 = fsub fast float %5189, %5214
  %5221 = fadd fast float %5220, %5209
  %5222 = fadd fast float %5221, %5213
  %5223 = fadd fast float %5210, %5190
  %5224 = fsub fast float %5223, %5216
  %5225 = fadd fast float %5224, %5215
  br label %5226

; <label>:5226                                    ; preds = %5195, %5187
  %5227 = phi float [ %5219, %5195 ], [ %5188, %5187 ]
  %5228 = phi float [ %5222, %5195 ], [ %5189, %5187 ]
  %5229 = phi float [ %5225, %5195 ], [ %5190, %5187 ]
  br i1 %5064, label %5261, label %5230

; <label>:5230                                    ; preds = %5226
  %5231 = fmul fast float %4417, 0x400187C840000000
  %5232 = fadd fast float %5231, 0xC00EFC2120000000
  %5233 = fmul fast float %5232, %4417
  %5234 = fadd fast float %5233, 0x3FE5D16340000000
  %5235 = fmul fast float %5234, %4417
  %5236 = fadd fast float %5235, 1.000000e+00
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fsub fast float %5191, %147
  %5239 = fsub fast float %5192, %148
  %5240 = fsub fast float %5193, %149
  %5241 = fsub fast float %5191, %5019
  %5242 = fsub fast float %5192, %5020
  %5243 = fsub fast float %5193, %5021
  %5244 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float %5238, float %5239, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5241, float %5242, float %5243, float %5241, float %5242, float %5243)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fadd fast float %5245, 0x3EE4F8B580000000
  %5247 = fdiv fast float %5244, %5246
  %5248 = bitcast float %5247 to i32
  %5249 = ashr i32 %5248, 1
  %5250 = add nsw i32 %5249, 532487669
  %5251 = bitcast i32 %5250 to float
  %5252 = fmul fast float %5251, %5237
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, 0x4009981AE0000000
  %5255 = fsub fast float 0x40111BBD80000000, %5254
  %5256 = fmul fast float %5255, %5253
  %5257 = fadd fast float %5256, 0xC0009F6020000000
  %5258 = fmul fast float %5257, %5253
  %5259 = fadd fast float %5258, 1.000000e+00
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  br label %5264

; <label>:5261                                    ; preds = %5226
  %5262 = icmp ne i32 %5065, -1
  %5263 = zext i1 %5262 to i32
  br label %5264

; <label>:5264                                    ; preds = %5261, %5230
  %5265 = phi float [ %4417, %5261 ], [ %5260, %5230 ]
  %5266 = phi i32 [ %5263, %5261 ], [ 0, %5230 ]
  %5267 = fmul float %5265, 5.000000e+00
  %5268 = fsub float 5.000000e+00, %5267
  %5269 = icmp ne i32 %5266, 0
  %5270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5270, 3
  %5272 = fadd fast float %5271, %5268
  %5273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5272)  ; FMax(a,b)
  %5274 = call float @dx.op.unary.f32(i32 6, float %5227)  ; FAbs(value)
  %5275 = call float @dx.op.unary.f32(i32 6, float %5228)  ; FAbs(value)
  %5276 = fadd fast float %5275, %5274
  %5277 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5278 = fadd fast float %5276, %5277
  %5279 = fcmp fast oeq float %5278, 0.000000e+00
  %5280 = fdiv fast float 1.000000e+00, %5278
  %5281 = select i1 %5279, float 1.000000e+00, float %5280
  %5282 = fmul fast float %5281, %5227
  %5283 = fmul fast float %5281, %5228
  %5284 = call float @dx.op.unary.f32(i32 6, float %5283)  ; FAbs(value)
  %5285 = call float @dx.op.unary.f32(i32 6, float %5282)  ; FAbs(value)
  %5286 = fsub fast float 1.000000e+00, %5284
  %5287 = fsub fast float 1.000000e+00, %5285
  %5288 = fcmp fast oge float %5282, 0.000000e+00
  %5289 = fcmp fast oge float %5283, 0.000000e+00
  %5290 = select i1 %5288, float 1.000000e+00, float -1.000000e+00
  %5291 = select i1 %5289, float 1.000000e+00, float -1.000000e+00
  %5292 = fcmp fast ole float %5229, 0.000000e+00
  %5293 = fmul fast float %5290, %5286
  %5294 = fmul fast float %5291, %5287
  %5295 = select i1 %5292, float %5293, float %5282
  %5296 = select i1 %5292, float %5294, float %5283
  %5297 = fmul fast float %5295, 5.000000e-01
  %5298 = fmul fast float %5296, 5.000000e-01
  %5299 = fadd fast float %5297, 5.000000e-01
  %5300 = fadd fast float %5298, 5.000000e-01
  %5301 = uitofp i32 %5062 to float
  %5302 = call float @dx.op.binary.f32(i32 36, float %5273, float 3.000000e+00)  ; FMin(a,b)
  %5303 = fadd fast float %5302, 2.000000e+00
  %5304 = call float @dx.op.unary.f32(i32 21, float %5303)  ; Exp(value)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5270, 1
  %5306 = fmul fast float %5305, %5304
  %5307 = fmul fast float %5306, 2.000000e+00
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = fmul fast float %5299, %5308
  %5310 = fmul fast float %5300, %5308
  %5311 = fadd fast float %5309, %5306
  %5312 = fadd fast float %5310, %5306
  %5313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %5311, float %5312, float %5301, float undef, i32 0, i32 0, i32 undef, float %5273)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 1
  %5316 = extractvalue %dx.types.ResRet.f32 %5313, 2
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5319 = fmul fast float %5318, %5032
  %5320 = call float @dx.op.binary.f32(i32 36, float %4497, float %5319)  ; FMin(a,b)
  %5321 = select i1 %5269, float %5320, float %5319
  %5322 = fmul fast float %5314, %5111
  %5323 = fmul fast float %5322, %5321
  %5324 = fmul fast float %5315, %5111
  %5325 = fmul fast float %5324, %5321
  %5326 = fmul fast float %5316, %5111
  %5327 = fmul fast float %5326, %5321
  %5328 = fadd fast float %5323, %5004
  %5329 = fadd fast float %5325, %5005
  %5330 = fadd fast float %5327, %5006
  %5331 = fmul fast float %5191, %5111
  %5332 = fmul fast float %5192, %5111
  %5333 = fmul fast float %5193, %5111
  %5334 = fadd fast float %5331, %5009
  %5335 = fadd fast float %5332, %5010
  %5336 = fadd fast float %5333, %5011
  %5337 = fsub fast float %5007, %5111
  br label %5113

; <label>:5338                                    ; preds = %5113
  br label %5339

; <label>:5339                                    ; preds = %5338, %4970
  %5340 = phi float [ %4971, %4970 ], [ %5114, %5338 ]
  %5341 = phi float [ %4972, %4970 ], [ %5115, %5338 ]
  %5342 = phi float [ %4973, %4970 ], [ %5116, %5338 ]
  %5343 = phi float [ %4974, %4970 ], [ %5117, %5338 ]
  %5344 = phi float [ %4976, %4970 ], [ %5118, %5338 ]
  %5345 = phi float [ %4977, %4970 ], [ %5119, %5338 ]
  %5346 = phi float [ %4978, %4970 ], [ %5120, %5338 ]
  %5347 = add i32 %4975, 1
  %5348 = icmp ugt i32 %5347, %4967
  br i1 %5348, label %5349, label %4970, !llvm.loop !91

; <label>:5349                                    ; preds = %5339
  br label %5350

; <label>:5350                                    ; preds = %5349, %4952
  %5351 = phi float [ 0.000000e+00, %4952 ], [ %5340, %5349 ]
  %5352 = phi float [ 0.000000e+00, %4952 ], [ %5341, %5349 ]
  %5353 = phi float [ 0.000000e+00, %4952 ], [ %5342, %5349 ]
  %5354 = phi float [ 0.000000e+00, %4952 ], [ %5344, %5349 ]
  %5355 = phi float [ 0.000000e+00, %4952 ], [ %5345, %5349 ]
  %5356 = phi float [ 0.000000e+00, %4952 ], [ %5346, %5349 ]
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = select i1 %189, float 0.000000e+00, float %5351
  %5359 = select i1 %189, float %5357, float %5352
  %5360 = select i1 %189, float 0.000000e+00, float %5353
  %5361 = fcmp fast olt float %4876, 0.000000e+00
  %5362 = call float @dx.op.unary.f32(i32 6, float %4876)  ; FAbs(value)
  %5363 = fmul fast float %5362, %4877
  %5364 = fmul fast float %5362, %4878
  %5365 = fmul fast float %5362, %4879
  %5366 = select i1 %5361, float %4877, float %5363
  %5367 = select i1 %5361, float %4878, float %5364
  %5368 = select i1 %5361, float %4879, float %5365
  %5369 = fsub fast float 1.000000e+00, %5362
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fmul fast float %5370, %5358
  %5372 = fmul fast float %5370, %5359
  %5373 = fmul fast float %5370, %5360
  %5374 = fadd fast float %5366, %5371
  %5375 = fadd fast float %5367, %5372
  %5376 = fadd fast float %5368, %5373
  %5377 = fcmp fast une float %4626, 0.000000e+00
  br i1 %5377, label %5478, label %5378

; <label>:5378                                    ; preds = %5350
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5394 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float %4442, float %4443, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5354, float %5355, float %5356, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = fadd fast float %4417, -1.000000e+00
  %5398 = fsub fast float %5395, %5396
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 2
  %5401 = fmul fast float %5400, %5395
  %5402 = fdiv fast float 1.600000e+02, %5401
  %5403 = fmul fast float %5397, %5397
  %5404 = fmul fast float %5403, 0xBFB5B17960000000
  %5405 = fmul fast float %5404, %5398
  %5406 = fmul fast float %5405, %5402
  %5407 = call float @dx.op.unary.f32(i32 21, float %5406)  ; Exp(value)
  %5408 = fmul fast float %5407, 0x3FF04B2960000000
  %5409 = fsub fast float 0x3FF04B2960000000, %5408
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fmul fast float %5410, 4.000000e+00
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5416 = fadd fast float %5413, %5354
  %5417 = fadd fast float %5414, %5355
  %5418 = fadd fast float %5415, %5356
  %5419 = fmul fast float %5416, %5380
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %5417, float %5381, float %5419)  ; FMad(a,b,c)
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %5418, float %5382, float %5420)  ; FMad(a,b,c)
  %5422 = fadd fast float %5421, %5383
  %5423 = fmul fast float %5416, %5385
  %5424 = call float @dx.op.tertiary.f32(i32 46, float %5417, float %5386, float %5423)  ; FMad(a,b,c)
  %5425 = call float @dx.op.tertiary.f32(i32 46, float %5418, float %5387, float %5424)  ; FMad(a,b,c)
  %5426 = fadd fast float %5425, %5388
  %5427 = fmul fast float %5416, %5390
  %5428 = call float @dx.op.tertiary.f32(i32 46, float %5417, float %5391, float %5427)  ; FMad(a,b,c)
  %5429 = call float @dx.op.tertiary.f32(i32 46, float %5418, float %5392, float %5428)  ; FMad(a,b,c)
  %5430 = fadd fast float %5429, %5393
  %5431 = fdiv fast float %5422, %5430
  %5432 = fdiv fast float %5426, %5430
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5436 = fmul fast float %5434, %5431
  %5437 = fmul fast float %5435, %5432
  %5438 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5433, 3
  %5440 = fadd fast float %5436, %5438
  %5441 = fadd fast float %5437, %5439
  %5442 = fmul fast float %5394, 8.000000e+00
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %5440, 2.000000e+00
  %5445 = fmul fast float %5441, 2.000000e+00
  %5446 = fadd fast float %5444, -1.000000e+00
  %5447 = fadd fast float %5445, -1.000000e+00
  %5448 = fmul fast float %5446, %5446
  %5449 = fsub fast float 1.000000e+00, %5448
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5447, %5447
  %5452 = fsub fast float 1.000000e+00, %5451
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fmul fast float %4626, %5450
  %5455 = fmul fast float %5454, %5453
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = fmul fast float %5456, %5443
  %5458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %5440, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float %5411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.ResRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.ResRet.f32 %5458, 2
  %5462 = select i1 %189, float 0.000000e+00, float %5460
  %5463 = select i1 %189, float 0.000000e+00, float %5461
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5466 = fmul fast float %5465, %5459
  %5467 = fmul fast float %5462, %5465
  %5468 = fmul fast float %5463, %5465
  %5469 = fsub fast float %5466, %5358
  %5470 = fsub fast float %5467, %5359
  %5471 = fsub fast float %5468, %5360
  %5472 = fmul fast float %5469, %5457
  %5473 = fmul fast float %5470, %5457
  %5474 = fmul fast float %5471, %5457
  %5475 = fadd fast float %5472, %5358
  %5476 = fadd fast float %5473, %5359
  %5477 = fadd fast float %5474, %5360
  br label %5478

; <label>:5478                                    ; preds = %5378, %5350, %4875, %4599
  %5479 = phi float [ %4877, %4875 ], [ %5374, %5350 ], [ %4556, %4599 ], [ %5475, %5378 ]
  %5480 = phi float [ %4878, %4875 ], [ %5375, %5350 ], [ %4557, %4599 ], [ %5476, %5378 ]
  %5481 = phi float [ %4879, %4875 ], [ %5376, %5350 ], [ %4558, %4599 ], [ %5477, %5378 ]
  %5482 = fmul fast float %4605, %4552
  %5483 = fmul fast float %4605, %4553
  %5484 = fmul fast float %4605, %4554
  %5485 = call float @dx.op.dot3.f32(i32 55, float %4411, float %4412, float %4413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fcmp fast ogt float %5485, 0x3E7FF19E20000000
  %5487 = fdiv fast float 1.000000e+00, %5485
  %5488 = select i1 %5486, float %5487, float 0.000000e+00
  %5489 = fmul fast float %5488, %4411
  %5490 = fmul fast float %5488, %4412
  %5491 = fmul fast float %5488, %4413
  %5492 = fadd fast float %5489, -1.000000e+00
  %5493 = fadd fast float %5490, -1.000000e+00
  %5494 = fadd fast float %5491, -1.000000e+00
  %5495 = fmul fast float %5492, 5.000000e-01
  %5496 = fmul fast float %5493, 5.000000e-01
  %5497 = fmul fast float %5494, 5.000000e-01
  %5498 = fadd fast float %5495, 1.000000e+00
  %5499 = fadd fast float %5496, 1.000000e+00
  %5500 = fadd fast float %5497, 1.000000e+00
  %5501 = fmul fast float %5479, %4600
  %5502 = fmul fast float %5480, %4601
  %5503 = fmul fast float %5481, %4602
  %5504 = fsub fast float 1.000000e+00, %4436
  %5505 = bitcast float %5504 to i32
  %5506 = sitofp i32 %5505 to float
  %5507 = fmul fast float %5506, 5.000000e+00
  %5508 = fadd fast float %5507, 0xC1EFBF8940000000
  %5509 = fptosi float %5508 to i32
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5510, %3807
  %5512 = fmul fast float %4552, %5511
  %5513 = fmul fast float %5512, %4605
  %5514 = fmul fast float %5513, %5498
  %5515 = fmul fast float %4553, %5511
  %5516 = fmul fast float %5515, %4605
  %5517 = fmul fast float %5516, %5499
  %5518 = fmul fast float %4554, %5511
  %5519 = fmul fast float %5518, %4605
  %5520 = fmul fast float %5519, %5500
  %5521 = fmul fast float %5482, %3803
  %5522 = fmul fast float %5483, %3803
  %5523 = fmul fast float %5484, %3803
  %5524 = fadd fast float %5501, %3799
  %5525 = fadd fast float %5524, %5514
  %5526 = fmul fast float %5525, %3803
  %5527 = fadd fast float %5502, %3800
  %5528 = fadd fast float %5527, %5517
  %5529 = fmul fast float %5528, %3803
  %5530 = fadd fast float %5503, %3801
  %5531 = fadd fast float %5530, %5520
  %5532 = fmul fast float %5531, %3803
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  br i1 %5535, label %5755, label %5536

; <label>:5536                                    ; preds = %5478
  %5537 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.CBufRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.CBufRet.f32 %5540, 2
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = select i1 %189, float %5545, float %5541
  %5549 = select i1 %189, float %5547, float %5542
  %5550 = select i1 %189, float %5546, float %5543
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5553 = fcmp fast une float %5552, 0.000000e+00
  br i1 %5553, label %5554, label %5571

; <label>:5554                                    ; preds = %5536
  %5555 = fptoui float %84 to i32
  %5556 = fptoui float %85 to i32
  %5557 = lshr i32 %5555, 4
  %5558 = lshr i32 %5556, 4
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = fptoui float %5560 to i32
  %5562 = add i32 %5561, 15
  %5563 = lshr i32 %5562, 4
  %5564 = mul i32 %5563, %5558
  %5565 = add i32 %5564, %5557
  %5566 = shl i32 %5565, 3
  %5567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5566, i32 undef)  ; BufferLoad(srv,index,wot)
  %5568 = extractvalue %dx.types.ResRet.i32 %5567, 0
  %5569 = and i32 %5568, -268435456
  %5570 = icmp eq i32 %5569, -1342177280
  br i1 %5570, label %5576, label %5571

; <label>:5571                                    ; preds = %5554, %5536
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  br label %5576

; <label>:5576                                    ; preds = %5571, %5554
  %5577 = phi float [ %5573, %5571 ], [ 0.000000e+00, %5554 ]
  %5578 = phi float [ %5574, %5571 ], [ 0.000000e+00, %5554 ]
  %5579 = phi float [ %5575, %5571 ], [ 0.000000e+00, %5554 ]
  %5580 = call float @dx.op.binary.f32(i32 36, float %5578, float %5579)  ; FMin(a,b)
  %5581 = call float @dx.op.binary.f32(i32 36, float %5577, float %5580)  ; FMin(a,b)
  %5582 = fcmp fast ogt float %5581, 0.000000e+00
  br i1 %5582, label %5583, label %5755, !dx.controlflow.hints !93

; <label>:5583                                    ; preds = %5576
  %5584 = fmul fast float %5577, %5548
  %5585 = fmul fast float %5578, %5549
  %5586 = fmul fast float %5579, %5550
  %5587 = fsub fast float %5537, %4407
  %5588 = fsub fast float %5538, %4406
  %5589 = fsub fast float %5539, %4405
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.unary.f32(i32 25, float %5590)  ; Rsqrt(value)
  %5592 = fmul fast float %5591, %5587
  %5593 = fmul fast float %5591, %5588
  %5594 = fmul fast float %5591, %5589
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %4414, float %4415, float %4416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4403, float %4402, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5598 = bitcast i32 %4460 to float
  %5599 = fmul fast float %5597, %5597
  %5600 = fmul fast float %5599, %5598
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, %5597
  %5603 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = fmul fast float %5603, %5603
  %5605 = call float @dx.op.unary.f32(i32 6, float %5595)  ; FAbs(value)
  %5606 = fsub fast float 1.000000e+00, %4454
  %5607 = fmul fast float %4436, %4436
  %5608 = fmul fast float %5607, %5606
  %5609 = fadd fast float %5608, %4454
  %5610 = bitcast float %5609 to i32
  %5611 = ashr i32 %5610, 1
  %5612 = add nsw i32 %5611, 532487669
  %5613 = bitcast i32 %5612 to float
  %5614 = fadd fast float %5613, %4436
  %5615 = fmul fast float %4454, %5604
  %5616 = fsub fast float 1.000000e+00, %5604
  %5617 = fadd fast float %5616, %5615
  %5618 = fmul fast float %5605, %5605
  %5619 = fmul fast float %5618, %5606
  %5620 = fadd fast float %5619, %4454
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fadd fast float %5624, %5605
  %5626 = fmul fast float %5617, %5617
  %5627 = fmul fast float %5626, %5614
  %5628 = fmul fast float %5627, %5625
  %5629 = fdiv fast float 0x3FF0A00000000000, %5628
  %5630 = fmul fast float %5629, %4454
  %5631 = call float @dx.op.unary.f32(i32 6, float %5596)  ; FAbs(value)
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = bitcast float %5632 to i32
  %5634 = sitofp i32 %5633 to float
  %5635 = fmul fast float %5634, 5.000000e+00
  %5636 = fadd fast float %5635, 0xC1EFBF8940000000
  %5637 = fptosi float %5636 to i32
  %5638 = bitcast i32 %5637 to float
  %5639 = fsub fast float 1.000000e+00, %4408
  %5640 = fsub fast float 1.000000e+00, %4409
  %5641 = fsub fast float 1.000000e+00, %4434
  %5642 = fmul fast float %5638, %5639
  %5643 = fmul fast float %5638, %5640
  %5644 = fmul fast float %5638, %5641
  %5645 = fadd fast float %5642, %4408
  %5646 = fadd fast float %5643, %4409
  %5647 = fadd fast float %5644, %4434
  br i1 %4572, label %5648, label %5671

; <label>:5648                                    ; preds = %5583
  %5649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3806, float %5631, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5653 = fadd fast float %5650, -5.000000e-01
  %5654 = fadd fast float %5651, -5.000000e-01
  %5655 = fadd fast float %5652, -5.000000e-01
  %5656 = fmul fast float %4408, 4.000000e+00
  %5657 = fmul fast float %5656, %5639
  %5658 = fmul fast float %5657, %5653
  %5659 = fmul fast float %4409, 4.000000e+00
  %5660 = fmul fast float %5659, %5640
  %5661 = fmul fast float %5660, %5654
  %5662 = fmul fast float %4434, 4.000000e+00
  %5663 = fmul fast float %5662, %5641
  %5664 = fmul fast float %5663, %5655
  %5665 = fadd fast float %5658, %5645
  %5666 = fadd fast float %5661, %5646
  %5667 = fadd fast float %5664, %5647
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  br label %5671

; <label>:5671                                    ; preds = %5648, %5583
  %5672 = phi float [ %5668, %5648 ], [ %5645, %5583 ]
  %5673 = phi float [ %5669, %5648 ], [ %5646, %5583 ]
  %5674 = phi float [ %5670, %5648 ], [ %5647, %5583 ]
  %5675 = fmul fast float %5595, 9.843750e-01
  %5676 = fadd fast float %5675, 7.812500e-03
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %5676, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.ResRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %4408
  %5681 = fmul fast float %5678, %4409
  %5682 = fmul fast float %5678, %4434
  %5683 = fadd fast float %5680, %5679
  %5684 = fadd fast float %5681, %5679
  %5685 = fadd fast float %5682, %5679
  br i1 %4572, label %5686, label %5709

; <label>:5686                                    ; preds = %5671
  %5687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3806, float %5595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.ResRet.f32 %5687, 2
  %5691 = fadd fast float %5688, -5.000000e-01
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fadd fast float %5690, -5.000000e-01
  %5694 = fmul fast float %4408, 4.000000e+00
  %5695 = fmul fast float %5694, %5639
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %4409, 4.000000e+00
  %5698 = fmul fast float %5697, %5640
  %5699 = fmul fast float %5698, %5692
  %5700 = fmul fast float %4434, 4.000000e+00
  %5701 = fmul fast float %5700, %5641
  %5702 = fmul fast float %5701, %5693
  %5703 = fadd fast float %5696, %5683
  %5704 = fadd fast float %5699, %5684
  %5705 = fadd fast float %5702, %5685
  %5706 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  br label %5709

; <label>:5709                                    ; preds = %5686, %5671
  %5710 = phi float [ %5706, %5686 ], [ %5683, %5671 ]
  %5711 = phi float [ %5707, %5686 ], [ %5684, %5671 ]
  %5712 = phi float [ %5708, %5686 ], [ %5685, %5671 ]
  %5713 = call float @dx.op.binary.f32(i32 35, float %5711, float %5712)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 35, float %5710, float %5713)  ; FMax(a,b)
  %5715 = fsub fast float 1.000000e+00, %5714
  %5716 = fmul fast float %5672, %5630
  %5717 = fmul fast float %5673, %5630
  %5718 = fmul fast float %5674, %5630
  %5719 = fsub fast float 1.000000e+00, %5596
  %5720 = bitcast float %5719 to i32
  %5721 = sitofp i32 %5720 to float
  %5722 = fmul fast float %5721, 5.000000e+00
  %5723 = fadd fast float %5722, 0xC1EFBF8940000000
  %5724 = fptosi float %5723 to i32
  %5725 = bitcast i32 %5724 to float
  %5726 = fmul fast float %5725, %3807
  %5727 = fmul fast float %5715, %5726
  %5728 = fmul fast float %5727, %5498
  %5729 = fmul fast float %5727, %5499
  %5730 = fmul fast float %5727, %5500
  %5731 = fadd fast float %5728, %5716
  %5732 = fadd fast float %5729, %5717
  %5733 = fadd fast float %5730, %5718
  %5734 = fmul fast float %5602, %5584
  %5735 = fmul fast float %5734, %5715
  %5736 = fmul fast float %5602, %5585
  %5737 = fmul fast float %5736, %5715
  %5738 = fmul fast float %5602, %5586
  %5739 = fmul fast float %5738, %5715
  %5740 = fmul fast float %5734, %5731
  %5741 = fmul fast float %5736, %5732
  %5742 = fmul fast float %5738, %5733
  %5743 = fadd fast float %5735, %5482
  %5744 = fmul fast float %5743, %3803
  %5745 = fadd fast float %5737, %5483
  %5746 = fmul fast float %5745, %3803
  %5747 = fadd fast float %5739, %5484
  %5748 = fmul fast float %5747, %3803
  %5749 = fadd fast float %5740, %5525
  %5750 = fmul fast float %5749, %3803
  %5751 = fadd fast float %5741, %5528
  %5752 = fmul fast float %5751, %3803
  %5753 = fadd fast float %5742, %5531
  %5754 = fmul fast float %5753, %3803
  br label %5755

; <label>:5755                                    ; preds = %5709, %5576, %5478
  %5756 = phi float [ %5526, %5478 ], [ %5526, %5576 ], [ %5750, %5709 ]
  %5757 = phi float [ %5529, %5478 ], [ %5529, %5576 ], [ %5752, %5709 ]
  %5758 = phi float [ %5532, %5478 ], [ %5532, %5576 ], [ %5754, %5709 ]
  %5759 = phi float [ %5521, %5478 ], [ %5521, %5576 ], [ %5744, %5709 ]
  %5760 = phi float [ %5522, %5478 ], [ %5522, %5576 ], [ %5746, %5709 ]
  %5761 = phi float [ %5523, %5478 ], [ %5523, %5576 ], [ %5748, %5709 ]
  %5762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.i32 %5762, 0
  %5764 = icmp eq i32 %5763, 0
  br i1 %5764, label %6196, label %5765

; <label>:5765                                    ; preds = %5755
  %5766 = fptoui float %84 to i32
  %5767 = fptoui float %85 to i32
  %5768 = lshr i32 %5766, 4
  %5769 = lshr i32 %5767, 4
  %5770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.i32 %5770, 0
  %5772 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5769, i32 %5771, i32 %5768)  ; UMad(a,b,c)
  %5773 = add nsw i32 %5763, -1
  %5774 = call i32 @dx.op.binary.i32(i32 37, i32 %5773, i32 0)  ; IMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5776 = fptoui float %5775 to i32
  %5777 = lshr i32 %5776, 5
  %5778 = call i32 @dx.op.binary.i32(i32 40, i32 %5777, i32 8191)  ; UMin(a,b)
  %5779 = shl i32 %5778, 2
  %5780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5779, i32 undef)  ; BufferLoad(srv,index,wot)
  %5781 = extractvalue %dx.types.ResRet.i32 %5780, 0
  %5782 = lshr i32 %5781, 16
  %5783 = and i32 %5781, 65535
  %5784 = lshr i32 %5781, 21
  %5785 = lshr i32 %5783, 5
  %5786 = call i32 @dx.op.binary.i32(i32 40, i32 %5785, i32 %5774)  ; UMin(a,b)
  %5787 = icmp ugt i32 %5784, %5786
  br i1 %5787, label %6196, label %5788

; <label>:5788                                    ; preds = %5765
  br label %5789

; <label>:5789                                    ; preds = %6186, %5788
  %5790 = phi i32 [ %6193, %6186 ], [ %5784, %5788 ]
  %5791 = phi float [ %6187, %6186 ], [ %5756, %5788 ]
  %5792 = phi float [ %6188, %6186 ], [ %5757, %5788 ]
  %5793 = phi float [ %6189, %6186 ], [ %5758, %5788 ]
  %5794 = phi float [ %6190, %6186 ], [ %5759, %5788 ]
  %5795 = phi float [ %6191, %6186 ], [ %5760, %5788 ]
  %5796 = phi float [ %6192, %6186 ], [ %5761, %5788 ]
  %5797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.i32 %5797, 0
  %5799 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5772, i32 %5798, i32 %5790)  ; UMad(a,b,c)
  %5800 = shl i32 %5799, 2
  %5801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.i32 %5801, 0
  %5803 = shl i32 %5790, 5
  %5804 = sub nsw i32 %5782, %5803
  %5805 = call i32 @dx.op.binary.i32(i32 37, i32 %5804, i32 0)  ; IMax(a,b)
  %5806 = call i32 @dx.op.binary.i32(i32 38, i32 %5805, i32 31)  ; IMin(a,b)
  %5807 = sub nsw i32 1, %5782
  %5808 = add nsw i32 %5807, %5783
  %5809 = call i32 @dx.op.binary.i32(i32 37, i32 %5808, i32 0)  ; IMax(a,b)
  %5810 = call i32 @dx.op.binary.i32(i32 38, i32 %5809, i32 32)  ; IMin(a,b)
  %5811 = and i32 %5810, 31
  %5812 = shl i32 -1, %5811
  %5813 = xor i32 %5812, -1
  %5814 = and i32 %5806, 31
  %5815 = shl i32 %5813, %5814
  %5816 = icmp eq i32 %5810, 32
  %5817 = select i1 %5816, i32 -1, i32 %5815
  %5818 = and i32 %5817, %5802
  %5819 = icmp eq i32 %5818, 0
  br i1 %5819, label %6186, label %5820

; <label>:5820                                    ; preds = %5789
  br label %5821

; <label>:5821                                    ; preds = %5901, %5820
  %5822 = phi i32 [ %5833, %5901 ], [ %5818, %5820 ]
  %5823 = phi float [ %5902, %5901 ], [ %5791, %5820 ]
  %5824 = phi float [ %5903, %5901 ], [ %5792, %5820 ]
  %5825 = phi float [ %5904, %5901 ], [ %5793, %5820 ]
  %5826 = phi float [ %5905, %5901 ], [ %5794, %5820 ]
  %5827 = phi float [ %5906, %5901 ], [ %5795, %5820 ]
  %5828 = phi float [ %5907, %5901 ], [ %5796, %5820 ]
  %5829 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5822)  ; FirstbitLo(value)
  %5830 = add i32 %5829, %5803
  %5831 = and i32 %5829, 31
  %5832 = shl i32 1, %5831
  %5833 = xor i32 %5832, %5822
  %5834 = mul i32 %5830, 112
  %5835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5834, i32 undef)  ; BufferLoad(srv,index,wot)
  %5836 = extractvalue %dx.types.ResRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.ResRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.ResRet.f32 %5835, 2
  %5839 = or i32 %5834, 12
  %5840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = add i32 %5834, 44
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = add i32 %5834, 48
  %5846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5845, i32 undef)  ; BufferLoad(srv,index,wot)
  %5847 = extractvalue %dx.types.ResRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.ResRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.ResRet.f32 %5846, 2
  %5850 = add i32 %5834, 80
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 2
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = select i1 %189, float %5852, float %5836
  %5856 = select i1 %189, float %5854, float %5837
  %5857 = select i1 %189, float %5853, float %5838
  %5858 = fsub fast float %5847, %147
  %5859 = fsub fast float %5848, %148
  %5860 = fsub fast float %5849, %149
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5859, float %5860, float %5858, float %5859, float %5860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = call float @dx.op.unary.f32(i32 24, float %5861)  ; Sqrt(value)
  %5863 = fdiv fast float 1.000000e+00, %5862
  %5864 = fmul fast float %5863, %5858
  %5865 = fmul fast float %5863, %5859
  %5866 = fmul fast float %5863, %5860
  %5867 = fadd fast float %5862, %5841
  %5868 = fdiv fast float 1.000000e+00, %5867
  %5869 = fmul float %5844, %5868
  %5870 = fmul float %5869, %5869
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = and i32 %5832, %5818
  %5873 = icmp eq i32 %5872, 0
  br i1 %5873, label %5896, label %5874, !dx.controlflow.hints !94

; <label>:5874                                    ; preds = %5821
  %5875 = lshr i32 %5766, 5
  %5876 = lshr i32 %5767, 5
  %5877 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %5875, i32 %5876, i32 %5830, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5878 = extractvalue %dx.types.ResRet.i32 %5877, 0
  %5879 = and i32 %5878, 3
  %5880 = icmp eq i32 %5879, 0
  %5881 = select i1 %5880, float 1.000000e+00, float 0.000000e+00
  %5882 = icmp eq i32 %5879, 3
  br i1 %5882, label %5883, label %5896

; <label>:5883                                    ; preds = %5874
  %5884 = lshr i32 %5878, 10
  %5885 = and i32 %5884, 8160
  %5886 = and i32 %5767, 31
  %5887 = or i32 %5885, %5886
  %5888 = lshr i32 %5878, 1
  %5889 = and i32 %5888, 16352
  %5890 = and i32 %5766, 31
  %5891 = or i32 %5889, %5890
  %5892 = lshr i32 %5878, 23
  %5893 = and i32 %5892, 255
  %5894 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %5891, i32 %5887, i32 %5893, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  br label %5896

; <label>:5896                                    ; preds = %5883, %5874, %5821
  %5897 = phi float [ %5895, %5883 ], [ %5881, %5874 ], [ 0.000000e+00, %5821 ]
  %5898 = call float @dx.op.binary.f32(i32 36, float %5897, float %5897)  ; FMin(a,b)
  %5899 = call float @dx.op.binary.f32(i32 36, float %5897, float %5898)  ; FMin(a,b)
  %5900 = fcmp fast ogt float %5899, 0.000000e+00
  br i1 %5900, label %5909, label %5901, !dx.controlflow.hints !95

; <label>:5901                                    ; preds = %6142, %5896
  %5902 = phi float [ %5823, %5896 ], [ %6182, %6142 ]
  %5903 = phi float [ %5824, %5896 ], [ %6183, %6142 ]
  %5904 = phi float [ %5825, %5896 ], [ %6184, %6142 ]
  %5905 = phi float [ %5826, %5896 ], [ %6176, %6142 ]
  %5906 = phi float [ %5827, %5896 ], [ %6177, %6142 ]
  %5907 = phi float [ %5828, %5896 ], [ %6178, %6142 ]
  %5908 = icmp eq i32 %5822, %5832
  br i1 %5908, label %6185, label %5821

; <label>:5909                                    ; preds = %5896
  %5910 = fmul fast float %5897, %5855
  %5911 = fmul fast float %5897, %5856
  %5912 = fmul fast float %5897, %5857
  %5913 = fsub fast float %5849, %4207
  %5914 = fcmp fast ogt float %5913, 0.000000e+00
  %5915 = fsub fast float %149, %4207
  %5916 = fcmp fast ogt float %5915, 0.000000e+00
  %5917 = xor i1 %5916, %5914
  %5918 = fsub fast float %4207, %5849
  %5919 = fmul fast float %5918, 2.000000e+00
  %5920 = fadd fast float %5919, %5849
  %5921 = select i1 %5917, float %5849, float %5920
  %5922 = fsub fast float %5921, %149
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5859, float %5922, float %5858, float %5859, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = call float @dx.op.unary.f32(i32 25, float %5923)  ; Rsqrt(value)
  %5925 = fmul fast float %5924, %5858
  %5926 = fmul fast float %5924, %5859
  %5927 = fmul fast float %5924, %5922
  %5928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5925, float %5926, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fdiv fast float 1.000000e+00, %5929
  %5931 = fmul fast float %5930, %5928
  %5932 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5915, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  %5934 = fcmp fast olt float %5932, 0.000000e+00
  %5935 = zext i1 %5933 to i32
  %5936 = zext i1 %5934 to i32
  %5937 = sub nsw i32 %5935, %5936
  %5938 = sitofp i32 %5937 to float
  %5939 = fsub fast float %5921, %4207
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5859, float %5939, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  %5942 = fcmp fast olt float %5940, 0.000000e+00
  %5943 = zext i1 %5941 to i32
  %5944 = zext i1 %5942 to i32
  %5945 = sub nsw i32 %5943, %5944
  %5946 = sitofp i32 %5945 to float
  %5947 = fcmp fast une float %5938, %5946
  br i1 %5947, label %5948, label %5958

; <label>:5948                                    ; preds = %5909
  %5949 = fmul fast float %5931, %5927
  %5950 = fmul fast float %5931, %5926
  %5951 = fmul fast float %5931, %5925
  %5952 = fmul fast float %5951, %5951
  %5953 = fmul fast float %5950, %5950
  %5954 = fadd fast float %5952, %5953
  %5955 = fmul fast float %5949, %5949
  %5956 = fadd fast float %5954, %5955
  %5957 = call float @dx.op.unary.f32(i32 24, float %5956)  ; Sqrt(value)
  br label %5970

; <label>:5958                                    ; preds = %5909
  %5959 = icmp slt i32 %5937, 0
  br i1 %5959, label %5960, label %5970

; <label>:5960                                    ; preds = %5958
  %5961 = fsub fast float %147, %5847
  %5962 = fsub fast float %148, %5848
  %5963 = fsub fast float %149, %5921
  %5964 = fmul fast float %5961, %5961
  %5965 = fmul fast float %5962, %5962
  %5966 = fadd fast float %5964, %5965
  %5967 = fmul fast float %5963, %5963
  %5968 = fadd fast float %5966, %5967
  %5969 = call float @dx.op.unary.f32(i32 24, float %5968)  ; Sqrt(value)
  br label %5970

; <label>:5970                                    ; preds = %5960, %5958, %5948
  %5971 = phi float [ %5957, %5948 ], [ %5969, %5960 ], [ 0.000000e+00, %5958 ]
  %5972 = and i1 %5916, %5914
  %5973 = fsub fast float -0.000000e+00, %5971
  %5974 = select i1 %5972, float -0.000000e+00, float %5973
  %5975 = fmul fast float %4208, 0x3FF7154760000000
  %5976 = fmul fast float %5975, %5974
  %5977 = fmul fast float %4209, 0x3FF7154760000000
  %5978 = fmul fast float %5977, %5974
  %5979 = fmul fast float %4210, 0x3FF7154760000000
  %5980 = fmul fast float %5979, %5974
  %5981 = call float @dx.op.unary.f32(i32 21, float %5976)  ; Exp(value)
  %5982 = call float @dx.op.unary.f32(i32 21, float %5978)  ; Exp(value)
  %5983 = call float @dx.op.unary.f32(i32 21, float %5980)  ; Exp(value)
  %5984 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5985 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5986 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5987 = fmul fast float %5910, %5984
  %5988 = fmul fast float %5911, %5985
  %5989 = fmul fast float %5912, %5986
  %5990 = fsub fast float %5864, %4407
  %5991 = fsub fast float %5865, %4406
  %5992 = fsub fast float %5866, %4405
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %5990, float %5991, float %5992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = call float @dx.op.unary.f32(i32 25, float %5993)  ; Rsqrt(value)
  %5995 = fmul fast float %5994, %5990
  %5996 = fmul fast float %5994, %5991
  %5997 = fmul fast float %5994, %5992
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5864, float %5865, float %5866, float %4414, float %4415, float %4416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4403, float %4402, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6001 = fmul fast float %6000, %5871
  %6002 = bitcast i32 %4460 to float
  %6003 = fmul fast float %6000, %6000
  %6004 = fmul fast float %6003, %6002
  %6005 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6006 = fmul fast float %6001, %6005
  %6007 = bitcast float %5861 to i32
  %6008 = ashr i32 %6007, 1
  %6009 = sub nsw i32 1597463007, %6008
  %6010 = bitcast i32 %6009 to float
  %6011 = fmul fast float %6010, %5858
  %6012 = fmul fast float %6010, %5859
  %6013 = fmul fast float %6010, %5860
  %6014 = fsub fast float %6011, %4407
  %6015 = fsub fast float %6012, %4406
  %6016 = fsub fast float %6013, %4405
  %6017 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6016, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = call float @dx.op.unary.f32(i32 25, float %6017)  ; Rsqrt(value)
  %6019 = fmul fast float %6014, %6018
  %6020 = fmul fast float %6015, %6018
  %6021 = fmul fast float %6016, %6018
  %6022 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = fmul fast float %6022, %6022
  %6024 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6025 = fsub fast float 1.000000e+00, %4454
  %6026 = fmul fast float %4436, %4436
  %6027 = fmul fast float %6026, %6025
  %6028 = fadd fast float %6027, %4454
  %6029 = bitcast float %6028 to i32
  %6030 = ashr i32 %6029, 1
  %6031 = add nsw i32 %6030, 532487669
  %6032 = bitcast i32 %6031 to float
  %6033 = fadd fast float %6032, %4436
  %6034 = fmul fast float %4454, %6023
  %6035 = fsub fast float 1.000000e+00, %6023
  %6036 = fadd fast float %6035, %6034
  %6037 = fmul fast float %6024, %6024
  %6038 = fmul fast float %6037, %6025
  %6039 = fadd fast float %6038, %4454
  %6040 = bitcast float %6039 to i32
  %6041 = ashr i32 %6040, 1
  %6042 = add nsw i32 %6041, 532487669
  %6043 = bitcast i32 %6042 to float
  %6044 = fadd fast float %6043, %6024
  %6045 = fmul fast float %6036, %6036
  %6046 = fmul fast float %6045, %6033
  %6047 = fmul fast float %6046, %6044
  %6048 = fdiv fast float 1.000000e+00, %6047
  %6049 = bitcast float %4454 to i32
  %6050 = sitofp i32 %6049 to float
  %6051 = fmul fast float %6050, 0x3FE7F73180000000
  %6052 = fadd fast float %6051, 0x41AFE27C40000000
  %6053 = fptosi float %6052 to i32
  %6054 = bitcast i32 %6053 to float
  %6055 = fmul fast float %5844, 0x3FD80E9D60000000
  %6056 = fmul fast float %6055, %6010
  %6057 = fadd fast float %6054, %6056
  %6058 = bitcast float %6057 to i32
  %6059 = sub nsw i32 2129859010, %6058
  %6060 = bitcast i32 %6059 to float
  %6061 = fmul fast float %4454, %6048
  %6062 = fmul fast float %6061, %6054
  %6063 = fmul fast float %6062, %6060
  %6064 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = bitcast float %6065 to i32
  %6067 = sitofp i32 %6066 to float
  %6068 = fmul fast float %6067, 5.000000e+00
  %6069 = fadd fast float %6068, 0xC1EFBF8940000000
  %6070 = fptosi float %6069 to i32
  %6071 = bitcast i32 %6070 to float
  %6072 = fsub fast float 1.000000e+00, %4408
  %6073 = fsub fast float 1.000000e+00, %4409
  %6074 = fsub fast float 1.000000e+00, %4434
  %6075 = fmul fast float %6071, %6072
  %6076 = fmul fast float %6071, %6073
  %6077 = fmul fast float %6071, %6074
  %6078 = fadd fast float %6075, %4408
  %6079 = fadd fast float %6076, %4409
  %6080 = fadd fast float %6077, %4434
  br i1 %4572, label %6081, label %6104

; <label>:6081                                    ; preds = %5970
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3806, float %6064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = fadd fast float %6083, -5.000000e-01
  %6087 = fadd fast float %6084, -5.000000e-01
  %6088 = fadd fast float %6085, -5.000000e-01
  %6089 = fmul fast float %4408, 4.000000e+00
  %6090 = fmul fast float %6089, %6072
  %6091 = fmul fast float %6090, %6086
  %6092 = fmul fast float %4409, 4.000000e+00
  %6093 = fmul fast float %6092, %6073
  %6094 = fmul fast float %6093, %6087
  %6095 = fmul fast float %4434, 4.000000e+00
  %6096 = fmul fast float %6095, %6074
  %6097 = fmul fast float %6096, %6088
  %6098 = fadd fast float %6091, %6078
  %6099 = fadd fast float %6094, %6079
  %6100 = fadd fast float %6097, %6080
  %6101 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6102 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  br label %6104

; <label>:6104                                    ; preds = %6081, %5970
  %6105 = phi float [ %6101, %6081 ], [ %6078, %5970 ]
  %6106 = phi float [ %6102, %6081 ], [ %6079, %5970 ]
  %6107 = phi float [ %6103, %6081 ], [ %6080, %5970 ]
  %6108 = fmul fast float %5998, 9.843750e-01
  %6109 = fadd fast float %6108, 7.812500e-03
  %6110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %6109, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 2
  %6112 = extractvalue %dx.types.ResRet.f32 %6110, 3
  %6113 = fmul fast float %6111, %4408
  %6114 = fmul fast float %6111, %4409
  %6115 = fmul fast float %6111, %4434
  %6116 = fadd fast float %6113, %6112
  %6117 = fadd fast float %6114, %6112
  %6118 = fadd fast float %6115, %6112
  br i1 %4572, label %6119, label %6142

; <label>:6119                                    ; preds = %6104
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3806, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = fadd fast float %6121, -5.000000e-01
  %6125 = fadd fast float %6122, -5.000000e-01
  %6126 = fadd fast float %6123, -5.000000e-01
  %6127 = fmul fast float %4408, 4.000000e+00
  %6128 = fmul fast float %6127, %6072
  %6129 = fmul fast float %6128, %6124
  %6130 = fmul fast float %4409, 4.000000e+00
  %6131 = fmul fast float %6130, %6073
  %6132 = fmul fast float %6131, %6125
  %6133 = fmul fast float %4434, 4.000000e+00
  %6134 = fmul fast float %6133, %6074
  %6135 = fmul fast float %6134, %6126
  %6136 = fadd fast float %6129, %6116
  %6137 = fadd fast float %6132, %6117
  %6138 = fadd fast float %6135, %6118
  %6139 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6140 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  br label %6142

; <label>:6142                                    ; preds = %6119, %6104
  %6143 = phi float [ %6139, %6119 ], [ %6116, %6104 ]
  %6144 = phi float [ %6140, %6119 ], [ %6117, %6104 ]
  %6145 = phi float [ %6141, %6119 ], [ %6118, %6104 ]
  %6146 = call float @dx.op.binary.f32(i32 35, float %6144, float %6145)  ; FMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 35, float %6143, float %6146)  ; FMax(a,b)
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = fmul fast float %6105, %6063
  %6150 = fmul fast float %6106, %6063
  %6151 = fmul fast float %6107, %6063
  %6152 = fsub fast float 1.000000e+00, %5999
  %6153 = bitcast float %6152 to i32
  %6154 = sitofp i32 %6153 to float
  %6155 = fmul fast float %6154, 5.000000e+00
  %6156 = fadd fast float %6155, 0xC1EFBF8940000000
  %6157 = fptosi float %6156 to i32
  %6158 = bitcast i32 %6157 to float
  %6159 = fmul fast float %6158, %3807
  %6160 = fmul fast float %6148, %6159
  %6161 = fmul fast float %6160, %5498
  %6162 = fmul fast float %6160, %5499
  %6163 = fmul fast float %6160, %5500
  %6164 = fadd fast float %6161, %6149
  %6165 = fadd fast float %6162, %6150
  %6166 = fadd fast float %6163, %6151
  %6167 = fmul fast float %5987, %3803
  %6168 = fmul fast float %6167, %6006
  %6169 = fmul fast float %6168, %6148
  %6170 = fmul fast float %5988, %3803
  %6171 = fmul fast float %6170, %6006
  %6172 = fmul fast float %6171, %6148
  %6173 = fmul fast float %5989, %3803
  %6174 = fmul fast float %6173, %6006
  %6175 = fmul fast float %6174, %6148
  %6176 = fadd fast float %6169, %5826
  %6177 = fadd fast float %6172, %5827
  %6178 = fadd fast float %6175, %5828
  %6179 = fmul fast float %6168, %6164
  %6180 = fmul fast float %6171, %6165
  %6181 = fmul fast float %6174, %6166
  %6182 = fadd fast float %6179, %5823
  %6183 = fadd fast float %6180, %5824
  %6184 = fadd fast float %6181, %5825
  br label %5901

; <label>:6185                                    ; preds = %5901
  br label %6186

; <label>:6186                                    ; preds = %6185, %5789
  %6187 = phi float [ %5791, %5789 ], [ %5902, %6185 ]
  %6188 = phi float [ %5792, %5789 ], [ %5903, %6185 ]
  %6189 = phi float [ %5793, %5789 ], [ %5904, %6185 ]
  %6190 = phi float [ %5794, %5789 ], [ %5905, %6185 ]
  %6191 = phi float [ %5795, %5789 ], [ %5906, %6185 ]
  %6192 = phi float [ %5796, %5789 ], [ %5907, %6185 ]
  %6193 = add i32 %5790, 1
  %6194 = icmp ugt i32 %6193, %5786
  br i1 %6194, label %6195, label %5789

; <label>:6195                                    ; preds = %6186
  br label %6196

; <label>:6196                                    ; preds = %6195, %5765, %5755
  %6197 = phi float [ %5756, %5755 ], [ %5756, %5765 ], [ %6187, %6195 ]
  %6198 = phi float [ %5757, %5755 ], [ %5757, %5765 ], [ %6188, %6195 ]
  %6199 = phi float [ %5758, %5755 ], [ %5758, %5765 ], [ %6189, %6195 ]
  %6200 = phi float [ %5759, %5755 ], [ %5759, %5765 ], [ %6190, %6195 ]
  %6201 = phi float [ %5760, %5755 ], [ %5760, %5765 ], [ %6191, %6195 ]
  %6202 = phi float [ %5761, %5755 ], [ %5761, %5765 ], [ %6192, %6195 ]
  %6203 = call float @dx.op.unary.f32(i32 24, float %4411)  ; Sqrt(value)
  %6204 = call float @dx.op.unary.f32(i32 24, float %4412)  ; Sqrt(value)
  %6205 = call float @dx.op.unary.f32(i32 24, float %4413)  ; Sqrt(value)
  %6206 = fmul fast float %6203, %6200
  %6207 = fmul fast float %6204, %6201
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  br i1 %189, label %6210, label %6233

; <label>:6210                                    ; preds = %6196
  %6211 = fadd fast float %6202, %3809
  %6212 = fmul fast float %6211, %3810
  %6213 = fsub fast float 1.000000e+00, %3810
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6217 = fmul fast float %6216, %6214
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = fmul fast float %6219, %5504
  %6221 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6222 = fmul fast float %6221, %4432
  %6223 = fadd fast float %6207, %6206
  %6224 = fmul fast float %6209, %6223
  %6225 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6226 = fadd fast float %6217, %6212
  %6227 = fsub fast float %6226, %6220
  %6228 = fadd fast float %6227, %6222
  %6229 = fsub fast float %6228, %6225
  %6230 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6231 = fmul fast float %6229, %6230
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  br label %6249

; <label>:6233                                    ; preds = %6196
  %6234 = fmul fast float %6205, %6202
  %6235 = fmul fast float %6209, %6206
  %6236 = fmul fast float %6209, %6207
  %6237 = fmul fast float %6234, %6209
  %6238 = add i32 %49, 356
  %6239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6238, i32 undef)  ; BufferLoad(srv,index,wot)
  %6240 = extractvalue %dx.types.ResRet.i32 %6239, 0
  %6241 = and i32 %6240, 32
  %6242 = icmp eq i32 %6241, 0
  br i1 %6242, label %6249, label %6243

; <label>:6243                                    ; preds = %6233
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %6246 = fmul fast float %6245, 0x3FE99999A0000000
  %6247 = fadd fast float %6245, %6235
  %6248 = fadd fast float %6246, %6237
  br label %6249

; <label>:6249                                    ; preds = %6243, %6233, %6210
  %6250 = phi float [ %6224, %6210 ], [ %6247, %6243 ], [ %6235, %6233 ]
  %6251 = phi float [ %6232, %6210 ], [ %6236, %6243 ], [ %6236, %6233 ]
  %6252 = phi float [ 1.000000e+00, %6210 ], [ %6248, %6243 ], [ %6237, %6233 ]
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = fmul fast float %6254, %6198
  %6256 = fmul fast float %6254, %6199
  %6257 = fadd fast float %6198, %6197
  %6258 = select i1 %189, float %6257, float %6197
  %6259 = fmul float %6258, %6254
  %6260 = select i1 %189, float 0.000000e+00, float %6255
  %6261 = select i1 %189, float 0.000000e+00, float %6256
  %6262 = fmul fast float %6250, %6203
  %6263 = fmul fast float %6251, %6204
  %6264 = fmul fast float %6252, %6205
  %6265 = fadd fast float %6259, %6262
  %6266 = fadd fast float %6260, %6263
  %6267 = fadd fast float %6261, %6264
  %6268 = select i1 %189, float %6251, float %6266
  %6269 = select i1 %189, float %6252, float %6267
  %6270 = call float @dx.op.binary.f32(i32 36, float %6265, float 3.225500e+04)  ; FMin(a,b)
  %6271 = call float @dx.op.binary.f32(i32 36, float %6268, float 3.225500e+04)  ; FMin(a,b)
  %6272 = call float @dx.op.binary.f32(i32 36, float %6269, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6271)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6272)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

