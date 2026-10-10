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
; shader hash: aa5906763ff2356767af82e1b6d8d197
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
  %338 = add i32 %49, 504
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
  %496 = add i32 %49, 392
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
  %519 = add i32 %49, 472
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
  %717 = add i32 %49, 408
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
  %1043 = add i32 %49, 460
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
  %1095 = add i32 %49, 444
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
  %1121 = add i32 %49, 396
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
  %1144 = add i32 %49, 476
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
  %1342 = add i32 %49, 412
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
  %1826 = add i32 %49, 464
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
  %1878 = add i32 %49, 448
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
  %1904 = add i32 %49, 400
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
  %1927 = add i32 %49, 480
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
  %2125 = add i32 %49, 416
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
  %2609 = add i32 %49, 468
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
  %2661 = add i32 %49, 452
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
  %2687 = add i32 %49, 404
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
  %2710 = add i32 %49, 484
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
  %2908 = add i32 %49, 420
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
  %3163 = add i32 %49, 360
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = bitcast i32 %3165 to float
  %3167 = fcmp fast oge float %3166, 0.000000e+00
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = select i1 %3167, float %3166, float %3169
  %3171 = call float @dx.op.unary.f32(i32 22, float %72)  ; Frc(value)
  %3172 = call float @dx.op.unary.f32(i32 22, float %73)  ; Frc(value)
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = fcmp fast ogt float %3174, 5.000000e-01
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3180 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3181 = fmul fast float %3177, %3171
  %3182 = fmul fast float %3178, %3172
  %3183 = fmul fast float %3179, %3171
  %3184 = fmul fast float %3180, %3172
  %3185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %3181, float %3182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  br i1 %3175, label %3187, label %3191

; <label>:3187                                    ; preds = %3153
  %3188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 1
  br label %3196

; <label>:3191                                    ; preds = %3153
  %3192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  br label %3196

; <label>:3196                                    ; preds = %3191, %3187
  %3197 = phi float [ %3189, %3187 ], [ %3193, %3191 ]
  %3198 = phi float [ %3190, %3187 ], [ %3195, %3191 ]
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3199, 2
  %3203 = extractvalue %dx.types.CBufRet.f32 %3199, 3
  %3204 = call float @dx.op.dot4.f32(i32 56, float %3200, float %3201, float %3202, float %3203, float %3186, float %3197, float %3198, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3205 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3210 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3211 = call float @dx.op.dot4.f32(i32 56, float %3207, float %3208, float %3209, float %3210, float %3186, float %3197, float %3198, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3212 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3217 = extractvalue %dx.types.CBufRet.f32 %3213, 3
  %3218 = call float @dx.op.dot4.f32(i32 56, float %3214, float %3215, float %3216, float %3217, float %3186, float %3197, float %3198, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3219 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %3181, float %3182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = fcmp fast ole float %3205, 0x3FA4B5DCC0000000
  %3223 = fmul fast float %3205, 0x3FB3D07220000000
  %3224 = fadd fast float %3205, 0x3FAC28F5C0000000
  %3225 = fmul fast float %3224, 0x3FEE54EDE0000000
  %3226 = call float @dx.op.unary.f32(i32 23, float %3225)  ; Log(value)
  %3227 = fmul fast float %3226, 0x4003333340000000
  %3228 = call float @dx.op.unary.f32(i32 21, float %3227)  ; Exp(value)
  %3229 = select i1 %3222, float %3223, float %3228
  %3230 = fcmp fast ole float %3212, 0x3FA4B5DCC0000000
  %3231 = fmul fast float %3212, 0x3FB3D07220000000
  %3232 = fadd fast float %3212, 0x3FAC28F5C0000000
  %3233 = fmul fast float %3232, 0x3FEE54EDE0000000
  %3234 = call float @dx.op.unary.f32(i32 23, float %3233)  ; Log(value)
  %3235 = fmul fast float %3234, 0x4003333340000000
  %3236 = call float @dx.op.unary.f32(i32 21, float %3235)  ; Exp(value)
  %3237 = select i1 %3230, float %3231, float %3236
  %3238 = fcmp fast ole float %3219, 0x3FA4B5DCC0000000
  %3239 = fmul fast float %3219, 0x3FB3D07220000000
  %3240 = fadd fast float %3219, 0x3FAC28F5C0000000
  %3241 = fmul fast float %3240, 0x3FEE54EDE0000000
  %3242 = call float @dx.op.unary.f32(i32 23, float %3241)  ; Log(value)
  %3243 = fmul fast float %3242, 0x4003333340000000
  %3244 = call float @dx.op.unary.f32(i32 21, float %3243)  ; Exp(value)
  %3245 = select i1 %3238, float %3239, float %3244
  %3246 = fmul fast float %3229, %3221
  %3247 = fmul fast float %3237, %3221
  %3248 = fmul fast float %3245, %3221
  %3249 = add i32 %49, 376
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.i32 %3250, 1
  %3253 = extractvalue %dx.types.ResRet.i32 %3250, 2
  %3254 = bitcast i32 %3251 to float
  %3255 = bitcast i32 %3252 to float
  %3256 = bitcast i32 %3253 to float
  %3257 = fmul fast float %3246, %3254
  %3258 = fmul fast float %3247, %3255
  %3259 = fmul fast float %3248, %3256
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = fmul fast float %3257, %3261
  %3263 = fmul fast float %3258, %3261
  %3264 = fmul fast float %3259, %3261
  %3265 = call float @dx.op.dot2.f32(i32 54, float %3154, float %3155, float %3154, float %3155)  ; Dot2(ax,ay,bx,by)
  %3266 = fmul fast float %3265, 0x3FE3333340000000
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3155, float %3267, float %3154, float %3155, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3269, %3154
  %3271 = fmul fast float %3269, %3155
  %3272 = fmul fast float %3267, %3269
  %3273 = fmul fast float %3272, %91
  %3274 = fmul fast float %3272, %92
  %3275 = fmul fast float %3272, %93
  %3276 = fmul fast float %3270, %65
  %3277 = fmul fast float %3270, %66
  %3278 = fmul fast float %3270, %67
  %3279 = fadd fast float %3273, %3276
  %3280 = fadd fast float %3274, %3277
  %3281 = fadd fast float %3275, %3278
  %3282 = fmul fast float %103, %3271
  %3283 = fmul fast float %104, %3271
  %3284 = fmul fast float %105, %3271
  %3285 = fadd fast float %3279, %3282
  %3286 = fadd fast float %3280, %3283
  %3287 = fadd fast float %3281, %3284
  %3288 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3286, float %3287, float %3285, float %3286, float %3287)  ; Dot3(ax,ay,az,bx,by,bz)
  %3289 = call float @dx.op.unary.f32(i32 25, float %3288)  ; Rsqrt(value)
  %3290 = fmul fast float %3285, %3289
  %3291 = fmul fast float %3286, %3289
  %3292 = fmul fast float %3287, %3289
  %3293 = and i32 %51, 1
  %3294 = icmp eq i32 %3293, 0
  br i1 %3294, label %3295, label %3803

; <label>:3295                                    ; preds = %3196
  %3296 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3297 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %3298 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %3299 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3300 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %3301 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %3302 = fadd fast float %3296, %147
  %3303 = fadd fast float %3297, %148
  %3304 = fadd fast float %3298, %149
  %3305 = fadd fast float %3299, %147
  %3306 = fadd fast float %3300, %148
  %3307 = fadd fast float %3301, %149
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.CBufRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 3
  %3315 = fmul fast float %3309, %84
  %3316 = fmul fast float %3315, %3313
  %3317 = fmul fast float %3310, %85
  %3318 = fmul fast float %3317, %3314
  %3319 = fptoui float %3316 to i32
  %3320 = fptoui float %3318 to i32
  %3321 = fadd fast float %3309, -1.000000e+00
  %3322 = fadd fast float %3310, -1.000000e+00
  %3323 = fptoui float %3321 to i32
  %3324 = fptoui float %3322 to i32
  %3325 = call i32 @dx.op.binary.i32(i32 40, i32 %3319, i32 %3323)  ; UMin(a,b)
  %3326 = call i32 @dx.op.binary.i32(i32 40, i32 %3320, i32 %3324)  ; UMin(a,b)
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 2
  %3329 = extractvalue %dx.types.CBufRet.f32 %3327, 3
  %3330 = fmul fast float %3328, %79
  %3331 = fsub fast float %3330, %3329
  %3332 = fadd fast float %3311, -1.000000e+00
  %3333 = call float @dx.op.binary.f32(i32 36, float %3331, float %3332)  ; FMin(a,b)
  %3334 = fptoui float %3333 to i32
  %3335 = fptoui float %3309 to i32
  %3336 = fptoui float %3310 to i32
  %3337 = mul i32 %3334, %3336
  %3338 = add i32 %3337, %3326
  %3339 = mul i32 %3338, %3335
  %3340 = add i32 %3339, %3325
  %3341 = shl i32 %3340, 2
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = and i32 %3343, 1023
  %3345 = lshr i32 %3343, 10
  %3346 = icmp eq i32 %3344, 0
  br i1 %3346, label %3772, label %3347

; <label>:3347                                    ; preds = %3295
  %3348 = and i32 %3343, 1023
  br label %3349

; <label>:3349                                    ; preds = %3475, %3347
  %3350 = phi i32 [ %3425, %3475 ], [ 0, %3347 ]
  %3351 = phi float [ %3476, %3475 ], [ 0.000000e+00, %3347 ]
  %3352 = phi float [ %3477, %3475 ], [ %3170, %3347 ]
  %3353 = phi float [ %3478, %3475 ], [ %3162, %3347 ]
  %3354 = phi float [ %3479, %3475 ], [ 0.000000e+00, %3347 ]
  %3355 = phi float [ %3480, %3475 ], [ 0.000000e+00, %3347 ]
  %3356 = phi float [ %3481, %3475 ], [ %3262, %3347 ]
  %3357 = phi float [ %3482, %3475 ], [ %3263, %3347 ]
  %3358 = phi float [ %3483, %3475 ], [ %3264, %3347 ]
  %3359 = phi float [ %3484, %3475 ], [ %3290, %3347 ]
  %3360 = phi float [ %3485, %3475 ], [ %3291, %3347 ]
  %3361 = phi float [ %3486, %3475 ], [ %3292, %3347 ]
  %3362 = phi float [ %3487, %3475 ], [ %3161, %3347 ]
  %3363 = phi float [ %3488, %3475 ], [ %3160, %3347 ]
  %3364 = phi float [ %3489, %3475 ], [ 0.000000e+00, %3347 ]
  %3365 = phi float [ %3490, %3475 ], [ %3159, %3347 ]
  %3366 = phi float [ %3491, %3475 ], [ %3156, %3347 ]
  %3367 = phi float [ %3492, %3475 ], [ %3157, %3347 ]
  %3368 = phi float [ %3493, %3475 ], [ %3158, %3347 ]
  %3369 = add nuw nsw i32 %3350, %3345
  %3370 = shl i32 %3369, 2
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = shl i32 %3372, 8
  %3374 = or i32 %3373, 48
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = or i32 %3373, 64
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.i32 %3381, 1
  %3384 = or i32 %3373, 80
  %3385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 3
  %3388 = or i32 %3373, 96
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3394 = or i32 %3373, 112
  %3395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 2
  %3397 = or i32 %3373, 128
  %3398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3403 = or i32 %3373, 144
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3409 = or i32 %3373, 160
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3415 = or i32 %3373, 192
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = or i32 %3373, 208
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = or i32 %3373, 248
  %3422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.ResRet.f32 %3422, 1
  %3425 = add nuw nsw i32 %3350, 1
  %3426 = bitcast float %3379 to i32
  %3427 = and i32 %3426, 512
  %3428 = icmp eq i32 %3427, 0
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3434 = call float @dx.op.dot4.f32(i32 56, float %3430, float %3431, float %3432, float %3433, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3435 = or i32 %3373, 16
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.ResRet.f32 %3436, 2
  %3440 = extractvalue %dx.types.ResRet.f32 %3436, 3
  %3441 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3442 = or i32 %3373, 32
  %3443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.ResRet.f32 %3443, 1
  %3446 = extractvalue %dx.types.ResRet.f32 %3443, 2
  %3447 = extractvalue %dx.types.ResRet.f32 %3443, 3
  %3448 = call float @dx.op.dot4.f32(i32 56, float %3444, float %3445, float %3446, float %3447, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3449 = call float @dx.op.unary.f32(i32 27, float %3434)  ; Round_ni(value)
  %3450 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3451 = call float @dx.op.unary.f32(i32 27, float %3441)  ; Round_ni(value)
  %3452 = call float @dx.op.unary.f32(i32 6, float %3451)  ; FAbs(value)
  %3453 = call float @dx.op.unary.f32(i32 6, float %3448)  ; FAbs(value)
  %3454 = call float @dx.op.unary.f32(i32 27, float %3453)  ; Round_ni(value)
  %3455 = fadd fast float %3452, %3450
  %3456 = fadd fast float %3455, %3454
  %3457 = fcmp fast oeq float %3456, 0.000000e+00
  %3458 = call float @dx.op.dot4.f32(i32 56, float %3430, float %3431, float %3432, float %3433, float %3302, float %3303, float %3304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3459 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %3302, float %3303, float %3304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3460 = call float @dx.op.dot4.f32(i32 56, float %3430, float %3431, float %3432, float %3433, float %3305, float %3306, float %3307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3461 = call float @dx.op.dot4.f32(i32 56, float %3437, float %3438, float %3439, float %3440, float %3305, float %3306, float %3307, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3462 = fsub fast float %3458, %3434
  %3463 = fsub fast float %3460, %3434
  %3464 = fsub fast float %3459, %3441
  %3465 = fsub fast float %3461, %3441
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3376, float %3377, float %3378, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3469 = fadd fast float %3468, %3466
  %3470 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3472 = fcmp fast ogt float %3470, %3471
  %3473 = and i1 %3457, %3472
  %3474 = and i1 %3428, %3473
  br i1 %3474, label %3495, label %3475

; <label>:3475                                    ; preds = %3758, %3576, %3495, %3349
  %3476 = phi float [ %3351, %3495 ], [ %3579, %3576 ], [ %3579, %3758 ], [ %3351, %3349 ]
  %3477 = phi float [ %3352, %3495 ], [ %3352, %3576 ], [ %3733, %3758 ], [ %3352, %3349 ]
  %3478 = phi float [ %3353, %3495 ], [ %3353, %3576 ], [ %3731, %3758 ], [ %3353, %3349 ]
  %3479 = phi float [ %3354, %3495 ], [ %3354, %3576 ], [ %3703, %3758 ], [ %3354, %3349 ]
  %3480 = phi float [ %3355, %3495 ], [ %3355, %3576 ], [ %3701, %3758 ], [ %3355, %3349 ]
  %3481 = phi float [ %3356, %3495 ], [ %3356, %3576 ], [ %3768, %3758 ], [ %3356, %3349 ]
  %3482 = phi float [ %3357, %3495 ], [ %3357, %3576 ], [ %3769, %3758 ], [ %3357, %3349 ]
  %3483 = phi float [ %3358, %3495 ], [ %3358, %3576 ], [ %3770, %3758 ], [ %3358, %3349 ]
  %3484 = phi float [ %3359, %3495 ], [ %3359, %3576 ], [ %3682, %3758 ], [ %3359, %3349 ]
  %3485 = phi float [ %3360, %3495 ], [ %3360, %3576 ], [ %3683, %3758 ], [ %3360, %3349 ]
  %3486 = phi float [ %3361, %3495 ], [ %3361, %3576 ], [ %3684, %3758 ], [ %3361, %3349 ]
  %3487 = phi float [ %3362, %3495 ], [ %3362, %3576 ], [ %3711, %3758 ], [ %3362, %3349 ]
  %3488 = phi float [ %3363, %3495 ], [ %3363, %3576 ], [ %3708, %3758 ], [ %3363, %3349 ]
  %3489 = phi float [ %3364, %3495 ], [ %3364, %3576 ], [ %3705, %3758 ], [ %3364, %3349 ]
  %3490 = phi float [ %3365, %3495 ], [ %3365, %3576 ], [ %3699, %3758 ], [ %3365, %3349 ]
  %3491 = phi float [ %3366, %3495 ], [ %3366, %3576 ], [ %3694, %3758 ], [ %3366, %3349 ]
  %3492 = phi float [ %3367, %3495 ], [ %3367, %3576 ], [ %3695, %3758 ], [ %3367, %3349 ]
  %3493 = phi float [ %3368, %3495 ], [ %3368, %3576 ], [ %3696, %3758 ], [ %3368, %3349 ]
  %3494 = icmp eq i32 %3425, %3348
  br i1 %3494, label %3771, label %3349

; <label>:3495                                    ; preds = %3349
  %3496 = extractvalue %dx.types.ResRet.f32 %3395, 3
  %3497 = extractvalue %dx.types.ResRet.f32 %3395, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3499 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3500 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3501 = extractvalue %dx.types.ResRet.i32 %3381, 3
  %3502 = extractvalue %dx.types.ResRet.i32 %3381, 2
  %3503 = add i32 %3501, 0
  %3504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3503, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3506 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3504, %dx.types.Handle %3505, float %3434, float %3441, float undef, float undef, i32 0, i32 0, i32 undef, float %3462, float %3464, float undef, float %3463, float %3465, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = fmul fast float %3507, %3500
  %3509 = fadd fast float %3508, %3499
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = fmul fast float %3434, %3390
  %3512 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3441, float %3511)  ; FMad(a,b,c)
  %3513 = fadd fast float %3512, %3498
  %3514 = fmul fast float %3434, %3392
  %3515 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3441, float %3514)  ; FMad(a,b,c)
  %3516 = fadd fast float %3515, %3497
  %3517 = fmul fast float %3462, %3390
  %3518 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3464, float %3517)  ; FMad(a,b,c)
  %3519 = fmul fast float %3462, %3392
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3464, float %3519)  ; FMad(a,b,c)
  %3521 = fmul fast float %3463, %3390
  %3522 = call float @dx.op.tertiary.f32(i32 46, float %3391, float %3465, float %3521)  ; FMad(a,b,c)
  %3523 = fmul fast float %3463, %3392
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3393, float %3465, float %3523)  ; FMad(a,b,c)
  %3525 = add i32 %3502, 0
  %3526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3525, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3527 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3526, %dx.types.Handle %3505, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = and i32 %3426, 1024
  %3530 = icmp ne i32 %3529, 0
  %3531 = fcmp fast ogt float %3528, 0x3FE0101020000000
  %3532 = uitofp i1 %3531 to float
  %3533 = select i1 %3530, float %3532, float %3528
  %3534 = and i32 %3426, 8192
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3496, float 1.000000e+00
  %3537 = fmul fast float %3434, 2.000000e+00
  %3538 = fadd fast float %3537, -1.000000e+00
  %3539 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3540 = fmul fast float %3539, %3423
  %3541 = fsub fast float %3540, %3423
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3543 = fmul fast float %3441, 2.000000e+00
  %3544 = fadd fast float %3543, -1.000000e+00
  %3545 = call float @dx.op.unary.f32(i32 6, float %3544)  ; FAbs(value)
  %3546 = fmul fast float %3545, %3424
  %3547 = fsub fast float %3546, %3424
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fmul fast float %3453, %3386
  %3550 = fsub fast float %3549, %3386
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = fmul fast float %3510, %3536
  %3553 = fmul fast float %3552, %3507
  %3554 = fmul fast float %3553, %3542
  %3555 = fmul fast float %3554, %3533
  %3556 = fmul fast float %3555, %3548
  %3557 = fmul fast float %3556, %3551
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %3561 = fsub fast float %3470, %3560
  %3562 = fmul fast float %3561, %3559
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3557, %3387
  %3565 = fadd fast float %3557, %3387
  %3566 = fmul fast float %3565, %3396
  %3567 = fsub fast float %3566, %3396
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3569 = and i32 %3426, 128
  %3570 = icmp ne i32 %3569, 0
  %3571 = select i1 %3570, float %3568, float %3564
  %3572 = fmul fast float %3571, %3563
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 0
  %3575 = fcmp fast ugt float %3572, %3574
  br i1 %3575, label %3576, label %3475

; <label>:3576                                    ; preds = %3495
  %3577 = select i1 %3535, float %3572, float 0.000000e+00
  %3578 = fadd fast float %3577, %3351
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  br i1 %3535, label %3475, label %3580

; <label>:3580                                    ; preds = %3576
  %3581 = and i32 %3426, 4
  %3582 = and i32 %3426, 8
  %3583 = add i32 %3382, 0
  %3584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3584, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = bitcast float %3408 to i32
  %3592 = and i32 %3591, 255
  %3593 = uitofp i32 %3592 to float
  %3594 = lshr i32 %3591, 8
  %3595 = and i32 %3594, 255
  %3596 = uitofp i32 %3595 to float
  %3597 = fmul fast float %3590, %3593
  %3598 = fadd fast float %3597, %3596
  %3599 = fmul fast float %3598, 0x3F70101000000000
  %3600 = add i32 %3383, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3600, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3601, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = bitcast float %3402 to i32
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = lshr i32 %3607, 8
  %3611 = and i32 %3610, 255
  %3612 = uitofp i32 %3611 to float
  %3613 = lshr i32 %3607, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101000000000
  %3617 = fmul fast float %3603, %3609
  %3618 = fadd fast float %3617, %3612
  %3619 = fmul fast float %3618, 0x3F70101000000000
  %3620 = fadd fast float %3604, -5.000000e-01
  %3621 = fadd fast float %3606, -5.000000e-01
  %3622 = fmul fast float %3620, %3616
  %3623 = fmul fast float %3621, %3616
  %3624 = fadd fast float %3622, 5.000000e-01
  %3625 = fadd fast float %3623, 5.000000e-01
  %3626 = fmul fast float %3587, %3411
  %3627 = fmul fast float %3588, %3412
  %3628 = fmul fast float %3589, %3413
  %3629 = fmul fast float %3624, 2.000000e+00
  %3630 = fadd fast float %3629, -1.000000e+00
  %3631 = fmul fast float %3625, 2.000000e+00
  %3632 = fadd fast float %3631, -1.000000e+00
  %3633 = fadd fast float %3630, %3632
  %3634 = fmul fast float %3633, 5.000000e-01
  %3635 = fsub fast float %3630, %3632
  %3636 = fmul fast float %3635, 5.000000e-01
  %3637 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3638 = fsub fast float 1.000000e+00, %3637
  %3639 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3640 = fsub fast float %3638, %3639
  %3641 = call float @dx.op.dot3.f32(i32 55, float %3634, float %3636, float %3640, float %3634, float %3636, float %3640)  ; Dot3(ax,ay,az,bx,by,bz)
  %3642 = call float @dx.op.unary.f32(i32 25, float %3641)  ; Rsqrt(value)
  %3643 = fmul fast float %3634, %3642
  %3644 = fmul fast float %3636, %3642
  %3645 = fmul fast float %3642, %3640
  %3646 = fmul fast float %3645, %3376
  %3647 = fmul fast float %3645, %3377
  %3648 = fmul fast float %3645, %3378
  %3649 = fmul fast float %3643, %3399
  %3650 = fmul fast float %3643, %3400
  %3651 = fmul fast float %3643, %3401
  %3652 = fadd fast float %3649, %3646
  %3653 = fadd fast float %3650, %3647
  %3654 = fadd fast float %3651, %3648
  %3655 = fmul fast float %3644, %3405
  %3656 = fmul fast float %3644, %3406
  %3657 = fmul fast float %3644, %3407
  %3658 = fadd fast float %3652, %3655
  %3659 = fadd fast float %3653, %3656
  %3660 = fadd fast float %3654, %3657
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3658, float %3659, float %3660, float %3658, float %3659, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.unary.f32(i32 25, float %3661)  ; Rsqrt(value)
  %3663 = fmul fast float %3658, %3662
  %3664 = fmul fast float %3659, %3662
  %3665 = fmul fast float %3660, %3662
  %3666 = icmp ne i32 %3582, 0
  %3667 = select i1 %3666, float 1.000000e+00, float 0.000000e+00
  %3668 = fmul fast float %3572, %3667
  %3669 = and i32 %3426, 1
  %3670 = icmp eq i32 %3669, 0
  br i1 %3670, label %3671, label %3675

; <label>:3671                                    ; preds = %3580
  %3672 = fsub fast float %3663, %3359
  %3673 = fsub fast float %3664, %3360
  %3674 = fsub fast float %3665, %3361
  br label %3675

; <label>:3675                                    ; preds = %3671, %3580
  %3676 = phi float [ %3672, %3671 ], [ %3663, %3580 ]
  %3677 = phi float [ %3673, %3671 ], [ %3664, %3580 ]
  %3678 = phi float [ %3674, %3671 ], [ %3665, %3580 ]
  %3679 = fmul float %3678, %3668
  %3680 = fmul float %3677, %3668
  %3681 = fmul float %3676, %3668
  %3682 = fadd fast float %3681, %3359
  %3683 = fadd fast float %3680, %3360
  %3684 = fadd fast float %3679, %3361
  %3685 = icmp ne i32 %3581, 0
  %3686 = select i1 %3685, float 1.000000e+00, float 0.000000e+00
  %3687 = fmul fast float %3572, %3686
  %3688 = fsub fast float %3626, %3366
  %3689 = fsub fast float %3627, %3367
  %3690 = fsub fast float %3628, %3368
  %3691 = fmul fast float %3688, %3687
  %3692 = fmul fast float %3689, %3687
  %3693 = fmul fast float %3690, %3687
  %3694 = fadd fast float %3691, %3366
  %3695 = fadd fast float %3692, %3367
  %3696 = fadd fast float %3693, %3368
  %3697 = fsub fast float %3599, %3365
  %3698 = fmul fast float %3697, %3687
  %3699 = fadd fast float %3698, %3365
  %3700 = fmul fast float %3687, %3355
  %3701 = fsub fast float %3355, %3700
  %3702 = fmul fast float %3687, %3354
  %3703 = fsub fast float %3354, %3702
  %3704 = fadd fast float %3572, %3364
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = fsub fast float %3619, %3363
  %3707 = fmul fast float %3706, %3668
  %3708 = fadd fast float %3707, %3363
  %3709 = fsub fast float %3605, %3362
  %3710 = fmul fast float %3709, %3668
  %3711 = fadd fast float %3710, %3362
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3626, float %3627, float %3628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = fmul fast float %3715, %3712
  %3717 = fadd fast float %3716, %3714
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = bitcast float %3414 to i32
  %3720 = and i32 %3719, 65535
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = lshr i32 %3719, 16
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = fcmp fast oge float %3721, 0.000000e+00
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = select i1 %3724, float %3721, float %3726
  %3728 = fadd fast float %3727, %3723
  %3729 = fsub fast float %3718, %3353
  %3730 = fmul fast float %3729, %3572
  %3731 = fadd fast float %3730, %3353
  %3732 = fmul fast float %3728, %3572
  %3733 = call float @dx.op.binary.f32(i32 35, float %3352, float %3732)  ; FMax(a,b)
  %3734 = and i32 %3426, 16
  %3735 = icmp eq i32 %3734, 0
  br i1 %3735, label %3758, label %3736

; <label>:3736                                    ; preds = %3675
  %3737 = bitcast float %3420 to i32
  %3738 = add i32 %3417, 0
  %3739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3738, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3740 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3739, %dx.types.Handle %3585, float %3513, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3518, float %3520, float undef, float %3522, float %3524, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3740, 2
  %3744 = and i32 %3737, 65535
  %3745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3744)  ; LegacyF16ToF32(value)
  %3746 = fmul fast float %3741, %3411
  %3747 = fmul fast float %3742, %3412
  %3748 = fmul fast float %3743, %3413
  %3749 = and i32 %3426, 16384
  %3750 = icmp ne i32 %3749, 0
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = select i1 %3750, float %3752, float 1.000000e+00
  %3754 = fmul fast float %3753, %3745
  %3755 = fmul fast float %3746, %3754
  %3756 = fmul fast float %3747, %3754
  %3757 = fmul fast float %3748, %3754
  br label %3758

; <label>:3758                                    ; preds = %3736, %3675
  %3759 = phi float [ %3755, %3736 ], [ 0.000000e+00, %3675 ]
  %3760 = phi float [ %3756, %3736 ], [ 0.000000e+00, %3675 ]
  %3761 = phi float [ %3757, %3736 ], [ 0.000000e+00, %3675 ]
  %3762 = fsub fast float %3759, %3356
  %3763 = fsub fast float %3760, %3357
  %3764 = fsub fast float %3761, %3358
  %3765 = fmul fast float %3762, %3572
  %3766 = fmul fast float %3763, %3572
  %3767 = fmul fast float %3764, %3572
  %3768 = fadd fast float %3765, %3356
  %3769 = fadd fast float %3766, %3357
  %3770 = fadd fast float %3767, %3358
  br label %3475

; <label>:3771                                    ; preds = %3475
  br label %3772

; <label>:3772                                    ; preds = %3771, %3295
  %3773 = phi float [ 0.000000e+00, %3295 ], [ %3476, %3771 ]
  %3774 = phi float [ %3170, %3295 ], [ %3477, %3771 ]
  %3775 = phi float [ %3162, %3295 ], [ %3478, %3771 ]
  %3776 = phi float [ 0.000000e+00, %3295 ], [ %3479, %3771 ]
  %3777 = phi float [ 0.000000e+00, %3295 ], [ %3480, %3771 ]
  %3778 = phi float [ %3262, %3295 ], [ %3481, %3771 ]
  %3779 = phi float [ %3263, %3295 ], [ %3482, %3771 ]
  %3780 = phi float [ %3264, %3295 ], [ %3483, %3771 ]
  %3781 = phi float [ %3290, %3295 ], [ %3484, %3771 ]
  %3782 = phi float [ %3291, %3295 ], [ %3485, %3771 ]
  %3783 = phi float [ %3292, %3295 ], [ %3486, %3771 ]
  %3784 = phi float [ %3161, %3295 ], [ %3487, %3771 ]
  %3785 = phi float [ %3160, %3295 ], [ %3488, %3771 ]
  %3786 = phi float [ 0.000000e+00, %3295 ], [ %3489, %3771 ]
  %3787 = phi float [ %3159, %3295 ], [ %3490, %3771 ]
  %3788 = phi float [ %3156, %3295 ], [ %3491, %3771 ]
  %3789 = phi float [ %3157, %3295 ], [ %3492, %3771 ]
  %3790 = phi float [ %3158, %3295 ], [ %3493, %3771 ]
  %3791 = call float @dx.op.dot3.f32(i32 55, float %3781, float %3782, float %3783, float %3781, float %3782, float %3783)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = call float @dx.op.unary.f32(i32 25, float %3791)  ; Rsqrt(value)
  %3793 = fmul fast float %3792, %3781
  %3794 = fmul fast float %3792, %3782
  %3795 = fmul fast float %3792, %3783
  %3796 = fadd fast float %3786, %810
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3794, float %3795, float %3793, float %3794, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call float @dx.op.unary.f32(i32 25, float %3798)  ; Rsqrt(value)
  %3800 = fmul fast float %3799, %3793
  %3801 = fmul fast float %3799, %3794
  %3802 = fmul fast float %3799, %3795
  br label %3803

; <label>:3803                                    ; preds = %3772, %3196
  %3804 = phi float [ %3800, %3772 ], [ %3290, %3196 ]
  %3805 = phi float [ %3801, %3772 ], [ %3291, %3196 ]
  %3806 = phi float [ %3802, %3772 ], [ %3292, %3196 ]
  %3807 = phi float [ %3788, %3772 ], [ %3156, %3196 ]
  %3808 = phi float [ %3789, %3772 ], [ %3157, %3196 ]
  %3809 = phi float [ %3790, %3772 ], [ %3158, %3196 ]
  %3810 = phi float [ %3778, %3772 ], [ %3262, %3196 ]
  %3811 = phi float [ %3779, %3772 ], [ %3263, %3196 ]
  %3812 = phi float [ %3780, %3772 ], [ %3264, %3196 ]
  %3813 = phi float [ %3787, %3772 ], [ %3159, %3196 ]
  %3814 = phi float [ %3797, %3772 ], [ %810, %3196 ]
  %3815 = phi float [ %3785, %3772 ], [ %3160, %3196 ]
  %3816 = phi float [ %3784, %3772 ], [ %3161, %3196 ]
  %3817 = phi float [ %3777, %3772 ], [ 0.000000e+00, %3196 ]
  %3818 = phi float [ %3776, %3772 ], [ 0.000000e+00, %3196 ]
  %3819 = phi float [ %3773, %3772 ], [ 0.000000e+00, %3196 ]
  %3820 = phi float [ %3774, %3772 ], [ %3170, %3196 ]
  %3821 = phi float [ %3775, %3772 ], [ %3162, %3196 ]
  %3822 = fadd fast float %3813, 0xBFB99999A0000000
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3823, 0x3FF1C71C80000000
  %3825 = call float @dx.op.binary.f32(i32 36, float %3813, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3826 = fsub fast float 1.000000e+00, %3824
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3828 = fmul fast float %3827, %3807
  %3829 = fmul fast float %3827, %3808
  %3830 = fmul fast float %3827, %3809
  %3831 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = fmul fast float %3824, %3807
  %3835 = fmul fast float %3824, %3808
  %3836 = fmul fast float %3824, %3809
  %3837 = fadd fast float %3834, %3825
  %3838 = fadd fast float %3835, %3825
  %3839 = fadd fast float %3836, %3825
  %3840 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.i32 %3844, 3
  %3846 = and i32 %3845, 8
  %3847 = icmp ne i32 %3846, 0
  %3848 = call float @dx.op.binary.f32(i32 35, float %3831, float %3807)  ; FMax(a,b)
  %3849 = call float @dx.op.binary.f32(i32 35, float %3832, float %3807)  ; FMax(a,b)
  %3850 = call float @dx.op.binary.f32(i32 35, float %3833, float %3807)  ; FMax(a,b)
  %3851 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3852 = select i1 %189, float %3807, float %3831
  %3853 = select i1 %189, float %3851, float %3832
  %3854 = select i1 %189, float 1.000000e+00, float %3833
  %3855 = select i1 %3847, float %3848, float %3852
  %3856 = select i1 %3847, float %3849, float %3853
  %3857 = select i1 %3847, float %3850, float %3854
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3862 = fadd fast float %3859, %147
  %3863 = fadd fast float %3860, %148
  %3864 = fadd fast float %3861, %149
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3868 = fsub fast float %3862, %3866
  %3869 = fsub fast float %3863, %3867
  %3870 = fmul fast float %3868, %3868
  %3871 = fmul fast float %3869, %3869
  %3872 = fadd fast float %3870, %3871
  %3873 = call float @dx.op.unary.f32(i32 24, float %3872)  ; Sqrt(value)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3875 = fcmp fast olt float %3873, %3874
  br i1 %3875, label %3876, label %3943

; <label>:3876                                    ; preds = %3803
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3877, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3885 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3886 = extractvalue %dx.types.CBufRet.f32 %3877, 3
  %3887 = extractvalue %dx.types.CBufRet.f32 %3879, 3
  %3888 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3889 = fadd fast float %3886, %3862
  %3890 = fadd fast float %3887, %3863
  %3891 = fadd fast float %3888, %3864
  %3892 = fmul fast float %3889, %3878
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3880, float %3892)  ; FMad(a,b,c)
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3891, float %3882, float %3893)  ; FMad(a,b,c)
  %3895 = fmul fast float %3889, %3883
  %3896 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3884, float %3895)  ; FMad(a,b,c)
  %3897 = call float @dx.op.tertiary.f32(i32 46, float %3891, float %3885, float %3896)  ; FMad(a,b,c)
  %3898 = fsub fast float %3894, %3886
  %3899 = fsub fast float %3897, %3887
  %3900 = fsub fast float %3898, %3866
  %3901 = fadd fast float %3900, %3874
  %3902 = fsub fast float %3899, %3867
  %3903 = fadd fast float %3902, %3874
  %3904 = extractvalue %dx.types.CBufRet.f32 %3865, 3
  %3905 = fmul fast float %3901, %3904
  %3906 = fmul fast float %3903, %3904
  %3907 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3909 = fsub fast float 1.000000e+00, %3907
  %3910 = fsub fast float 1.000000e+00, %3908
  %3911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %3909, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = fcmp fast ugt float %3912, 0.000000e+00
  br i1 %3913, label %3914, label %4217

; <label>:3914                                    ; preds = %3876
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3917 = fmul fast float %3916, %3912
  %3918 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3919 = fadd fast float %3918, %3917
  %3920 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3921 = fadd fast float %3919, %3888
  %3922 = fmul fast float %3894, %3882
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3885, float %3922)  ; FMad(a,b,c)
  %3924 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3920, float %3923)  ; FMad(a,b,c)
  %3925 = fsub fast float %3924, %3888
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3928 = fsub fast float %3925, %3927
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %3909, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %3909, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = fadd fast float %3934, %3930
  %3938 = fmul fast float %3937, 0x3F847AE140000000
  %3939 = fadd fast float %3935, %3931
  %3940 = fmul fast float %3939, 0x3F847AE140000000
  %3941 = fadd fast float %3936, %3932
  %3942 = fmul fast float %3941, 0x3F847AE140000000
  br label %4217

; <label>:3943                                    ; preds = %3803
  %3944 = and i32 %165, 1
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %4217, label %3946

; <label>:3946                                    ; preds = %3943
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3954 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3955 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3957 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3958 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3959 = fadd fast float %3956, %3862
  %3960 = fadd fast float %3957, %3863
  %3961 = fadd fast float %3958, %3864
  %3962 = fmul fast float %3959, %3948
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %3950, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3952, float %3963)  ; FMad(a,b,c)
  %3965 = fmul fast float %3959, %3953
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %3954, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3955, float %3966)  ; FMad(a,b,c)
  %3968 = fsub fast float %3964, %3956
  %3969 = fsub fast float %3967, %3957
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.CBufRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.CBufRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.CBufRet.f32 %3970, 3
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.i32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.i32 %3977, 1
  %3980 = udiv i32 %3979, %3978
  %3981 = fsub fast float %3968, %3971
  %3982 = fsub fast float %3969, %3972
  %3983 = call float @dx.op.binary.f32(i32 35, float %3981, float 0.000000e+00)  ; FMax(a,b)
  %3984 = call float @dx.op.binary.f32(i32 35, float %3982, float 0.000000e+00)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 36, float %3983, float %3973)  ; FMin(a,b)
  %3986 = call float @dx.op.binary.f32(i32 36, float %3984, float %3974)  ; FMin(a,b)
  %3987 = add i32 %3978, -1
  %3988 = add i32 %3980, -1
  %3989 = fmul fast float %3985, %3976
  %3990 = fmul fast float %3986, %3976
  %3991 = fptoui float %3989 to i32
  %3992 = fptoui float %3990 to i32
  %3993 = call i32 @dx.op.binary.i32(i32 40, i32 %3991, i32 %3987)  ; UMin(a,b)
  %3994 = call i32 @dx.op.binary.i32(i32 40, i32 %3992, i32 %3988)  ; UMin(a,b)
  %3995 = mul i32 %3994, %3978
  %3996 = add i32 %3995, %3993
  %3997 = shl i32 %3996, 2
  %3998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.i32 %3998, 0
  %4000 = icmp eq i32 %3999, -1
  br i1 %4000, label %4217, label %4001

; <label>:4001                                    ; preds = %3946
  %4002 = mul i32 %3999, 148
  %4003 = add i32 %4002, 4
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = add i32 %4002, 8
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = add i32 %4002, 36
  %4010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4009, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = add i32 %4002, 60
  %4013 = add i32 %4002, 92
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = add i32 %4002, 116
  %4017 = fsub fast float %3968, %4005
  %4018 = fsub fast float %3969, %4008
  %4019 = fmul fast float %3976, %4017
  %4020 = fmul fast float %3976, %4018
  %4021 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4022 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4023 = fsub fast float 1.000000e+00, %4022
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4026 = call float @dx.op.unary.f32(i32 83, float %4021)  ; DerivCoarseX(value)
  %4027 = call float @dx.op.unary.f32(i32 83, float %4023)  ; DerivCoarseX(value)
  %4028 = call float @dx.op.unary.f32(i32 84, float %4021)  ; DerivCoarseY(value)
  %4029 = call float @dx.op.unary.f32(i32 84, float %4023)  ; DerivCoarseY(value)
  %4030 = fmul fast float %4026, %4025
  %4031 = fmul fast float %4027, %4025
  %4032 = fmul fast float %4028, %4025
  %4033 = fmul fast float %4029, %4025
  %4034 = call float @dx.op.dot2.f32(i32 54, float %4032, float %4033, float %4032, float %4033)  ; Dot2(ax,ay,bx,by)
  %4035 = call float @dx.op.dot2.f32(i32 54, float %4030, float %4031, float %4030, float %4031)  ; Dot2(ax,ay,bx,by)
  %4036 = call float @dx.op.binary.f32(i32 35, float %4035, float %4034)  ; FMax(a,b)
  %4037 = call float @dx.op.unary.f32(i32 23, float %4036)  ; Log(value)
  %4038 = fmul fast float %4037, 5.000000e-01
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4041 = fadd fast float %4040, %4038
  %4042 = call float @dx.op.binary.f32(i32 35, float %4041, float 0.000000e+00)  ; FMax(a,b)
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4045 = fadd fast float %4044, %4042
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4048 = fadd fast float %4045, %4047
  %4049 = add i32 %4015, 0
  %4050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4049, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4051 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4050, i32 0)  ; GetDimensions(handle,mipLevel)
  %4052 = extractvalue %dx.types.Dimensions %4051, 0
  %4053 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4052)  ; FirstbitLo(value)
  %4054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.i32 %4054, 1
  %4056 = sub nsw i32 %4055, %4053
  %4057 = sitofp i32 %4056 to float
  %4058 = fsub fast float %4048, %4057
  %4059 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4050, %dx.types.Handle %42, float %4021, float %4023, float %4011, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = fcmp ule float %4061, 0x3FE0101020000000
  %4063 = extractvalue %dx.types.CBufRet.i32 %4054, 0
  %4064 = and i32 %4063, 128
  %4065 = icmp ne i32 %4064, 0
  %4066 = and i1 %4062, %4065
  br i1 %4066, label %4217, label %4067

; <label>:4067                                    ; preds = %4001
  %4068 = add i32 %4002, 20
  %4069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4068, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = add i32 %4002, 24
  %4072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = add i32 %4002, 40
  %4075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.f32 %4075, 0
  %4077 = add i32 %4002, 96
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4077, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 2
  %4082 = fmul fast float %4081, %4021
  %4083 = fmul fast float %4081, %4023
  %4084 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4085 = fadd fast float %4082, %4084
  %4086 = fadd fast float %4083, %4084
  %4087 = add i32 %4079, 0
  %4088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4087, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4089 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4088, i32 0)  ; GetDimensions(handle,mipLevel)
  %4090 = extractvalue %dx.types.Dimensions %4089, 0
  %4091 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4090)  ; FirstbitLo(value)
  %4092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.i32 %4092, 1
  %4094 = sub nsw i32 %4093, %4091
  %4095 = sitofp i32 %4094 to float
  %4096 = fsub fast float %4045, %4095
  %4097 = call float @dx.op.binary.f32(i32 35, float %4096, float 0.000000e+00)  ; FMax(a,b)
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4088, %dx.types.Handle %42, float %4085, float %4086, float %4076, float undef, i32 0, i32 0, i32 undef, float %4097)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = fmul fast float %4099, %4070
  %4101 = fadd fast float %4100, %4073
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4110 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4111 = fadd fast float %4107, %3968
  %4112 = fadd fast float %4109, %3969
  %4113 = fadd fast float %4101, %4110
  %4114 = fmul fast float %4111, %4103
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4104, float %4114)  ; FMad(a,b,c)
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4105, float %4115)  ; FMad(a,b,c)
  %4117 = fsub fast float %4116, %4110
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4120 = fsub fast float %4117, %4119
  %4121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.i32 %4121, 0
  %4123 = call i32 @dx.op.binary.i32(i32 40, i32 %3999, i32 %4122)  ; UMin(a,b)
  %4124 = mul i32 %4123, 36
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = add i32 %4124, 4
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = fmul fast float %4129, %4021
  %4131 = fmul fast float %4129, %4023
  %4132 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4133 = fadd fast float %4130, %4132
  %4134 = fadd fast float %4131, %4132
  %4135 = icmp eq i32 %4126, 0
  br i1 %4135, label %4204, label %4136

; <label>:4136                                    ; preds = %4067
  br label %4137

; <label>:4137                                    ; preds = %4194, %4136
  %4138 = phi float [ %4195, %4194 ], [ 0.000000e+00, %4136 ]
  %4139 = phi float [ %4196, %4194 ], [ 0.000000e+00, %4136 ]
  %4140 = phi float [ %4197, %4194 ], [ 0.000000e+00, %4136 ]
  %4141 = phi float [ %4198, %4194 ], [ 0.000000e+00, %4136 ]
  %4142 = phi float [ %4199, %4194 ], [ 0.000000e+00, %4136 ]
  %4143 = phi float [ %4200, %4194 ], [ 0.000000e+00, %4136 ]
  %4144 = phi i32 [ %4201, %4194 ], [ 0, %4136 ]
  %4145 = shl i32 %4144, 2
  %4146 = add i32 %4012, %4145
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = add i32 %4016, %4145
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = add i32 %4151, 0
  %4153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4152, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4154 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4153, i32 0)  ; GetDimensions(handle,mipLevel)
  %4155 = extractvalue %dx.types.Dimensions %4154, 0
  %4156 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4155)  ; FirstbitLo(value)
  %4157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.i32 %4157, 1
  %4159 = sub nsw i32 %4158, %4156
  %4160 = sitofp i32 %4159 to float
  %4161 = fsub fast float %4045, %4160
  %4162 = call float @dx.op.binary.f32(i32 35, float %4161, float 0.000000e+00)  ; FMax(a,b)
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4153, %dx.types.Handle %42, float %4133, float %4134, float %4148, float undef, i32 0, i32 0, i32 undef, float %4162)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = fcmp fast ogt float %4164, 0.000000e+00
  br i1 %4165, label %4166, label %4194

; <label>:4166                                    ; preds = %4137
  %4167 = add i32 %4127, %4145
  %4168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.i32 %4168, 0
  %4170 = and i32 %4169, 32767
  %4171 = mul nuw nsw i32 %4170, 928
  %4172 = add nuw nsw i32 %4171, 48
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = add nuw nsw i32 %4171, 60
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = fmul fast float %4174, %4164
  %4183 = fmul fast float %4175, %4164
  %4184 = fmul fast float %4176, %4164
  %4185 = fadd fast float %4182, %4138
  %4186 = fadd fast float %4183, %4139
  %4187 = fadd fast float %4184, %4140
  %4188 = fmul fast float %4179, %4164
  %4189 = fmul fast float %4180, %4164
  %4190 = fmul fast float %4181, %4164
  %4191 = fadd fast float %4188, %4141
  %4192 = fadd fast float %4189, %4142
  %4193 = fadd fast float %4190, %4143
  br label %4194

; <label>:4194                                    ; preds = %4166, %4137
  %4195 = phi float [ %4185, %4166 ], [ %4138, %4137 ]
  %4196 = phi float [ %4186, %4166 ], [ %4139, %4137 ]
  %4197 = phi float [ %4187, %4166 ], [ %4140, %4137 ]
  %4198 = phi float [ %4191, %4166 ], [ %4141, %4137 ]
  %4199 = phi float [ %4192, %4166 ], [ %4142, %4137 ]
  %4200 = phi float [ %4193, %4166 ], [ %4143, %4137 ]
  %4201 = add nuw i32 %4144, 1
  %4202 = icmp eq i32 %4201, %4126
  br i1 %4202, label %4203, label %4137

; <label>:4203                                    ; preds = %4194
  br label %4204

; <label>:4204                                    ; preds = %4203, %4067
  %4205 = phi float [ 0.000000e+00, %4067 ], [ %4195, %4203 ]
  %4206 = phi float [ 0.000000e+00, %4067 ], [ %4196, %4203 ]
  %4207 = phi float [ 0.000000e+00, %4067 ], [ %4197, %4203 ]
  %4208 = phi float [ 0.000000e+00, %4067 ], [ %4198, %4203 ]
  %4209 = phi float [ 0.000000e+00, %4067 ], [ %4199, %4203 ]
  %4210 = phi float [ 0.000000e+00, %4067 ], [ %4200, %4203 ]
  %4211 = fadd fast float %4208, %4205
  %4212 = fmul fast float %4211, 0x3F847AE140000000
  %4213 = fadd fast float %4209, %4206
  %4214 = fmul fast float %4213, 0x3F847AE140000000
  %4215 = fadd fast float %4210, %4207
  %4216 = fmul fast float %4215, 0x3F847AE140000000
  br label %4217

; <label>:4217                                    ; preds = %4204, %4001, %3946, %3943, %3914, %3876
  %4218 = phi float [ %3928, %3914 ], [ -1.310720e+05, %3876 ], [ %4120, %4204 ], [ -1.310720e+05, %3946 ], [ -1.310720e+05, %4001 ], [ -1.310720e+05, %3943 ]
  %4219 = phi float [ %3938, %3914 ], [ 0.000000e+00, %3876 ], [ %4212, %4204 ], [ 0.000000e+00, %3946 ], [ 0.000000e+00, %4001 ], [ 0.000000e+00, %3943 ]
  %4220 = phi float [ %3940, %3914 ], [ 0.000000e+00, %3876 ], [ %4214, %4204 ], [ 0.000000e+00, %3946 ], [ 0.000000e+00, %4001 ], [ 0.000000e+00, %3943 ]
  %4221 = phi float [ %3942, %3914 ], [ 0.000000e+00, %3876 ], [ %4216, %4204 ], [ 0.000000e+00, %3946 ], [ 0.000000e+00, %4001 ], [ 0.000000e+00, %3943 ]
  %4222 = phi i1 [ true, %3914 ], [ false, %3876 ], [ true, %4204 ], [ false, %3946 ], [ false, %4001 ], [ false, %3943 ]
  %4223 = and i32 %165, 3
  %4224 = icmp eq i32 %4223, 1
  %4225 = select i1 %4224, float 1.000000e+00, float 0.000000e+00
  %4226 = fsub fast float %4218, %149
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = select i1 %4222, float %4227, float 1.000000e+00
  %4229 = fmul fast float %4228, %4225
  %4230 = icmp eq i32 %4223, 3
  %4231 = select i1 %4230, float 1.000000e+00, float %4229
  %4232 = call float @dx.op.binary.f32(i32 35, float %3819, float %4231)  ; FMax(a,b)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = fcmp fast une float %4233, 0.000000e+00
  %4235 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 25, float %4235)  ; Rsqrt(value)
  br i1 %4234, label %4244, label %4237

; <label>:4237                                    ; preds = %4217
  %4238 = fmul fast float %4236, %147
  %4239 = fmul fast float %4236, %148
  %4240 = fmul fast float %4236, %149
  %4241 = fsub fast float -0.000000e+00, %4238
  %4242 = fsub fast float -0.000000e+00, %4239
  %4243 = fsub fast float -0.000000e+00, %4240
  br label %4412

; <label>:4244                                    ; preds = %4217
  %4245 = fmul fast float %147, %4236
  %4246 = fsub fast float -0.000000e+00, %4245
  %4247 = fmul fast float %148, %4236
  %4248 = fsub fast float -0.000000e+00, %4247
  %4249 = fmul fast float %149, %4236
  %4250 = fsub fast float -0.000000e+00, %4249
  %4251 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4248, float %4250, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = fmul fast float %4233, 2.500000e+00
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4233, 0x4013FFFFE0000000
  %4255 = fadd fast float %4254, 0xBFFFFFFFE0000000
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4233, 0x4004000020000000
  %4258 = fadd fast float %4257, 0xBFF8000040000000
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4261 = fmul fast float %3822, 1.000000e+01
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fmul fast float %4262, 2.000000e+00
  %4264 = fsub fast float 3.000000e+00, %4263
  %4265 = fmul fast float %4262, %4262
  %4266 = fmul fast float %4265, %4264
  %4267 = fsub fast float 1.000000e+00, %4266
  %4268 = fsub fast float 0x3FE3333340000000, %3843
  %4269 = fmul fast float %4268, 0x400AAAAAA0000000
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = fmul fast float %4267, %4270
  %4272 = fmul fast float %3855, 0x3FEA2B8620000000
  %4273 = fmul fast float %3856, 0x3FEA2B8620000000
  %4274 = fmul fast float %3857, 0x3FEA2B8620000000
  %4275 = fadd fast float %4272, 0x3FC81DFBA0000000
  %4276 = fmul fast float %4275, %3855
  %4277 = fadd fast float %4276, 0x3F910E6020000000
  %4278 = fadd fast float %4273, 0x3FC81DFBA0000000
  %4279 = fmul fast float %4278, %3856
  %4280 = fadd fast float %4279, 0x3F910E6020000000
  %4281 = fadd fast float %4274, 0x3FC81DFBA0000000
  %4282 = fmul fast float %4281, %3857
  %4283 = fadd fast float %4282, 0x3F910E6020000000
  %4284 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = fsub fast float %4284, %3855
  %4288 = fsub fast float %4285, %3856
  %4289 = fsub fast float %4286, %3857
  %4290 = fmul fast float %4287, %4260
  %4291 = fmul fast float %4290, %4271
  %4292 = fmul fast float %4288, %4260
  %4293 = fmul fast float %4292, %4271
  %4294 = fmul fast float %4289, %4260
  %4295 = fmul fast float %4294, %4271
  %4296 = fadd fast float %4291, %3855
  %4297 = fadd fast float %4293, %3856
  %4298 = fadd fast float %4295, %3857
  %4299 = fmul fast float %3816, %3816
  %4300 = fmul fast float %4299, %4299
  %4301 = fadd fast float %4256, 1.000000e+00
  %4302 = fsub fast float %4301, %4271
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fsub fast float 1.000000e+00, %4300
  %4307 = call float @dx.op.binary.f32(i32 36, float %4303, float %4306)  ; FMin(a,b)
  %4308 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4309 = call float @dx.op.binary.f32(i32 35, float %4307, float %4308)  ; FMax(a,b)
  %4310 = fadd fast float %4305, 0xBFE4CCCCC0000000
  %4311 = fmul fast float %4310, 0x4006DB6DA0000000
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = fmul fast float %4312, 2.000000e+00
  %4314 = fsub fast float 3.000000e+00, %4313
  %4315 = bitcast float %3840 to i32
  %4316 = ashr i32 %4315, 1
  %4317 = add nsw i32 %4316, 532487669
  %4318 = bitcast i32 %4317 to float
  %4319 = fsub fast float 1.000000e+00, %4318
  %4320 = bitcast float %4319 to i32
  %4321 = sub nsw i32 2129859010, %4320
  %4322 = bitcast i32 %4321 to float
  %4323 = fmul fast float %4322, 2.000000e+00
  %4324 = bitcast float %3841 to i32
  %4325 = ashr i32 %4324, 1
  %4326 = add nsw i32 %4325, 532487669
  %4327 = bitcast i32 %4326 to float
  %4328 = fsub fast float 1.000000e+00, %4327
  %4329 = bitcast float %4328 to i32
  %4330 = sub nsw i32 2129859010, %4329
  %4331 = bitcast i32 %4330 to float
  %4332 = fmul fast float %4331, 2.000000e+00
  %4333 = bitcast float %3842 to i32
  %4334 = ashr i32 %4333, 1
  %4335 = add nsw i32 %4334, 532487669
  %4336 = bitcast i32 %4335 to float
  %4337 = fsub fast float 1.000000e+00, %4336
  %4338 = bitcast float %4337 to i32
  %4339 = sub nsw i32 2129859010, %4338
  %4340 = bitcast i32 %4339 to float
  %4341 = fmul fast float %4340, 2.000000e+00
  %4342 = fsub fast float 0x4002A9FBE0000000, %4323
  %4343 = fadd fast float %4323, 0x3FD54FDF00000000
  %4344 = bitcast float %4343 to i32
  %4345 = sub nsw i32 2129859010, %4344
  %4346 = bitcast i32 %4345 to float
  %4347 = fmul fast float %4346, %4342
  %4348 = fmul fast float %4347, %4347
  %4349 = fsub fast float 0x4002A9FBE0000000, %4332
  %4350 = fadd fast float %4332, 0x3FD54FDF00000000
  %4351 = bitcast float %4350 to i32
  %4352 = sub nsw i32 2129859010, %4351
  %4353 = bitcast i32 %4352 to float
  %4354 = fmul fast float %4353, %4349
  %4355 = fmul fast float %4354, %4354
  %4356 = fsub fast float 0x4002A9FBE0000000, %4341
  %4357 = fadd fast float %4341, 0x3FD54FDF00000000
  %4358 = bitcast float %4357 to i32
  %4359 = sub nsw i32 2129859010, %4358
  %4360 = bitcast i32 %4359 to float
  %4361 = fmul fast float %4360, %4356
  %4362 = fmul fast float %4361, %4361
  %4363 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4348)  ; FMax(a,b)
  %4364 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4355)  ; FMax(a,b)
  %4365 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4362)  ; FMax(a,b)
  %4366 = fsub fast float 1.000000e+00, %4251
  %4367 = fadd fast float %4366, %4267
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fsub fast float 1.000000e+00, %4231
  %4370 = fmul fast float %4309, %4369
  %4371 = fmul fast float %4312, %4312
  %4372 = fmul fast float %4371, %4370
  %4373 = fmul fast float %4372, %4314
  %4374 = fmul fast float %4369, 0xBFE99999A0000000
  %4375 = fmul fast float %4374, %4260
  %4376 = fmul fast float %4375, %4271
  %4377 = fadd fast float %4376, 1.000000e+00
  %4378 = fadd fast float %3843, -1.000000e+00
  %4379 = fmul fast float %4377, %4378
  %4380 = fadd fast float %4379, 1.000000e+00
  %4381 = fsub fast float %4363, %3840
  %4382 = fsub fast float %4364, %3841
  %4383 = fsub fast float %4365, %3842
  %4384 = fmul fast float %4373, %4381
  %4385 = fmul fast float %4373, %4382
  %4386 = fmul fast float %4373, %4383
  %4387 = fadd fast float %4384, %3840
  %4388 = fadd fast float %4385, %3841
  %4389 = fadd fast float %4386, %3842
  %4390 = fsub fast float %91, %3804
  %4391 = fsub fast float %92, %3805
  %4392 = fsub fast float %93, %3806
  %4393 = fmul fast float %4373, %4390
  %4394 = fmul fast float %4373, %4391
  %4395 = fmul fast float %4373, %4392
  %4396 = fadd fast float %4393, %3804
  %4397 = fadd fast float %4394, %3805
  %4398 = fadd fast float %4395, %3806
  %4399 = fmul fast float %4373, %4368
  %4400 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4401 = fsub fast float 1.000000e+00, %4400
  %4402 = fmul fast float %4399, %4401
  %4403 = fadd fast float %4402, %4400
  %4404 = fsub fast float 1.000000e+00, %3816
  %4405 = fmul fast float %4373, %4404
  %4406 = fadd fast float %4405, %3816
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4397, float %4398, float %4396, float %4397, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  %4409 = fmul fast float %4396, %4408
  %4410 = fmul fast float %4397, %4408
  %4411 = fmul fast float %4398, %4408
  br label %4412

; <label>:4412                                    ; preds = %4244, %4237
  %4413 = phi float [ %4243, %4237 ], [ %4250, %4244 ]
  %4414 = phi float [ %4242, %4237 ], [ %4248, %4244 ]
  %4415 = phi float [ %4241, %4237 ], [ %4246, %4244 ]
  %4416 = phi float [ %4240, %4237 ], [ %4249, %4244 ]
  %4417 = phi float [ %4239, %4237 ], [ %4247, %4244 ]
  %4418 = phi float [ %4238, %4237 ], [ %4245, %4244 ]
  %4419 = phi float [ %3840, %4237 ], [ %4387, %4244 ]
  %4420 = phi float [ %3841, %4237 ], [ %4388, %4244 ]
  %4421 = phi float [ %3842, %4237 ], [ %4389, %4244 ]
  %4422 = phi float [ %3855, %4237 ], [ %4296, %4244 ]
  %4423 = phi float [ %3856, %4237 ], [ %4297, %4244 ]
  %4424 = phi float [ %3857, %4237 ], [ %4298, %4244 ]
  %4425 = phi float [ %3804, %4237 ], [ %4409, %4244 ]
  %4426 = phi float [ %3805, %4237 ], [ %4410, %4244 ]
  %4427 = phi float [ %3806, %4237 ], [ %4411, %4244 ]
  %4428 = phi float [ %3843, %4237 ], [ %4403, %4244 ]
  %4429 = phi float [ %3816, %4237 ], [ %4406, %4244 ]
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 2
  %4432 = extractvalue %dx.types.CBufRet.f32 %4430, 3
  %4433 = fmul fast float %4431, %84
  %4434 = fmul fast float %4432, %85
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %4433, float %4434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = fmul fast float %4439, %4437
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fadd fast float %4441, -1.000000e+00
  %4443 = fmul fast float %4442, %4436
  %4444 = fadd fast float %4443, 1.000000e+00
  %4445 = select i1 %189, float 0.000000e+00, float %4421
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %4415, float %4414, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4417, float %4416, float %4425, float %4426, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = fmul fast float %4448, 2.000000e+00
  %4450 = fmul fast float %4449, %4425
  %4451 = fmul fast float %4449, %4426
  %4452 = fmul fast float %4449, %4427
  %4453 = fsub fast float %4418, %4450
  %4454 = fsub fast float %4417, %4451
  %4455 = fsub fast float %4416, %4452
  %4456 = call float @dx.op.binary.f32(i32 36, float %4429, float %4444)  ; FMin(a,b)
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = bitcast float %4457 to i32
  %4459 = ashr i32 %4458, 1
  %4460 = add nsw i32 %4459, 532487669
  %4461 = bitcast i32 %4460 to float
  %4462 = fsub fast float 1.000000e+00, %4428
  %4463 = call float @dx.op.binary.f32(i32 35, float %4462, float 0x3F847AE140000000)  ; FMax(a,b)
  %4464 = fmul fast float %4463, %4463
  %4465 = fmul fast float %4464, %4464
  %4466 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %4461, float %4465, float %4466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = fsub fast float 1.000000e+00, %4429
  %4470 = bitcast float %4469 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = fsub fast float 1.000000e+00, %61
  %4473 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4473, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4475 = fdiv fast float %4472, %4474
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4477, 5.000000e-01
  %4479 = fadd fast float %4478, 5.000000e-01
  %4480 = fmul fast float %4479, %61
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, %4475
  %4484 = fadd fast float %4480, %4483
  %4485 = fsub fast float 5.000000e-01, %4478
  %4486 = fmul fast float %4485, %4422
  %4487 = fmul fast float %4485, %4423
  %4488 = fmul fast float %4485, %4424
  %4489 = fadd fast float %4484, %4486
  %4490 = fadd fast float %4484, %4487
  %4491 = fadd fast float %4484, %4488
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fmul fast float %4493, 5.000000e-01
  %4495 = fadd fast float %4494, 5.000000e-01
  %4496 = fmul fast float %4495, %61
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = fmul fast float %4498, %4475
  %4500 = fadd fast float %4496, %4499
  %4501 = fsub fast float 5.000000e-01, %4494
  %4502 = fmul fast float %4501, %4422
  %4503 = fmul fast float %4501, %4423
  %4504 = fmul fast float %4501, %4424
  %4505 = fadd fast float %4500, %4502
  %4506 = fadd fast float %4500, %4503
  %4507 = fadd fast float %4500, %4504
  %4508 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = call float @dx.op.binary.f32(i32 36, float %4422, float %4510)  ; FMin(a,b)
  %4512 = fmul fast float %4511, %4457
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = bitcast float %4513 to i32
  %4515 = sub nsw i32 2129859010, %4514
  %4516 = bitcast i32 %4515 to float
  %4517 = call float @dx.op.binary.f32(i32 36, float %4423, float %4510)  ; FMin(a,b)
  %4518 = fmul fast float %4517, %4457
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = bitcast float %4519 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = call float @dx.op.binary.f32(i32 36, float %4424, float %4510)  ; FMin(a,b)
  %4524 = fmul fast float %4523, %4457
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = bitcast float %4525 to i32
  %4527 = sub nsw i32 2129859010, %4526
  %4528 = bitcast i32 %4527 to float
  %4529 = fmul fast float %4456, %62
  %4530 = fmul fast float %4529, %4489
  %4531 = fmul fast float %4530, %4516
  %4532 = fmul fast float %4456, %63
  %4533 = fmul fast float %4532, %4490
  %4534 = fmul fast float %4533, %4522
  %4535 = fmul fast float %4456, %64
  %4536 = fmul fast float %4535, %4491
  %4537 = fmul fast float %4536, %4528
  %4538 = call float @dx.op.binary.f32(i32 36, float %4419, float %4510)  ; FMin(a,b)
  %4539 = fmul fast float %4538, %4457
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = bitcast float %4540 to i32
  %4542 = sub nsw i32 2129859010, %4541
  %4543 = bitcast i32 %4542 to float
  %4544 = call float @dx.op.binary.f32(i32 36, float %4420, float %4510)  ; FMin(a,b)
  %4545 = fmul fast float %4544, %4457
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = call float @dx.op.binary.f32(i32 36, float %4445, float %4510)  ; FMin(a,b)
  %4551 = fmul fast float %4550, %4457
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4529, %4505
  %4557 = fmul fast float %4556, %4543
  %4558 = fmul fast float %4532, %4506
  %4559 = fmul fast float %4558, %4549
  %4560 = fmul fast float %4535, %4507
  %4561 = fmul fast float %4560, %4555
  %4562 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4534, float %4537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = select i1 %189, float 0.000000e+00, float %4531
  %4564 = select i1 %189, float %4562, float %4534
  %4565 = select i1 %189, float 0.000000e+00, float %4537
  %4566 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4559, float %4561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = select i1 %189, float 0.000000e+00, float %4557
  %4568 = select i1 %189, float %4566, float %4559
  %4569 = select i1 %189, float 0.000000e+00, float %4561
  %4570 = fmul fast float %4447, 9.843750e-01
  %4571 = fmul fast float %4428, 9.843750e-01
  %4572 = fadd fast float %4570, 7.812500e-03
  %4573 = fadd fast float %4571, 7.812500e-03
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %4572, float %4573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4577 = fmul fast float %4575, %4419
  %4578 = fmul fast float %4575, %4420
  %4579 = fmul fast float %4575, %4445
  %4580 = fadd fast float %4577, %4576
  %4581 = fadd fast float %4578, %4576
  %4582 = fadd fast float %4579, %4576
  %4583 = fcmp fast ogt float %3817, 0.000000e+00
  br i1 %4583, label %4584, label %4610

; <label>:4584                                    ; preds = %4412
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3817, float %4447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = fadd fast float %4586, -5.000000e-01
  %4590 = fadd fast float %4587, -5.000000e-01
  %4591 = fadd fast float %4588, -5.000000e-01
  %4592 = fsub fast float 1.000000e+00, %4419
  %4593 = fsub fast float 1.000000e+00, %4420
  %4594 = fsub fast float 1.000000e+00, %4445
  %4595 = fmul fast float %4419, 4.000000e+00
  %4596 = fmul fast float %4595, %4592
  %4597 = fmul fast float %4596, %4589
  %4598 = fmul fast float %4420, 4.000000e+00
  %4599 = fmul fast float %4598, %4593
  %4600 = fmul fast float %4599, %4590
  %4601 = fmul fast float %4445, 4.000000e+00
  %4602 = fmul fast float %4601, %4594
  %4603 = fmul fast float %4602, %4591
  %4604 = fadd fast float %4597, %4580
  %4605 = fadd fast float %4600, %4581
  %4606 = fadd fast float %4603, %4582
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  br label %4610

; <label>:4610                                    ; preds = %4584, %4412
  %4611 = phi float [ %4607, %4584 ], [ %4580, %4412 ]
  %4612 = phi float [ %4608, %4584 ], [ %4581, %4412 ]
  %4613 = phi float [ %4609, %4584 ], [ %4582, %4412 ]
  %4614 = call float @dx.op.binary.f32(i32 35, float %4612, float %4613)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 35, float %4611, float %4614)  ; FMax(a,b)
  %4616 = fsub fast float 1.000000e+00, %4615
  %4617 = fmul fast float %4615, %4428
  %4618 = fadd fast float %4617, %4428
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4624 = fmul fast float %4618, %4620
  %4625 = fadd fast float %4624, %4621
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4622, %4618
  %4628 = fadd fast float %4627, %4623
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fsub fast float 1.000000e+00, %4468
  %4631 = fadd fast float %4630, %4629
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = fcmp fast olt float %4632, 1.000000e+00
  br i1 %4633, label %4634, label %5489

; <label>:4634                                    ; preds = %4610
  %4635 = fcmp fast olt float %4626, 1.000000e+00
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = fcmp fast ogt float %4637, 0.000000e+00
  %4639 = or i1 %4635, %4638
  %4640 = or i1 %4635, %4638
  %4641 = xor i1 %4640, true
  %4642 = zext i1 %4641 to i32
  br i1 %4639, label %4643, label %4886

; <label>:4643                                    ; preds = %4634
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.CBufRet.f32 %4649, 2
  %4653 = extractvalue %dx.types.CBufRet.f32 %4649, 3
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4658 = extractvalue %dx.types.CBufRet.f32 %4654, 3
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %4663 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.CBufRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.CBufRet.f32 %4664, 2
  %4668 = extractvalue %dx.types.CBufRet.f32 %4664, 3
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.CBufRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.CBufRet.f32 %4669, 2
  %4673 = extractvalue %dx.types.CBufRet.f32 %4669, 3
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4670, float %4671, float %4672, float %4453, float %4454, float %4455)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = call float @dx.op.unary.f32(i32 6, float %4675)  ; FAbs(value)
  %4677 = fmul fast float %4676, 8.000000e+00
  %4678 = fadd fast float %4677, -6.000000e+00
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4674, 8.000000e+00
  %4681 = fmul fast float %4680, %4637
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fcmp fast ogt float %4682, 0.000000e+00
  br i1 %4683, label %4684, label %4861, !dx.controlflow.hints !88

; <label>:4684                                    ; preds = %4643
  %4685 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4687 = fsub fast float %4685, %4686
  %4688 = fmul fast float %4687, %4428
  %4689 = fadd fast float %4688, %4686
  %4690 = fmul fast float %202, 2.000000e+00
  %4691 = fmul fast float %203, 2.000000e+00
  %4692 = fadd fast float %4690, -1.000000e+00
  %4693 = fadd fast float %4691, -1.000000e+00
  %4694 = fmul fast float %4689, %4692
  %4695 = fmul fast float %4689, %4693
  %4696 = fadd fast float %4694, %84
  %4697 = fadd fast float %4695, %85
  %4698 = fmul fast float %4696, %4431
  %4699 = fmul fast float %4697, %4432
  %4700 = fadd fast float %4428, 0xBFE3333340000000
  %4701 = fmul fast float %4700, 0x4004000020000000
  %4702 = fsub fast float 1.000000e+00, %4701
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, 3.000000e+00
  %4705 = fadd fast float %4704, %202
  %4706 = call float @dx.op.unary.f32(i32 27, float %4705)  ; Round_ni(value)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4698, float %4699, float %4706, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = fcmp fast une float %4708, 0xFFF0000000000000
  %4710 = fcmp fast une float %4708, 0x7FF0000000000000
  %4711 = and i1 %4709, %4710
  %4712 = fcmp fast olt float %4708, 0.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = select i1 %4711, float 1.000000e+00, float 0.000000e+00
  %4716 = fmul fast float %4715, %4682
  %4717 = fcmp fast ogt float %4716, 0.000000e+00
  br i1 %4717, label %4718, label %4861, !dx.controlflow.hints !89

; <label>:4718                                    ; preds = %4684
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.CBufRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.CBufRet.f32 %4719, 2
  %4723 = select i1 %4712, float 0.000000e+00, float %4720
  %4724 = select i1 %4712, float 0.000000e+00, float %4721
  %4725 = select i1 %4712, float 0.000000e+00, float %4722
  %4726 = select i1 %4712, float %4645, float %4660
  %4727 = select i1 %4712, float %4650, float %4665
  %4728 = select i1 %4712, float %4655, float %4670
  %4729 = select i1 %4712, float %4646, float %4661
  %4730 = select i1 %4712, float %4651, float %4666
  %4731 = select i1 %4712, float %4656, float %4671
  %4732 = select i1 %4712, float %4647, float %4662
  %4733 = select i1 %4712, float %4652, float %4667
  %4734 = select i1 %4712, float %4657, float %4672
  %4735 = select i1 %4712, float %4648, float %4663
  %4736 = select i1 %4712, float %4653, float %4668
  %4737 = select i1 %4712, float %4658, float %4673
  %4738 = fadd fast float %4723, %147
  %4739 = fadd fast float %4724, %148
  %4740 = fadd fast float %4725, %149
  %4741 = fmul fast float %4738, %4726
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4739, float %4729, float %4741)  ; FMad(a,b,c)
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4732, float %4742)  ; FMad(a,b,c)
  %4744 = fadd fast float %4743, %4735
  %4745 = fmul fast float %4738, %4727
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4739, float %4730, float %4745)  ; FMad(a,b,c)
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4733, float %4746)  ; FMad(a,b,c)
  %4748 = fadd fast float %4747, %4736
  %4749 = fmul fast float %4738, %4728
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4739, float %4731, float %4749)  ; FMad(a,b,c)
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4734, float %4750)  ; FMad(a,b,c)
  %4752 = fadd fast float %4751, %4737
  %4753 = fdiv fast float 1.000000e+00, %4752
  %4754 = fmul fast float %4753, %4744
  %4755 = fmul fast float %4753, %4748
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.CBufRet.f32 %4756, 1
  %4759 = fmul fast float %4754, %4757
  %4760 = fmul fast float %4755, %4758
  %4761 = extractvalue %dx.types.CBufRet.f32 %4756, 2
  %4762 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4763 = fadd fast float %4759, %4761
  %4764 = fadd fast float %4760, %4762
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4767 = fmul fast float %4766, %4453
  %4768 = fmul fast float %4766, %4454
  %4769 = fmul fast float %4766, %4455
  %4770 = fadd fast float %4767, %4738
  %4771 = fadd fast float %4768, %4739
  %4772 = fadd fast float %4769, %4740
  %4773 = fmul fast float %4770, %4726
  %4774 = call float @dx.op.tertiary.f32(i32 46, float %4771, float %4729, float %4773)  ; FMad(a,b,c)
  %4775 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4732, float %4774)  ; FMad(a,b,c)
  %4776 = fadd fast float %4775, %4735
  %4777 = fmul fast float %4770, %4727
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4771, float %4730, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4733, float %4778)  ; FMad(a,b,c)
  %4780 = fadd fast float %4779, %4736
  %4781 = fmul fast float %4770, %4728
  %4782 = call float @dx.op.tertiary.f32(i32 46, float %4771, float %4731, float %4781)  ; FMad(a,b,c)
  %4783 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4734, float %4782)  ; FMad(a,b,c)
  %4784 = fadd fast float %4783, %4737
  %4785 = fdiv fast float 1.000000e+00, %4784
  %4786 = fmul fast float %4785, %4776
  %4787 = fmul fast float %4785, %4780
  %4788 = fmul fast float %4763, 2.000000e+00
  %4789 = fadd fast float %4788, -1.000000e+00
  %4790 = call float @dx.op.unary.f32(i32 6, float %4789)  ; FAbs(value)
  %4791 = fmul fast float %4790, 5.000000e+00
  %4792 = fadd fast float %4791, -4.000000e+00
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fmul fast float %4793, %4679
  %4795 = fsub fast float %4754, %4786
  %4796 = fmul fast float %4757, %4795
  %4797 = fmul fast float %4794, %4796
  %4798 = fsub fast float %4786, %4754
  %4799 = fmul fast float %4757, %4798
  %4800 = fadd fast float %4799, %4797
  %4801 = fsub fast float %4787, %4755
  %4802 = fmul fast float %4758, %4801
  %4803 = fmul fast float %4800, %4714
  %4804 = fmul fast float %4802, %4714
  %4805 = fadd fast float %4803, %4763
  %4806 = fadd fast float %4804, %4764
  %4807 = fsub fast float %4785, %4753
  %4808 = fmul fast float %4807, %4714
  %4809 = fadd fast float %4808, %4753
  %4810 = fdiv fast float 1.000000e+00, %4809
  %4811 = fadd fast float %4428, -1.000000e+00
  %4812 = fsub fast float %4810, %4752
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4815 = fmul fast float %4814, %4810
  %4816 = fdiv fast float 1.600000e+02, %4815
  %4817 = fmul fast float %4811, %4811
  %4818 = fmul fast float %4817, 0xBFB5B17960000000
  %4819 = fmul fast float %4818, %4812
  %4820 = fmul fast float %4819, %4816
  %4821 = call float @dx.op.unary.f32(i32 21, float %4820)  ; Exp(value)
  %4822 = fmul fast float %4821, 0x3FF04B2960000000
  %4823 = fsub fast float 0x3FF04B2960000000, %4822
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fmul fast float %4824, 4.000000e+00
  %4826 = fadd fast float %202, -5.000000e-01
  %4827 = fadd fast float %203, -5.000000e-01
  %4828 = fmul fast float %4824, 0x3FBEB851E0000000
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4829, %4826
  %4831 = fmul fast float %4829, %4827
  %4832 = fadd fast float %4805, %4830
  %4833 = fadd fast float %4806, %4831
  %4834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %4832, float %4833, float undef, float undef, i32 0, i32 0, i32 undef, float %4825)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.ResRet.f32 %4834, 1
  %4837 = extractvalue %dx.types.ResRet.f32 %4834, 2
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4840 = fmul fast float %4839, %4835
  %4841 = fmul fast float %4839, %4836
  %4842 = fmul fast float %4839, %4837
  %4843 = select i1 %189, float 0.000000e+00, float %4841
  %4844 = select i1 %189, float 0.000000e+00, float %4842
  %4845 = fmul fast float %4832, 2.000000e+00
  %4846 = fmul fast float %4833, 2.000000e+00
  %4847 = fadd fast float %4845, -1.000000e+00
  %4848 = fadd fast float %4846, -1.000000e+00
  %4849 = fmul fast float %4847, %4847
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = fmul fast float %4852, %4679
  %4854 = fadd fast float %4853, %4851
  %4855 = fmul fast float %4848, %4848
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4854, %4857
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, %4716
  br label %4861

; <label>:4861                                    ; preds = %4718, %4684, %4643
  %4862 = phi float [ %4840, %4718 ], [ 0.000000e+00, %4684 ], [ 0.000000e+00, %4643 ]
  %4863 = phi float [ %4843, %4718 ], [ 0.000000e+00, %4684 ], [ 0.000000e+00, %4643 ]
  %4864 = phi float [ %4844, %4718 ], [ 0.000000e+00, %4684 ], [ 0.000000e+00, %4643 ]
  %4865 = phi float [ %4860, %4718 ], [ 0.000000e+00, %4684 ], [ 0.000000e+00, %4643 ]
  %4866 = fcmp fast olt float %4865, 1.000000e+00
  %4867 = or i1 %4866, %4641
  %4868 = zext i1 %4867 to i32
  %4869 = fmul fast float %4865, %4626
  %4870 = fsub fast float %4865, %4869
  %4871 = fsub fast float 1.000000e+00, %4632
  %4872 = fmul fast float %4870, %4871
  %4873 = fadd fast float %4872, %4632
  %4874 = fsub fast float %4873, %4870
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = fmul fast float %4875, %4567
  %4877 = fmul fast float %4875, %4568
  %4878 = fmul fast float %4875, %4569
  %4879 = fsub fast float -0.000000e+00, %4873
  %4880 = fmul fast float %4870, %4862
  %4881 = fmul fast float %4870, %4863
  %4882 = fmul fast float %4870, %4864
  %4883 = fadd fast float %4880, %4876
  %4884 = fadd fast float %4881, %4877
  %4885 = fadd fast float %4882, %4878
  br label %4886

; <label>:4886                                    ; preds = %4861, %4634
  %4887 = phi float [ %4632, %4634 ], [ %4879, %4861 ]
  %4888 = phi float [ %4567, %4634 ], [ %4883, %4861 ]
  %4889 = phi float [ %4568, %4634 ], [ %4884, %4861 ]
  %4890 = phi float [ %4569, %4634 ], [ %4885, %4861 ]
  %4891 = phi i32 [ %4642, %4634 ], [ %4868, %4861 ]
  %4892 = icmp eq i32 %4891, 0
  br i1 %4892, label %5489, label %4893

; <label>:4893                                    ; preds = %4886
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4897 = fmul fast float %4895, %84
  %4898 = fmul fast float %4896, %85
  %4899 = fptoui float %4897 to i32
  %4900 = fptoui float %4898 to i32
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 2
  %4904 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4905 = fadd fast float %79, -4.000000e+00
  %4906 = call float @dx.op.binary.f32(i32 35, float %4905, float 0.000000e+00)  ; FMax(a,b)
  %4907 = fadd fast float %4906, %4902
  %4908 = fmul fast float %4907, %4903
  %4909 = call float @dx.op.unary.f32(i32 23, float %4908)  ; Log(value)
  %4910 = fmul fast float %4909, %4904
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4913 = fmul fast float %4910, %4912
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.i32 %4915, 1
  %4917 = add i32 %4916, -1
  %4918 = uitofp i32 %4916 to float
  %4919 = fmul fast float %4918, %4914
  %4920 = fptoui float %4919 to i32
  %4921 = call i32 @dx.op.binary.i32(i32 40, i32 %4920, i32 %4917)  ; UMin(a,b)
  %4922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.i32 %4922, 2
  %4924 = extractvalue %dx.types.CBufRet.i32 %4922, 3
  %4925 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4900, i32 %4923, i32 %4899)  ; UMad(a,b,c)
  %4926 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4921, i32 %4924, i32 %4925)  ; UMad(a,b,c)
  %4927 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %4928 = fptoui float %4927 to i32
  %4929 = lshr i32 %4928, 5
  %4930 = call i32 @dx.op.binary.i32(i32 40, i32 %4929, i32 8191)  ; UMin(a,b)
  %4931 = fcmp fast ogt float %4227, 0.000000e+00
  %4932 = fcmp fast ogt float %4455, 0.000000e+00
  %4933 = and i1 %4932, %4931
  br i1 %4933, label %4934, label %4963

; <label>:4934                                    ; preds = %4893
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4935, float -1.000000e+00)  ; FMax(a,b)
  %4937 = call float @dx.op.binary.f32(i32 36, float %4936, float 1.000000e+00)  ; FMin(a,b)
  %4938 = fmul fast float %4937, %4937
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = fmul fast float %4939, 0x3FFC6E2300000000
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = fcmp fast ogt float %4941, 0.000000e+00
  %4943 = call float @dx.op.unary.f32(i32 24, float %4941)  ; Sqrt(value)
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = call float @dx.op.unary.f32(i32 23, float %4944)  ; Log(value)
  %4946 = fmul fast float %4945, 5.000000e+00
  %4947 = call float @dx.op.unary.f32(i32 21, float %4946)  ; Exp(value)
  %4948 = fmul fast float %4947, 0x3FEF591A60000000
  %4949 = fadd fast float %4948, 0x3F94DCB540000000
  %4950 = select i1 %4942, float %4949, float 1.000000e+00
  %4951 = fcmp fast oge float %4950, 1.000000e+00
  %4952 = fmul fast float %4935, 2.000000e+00
  %4953 = fadd fast float %4952, %4455
  %4954 = select i1 %4951, float %4953, float %4455
  %4955 = fsub fast float %4954, %4455
  %4956 = fmul fast float %4955, %4227
  %4957 = fadd fast float %4956, %4455
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4957, float %4453, float %4454, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 25, float %4958)  ; Rsqrt(value)
  %4960 = fmul fast float %4959, %4453
  %4961 = fmul fast float %4959, %4454
  %4962 = fmul fast float %4957, %4959
  br label %4963

; <label>:4963                                    ; preds = %4934, %4893
  %4964 = phi float [ %4960, %4934 ], [ %4453, %4893 ]
  %4965 = phi float [ %4961, %4934 ], [ %4454, %4893 ]
  %4966 = phi float [ %4962, %4934 ], [ %4455, %4893 ]
  %4967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.i32 %4967, 2
  %4969 = add nsw i32 %4968, -1
  %4970 = call i32 @dx.op.binary.i32(i32 37, i32 %4969, i32 0)  ; IMax(a,b)
  %4971 = shl i32 %4930, 2
  %4972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4971, i32 undef)  ; BufferLoad(srv,index,wot)
  %4973 = extractvalue %dx.types.ResRet.i32 %4972, 0
  %4974 = lshr i32 %4973, 16
  %4975 = and i32 %4973, 65535
  %4976 = lshr i32 %4973, 21
  %4977 = lshr i32 %4975, 5
  %4978 = call i32 @dx.op.binary.i32(i32 40, i32 %4977, i32 %4970)  ; UMin(a,b)
  %4979 = icmp ugt i32 %4976, %4978
  br i1 %4979, label %5361, label %4980

; <label>:4980                                    ; preds = %4963
  br label %4981

; <label>:4981                                    ; preds = %5350, %4980
  %4982 = phi float [ %5351, %5350 ], [ 0.000000e+00, %4980 ]
  %4983 = phi float [ %5352, %5350 ], [ 0.000000e+00, %4980 ]
  %4984 = phi float [ %5353, %5350 ], [ 0.000000e+00, %4980 ]
  %4985 = phi float [ %5354, %5350 ], [ 1.000000e+00, %4980 ]
  %4986 = phi i32 [ %5358, %5350 ], [ %4976, %4980 ]
  %4987 = phi float [ %5355, %5350 ], [ 0.000000e+00, %4980 ]
  %4988 = phi float [ %5356, %5350 ], [ 0.000000e+00, %4980 ]
  %4989 = phi float [ %5357, %5350 ], [ 0.000000e+00, %4980 ]
  %4990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.i32 %4990, 2
  %4992 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4926, i32 %4991, i32 %4986)  ; UMad(a,b,c)
  %4993 = shl i32 %4992, 2
  %4994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4993, i32 undef)  ; BufferLoad(srv,index,wot)
  %4995 = extractvalue %dx.types.ResRet.i32 %4994, 0
  %4996 = shl i32 %4986, 5
  %4997 = sub nsw i32 %4974, %4996
  %4998 = call i32 @dx.op.binary.i32(i32 37, i32 %4997, i32 0)  ; IMax(a,b)
  %4999 = call i32 @dx.op.binary.i32(i32 38, i32 %4998, i32 31)  ; IMin(a,b)
  %5000 = sub nsw i32 1, %4974
  %5001 = add nsw i32 %5000, %4975
  %5002 = call i32 @dx.op.binary.i32(i32 37, i32 %5001, i32 0)  ; IMax(a,b)
  %5003 = call i32 @dx.op.binary.i32(i32 38, i32 %5002, i32 32)  ; IMin(a,b)
  %5004 = and i32 %5003, 31
  %5005 = shl i32 -1, %5004
  %5006 = xor i32 %5005, -1
  %5007 = and i32 %4999, 31
  %5008 = shl i32 %5006, %5007
  %5009 = icmp eq i32 %5003, 32
  %5010 = select i1 %5009, i32 -1, i32 %5008
  %5011 = and i32 %5010, %4995
  %5012 = icmp eq i32 %5011, 0
  br i1 %5012, label %5350, label %5013

; <label>:5013                                    ; preds = %4981
  br label %5014

; <label>:5014                                    ; preds = %5124, %5013
  %5015 = phi float [ %5125, %5124 ], [ %4982, %5013 ]
  %5016 = phi float [ %5126, %5124 ], [ %4983, %5013 ]
  %5017 = phi float [ %5127, %5124 ], [ %4984, %5013 ]
  %5018 = phi float [ %5128, %5124 ], [ %4985, %5013 ]
  %5019 = phi i32 [ %5027, %5124 ], [ %5011, %5013 ]
  %5020 = phi float [ %5129, %5124 ], [ %4987, %5013 ]
  %5021 = phi float [ %5130, %5124 ], [ %4988, %5013 ]
  %5022 = phi float [ %5131, %5124 ], [ %4989, %5013 ]
  %5023 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5019)  ; FirstbitLo(value)
  %5024 = add i32 %5023, %4996
  %5025 = and i32 %5023, 31
  %5026 = shl i32 1, %5025
  %5027 = xor i32 %5026, %5019
  %5028 = mul i32 %5024, 72
  %5029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5028, i32 undef)  ; BufferLoad(srv,index,wot)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = add i32 %5028, 12
  %5034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.i32 %5034, 0
  %5036 = add i32 %5028, 16
  %5037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.ResRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.ResRet.f32 %5037, 2
  %5041 = add i32 %5028, 28
  %5042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5041, i32 undef)  ; BufferLoad(srv,index,wot)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = add i32 %5028, 32
  %5045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5044, i32 undef)  ; BufferLoad(srv,index,wot)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.ResRet.f32 %5045, 2
  %5049 = extractvalue %dx.types.ResRet.f32 %5045, 3
  %5050 = add i32 %5028, 48
  %5051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5050, i32 undef)  ; BufferLoad(srv,index,wot)
  %5052 = extractvalue %dx.types.ResRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.ResRet.f32 %5051, 1
  %5054 = add i32 %5028, 56
  %5055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = add i32 %5028, 64
  %5059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5058, i32 undef)  ; BufferLoad(srv,index,wot)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.ResRet.f32 %5059, 1
  %5062 = mul i32 %5024, 60
  %5063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5062, i32 undef)  ; BufferLoad(srv,index,wot)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.ResRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.ResRet.f32 %5063, 2
  %5067 = add i32 %5062, 12
  %5068 = add i32 %5062, 48
  %5069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = and i32 %5035, 32767
  %5074 = bitcast float %5030 to i32
  %5075 = icmp eq i32 %5074, -1
  %5076 = bitcast float %5031 to i32
  %5077 = and i32 %5035, 32768
  %5078 = icmp ne i32 %5077, 0
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.CBufRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.CBufRet.f32 %5079, 2
  %5083 = fsub fast float %5064, %5080
  %5084 = fsub fast float %5065, %5081
  %5085 = fsub fast float %5066, %5082
  %5086 = fsub fast float %147, %5083
  %5087 = fsub fast float %148, %5084
  %5088 = fsub fast float %149, %5085
  %5089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5067, i32 undef)  ; BufferLoad(srv,index,wot)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.ResRet.f32 %5089, 2
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = add i32 %5062, 24
  %5095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5094, i32 undef)  ; BufferLoad(srv,index,wot)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = add i32 %5062, 36
  %5101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %5100, i32 undef)  ; BufferLoad(srv,index,wot)
  %5102 = extractvalue %dx.types.ResRet.f32 %5101, 0
  %5103 = extractvalue %dx.types.ResRet.f32 %5101, 1
  %5104 = extractvalue %dx.types.ResRet.f32 %5101, 2
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 6, float %5093)  ; FAbs(value)
  %5107 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5108 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5109 = fsub fast float %5070, %5106
  %5110 = fsub fast float %5071, %5107
  %5111 = fsub fast float %5072, %5108
  %5112 = fmul fast float %5109, %5038
  %5113 = fmul fast float %5110, %5039
  %5114 = fmul fast float %5111, %5040
  %5115 = call float @dx.op.binary.f32(i32 36, float %5113, float %5114)  ; FMin(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5112, float %5115)  ; FMin(a,b)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = call float @dx.op.binary.f32(i32 36, float %5018, float %5117)  ; FMin(a,b)
  %5119 = uitofp i1 %5078 to float
  %5120 = fadd fast float %4227, 1.000000e+00
  %5121 = fsub fast float %5120, %5119
  %5122 = fmul fast float %5118, %5121
  %5123 = fcmp fast ogt float %5122, 0.000000e+00
  br i1 %5123, label %5133, label %5124

; <label>:5124                                    ; preds = %5275, %5014
  %5125 = phi float [ %5339, %5275 ], [ %5015, %5014 ]
  %5126 = phi float [ %5340, %5275 ], [ %5016, %5014 ]
  %5127 = phi float [ %5341, %5275 ], [ %5017, %5014 ]
  %5128 = phi float [ %5348, %5275 ], [ %5018, %5014 ]
  %5129 = phi float [ %5345, %5275 ], [ %5020, %5014 ]
  %5130 = phi float [ %5346, %5275 ], [ %5021, %5014 ]
  %5131 = phi float [ %5347, %5275 ], [ %5022, %5014 ]
  %5132 = icmp eq i32 %5019, %5026
  br i1 %5132, label %5349, label %5014

; <label>:5133                                    ; preds = %5014
  br i1 %5075, label %5191, label %5134

; <label>:5134                                    ; preds = %5133
  %5135 = fsub fast float -0.000000e+00, %5090
  %5136 = fsub fast float -0.000000e+00, %5091
  %5137 = fsub fast float -0.000000e+00, %5092
  %5138 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = fsub fast float -0.000000e+00, %5138
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = fadd fast float %5140, %5053
  %5142 = fadd fast float %5052, %5140
  %5143 = fsub fast float -0.000000e+00, %5142
  %5144 = fcmp ogt float %5138, -0.000000e+00
  %5145 = select i1 %5144, float %5143, float %5141
  %5146 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5147 = fdiv fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5145, %5147
  %5149 = call float @dx.op.binary.f32(i32 35, float %5148, float 0.000000e+00)  ; FMax(a,b)
  %5150 = fsub fast float -0.000000e+00, %5096
  %5151 = fsub fast float -0.000000e+00, %5097
  %5152 = fsub fast float -0.000000e+00, %5098
  %5153 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %5150, float %5151, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = fsub fast float -0.000000e+00, %5153
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5150, float %5151, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fadd fast float %5155, %5057
  %5157 = fadd fast float %5056, %5155
  %5158 = fsub fast float -0.000000e+00, %5157
  %5159 = fcmp ogt float %5153, -0.000000e+00
  %5160 = select i1 %5159, float %5158, float %5156
  %5161 = call float @dx.op.unary.f32(i32 6, float %5154)  ; FAbs(value)
  %5162 = fdiv fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5160, %5162
  %5164 = call float @dx.op.binary.f32(i32 35, float %5163, float 0.000000e+00)  ; FMax(a,b)
  %5165 = fsub fast float -0.000000e+00, %5102
  %5166 = fsub fast float -0.000000e+00, %5103
  %5167 = fsub fast float -0.000000e+00, %5104
  %5168 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %5165, float %5166, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = fsub fast float -0.000000e+00, %5168
  %5170 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5165, float %5166, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = fadd fast float %5170, %5061
  %5172 = fadd fast float %5060, %5170
  %5173 = fsub fast float -0.000000e+00, %5172
  %5174 = fcmp ogt float %5168, -0.000000e+00
  %5175 = select i1 %5174, float %5173, float %5171
  %5176 = call float @dx.op.unary.f32(i32 6, float %5169)  ; FAbs(value)
  %5177 = fdiv fast float 1.000000e+00, %5176
  %5178 = fmul fast float %5175, %5177
  %5179 = call float @dx.op.binary.f32(i32 35, float %5178, float 0.000000e+00)  ; FMax(a,b)
  %5180 = call float @dx.op.binary.f32(i32 36, float %5164, float %5179)  ; FMin(a,b)
  %5181 = call float @dx.op.binary.f32(i32 36, float %5149, float %5180)  ; FMin(a,b)
  %5182 = fmul fast float %5181, %4964
  %5183 = fmul fast float %5181, %4965
  %5184 = fmul fast float %5181, %4966
  %5185 = fadd fast float %5182, %147
  %5186 = fadd fast float %5183, %148
  %5187 = fadd fast float %5184, %149
  %5188 = fsub fast float %5185, %5030
  %5189 = fsub fast float %5186, %5031
  %5190 = fsub fast float %5187, %5032
  br label %5198

; <label>:5191                                    ; preds = %5133
  %5192 = fmul fast float %4964, 8.096000e+03
  %5193 = fmul fast float %4965, 8.096000e+03
  %5194 = fmul fast float %4966, 8.096000e+03
  %5195 = fadd fast float %5192, %147
  %5196 = fadd fast float %5193, %148
  %5197 = fadd fast float %5194, %149
  br label %5198

; <label>:5198                                    ; preds = %5191, %5134
  %5199 = phi float [ %4964, %5191 ], [ %5188, %5134 ]
  %5200 = phi float [ %4965, %5191 ], [ %5189, %5134 ]
  %5201 = phi float [ %4966, %5191 ], [ %5190, %5134 ]
  %5202 = phi float [ %5195, %5191 ], [ %5185, %5134 ]
  %5203 = phi float [ %5196, %5191 ], [ %5186, %5134 ]
  %5204 = phi float [ %5197, %5191 ], [ %5187, %5134 ]
  %5205 = fcmp fast olt float %5049, 1.000000e+00
  br i1 %5205, label %5206, label %5237, !dx.controlflow.hints !90

; <label>:5206                                    ; preds = %5198
  %5207 = fmul fast float %5201, %5047
  %5208 = fmul fast float %5200, %5048
  %5209 = fsub fast float %5207, %5208
  %5210 = fmul fast float %5199, %5048
  %5211 = fmul fast float %5201, %5046
  %5212 = fsub fast float %5210, %5211
  %5213 = fmul fast float %5200, %5046
  %5214 = fmul fast float %5199, %5047
  %5215 = fsub fast float %5213, %5214
  %5216 = fmul fast float %5209, 2.000000e+00
  %5217 = fmul fast float %5212, 2.000000e+00
  %5218 = fmul fast float %5215, 2.000000e+00
  %5219 = fmul fast float %5216, %5049
  %5220 = fmul fast float %5217, %5049
  %5221 = fmul fast float %5218, %5049
  %5222 = fmul fast float %5218, %5047
  %5223 = fmul fast float %5217, %5048
  %5224 = fmul fast float %5216, %5048
  %5225 = fmul fast float %5218, %5046
  %5226 = fmul fast float %5217, %5046
  %5227 = fmul fast float %5216, %5047
  %5228 = fadd fast float %5222, %5199
  %5229 = fadd fast float %5228, %5219
  %5230 = fsub fast float %5229, %5223
  %5231 = fsub fast float %5200, %5225
  %5232 = fadd fast float %5231, %5220
  %5233 = fadd fast float %5232, %5224
  %5234 = fadd fast float %5221, %5201
  %5235 = fsub fast float %5234, %5227
  %5236 = fadd fast float %5235, %5226
  br label %5237

; <label>:5237                                    ; preds = %5206, %5198
  %5238 = phi float [ %5230, %5206 ], [ %5199, %5198 ]
  %5239 = phi float [ %5233, %5206 ], [ %5200, %5198 ]
  %5240 = phi float [ %5236, %5206 ], [ %5201, %5198 ]
  br i1 %5075, label %5272, label %5241

; <label>:5241                                    ; preds = %5237
  %5242 = fmul fast float %4428, 0x400187C840000000
  %5243 = fadd fast float %5242, 0xC00EFC2120000000
  %5244 = fmul fast float %5243, %4428
  %5245 = fadd fast float %5244, 0x3FE5D16340000000
  %5246 = fmul fast float %5245, %4428
  %5247 = fadd fast float %5246, 1.000000e+00
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fsub fast float %5202, %147
  %5250 = fsub fast float %5203, %148
  %5251 = fsub fast float %5204, %149
  %5252 = fsub fast float %5202, %5030
  %5253 = fsub fast float %5203, %5031
  %5254 = fsub fast float %5204, %5032
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5252, float %5253, float %5254)  ; Dot3(ax,ay,az,bx,by,bz)
  %5257 = fadd fast float %5256, 0x3EE4F8B580000000
  %5258 = fdiv fast float %5255, %5257
  %5259 = bitcast float %5258 to i32
  %5260 = ashr i32 %5259, 1
  %5261 = add nsw i32 %5260, 532487669
  %5262 = bitcast i32 %5261 to float
  %5263 = fmul fast float %5262, %5248
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5264, 0x4009981AE0000000
  %5266 = fsub fast float 0x40111BBD80000000, %5265
  %5267 = fmul fast float %5266, %5264
  %5268 = fadd fast float %5267, 0xC0009F6020000000
  %5269 = fmul fast float %5268, %5264
  %5270 = fadd fast float %5269, 1.000000e+00
  %5271 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  br label %5275

; <label>:5272                                    ; preds = %5237
  %5273 = icmp ne i32 %5076, -1
  %5274 = zext i1 %5273 to i32
  br label %5275

; <label>:5275                                    ; preds = %5272, %5241
  %5276 = phi float [ %4428, %5272 ], [ %5271, %5241 ]
  %5277 = phi i32 [ %5274, %5272 ], [ 0, %5241 ]
  %5278 = fmul float %5276, 5.000000e+00
  %5279 = fsub float 5.000000e+00, %5278
  %5280 = icmp ne i32 %5277, 0
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 3
  %5283 = fadd fast float %5282, %5279
  %5284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5283)  ; FMax(a,b)
  %5285 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5286 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5287 = fadd fast float %5286, %5285
  %5288 = call float @dx.op.unary.f32(i32 6, float %5240)  ; FAbs(value)
  %5289 = fadd fast float %5287, %5288
  %5290 = fcmp fast oeq float %5289, 0.000000e+00
  %5291 = fdiv fast float 1.000000e+00, %5289
  %5292 = select i1 %5290, float 1.000000e+00, float %5291
  %5293 = fmul fast float %5292, %5238
  %5294 = fmul fast float %5292, %5239
  %5295 = call float @dx.op.unary.f32(i32 6, float %5294)  ; FAbs(value)
  %5296 = call float @dx.op.unary.f32(i32 6, float %5293)  ; FAbs(value)
  %5297 = fsub fast float 1.000000e+00, %5295
  %5298 = fsub fast float 1.000000e+00, %5296
  %5299 = fcmp fast oge float %5293, 0.000000e+00
  %5300 = fcmp fast oge float %5294, 0.000000e+00
  %5301 = select i1 %5299, float 1.000000e+00, float -1.000000e+00
  %5302 = select i1 %5300, float 1.000000e+00, float -1.000000e+00
  %5303 = fcmp fast ole float %5240, 0.000000e+00
  %5304 = fmul fast float %5301, %5297
  %5305 = fmul fast float %5302, %5298
  %5306 = select i1 %5303, float %5304, float %5293
  %5307 = select i1 %5303, float %5305, float %5294
  %5308 = fmul fast float %5306, 5.000000e-01
  %5309 = fmul fast float %5307, 5.000000e-01
  %5310 = fadd fast float %5308, 5.000000e-01
  %5311 = fadd fast float %5309, 5.000000e-01
  %5312 = uitofp i32 %5073 to float
  %5313 = call float @dx.op.binary.f32(i32 36, float %5284, float 3.000000e+00)  ; FMin(a,b)
  %5314 = fadd fast float %5313, 2.000000e+00
  %5315 = call float @dx.op.unary.f32(i32 21, float %5314)  ; Exp(value)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5317 = fmul fast float %5316, %5315
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = fmul fast float %5310, %5319
  %5321 = fmul fast float %5311, %5319
  %5322 = fadd fast float %5320, %5317
  %5323 = fadd fast float %5321, %5317
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %5322, float %5323, float %5312, float undef, i32 0, i32 0, i32 undef, float %5284)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5330 = fmul fast float %5329, %5043
  %5331 = call float @dx.op.binary.f32(i32 36, float %4508, float %5330)  ; FMin(a,b)
  %5332 = select i1 %5280, float %5331, float %5330
  %5333 = fmul fast float %5325, %5122
  %5334 = fmul fast float %5333, %5332
  %5335 = fmul fast float %5326, %5122
  %5336 = fmul fast float %5335, %5332
  %5337 = fmul fast float %5327, %5122
  %5338 = fmul fast float %5337, %5332
  %5339 = fadd fast float %5334, %5015
  %5340 = fadd fast float %5336, %5016
  %5341 = fadd fast float %5338, %5017
  %5342 = fmul fast float %5202, %5122
  %5343 = fmul fast float %5203, %5122
  %5344 = fmul fast float %5204, %5122
  %5345 = fadd fast float %5342, %5020
  %5346 = fadd fast float %5343, %5021
  %5347 = fadd fast float %5344, %5022
  %5348 = fsub fast float %5018, %5122
  br label %5124

; <label>:5349                                    ; preds = %5124
  br label %5350

; <label>:5350                                    ; preds = %5349, %4981
  %5351 = phi float [ %4982, %4981 ], [ %5125, %5349 ]
  %5352 = phi float [ %4983, %4981 ], [ %5126, %5349 ]
  %5353 = phi float [ %4984, %4981 ], [ %5127, %5349 ]
  %5354 = phi float [ %4985, %4981 ], [ %5128, %5349 ]
  %5355 = phi float [ %4987, %4981 ], [ %5129, %5349 ]
  %5356 = phi float [ %4988, %4981 ], [ %5130, %5349 ]
  %5357 = phi float [ %4989, %4981 ], [ %5131, %5349 ]
  %5358 = add i32 %4986, 1
  %5359 = icmp ugt i32 %5358, %4978
  br i1 %5359, label %5360, label %4981, !llvm.loop !91

; <label>:5360                                    ; preds = %5350
  br label %5361

; <label>:5361                                    ; preds = %5360, %4963
  %5362 = phi float [ 0.000000e+00, %4963 ], [ %5351, %5360 ]
  %5363 = phi float [ 0.000000e+00, %4963 ], [ %5352, %5360 ]
  %5364 = phi float [ 0.000000e+00, %4963 ], [ %5353, %5360 ]
  %5365 = phi float [ 0.000000e+00, %4963 ], [ %5355, %5360 ]
  %5366 = phi float [ 0.000000e+00, %4963 ], [ %5356, %5360 ]
  %5367 = phi float [ 0.000000e+00, %4963 ], [ %5357, %5360 ]
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5363, float %5364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = select i1 %189, float 0.000000e+00, float %5362
  %5370 = select i1 %189, float %5368, float %5363
  %5371 = select i1 %189, float 0.000000e+00, float %5364
  %5372 = fcmp fast olt float %4887, 0.000000e+00
  %5373 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %5374 = fmul fast float %5373, %4888
  %5375 = fmul fast float %5373, %4889
  %5376 = fmul fast float %5373, %4890
  %5377 = select i1 %5372, float %4888, float %5374
  %5378 = select i1 %5372, float %4889, float %5375
  %5379 = select i1 %5372, float %4890, float %5376
  %5380 = fsub fast float 1.000000e+00, %5373
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fmul fast float %5381, %5369
  %5383 = fmul fast float %5381, %5370
  %5384 = fmul fast float %5381, %5371
  %5385 = fadd fast float %5377, %5382
  %5386 = fadd fast float %5378, %5383
  %5387 = fadd fast float %5379, %5384
  %5388 = fcmp fast une float %4637, 0.000000e+00
  br i1 %5388, label %5489, label %5389

; <label>:5389                                    ; preds = %5361
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5390, 2
  %5394 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5403, float %4453, float %4454, float %4455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5365, float %5366, float %5367, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = fadd fast float %4428, -1.000000e+00
  %5409 = fsub fast float %5406, %5407
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5412 = fmul fast float %5411, %5406
  %5413 = fdiv fast float 1.600000e+02, %5412
  %5414 = fmul fast float %5408, %5408
  %5415 = fmul fast float %5414, 0xBFB5B17960000000
  %5416 = fmul fast float %5415, %5409
  %5417 = fmul fast float %5416, %5413
  %5418 = call float @dx.op.unary.f32(i32 21, float %5417)  ; Exp(value)
  %5419 = fmul fast float %5418, 0x3FF04B2960000000
  %5420 = fsub fast float 0x3FF04B2960000000, %5419
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fmul fast float %5421, 4.000000e+00
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5427 = fadd fast float %5424, %5365
  %5428 = fadd fast float %5425, %5366
  %5429 = fadd fast float %5426, %5367
  %5430 = fmul fast float %5427, %5391
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %5428, float %5392, float %5430)  ; FMad(a,b,c)
  %5432 = call float @dx.op.tertiary.f32(i32 46, float %5429, float %5393, float %5431)  ; FMad(a,b,c)
  %5433 = fadd fast float %5432, %5394
  %5434 = fmul fast float %5427, %5396
  %5435 = call float @dx.op.tertiary.f32(i32 46, float %5428, float %5397, float %5434)  ; FMad(a,b,c)
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %5429, float %5398, float %5435)  ; FMad(a,b,c)
  %5437 = fadd fast float %5436, %5399
  %5438 = fmul fast float %5427, %5401
  %5439 = call float @dx.op.tertiary.f32(i32 46, float %5428, float %5402, float %5438)  ; FMad(a,b,c)
  %5440 = call float @dx.op.tertiary.f32(i32 46, float %5429, float %5403, float %5439)  ; FMad(a,b,c)
  %5441 = fadd fast float %5440, %5404
  %5442 = fdiv fast float %5433, %5441
  %5443 = fdiv fast float %5437, %5441
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = fmul fast float %5445, %5442
  %5448 = fmul fast float %5446, %5443
  %5449 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5450 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5451 = fadd fast float %5447, %5449
  %5452 = fadd fast float %5448, %5450
  %5453 = fmul fast float %5405, 8.000000e+00
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fmul fast float %5451, 2.000000e+00
  %5456 = fmul fast float %5452, 2.000000e+00
  %5457 = fadd fast float %5455, -1.000000e+00
  %5458 = fadd fast float %5456, -1.000000e+00
  %5459 = fmul fast float %5457, %5457
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = fmul fast float %5458, %5458
  %5463 = fsub fast float 1.000000e+00, %5462
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fmul fast float %4637, %5461
  %5466 = fmul fast float %5465, %5464
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = fmul fast float %5467, %5454
  %5469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %5451, float %5452, float undef, float undef, i32 0, i32 0, i32 undef, float %5422)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = select i1 %189, float 0.000000e+00, float %5471
  %5474 = select i1 %189, float 0.000000e+00, float %5472
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5477 = fmul fast float %5476, %5470
  %5478 = fmul fast float %5473, %5476
  %5479 = fmul fast float %5474, %5476
  %5480 = fsub fast float %5477, %5369
  %5481 = fsub fast float %5478, %5370
  %5482 = fsub fast float %5479, %5371
  %5483 = fmul fast float %5480, %5468
  %5484 = fmul fast float %5481, %5468
  %5485 = fmul fast float %5482, %5468
  %5486 = fadd fast float %5483, %5369
  %5487 = fadd fast float %5484, %5370
  %5488 = fadd fast float %5485, %5371
  br label %5489

; <label>:5489                                    ; preds = %5389, %5361, %4886, %4610
  %5490 = phi float [ %4888, %4886 ], [ %5385, %5361 ], [ %4567, %4610 ], [ %5486, %5389 ]
  %5491 = phi float [ %4889, %4886 ], [ %5386, %5361 ], [ %4568, %4610 ], [ %5487, %5389 ]
  %5492 = phi float [ %4890, %4886 ], [ %5387, %5361 ], [ %4569, %4610 ], [ %5488, %5389 ]
  %5493 = fmul fast float %4616, %4563
  %5494 = fmul fast float %4616, %4564
  %5495 = fmul fast float %4616, %4565
  %5496 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fcmp fast ogt float %5496, 0x3E7FF19E20000000
  %5498 = fdiv fast float 1.000000e+00, %5496
  %5499 = select i1 %5497, float %5498, float 0.000000e+00
  %5500 = fmul fast float %5499, %4422
  %5501 = fmul fast float %5499, %4423
  %5502 = fmul fast float %5499, %4424
  %5503 = fadd fast float %5500, -1.000000e+00
  %5504 = fadd fast float %5501, -1.000000e+00
  %5505 = fadd fast float %5502, -1.000000e+00
  %5506 = fmul fast float %5503, 5.000000e-01
  %5507 = fmul fast float %5504, 5.000000e-01
  %5508 = fmul fast float %5505, 5.000000e-01
  %5509 = fadd fast float %5506, 1.000000e+00
  %5510 = fadd fast float %5507, 1.000000e+00
  %5511 = fadd fast float %5508, 1.000000e+00
  %5512 = fmul fast float %5490, %4611
  %5513 = fmul fast float %5491, %4612
  %5514 = fmul fast float %5492, %4613
  %5515 = fsub fast float 1.000000e+00, %4447
  %5516 = bitcast float %5515 to i32
  %5517 = sitofp i32 %5516 to float
  %5518 = fmul fast float %5517, 5.000000e+00
  %5519 = fadd fast float %5518, 0xC1EFBF8940000000
  %5520 = fptosi float %5519 to i32
  %5521 = bitcast i32 %5520 to float
  %5522 = fmul fast float %5521, %3818
  %5523 = fmul fast float %4563, %5522
  %5524 = fmul fast float %5523, %4616
  %5525 = fmul fast float %5524, %5509
  %5526 = fmul fast float %4564, %5522
  %5527 = fmul fast float %5526, %4616
  %5528 = fmul fast float %5527, %5510
  %5529 = fmul fast float %4565, %5522
  %5530 = fmul fast float %5529, %4616
  %5531 = fmul fast float %5530, %5511
  %5532 = fmul fast float %5493, %3814
  %5533 = fmul fast float %5494, %3814
  %5534 = fmul fast float %5495, %3814
  %5535 = fadd fast float %5512, %3810
  %5536 = fadd fast float %5535, %5525
  %5537 = fmul fast float %5536, %3814
  %5538 = fadd fast float %5513, %3811
  %5539 = fadd fast float %5538, %5528
  %5540 = fmul fast float %5539, %3814
  %5541 = fadd fast float %5514, %3812
  %5542 = fadd fast float %5541, %5531
  %5543 = fmul fast float %5542, %3814
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5546 = fcmp fast oeq float %5545, 0.000000e+00
  br i1 %5546, label %5766, label %5547

; <label>:5547                                    ; preds = %5489
  %5548 = extractvalue %dx.types.CBufRet.f32 %5544, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5544, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5544, 2
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5558 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = select i1 %189, float %5556, float %5552
  %5560 = select i1 %189, float %5558, float %5553
  %5561 = select i1 %189, float %5557, float %5554
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 1
  %5564 = fcmp fast une float %5563, 0.000000e+00
  br i1 %5564, label %5565, label %5582

; <label>:5565                                    ; preds = %5547
  %5566 = fptoui float %84 to i32
  %5567 = fptoui float %85 to i32
  %5568 = lshr i32 %5566, 4
  %5569 = lshr i32 %5567, 4
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 0
  %5572 = fptoui float %5571 to i32
  %5573 = add i32 %5572, 15
  %5574 = lshr i32 %5573, 4
  %5575 = mul i32 %5574, %5569
  %5576 = add i32 %5575, %5568
  %5577 = shl i32 %5576, 3
  %5578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5577, i32 undef)  ; BufferLoad(srv,index,wot)
  %5579 = extractvalue %dx.types.ResRet.i32 %5578, 0
  %5580 = and i32 %5579, -268435456
  %5581 = icmp eq i32 %5580, -1342177280
  br i1 %5581, label %5587, label %5582

; <label>:5582                                    ; preds = %5565, %5547
  %5583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %4433, float %4434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.ResRet.f32 %5583, 2
  br label %5587

; <label>:5587                                    ; preds = %5582, %5565
  %5588 = phi float [ %5584, %5582 ], [ 0.000000e+00, %5565 ]
  %5589 = phi float [ %5585, %5582 ], [ 0.000000e+00, %5565 ]
  %5590 = phi float [ %5586, %5582 ], [ 0.000000e+00, %5565 ]
  %5591 = call float @dx.op.binary.f32(i32 36, float %5589, float %5590)  ; FMin(a,b)
  %5592 = call float @dx.op.binary.f32(i32 36, float %5588, float %5591)  ; FMin(a,b)
  %5593 = fcmp fast ogt float %5592, 0.000000e+00
  br i1 %5593, label %5594, label %5766, !dx.controlflow.hints !93

; <label>:5594                                    ; preds = %5587
  %5595 = fmul fast float %5588, %5559
  %5596 = fmul fast float %5589, %5560
  %5597 = fmul fast float %5590, %5561
  %5598 = fsub fast float %5548, %4418
  %5599 = fsub fast float %5549, %4417
  %5600 = fsub fast float %5550, %4416
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5598, float %5599, float %5600)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = call float @dx.op.unary.f32(i32 25, float %5601)  ; Rsqrt(value)
  %5603 = fmul fast float %5602, %5598
  %5604 = fmul fast float %5602, %5599
  %5605 = fmul fast float %5602, %5600
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float %4425, float %4426, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4414, float %4413, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5609 = bitcast i32 %4471 to float
  %5610 = fmul fast float %5608, %5608
  %5611 = fmul fast float %5610, %5609
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, %5608
  %5614 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = fmul fast float %5614, %5614
  %5616 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5617 = fsub fast float 1.000000e+00, %4465
  %5618 = fmul fast float %4447, %4447
  %5619 = fmul fast float %5618, %5617
  %5620 = fadd fast float %5619, %4465
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fadd fast float %5624, %4447
  %5626 = fmul fast float %4465, %5615
  %5627 = fsub fast float 1.000000e+00, %5615
  %5628 = fadd fast float %5627, %5626
  %5629 = fmul fast float %5616, %5616
  %5630 = fmul fast float %5629, %5617
  %5631 = fadd fast float %5630, %4465
  %5632 = bitcast float %5631 to i32
  %5633 = ashr i32 %5632, 1
  %5634 = add nsw i32 %5633, 532487669
  %5635 = bitcast i32 %5634 to float
  %5636 = fadd fast float %5635, %5616
  %5637 = fmul fast float %5628, %5628
  %5638 = fmul fast float %5637, %5625
  %5639 = fmul fast float %5638, %5636
  %5640 = fdiv fast float 0x3FF0A00000000000, %5639
  %5641 = fmul fast float %5640, %4465
  %5642 = call float @dx.op.unary.f32(i32 6, float %5607)  ; FAbs(value)
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = bitcast float %5643 to i32
  %5645 = sitofp i32 %5644 to float
  %5646 = fmul fast float %5645, 5.000000e+00
  %5647 = fadd fast float %5646, 0xC1EFBF8940000000
  %5648 = fptosi float %5647 to i32
  %5649 = bitcast i32 %5648 to float
  %5650 = fsub fast float 1.000000e+00, %4419
  %5651 = fsub fast float 1.000000e+00, %4420
  %5652 = fsub fast float 1.000000e+00, %4445
  %5653 = fmul fast float %5649, %5650
  %5654 = fmul fast float %5649, %5651
  %5655 = fmul fast float %5649, %5652
  %5656 = fadd fast float %5653, %4419
  %5657 = fadd fast float %5654, %4420
  %5658 = fadd fast float %5655, %4445
  br i1 %4583, label %5659, label %5682

; <label>:5659                                    ; preds = %5594
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3817, float %5642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = fadd fast float %5661, -5.000000e-01
  %5665 = fadd fast float %5662, -5.000000e-01
  %5666 = fadd fast float %5663, -5.000000e-01
  %5667 = fmul fast float %4419, 4.000000e+00
  %5668 = fmul fast float %5667, %5650
  %5669 = fmul fast float %5668, %5664
  %5670 = fmul fast float %4420, 4.000000e+00
  %5671 = fmul fast float %5670, %5651
  %5672 = fmul fast float %5671, %5665
  %5673 = fmul fast float %4445, 4.000000e+00
  %5674 = fmul fast float %5673, %5652
  %5675 = fmul fast float %5674, %5666
  %5676 = fadd fast float %5669, %5656
  %5677 = fadd fast float %5672, %5657
  %5678 = fadd fast float %5675, %5658
  %5679 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5680 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5681 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  br label %5682

; <label>:5682                                    ; preds = %5659, %5594
  %5683 = phi float [ %5679, %5659 ], [ %5656, %5594 ]
  %5684 = phi float [ %5680, %5659 ], [ %5657, %5594 ]
  %5685 = phi float [ %5681, %5659 ], [ %5658, %5594 ]
  %5686 = fmul fast float %5606, 9.843750e-01
  %5687 = fadd fast float %5686, 7.812500e-03
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %5687, float %4573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 3
  %5691 = fmul fast float %5689, %4419
  %5692 = fmul fast float %5689, %4420
  %5693 = fmul fast float %5689, %4445
  %5694 = fadd fast float %5691, %5690
  %5695 = fadd fast float %5692, %5690
  %5696 = fadd fast float %5693, %5690
  br i1 %4583, label %5697, label %5720

; <label>:5697                                    ; preds = %5682
  %5698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3817, float %5606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = fadd fast float %5699, -5.000000e-01
  %5703 = fadd fast float %5700, -5.000000e-01
  %5704 = fadd fast float %5701, -5.000000e-01
  %5705 = fmul fast float %4419, 4.000000e+00
  %5706 = fmul fast float %5705, %5650
  %5707 = fmul fast float %5706, %5702
  %5708 = fmul fast float %4420, 4.000000e+00
  %5709 = fmul fast float %5708, %5651
  %5710 = fmul fast float %5709, %5703
  %5711 = fmul fast float %4445, 4.000000e+00
  %5712 = fmul fast float %5711, %5652
  %5713 = fmul fast float %5712, %5704
  %5714 = fadd fast float %5707, %5694
  %5715 = fadd fast float %5710, %5695
  %5716 = fadd fast float %5713, %5696
  %5717 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  br label %5720

; <label>:5720                                    ; preds = %5697, %5682
  %5721 = phi float [ %5717, %5697 ], [ %5694, %5682 ]
  %5722 = phi float [ %5718, %5697 ], [ %5695, %5682 ]
  %5723 = phi float [ %5719, %5697 ], [ %5696, %5682 ]
  %5724 = call float @dx.op.binary.f32(i32 35, float %5722, float %5723)  ; FMax(a,b)
  %5725 = call float @dx.op.binary.f32(i32 35, float %5721, float %5724)  ; FMax(a,b)
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = fmul fast float %5683, %5641
  %5728 = fmul fast float %5684, %5641
  %5729 = fmul fast float %5685, %5641
  %5730 = fsub fast float 1.000000e+00, %5607
  %5731 = bitcast float %5730 to i32
  %5732 = sitofp i32 %5731 to float
  %5733 = fmul fast float %5732, 5.000000e+00
  %5734 = fadd fast float %5733, 0xC1EFBF8940000000
  %5735 = fptosi float %5734 to i32
  %5736 = bitcast i32 %5735 to float
  %5737 = fmul fast float %5736, %3818
  %5738 = fmul fast float %5726, %5737
  %5739 = fmul fast float %5738, %5509
  %5740 = fmul fast float %5738, %5510
  %5741 = fmul fast float %5738, %5511
  %5742 = fadd fast float %5739, %5727
  %5743 = fadd fast float %5740, %5728
  %5744 = fadd fast float %5741, %5729
  %5745 = fmul fast float %5613, %5595
  %5746 = fmul fast float %5745, %5726
  %5747 = fmul fast float %5613, %5596
  %5748 = fmul fast float %5747, %5726
  %5749 = fmul fast float %5613, %5597
  %5750 = fmul fast float %5749, %5726
  %5751 = fmul fast float %5745, %5742
  %5752 = fmul fast float %5747, %5743
  %5753 = fmul fast float %5749, %5744
  %5754 = fadd fast float %5746, %5493
  %5755 = fmul fast float %5754, %3814
  %5756 = fadd fast float %5748, %5494
  %5757 = fmul fast float %5756, %3814
  %5758 = fadd fast float %5750, %5495
  %5759 = fmul fast float %5758, %3814
  %5760 = fadd fast float %5751, %5536
  %5761 = fmul fast float %5760, %3814
  %5762 = fadd fast float %5752, %5539
  %5763 = fmul fast float %5762, %3814
  %5764 = fadd fast float %5753, %5542
  %5765 = fmul fast float %5764, %3814
  br label %5766

; <label>:5766                                    ; preds = %5720, %5587, %5489
  %5767 = phi float [ %5537, %5489 ], [ %5537, %5587 ], [ %5761, %5720 ]
  %5768 = phi float [ %5540, %5489 ], [ %5540, %5587 ], [ %5763, %5720 ]
  %5769 = phi float [ %5543, %5489 ], [ %5543, %5587 ], [ %5765, %5720 ]
  %5770 = phi float [ %5532, %5489 ], [ %5532, %5587 ], [ %5755, %5720 ]
  %5771 = phi float [ %5533, %5489 ], [ %5533, %5587 ], [ %5757, %5720 ]
  %5772 = phi float [ %5534, %5489 ], [ %5534, %5587 ], [ %5759, %5720 ]
  %5773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.i32 %5773, 0
  %5775 = icmp eq i32 %5774, 0
  br i1 %5775, label %6207, label %5776

; <label>:5776                                    ; preds = %5766
  %5777 = fptoui float %84 to i32
  %5778 = fptoui float %85 to i32
  %5779 = lshr i32 %5777, 4
  %5780 = lshr i32 %5778, 4
  %5781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.i32 %5781, 0
  %5783 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5780, i32 %5782, i32 %5779)  ; UMad(a,b,c)
  %5784 = add nsw i32 %5774, -1
  %5785 = call i32 @dx.op.binary.i32(i32 37, i32 %5784, i32 0)  ; IMax(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5787 = fptoui float %5786 to i32
  %5788 = lshr i32 %5787, 5
  %5789 = call i32 @dx.op.binary.i32(i32 40, i32 %5788, i32 8191)  ; UMin(a,b)
  %5790 = shl i32 %5789, 2
  %5791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5790, i32 undef)  ; BufferLoad(srv,index,wot)
  %5792 = extractvalue %dx.types.ResRet.i32 %5791, 0
  %5793 = lshr i32 %5792, 16
  %5794 = and i32 %5792, 65535
  %5795 = lshr i32 %5792, 21
  %5796 = lshr i32 %5794, 5
  %5797 = call i32 @dx.op.binary.i32(i32 40, i32 %5796, i32 %5785)  ; UMin(a,b)
  %5798 = icmp ugt i32 %5795, %5797
  br i1 %5798, label %6207, label %5799

; <label>:5799                                    ; preds = %5776
  br label %5800

; <label>:5800                                    ; preds = %6197, %5799
  %5801 = phi i32 [ %6204, %6197 ], [ %5795, %5799 ]
  %5802 = phi float [ %6198, %6197 ], [ %5767, %5799 ]
  %5803 = phi float [ %6199, %6197 ], [ %5768, %5799 ]
  %5804 = phi float [ %6200, %6197 ], [ %5769, %5799 ]
  %5805 = phi float [ %6201, %6197 ], [ %5770, %5799 ]
  %5806 = phi float [ %6202, %6197 ], [ %5771, %5799 ]
  %5807 = phi float [ %6203, %6197 ], [ %5772, %5799 ]
  %5808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.i32 %5808, 0
  %5810 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5783, i32 %5809, i32 %5801)  ; UMad(a,b,c)
  %5811 = shl i32 %5810, 2
  %5812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.i32 %5812, 0
  %5814 = shl i32 %5801, 5
  %5815 = sub nsw i32 %5793, %5814
  %5816 = call i32 @dx.op.binary.i32(i32 37, i32 %5815, i32 0)  ; IMax(a,b)
  %5817 = call i32 @dx.op.binary.i32(i32 38, i32 %5816, i32 31)  ; IMin(a,b)
  %5818 = sub nsw i32 1, %5793
  %5819 = add nsw i32 %5818, %5794
  %5820 = call i32 @dx.op.binary.i32(i32 37, i32 %5819, i32 0)  ; IMax(a,b)
  %5821 = call i32 @dx.op.binary.i32(i32 38, i32 %5820, i32 32)  ; IMin(a,b)
  %5822 = and i32 %5821, 31
  %5823 = shl i32 -1, %5822
  %5824 = xor i32 %5823, -1
  %5825 = and i32 %5817, 31
  %5826 = shl i32 %5824, %5825
  %5827 = icmp eq i32 %5821, 32
  %5828 = select i1 %5827, i32 -1, i32 %5826
  %5829 = and i32 %5828, %5813
  %5830 = icmp eq i32 %5829, 0
  br i1 %5830, label %6197, label %5831

; <label>:5831                                    ; preds = %5800
  br label %5832

; <label>:5832                                    ; preds = %5912, %5831
  %5833 = phi i32 [ %5844, %5912 ], [ %5829, %5831 ]
  %5834 = phi float [ %5913, %5912 ], [ %5802, %5831 ]
  %5835 = phi float [ %5914, %5912 ], [ %5803, %5831 ]
  %5836 = phi float [ %5915, %5912 ], [ %5804, %5831 ]
  %5837 = phi float [ %5916, %5912 ], [ %5805, %5831 ]
  %5838 = phi float [ %5917, %5912 ], [ %5806, %5831 ]
  %5839 = phi float [ %5918, %5912 ], [ %5807, %5831 ]
  %5840 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5833)  ; FirstbitLo(value)
  %5841 = add i32 %5840, %5814
  %5842 = and i32 %5840, 31
  %5843 = shl i32 1, %5842
  %5844 = xor i32 %5843, %5833
  %5845 = mul i32 %5841, 112
  %5846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5845, i32 undef)  ; BufferLoad(srv,index,wot)
  %5847 = extractvalue %dx.types.ResRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.ResRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.ResRet.f32 %5846, 2
  %5850 = or i32 %5845, 12
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = add i32 %5845, 44
  %5854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = add i32 %5845, 48
  %5857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = add i32 %5845, 80
  %5862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5861, i32 undef)  ; BufferLoad(srv,index,wot)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5862, 2
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5847, float %5848, float %5849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = select i1 %189, float %5863, float %5847
  %5867 = select i1 %189, float %5865, float %5848
  %5868 = select i1 %189, float %5864, float %5849
  %5869 = fsub fast float %5858, %147
  %5870 = fsub fast float %5859, %148
  %5871 = fsub fast float %5860, %149
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.unary.f32(i32 24, float %5872)  ; Sqrt(value)
  %5874 = fdiv fast float 1.000000e+00, %5873
  %5875 = fmul fast float %5874, %5869
  %5876 = fmul fast float %5874, %5870
  %5877 = fmul fast float %5874, %5871
  %5878 = fadd fast float %5873, %5852
  %5879 = fdiv fast float 1.000000e+00, %5878
  %5880 = fmul float %5855, %5879
  %5881 = fmul float %5880, %5880
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = and i32 %5843, %5829
  %5884 = icmp eq i32 %5883, 0
  br i1 %5884, label %5907, label %5885, !dx.controlflow.hints !94

; <label>:5885                                    ; preds = %5832
  %5886 = lshr i32 %5777, 5
  %5887 = lshr i32 %5778, 5
  %5888 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %5886, i32 %5887, i32 %5841, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5889 = extractvalue %dx.types.ResRet.i32 %5888, 0
  %5890 = and i32 %5889, 3
  %5891 = icmp eq i32 %5890, 0
  %5892 = select i1 %5891, float 1.000000e+00, float 0.000000e+00
  %5893 = icmp eq i32 %5890, 3
  br i1 %5893, label %5894, label %5907

; <label>:5894                                    ; preds = %5885
  %5895 = lshr i32 %5889, 10
  %5896 = and i32 %5895, 8160
  %5897 = and i32 %5778, 31
  %5898 = or i32 %5896, %5897
  %5899 = lshr i32 %5889, 1
  %5900 = and i32 %5899, 16352
  %5901 = and i32 %5777, 31
  %5902 = or i32 %5900, %5901
  %5903 = lshr i32 %5889, 23
  %5904 = and i32 %5903, 255
  %5905 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %5902, i32 %5898, i32 %5904, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5906 = extractvalue %dx.types.ResRet.f32 %5905, 0
  br label %5907

; <label>:5907                                    ; preds = %5894, %5885, %5832
  %5908 = phi float [ %5906, %5894 ], [ %5892, %5885 ], [ 0.000000e+00, %5832 ]
  %5909 = call float @dx.op.binary.f32(i32 36, float %5908, float %5908)  ; FMin(a,b)
  %5910 = call float @dx.op.binary.f32(i32 36, float %5908, float %5909)  ; FMin(a,b)
  %5911 = fcmp fast ogt float %5910, 0.000000e+00
  br i1 %5911, label %5920, label %5912, !dx.controlflow.hints !95

; <label>:5912                                    ; preds = %6153, %5907
  %5913 = phi float [ %5834, %5907 ], [ %6193, %6153 ]
  %5914 = phi float [ %5835, %5907 ], [ %6194, %6153 ]
  %5915 = phi float [ %5836, %5907 ], [ %6195, %6153 ]
  %5916 = phi float [ %5837, %5907 ], [ %6187, %6153 ]
  %5917 = phi float [ %5838, %5907 ], [ %6188, %6153 ]
  %5918 = phi float [ %5839, %5907 ], [ %6189, %6153 ]
  %5919 = icmp eq i32 %5833, %5843
  br i1 %5919, label %6196, label %5832

; <label>:5920                                    ; preds = %5907
  %5921 = fmul fast float %5908, %5866
  %5922 = fmul fast float %5908, %5867
  %5923 = fmul fast float %5908, %5868
  %5924 = fsub fast float %5860, %4218
  %5925 = fcmp fast ogt float %5924, 0.000000e+00
  %5926 = fsub fast float %149, %4218
  %5927 = fcmp fast ogt float %5926, 0.000000e+00
  %5928 = xor i1 %5927, %5925
  %5929 = fsub fast float %4218, %5860
  %5930 = fmul fast float %5929, 2.000000e+00
  %5931 = fadd fast float %5930, %5860
  %5932 = select i1 %5928, float %5860, float %5931
  %5933 = fsub fast float %5932, %149
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5933, float %5869, float %5870, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = call float @dx.op.unary.f32(i32 25, float %5934)  ; Rsqrt(value)
  %5936 = fmul fast float %5935, %5869
  %5937 = fmul fast float %5935, %5870
  %5938 = fmul fast float %5935, %5933
  %5939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = fdiv fast float 1.000000e+00, %5940
  %5942 = fmul fast float %5941, %5939
  %5943 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5926, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = fcmp fast ogt float %5943, 0.000000e+00
  %5945 = fcmp fast olt float %5943, 0.000000e+00
  %5946 = zext i1 %5944 to i32
  %5947 = zext i1 %5945 to i32
  %5948 = sub nsw i32 %5946, %5947
  %5949 = sitofp i32 %5948 to float
  %5950 = fsub fast float %5932, %4218
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5950, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = fcmp fast ogt float %5951, 0.000000e+00
  %5953 = fcmp fast olt float %5951, 0.000000e+00
  %5954 = zext i1 %5952 to i32
  %5955 = zext i1 %5953 to i32
  %5956 = sub nsw i32 %5954, %5955
  %5957 = sitofp i32 %5956 to float
  %5958 = fcmp fast une float %5949, %5957
  br i1 %5958, label %5959, label %5969

; <label>:5959                                    ; preds = %5920
  %5960 = fmul fast float %5942, %5938
  %5961 = fmul fast float %5942, %5937
  %5962 = fmul fast float %5942, %5936
  %5963 = fmul fast float %5962, %5962
  %5964 = fmul fast float %5961, %5961
  %5965 = fadd fast float %5963, %5964
  %5966 = fmul fast float %5960, %5960
  %5967 = fadd fast float %5965, %5966
  %5968 = call float @dx.op.unary.f32(i32 24, float %5967)  ; Sqrt(value)
  br label %5981

; <label>:5969                                    ; preds = %5920
  %5970 = icmp slt i32 %5948, 0
  br i1 %5970, label %5971, label %5981

; <label>:5971                                    ; preds = %5969
  %5972 = fsub fast float %147, %5858
  %5973 = fsub fast float %148, %5859
  %5974 = fsub fast float %149, %5932
  %5975 = fmul fast float %5972, %5972
  %5976 = fmul fast float %5973, %5973
  %5977 = fadd fast float %5975, %5976
  %5978 = fmul fast float %5974, %5974
  %5979 = fadd fast float %5977, %5978
  %5980 = call float @dx.op.unary.f32(i32 24, float %5979)  ; Sqrt(value)
  br label %5981

; <label>:5981                                    ; preds = %5971, %5969, %5959
  %5982 = phi float [ %5968, %5959 ], [ %5980, %5971 ], [ 0.000000e+00, %5969 ]
  %5983 = and i1 %5927, %5925
  %5984 = fsub fast float -0.000000e+00, %5982
  %5985 = select i1 %5983, float -0.000000e+00, float %5984
  %5986 = fmul fast float %4219, 0x3FF7154760000000
  %5987 = fmul fast float %5986, %5985
  %5988 = fmul fast float %4220, 0x3FF7154760000000
  %5989 = fmul fast float %5988, %5985
  %5990 = fmul fast float %4221, 0x3FF7154760000000
  %5991 = fmul fast float %5990, %5985
  %5992 = call float @dx.op.unary.f32(i32 21, float %5987)  ; Exp(value)
  %5993 = call float @dx.op.unary.f32(i32 21, float %5989)  ; Exp(value)
  %5994 = call float @dx.op.unary.f32(i32 21, float %5991)  ; Exp(value)
  %5995 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5996 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5998 = fmul fast float %5921, %5995
  %5999 = fmul fast float %5922, %5996
  %6000 = fmul fast float %5923, %5997
  %6001 = fsub fast float %5875, %4418
  %6002 = fsub fast float %5876, %4417
  %6003 = fsub fast float %5877, %4416
  %6004 = call float @dx.op.dot3.f32(i32 55, float %6001, float %6002, float %6003, float %6001, float %6002, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 25, float %6004)  ; Rsqrt(value)
  %6006 = fmul fast float %6005, %6001
  %6007 = fmul fast float %6005, %6002
  %6008 = fmul fast float %6005, %6003
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %4425, float %4426, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4414, float %4413, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6012 = fmul fast float %6011, %5882
  %6013 = bitcast i32 %4471 to float
  %6014 = fmul fast float %6011, %6011
  %6015 = fmul fast float %6014, %6013
  %6016 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6017 = fmul fast float %6012, %6016
  %6018 = bitcast float %5872 to i32
  %6019 = ashr i32 %6018, 1
  %6020 = sub nsw i32 1597463007, %6019
  %6021 = bitcast i32 %6020 to float
  %6022 = fmul fast float %6021, %5869
  %6023 = fmul fast float %6021, %5870
  %6024 = fmul fast float %6021, %5871
  %6025 = fsub fast float %6022, %4418
  %6026 = fsub fast float %6023, %4417
  %6027 = fsub fast float %6024, %4416
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = call float @dx.op.unary.f32(i32 25, float %6028)  ; Rsqrt(value)
  %6030 = fmul fast float %6025, %6029
  %6031 = fmul fast float %6026, %6029
  %6032 = fmul fast float %6027, %6029
  %6033 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fmul fast float %6033, %6033
  %6035 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6036 = fsub fast float 1.000000e+00, %4465
  %6037 = fmul fast float %4447, %4447
  %6038 = fmul fast float %6037, %6036
  %6039 = fadd fast float %6038, %4465
  %6040 = bitcast float %6039 to i32
  %6041 = ashr i32 %6040, 1
  %6042 = add nsw i32 %6041, 532487669
  %6043 = bitcast i32 %6042 to float
  %6044 = fadd fast float %6043, %4447
  %6045 = fmul fast float %4465, %6034
  %6046 = fsub fast float 1.000000e+00, %6034
  %6047 = fadd fast float %6046, %6045
  %6048 = fmul fast float %6035, %6035
  %6049 = fmul fast float %6048, %6036
  %6050 = fadd fast float %6049, %4465
  %6051 = bitcast float %6050 to i32
  %6052 = ashr i32 %6051, 1
  %6053 = add nsw i32 %6052, 532487669
  %6054 = bitcast i32 %6053 to float
  %6055 = fadd fast float %6054, %6035
  %6056 = fmul fast float %6047, %6047
  %6057 = fmul fast float %6056, %6044
  %6058 = fmul fast float %6057, %6055
  %6059 = fdiv fast float 1.000000e+00, %6058
  %6060 = bitcast float %4465 to i32
  %6061 = sitofp i32 %6060 to float
  %6062 = fmul fast float %6061, 0x3FE7F73180000000
  %6063 = fadd fast float %6062, 0x41AFE27C40000000
  %6064 = fptosi float %6063 to i32
  %6065 = bitcast i32 %6064 to float
  %6066 = fmul fast float %5855, 0x3FD80E9D60000000
  %6067 = fmul fast float %6066, %6021
  %6068 = fadd fast float %6065, %6067
  %6069 = bitcast float %6068 to i32
  %6070 = sub nsw i32 2129859010, %6069
  %6071 = bitcast i32 %6070 to float
  %6072 = fmul fast float %4465, %6059
  %6073 = fmul fast float %6072, %6065
  %6074 = fmul fast float %6073, %6071
  %6075 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = bitcast float %6076 to i32
  %6078 = sitofp i32 %6077 to float
  %6079 = fmul fast float %6078, 5.000000e+00
  %6080 = fadd fast float %6079, 0xC1EFBF8940000000
  %6081 = fptosi float %6080 to i32
  %6082 = bitcast i32 %6081 to float
  %6083 = fsub fast float 1.000000e+00, %4419
  %6084 = fsub fast float 1.000000e+00, %4420
  %6085 = fsub fast float 1.000000e+00, %4445
  %6086 = fmul fast float %6082, %6083
  %6087 = fmul fast float %6082, %6084
  %6088 = fmul fast float %6082, %6085
  %6089 = fadd fast float %6086, %4419
  %6090 = fadd fast float %6087, %4420
  %6091 = fadd fast float %6088, %4445
  br i1 %4583, label %6092, label %6115

; <label>:6092                                    ; preds = %5981
  %6093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3817, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = fadd fast float %6094, -5.000000e-01
  %6098 = fadd fast float %6095, -5.000000e-01
  %6099 = fadd fast float %6096, -5.000000e-01
  %6100 = fmul fast float %4419, 4.000000e+00
  %6101 = fmul fast float %6100, %6083
  %6102 = fmul fast float %6101, %6097
  %6103 = fmul fast float %4420, 4.000000e+00
  %6104 = fmul fast float %6103, %6084
  %6105 = fmul fast float %6104, %6098
  %6106 = fmul fast float %4445, 4.000000e+00
  %6107 = fmul fast float %6106, %6085
  %6108 = fmul fast float %6107, %6099
  %6109 = fadd fast float %6102, %6089
  %6110 = fadd fast float %6105, %6090
  %6111 = fadd fast float %6108, %6091
  %6112 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6113 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6114 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  br label %6115

; <label>:6115                                    ; preds = %6092, %5981
  %6116 = phi float [ %6112, %6092 ], [ %6089, %5981 ]
  %6117 = phi float [ %6113, %6092 ], [ %6090, %5981 ]
  %6118 = phi float [ %6114, %6092 ], [ %6091, %5981 ]
  %6119 = fmul fast float %6009, 9.843750e-01
  %6120 = fadd fast float %6119, 7.812500e-03
  %6121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %6120, float %4573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 2
  %6123 = extractvalue %dx.types.ResRet.f32 %6121, 3
  %6124 = fmul fast float %6122, %4419
  %6125 = fmul fast float %6122, %4420
  %6126 = fmul fast float %6122, %4445
  %6127 = fadd fast float %6124, %6123
  %6128 = fadd fast float %6125, %6123
  %6129 = fadd fast float %6126, %6123
  br i1 %4583, label %6130, label %6153

; <label>:6130                                    ; preds = %6115
  %6131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %3817, float %6009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6132 = extractvalue %dx.types.ResRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.ResRet.f32 %6131, 1
  %6134 = extractvalue %dx.types.ResRet.f32 %6131, 2
  %6135 = fadd fast float %6132, -5.000000e-01
  %6136 = fadd fast float %6133, -5.000000e-01
  %6137 = fadd fast float %6134, -5.000000e-01
  %6138 = fmul fast float %4419, 4.000000e+00
  %6139 = fmul fast float %6138, %6083
  %6140 = fmul fast float %6139, %6135
  %6141 = fmul fast float %4420, 4.000000e+00
  %6142 = fmul fast float %6141, %6084
  %6143 = fmul fast float %6142, %6136
  %6144 = fmul fast float %4445, 4.000000e+00
  %6145 = fmul fast float %6144, %6085
  %6146 = fmul fast float %6145, %6137
  %6147 = fadd fast float %6140, %6127
  %6148 = fadd fast float %6143, %6128
  %6149 = fadd fast float %6146, %6129
  %6150 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6151 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6152 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  br label %6153

; <label>:6153                                    ; preds = %6130, %6115
  %6154 = phi float [ %6150, %6130 ], [ %6127, %6115 ]
  %6155 = phi float [ %6151, %6130 ], [ %6128, %6115 ]
  %6156 = phi float [ %6152, %6130 ], [ %6129, %6115 ]
  %6157 = call float @dx.op.binary.f32(i32 35, float %6155, float %6156)  ; FMax(a,b)
  %6158 = call float @dx.op.binary.f32(i32 35, float %6154, float %6157)  ; FMax(a,b)
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = fmul fast float %6116, %6074
  %6161 = fmul fast float %6117, %6074
  %6162 = fmul fast float %6118, %6074
  %6163 = fsub fast float 1.000000e+00, %6010
  %6164 = bitcast float %6163 to i32
  %6165 = sitofp i32 %6164 to float
  %6166 = fmul fast float %6165, 5.000000e+00
  %6167 = fadd fast float %6166, 0xC1EFBF8940000000
  %6168 = fptosi float %6167 to i32
  %6169 = bitcast i32 %6168 to float
  %6170 = fmul fast float %6169, %3818
  %6171 = fmul fast float %6159, %6170
  %6172 = fmul fast float %6171, %5509
  %6173 = fmul fast float %6171, %5510
  %6174 = fmul fast float %6171, %5511
  %6175 = fadd fast float %6172, %6160
  %6176 = fadd fast float %6173, %6161
  %6177 = fadd fast float %6174, %6162
  %6178 = fmul fast float %5998, %3814
  %6179 = fmul fast float %6178, %6017
  %6180 = fmul fast float %6179, %6159
  %6181 = fmul fast float %5999, %3814
  %6182 = fmul fast float %6181, %6017
  %6183 = fmul fast float %6182, %6159
  %6184 = fmul fast float %6000, %3814
  %6185 = fmul fast float %6184, %6017
  %6186 = fmul fast float %6185, %6159
  %6187 = fadd fast float %6180, %5837
  %6188 = fadd fast float %6183, %5838
  %6189 = fadd fast float %6186, %5839
  %6190 = fmul fast float %6179, %6175
  %6191 = fmul fast float %6182, %6176
  %6192 = fmul fast float %6185, %6177
  %6193 = fadd fast float %6190, %5834
  %6194 = fadd fast float %6191, %5835
  %6195 = fadd fast float %6192, %5836
  br label %5912

; <label>:6196                                    ; preds = %5912
  br label %6197

; <label>:6197                                    ; preds = %6196, %5800
  %6198 = phi float [ %5802, %5800 ], [ %5913, %6196 ]
  %6199 = phi float [ %5803, %5800 ], [ %5914, %6196 ]
  %6200 = phi float [ %5804, %5800 ], [ %5915, %6196 ]
  %6201 = phi float [ %5805, %5800 ], [ %5916, %6196 ]
  %6202 = phi float [ %5806, %5800 ], [ %5917, %6196 ]
  %6203 = phi float [ %5807, %5800 ], [ %5918, %6196 ]
  %6204 = add i32 %5801, 1
  %6205 = icmp ugt i32 %6204, %5797
  br i1 %6205, label %6206, label %5800

; <label>:6206                                    ; preds = %6197
  br label %6207

; <label>:6207                                    ; preds = %6206, %5776, %5766
  %6208 = phi float [ %5767, %5766 ], [ %5767, %5776 ], [ %6198, %6206 ]
  %6209 = phi float [ %5768, %5766 ], [ %5768, %5776 ], [ %6199, %6206 ]
  %6210 = phi float [ %5769, %5766 ], [ %5769, %5776 ], [ %6200, %6206 ]
  %6211 = phi float [ %5770, %5766 ], [ %5770, %5776 ], [ %6201, %6206 ]
  %6212 = phi float [ %5771, %5766 ], [ %5771, %5776 ], [ %6202, %6206 ]
  %6213 = phi float [ %5772, %5766 ], [ %5772, %5776 ], [ %6203, %6206 ]
  %6214 = call float @dx.op.unary.f32(i32 24, float %4422)  ; Sqrt(value)
  %6215 = call float @dx.op.unary.f32(i32 24, float %4423)  ; Sqrt(value)
  %6216 = call float @dx.op.unary.f32(i32 24, float %4424)  ; Sqrt(value)
  %6217 = fmul fast float %6214, %6211
  %6218 = fmul fast float %6215, %6212
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  br i1 %189, label %6221, label %6244

; <label>:6221                                    ; preds = %6207
  %6222 = fadd fast float %6213, %3820
  %6223 = fmul fast float %6222, %3821
  %6224 = fsub fast float 1.000000e+00, %3821
  %6225 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6228 = fmul fast float %6227, %6225
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = fmul fast float %6230, %5515
  %6232 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6233 = fmul fast float %6232, %4443
  %6234 = fadd fast float %6218, %6217
  %6235 = fmul fast float %6220, %6234
  %6236 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6237 = fadd fast float %6228, %6223
  %6238 = fsub fast float %6237, %6231
  %6239 = fadd fast float %6238, %6233
  %6240 = fsub fast float %6239, %6236
  %6241 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6242 = fmul fast float %6240, %6241
  %6243 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  br label %6260

; <label>:6244                                    ; preds = %6207
  %6245 = fmul fast float %6216, %6213
  %6246 = fmul fast float %6220, %6217
  %6247 = fmul fast float %6220, %6218
  %6248 = fmul fast float %6245, %6220
  %6249 = add i32 %49, 356
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = and i32 %6251, 32
  %6253 = icmp eq i32 %6252, 0
  br i1 %6253, label %6260, label %6254

; <label>:6254                                    ; preds = %6244
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = fmul fast float %6256, 0x3FE99999A0000000
  %6258 = fadd fast float %6256, %6246
  %6259 = fadd fast float %6257, %6248
  br label %6260

; <label>:6260                                    ; preds = %6254, %6244, %6221
  %6261 = phi float [ %6235, %6221 ], [ %6258, %6254 ], [ %6246, %6244 ]
  %6262 = phi float [ %6243, %6221 ], [ %6247, %6254 ], [ %6247, %6244 ]
  %6263 = phi float [ 1.000000e+00, %6221 ], [ %6259, %6254 ], [ %6248, %6244 ]
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = fmul fast float %6265, %6209
  %6267 = fmul fast float %6265, %6210
  %6268 = fadd fast float %6209, %6208
  %6269 = select i1 %189, float %6268, float %6208
  %6270 = fmul float %6269, %6265
  %6271 = select i1 %189, float 0.000000e+00, float %6266
  %6272 = select i1 %189, float 0.000000e+00, float %6267
  %6273 = fmul fast float %6261, %6214
  %6274 = fmul fast float %6262, %6215
  %6275 = fmul fast float %6263, %6216
  %6276 = fadd fast float %6270, %6273
  %6277 = fadd fast float %6271, %6274
  %6278 = fadd fast float %6272, %6275
  %6279 = select i1 %189, float %6262, float %6277
  %6280 = select i1 %189, float %6263, float %6278
  %6281 = call float @dx.op.binary.f32(i32 36, float %6276, float 3.225500e+04)  ; FMin(a,b)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6279, float 3.225500e+04)  ; FMin(a,b)
  %6283 = call float @dx.op.binary.f32(i32 36, float %6280, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6281)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6282)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

