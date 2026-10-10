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
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw        9     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: efc5b004f5f8e5d8feed42bfb78a3bda
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
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t49,space1     1
;                                   texture    byte         r/o     T14     t50,space1     1
;                                   texture    byte         r/o     T15     t51,space1     1
;                                   texture    byte         r/o     T16     t52,space1     1
;                                   texture    byte         r/o     T17     t16,space1     1
;                                   texture    byte         r/o     T18     t17,space1     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32          2d     T20             t0     1
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
;                                   texture     f32          2d     T32     t34,space2     1
;                                   texture     f32          3d     T33     t31,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35     t68,space1     1
;                                   texture     f32          2d     T36      t0,space2     1
;                                   texture    byte         r/o     T37     t11,space1     1
;                                   texture    byte         r/o     T38     t13,space1     1
;                                   texture     f32          2d     T39     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %73
  %81 = fmul fast float %79, %74
  %82 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %86, %65
  %88 = fmul fast float %86, %66
  %89 = fmul fast float %86, %67
  %90 = fmul fast float %66, %63
  %91 = fmul fast float %67, %62
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %67, %61
  %94 = fmul fast float %65, %63
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %65, %62
  %97 = fmul fast float %66, %61
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %92, %64
  %100 = fmul fast float %95, %64
  %101 = fmul fast float %98, %64
  %102 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %54
  %108 = fmul fast float %106, %55
  %109 = fmul fast float %106, %56
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %80, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %81, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %75
  %144 = fmul fast float %140, %75
  %145 = fmul fast float %142, %75
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %80
  %150 = fmul fast float %148, %81
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 114688
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %154, float %149, float 0.000000e+00
  %156 = select i1 %154, float %150, float 0.000000e+00
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, 2.550000e+02
  %160 = fptoui float %159 to i32
  %161 = select i1 %154, i32 %160, i32 0
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp ne i32 %167, 0
  %169 = and i1 %166, %168
  br i1 %169, label %170, label %181

; <label>:170                                     ; preds = %0
  %171 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %172 = fmul fast float %171, %81
  %173 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %174 = fmul fast float %173, %80
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %174, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fsub fast float 1.000000e+00, %176
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = fcmp fast olt float %177, %179
  br label %184

; <label>:181                                     ; preds = %0
  %182 = icmp eq i32 %167, 0
  %183 = and i1 %166, %182
  br label %184

; <label>:184                                     ; preds = %181, %170
  %185 = phi i1 [ %180, %170 ], [ %183, %181 ]
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fmul fast float %187, 0x3FE3C6EF40000000
  %189 = frem fast float %80, 2.560000e+02
  %190 = frem fast float %81, 2.560000e+02
  %191 = fptoui float %189 to i32
  %192 = fptoui float %190 to i32
  %193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = fadd fast float %194, %188
  %197 = fadd fast float %195, %188
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = add i32 %43, 156
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %43, 216
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %43, 36
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %43, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %43, 172
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %43, 232
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %43, 52
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %43, 304
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %43, 188
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %43, 248
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %43, 68
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %43, 320
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %43, 204
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %43, 264
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %43, 84
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %43, 336
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %43, 348
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %370, 64
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %370, 128
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %394, label %381

; <label>:381                                     ; preds = %184
  %382 = add i32 %43, 504
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = fmul fast float %388, %70
  %392 = fmul fast float %389, %71
  %393 = fmul fast float %390, %72
  br label %394

; <label>:394                                     ; preds = %381, %184
  %395 = phi float [ %72, %184 ], [ %393, %381 ]
  %396 = phi float [ %71, %184 ], [ %392, %381 ]
  %397 = phi float [ %70, %184 ], [ %391, %381 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %421, label %402

; <label>:402                                     ; preds = %394
  %403 = add i32 %43, 44
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 1
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %397, float 1.000000e+00
  %409 = add i32 %43, 60
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %396, float 1.000000e+00
  %415 = add i32 %43, 76
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %395, float 1.000000e+00
  br label %421

; <label>:421                                     ; preds = %402, %394
  %422 = phi float [ %395, %394 ], [ %420, %402 ]
  %423 = phi float [ %396, %394 ], [ %414, %402 ]
  %424 = phi float [ %397, %394 ], [ %408, %402 ]
  %425 = lshr i32 %399, 20
  %426 = and i32 %425, 3
  %427 = add nuw nsw i32 %426, 1
  %428 = add i32 %43, 24
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %43, 28
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = or i32 %433, %430
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %923, label %436

; <label>:436                                     ; preds = %421
  %437 = and i32 %430, 262144
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %47, float 1.000000e+00
  %440 = select i1 %438, float %48, float 0.000000e+00
  %441 = select i1 %438, float %49, float 0.000000e+00
  %442 = select i1 %438, float %50, float 1.000000e+00
  %443 = select i1 %438, float %51, float %68
  %444 = select i1 %438, float %52, float %69
  %445 = add i32 %43, 284
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fmul fast float %449, 0x3F50624DE0000000
  %451 = add i32 %43, 88
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  %456 = lshr i32 %453, 24
  %457 = add i32 %43, 292
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %43, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = shl i32 %466, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = fmul fast float %477, 1.000000e+03
  %479 = fmul fast float %240, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %230
  %482 = fmul fast float %241, %478
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fadd fast float %483, %232
  %485 = fmul fast float %450, %478
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, 0x401921FB60000000
  %488 = fadd fast float %487, %469
  %489 = call float @dx.op.unary.f32(i32 13, float %488)  ; Sin(value)
  %490 = call float @dx.op.unary.f32(i32 12, float %488)  ; Cos(value)
  %491 = fsub fast float -0.000000e+00, %489
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fmul fast float %461, %492
  %495 = fmul fast float %463, %493
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fmul fast float %472, %496
  %499 = fmul fast float %475, %497
  %500 = fmul fast float %490, %498
  %501 = call float @dx.op.tertiary.f32(i32 46, float %491, float %499, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %489, %498
  %503 = call float @dx.op.tertiary.f32(i32 46, float %490, float %499, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %481, %501
  %505 = fadd fast float %484, %503
  %506 = icmp ugt i32 %455, 1
  %507 = icmp ugt i32 %453, 33554431
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %436
  %510 = add i32 %43, 228
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %477, %514
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = mul nuw nsw i32 %455, %456
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %516, %518
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = fptoui float %520 to i32
  %522 = urem i32 %521, %455
  %523 = udiv i32 %521, %456
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = uitofp i32 %522 to float
  %527 = uitofp i32 %523 to float
  %528 = fadd fast float %524, %526
  %529 = fadd fast float %525, %527
  %530 = uitofp i32 %455 to float
  %531 = uitofp i32 %456 to float
  %532 = fdiv fast float %528, %530
  %533 = fdiv fast float %529, %531
  br label %534

; <label>:534                                     ; preds = %509, %436
  %535 = phi float [ %532, %509 ], [ %504, %436 ]
  %536 = phi float [ %533, %509 ], [ %505, %436 ]
  %537 = and i32 %430, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %735, label %539

; <label>:539                                     ; preds = %534
  %540 = add i32 %43, 392
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = and i32 %453, 255
  %551 = uitofp i32 %550 to float
  %552 = lshr i32 %453, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %549, %551
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %556, 0x3F70101000000000
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 512
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %570, label %562

; <label>:562                                     ; preds = %539
  %563 = add i32 %43, 472
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %77, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  br label %570

; <label>:570                                     ; preds = %562, %539
  %571 = phi float [ %569, %562 ], [ 1.000000e+00, %539 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 33554432
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %682, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %43, 224
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = add i32 %43, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = add i32 %43, 220
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %546 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %546, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %546
  %631 = fmul fast float %630, %629
  %632 = bitcast float %547 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %547, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %547
  %641 = fmul fast float %640, %639
  %642 = bitcast float %548 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %548, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %548
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %581
  %656 = fmul fast float %653, %583
  %657 = fmul fast float %654, %588
  %658 = fadd fast float %655, %596
  %659 = fadd fast float %656, %600
  %660 = fadd fast float %657, %604
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fmul fast float %667, %571
  %671 = fmul fast float %668, %571
  %672 = fmul fast float %669, %571
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %593, %557
  %677 = fsub fast float %676, %610
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = fsub fast float %678, %557
  %680 = fmul fast float %679, %571
  %681 = fadd fast float %680, %557
  br label %735

; <label>:682                                     ; preds = %570
  %683 = and i32 %573, 134217728
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %719, label %685

; <label>:685                                     ; preds = %682
  %686 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fmul fast float %689, %571
  %693 = fmul fast float %690, %571
  %694 = fmul fast float %691, %571
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = fmul fast float %695, 2.000000e+00
  %702 = fsub fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %698
  %704 = fadd fast float %703, %701
  %705 = fmul fast float %704, %698
  %706 = fmul fast float %696, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %699
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %699
  %711 = fmul fast float %697, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %700
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %700
  %716 = fmul fast float %705, %705
  %717 = fmul fast float %710, %710
  %718 = fmul fast float %715, %715
  br label %735

; <label>:719                                     ; preds = %682
  %720 = fmul fast float %217, %217
  %721 = fmul fast float %221, %221
  %722 = fmul fast float %225, %225
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fmul fast float %571, %723
  %727 = fmul fast float %571, %724
  %728 = fmul fast float %571, %725
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  br label %735

; <label>:735                                     ; preds = %719, %685, %576, %534
  %736 = phi float [ %681, %576 ], [ %557, %685 ], [ %557, %719 ], [ 0x3FA23C0BE0000000, %534 ]
  %737 = phi float [ %673, %576 ], [ %716, %685 ], [ %732, %719 ], [ 1.000000e+00, %534 ]
  %738 = phi float [ %674, %576 ], [ %717, %685 ], [ %733, %719 ], [ 1.000000e+00, %534 ]
  %739 = phi float [ %675, %576 ], [ %718, %685 ], [ %734, %719 ], [ 1.000000e+00, %534 ]
  %740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.i32 %740, 1
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  %744 = add i32 %43, 356
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 32
  %748 = icmp ne i32 %747, 0
  %749 = and i1 %743, %748
  %750 = select i1 %749, float 1.000000e+00, float %737
  %751 = select i1 %749, float 0x3FD3333340000000, float %738
  %752 = select i1 %749, float 0x3FD3333340000000, float %739
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %829, label %757

; <label>:757                                     ; preds = %735
  %758 = add i32 %43, 92
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %43, 408
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = and i32 %760, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %760, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %760, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fmul fast float %767, %772
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %781, 0x3F70101000000000
  %783 = fadd fast float %768, -5.000000e-01
  %784 = fadd fast float %770, -5.000000e-01
  %785 = fmul fast float %783, %779
  %786 = fmul fast float %784, %779
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %787, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fmul fast float %788, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fadd fast float %790, %792
  %794 = fmul fast float %793, 5.000000e-01
  %795 = fsub fast float %790, %792
  %796 = fmul fast float %795, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float 1.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.dot3.f32(i32 55, float %794, float %796, float %800, float %794, float %796, float %800)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 25, float %801)  ; Rsqrt(value)
  %803 = fmul fast float %794, %802
  %804 = fmul fast float %796, %802
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 67108864
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

; <label>:809                                     ; preds = %757
  %810 = add i32 %43, 280
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float %782, %820
  %822 = fmul fast float %821, %814
  %823 = fadd fast float %822, %818
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %809, %757
  %826 = phi float [ %824, %809 ], [ %782, %757 ]
  %827 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %825, %735
  %830 = phi float [ %826, %825 ], [ 0x3FD6666660000000, %735 ]
  %831 = phi float [ %827, %825 ], [ 0.000000e+00, %735 ]
  %832 = phi float [ %828, %825 ], [ 0.000000e+00, %735 ]
  %833 = phi float [ %769, %825 ], [ 1.000000e+00, %735 ]
  %834 = add i32 %43, 160
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %43, 424
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %205
  %859 = fmul fast float %856, %208
  %860 = fmul fast float %857, %211
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %185, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %185, float 0.000000e+00, float %868
  %875 = select i1 %185, float %873, float %869
  %876 = select i1 %185, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 26624
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %908, label %885

; <label>:885                                     ; preds = %877
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 16384
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %908, label %890

; <label>:890                                     ; preds = %885
  %891 = and i32 %887, 1048576
  %892 = icmp ne i32 %891, 0
  %893 = add i32 %43, 488
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %895, 0
  %897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %897, %dx.types.Handle %77, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = add i32 %43, 96
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = lshr i32 %902, 24
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %899, 0x3F70101020000000
  %906 = select i1 %892, float 0x3F70101020000000, float %905
  %907 = fmul fast float %906, %904
  br label %908

; <label>:908                                     ; preds = %890, %885, %877
  %909 = phi float [ %907, %890 ], [ 0.000000e+00, %885 ], [ 0.000000e+00, %877 ]
  %910 = add i32 %43, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %908, %421
  %924 = phi float [ 0.000000e+00, %421 ], [ %831, %908 ]
  %925 = phi float [ 0.000000e+00, %421 ], [ %832, %908 ]
  %926 = phi float [ 0.000000e+00, %421 ], [ %750, %908 ]
  %927 = phi float [ 0.000000e+00, %421 ], [ %751, %908 ]
  %928 = phi float [ 0.000000e+00, %421 ], [ %752, %908 ]
  %929 = phi float [ 0.000000e+00, %421 ], [ %878, %908 ]
  %930 = phi float [ 0.000000e+00, %421 ], [ %879, %908 ]
  %931 = phi float [ 0.000000e+00, %421 ], [ %880, %908 ]
  %932 = phi float [ 0.000000e+00, %421 ], [ %736, %908 ]
  %933 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %908 ]
  %934 = phi float [ 0.000000e+00, %421 ], [ %830, %908 ]
  %935 = phi float [ 0.000000e+00, %421 ], [ %833, %908 ]
  %936 = phi float [ 0.000000e+00, %421 ], [ %909, %908 ]
  %937 = phi float [ 0.000000e+00, %421 ], [ %922, %908 ]
  br i1 %372, label %1818, label %938

; <label>:938                                     ; preds = %923
  %939 = icmp ult i32 %427, 2
  %940 = add i32 %43, 40
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = add i32 %43, 44
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = or i32 %945, %942
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %1818, label %948

; <label>:948                                     ; preds = %938
  %949 = and i32 %942, 262144
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %47, float 1.000000e+00
  %952 = select i1 %950, float %48, float 0.000000e+00
  %953 = select i1 %950, float %49, float 0.000000e+00
  %954 = select i1 %950, float %50, float 1.000000e+00
  %955 = select i1 %950, float %51, float %68
  %956 = select i1 %950, float %52, float %69
  %957 = add i32 %43, 300
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = lshr i32 %959, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %961, 0x3F50624DE0000000
  %963 = add i32 %43, 104
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 16
  %967 = and i32 %966, 255
  %968 = lshr i32 %965, 24
  %969 = add i32 %43, 308
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = lshr i32 %971, 16
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = add i32 %43, 48
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 22
  %980 = shl nuw nsw i32 %979, 5
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = shl i32 %978, 4
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %978, 7
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %990 = fmul fast float %989, 1.000000e+03
  %991 = fmul fast float %282, %990
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %272
  %994 = fmul fast float %283, %990
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fadd fast float %995, %274
  %997 = fmul fast float %962, %990
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fmul fast float %998, 0x401921FB60000000
  %1000 = fadd fast float %999, %981
  %1001 = call float @dx.op.unary.f32(i32 13, float %1000)  ; Sin(value)
  %1002 = call float @dx.op.unary.f32(i32 12, float %1000)  ; Cos(value)
  %1003 = fsub fast float -0.000000e+00, %1001
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fadd fast float %956, -5.000000e-01
  %1006 = fmul fast float %973, %1004
  %1007 = fmul fast float %975, %1005
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fmul fast float %984, %1008
  %1011 = fmul fast float %987, %1009
  %1012 = fmul fast float %1002, %1010
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1003, float %1011, float %1012)  ; FMad(a,b,c)
  %1014 = fmul fast float %1001, %1010
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1011, float %1014)  ; FMad(a,b,c)
  %1016 = fadd fast float %993, %1013
  %1017 = fadd fast float %996, %1015
  %1018 = icmp ugt i32 %967, 1
  %1019 = icmp ugt i32 %965, 33554431
  %1020 = or i1 %1019, %1018
  br i1 %1020, label %1021, label %1046

; <label>:1021                                    ; preds = %948
  %1022 = add i32 %43, 244
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = fmul fast float %989, %1026
  %1028 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1029 = mul nuw nsw i32 %967, %968
  %1030 = uitofp i32 %1029 to float
  %1031 = fmul fast float %1028, %1030
  %1032 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1033 = fptoui float %1032 to i32
  %1034 = urem i32 %1033, %967
  %1035 = udiv i32 %1033, %968
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1038 = uitofp i32 %1034 to float
  %1039 = uitofp i32 %1035 to float
  %1040 = fadd fast float %1036, %1038
  %1041 = fadd fast float %1037, %1039
  %1042 = uitofp i32 %967 to float
  %1043 = uitofp i32 %968 to float
  %1044 = fdiv fast float %1040, %1042
  %1045 = fdiv fast float %1041, %1043
  br label %1046

; <label>:1046                                    ; preds = %1021, %948
  %1047 = phi float [ %1044, %1021 ], [ %1016, %948 ]
  %1048 = phi float [ %1045, %1021 ], [ %1017, %948 ]
  %1049 = and i32 %942, 16777216
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1160, label %1051

; <label>:1051                                    ; preds = %1046
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = fadd fast float %1053, %143
  %1057 = fadd fast float %1054, %144
  %1058 = fadd fast float %1055, %145
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = icmp eq i32 %44, 65535
  br i1 %1062, label %1157, label %1063

; <label>:1063                                    ; preds = %1051
  %1064 = lshr i32 %44, 1
  %1065 = shl i32 %1064, 2
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %44, 1
  %1069 = icmp ne i32 %1068, 0
  %1070 = lshr i32 %1067, 16
  %1071 = and i32 %1067, 65535
  %1072 = select i1 %1069, i32 %1070, i32 %1071
  %1073 = icmp eq i32 %1072, 65535
  br i1 %1073, label %1153, label %1074

; <label>:1074                                    ; preds = %1063
  %1075 = mul nuw nsw i32 %1072, 40
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = add nuw nsw i32 %1075, 12
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add nuw nsw i32 %1075, 24
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = add nuw nsw i32 %1075, 36
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = fsub fast float %1056, %1077
  %1094 = fsub fast float %1057, %1078
  %1095 = fsub fast float %1058, %1079
  %1096 = fmul fast float %1092, %1093
  %1097 = fmul fast float %1092, %1094
  %1098 = fmul fast float %1092, %1095
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fmul fast float %1102, %1082
  %1106 = fmul fast float %1103, %1083
  %1107 = fmul fast float %1104, %1084
  %1108 = shl i32 %44, 2
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1112, %dx.types.Handle %40, float %1113, float %1114, float %1115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = fsub fast float %1096, %1099
  %1130 = fsub fast float %1097, %1100
  %1131 = fsub fast float %1098, %1101
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fadd fast float %1099, 1.250000e-01
  %1136 = fadd fast float %1135, %1132
  %1137 = fadd fast float %1136, %1126
  %1138 = fadd fast float %1100, 1.250000e-01
  %1139 = fadd fast float %1138, %1133
  %1140 = fadd fast float %1139, %1127
  %1141 = fadd fast float %1101, 1.250000e-01
  %1142 = fadd fast float %1141, %1134
  %1143 = fadd fast float %1142, %1128
  %1144 = fmul fast float %1137, %1087
  %1145 = fmul fast float %1140, %1088
  %1146 = fmul fast float %1143, %1089
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1150, %dx.types.Handle %38, float %1144, float %1145, float %1146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  br label %1153

; <label>:1153                                    ; preds = %1074, %1063
  %1154 = phi float [ %1152, %1074 ], [ -1.000000e+00, %1063 ]
  %1155 = fadd fast float %1154, %1061
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  br label %1157

; <label>:1157                                    ; preds = %1153, %1051
  %1158 = phi float [ %1156, %1153 ], [ %1061, %1051 ]
  %1159 = fmul fast float %1158, %424
  br label %1160

; <label>:1160                                    ; preds = %1157, %1046
  %1161 = phi float [ %1159, %1157 ], [ %424, %1046 ]
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 256
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1212, label %1166

; <label>:1166                                    ; preds = %1160
  %1167 = add i32 %43, 460
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = add i32 %43, 116
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = shl i32 %1176, 4
  %1178 = and i32 %1177, 32752
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = lshr i32 %1176, 7
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fsub fast float 1.000000e+00, %1161
  %1184 = call float @dx.op.binary.f32(i32 35, float %1183, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1185 = bitcast float %1161 to i32
  %1186 = sitofp i32 %1185 to float
  %1187 = fadd fast float %1186, 0xC1CFBF8940000000
  %1188 = fmul fast float %1182, %1187
  %1189 = fadd fast float %1188, 0x41CFBF8940000000
  %1190 = fptosi float %1189 to i32
  %1191 = bitcast i32 %1190 to float
  %1192 = bitcast float %1184 to i32
  %1193 = sitofp i32 %1192 to float
  %1194 = fadd fast float %1193, 0xC1CFBF8940000000
  %1195 = fmul fast float %1194, %1182
  %1196 = fadd fast float %1195, 0x41CFBF8940000000
  %1197 = fptosi float %1196 to i32
  %1198 = bitcast i32 %1197 to float
  %1199 = fmul fast float %1191, %1179
  %1200 = fmul fast float %1198, %1179
  %1201 = fsub fast float %1184, %1199
  %1202 = fadd fast float %1200, %1184
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = fsub fast float %1173, %1203
  %1206 = fsub fast float %1204, %1203
  %1207 = bitcast float %1206 to i32
  %1208 = sub nsw i32 2129859010, %1207
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1209, %1205
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  br label %1212

; <label>:1212                                    ; preds = %1166, %1160
  %1213 = phi float [ %1211, %1166 ], [ %1161, %1160 ]
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 128
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1234, label %1218

; <label>:1218                                    ; preds = %1212
  %1219 = add i32 %43, 444
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1221, 0
  %1223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1223, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 524288
  %1229 = icmp ne i32 %1228, 0
  %1230 = fcmp fast ogt float %1225, 0x3FE0101020000000
  %1231 = select i1 %1230, float 1.000000e+00, float 0.000000e+00
  %1232 = select i1 %1229, float %1231, float %1225
  %1233 = fmul fast float %1232, %1213
  br label %1234

; <label>:1234                                    ; preds = %1218, %1212
  %1235 = phi float [ %1233, %1218 ], [ %1213, %1212 ]
  %1236 = fcmp fast ult float %1235, 0x3F70101020000000
  br i1 %1236, label %1818, label %1237

; <label>:1237                                    ; preds = %1234
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 16
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1440, label %1242

; <label>:1242                                    ; preds = %1237
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %43, 396
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %1247, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1249, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = and i32 %1244, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = lshr i32 %1244, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1254, %1256
  %1261 = fadd fast float %1260, %1259
  %1262 = fmul fast float %1261, 0x3F70101000000000
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 512
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1275, label %1267

; <label>:1267                                    ; preds = %1242
  %1268 = add i32 %43, 476
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  br label %1275

; <label>:1275                                    ; preds = %1267, %1242
  %1276 = phi float [ %1274, %1267 ], [ 1.000000e+00, %1242 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 33554432
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1387, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %43, 240
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 65535
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = lshr i32 %1284, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = add i32 %43, 244
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 65535
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 24
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = and i32 %1295, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1295, 8
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = lshr i32 %1295, 16
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1308, 0x3F70101020000000
  %1310 = add i32 %43, 236
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = lshr i32 %1312, 24
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = and i32 %1312, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1312, 8
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = lshr i32 %1312, 16
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = bitcast float %1251 to i32
  %1328 = ashr i32 %1327, 1
  %1329 = sub nsw i32 1597463174, %1328
  %1330 = bitcast i32 %1329 to float
  %1331 = fmul fast float %1251, 5.000000e-01
  %1332 = fmul fast float %1330, %1330
  %1333 = fmul fast float %1332, %1331
  %1334 = fsub fast float 1.500000e+00, %1333
  %1335 = fmul fast float %1330, %1251
  %1336 = fmul fast float %1335, %1334
  %1337 = bitcast float %1252 to i32
  %1338 = ashr i32 %1337, 1
  %1339 = sub nsw i32 1597463174, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = fmul fast float %1252, 5.000000e-01
  %1342 = fmul fast float %1340, %1340
  %1343 = fmul fast float %1342, %1341
  %1344 = fsub fast float 1.500000e+00, %1343
  %1345 = fmul fast float %1340, %1252
  %1346 = fmul fast float %1345, %1344
  %1347 = bitcast float %1253 to i32
  %1348 = ashr i32 %1347, 1
  %1349 = sub nsw i32 1597463174, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1253, 5.000000e-01
  %1352 = fmul fast float %1350, %1350
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float 1.500000e+00, %1353
  %1355 = fmul fast float %1350, %1253
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float %1336, %1318
  %1358 = fsub fast float %1346, %1322
  %1359 = fsub fast float %1356, %1326
  %1360 = fmul fast float %1357, %1286
  %1361 = fmul fast float %1358, %1288
  %1362 = fmul fast float %1359, %1293
  %1363 = fadd fast float %1360, %1301
  %1364 = fadd fast float %1361, %1305
  %1365 = fadd fast float %1362, %1309
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fmul fast float %1368, %1368
  %1372 = fsub fast float %1369, %1251
  %1373 = fsub fast float %1370, %1252
  %1374 = fsub fast float %1371, %1253
  %1375 = fmul fast float %1372, %1276
  %1376 = fmul fast float %1373, %1276
  %1377 = fmul fast float %1374, %1276
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1298, %1262
  %1382 = fsub fast float %1381, %1315
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float %1383, %1262
  %1385 = fmul fast float %1384, %1276
  %1386 = fadd fast float %1385, %1262
  br label %1440

; <label>:1387                                    ; preds = %1275
  %1388 = and i32 %1278, 134217728
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1424, label %1390

; <label>:1390                                    ; preds = %1387
  %1391 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fmul fast float %1394, %1276
  %1398 = fmul fast float %1395, %1276
  %1399 = fmul fast float %1396, %1276
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = fmul fast float %1400, 2.000000e+00
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = fmul fast float %1407, %1403
  %1409 = fadd fast float %1408, %1406
  %1410 = fmul fast float %1409, %1403
  %1411 = fmul fast float %1401, 2.000000e+00
  %1412 = fsub fast float 1.000000e+00, %1411
  %1413 = fmul fast float %1412, %1404
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1414, %1404
  %1416 = fmul fast float %1402, 2.000000e+00
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = fmul fast float %1417, %1405
  %1419 = fadd fast float %1418, %1416
  %1420 = fmul fast float %1419, %1405
  %1421 = fmul fast float %1410, %1410
  %1422 = fmul fast float %1415, %1415
  %1423 = fmul fast float %1420, %1420
  br label %1440

; <label>:1424                                    ; preds = %1387
  %1425 = fmul fast float %259, %259
  %1426 = fmul fast float %263, %263
  %1427 = fmul fast float %267, %267
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fmul fast float %1276, %1428
  %1432 = fmul fast float %1276, %1429
  %1433 = fmul fast float %1276, %1430
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fmul fast float %1434, %1251
  %1438 = fmul fast float %1435, %1252
  %1439 = fmul fast float %1436, %1253
  br label %1440

; <label>:1440                                    ; preds = %1424, %1390, %1281, %1237
  %1441 = phi float [ %1386, %1281 ], [ %1262, %1390 ], [ %1262, %1424 ], [ 0x3FA23C0BE0000000, %1237 ]
  %1442 = phi float [ %1378, %1281 ], [ %1421, %1390 ], [ %1437, %1424 ], [ 1.000000e+00, %1237 ]
  %1443 = phi float [ %1379, %1281 ], [ %1422, %1390 ], [ %1438, %1424 ], [ 1.000000e+00, %1237 ]
  %1444 = phi float [ %1380, %1281 ], [ %1423, %1390 ], [ %1439, %1424 ], [ 1.000000e+00, %1237 ]
  %1445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.i32 %1445, 1
  %1447 = and i32 %1446, 1
  %1448 = icmp ne i32 %1447, 0
  %1449 = add i32 %43, 356
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 32
  %1453 = icmp ne i32 %1452, 0
  %1454 = and i1 %1448, %1453
  %1455 = select i1 %1454, float 1.000000e+00, float %1442
  %1456 = select i1 %1454, float 0x3FD3333340000000, float %1443
  %1457 = select i1 %1454, float 0x3FD3333340000000, float %1444
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 32
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1534, label %1462

; <label>:1462                                    ; preds = %1440
  %1463 = add i32 %43, 108
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %43, 412
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = and i32 %1465, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1465, 8
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = lshr i32 %1465, 16
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = fmul fast float %1472, %1477
  %1486 = fadd fast float %1485, %1480
  %1487 = fmul fast float %1486, 0x3F70101000000000
  %1488 = fadd fast float %1473, -5.000000e-01
  %1489 = fadd fast float %1475, -5.000000e-01
  %1490 = fmul fast float %1488, %1484
  %1491 = fmul fast float %1489, %1484
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fmul fast float %1492, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fmul fast float %1493, 2.000000e+00
  %1497 = fadd fast float %1496, -1.000000e+00
  %1498 = fadd fast float %1495, %1497
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = fsub fast float %1495, %1497
  %1501 = fmul fast float %1500, 5.000000e-01
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = call float @dx.op.unary.f32(i32 6, float %1501)  ; FAbs(value)
  %1505 = fsub fast float %1503, %1504
  %1506 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1501, float %1505, float %1499, float %1501, float %1505)  ; Dot3(ax,ay,az,bx,by,bz)
  %1507 = call float @dx.op.unary.f32(i32 25, float %1506)  ; Rsqrt(value)
  %1508 = fmul fast float %1499, %1507
  %1509 = fmul fast float %1501, %1507
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 67108864
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1530, label %1514

; <label>:1514                                    ; preds = %1462
  %1515 = add i32 %43, 296
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 65535
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 65535
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = lshr i32 %1517, 16
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = fsub fast float %1487, %1525
  %1527 = fmul fast float %1526, %1519
  %1528 = fadd fast float %1527, %1523
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  br label %1530

; <label>:1530                                    ; preds = %1514, %1462
  %1531 = phi float [ %1529, %1514 ], [ %1487, %1462 ]
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1508, float %1509, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1508, float %1509, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  br label %1534

; <label>:1534                                    ; preds = %1530, %1440
  %1535 = phi float [ %1531, %1530 ], [ 0x3FD6666660000000, %1440 ]
  %1536 = phi float [ %1532, %1530 ], [ 0.000000e+00, %1440 ]
  %1537 = phi float [ %1533, %1530 ], [ 0.000000e+00, %1440 ]
  %1538 = phi float [ %1474, %1530 ], [ 1.000000e+00, %1440 ]
  %1539 = add i32 %43, 176
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = lshr i32 %1541, 22
  %1543 = shl nuw nsw i32 %1542, 5
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 64
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1582, label %1549

; <label>:1549                                    ; preds = %1534
  %1550 = add i32 %43, 428
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 131072
  %1558 = icmp eq i32 %1557, 0
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = fmul fast float %1560, %247
  %1564 = fmul fast float %1561, %250
  %1565 = fmul fast float %1562, %253
  br i1 %1558, label %1572, label %1566

; <label>:1566                                    ; preds = %1549
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = fmul fast float %1568, %1563
  %1570 = fmul fast float %1568, %1564
  %1571 = fmul fast float %1568, %1565
  br label %1572

; <label>:1572                                    ; preds = %1566, %1549
  %1573 = phi float [ %1569, %1566 ], [ %1563, %1549 ]
  %1574 = phi float [ %1570, %1566 ], [ %1564, %1549 ]
  %1575 = phi float [ %1571, %1566 ], [ %1565, %1549 ]
  %1576 = fmul fast float %1573, %1544
  %1577 = select i1 %185, float %1576, float %1573
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1574, float %1575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = select i1 %185, float 0.000000e+00, float %1573
  %1580 = select i1 %185, float %1578, float %1574
  %1581 = select i1 %185, float 0.000000e+00, float %1575
  br label %1582

; <label>:1582                                    ; preds = %1572, %1534
  %1583 = phi float [ %1579, %1572 ], [ 0.000000e+00, %1534 ]
  %1584 = phi float [ %1580, %1572 ], [ 0.000000e+00, %1534 ]
  %1585 = phi float [ %1581, %1572 ], [ 0.000000e+00, %1534 ]
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 26624
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1613, label %1590

; <label>:1590                                    ; preds = %1582
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 16384
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1613, label %1595

; <label>:1595                                    ; preds = %1590
  %1596 = and i32 %1592, 1048576
  %1597 = icmp ne i32 %1596, 0
  %1598 = add i32 %43, 492
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = add i32 %1600, 0
  %1602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1602, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = add i32 %43, 112
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 24
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1604, 0x3F70101020000000
  %1611 = select i1 %1597, float 0x3F70101020000000, float %1610
  %1612 = fmul fast float %1611, %1609
  br label %1613

; <label>:1613                                    ; preds = %1595, %1590, %1582
  %1614 = phi float [ %1612, %1595 ], [ 0.000000e+00, %1590 ], [ 0.000000e+00, %1582 ]
  %1615 = add i32 %43, 112
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = lshr i32 %1617, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = fmul fast float %1622, %1623
  %1625 = fadd fast float %1624, %1619
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  br i1 %939, label %1628, label %1636

; <label>:1628                                    ; preds = %1613
  %1629 = fsub fast float 1.000000e+00, %1235
  %1630 = fmul fast float %1629, %926
  %1631 = fmul fast float %1629, %927
  %1632 = fmul fast float %1629, %928
  %1633 = fmul fast float %1629, %929
  %1634 = fmul fast float %1629, %930
  %1635 = fmul fast float %1629, %931
  br label %1636

; <label>:1636                                    ; preds = %1628, %1613
  %1637 = phi float [ %1630, %1628 ], [ %926, %1613 ]
  %1638 = phi float [ %1631, %1628 ], [ %927, %1613 ]
  %1639 = phi float [ %1632, %1628 ], [ %928, %1613 ]
  %1640 = phi float [ %1633, %1628 ], [ %929, %1613 ]
  %1641 = phi float [ %1634, %1628 ], [ %930, %1613 ]
  %1642 = phi float [ %1635, %1628 ], [ %931, %1613 ]
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 3
  %1646 = icmp eq i32 %1645, 3
  br i1 %1646, label %1725, label %1647

; <label>:1647                                    ; preds = %1636
  %1648 = and i32 %1644, 16
  %1649 = icmp ne i32 %1648, 0
  %1650 = select i1 %1649, float %1235, float 0.000000e+00
  %1651 = icmp eq i32 %1645, 0
  br i1 %1651, label %1652, label %1680

; <label>:1652                                    ; preds = %1647
  %1653 = and i32 %1644, 64
  %1654 = icmp ne i32 %1653, 0
  %1655 = select i1 %1654, float %1235, float 0.000000e+00
  %1656 = fsub fast float %1455, %1637
  %1657 = fsub fast float %1456, %1638
  %1658 = fsub fast float %1457, %1639
  %1659 = fmul fast float %1650, %1656
  %1660 = fmul fast float %1650, %1657
  %1661 = fmul fast float %1650, %1658
  %1662 = fadd fast float %1659, %1637
  %1663 = fadd fast float %1660, %1638
  %1664 = fadd fast float %1661, %1639
  %1665 = fsub fast float %1441, %932
  %1666 = fmul fast float %1650, %1665
  %1667 = fadd fast float %1666, %932
  %1668 = fsub fast float %1583, %1640
  %1669 = fsub fast float %1584, %1641
  %1670 = fsub fast float %1585, %1642
  %1671 = fmul fast float %1655, %1668
  %1672 = fmul fast float %1655, %1669
  %1673 = fmul fast float %1655, %1670
  %1674 = fadd fast float %1671, %1640
  %1675 = fadd fast float %1672, %1641
  %1676 = fadd fast float %1673, %1642
  %1677 = fsub fast float %1627, %937
  %1678 = fmul fast float %1650, %1677
  %1679 = fadd fast float %1678, %937
  br label %1725

; <label>:1680                                    ; preds = %1647
  %1681 = icmp eq i32 %1645, 1
  br i1 %1681, label %1682, label %1695

; <label>:1682                                    ; preds = %1680
  %1683 = fadd fast float %1455, -1.000000e+00
  %1684 = fadd fast float %1456, -1.000000e+00
  %1685 = fadd fast float %1457, -1.000000e+00
  %1686 = fmul fast float %1650, %1683
  %1687 = fmul fast float %1650, %1684
  %1688 = fmul fast float %1650, %1685
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fmul fast float %1689, %1637
  %1693 = fmul fast float %1690, %1638
  %1694 = fmul fast float %1691, %1639
  br label %1725

; <label>:1695                                    ; preds = %1680
  %1696 = icmp eq i32 %1645, 2
  br i1 %1696, label %1697, label %1725

; <label>:1697                                    ; preds = %1695
  %1698 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1699 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fmul fast float %1701, %1650
  %1705 = fmul fast float %1702, %1650
  %1706 = fmul fast float %1703, %1650
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fmul fast float %1707, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1637
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1637
  %1715 = fmul fast float %1708, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1638
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1638
  %1720 = fmul fast float %1709, 2.000000e+00
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = fmul fast float %1721, %1639
  %1723 = fadd fast float %1722, %1720
  %1724 = fmul fast float %1723, %1639
  br label %1725

; <label>:1725                                    ; preds = %1697, %1695, %1682, %1652, %1636
  %1726 = phi float [ %1637, %1636 ], [ %1714, %1697 ], [ %1637, %1695 ], [ %1692, %1682 ], [ %1662, %1652 ]
  %1727 = phi float [ %1638, %1636 ], [ %1719, %1697 ], [ %1638, %1695 ], [ %1693, %1682 ], [ %1663, %1652 ]
  %1728 = phi float [ %1639, %1636 ], [ %1724, %1697 ], [ %1639, %1695 ], [ %1694, %1682 ], [ %1664, %1652 ]
  %1729 = phi float [ %1640, %1636 ], [ %1640, %1697 ], [ %1640, %1695 ], [ %1640, %1682 ], [ %1674, %1652 ]
  %1730 = phi float [ %1641, %1636 ], [ %1641, %1697 ], [ %1641, %1695 ], [ %1641, %1682 ], [ %1675, %1652 ]
  %1731 = phi float [ %1642, %1636 ], [ %1642, %1697 ], [ %1642, %1695 ], [ %1642, %1682 ], [ %1676, %1652 ]
  %1732 = phi float [ %932, %1636 ], [ %932, %1697 ], [ %932, %1695 ], [ %932, %1682 ], [ %1667, %1652 ]
  %1733 = phi float [ %937, %1636 ], [ %937, %1697 ], [ %937, %1695 ], [ %937, %1682 ], [ %1679, %1652 ]
  %1734 = and i32 %1644, 12
  %1735 = icmp eq i32 %1734, 12
  br i1 %1735, label %1818, label %1736

; <label>:1736                                    ; preds = %1725
  %1737 = and i32 %1644, 2097184
  %1738 = icmp eq i32 %1737, 2097184
  %1739 = select i1 %1738, float %1235, float 0.000000e+00
  %1740 = and i32 %1644, 4194336
  %1741 = icmp eq i32 %1740, 4194336
  %1742 = select i1 %1741, float %1235, float 0.000000e+00
  %1743 = and i32 %1644, 8388640
  %1744 = icmp eq i32 %1743, 8388640
  %1745 = select i1 %1744, float %1235, float 0.000000e+00
  %1746 = and i32 %1644, 16384
  %1747 = icmp ne i32 %1746, 0
  %1748 = select i1 %1747, float %1235, float 0.000000e+00
  %1749 = icmp eq i32 %1734, 0
  br i1 %1749, label %1750, label %1766

; <label>:1750                                    ; preds = %1736
  %1751 = fsub fast float %1536, %924
  %1752 = fsub fast float %1537, %925
  %1753 = fmul fast float %1739, %1751
  %1754 = fmul fast float %1739, %1752
  %1755 = fadd fast float %1753, %924
  %1756 = fadd fast float %1754, %925
  %1757 = fsub fast float %1538, %935
  %1758 = fmul fast float %1742, %1757
  %1759 = fadd fast float %1758, %935
  %1760 = fsub fast float %1535, %934
  %1761 = fmul fast float %1745, %1760
  %1762 = fadd fast float %1761, %934
  %1763 = fsub fast float %1614, %936
  %1764 = fmul fast float %1748, %1763
  %1765 = fadd fast float %1764, %936
  br label %1818

; <label>:1766                                    ; preds = %1736
  %1767 = icmp eq i32 %1734, 4
  br i1 %1767, label %1768, label %1802

; <label>:1768                                    ; preds = %1766
  %1769 = fmul fast float %1739, %1536
  %1770 = fmul fast float %1739, %1537
  %1771 = fadd fast float %1769, %924
  %1772 = fadd fast float %1770, %925
  %1773 = call float @dx.op.binary.f32(i32 36, float %935, float %1538)  ; FMin(a,b)
  %1774 = fsub fast float %1773, %935
  %1775 = fmul fast float %1774, %1742
  %1776 = fadd fast float %1775, %935
  %1777 = fadd fast float %1535, %934
  %1778 = fmul fast float %1777, 0x3FF337FAE0000000
  %1779 = fmul fast float %934, %934
  %1780 = fmul fast float %1535, %1535
  %1781 = fadd fast float %1780, %1779
  %1782 = fmul fast float %1781, 0x3FE5152B00000000
  %1783 = fmul fast float %934, 0xBFCC1F85E0000000
  %1784 = fmul fast float %1783, %1535
  %1785 = fadd fast float %1784, 0xBFE1363700000000
  %1786 = fadd fast float %1785, %1778
  %1787 = fsub fast float %1786, %1782
  %1788 = fmul fast float %1777, 0x3FBA6F0D00000000
  %1789 = fmul fast float %1781, 0x3FD0432880000000
  %1790 = fmul fast float %934, 0xBFEF110800000000
  %1791 = fmul fast float %1790, %1535
  %1792 = fadd fast float %1791, 1.000000e+00
  %1793 = fsub fast float %1792, %1788
  %1794 = fadd fast float %1793, %1789
  %1795 = fdiv fast float %1787, %1794
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fsub fast float %1796, %934
  %1798 = fmul fast float %1797, %1745
  %1799 = fadd fast float %1798, %934
  %1800 = fmul fast float %1748, %1614
  %1801 = fadd fast float %1800, %936
  br label %1818

; <label>:1802                                    ; preds = %1766
  %1803 = icmp eq i32 %1734, 8
  br i1 %1803, label %1804, label %1818

; <label>:1804                                    ; preds = %1802
  %1805 = fmul fast float %1739, %1536
  %1806 = fmul fast float %1739, %1537
  %1807 = fadd fast float %1805, %924
  %1808 = fadd fast float %1806, %925
  %1809 = call float @dx.op.binary.f32(i32 36, float %935, float %1538)  ; FMin(a,b)
  %1810 = fsub fast float %1809, %935
  %1811 = fmul fast float %1810, %1742
  %1812 = fadd fast float %1811, %935
  %1813 = fsub fast float %1535, %934
  %1814 = fmul fast float %1745, %1813
  %1815 = fadd fast float %1814, %934
  %1816 = fmul fast float %1748, %1614
  %1817 = fadd fast float %1816, %936
  br label %1818

; <label>:1818                                    ; preds = %1804, %1802, %1768, %1750, %1725, %1234, %938, %923
  %1819 = phi float [ %924, %1725 ], [ %924, %1234 ], [ %924, %923 ], [ %1807, %1804 ], [ %924, %1802 ], [ %1771, %1768 ], [ %1755, %1750 ], [ %924, %938 ]
  %1820 = phi float [ %925, %1725 ], [ %925, %1234 ], [ %925, %923 ], [ %1808, %1804 ], [ %925, %1802 ], [ %1772, %1768 ], [ %1756, %1750 ], [ %925, %938 ]
  %1821 = phi float [ %1726, %1725 ], [ %926, %1234 ], [ %926, %923 ], [ %1726, %1804 ], [ %1726, %1802 ], [ %1726, %1768 ], [ %1726, %1750 ], [ %926, %938 ]
  %1822 = phi float [ %1727, %1725 ], [ %927, %1234 ], [ %927, %923 ], [ %1727, %1804 ], [ %1727, %1802 ], [ %1727, %1768 ], [ %1727, %1750 ], [ %927, %938 ]
  %1823 = phi float [ %1728, %1725 ], [ %928, %1234 ], [ %928, %923 ], [ %1728, %1804 ], [ %1728, %1802 ], [ %1728, %1768 ], [ %1728, %1750 ], [ %928, %938 ]
  %1824 = phi float [ %1729, %1725 ], [ %929, %1234 ], [ %929, %923 ], [ %1729, %1804 ], [ %1729, %1802 ], [ %1729, %1768 ], [ %1729, %1750 ], [ %929, %938 ]
  %1825 = phi float [ %1730, %1725 ], [ %930, %1234 ], [ %930, %923 ], [ %1730, %1804 ], [ %1730, %1802 ], [ %1730, %1768 ], [ %1730, %1750 ], [ %930, %938 ]
  %1826 = phi float [ %1731, %1725 ], [ %931, %1234 ], [ %931, %923 ], [ %1731, %1804 ], [ %1731, %1802 ], [ %1731, %1768 ], [ %1731, %1750 ], [ %931, %938 ]
  %1827 = phi float [ %1732, %1725 ], [ %932, %1234 ], [ %932, %923 ], [ %1732, %1804 ], [ %1732, %1802 ], [ %1732, %1768 ], [ %1732, %1750 ], [ %932, %938 ]
  %1828 = phi float [ %934, %1725 ], [ %934, %1234 ], [ %934, %923 ], [ %1815, %1804 ], [ %934, %1802 ], [ %1799, %1768 ], [ %1762, %1750 ], [ %934, %938 ]
  %1829 = phi float [ %935, %1725 ], [ %935, %1234 ], [ %935, %923 ], [ %1812, %1804 ], [ %935, %1802 ], [ %1776, %1768 ], [ %1759, %1750 ], [ %935, %938 ]
  %1830 = phi float [ %936, %1725 ], [ %936, %1234 ], [ %936, %923 ], [ %1817, %1804 ], [ %936, %1802 ], [ %1801, %1768 ], [ %1765, %1750 ], [ %936, %938 ]
  %1831 = phi float [ %1733, %1725 ], [ %937, %1234 ], [ %937, %923 ], [ %1733, %1804 ], [ %1733, %1802 ], [ %1733, %1768 ], [ %1733, %1750 ], [ %937, %938 ]
  br i1 %374, label %2712, label %1832

; <label>:1832                                    ; preds = %1818
  %1833 = icmp ult i32 %427, 3
  %1834 = add i32 %43, 56
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %43, 60
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = or i32 %1839, %1836
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %2712, label %1842

; <label>:1842                                    ; preds = %1832
  %1843 = and i32 %1836, 262144
  %1844 = icmp ne i32 %1843, 0
  %1845 = select i1 %1844, float %47, float 1.000000e+00
  %1846 = select i1 %1844, float %48, float 0.000000e+00
  %1847 = select i1 %1844, float %49, float 0.000000e+00
  %1848 = select i1 %1844, float %50, float 1.000000e+00
  %1849 = select i1 %1844, float %51, float %68
  %1850 = select i1 %1844, float %52, float %69
  %1851 = add i32 %43, 316
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 16
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = fmul fast float %1855, 0x3F50624DE0000000
  %1857 = add i32 %43, 120
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = lshr i32 %1859, 16
  %1861 = and i32 %1860, 255
  %1862 = lshr i32 %1859, 24
  %1863 = add i32 %43, 324
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 65535
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = lshr i32 %1865, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = add i32 %43, 64
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 22
  %1874 = shl nuw nsw i32 %1873, 5
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = shl i32 %1872, 4
  %1877 = and i32 %1876, 32752
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = lshr i32 %1872, 7
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1884 = fmul fast float %1883, 1.000000e+03
  %1885 = fmul fast float %324, %1884
  %1886 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1887 = fadd fast float %1886, %314
  %1888 = fmul fast float %325, %1884
  %1889 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1890 = fadd fast float %1889, %316
  %1891 = fmul fast float %1856, %1884
  %1892 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1893 = fmul fast float %1892, 0x401921FB60000000
  %1894 = fadd fast float %1893, %1875
  %1895 = call float @dx.op.unary.f32(i32 13, float %1894)  ; Sin(value)
  %1896 = call float @dx.op.unary.f32(i32 12, float %1894)  ; Cos(value)
  %1897 = fsub fast float -0.000000e+00, %1895
  %1898 = fadd fast float %1849, -5.000000e-01
  %1899 = fadd fast float %1850, -5.000000e-01
  %1900 = fmul fast float %1867, %1898
  %1901 = fmul fast float %1869, %1899
  %1902 = fadd fast float %1900, 5.000000e-01
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fmul fast float %1878, %1902
  %1905 = fmul fast float %1881, %1903
  %1906 = fmul fast float %1896, %1904
  %1907 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1905, float %1906)  ; FMad(a,b,c)
  %1908 = fmul fast float %1895, %1904
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1896, float %1905, float %1908)  ; FMad(a,b,c)
  %1910 = fadd fast float %1887, %1907
  %1911 = fadd fast float %1890, %1909
  %1912 = icmp ugt i32 %1861, 1
  %1913 = icmp ugt i32 %1859, 33554431
  %1914 = or i1 %1913, %1912
  br i1 %1914, label %1915, label %1940

; <label>:1915                                    ; preds = %1842
  %1916 = add i32 %43, 260
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 16
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fmul fast float %1883, %1920
  %1922 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1923 = mul nuw nsw i32 %1861, %1862
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1922, %1924
  %1926 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1927 = fptoui float %1926 to i32
  %1928 = urem i32 %1927, %1861
  %1929 = udiv i32 %1927, %1862
  %1930 = call float @dx.op.unary.f32(i32 22, float %1910)  ; Frc(value)
  %1931 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1932 = uitofp i32 %1928 to float
  %1933 = uitofp i32 %1929 to float
  %1934 = fadd fast float %1930, %1932
  %1935 = fadd fast float %1931, %1933
  %1936 = uitofp i32 %1861 to float
  %1937 = uitofp i32 %1862 to float
  %1938 = fdiv fast float %1934, %1936
  %1939 = fdiv fast float %1935, %1937
  br label %1940

; <label>:1940                                    ; preds = %1915, %1842
  %1941 = phi float [ %1938, %1915 ], [ %1910, %1842 ]
  %1942 = phi float [ %1939, %1915 ], [ %1911, %1842 ]
  %1943 = and i32 %1836, 16777216
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %2054, label %1945

; <label>:1945                                    ; preds = %1940
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1950 = fadd fast float %1947, %143
  %1951 = fadd fast float %1948, %144
  %1952 = fadd fast float %1949, %145
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = icmp eq i32 %44, 65535
  br i1 %1956, label %2051, label %1957

; <label>:1957                                    ; preds = %1945
  %1958 = lshr i32 %44, 1
  %1959 = shl i32 %1958, 2
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %44, 1
  %1963 = icmp ne i32 %1962, 0
  %1964 = lshr i32 %1961, 16
  %1965 = and i32 %1961, 65535
  %1966 = select i1 %1963, i32 %1964, i32 %1965
  %1967 = icmp eq i32 %1966, 65535
  br i1 %1967, label %2047, label %1968

; <label>:1968                                    ; preds = %1957
  %1969 = mul nuw nsw i32 %1966, 40
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = add nuw nsw i32 %1969, 12
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = add nuw nsw i32 %1969, 24
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = add nuw nsw i32 %1969, 36
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = fsub fast float %1950, %1971
  %1988 = fsub fast float %1951, %1972
  %1989 = fsub fast float %1952, %1973
  %1990 = fmul fast float %1986, %1987
  %1991 = fmul fast float %1986, %1988
  %1992 = fmul fast float %1986, %1989
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fmul fast float %1996, %1976
  %2000 = fmul fast float %1997, %1977
  %2001 = fmul fast float %1998, %1978
  %2002 = shl i32 %44, 2
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %2004, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2008 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2006, %dx.types.Handle %40, float %2007, float %2008, float %2009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = fmul fast float %2011, 1.023000e+03
  %2015 = fmul fast float %2012, 1.023000e+03
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = call float @dx.op.unary.f32(i32 27, float %2017)  ; Round_ni(value)
  %2021 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = fsub fast float %1990, %1993
  %2024 = fsub fast float %1991, %1994
  %2025 = fsub fast float %1992, %1995
  %2026 = fmul fast float %2023, 7.500000e-01
  %2027 = fmul fast float %2024, 7.500000e-01
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fadd fast float %1993, 1.250000e-01
  %2030 = fadd fast float %2029, %2026
  %2031 = fadd fast float %2030, %2020
  %2032 = fadd fast float %1994, 1.250000e-01
  %2033 = fadd fast float %2032, %2027
  %2034 = fadd fast float %2033, %2021
  %2035 = fadd fast float %1995, 1.250000e-01
  %2036 = fadd fast float %2035, %2028
  %2037 = fadd fast float %2036, %2022
  %2038 = fmul fast float %2031, %1981
  %2039 = fmul fast float %2034, %1982
  %2040 = fmul fast float %2037, %1983
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %2042, 0
  %2044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2044, %dx.types.Handle %38, float %2038, float %2039, float %2040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 0
  br label %2047

; <label>:2047                                    ; preds = %1968, %1957
  %2048 = phi float [ %2046, %1968 ], [ -1.000000e+00, %1957 ]
  %2049 = fadd fast float %2048, %1955
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  br label %2051

; <label>:2051                                    ; preds = %2047, %1945
  %2052 = phi float [ %2050, %2047 ], [ %1955, %1945 ]
  %2053 = fmul fast float %2052, %423
  br label %2054

; <label>:2054                                    ; preds = %2051, %1940
  %2055 = phi float [ %2053, %2051 ], [ %423, %1940 ]
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 256
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2106, label %2060

; <label>:2060                                    ; preds = %2054
  %2061 = add i32 %43, 464
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %2063, 0
  %2065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2065, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = add i32 %43, 132
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = shl i32 %2070, 4
  %2072 = and i32 %2071, 32752
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = lshr i32 %2070, 7
  %2075 = and i32 %2074, 32752
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fsub fast float 1.000000e+00, %2055
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2079 = bitcast float %2055 to i32
  %2080 = sitofp i32 %2079 to float
  %2081 = fadd fast float %2080, 0xC1CFBF8940000000
  %2082 = fmul fast float %2076, %2081
  %2083 = fadd fast float %2082, 0x41CFBF8940000000
  %2084 = fptosi float %2083 to i32
  %2085 = bitcast i32 %2084 to float
  %2086 = bitcast float %2078 to i32
  %2087 = sitofp i32 %2086 to float
  %2088 = fadd fast float %2087, 0xC1CFBF8940000000
  %2089 = fmul fast float %2088, %2076
  %2090 = fadd fast float %2089, 0x41CFBF8940000000
  %2091 = fptosi float %2090 to i32
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2085, %2073
  %2094 = fmul fast float %2092, %2073
  %2095 = fsub fast float %2078, %2093
  %2096 = fadd fast float %2094, %2078
  %2097 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2099 = fsub fast float %2067, %2097
  %2100 = fsub fast float %2098, %2097
  %2101 = bitcast float %2100 to i32
  %2102 = sub nsw i32 2129859010, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2103, %2099
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  br label %2106

; <label>:2106                                    ; preds = %2060, %2054
  %2107 = phi float [ %2105, %2060 ], [ %2055, %2054 ]
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 128
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2128, label %2112

; <label>:2112                                    ; preds = %2106
  %2113 = add i32 %43, 448
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 524288
  %2123 = icmp ne i32 %2122, 0
  %2124 = fcmp fast ogt float %2119, 0x3FE0101020000000
  %2125 = select i1 %2124, float 1.000000e+00, float 0.000000e+00
  %2126 = select i1 %2123, float %2125, float %2119
  %2127 = fmul fast float %2126, %2107
  br label %2128

; <label>:2128                                    ; preds = %2112, %2106
  %2129 = phi float [ %2127, %2112 ], [ %2107, %2106 ]
  %2130 = fcmp fast ult float %2129, 0x3F70101020000000
  br i1 %2130, label %2712, label %2131

; <label>:2131                                    ; preds = %2128
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 16
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %2334, label %2136

; <label>:2136                                    ; preds = %2131
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %43, 400
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = and i32 %2138, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = lshr i32 %2138, 8
  %2152 = and i32 %2151, 255
  %2153 = uitofp i32 %2152 to float
  %2154 = fmul fast float %2148, %2150
  %2155 = fadd fast float %2154, %2153
  %2156 = fmul fast float %2155, 0x3F70101000000000
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 512
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2169, label %2161

; <label>:2161                                    ; preds = %2136
  %2162 = add i32 %43, 480
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  br label %2169

; <label>:2169                                    ; preds = %2161, %2136
  %2170 = phi float [ %2168, %2161 ], [ 1.000000e+00, %2136 ]
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 33554432
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2281, label %2175

; <label>:2175                                    ; preds = %2169
  %2176 = add i32 %43, 256
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 65535
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2178, 16
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = add i32 %43, 260
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 65535
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = lshr i32 %2189, 24
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2191, 0x3F70101020000000
  %2193 = and i32 %2189, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = lshr i32 %2189, 8
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = lshr i32 %2189, 16
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101020000000
  %2204 = add i32 %43, 252
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = and i32 %2206, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2206, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = lshr i32 %2206, 16
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = bitcast float %2145 to i32
  %2222 = ashr i32 %2221, 1
  %2223 = sub nsw i32 1597463174, %2222
  %2224 = bitcast i32 %2223 to float
  %2225 = fmul fast float %2145, 5.000000e-01
  %2226 = fmul fast float %2224, %2224
  %2227 = fmul fast float %2226, %2225
  %2228 = fsub fast float 1.500000e+00, %2227
  %2229 = fmul fast float %2224, %2145
  %2230 = fmul fast float %2229, %2228
  %2231 = bitcast float %2146 to i32
  %2232 = ashr i32 %2231, 1
  %2233 = sub nsw i32 1597463174, %2232
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2146, 5.000000e-01
  %2236 = fmul fast float %2234, %2234
  %2237 = fmul fast float %2236, %2235
  %2238 = fsub fast float 1.500000e+00, %2237
  %2239 = fmul fast float %2234, %2146
  %2240 = fmul fast float %2239, %2238
  %2241 = bitcast float %2147 to i32
  %2242 = ashr i32 %2241, 1
  %2243 = sub nsw i32 1597463174, %2242
  %2244 = bitcast i32 %2243 to float
  %2245 = fmul fast float %2147, 5.000000e-01
  %2246 = fmul fast float %2244, %2244
  %2247 = fmul fast float %2246, %2245
  %2248 = fsub fast float 1.500000e+00, %2247
  %2249 = fmul fast float %2244, %2147
  %2250 = fmul fast float %2249, %2248
  %2251 = fsub fast float %2230, %2212
  %2252 = fsub fast float %2240, %2216
  %2253 = fsub fast float %2250, %2220
  %2254 = fmul fast float %2251, %2180
  %2255 = fmul fast float %2252, %2182
  %2256 = fmul fast float %2253, %2187
  %2257 = fadd fast float %2254, %2195
  %2258 = fadd fast float %2255, %2199
  %2259 = fadd fast float %2256, %2203
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = fmul fast float %2260, %2260
  %2264 = fmul fast float %2261, %2261
  %2265 = fmul fast float %2262, %2262
  %2266 = fsub fast float %2263, %2145
  %2267 = fsub fast float %2264, %2146
  %2268 = fsub fast float %2265, %2147
  %2269 = fmul fast float %2266, %2170
  %2270 = fmul fast float %2267, %2170
  %2271 = fmul fast float %2268, %2170
  %2272 = fadd fast float %2269, %2145
  %2273 = fadd fast float %2270, %2146
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2192, %2156
  %2276 = fsub fast float %2275, %2209
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2277, %2156
  %2279 = fmul fast float %2278, %2170
  %2280 = fadd fast float %2279, %2156
  br label %2334

; <label>:2281                                    ; preds = %2169
  %2282 = and i32 %2172, 134217728
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2318, label %2284

; <label>:2284                                    ; preds = %2281
  %2285 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2286 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fmul fast float %2288, %2170
  %2292 = fmul fast float %2289, %2170
  %2293 = fmul fast float %2290, %2170
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %2298 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = fmul fast float %2294, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2297
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2297
  %2305 = fmul fast float %2295, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2298
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2298
  %2310 = fmul fast float %2296, 2.000000e+00
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2311, %2299
  %2313 = fadd fast float %2312, %2310
  %2314 = fmul fast float %2313, %2299
  %2315 = fmul fast float %2304, %2304
  %2316 = fmul fast float %2309, %2309
  %2317 = fmul fast float %2314, %2314
  br label %2334

; <label>:2318                                    ; preds = %2281
  %2319 = fmul fast float %301, %301
  %2320 = fmul fast float %305, %305
  %2321 = fmul fast float %309, %309
  %2322 = fadd fast float %2319, -1.000000e+00
  %2323 = fadd fast float %2320, -1.000000e+00
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fmul fast float %2170, %2322
  %2326 = fmul fast float %2170, %2323
  %2327 = fmul fast float %2170, %2324
  %2328 = fadd fast float %2325, 1.000000e+00
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fmul fast float %2328, %2145
  %2332 = fmul fast float %2329, %2146
  %2333 = fmul fast float %2330, %2147
  br label %2334

; <label>:2334                                    ; preds = %2318, %2284, %2175, %2131
  %2335 = phi float [ %2280, %2175 ], [ %2156, %2284 ], [ %2156, %2318 ], [ 0x3FA23C0BE0000000, %2131 ]
  %2336 = phi float [ %2272, %2175 ], [ %2315, %2284 ], [ %2331, %2318 ], [ 1.000000e+00, %2131 ]
  %2337 = phi float [ %2273, %2175 ], [ %2316, %2284 ], [ %2332, %2318 ], [ 1.000000e+00, %2131 ]
  %2338 = phi float [ %2274, %2175 ], [ %2317, %2284 ], [ %2333, %2318 ], [ 1.000000e+00, %2131 ]
  %2339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.i32 %2339, 1
  %2341 = and i32 %2340, 1
  %2342 = icmp ne i32 %2341, 0
  %2343 = add i32 %43, 356
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 32
  %2347 = icmp ne i32 %2346, 0
  %2348 = and i1 %2342, %2347
  %2349 = select i1 %2348, float 1.000000e+00, float %2336
  %2350 = select i1 %2348, float 0x3FD3333340000000, float %2337
  %2351 = select i1 %2348, float 0x3FD3333340000000, float %2338
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 32
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2428, label %2356

; <label>:2356                                    ; preds = %2334
  %2357 = add i32 %43, 124
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = add i32 %43, 416
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = and i32 %2359, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = lshr i32 %2359, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = lshr i32 %2359, 16
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101000000000
  %2379 = fmul fast float %2366, %2371
  %2380 = fadd fast float %2379, %2374
  %2381 = fmul fast float %2380, 0x3F70101000000000
  %2382 = fadd fast float %2367, -5.000000e-01
  %2383 = fadd fast float %2369, -5.000000e-01
  %2384 = fmul fast float %2382, %2378
  %2385 = fmul fast float %2383, %2378
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fmul fast float %2386, 2.000000e+00
  %2389 = fadd fast float %2388, -1.000000e+00
  %2390 = fmul fast float %2387, 2.000000e+00
  %2391 = fadd fast float %2390, -1.000000e+00
  %2392 = fadd fast float %2389, %2391
  %2393 = fmul fast float %2392, 5.000000e-01
  %2394 = fsub fast float %2389, %2391
  %2395 = fmul fast float %2394, 5.000000e-01
  %2396 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2399 = fsub fast float %2397, %2398
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2393, float %2395, float %2399, float %2393, float %2395, float %2399)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = call float @dx.op.unary.f32(i32 25, float %2400)  ; Rsqrt(value)
  %2402 = fmul fast float %2393, %2401
  %2403 = fmul fast float %2395, %2401
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 67108864
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2424, label %2408

; <label>:2408                                    ; preds = %2356
  %2409 = add i32 %43, 312
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 65535
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = lshr i32 %2411, 16
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = fsub fast float %2381, %2419
  %2421 = fmul fast float %2420, %2413
  %2422 = fadd fast float %2421, %2417
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br label %2424

; <label>:2424                                    ; preds = %2408, %2356
  %2425 = phi float [ %2423, %2408 ], [ %2381, %2356 ]
  %2426 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  %2427 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  br label %2428

; <label>:2428                                    ; preds = %2424, %2334
  %2429 = phi float [ %2425, %2424 ], [ 0x3FD6666660000000, %2334 ]
  %2430 = phi float [ %2426, %2424 ], [ 0.000000e+00, %2334 ]
  %2431 = phi float [ %2427, %2424 ], [ 0.000000e+00, %2334 ]
  %2432 = phi float [ %2368, %2424 ], [ 1.000000e+00, %2334 ]
  %2433 = add i32 %43, 192
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = lshr i32 %2435, 22
  %2437 = shl nuw nsw i32 %2436, 5
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 64
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2476, label %2443

; <label>:2443                                    ; preds = %2428
  %2444 = add i32 %43, 432
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = add i32 %2446, 0
  %2448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 131072
  %2452 = icmp eq i32 %2451, 0
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2448, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = fmul fast float %2454, %289
  %2458 = fmul fast float %2455, %292
  %2459 = fmul fast float %2456, %295
  br i1 %2452, label %2466, label %2460

; <label>:2460                                    ; preds = %2443
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = fmul fast float %2462, %2457
  %2464 = fmul fast float %2462, %2458
  %2465 = fmul fast float %2462, %2459
  br label %2466

; <label>:2466                                    ; preds = %2460, %2443
  %2467 = phi float [ %2463, %2460 ], [ %2457, %2443 ]
  %2468 = phi float [ %2464, %2460 ], [ %2458, %2443 ]
  %2469 = phi float [ %2465, %2460 ], [ %2459, %2443 ]
  %2470 = fmul fast float %2467, %2438
  %2471 = select i1 %185, float %2470, float %2467
  %2472 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2468, float %2469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2473 = select i1 %185, float 0.000000e+00, float %2467
  %2474 = select i1 %185, float %2472, float %2468
  %2475 = select i1 %185, float 0.000000e+00, float %2469
  br label %2476

; <label>:2476                                    ; preds = %2466, %2428
  %2477 = phi float [ %2473, %2466 ], [ 0.000000e+00, %2428 ]
  %2478 = phi float [ %2474, %2466 ], [ 0.000000e+00, %2428 ]
  %2479 = phi float [ %2475, %2466 ], [ 0.000000e+00, %2428 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 26624
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2507, label %2484

; <label>:2484                                    ; preds = %2476
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 16384
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2507, label %2489

; <label>:2489                                    ; preds = %2484
  %2490 = and i32 %2486, 1048576
  %2491 = icmp ne i32 %2490, 0
  %2492 = add i32 %43, 496
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = add i32 %2494, 0
  %2496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2496, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2498 = extractvalue %dx.types.ResRet.f32 %2497, 0
  %2499 = add i32 %43, 128
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 24
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2498, 0x3F70101020000000
  %2505 = select i1 %2491, float 0x3F70101020000000, float %2504
  %2506 = fmul fast float %2505, %2503
  br label %2507

; <label>:2507                                    ; preds = %2489, %2484, %2476
  %2508 = phi float [ %2506, %2489 ], [ 0.000000e+00, %2484 ], [ 0.000000e+00, %2476 ]
  %2509 = add i32 %43, 128
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = lshr i32 %2511, 8
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2518 = fmul fast float %2516, %2517
  %2519 = fadd fast float %2518, %2513
  %2520 = fmul fast float %2519, 0x3F70101020000000
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  br i1 %1833, label %2522, label %2530

; <label>:2522                                    ; preds = %2507
  %2523 = fsub fast float 1.000000e+00, %2129
  %2524 = fmul fast float %2523, %1821
  %2525 = fmul fast float %2523, %1822
  %2526 = fmul fast float %2523, %1823
  %2527 = fmul fast float %2523, %1824
  %2528 = fmul fast float %2523, %1825
  %2529 = fmul fast float %2523, %1826
  br label %2530

; <label>:2530                                    ; preds = %2522, %2507
  %2531 = phi float [ %2524, %2522 ], [ %1821, %2507 ]
  %2532 = phi float [ %2525, %2522 ], [ %1822, %2507 ]
  %2533 = phi float [ %2526, %2522 ], [ %1823, %2507 ]
  %2534 = phi float [ %2527, %2522 ], [ %1824, %2507 ]
  %2535 = phi float [ %2528, %2522 ], [ %1825, %2507 ]
  %2536 = phi float [ %2529, %2522 ], [ %1826, %2507 ]
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 3
  %2540 = icmp eq i32 %2539, 3
  br i1 %2540, label %2619, label %2541

; <label>:2541                                    ; preds = %2530
  %2542 = and i32 %2538, 16
  %2543 = icmp ne i32 %2542, 0
  %2544 = select i1 %2543, float %2129, float 0.000000e+00
  %2545 = icmp eq i32 %2539, 0
  br i1 %2545, label %2546, label %2574

; <label>:2546                                    ; preds = %2541
  %2547 = and i32 %2538, 64
  %2548 = icmp ne i32 %2547, 0
  %2549 = select i1 %2548, float %2129, float 0.000000e+00
  %2550 = fsub fast float %2349, %2531
  %2551 = fsub fast float %2350, %2532
  %2552 = fsub fast float %2351, %2533
  %2553 = fmul fast float %2544, %2550
  %2554 = fmul fast float %2544, %2551
  %2555 = fmul fast float %2544, %2552
  %2556 = fadd fast float %2553, %2531
  %2557 = fadd fast float %2554, %2532
  %2558 = fadd fast float %2555, %2533
  %2559 = fsub fast float %2335, %1827
  %2560 = fmul fast float %2544, %2559
  %2561 = fadd fast float %2560, %1827
  %2562 = fsub fast float %2477, %2534
  %2563 = fsub fast float %2478, %2535
  %2564 = fsub fast float %2479, %2536
  %2565 = fmul fast float %2549, %2562
  %2566 = fmul fast float %2549, %2563
  %2567 = fmul fast float %2549, %2564
  %2568 = fadd fast float %2565, %2534
  %2569 = fadd fast float %2566, %2535
  %2570 = fadd fast float %2567, %2536
  %2571 = fsub fast float %2521, %1831
  %2572 = fmul fast float %2544, %2571
  %2573 = fadd fast float %2572, %1831
  br label %2619

; <label>:2574                                    ; preds = %2541
  %2575 = icmp eq i32 %2539, 1
  br i1 %2575, label %2576, label %2589

; <label>:2576                                    ; preds = %2574
  %2577 = fadd fast float %2349, -1.000000e+00
  %2578 = fadd fast float %2350, -1.000000e+00
  %2579 = fadd fast float %2351, -1.000000e+00
  %2580 = fmul fast float %2544, %2577
  %2581 = fmul fast float %2544, %2578
  %2582 = fmul fast float %2544, %2579
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fadd fast float %2581, 1.000000e+00
  %2585 = fadd fast float %2582, 1.000000e+00
  %2586 = fmul fast float %2583, %2531
  %2587 = fmul fast float %2584, %2532
  %2588 = fmul fast float %2585, %2533
  br label %2619

; <label>:2589                                    ; preds = %2574
  %2590 = icmp eq i32 %2539, 2
  br i1 %2590, label %2591, label %2619

; <label>:2591                                    ; preds = %2589
  %2592 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2593 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2594 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fadd fast float %2593, -5.000000e-01
  %2597 = fadd fast float %2594, -5.000000e-01
  %2598 = fmul fast float %2595, %2544
  %2599 = fmul fast float %2596, %2544
  %2600 = fmul fast float %2597, %2544
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fadd fast float %2599, 5.000000e-01
  %2603 = fadd fast float %2600, 5.000000e-01
  %2604 = fmul fast float %2601, 2.000000e+00
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = fmul fast float %2605, %2531
  %2607 = fadd fast float %2606, %2604
  %2608 = fmul fast float %2607, %2531
  %2609 = fmul fast float %2602, 2.000000e+00
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = fmul fast float %2610, %2532
  %2612 = fadd fast float %2611, %2609
  %2613 = fmul fast float %2612, %2532
  %2614 = fmul fast float %2603, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2533
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2533
  br label %2619

; <label>:2619                                    ; preds = %2591, %2589, %2576, %2546, %2530
  %2620 = phi float [ %2531, %2530 ], [ %2608, %2591 ], [ %2531, %2589 ], [ %2586, %2576 ], [ %2556, %2546 ]
  %2621 = phi float [ %2532, %2530 ], [ %2613, %2591 ], [ %2532, %2589 ], [ %2587, %2576 ], [ %2557, %2546 ]
  %2622 = phi float [ %2533, %2530 ], [ %2618, %2591 ], [ %2533, %2589 ], [ %2588, %2576 ], [ %2558, %2546 ]
  %2623 = phi float [ %2534, %2530 ], [ %2534, %2591 ], [ %2534, %2589 ], [ %2534, %2576 ], [ %2568, %2546 ]
  %2624 = phi float [ %2535, %2530 ], [ %2535, %2591 ], [ %2535, %2589 ], [ %2535, %2576 ], [ %2569, %2546 ]
  %2625 = phi float [ %2536, %2530 ], [ %2536, %2591 ], [ %2536, %2589 ], [ %2536, %2576 ], [ %2570, %2546 ]
  %2626 = phi float [ %1827, %2530 ], [ %1827, %2591 ], [ %1827, %2589 ], [ %1827, %2576 ], [ %2561, %2546 ]
  %2627 = phi float [ %1831, %2530 ], [ %1831, %2591 ], [ %1831, %2589 ], [ %1831, %2576 ], [ %2573, %2546 ]
  %2628 = and i32 %2538, 12
  %2629 = icmp eq i32 %2628, 12
  br i1 %2629, label %2712, label %2630

; <label>:2630                                    ; preds = %2619
  %2631 = and i32 %2538, 2097184
  %2632 = icmp eq i32 %2631, 2097184
  %2633 = select i1 %2632, float %2129, float 0.000000e+00
  %2634 = and i32 %2538, 4194336
  %2635 = icmp eq i32 %2634, 4194336
  %2636 = select i1 %2635, float %2129, float 0.000000e+00
  %2637 = and i32 %2538, 8388640
  %2638 = icmp eq i32 %2637, 8388640
  %2639 = select i1 %2638, float %2129, float 0.000000e+00
  %2640 = and i32 %2538, 16384
  %2641 = icmp ne i32 %2640, 0
  %2642 = select i1 %2641, float %2129, float 0.000000e+00
  %2643 = icmp eq i32 %2628, 0
  br i1 %2643, label %2644, label %2660

; <label>:2644                                    ; preds = %2630
  %2645 = fsub fast float %2430, %1819
  %2646 = fsub fast float %2431, %1820
  %2647 = fmul fast float %2633, %2645
  %2648 = fmul fast float %2633, %2646
  %2649 = fadd fast float %2647, %1819
  %2650 = fadd fast float %2648, %1820
  %2651 = fsub fast float %2432, %1829
  %2652 = fmul fast float %2636, %2651
  %2653 = fadd fast float %2652, %1829
  %2654 = fsub fast float %2429, %1828
  %2655 = fmul fast float %2639, %2654
  %2656 = fadd fast float %2655, %1828
  %2657 = fsub fast float %2508, %1830
  %2658 = fmul fast float %2642, %2657
  %2659 = fadd fast float %2658, %1830
  br label %2712

; <label>:2660                                    ; preds = %2630
  %2661 = icmp eq i32 %2628, 4
  br i1 %2661, label %2662, label %2696

; <label>:2662                                    ; preds = %2660
  %2663 = fmul fast float %2633, %2430
  %2664 = fmul fast float %2633, %2431
  %2665 = fadd fast float %2663, %1819
  %2666 = fadd fast float %2664, %1820
  %2667 = call float @dx.op.binary.f32(i32 36, float %1829, float %2432)  ; FMin(a,b)
  %2668 = fsub fast float %2667, %1829
  %2669 = fmul fast float %2668, %2636
  %2670 = fadd fast float %2669, %1829
  %2671 = fadd fast float %2429, %1828
  %2672 = fmul fast float %2671, 0x3FF337FAE0000000
  %2673 = fmul fast float %1828, %1828
  %2674 = fmul fast float %2429, %2429
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2675, 0x3FE5152B00000000
  %2677 = fmul fast float %1828, 0xBFCC1F85E0000000
  %2678 = fmul fast float %2677, %2429
  %2679 = fadd fast float %2678, 0xBFE1363700000000
  %2680 = fadd fast float %2679, %2672
  %2681 = fsub fast float %2680, %2676
  %2682 = fmul fast float %2671, 0x3FBA6F0D00000000
  %2683 = fmul fast float %2675, 0x3FD0432880000000
  %2684 = fmul fast float %1828, 0xBFEF110800000000
  %2685 = fmul fast float %2684, %2429
  %2686 = fadd fast float %2685, 1.000000e+00
  %2687 = fsub fast float %2686, %2682
  %2688 = fadd fast float %2687, %2683
  %2689 = fdiv fast float %2681, %2688
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fsub fast float %2690, %1828
  %2692 = fmul fast float %2691, %2639
  %2693 = fadd fast float %2692, %1828
  %2694 = fmul fast float %2642, %2508
  %2695 = fadd fast float %2694, %1830
  br label %2712

; <label>:2696                                    ; preds = %2660
  %2697 = icmp eq i32 %2628, 8
  br i1 %2697, label %2698, label %2712

; <label>:2698                                    ; preds = %2696
  %2699 = fmul fast float %2633, %2430
  %2700 = fmul fast float %2633, %2431
  %2701 = fadd fast float %2699, %1819
  %2702 = fadd fast float %2700, %1820
  %2703 = call float @dx.op.binary.f32(i32 36, float %1829, float %2432)  ; FMin(a,b)
  %2704 = fsub fast float %2703, %1829
  %2705 = fmul fast float %2704, %2636
  %2706 = fadd fast float %2705, %1829
  %2707 = fsub fast float %2429, %1828
  %2708 = fmul fast float %2639, %2707
  %2709 = fadd fast float %2708, %1828
  %2710 = fmul fast float %2642, %2508
  %2711 = fadd fast float %2710, %1830
  br label %2712

; <label>:2712                                    ; preds = %2698, %2696, %2662, %2644, %2619, %2128, %1832, %1818
  %2713 = phi float [ %1819, %2619 ], [ %1819, %2128 ], [ %1819, %1818 ], [ %2701, %2698 ], [ %1819, %2696 ], [ %2665, %2662 ], [ %2649, %2644 ], [ %1819, %1832 ]
  %2714 = phi float [ %1820, %2619 ], [ %1820, %2128 ], [ %1820, %1818 ], [ %2702, %2698 ], [ %1820, %2696 ], [ %2666, %2662 ], [ %2650, %2644 ], [ %1820, %1832 ]
  %2715 = phi float [ %2620, %2619 ], [ %1821, %2128 ], [ %1821, %1818 ], [ %2620, %2698 ], [ %2620, %2696 ], [ %2620, %2662 ], [ %2620, %2644 ], [ %1821, %1832 ]
  %2716 = phi float [ %2621, %2619 ], [ %1822, %2128 ], [ %1822, %1818 ], [ %2621, %2698 ], [ %2621, %2696 ], [ %2621, %2662 ], [ %2621, %2644 ], [ %1822, %1832 ]
  %2717 = phi float [ %2622, %2619 ], [ %1823, %2128 ], [ %1823, %1818 ], [ %2622, %2698 ], [ %2622, %2696 ], [ %2622, %2662 ], [ %2622, %2644 ], [ %1823, %1832 ]
  %2718 = phi float [ %2623, %2619 ], [ %1824, %2128 ], [ %1824, %1818 ], [ %2623, %2698 ], [ %2623, %2696 ], [ %2623, %2662 ], [ %2623, %2644 ], [ %1824, %1832 ]
  %2719 = phi float [ %2624, %2619 ], [ %1825, %2128 ], [ %1825, %1818 ], [ %2624, %2698 ], [ %2624, %2696 ], [ %2624, %2662 ], [ %2624, %2644 ], [ %1825, %1832 ]
  %2720 = phi float [ %2625, %2619 ], [ %1826, %2128 ], [ %1826, %1818 ], [ %2625, %2698 ], [ %2625, %2696 ], [ %2625, %2662 ], [ %2625, %2644 ], [ %1826, %1832 ]
  %2721 = phi float [ %2626, %2619 ], [ %1827, %2128 ], [ %1827, %1818 ], [ %2626, %2698 ], [ %2626, %2696 ], [ %2626, %2662 ], [ %2626, %2644 ], [ %1827, %1832 ]
  %2722 = phi float [ %1828, %2619 ], [ %1828, %2128 ], [ %1828, %1818 ], [ %2709, %2698 ], [ %1828, %2696 ], [ %2693, %2662 ], [ %2656, %2644 ], [ %1828, %1832 ]
  %2723 = phi float [ %1829, %2619 ], [ %1829, %2128 ], [ %1829, %1818 ], [ %2706, %2698 ], [ %1829, %2696 ], [ %2670, %2662 ], [ %2653, %2644 ], [ %1829, %1832 ]
  %2724 = phi float [ %1830, %2619 ], [ %1830, %2128 ], [ %1830, %1818 ], [ %2711, %2698 ], [ %1830, %2696 ], [ %2695, %2662 ], [ %2659, %2644 ], [ %1830, %1832 ]
  %2725 = phi float [ %2627, %2619 ], [ %1831, %2128 ], [ %1831, %1818 ], [ %2627, %2698 ], [ %2627, %2696 ], [ %2627, %2662 ], [ %2627, %2644 ], [ %1831, %1832 ]
  br i1 %376, label %3606, label %2726

; <label>:2726                                    ; preds = %2712
  %2727 = icmp ult i32 %427, 4
  %2728 = add i32 %43, 72
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %43, 76
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = or i32 %2733, %2730
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %3606, label %2736

; <label>:2736                                    ; preds = %2726
  %2737 = and i32 %2730, 262144
  %2738 = icmp ne i32 %2737, 0
  %2739 = select i1 %2738, float %47, float 1.000000e+00
  %2740 = select i1 %2738, float %48, float 0.000000e+00
  %2741 = select i1 %2738, float %49, float 0.000000e+00
  %2742 = select i1 %2738, float %50, float 1.000000e+00
  %2743 = select i1 %2738, float %51, float %68
  %2744 = select i1 %2738, float %52, float %69
  %2745 = add i32 %43, 332
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = lshr i32 %2747, 16
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = fmul fast float %2749, 0x3F50624DE0000000
  %2751 = add i32 %43, 136
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = lshr i32 %2753, 16
  %2755 = and i32 %2754, 255
  %2756 = lshr i32 %2753, 24
  %2757 = add i32 %43, 340
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = and i32 %2759, 65535
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = lshr i32 %2759, 16
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = add i32 %43, 80
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = lshr i32 %2766, 22
  %2768 = shl nuw nsw i32 %2767, 5
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = shl i32 %2766, 4
  %2771 = and i32 %2770, 32752
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = lshr i32 %2766, 7
  %2774 = and i32 %2773, 32752
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 3
  %2778 = fmul fast float %2777, 1.000000e+03
  %2779 = fmul fast float %366, %2778
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = fadd fast float %2780, %356
  %2782 = fmul fast float %367, %2778
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fadd fast float %2783, %358
  %2785 = fmul fast float %2750, %2778
  %2786 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2787 = fmul fast float %2786, 0x401921FB60000000
  %2788 = fadd fast float %2787, %2769
  %2789 = call float @dx.op.unary.f32(i32 13, float %2788)  ; Sin(value)
  %2790 = call float @dx.op.unary.f32(i32 12, float %2788)  ; Cos(value)
  %2791 = fsub fast float -0.000000e+00, %2789
  %2792 = fadd fast float %2743, -5.000000e-01
  %2793 = fadd fast float %2744, -5.000000e-01
  %2794 = fmul fast float %2761, %2792
  %2795 = fmul fast float %2763, %2793
  %2796 = fadd fast float %2794, 5.000000e-01
  %2797 = fadd fast float %2795, 5.000000e-01
  %2798 = fmul fast float %2772, %2796
  %2799 = fmul fast float %2775, %2797
  %2800 = fmul fast float %2790, %2798
  %2801 = call float @dx.op.tertiary.f32(i32 46, float %2791, float %2799, float %2800)  ; FMad(a,b,c)
  %2802 = fmul fast float %2789, %2798
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2790, float %2799, float %2802)  ; FMad(a,b,c)
  %2804 = fadd fast float %2781, %2801
  %2805 = fadd fast float %2784, %2803
  %2806 = icmp ugt i32 %2755, 1
  %2807 = icmp ugt i32 %2753, 33554431
  %2808 = or i1 %2807, %2806
  br i1 %2808, label %2809, label %2834

; <label>:2809                                    ; preds = %2736
  %2810 = add i32 %43, 276
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = lshr i32 %2812, 16
  %2814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2813)  ; LegacyF16ToF32(value)
  %2815 = fmul fast float %2777, %2814
  %2816 = call float @dx.op.unary.f32(i32 22, float %2815)  ; Frc(value)
  %2817 = mul nuw nsw i32 %2755, %2756
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2816, %2818
  %2820 = call float @dx.op.unary.f32(i32 27, float %2819)  ; Round_ni(value)
  %2821 = fptoui float %2820 to i32
  %2822 = urem i32 %2821, %2755
  %2823 = udiv i32 %2821, %2756
  %2824 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2825 = call float @dx.op.unary.f32(i32 22, float %2805)  ; Frc(value)
  %2826 = uitofp i32 %2822 to float
  %2827 = uitofp i32 %2823 to float
  %2828 = fadd fast float %2824, %2826
  %2829 = fadd fast float %2825, %2827
  %2830 = uitofp i32 %2755 to float
  %2831 = uitofp i32 %2756 to float
  %2832 = fdiv fast float %2828, %2830
  %2833 = fdiv fast float %2829, %2831
  br label %2834

; <label>:2834                                    ; preds = %2809, %2736
  %2835 = phi float [ %2832, %2809 ], [ %2804, %2736 ]
  %2836 = phi float [ %2833, %2809 ], [ %2805, %2736 ]
  %2837 = and i32 %2730, 16777216
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2948, label %2839

; <label>:2839                                    ; preds = %2834
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.CBufRet.f32 %2840, 2
  %2844 = fadd fast float %2841, %143
  %2845 = fadd fast float %2842, %144
  %2846 = fadd fast float %2843, %145
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = icmp eq i32 %44, 65535
  br i1 %2850, label %2945, label %2851

; <label>:2851                                    ; preds = %2839
  %2852 = lshr i32 %44, 1
  %2853 = shl i32 %2852, 2
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %44, 1
  %2857 = icmp ne i32 %2856, 0
  %2858 = lshr i32 %2855, 16
  %2859 = and i32 %2855, 65535
  %2860 = select i1 %2857, i32 %2858, i32 %2859
  %2861 = icmp eq i32 %2860, 65535
  br i1 %2861, label %2941, label %2862

; <label>:2862                                    ; preds = %2851
  %2863 = mul nuw nsw i32 %2860, 40
  %2864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  %2868 = add nuw nsw i32 %2863, 12
  %2869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.ResRet.f32 %2869, 2
  %2873 = add nuw nsw i32 %2863, 24
  %2874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.ResRet.f32 %2874, 1
  %2877 = extractvalue %dx.types.ResRet.f32 %2874, 2
  %2878 = add nuw nsw i32 %2863, 36
  %2879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = fsub fast float %2844, %2865
  %2882 = fsub fast float %2845, %2866
  %2883 = fsub fast float %2846, %2867
  %2884 = fmul fast float %2880, %2881
  %2885 = fmul fast float %2880, %2882
  %2886 = fmul fast float %2880, %2883
  %2887 = call float @dx.op.unary.f32(i32 27, float %2884)  ; Round_ni(value)
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fmul fast float %2890, %2870
  %2894 = fmul fast float %2891, %2871
  %2895 = fmul fast float %2892, %2872
  %2896 = shl i32 %44, 2
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %2898, 0
  %2900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2901 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2902 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2903 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2900, %dx.types.Handle %40, float %2901, float %2902, float %2903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = fmul fast float %2905, 1.023000e+03
  %2909 = fmul fast float %2906, 1.023000e+03
  %2910 = fmul fast float %2907, 1.023000e+03
  %2911 = fadd fast float %2908, 5.000000e-01
  %2912 = fadd fast float %2909, 5.000000e-01
  %2913 = fadd fast float %2910, 5.000000e-01
  %2914 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2915 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2916 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2917 = fsub fast float %2884, %2887
  %2918 = fsub fast float %2885, %2888
  %2919 = fsub fast float %2886, %2889
  %2920 = fmul fast float %2917, 7.500000e-01
  %2921 = fmul fast float %2918, 7.500000e-01
  %2922 = fmul fast float %2919, 7.500000e-01
  %2923 = fadd fast float %2887, 1.250000e-01
  %2924 = fadd fast float %2923, %2920
  %2925 = fadd fast float %2924, %2914
  %2926 = fadd fast float %2888, 1.250000e-01
  %2927 = fadd fast float %2926, %2921
  %2928 = fadd fast float %2927, %2915
  %2929 = fadd fast float %2889, 1.250000e-01
  %2930 = fadd fast float %2929, %2922
  %2931 = fadd fast float %2930, %2916
  %2932 = fmul fast float %2925, %2875
  %2933 = fmul fast float %2928, %2876
  %2934 = fmul fast float %2931, %2877
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = add i32 %2936, 0
  %2938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2938, %dx.types.Handle %38, float %2932, float %2933, float %2934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2940 = extractvalue %dx.types.ResRet.f32 %2939, 0
  br label %2941

; <label>:2941                                    ; preds = %2862, %2851
  %2942 = phi float [ %2940, %2862 ], [ -1.000000e+00, %2851 ]
  %2943 = fadd fast float %2942, %2849
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  br label %2945

; <label>:2945                                    ; preds = %2941, %2839
  %2946 = phi float [ %2944, %2941 ], [ %2849, %2839 ]
  %2947 = fmul fast float %2946, %422
  br label %2948

; <label>:2948                                    ; preds = %2945, %2834
  %2949 = phi float [ %2947, %2945 ], [ %422, %2834 ]
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 256
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %3000, label %2954

; <label>:2954                                    ; preds = %2948
  %2955 = add i32 %43, 468
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = add i32 %43, 148
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = shl i32 %2964, 4
  %2966 = and i32 %2965, 32752
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = lshr i32 %2964, 7
  %2969 = and i32 %2968, 32752
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = fsub fast float 1.000000e+00, %2949
  %2972 = call float @dx.op.binary.f32(i32 35, float %2971, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2973 = bitcast float %2949 to i32
  %2974 = sitofp i32 %2973 to float
  %2975 = fadd fast float %2974, 0xC1CFBF8940000000
  %2976 = fmul fast float %2970, %2975
  %2977 = fadd fast float %2976, 0x41CFBF8940000000
  %2978 = fptosi float %2977 to i32
  %2979 = bitcast i32 %2978 to float
  %2980 = bitcast float %2972 to i32
  %2981 = sitofp i32 %2980 to float
  %2982 = fadd fast float %2981, 0xC1CFBF8940000000
  %2983 = fmul fast float %2982, %2970
  %2984 = fadd fast float %2983, 0x41CFBF8940000000
  %2985 = fptosi float %2984 to i32
  %2986 = bitcast i32 %2985 to float
  %2987 = fmul fast float %2979, %2967
  %2988 = fmul fast float %2986, %2967
  %2989 = fsub fast float %2972, %2987
  %2990 = fadd fast float %2988, %2972
  %2991 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2992 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2993 = fsub fast float %2961, %2991
  %2994 = fsub fast float %2992, %2991
  %2995 = bitcast float %2994 to i32
  %2996 = sub nsw i32 2129859010, %2995
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2997, %2993
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  br label %3000

; <label>:3000                                    ; preds = %2954, %2948
  %3001 = phi float [ %2999, %2954 ], [ %2949, %2948 ]
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 128
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3022, label %3006

; <label>:3006                                    ; preds = %3000
  %3007 = add i32 %43, 452
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = and i32 %3015, 524288
  %3017 = icmp ne i32 %3016, 0
  %3018 = fcmp fast ogt float %3013, 0x3FE0101020000000
  %3019 = select i1 %3018, float 1.000000e+00, float 0.000000e+00
  %3020 = select i1 %3017, float %3019, float %3013
  %3021 = fmul fast float %3020, %3001
  br label %3022

; <label>:3022                                    ; preds = %3006, %3000
  %3023 = phi float [ %3021, %3006 ], [ %3001, %3000 ]
  %3024 = fcmp fast ult float %3023, 0x3F70101020000000
  br i1 %3024, label %3606, label %3025

; <label>:3025                                    ; preds = %3022
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 16
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3228, label %3030

; <label>:3030                                    ; preds = %3025
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %43, 404
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = add i32 %3035, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3037, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.ResRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.ResRet.f32 %3038, 2
  %3042 = extractvalue %dx.types.ResRet.f32 %3038, 3
  %3043 = and i32 %3032, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = lshr i32 %3032, 8
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = fmul fast float %3042, %3044
  %3049 = fadd fast float %3048, %3047
  %3050 = fmul fast float %3049, 0x3F70101000000000
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 512
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3063, label %3055

; <label>:3055                                    ; preds = %3030
  %3056 = add i32 %43, 484
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  br label %3063

; <label>:3063                                    ; preds = %3055, %3030
  %3064 = phi float [ %3062, %3055 ], [ 1.000000e+00, %3030 ]
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = and i32 %3066, 33554432
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3175, label %3069

; <label>:3069                                    ; preds = %3063
  %3070 = add i32 %43, 272
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 65535
  %3074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3073)  ; LegacyF16ToF32(value)
  %3075 = lshr i32 %3072, 16
  %3076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3075)  ; LegacyF16ToF32(value)
  %3077 = add i32 %43, 276
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 65535
  %3081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3080)  ; LegacyF16ToF32(value)
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = lshr i32 %3083, 24
  %3085 = uitofp i32 %3084 to float
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = and i32 %3083, 255
  %3088 = uitofp i32 %3087 to float
  %3089 = fmul fast float %3088, 0x3F70101020000000
  %3090 = lshr i32 %3083, 8
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = fmul fast float %3092, 0x3F70101020000000
  %3094 = lshr i32 %3083, 16
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = fmul fast float %3096, 0x3F70101020000000
  %3098 = add i32 %43, 268
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = lshr i32 %3100, 24
  %3102 = uitofp i32 %3101 to float
  %3103 = fmul fast float %3102, 0x3F70101020000000
  %3104 = and i32 %3100, 255
  %3105 = uitofp i32 %3104 to float
  %3106 = fmul fast float %3105, 0x3F70101020000000
  %3107 = lshr i32 %3100, 8
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = fmul fast float %3109, 0x3F70101020000000
  %3111 = lshr i32 %3100, 16
  %3112 = and i32 %3111, 255
  %3113 = uitofp i32 %3112 to float
  %3114 = fmul fast float %3113, 0x3F70101020000000
  %3115 = bitcast float %3039 to i32
  %3116 = ashr i32 %3115, 1
  %3117 = sub nsw i32 1597463174, %3116
  %3118 = bitcast i32 %3117 to float
  %3119 = fmul fast float %3039, 5.000000e-01
  %3120 = fmul fast float %3118, %3118
  %3121 = fmul fast float %3120, %3119
  %3122 = fsub fast float 1.500000e+00, %3121
  %3123 = fmul fast float %3118, %3039
  %3124 = fmul fast float %3123, %3122
  %3125 = bitcast float %3040 to i32
  %3126 = ashr i32 %3125, 1
  %3127 = sub nsw i32 1597463174, %3126
  %3128 = bitcast i32 %3127 to float
  %3129 = fmul fast float %3040, 5.000000e-01
  %3130 = fmul fast float %3128, %3128
  %3131 = fmul fast float %3130, %3129
  %3132 = fsub fast float 1.500000e+00, %3131
  %3133 = fmul fast float %3128, %3040
  %3134 = fmul fast float %3133, %3132
  %3135 = bitcast float %3041 to i32
  %3136 = ashr i32 %3135, 1
  %3137 = sub nsw i32 1597463174, %3136
  %3138 = bitcast i32 %3137 to float
  %3139 = fmul fast float %3041, 5.000000e-01
  %3140 = fmul fast float %3138, %3138
  %3141 = fmul fast float %3140, %3139
  %3142 = fsub fast float 1.500000e+00, %3141
  %3143 = fmul fast float %3138, %3041
  %3144 = fmul fast float %3143, %3142
  %3145 = fsub fast float %3124, %3106
  %3146 = fsub fast float %3134, %3110
  %3147 = fsub fast float %3144, %3114
  %3148 = fmul fast float %3145, %3074
  %3149 = fmul fast float %3146, %3076
  %3150 = fmul fast float %3147, %3081
  %3151 = fadd fast float %3148, %3089
  %3152 = fadd fast float %3149, %3093
  %3153 = fadd fast float %3150, %3097
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = fmul fast float %3154, %3154
  %3158 = fmul fast float %3155, %3155
  %3159 = fmul fast float %3156, %3156
  %3160 = fsub fast float %3157, %3039
  %3161 = fsub fast float %3158, %3040
  %3162 = fsub fast float %3159, %3041
  %3163 = fmul fast float %3160, %3064
  %3164 = fmul fast float %3161, %3064
  %3165 = fmul fast float %3162, %3064
  %3166 = fadd fast float %3163, %3039
  %3167 = fadd fast float %3164, %3040
  %3168 = fadd fast float %3165, %3041
  %3169 = fadd fast float %3086, %3050
  %3170 = fsub fast float %3169, %3103
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3172 = fsub fast float %3171, %3050
  %3173 = fmul fast float %3172, %3064
  %3174 = fadd fast float %3173, %3050
  br label %3228

; <label>:3175                                    ; preds = %3063
  %3176 = and i32 %3066, 134217728
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3212, label %3178

; <label>:3178                                    ; preds = %3175
  %3179 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3180 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3181 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fmul fast float %3182, %3064
  %3186 = fmul fast float %3183, %3064
  %3187 = fmul fast float %3184, %3064
  %3188 = fadd fast float %3185, 5.000000e-01
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = call float @dx.op.unary.f32(i32 24, float %3039)  ; Sqrt(value)
  %3192 = call float @dx.op.unary.f32(i32 24, float %3040)  ; Sqrt(value)
  %3193 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3194 = fmul fast float %3188, 2.000000e+00
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3195, %3191
  %3197 = fadd fast float %3196, %3194
  %3198 = fmul fast float %3197, %3191
  %3199 = fmul fast float %3189, 2.000000e+00
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = fmul fast float %3200, %3192
  %3202 = fadd fast float %3201, %3199
  %3203 = fmul fast float %3202, %3192
  %3204 = fmul fast float %3190, 2.000000e+00
  %3205 = fsub fast float 1.000000e+00, %3204
  %3206 = fmul fast float %3205, %3193
  %3207 = fadd fast float %3206, %3204
  %3208 = fmul fast float %3207, %3193
  %3209 = fmul fast float %3198, %3198
  %3210 = fmul fast float %3203, %3203
  %3211 = fmul fast float %3208, %3208
  br label %3228

; <label>:3212                                    ; preds = %3175
  %3213 = fmul fast float %343, %343
  %3214 = fmul fast float %347, %347
  %3215 = fmul fast float %351, %351
  %3216 = fadd fast float %3213, -1.000000e+00
  %3217 = fadd fast float %3214, -1.000000e+00
  %3218 = fadd fast float %3215, -1.000000e+00
  %3219 = fmul fast float %3064, %3216
  %3220 = fmul fast float %3064, %3217
  %3221 = fmul fast float %3064, %3218
  %3222 = fadd fast float %3219, 1.000000e+00
  %3223 = fadd fast float %3220, 1.000000e+00
  %3224 = fadd fast float %3221, 1.000000e+00
  %3225 = fmul fast float %3222, %3039
  %3226 = fmul fast float %3223, %3040
  %3227 = fmul fast float %3224, %3041
  br label %3228

; <label>:3228                                    ; preds = %3212, %3178, %3069, %3025
  %3229 = phi float [ %3174, %3069 ], [ %3050, %3178 ], [ %3050, %3212 ], [ 0x3FA23C0BE0000000, %3025 ]
  %3230 = phi float [ %3166, %3069 ], [ %3209, %3178 ], [ %3225, %3212 ], [ 1.000000e+00, %3025 ]
  %3231 = phi float [ %3167, %3069 ], [ %3210, %3178 ], [ %3226, %3212 ], [ 1.000000e+00, %3025 ]
  %3232 = phi float [ %3168, %3069 ], [ %3211, %3178 ], [ %3227, %3212 ], [ 1.000000e+00, %3025 ]
  %3233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.i32 %3233, 1
  %3235 = and i32 %3234, 1
  %3236 = icmp ne i32 %3235, 0
  %3237 = add i32 %43, 356
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 32
  %3241 = icmp ne i32 %3240, 0
  %3242 = and i1 %3236, %3241
  %3243 = select i1 %3242, float 1.000000e+00, float %3230
  %3244 = select i1 %3242, float 0x3FD3333340000000, float %3231
  %3245 = select i1 %3242, float 0x3FD3333340000000, float %3232
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 32
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3322, label %3250

; <label>:3250                                    ; preds = %3228
  %3251 = add i32 %43, 140
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = add i32 %43, 420
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = add i32 %3256, 0
  %3258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3258, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = extractvalue %dx.types.ResRet.f32 %3259, 3
  %3264 = and i32 %3253, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = lshr i32 %3253, 8
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = lshr i32 %3253, 16
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = fmul fast float %3271, 0x3F70101000000000
  %3273 = fmul fast float %3260, %3265
  %3274 = fadd fast float %3273, %3268
  %3275 = fmul fast float %3274, 0x3F70101000000000
  %3276 = fadd fast float %3261, -5.000000e-01
  %3277 = fadd fast float %3263, -5.000000e-01
  %3278 = fmul fast float %3276, %3272
  %3279 = fmul fast float %3277, %3272
  %3280 = fadd fast float %3278, 5.000000e-01
  %3281 = fadd fast float %3279, 5.000000e-01
  %3282 = fmul fast float %3280, 2.000000e+00
  %3283 = fadd fast float %3282, -1.000000e+00
  %3284 = fmul fast float %3281, 2.000000e+00
  %3285 = fadd fast float %3284, -1.000000e+00
  %3286 = fadd fast float %3283, %3285
  %3287 = fmul fast float %3286, 5.000000e-01
  %3288 = fsub fast float %3283, %3285
  %3289 = fmul fast float %3288, 5.000000e-01
  %3290 = call float @dx.op.unary.f32(i32 6, float %3287)  ; FAbs(value)
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = call float @dx.op.unary.f32(i32 6, float %3289)  ; FAbs(value)
  %3293 = fsub fast float %3291, %3292
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3287, float %3289, float %3293, float %3287, float %3289, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.unary.f32(i32 25, float %3294)  ; Rsqrt(value)
  %3296 = fmul fast float %3287, %3295
  %3297 = fmul fast float %3289, %3295
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 67108864
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3318, label %3302

; <label>:3302                                    ; preds = %3250
  %3303 = add i32 %43, 328
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 65535
  %3307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3306)  ; LegacyF16ToF32(value)
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = and i32 %3309, 65535
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = lshr i32 %3305, 16
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = fsub fast float %3275, %3313
  %3315 = fmul fast float %3314, %3307
  %3316 = fadd fast float %3315, %3311
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  br label %3318

; <label>:3318                                    ; preds = %3302, %3250
  %3319 = phi float [ %3317, %3302 ], [ %3275, %3250 ]
  %3320 = call float @dx.op.dot2.f32(i32 54, float %3296, float %3297, float %2739, float %2740)  ; Dot2(ax,ay,bx,by)
  %3321 = call float @dx.op.dot2.f32(i32 54, float %3296, float %3297, float %2741, float %2742)  ; Dot2(ax,ay,bx,by)
  br label %3322

; <label>:3322                                    ; preds = %3318, %3228
  %3323 = phi float [ %3319, %3318 ], [ 0x3FD6666660000000, %3228 ]
  %3324 = phi float [ %3320, %3318 ], [ 0.000000e+00, %3228 ]
  %3325 = phi float [ %3321, %3318 ], [ 0.000000e+00, %3228 ]
  %3326 = phi float [ %3262, %3318 ], [ 1.000000e+00, %3228 ]
  %3327 = add i32 %43, 208
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = lshr i32 %3329, 22
  %3331 = shl nuw nsw i32 %3330, 5
  %3332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3331)  ; LegacyF16ToF32(value)
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 64
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3370, label %3337

; <label>:3337                                    ; preds = %3322
  %3338 = add i32 %43, 436
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 131072
  %3346 = icmp eq i32 %3345, 0
  %3347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = fmul fast float %3348, %331
  %3352 = fmul fast float %3349, %334
  %3353 = fmul fast float %3350, %337
  br i1 %3346, label %3360, label %3354

; <label>:3354                                    ; preds = %3337
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3357 = fmul fast float %3356, %3351
  %3358 = fmul fast float %3356, %3352
  %3359 = fmul fast float %3356, %3353
  br label %3360

; <label>:3360                                    ; preds = %3354, %3337
  %3361 = phi float [ %3357, %3354 ], [ %3351, %3337 ]
  %3362 = phi float [ %3358, %3354 ], [ %3352, %3337 ]
  %3363 = phi float [ %3359, %3354 ], [ %3353, %3337 ]
  %3364 = fmul fast float %3361, %3332
  %3365 = select i1 %185, float %3364, float %3361
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3362, float %3363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = select i1 %185, float 0.000000e+00, float %3361
  %3368 = select i1 %185, float %3366, float %3362
  %3369 = select i1 %185, float 0.000000e+00, float %3363
  br label %3370

; <label>:3370                                    ; preds = %3360, %3322
  %3371 = phi float [ %3367, %3360 ], [ 0.000000e+00, %3322 ]
  %3372 = phi float [ %3368, %3360 ], [ 0.000000e+00, %3322 ]
  %3373 = phi float [ %3369, %3360 ], [ 0.000000e+00, %3322 ]
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 26624
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3401, label %3378

; <label>:3378                                    ; preds = %3370
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = and i32 %3380, 16384
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %3401, label %3383

; <label>:3383                                    ; preds = %3378
  %3384 = and i32 %3380, 1048576
  %3385 = icmp ne i32 %3384, 0
  %3386 = add i32 %43, 500
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = add i32 %3388, 0
  %3390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3390, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = add i32 %43, 144
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 24
  %3397 = uitofp i32 %3396 to float
  %3398 = fmul fast float %3392, 0x3F70101020000000
  %3399 = select i1 %3385, float 0x3F70101020000000, float %3398
  %3400 = fmul fast float %3399, %3397
  br label %3401

; <label>:3401                                    ; preds = %3383, %3378, %3370
  %3402 = phi float [ %3400, %3383 ], [ 0.000000e+00, %3378 ], [ 0.000000e+00, %3370 ]
  %3403 = add i32 %43, 144
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 255
  %3407 = uitofp i32 %3406 to float
  %3408 = lshr i32 %3405, 8
  %3409 = and i32 %3408, 255
  %3410 = uitofp i32 %3409 to float
  %3411 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3412 = fmul fast float %3410, %3411
  %3413 = fadd fast float %3412, %3407
  %3414 = fmul fast float %3413, 0x3F70101020000000
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  br i1 %2727, label %3416, label %3424

; <label>:3416                                    ; preds = %3401
  %3417 = fsub fast float 1.000000e+00, %3023
  %3418 = fmul fast float %3417, %2715
  %3419 = fmul fast float %3417, %2716
  %3420 = fmul fast float %3417, %2717
  %3421 = fmul fast float %3417, %2718
  %3422 = fmul fast float %3417, %2719
  %3423 = fmul fast float %3417, %2720
  br label %3424

; <label>:3424                                    ; preds = %3416, %3401
  %3425 = phi float [ %3418, %3416 ], [ %2715, %3401 ]
  %3426 = phi float [ %3419, %3416 ], [ %2716, %3401 ]
  %3427 = phi float [ %3420, %3416 ], [ %2717, %3401 ]
  %3428 = phi float [ %3421, %3416 ], [ %2718, %3401 ]
  %3429 = phi float [ %3422, %3416 ], [ %2719, %3401 ]
  %3430 = phi float [ %3423, %3416 ], [ %2720, %3401 ]
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 3
  %3434 = icmp eq i32 %3433, 3
  br i1 %3434, label %3513, label %3435

; <label>:3435                                    ; preds = %3424
  %3436 = and i32 %3432, 16
  %3437 = icmp ne i32 %3436, 0
  %3438 = select i1 %3437, float %3023, float 0.000000e+00
  %3439 = icmp eq i32 %3433, 0
  br i1 %3439, label %3440, label %3468

; <label>:3440                                    ; preds = %3435
  %3441 = and i32 %3432, 64
  %3442 = icmp ne i32 %3441, 0
  %3443 = select i1 %3442, float %3023, float 0.000000e+00
  %3444 = fsub fast float %3243, %3425
  %3445 = fsub fast float %3244, %3426
  %3446 = fsub fast float %3245, %3427
  %3447 = fmul fast float %3438, %3444
  %3448 = fmul fast float %3438, %3445
  %3449 = fmul fast float %3438, %3446
  %3450 = fadd fast float %3447, %3425
  %3451 = fadd fast float %3448, %3426
  %3452 = fadd fast float %3449, %3427
  %3453 = fsub fast float %3229, %2721
  %3454 = fmul fast float %3438, %3453
  %3455 = fadd fast float %3454, %2721
  %3456 = fsub fast float %3371, %3428
  %3457 = fsub fast float %3372, %3429
  %3458 = fsub fast float %3373, %3430
  %3459 = fmul fast float %3443, %3456
  %3460 = fmul fast float %3443, %3457
  %3461 = fmul fast float %3443, %3458
  %3462 = fadd fast float %3459, %3428
  %3463 = fadd fast float %3460, %3429
  %3464 = fadd fast float %3461, %3430
  %3465 = fsub fast float %3415, %2725
  %3466 = fmul fast float %3438, %3465
  %3467 = fadd fast float %3466, %2725
  br label %3513

; <label>:3468                                    ; preds = %3435
  %3469 = icmp eq i32 %3433, 1
  br i1 %3469, label %3470, label %3483

; <label>:3470                                    ; preds = %3468
  %3471 = fadd fast float %3243, -1.000000e+00
  %3472 = fadd fast float %3244, -1.000000e+00
  %3473 = fadd fast float %3245, -1.000000e+00
  %3474 = fmul fast float %3438, %3471
  %3475 = fmul fast float %3438, %3472
  %3476 = fmul fast float %3438, %3473
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fmul fast float %3477, %3425
  %3481 = fmul fast float %3478, %3426
  %3482 = fmul fast float %3479, %3427
  br label %3513

; <label>:3483                                    ; preds = %3468
  %3484 = icmp eq i32 %3433, 2
  br i1 %3484, label %3485, label %3513

; <label>:3485                                    ; preds = %3483
  %3486 = call float @dx.op.unary.f32(i32 24, float %3243)  ; Sqrt(value)
  %3487 = call float @dx.op.unary.f32(i32 24, float %3244)  ; Sqrt(value)
  %3488 = call float @dx.op.unary.f32(i32 24, float %3245)  ; Sqrt(value)
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fadd fast float %3487, -5.000000e-01
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fmul fast float %3489, %3438
  %3493 = fmul fast float %3490, %3438
  %3494 = fmul fast float %3491, %3438
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = fadd fast float %3493, 5.000000e-01
  %3497 = fadd fast float %3494, 5.000000e-01
  %3498 = fmul fast float %3495, 2.000000e+00
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = fmul fast float %3499, %3425
  %3501 = fadd fast float %3500, %3498
  %3502 = fmul fast float %3501, %3425
  %3503 = fmul fast float %3496, 2.000000e+00
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = fmul fast float %3504, %3426
  %3506 = fadd fast float %3505, %3503
  %3507 = fmul fast float %3506, %3426
  %3508 = fmul fast float %3497, 2.000000e+00
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fmul fast float %3509, %3427
  %3511 = fadd fast float %3510, %3508
  %3512 = fmul fast float %3511, %3427
  br label %3513

; <label>:3513                                    ; preds = %3485, %3483, %3470, %3440, %3424
  %3514 = phi float [ %3425, %3424 ], [ %3502, %3485 ], [ %3425, %3483 ], [ %3480, %3470 ], [ %3450, %3440 ]
  %3515 = phi float [ %3426, %3424 ], [ %3507, %3485 ], [ %3426, %3483 ], [ %3481, %3470 ], [ %3451, %3440 ]
  %3516 = phi float [ %3427, %3424 ], [ %3512, %3485 ], [ %3427, %3483 ], [ %3482, %3470 ], [ %3452, %3440 ]
  %3517 = phi float [ %3428, %3424 ], [ %3428, %3485 ], [ %3428, %3483 ], [ %3428, %3470 ], [ %3462, %3440 ]
  %3518 = phi float [ %3429, %3424 ], [ %3429, %3485 ], [ %3429, %3483 ], [ %3429, %3470 ], [ %3463, %3440 ]
  %3519 = phi float [ %3430, %3424 ], [ %3430, %3485 ], [ %3430, %3483 ], [ %3430, %3470 ], [ %3464, %3440 ]
  %3520 = phi float [ %2721, %3424 ], [ %2721, %3485 ], [ %2721, %3483 ], [ %2721, %3470 ], [ %3455, %3440 ]
  %3521 = phi float [ %2725, %3424 ], [ %2725, %3485 ], [ %2725, %3483 ], [ %2725, %3470 ], [ %3467, %3440 ]
  %3522 = and i32 %3432, 12
  %3523 = icmp eq i32 %3522, 12
  br i1 %3523, label %3606, label %3524

; <label>:3524                                    ; preds = %3513
  %3525 = and i32 %3432, 2097184
  %3526 = icmp eq i32 %3525, 2097184
  %3527 = select i1 %3526, float %3023, float 0.000000e+00
  %3528 = and i32 %3432, 4194336
  %3529 = icmp eq i32 %3528, 4194336
  %3530 = select i1 %3529, float %3023, float 0.000000e+00
  %3531 = and i32 %3432, 8388640
  %3532 = icmp eq i32 %3531, 8388640
  %3533 = select i1 %3532, float %3023, float 0.000000e+00
  %3534 = and i32 %3432, 16384
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3023, float 0.000000e+00
  %3537 = icmp eq i32 %3522, 0
  br i1 %3537, label %3538, label %3554

; <label>:3538                                    ; preds = %3524
  %3539 = fsub fast float %3324, %2713
  %3540 = fsub fast float %3325, %2714
  %3541 = fmul fast float %3527, %3539
  %3542 = fmul fast float %3527, %3540
  %3543 = fadd fast float %3541, %2713
  %3544 = fadd fast float %3542, %2714
  %3545 = fsub fast float %3326, %2723
  %3546 = fmul fast float %3530, %3545
  %3547 = fadd fast float %3546, %2723
  %3548 = fsub fast float %3323, %2722
  %3549 = fmul fast float %3533, %3548
  %3550 = fadd fast float %3549, %2722
  %3551 = fsub fast float %3402, %2724
  %3552 = fmul fast float %3536, %3551
  %3553 = fadd fast float %3552, %2724
  br label %3606

; <label>:3554                                    ; preds = %3524
  %3555 = icmp eq i32 %3522, 4
  br i1 %3555, label %3556, label %3590

; <label>:3556                                    ; preds = %3554
  %3557 = fmul fast float %3527, %3324
  %3558 = fmul fast float %3527, %3325
  %3559 = fadd fast float %3557, %2713
  %3560 = fadd fast float %3558, %2714
  %3561 = call float @dx.op.binary.f32(i32 36, float %2723, float %3326)  ; FMin(a,b)
  %3562 = fsub fast float %3561, %2723
  %3563 = fmul fast float %3562, %3530
  %3564 = fadd fast float %3563, %2723
  %3565 = fadd fast float %3323, %2722
  %3566 = fmul fast float %3565, 0x3FF337FAE0000000
  %3567 = fmul fast float %2722, %2722
  %3568 = fmul fast float %3323, %3323
  %3569 = fadd fast float %3568, %3567
  %3570 = fmul fast float %3569, 0x3FE5152B00000000
  %3571 = fmul fast float %2722, 0xBFCC1F85E0000000
  %3572 = fmul fast float %3571, %3323
  %3573 = fadd fast float %3572, 0xBFE1363700000000
  %3574 = fadd fast float %3573, %3566
  %3575 = fsub fast float %3574, %3570
  %3576 = fmul fast float %3565, 0x3FBA6F0D00000000
  %3577 = fmul fast float %3569, 0x3FD0432880000000
  %3578 = fmul fast float %2722, 0xBFEF110800000000
  %3579 = fmul fast float %3578, %3323
  %3580 = fadd fast float %3579, 1.000000e+00
  %3581 = fsub fast float %3580, %3576
  %3582 = fadd fast float %3581, %3577
  %3583 = fdiv fast float %3575, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fsub fast float %3584, %2722
  %3586 = fmul fast float %3585, %3533
  %3587 = fadd fast float %3586, %2722
  %3588 = fmul fast float %3536, %3402
  %3589 = fadd fast float %3588, %2724
  br label %3606

; <label>:3590                                    ; preds = %3554
  %3591 = icmp eq i32 %3522, 8
  br i1 %3591, label %3592, label %3606

; <label>:3592                                    ; preds = %3590
  %3593 = fmul fast float %3527, %3324
  %3594 = fmul fast float %3527, %3325
  %3595 = fadd fast float %3593, %2713
  %3596 = fadd fast float %3594, %2714
  %3597 = call float @dx.op.binary.f32(i32 36, float %2723, float %3326)  ; FMin(a,b)
  %3598 = fsub fast float %3597, %2723
  %3599 = fmul fast float %3598, %3530
  %3600 = fadd fast float %3599, %2723
  %3601 = fsub fast float %3323, %2722
  %3602 = fmul fast float %3533, %3601
  %3603 = fadd fast float %3602, %2722
  %3604 = fmul fast float %3536, %3402
  %3605 = fadd fast float %3604, %2724
  br label %3606

; <label>:3606                                    ; preds = %3592, %3590, %3556, %3538, %3513, %3022, %2726, %2712
  %3607 = phi float [ %2713, %3513 ], [ %2713, %3022 ], [ %2713, %2712 ], [ %2713, %2726 ], [ %3543, %3538 ], [ %3559, %3556 ], [ %2713, %3590 ], [ %3595, %3592 ]
  %3608 = phi float [ %2714, %3513 ], [ %2714, %3022 ], [ %2714, %2712 ], [ %2714, %2726 ], [ %3544, %3538 ], [ %3560, %3556 ], [ %2714, %3590 ], [ %3596, %3592 ]
  %3609 = phi float [ %3514, %3513 ], [ %2715, %3022 ], [ %2715, %2712 ], [ %2715, %2726 ], [ %3514, %3538 ], [ %3514, %3556 ], [ %3514, %3590 ], [ %3514, %3592 ]
  %3610 = phi float [ %3515, %3513 ], [ %2716, %3022 ], [ %2716, %2712 ], [ %2716, %2726 ], [ %3515, %3538 ], [ %3515, %3556 ], [ %3515, %3590 ], [ %3515, %3592 ]
  %3611 = phi float [ %3516, %3513 ], [ %2717, %3022 ], [ %2717, %2712 ], [ %2717, %2726 ], [ %3516, %3538 ], [ %3516, %3556 ], [ %3516, %3590 ], [ %3516, %3592 ]
  %3612 = phi float [ %3517, %3513 ], [ %2718, %3022 ], [ %2718, %2712 ], [ %2718, %2726 ], [ %3517, %3538 ], [ %3517, %3556 ], [ %3517, %3590 ], [ %3517, %3592 ]
  %3613 = phi float [ %3518, %3513 ], [ %2719, %3022 ], [ %2719, %2712 ], [ %2719, %2726 ], [ %3518, %3538 ], [ %3518, %3556 ], [ %3518, %3590 ], [ %3518, %3592 ]
  %3614 = phi float [ %3519, %3513 ], [ %2720, %3022 ], [ %2720, %2712 ], [ %2720, %2726 ], [ %3519, %3538 ], [ %3519, %3556 ], [ %3519, %3590 ], [ %3519, %3592 ]
  %3615 = phi float [ %3520, %3513 ], [ %2721, %3022 ], [ %2721, %2712 ], [ %2721, %2726 ], [ %3520, %3538 ], [ %3520, %3556 ], [ %3520, %3590 ], [ %3520, %3592 ]
  %3616 = phi float [ %2722, %3513 ], [ %2722, %3022 ], [ %2722, %2712 ], [ %2722, %2726 ], [ %3550, %3538 ], [ %3587, %3556 ], [ %2722, %3590 ], [ %3603, %3592 ]
  %3617 = phi float [ %2723, %3513 ], [ %2723, %3022 ], [ %2723, %2712 ], [ %2723, %2726 ], [ %3547, %3538 ], [ %3564, %3556 ], [ %2723, %3590 ], [ %3600, %3592 ]
  %3618 = phi float [ %2724, %3513 ], [ %2724, %3022 ], [ %2724, %2712 ], [ %2724, %2726 ], [ %3553, %3538 ], [ %3589, %3556 ], [ %2724, %3590 ], [ %3605, %3592 ]
  %3619 = phi float [ %3521, %3513 ], [ %2725, %3022 ], [ %2725, %2712 ], [ %2725, %2726 ], [ %3521, %3538 ], [ %3521, %3556 ], [ %3521, %3590 ], [ %3521, %3592 ]
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = call float @dx.op.dot2.f32(i32 54, float %3607, float %3608, float %3607, float %3608)  ; Dot2(ax,ay,bx,by)
  %3623 = fmul fast float %3622, 0x3FE3333340000000
  %3624 = fsub fast float 1.000000e+00, %3623
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3624, float %3607, float %3608, float %3624)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = call float @dx.op.unary.f32(i32 25, float %3625)  ; Rsqrt(value)
  %3627 = fmul fast float %3626, %3607
  %3628 = fmul fast float %3626, %3608
  %3629 = fmul fast float %3624, %3626
  %3630 = fmul fast float %3629, %87
  %3631 = fmul fast float %3629, %88
  %3632 = fmul fast float %3629, %89
  %3633 = fmul fast float %3627, %61
  %3634 = fmul fast float %3627, %62
  %3635 = fmul fast float %3627, %63
  %3636 = fadd fast float %3630, %3633
  %3637 = fadd fast float %3631, %3634
  %3638 = fadd fast float %3632, %3635
  %3639 = fmul fast float %99, %3628
  %3640 = fmul fast float %100, %3628
  %3641 = fmul fast float %101, %3628
  %3642 = fadd fast float %3636, %3639
  %3643 = fadd fast float %3637, %3640
  %3644 = fadd fast float %3638, %3641
  %3645 = call float @dx.op.dot3.f32(i32 55, float %3642, float %3643, float %3644, float %3642, float %3643, float %3644)  ; Dot3(ax,ay,az,bx,by,bz)
  %3646 = call float @dx.op.unary.f32(i32 25, float %3645)  ; Rsqrt(value)
  %3647 = fmul fast float %3642, %3646
  %3648 = fmul fast float %3643, %3646
  %3649 = fmul fast float %3644, %3646
  %3650 = and i32 %45, 1
  %3651 = icmp eq i32 %3650, 0
  br i1 %3651, label %3652, label %4160

; <label>:3652                                    ; preds = %3606
  %3653 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3654 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3655 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3656 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3657 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3658 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3659 = fadd fast float %3653, %143
  %3660 = fadd fast float %3654, %144
  %3661 = fadd fast float %3655, %145
  %3662 = fadd fast float %3656, %143
  %3663 = fadd fast float %3657, %144
  %3664 = fadd fast float %3658, %145
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 3
  %3672 = fmul fast float %3666, %80
  %3673 = fmul fast float %3672, %3670
  %3674 = fmul fast float %3667, %81
  %3675 = fmul fast float %3674, %3671
  %3676 = fptoui float %3673 to i32
  %3677 = fptoui float %3675 to i32
  %3678 = fadd fast float %3666, -1.000000e+00
  %3679 = fadd fast float %3667, -1.000000e+00
  %3680 = fptoui float %3678 to i32
  %3681 = fptoui float %3679 to i32
  %3682 = call i32 @dx.op.binary.i32(i32 40, i32 %3676, i32 %3680)  ; UMin(a,b)
  %3683 = call i32 @dx.op.binary.i32(i32 40, i32 %3677, i32 %3681)  ; UMin(a,b)
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 2
  %3686 = extractvalue %dx.types.CBufRet.f32 %3684, 3
  %3687 = fmul fast float %3685, %75
  %3688 = fsub fast float %3687, %3686
  %3689 = fadd fast float %3668, -1.000000e+00
  %3690 = call float @dx.op.binary.f32(i32 36, float %3688, float %3689)  ; FMin(a,b)
  %3691 = fptoui float %3690 to i32
  %3692 = fptoui float %3666 to i32
  %3693 = fptoui float %3667 to i32
  %3694 = mul i32 %3691, %3693
  %3695 = add i32 %3694, %3683
  %3696 = mul i32 %3695, %3692
  %3697 = add i32 %3696, %3682
  %3698 = shl i32 %3697, 2
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 1023
  %3702 = lshr i32 %3700, 10
  %3703 = icmp eq i32 %3701, 0
  br i1 %3703, label %4129, label %3704

; <label>:3704                                    ; preds = %3652
  %3705 = and i32 %3700, 1023
  br label %3706

; <label>:3706                                    ; preds = %3832, %3704
  %3707 = phi i32 [ %3782, %3832 ], [ 0, %3704 ]
  %3708 = phi float [ %3833, %3832 ], [ 0.000000e+00, %3704 ]
  %3709 = phi float [ %3834, %3832 ], [ %3621, %3704 ]
  %3710 = phi float [ %3835, %3832 ], [ %3619, %3704 ]
  %3711 = phi float [ %3836, %3832 ], [ %3618, %3704 ]
  %3712 = phi float [ %3837, %3832 ], [ 0.000000e+00, %3704 ]
  %3713 = phi float [ %3838, %3832 ], [ %3612, %3704 ]
  %3714 = phi float [ %3839, %3832 ], [ %3613, %3704 ]
  %3715 = phi float [ %3840, %3832 ], [ %3614, %3704 ]
  %3716 = phi float [ %3841, %3832 ], [ %3647, %3704 ]
  %3717 = phi float [ %3842, %3832 ], [ %3648, %3704 ]
  %3718 = phi float [ %3843, %3832 ], [ %3649, %3704 ]
  %3719 = phi float [ %3844, %3832 ], [ %3617, %3704 ]
  %3720 = phi float [ %3845, %3832 ], [ %3616, %3704 ]
  %3721 = phi float [ %3846, %3832 ], [ 0.000000e+00, %3704 ]
  %3722 = phi float [ %3847, %3832 ], [ %3615, %3704 ]
  %3723 = phi float [ %3848, %3832 ], [ %3609, %3704 ]
  %3724 = phi float [ %3849, %3832 ], [ %3610, %3704 ]
  %3725 = phi float [ %3850, %3832 ], [ %3611, %3704 ]
  %3726 = add nuw nsw i32 %3707, %3702
  %3727 = shl i32 %3726, 2
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = shl i32 %3729, 8
  %3731 = or i32 %3730, 48
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3737 = or i32 %3730, 64
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.i32 %3738, 1
  %3741 = or i32 %3730, 80
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3745 = or i32 %3730, 96
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = or i32 %3730, 112
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 2
  %3754 = or i32 %3730, 128
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = extractvalue %dx.types.ResRet.f32 %3755, 3
  %3760 = or i32 %3730, 144
  %3761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = or i32 %3730, 160
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3772 = or i32 %3730, 192
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = or i32 %3730, 208
  %3776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = or i32 %3730, 248
  %3779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = add nuw nsw i32 %3707, 1
  %3783 = bitcast float %3736 to i32
  %3784 = and i32 %3783, 512
  %3785 = icmp eq i32 %3784, 0
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = call float @dx.op.dot4.f32(i32 56, float %3787, float %3788, float %3789, float %3790, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3792 = or i32 %3730, 16
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3799 = or i32 %3730, 32
  %3800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = call float @dx.op.dot4.f32(i32 56, float %3801, float %3802, float %3803, float %3804, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3806 = call float @dx.op.unary.f32(i32 27, float %3791)  ; Round_ni(value)
  %3807 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3808 = call float @dx.op.unary.f32(i32 27, float %3798)  ; Round_ni(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3811 = call float @dx.op.unary.f32(i32 27, float %3810)  ; Round_ni(value)
  %3812 = fadd fast float %3809, %3807
  %3813 = fadd fast float %3812, %3811
  %3814 = fcmp fast oeq float %3813, 0.000000e+00
  %3815 = call float @dx.op.dot4.f32(i32 56, float %3787, float %3788, float %3789, float %3790, float %3659, float %3660, float %3661, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3816 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %3659, float %3660, float %3661, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3817 = call float @dx.op.dot4.f32(i32 56, float %3787, float %3788, float %3789, float %3790, float %3662, float %3663, float %3664, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3818 = call float @dx.op.dot4.f32(i32 56, float %3794, float %3795, float %3796, float %3797, float %3662, float %3663, float %3664, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3819 = fsub fast float %3815, %3791
  %3820 = fsub fast float %3817, %3791
  %3821 = fsub fast float %3816, %3798
  %3822 = fsub fast float %3818, %3798
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3826 = fadd fast float %3825, %3823
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3829 = fcmp fast ogt float %3827, %3828
  %3830 = and i1 %3814, %3829
  %3831 = and i1 %3785, %3830
  br i1 %3831, label %3852, label %3832

; <label>:3832                                    ; preds = %4115, %3933, %3852, %3706
  %3833 = phi float [ %3708, %3852 ], [ %3936, %3933 ], [ %3936, %4115 ], [ %3708, %3706 ]
  %3834 = phi float [ %3709, %3852 ], [ %3709, %3933 ], [ %4090, %4115 ], [ %3709, %3706 ]
  %3835 = phi float [ %3710, %3852 ], [ %3710, %3933 ], [ %4088, %4115 ], [ %3710, %3706 ]
  %3836 = phi float [ %3711, %3852 ], [ %3711, %3933 ], [ %4060, %4115 ], [ %3711, %3706 ]
  %3837 = phi float [ %3712, %3852 ], [ %3712, %3933 ], [ %4058, %4115 ], [ %3712, %3706 ]
  %3838 = phi float [ %3713, %3852 ], [ %3713, %3933 ], [ %4125, %4115 ], [ %3713, %3706 ]
  %3839 = phi float [ %3714, %3852 ], [ %3714, %3933 ], [ %4126, %4115 ], [ %3714, %3706 ]
  %3840 = phi float [ %3715, %3852 ], [ %3715, %3933 ], [ %4127, %4115 ], [ %3715, %3706 ]
  %3841 = phi float [ %3716, %3852 ], [ %3716, %3933 ], [ %4039, %4115 ], [ %3716, %3706 ]
  %3842 = phi float [ %3717, %3852 ], [ %3717, %3933 ], [ %4040, %4115 ], [ %3717, %3706 ]
  %3843 = phi float [ %3718, %3852 ], [ %3718, %3933 ], [ %4041, %4115 ], [ %3718, %3706 ]
  %3844 = phi float [ %3719, %3852 ], [ %3719, %3933 ], [ %4068, %4115 ], [ %3719, %3706 ]
  %3845 = phi float [ %3720, %3852 ], [ %3720, %3933 ], [ %4065, %4115 ], [ %3720, %3706 ]
  %3846 = phi float [ %3721, %3852 ], [ %3721, %3933 ], [ %4062, %4115 ], [ %3721, %3706 ]
  %3847 = phi float [ %3722, %3852 ], [ %3722, %3933 ], [ %4056, %4115 ], [ %3722, %3706 ]
  %3848 = phi float [ %3723, %3852 ], [ %3723, %3933 ], [ %4051, %4115 ], [ %3723, %3706 ]
  %3849 = phi float [ %3724, %3852 ], [ %3724, %3933 ], [ %4052, %4115 ], [ %3724, %3706 ]
  %3850 = phi float [ %3725, %3852 ], [ %3725, %3933 ], [ %4053, %4115 ], [ %3725, %3706 ]
  %3851 = icmp eq i32 %3782, %3705
  br i1 %3851, label %4128, label %3706

; <label>:3852                                    ; preds = %3706
  %3853 = extractvalue %dx.types.ResRet.f32 %3752, 3
  %3854 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3858 = extractvalue %dx.types.ResRet.i32 %3738, 3
  %3859 = extractvalue %dx.types.ResRet.i32 %3738, 2
  %3860 = add i32 %3858, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3860, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3861, %dx.types.Handle %3862, float %3791, float %3798, float undef, float undef, i32 0, i32 0, i32 undef, float %3819, float %3821, float undef, float %3820, float %3822, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = fmul fast float %3864, %3857
  %3866 = fadd fast float %3865, %3856
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = fmul fast float %3791, %3747
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3748, float %3798, float %3868)  ; FMad(a,b,c)
  %3870 = fadd fast float %3869, %3855
  %3871 = fmul fast float %3791, %3749
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3798, float %3871)  ; FMad(a,b,c)
  %3873 = fadd fast float %3872, %3854
  %3874 = fmul fast float %3819, %3747
  %3875 = call float @dx.op.tertiary.f32(i32 46, float %3748, float %3821, float %3874)  ; FMad(a,b,c)
  %3876 = fmul fast float %3819, %3749
  %3877 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3821, float %3876)  ; FMad(a,b,c)
  %3878 = fmul fast float %3820, %3747
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3748, float %3822, float %3878)  ; FMad(a,b,c)
  %3880 = fmul fast float %3820, %3749
  %3881 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3822, float %3880)  ; FMad(a,b,c)
  %3882 = add i32 %3859, 0
  %3883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3884 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3883, %dx.types.Handle %3862, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = and i32 %3783, 1024
  %3887 = icmp ne i32 %3886, 0
  %3888 = fcmp fast ogt float %3885, 0x3FE0101020000000
  %3889 = uitofp i1 %3888 to float
  %3890 = select i1 %3887, float %3889, float %3885
  %3891 = and i32 %3783, 8192
  %3892 = icmp ne i32 %3891, 0
  %3893 = select i1 %3892, float %3853, float 1.000000e+00
  %3894 = fmul fast float %3791, 2.000000e+00
  %3895 = fadd fast float %3894, -1.000000e+00
  %3896 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3897 = fmul fast float %3896, %3780
  %3898 = fsub fast float %3897, %3780
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3798, 2.000000e+00
  %3901 = fadd fast float %3900, -1.000000e+00
  %3902 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3903 = fmul fast float %3902, %3781
  %3904 = fsub fast float %3903, %3781
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fmul fast float %3810, %3743
  %3907 = fsub fast float %3906, %3743
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fmul fast float %3867, %3893
  %3910 = fmul fast float %3909, %3864
  %3911 = fmul fast float %3910, %3899
  %3912 = fmul fast float %3911, %3890
  %3913 = fmul fast float %3912, %3905
  %3914 = fmul fast float %3913, %3908
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3918 = fsub fast float %3827, %3917
  %3919 = fmul fast float %3918, %3916
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fmul fast float %3914, %3744
  %3922 = fadd fast float %3914, %3744
  %3923 = fmul fast float %3922, %3753
  %3924 = fsub fast float %3923, %3753
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = and i32 %3783, 128
  %3927 = icmp ne i32 %3926, 0
  %3928 = select i1 %3927, float %3925, float %3921
  %3929 = fmul fast float %3928, %3920
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = fcmp fast ugt float %3929, %3931
  br i1 %3932, label %3933, label %3832

; <label>:3933                                    ; preds = %3852
  %3934 = select i1 %3892, float %3929, float 0.000000e+00
  %3935 = fadd fast float %3934, %3708
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  br i1 %3892, label %3832, label %3937

; <label>:3937                                    ; preds = %3933
  %3938 = and i32 %3783, 4
  %3939 = and i32 %3783, 8
  %3940 = add i32 %3739, 0
  %3941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3940, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3941, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = bitcast float %3765 to i32
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = lshr i32 %3948, 8
  %3952 = and i32 %3951, 255
  %3953 = uitofp i32 %3952 to float
  %3954 = fmul fast float %3947, %3950
  %3955 = fadd fast float %3954, %3953
  %3956 = fmul fast float %3955, 0x3F70101000000000
  %3957 = add i32 %3740, 0
  %3958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3958, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = bitcast float %3759 to i32
  %3965 = and i32 %3964, 255
  %3966 = uitofp i32 %3965 to float
  %3967 = lshr i32 %3964, 8
  %3968 = and i32 %3967, 255
  %3969 = uitofp i32 %3968 to float
  %3970 = lshr i32 %3964, 16
  %3971 = and i32 %3970, 255
  %3972 = uitofp i32 %3971 to float
  %3973 = fmul fast float %3972, 0x3F70101000000000
  %3974 = fmul fast float %3960, %3966
  %3975 = fadd fast float %3974, %3969
  %3976 = fmul fast float %3975, 0x3F70101000000000
  %3977 = fadd fast float %3961, -5.000000e-01
  %3978 = fadd fast float %3963, -5.000000e-01
  %3979 = fmul fast float %3977, %3973
  %3980 = fmul fast float %3978, %3973
  %3981 = fadd fast float %3979, 5.000000e-01
  %3982 = fadd fast float %3980, 5.000000e-01
  %3983 = fmul fast float %3944, %3768
  %3984 = fmul fast float %3945, %3769
  %3985 = fmul fast float %3946, %3770
  %3986 = fmul fast float %3981, 2.000000e+00
  %3987 = fadd fast float %3986, -1.000000e+00
  %3988 = fmul fast float %3982, 2.000000e+00
  %3989 = fadd fast float %3988, -1.000000e+00
  %3990 = fadd fast float %3987, %3989
  %3991 = fmul fast float %3990, 5.000000e-01
  %3992 = fsub fast float %3987, %3989
  %3993 = fmul fast float %3992, 5.000000e-01
  %3994 = call float @dx.op.unary.f32(i32 6, float %3991)  ; FAbs(value)
  %3995 = fsub fast float 1.000000e+00, %3994
  %3996 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3997 = fsub fast float %3995, %3996
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3993, float %3997, float %3991, float %3993, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = call float @dx.op.unary.f32(i32 25, float %3998)  ; Rsqrt(value)
  %4000 = fmul fast float %3991, %3999
  %4001 = fmul fast float %3993, %3999
  %4002 = fmul fast float %3999, %3997
  %4003 = fmul fast float %4002, %3733
  %4004 = fmul fast float %4002, %3734
  %4005 = fmul fast float %4002, %3735
  %4006 = fmul fast float %4000, %3756
  %4007 = fmul fast float %4000, %3757
  %4008 = fmul fast float %4000, %3758
  %4009 = fadd fast float %4006, %4003
  %4010 = fadd fast float %4007, %4004
  %4011 = fadd fast float %4008, %4005
  %4012 = fmul fast float %4001, %3762
  %4013 = fmul fast float %4001, %3763
  %4014 = fmul fast float %4001, %3764
  %4015 = fadd fast float %4009, %4012
  %4016 = fadd fast float %4010, %4013
  %4017 = fadd fast float %4011, %4014
  %4018 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4015, float %4016, float %4017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4019 = call float @dx.op.unary.f32(i32 25, float %4018)  ; Rsqrt(value)
  %4020 = fmul fast float %4015, %4019
  %4021 = fmul fast float %4016, %4019
  %4022 = fmul fast float %4017, %4019
  %4023 = icmp ne i32 %3939, 0
  %4024 = select i1 %4023, float 1.000000e+00, float 0.000000e+00
  %4025 = fmul fast float %3929, %4024
  %4026 = and i32 %3783, 1
  %4027 = icmp eq i32 %4026, 0
  br i1 %4027, label %4028, label %4032

; <label>:4028                                    ; preds = %3937
  %4029 = fsub fast float %4020, %3716
  %4030 = fsub fast float %4021, %3717
  %4031 = fsub fast float %4022, %3718
  br label %4032

; <label>:4032                                    ; preds = %4028, %3937
  %4033 = phi float [ %4029, %4028 ], [ %4020, %3937 ]
  %4034 = phi float [ %4030, %4028 ], [ %4021, %3937 ]
  %4035 = phi float [ %4031, %4028 ], [ %4022, %3937 ]
  %4036 = fmul float %4035, %4025
  %4037 = fmul float %4034, %4025
  %4038 = fmul float %4033, %4025
  %4039 = fadd fast float %4038, %3716
  %4040 = fadd fast float %4037, %3717
  %4041 = fadd fast float %4036, %3718
  %4042 = icmp ne i32 %3938, 0
  %4043 = select i1 %4042, float 1.000000e+00, float 0.000000e+00
  %4044 = fmul fast float %3929, %4043
  %4045 = fsub fast float %3983, %3723
  %4046 = fsub fast float %3984, %3724
  %4047 = fsub fast float %3985, %3725
  %4048 = fmul fast float %4045, %4044
  %4049 = fmul fast float %4046, %4044
  %4050 = fmul fast float %4047, %4044
  %4051 = fadd fast float %4048, %3723
  %4052 = fadd fast float %4049, %3724
  %4053 = fadd fast float %4050, %3725
  %4054 = fsub fast float %3956, %3722
  %4055 = fmul fast float %4054, %4044
  %4056 = fadd fast float %4055, %3722
  %4057 = fmul fast float %4044, %3712
  %4058 = fsub fast float %3712, %4057
  %4059 = fmul fast float %4044, %3711
  %4060 = fsub fast float %3711, %4059
  %4061 = fadd fast float %3929, %3721
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fsub fast float %3976, %3720
  %4064 = fmul fast float %4063, %4025
  %4065 = fadd fast float %4064, %3720
  %4066 = fsub fast float %3962, %3719
  %4067 = fmul fast float %4066, %4025
  %4068 = fadd fast float %4067, %3719
  %4069 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4073 = fmul fast float %4072, %4069
  %4074 = fadd fast float %4073, %4071
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = bitcast float %3771 to i32
  %4077 = and i32 %4076, 65535
  %4078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4077)  ; LegacyF16ToF32(value)
  %4079 = lshr i32 %4076, 16
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = fcmp fast oge float %4078, 0.000000e+00
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = select i1 %4081, float %4078, float %4083
  %4085 = fadd fast float %4084, %4080
  %4086 = fsub fast float %4075, %3710
  %4087 = fmul fast float %4086, %3929
  %4088 = fadd fast float %4087, %3710
  %4089 = fmul fast float %4085, %3929
  %4090 = call float @dx.op.binary.f32(i32 35, float %3709, float %4089)  ; FMax(a,b)
  %4091 = and i32 %3783, 16
  %4092 = icmp eq i32 %4091, 0
  br i1 %4092, label %4115, label %4093

; <label>:4093                                    ; preds = %4032
  %4094 = bitcast float %3777 to i32
  %4095 = add i32 %3774, 0
  %4096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4095, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4096, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.ResRet.f32 %4097, 2
  %4101 = and i32 %4094, 65535
  %4102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4101)  ; LegacyF16ToF32(value)
  %4103 = fmul fast float %4098, %3768
  %4104 = fmul fast float %4099, %3769
  %4105 = fmul fast float %4100, %3770
  %4106 = and i32 %3783, 16384
  %4107 = icmp ne i32 %4106, 0
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = select i1 %4107, float %4109, float 1.000000e+00
  %4111 = fmul fast float %4110, %4102
  %4112 = fmul fast float %4103, %4111
  %4113 = fmul fast float %4104, %4111
  %4114 = fmul fast float %4105, %4111
  br label %4115

; <label>:4115                                    ; preds = %4093, %4032
  %4116 = phi float [ %4112, %4093 ], [ 0.000000e+00, %4032 ]
  %4117 = phi float [ %4113, %4093 ], [ 0.000000e+00, %4032 ]
  %4118 = phi float [ %4114, %4093 ], [ 0.000000e+00, %4032 ]
  %4119 = fsub fast float %4116, %3713
  %4120 = fsub fast float %4117, %3714
  %4121 = fsub fast float %4118, %3715
  %4122 = fmul fast float %4119, %3929
  %4123 = fmul fast float %4120, %3929
  %4124 = fmul fast float %4121, %3929
  %4125 = fadd fast float %4122, %3713
  %4126 = fadd fast float %4123, %3714
  %4127 = fadd fast float %4124, %3715
  br label %3832

; <label>:4128                                    ; preds = %3832
  br label %4129

; <label>:4129                                    ; preds = %4128, %3652
  %4130 = phi float [ 0.000000e+00, %3652 ], [ %3833, %4128 ]
  %4131 = phi float [ %3621, %3652 ], [ %3834, %4128 ]
  %4132 = phi float [ %3619, %3652 ], [ %3835, %4128 ]
  %4133 = phi float [ %3618, %3652 ], [ %3836, %4128 ]
  %4134 = phi float [ 0.000000e+00, %3652 ], [ %3837, %4128 ]
  %4135 = phi float [ %3612, %3652 ], [ %3838, %4128 ]
  %4136 = phi float [ %3613, %3652 ], [ %3839, %4128 ]
  %4137 = phi float [ %3614, %3652 ], [ %3840, %4128 ]
  %4138 = phi float [ %3647, %3652 ], [ %3841, %4128 ]
  %4139 = phi float [ %3648, %3652 ], [ %3842, %4128 ]
  %4140 = phi float [ %3649, %3652 ], [ %3843, %4128 ]
  %4141 = phi float [ %3617, %3652 ], [ %3844, %4128 ]
  %4142 = phi float [ %3616, %3652 ], [ %3845, %4128 ]
  %4143 = phi float [ 0.000000e+00, %3652 ], [ %3846, %4128 ]
  %4144 = phi float [ %3615, %3652 ], [ %3847, %4128 ]
  %4145 = phi float [ %3609, %3652 ], [ %3848, %4128 ]
  %4146 = phi float [ %3610, %3652 ], [ %3849, %4128 ]
  %4147 = phi float [ %3611, %3652 ], [ %3850, %4128 ]
  %4148 = call float @dx.op.dot3.f32(i32 55, float %4138, float %4139, float %4140, float %4138, float %4139, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4149 = call float @dx.op.unary.f32(i32 25, float %4148)  ; Rsqrt(value)
  %4150 = fmul fast float %4149, %4138
  %4151 = fmul fast float %4149, %4139
  %4152 = fmul fast float %4149, %4140
  %4153 = fadd fast float %4143, %933
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4150, float %4151, float %4152, float %4150, float %4151, float %4152)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4156, %4150
  %4158 = fmul fast float %4156, %4151
  %4159 = fmul fast float %4156, %4152
  br label %4160

; <label>:4160                                    ; preds = %4129, %3606
  %4161 = phi float [ %4157, %4129 ], [ %3647, %3606 ]
  %4162 = phi float [ %4158, %4129 ], [ %3648, %3606 ]
  %4163 = phi float [ %4159, %4129 ], [ %3649, %3606 ]
  %4164 = phi float [ %4145, %4129 ], [ %3609, %3606 ]
  %4165 = phi float [ %4146, %4129 ], [ %3610, %3606 ]
  %4166 = phi float [ %4147, %4129 ], [ %3611, %3606 ]
  %4167 = phi float [ %4135, %4129 ], [ %3612, %3606 ]
  %4168 = phi float [ %4136, %4129 ], [ %3613, %3606 ]
  %4169 = phi float [ %4137, %4129 ], [ %3614, %3606 ]
  %4170 = phi float [ %4144, %4129 ], [ %3615, %3606 ]
  %4171 = phi float [ %4154, %4129 ], [ %933, %3606 ]
  %4172 = phi float [ %4142, %4129 ], [ %3616, %3606 ]
  %4173 = phi float [ %4141, %4129 ], [ %3617, %3606 ]
  %4174 = phi float [ %4134, %4129 ], [ 0.000000e+00, %3606 ]
  %4175 = phi float [ %4133, %4129 ], [ %3618, %3606 ]
  %4176 = phi float [ %4130, %4129 ], [ 0.000000e+00, %3606 ]
  %4177 = phi float [ %4131, %4129 ], [ %3621, %3606 ]
  %4178 = phi float [ %4132, %4129 ], [ %3619, %3606 ]
  %4179 = fadd fast float %4170, 0xBFB99999A0000000
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fmul fast float %4180, 0x3FF1C71C80000000
  %4182 = call float @dx.op.binary.f32(i32 36, float %4170, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4183 = fsub fast float 1.000000e+00, %4181
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fmul fast float %4184, %4164
  %4186 = fmul fast float %4184, %4165
  %4187 = fmul fast float %4184, %4166
  %4188 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4189 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = fmul fast float %4181, %4164
  %4192 = fmul fast float %4181, %4165
  %4193 = fmul fast float %4181, %4166
  %4194 = fadd fast float %4191, %4182
  %4195 = fadd fast float %4192, %4182
  %4196 = fadd fast float %4193, %4182
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4199 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4200 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.i32 %4201, 3
  %4203 = and i32 %4202, 8
  %4204 = icmp ne i32 %4203, 0
  %4205 = call float @dx.op.binary.f32(i32 35, float %4188, float %4164)  ; FMax(a,b)
  %4206 = call float @dx.op.binary.f32(i32 35, float %4189, float %4164)  ; FMax(a,b)
  %4207 = call float @dx.op.binary.f32(i32 35, float %4190, float %4164)  ; FMax(a,b)
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4188, float %4189, float %4190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = select i1 %185, float %4164, float %4188
  %4210 = select i1 %185, float %4208, float %4189
  %4211 = select i1 %185, float 1.000000e+00, float %4190
  %4212 = select i1 %4204, float %4205, float %4209
  %4213 = select i1 %4204, float %4206, float %4210
  %4214 = select i1 %4204, float %4207, float %4211
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4219 = fadd fast float %4216, %143
  %4220 = fadd fast float %4217, %144
  %4221 = fadd fast float %4218, %145
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4225 = fsub fast float %4219, %4223
  %4226 = fsub fast float %4220, %4224
  %4227 = fmul fast float %4225, %4225
  %4228 = fmul fast float %4226, %4226
  %4229 = fadd fast float %4227, %4228
  %4230 = call float @dx.op.unary.f32(i32 24, float %4229)  ; Sqrt(value)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4232 = fcmp fast olt float %4230, %4231
  br i1 %4232, label %4233, label %4300

; <label>:4233                                    ; preds = %4160
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 0
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.CBufRet.f32 %4234, 1
  %4241 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4242 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4234, 3
  %4244 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4245 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4246 = fadd fast float %4243, %4219
  %4247 = fadd fast float %4244, %4220
  %4248 = fadd fast float %4245, %4221
  %4249 = fmul fast float %4246, %4235
  %4250 = call float @dx.op.tertiary.f32(i32 46, float %4247, float %4237, float %4249)  ; FMad(a,b,c)
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4248, float %4239, float %4250)  ; FMad(a,b,c)
  %4252 = fmul fast float %4246, %4240
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4247, float %4241, float %4252)  ; FMad(a,b,c)
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4248, float %4242, float %4253)  ; FMad(a,b,c)
  %4255 = fsub fast float %4251, %4243
  %4256 = fsub fast float %4254, %4244
  %4257 = fsub fast float %4255, %4223
  %4258 = fadd fast float %4257, %4231
  %4259 = fsub fast float %4256, %4224
  %4260 = fadd fast float %4259, %4231
  %4261 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4262 = fmul fast float %4258, %4261
  %4263 = fmul fast float %4260, %4261
  %4264 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4266 = fsub fast float 1.000000e+00, %4264
  %4267 = fsub fast float 1.000000e+00, %4265
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4266, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = fcmp fast ugt float %4269, 0.000000e+00
  br i1 %4270, label %4271, label %4574

; <label>:4271                                    ; preds = %4233
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4274 = fmul fast float %4273, %4269
  %4275 = extractvalue %dx.types.CBufRet.f32 %4272, 3
  %4276 = fadd fast float %4275, %4274
  %4277 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4278 = fadd fast float %4276, %4245
  %4279 = fmul fast float %4251, %4239
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4242, float %4279)  ; FMad(a,b,c)
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4277, float %4280)  ; FMad(a,b,c)
  %4282 = fsub fast float %4281, %4245
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 2
  %4285 = fsub fast float %4282, %4284
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4266, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4266, float %4267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = fadd fast float %4291, %4287
  %4295 = fmul fast float %4294, 0x3F847AE140000000
  %4296 = fadd fast float %4292, %4288
  %4297 = fmul fast float %4296, 0x3F847AE140000000
  %4298 = fadd fast float %4293, %4289
  %4299 = fmul fast float %4298, 0x3F847AE140000000
  br label %4574

; <label>:4300                                    ; preds = %4160
  %4301 = and i32 %161, 1
  %4302 = icmp eq i32 %4301, 0
  br i1 %4302, label %4574, label %4303

; <label>:4303                                    ; preds = %4300
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4312 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4313 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4314 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4315 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4316 = fadd fast float %4313, %4219
  %4317 = fadd fast float %4314, %4220
  %4318 = fadd fast float %4315, %4221
  %4319 = fmul fast float %4316, %4305
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4307, float %4319)  ; FMad(a,b,c)
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4309, float %4320)  ; FMad(a,b,c)
  %4322 = fmul fast float %4316, %4310
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4311, float %4322)  ; FMad(a,b,c)
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4312, float %4323)  ; FMad(a,b,c)
  %4325 = fsub fast float %4321, %4313
  %4326 = fsub fast float %4324, %4314
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4331 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.i32 %4334, 0
  %4336 = extractvalue %dx.types.CBufRet.i32 %4334, 1
  %4337 = udiv i32 %4336, %4335
  %4338 = fsub fast float %4325, %4328
  %4339 = fsub fast float %4326, %4329
  %4340 = call float @dx.op.binary.f32(i32 35, float %4338, float 0.000000e+00)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 35, float %4339, float 0.000000e+00)  ; FMax(a,b)
  %4342 = call float @dx.op.binary.f32(i32 36, float %4340, float %4330)  ; FMin(a,b)
  %4343 = call float @dx.op.binary.f32(i32 36, float %4341, float %4331)  ; FMin(a,b)
  %4344 = add i32 %4335, -1
  %4345 = add i32 %4337, -1
  %4346 = fmul fast float %4342, %4333
  %4347 = fmul fast float %4343, %4333
  %4348 = fptoui float %4346 to i32
  %4349 = fptoui float %4347 to i32
  %4350 = call i32 @dx.op.binary.i32(i32 40, i32 %4348, i32 %4344)  ; UMin(a,b)
  %4351 = call i32 @dx.op.binary.i32(i32 40, i32 %4349, i32 %4345)  ; UMin(a,b)
  %4352 = mul i32 %4351, %4335
  %4353 = add i32 %4352, %4350
  %4354 = shl i32 %4353, 2
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = icmp eq i32 %4356, -1
  br i1 %4357, label %4574, label %4358

; <label>:4358                                    ; preds = %4303
  %4359 = mul i32 %4356, 148
  %4360 = add i32 %4359, 4
  %4361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = add i32 %4359, 8
  %4364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = add i32 %4359, 36
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = add i32 %4359, 60
  %4370 = add i32 %4359, 92
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = add i32 %4359, 116
  %4374 = fsub fast float %4325, %4362
  %4375 = fsub fast float %4326, %4365
  %4376 = fmul fast float %4333, %4374
  %4377 = fmul fast float %4333, %4375
  %4378 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4379 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 2
  %4383 = call float @dx.op.unary.f32(i32 83, float %4378)  ; DerivCoarseX(value)
  %4384 = call float @dx.op.unary.f32(i32 83, float %4380)  ; DerivCoarseX(value)
  %4385 = call float @dx.op.unary.f32(i32 84, float %4378)  ; DerivCoarseY(value)
  %4386 = call float @dx.op.unary.f32(i32 84, float %4380)  ; DerivCoarseY(value)
  %4387 = fmul fast float %4383, %4382
  %4388 = fmul fast float %4384, %4382
  %4389 = fmul fast float %4385, %4382
  %4390 = fmul fast float %4386, %4382
  %4391 = call float @dx.op.dot2.f32(i32 54, float %4389, float %4390, float %4389, float %4390)  ; Dot2(ax,ay,bx,by)
  %4392 = call float @dx.op.dot2.f32(i32 54, float %4387, float %4388, float %4387, float %4388)  ; Dot2(ax,ay,bx,by)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float %4391)  ; FMax(a,b)
  %4394 = call float @dx.op.unary.f32(i32 23, float %4393)  ; Log(value)
  %4395 = fmul fast float %4394, 5.000000e-01
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4398 = fadd fast float %4397, %4395
  %4399 = call float @dx.op.binary.f32(i32 35, float %4398, float 0.000000e+00)  ; FMax(a,b)
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4402 = fadd fast float %4401, %4399
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4405 = fadd fast float %4402, %4404
  %4406 = add i32 %4372, 0
  %4407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4408 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4407, i32 0)  ; GetDimensions(handle,mipLevel)
  %4409 = extractvalue %dx.types.Dimensions %4408, 0
  %4410 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4409)  ; FirstbitLo(value)
  %4411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.i32 %4411, 1
  %4413 = sub nsw i32 %4412, %4410
  %4414 = sitofp i32 %4413 to float
  %4415 = fsub fast float %4405, %4414
  %4416 = call float @dx.op.binary.f32(i32 35, float %4415, float 0.000000e+00)  ; FMax(a,b)
  %4417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4407, %dx.types.Handle %37, float %4378, float %4380, float %4368, float undef, i32 0, i32 0, i32 undef, float %4416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = fcmp ule float %4418, 0x3FE0101020000000
  %4420 = extractvalue %dx.types.CBufRet.i32 %4411, 0
  %4421 = and i32 %4420, 128
  %4422 = icmp ne i32 %4421, 0
  %4423 = and i1 %4419, %4422
  br i1 %4423, label %4574, label %4424

; <label>:4424                                    ; preds = %4358
  %4425 = add i32 %4359, 20
  %4426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = add i32 %4359, 24
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = add i32 %4359, 40
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = add i32 %4359, 96
  %4435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.i32 %4435, 0
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4439 = fmul fast float %4438, %4378
  %4440 = fmul fast float %4438, %4380
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = fadd fast float %4439, %4441
  %4443 = fadd fast float %4440, %4441
  %4444 = add i32 %4436, 0
  %4445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4446 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4445, i32 0)  ; GetDimensions(handle,mipLevel)
  %4447 = extractvalue %dx.types.Dimensions %4446, 0
  %4448 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4447)  ; FirstbitLo(value)
  %4449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.i32 %4449, 1
  %4451 = sub nsw i32 %4450, %4448
  %4452 = sitofp i32 %4451 to float
  %4453 = fsub fast float %4402, %4452
  %4454 = call float @dx.op.binary.f32(i32 35, float %4453, float 0.000000e+00)  ; FMax(a,b)
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4445, %dx.types.Handle %37, float %4442, float %4443, float %4433, float undef, i32 0, i32 0, i32 undef, float %4454)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = fmul fast float %4456, %4427
  %4458 = fadd fast float %4457, %4430
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4467 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4468 = fadd fast float %4464, %4325
  %4469 = fadd fast float %4466, %4326
  %4470 = fadd fast float %4458, %4467
  %4471 = fmul fast float %4468, %4460
  %4472 = call float @dx.op.tertiary.f32(i32 46, float %4469, float %4461, float %4471)  ; FMad(a,b,c)
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4462, float %4472)  ; FMad(a,b,c)
  %4474 = fsub fast float %4473, %4467
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4477 = fsub fast float %4474, %4476
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 0
  %4480 = call i32 @dx.op.binary.i32(i32 40, i32 %4356, i32 %4479)  ; UMin(a,b)
  %4481 = mul i32 %4480, 36
  %4482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4481, i32 undef)  ; BufferLoad(srv,index,wot)
  %4483 = extractvalue %dx.types.ResRet.i32 %4482, 0
  %4484 = add i32 %4481, 4
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 0
  %4487 = fmul fast float %4486, %4378
  %4488 = fmul fast float %4486, %4380
  %4489 = extractvalue %dx.types.CBufRet.f32 %4485, 1
  %4490 = fadd fast float %4487, %4489
  %4491 = fadd fast float %4488, %4489
  %4492 = icmp eq i32 %4483, 0
  br i1 %4492, label %4561, label %4493

; <label>:4493                                    ; preds = %4424
  br label %4494

; <label>:4494                                    ; preds = %4551, %4493
  %4495 = phi float [ %4552, %4551 ], [ 0.000000e+00, %4493 ]
  %4496 = phi float [ %4553, %4551 ], [ 0.000000e+00, %4493 ]
  %4497 = phi float [ %4554, %4551 ], [ 0.000000e+00, %4493 ]
  %4498 = phi float [ %4555, %4551 ], [ 0.000000e+00, %4493 ]
  %4499 = phi float [ %4556, %4551 ], [ 0.000000e+00, %4493 ]
  %4500 = phi float [ %4557, %4551 ], [ 0.000000e+00, %4493 ]
  %4501 = phi i32 [ %4558, %4551 ], [ 0, %4493 ]
  %4502 = shl i32 %4501, 2
  %4503 = add i32 %4369, %4502
  %4504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = add i32 %4373, %4502
  %4507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.i32 %4507, 0
  %4509 = add i32 %4508, 0
  %4510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4509, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4511 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4510, i32 0)  ; GetDimensions(handle,mipLevel)
  %4512 = extractvalue %dx.types.Dimensions %4511, 0
  %4513 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4512)  ; FirstbitLo(value)
  %4514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.i32 %4514, 1
  %4516 = sub nsw i32 %4515, %4513
  %4517 = sitofp i32 %4516 to float
  %4518 = fsub fast float %4402, %4517
  %4519 = call float @dx.op.binary.f32(i32 35, float %4518, float 0.000000e+00)  ; FMax(a,b)
  %4520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4510, %dx.types.Handle %37, float %4490, float %4491, float %4505, float undef, i32 0, i32 0, i32 undef, float %4519)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4521 = extractvalue %dx.types.ResRet.f32 %4520, 0
  %4522 = fcmp fast ogt float %4521, 0.000000e+00
  br i1 %4522, label %4523, label %4551

; <label>:4523                                    ; preds = %4494
  %4524 = add i32 %4484, %4502
  %4525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = and i32 %4526, 32767
  %4528 = mul nuw nsw i32 %4527, 928
  %4529 = add nuw nsw i32 %4528, 48
  %4530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = add nuw nsw i32 %4528, 60
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = fmul fast float %4531, %4521
  %4540 = fmul fast float %4532, %4521
  %4541 = fmul fast float %4533, %4521
  %4542 = fadd fast float %4539, %4495
  %4543 = fadd fast float %4540, %4496
  %4544 = fadd fast float %4541, %4497
  %4545 = fmul fast float %4536, %4521
  %4546 = fmul fast float %4537, %4521
  %4547 = fmul fast float %4538, %4521
  %4548 = fadd fast float %4545, %4498
  %4549 = fadd fast float %4546, %4499
  %4550 = fadd fast float %4547, %4500
  br label %4551

; <label>:4551                                    ; preds = %4523, %4494
  %4552 = phi float [ %4542, %4523 ], [ %4495, %4494 ]
  %4553 = phi float [ %4543, %4523 ], [ %4496, %4494 ]
  %4554 = phi float [ %4544, %4523 ], [ %4497, %4494 ]
  %4555 = phi float [ %4548, %4523 ], [ %4498, %4494 ]
  %4556 = phi float [ %4549, %4523 ], [ %4499, %4494 ]
  %4557 = phi float [ %4550, %4523 ], [ %4500, %4494 ]
  %4558 = add nuw i32 %4501, 1
  %4559 = icmp eq i32 %4558, %4483
  br i1 %4559, label %4560, label %4494

; <label>:4560                                    ; preds = %4551
  br label %4561

; <label>:4561                                    ; preds = %4560, %4424
  %4562 = phi float [ 0.000000e+00, %4424 ], [ %4552, %4560 ]
  %4563 = phi float [ 0.000000e+00, %4424 ], [ %4553, %4560 ]
  %4564 = phi float [ 0.000000e+00, %4424 ], [ %4554, %4560 ]
  %4565 = phi float [ 0.000000e+00, %4424 ], [ %4555, %4560 ]
  %4566 = phi float [ 0.000000e+00, %4424 ], [ %4556, %4560 ]
  %4567 = phi float [ 0.000000e+00, %4424 ], [ %4557, %4560 ]
  %4568 = fadd fast float %4565, %4562
  %4569 = fmul fast float %4568, 0x3F847AE140000000
  %4570 = fadd fast float %4566, %4563
  %4571 = fmul fast float %4570, 0x3F847AE140000000
  %4572 = fadd fast float %4567, %4564
  %4573 = fmul fast float %4572, 0x3F847AE140000000
  br label %4574

; <label>:4574                                    ; preds = %4561, %4358, %4303, %4300, %4271, %4233
  %4575 = phi float [ %4285, %4271 ], [ -1.310720e+05, %4233 ], [ %4477, %4561 ], [ -1.310720e+05, %4303 ], [ -1.310720e+05, %4358 ], [ -1.310720e+05, %4300 ]
  %4576 = phi float [ %4295, %4271 ], [ 0.000000e+00, %4233 ], [ %4569, %4561 ], [ 0.000000e+00, %4303 ], [ 0.000000e+00, %4358 ], [ 0.000000e+00, %4300 ]
  %4577 = phi float [ %4297, %4271 ], [ 0.000000e+00, %4233 ], [ %4571, %4561 ], [ 0.000000e+00, %4303 ], [ 0.000000e+00, %4358 ], [ 0.000000e+00, %4300 ]
  %4578 = phi float [ %4299, %4271 ], [ 0.000000e+00, %4233 ], [ %4573, %4561 ], [ 0.000000e+00, %4303 ], [ 0.000000e+00, %4358 ], [ 0.000000e+00, %4300 ]
  %4579 = phi i1 [ true, %4271 ], [ false, %4233 ], [ true, %4561 ], [ false, %4303 ], [ false, %4358 ], [ false, %4300 ]
  %4580 = and i32 %161, 3
  %4581 = icmp eq i32 %4580, 1
  %4582 = select i1 %4581, float 1.000000e+00, float 0.000000e+00
  %4583 = fsub fast float %4575, %145
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = select i1 %4579, float %4584, float 1.000000e+00
  %4586 = fmul fast float %4585, %4582
  %4587 = icmp eq i32 %4580, 3
  %4588 = select i1 %4587, float 1.000000e+00, float %4586
  %4589 = call float @dx.op.binary.f32(i32 35, float %4176, float %4588)  ; FMax(a,b)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fcmp fast une float %4590, 0.000000e+00
  %4592 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.unary.f32(i32 25, float %4592)  ; Rsqrt(value)
  br i1 %4591, label %4601, label %4594

; <label>:4594                                    ; preds = %4574
  %4595 = fmul fast float %4593, %143
  %4596 = fmul fast float %4593, %144
  %4597 = fmul fast float %4593, %145
  %4598 = fsub fast float -0.000000e+00, %4595
  %4599 = fsub fast float -0.000000e+00, %4596
  %4600 = fsub fast float -0.000000e+00, %4597
  br label %4769

; <label>:4601                                    ; preds = %4574
  %4602 = fmul fast float %143, %4593
  %4603 = fsub fast float -0.000000e+00, %4602
  %4604 = fmul fast float %144, %4593
  %4605 = fsub fast float -0.000000e+00, %4604
  %4606 = fmul fast float %145, %4593
  %4607 = fsub fast float -0.000000e+00, %4606
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4605, float %4607, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = fmul fast float %4590, 2.500000e+00
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = fmul fast float %4590, 0x4013FFFFE0000000
  %4612 = fadd fast float %4611, 0xBFFFFFFFE0000000
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fmul fast float %4590, 0x4004000020000000
  %4615 = fadd fast float %4614, 0xBFF8000040000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4618 = fmul fast float %4179, 1.000000e+01
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4619, 2.000000e+00
  %4621 = fsub fast float 3.000000e+00, %4620
  %4622 = fmul fast float %4619, %4619
  %4623 = fmul fast float %4622, %4621
  %4624 = fsub fast float 1.000000e+00, %4623
  %4625 = fsub fast float 0x3FE3333340000000, %4200
  %4626 = fmul fast float %4625, 0x400AAAAAA0000000
  %4627 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4628 = fmul fast float %4624, %4627
  %4629 = fmul fast float %4212, 0x3FEA2B8620000000
  %4630 = fmul fast float %4213, 0x3FEA2B8620000000
  %4631 = fmul fast float %4214, 0x3FEA2B8620000000
  %4632 = fadd fast float %4629, 0x3FC81DFBA0000000
  %4633 = fmul fast float %4632, %4212
  %4634 = fadd fast float %4633, 0x3F910E6020000000
  %4635 = fadd fast float %4630, 0x3FC81DFBA0000000
  %4636 = fmul fast float %4635, %4213
  %4637 = fadd fast float %4636, 0x3F910E6020000000
  %4638 = fadd fast float %4631, 0x3FC81DFBA0000000
  %4639 = fmul fast float %4638, %4214
  %4640 = fadd fast float %4639, 0x3F910E6020000000
  %4641 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = fsub fast float %4641, %4212
  %4645 = fsub fast float %4642, %4213
  %4646 = fsub fast float %4643, %4214
  %4647 = fmul fast float %4644, %4617
  %4648 = fmul fast float %4647, %4628
  %4649 = fmul fast float %4645, %4617
  %4650 = fmul fast float %4649, %4628
  %4651 = fmul fast float %4646, %4617
  %4652 = fmul fast float %4651, %4628
  %4653 = fadd fast float %4648, %4212
  %4654 = fadd fast float %4650, %4213
  %4655 = fadd fast float %4652, %4214
  %4656 = fmul fast float %4173, %4173
  %4657 = fmul fast float %4656, %4656
  %4658 = fadd fast float %4613, 1.000000e+00
  %4659 = fsub fast float %4658, %4628
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fsub fast float 1.000000e+00, %4657
  %4664 = call float @dx.op.binary.f32(i32 36, float %4660, float %4663)  ; FMin(a,b)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4664, float %4665)  ; FMax(a,b)
  %4667 = fadd fast float %4662, 0xBFE4CCCCC0000000
  %4668 = fmul fast float %4667, 0x4006DB6DA0000000
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fmul fast float %4669, 2.000000e+00
  %4671 = fsub fast float 3.000000e+00, %4670
  %4672 = bitcast float %4197 to i32
  %4673 = ashr i32 %4672, 1
  %4674 = add nsw i32 %4673, 532487669
  %4675 = bitcast i32 %4674 to float
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fmul fast float %4679, 2.000000e+00
  %4681 = bitcast float %4198 to i32
  %4682 = ashr i32 %4681, 1
  %4683 = add nsw i32 %4682, 532487669
  %4684 = bitcast i32 %4683 to float
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, 2.000000e+00
  %4690 = bitcast float %4199 to i32
  %4691 = ashr i32 %4690, 1
  %4692 = add nsw i32 %4691, 532487669
  %4693 = bitcast i32 %4692 to float
  %4694 = fsub fast float 1.000000e+00, %4693
  %4695 = bitcast float %4694 to i32
  %4696 = sub nsw i32 2129859010, %4695
  %4697 = bitcast i32 %4696 to float
  %4698 = fmul fast float %4697, 2.000000e+00
  %4699 = fsub fast float 0x4002A9FBE0000000, %4680
  %4700 = fadd fast float %4680, 0x3FD54FDF00000000
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, %4699
  %4705 = fmul fast float %4704, %4704
  %4706 = fsub fast float 0x4002A9FBE0000000, %4689
  %4707 = fadd fast float %4689, 0x3FD54FDF00000000
  %4708 = bitcast float %4707 to i32
  %4709 = sub nsw i32 2129859010, %4708
  %4710 = bitcast i32 %4709 to float
  %4711 = fmul fast float %4710, %4706
  %4712 = fmul fast float %4711, %4711
  %4713 = fsub fast float 0x4002A9FBE0000000, %4698
  %4714 = fadd fast float %4698, 0x3FD54FDF00000000
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4718, %4718
  %4720 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4705)  ; FMax(a,b)
  %4721 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4712)  ; FMax(a,b)
  %4722 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4719)  ; FMax(a,b)
  %4723 = fsub fast float 1.000000e+00, %4608
  %4724 = fadd fast float %4723, %4624
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fsub fast float 1.000000e+00, %4588
  %4727 = fmul fast float %4666, %4726
  %4728 = fmul fast float %4669, %4669
  %4729 = fmul fast float %4728, %4727
  %4730 = fmul fast float %4729, %4671
  %4731 = fmul fast float %4726, 0xBFE99999A0000000
  %4732 = fmul fast float %4731, %4617
  %4733 = fmul fast float %4732, %4628
  %4734 = fadd fast float %4733, 1.000000e+00
  %4735 = fadd fast float %4200, -1.000000e+00
  %4736 = fmul fast float %4734, %4735
  %4737 = fadd fast float %4736, 1.000000e+00
  %4738 = fsub fast float %4720, %4197
  %4739 = fsub fast float %4721, %4198
  %4740 = fsub fast float %4722, %4199
  %4741 = fmul fast float %4730, %4738
  %4742 = fmul fast float %4730, %4739
  %4743 = fmul fast float %4730, %4740
  %4744 = fadd fast float %4741, %4197
  %4745 = fadd fast float %4742, %4198
  %4746 = fadd fast float %4743, %4199
  %4747 = fsub fast float %87, %4161
  %4748 = fsub fast float %88, %4162
  %4749 = fsub fast float %89, %4163
  %4750 = fmul fast float %4730, %4747
  %4751 = fmul fast float %4730, %4748
  %4752 = fmul fast float %4730, %4749
  %4753 = fadd fast float %4750, %4161
  %4754 = fadd fast float %4751, %4162
  %4755 = fadd fast float %4752, %4163
  %4756 = fmul fast float %4730, %4725
  %4757 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = fmul fast float %4756, %4758
  %4760 = fadd fast float %4759, %4757
  %4761 = fsub fast float 1.000000e+00, %4173
  %4762 = fmul fast float %4730, %4761
  %4763 = fadd fast float %4762, %4173
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = call float @dx.op.unary.f32(i32 25, float %4764)  ; Rsqrt(value)
  %4766 = fmul fast float %4753, %4765
  %4767 = fmul fast float %4754, %4765
  %4768 = fmul fast float %4755, %4765
  br label %4769

; <label>:4769                                    ; preds = %4601, %4594
  %4770 = phi float [ %4600, %4594 ], [ %4607, %4601 ]
  %4771 = phi float [ %4599, %4594 ], [ %4605, %4601 ]
  %4772 = phi float [ %4598, %4594 ], [ %4603, %4601 ]
  %4773 = phi float [ %4597, %4594 ], [ %4606, %4601 ]
  %4774 = phi float [ %4596, %4594 ], [ %4604, %4601 ]
  %4775 = phi float [ %4595, %4594 ], [ %4602, %4601 ]
  %4776 = phi float [ %4212, %4594 ], [ %4653, %4601 ]
  %4777 = phi float [ %4213, %4594 ], [ %4654, %4601 ]
  %4778 = phi float [ %4214, %4594 ], [ %4655, %4601 ]
  %4779 = phi float [ %4161, %4594 ], [ %4766, %4601 ]
  %4780 = phi float [ %4162, %4594 ], [ %4767, %4601 ]
  %4781 = phi float [ %4163, %4594 ], [ %4768, %4601 ]
  %4782 = phi float [ %4197, %4594 ], [ %4744, %4601 ]
  %4783 = phi float [ %4198, %4594 ], [ %4745, %4601 ]
  %4784 = phi float [ %4199, %4594 ], [ %4746, %4601 ]
  %4785 = phi float [ %4200, %4594 ], [ %4760, %4601 ]
  %4786 = phi float [ %4173, %4594 ], [ %4763, %4601 ]
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4790 = fmul fast float %4788, %80
  %4791 = fmul fast float %4789, %81
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4790, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = fmul fast float %4796, %4794
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fadd fast float %4798, -1.000000e+00
  %4800 = fmul fast float %4799, %4793
  %4801 = fadd fast float %4800, 1.000000e+00
  %4802 = select i1 %185, float 0.000000e+00, float %4784
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4772, float %4771, float %4770)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4774, float %4773, float %4779, float %4780, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = fmul fast float %4805, 2.000000e+00
  %4807 = fmul fast float %4806, %4779
  %4808 = fmul fast float %4806, %4780
  %4809 = fmul fast float %4806, %4781
  %4810 = fsub fast float %4775, %4807
  %4811 = fsub fast float %4774, %4808
  %4812 = fsub fast float %4773, %4809
  %4813 = call float @dx.op.binary.f32(i32 36, float %4786, float %4801)  ; FMin(a,b)
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = bitcast float %4814 to i32
  %4816 = ashr i32 %4815, 1
  %4817 = add nsw i32 %4816, 532487669
  %4818 = bitcast i32 %4817 to float
  %4819 = fsub fast float 1.000000e+00, %4785
  %4820 = call float @dx.op.binary.f32(i32 35, float %4819, float 0x3F847AE140000000)  ; FMax(a,b)
  %4821 = fmul fast float %4820, %4820
  %4822 = fmul fast float %4821, %4821
  %4823 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4818, float %4822, float %4823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = fsub fast float 1.000000e+00, %4786
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fsub fast float 1.000000e+00, %57
  %4831 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4831, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4833 = fdiv fast float %4830, %4832
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fmul fast float %4835, 5.000000e-01
  %4837 = fadd fast float %4836, 5.000000e-01
  %4838 = fmul fast float %4837, %57
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fmul fast float %4840, %4833
  %4842 = fadd fast float %4838, %4841
  %4843 = fsub fast float 5.000000e-01, %4836
  %4844 = fmul fast float %4843, %4776
  %4845 = fmul fast float %4843, %4777
  %4846 = fmul fast float %4843, %4778
  %4847 = fadd fast float %4842, %4844
  %4848 = fadd fast float %4842, %4845
  %4849 = fadd fast float %4842, %4846
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = fmul fast float %4851, 5.000000e-01
  %4853 = fadd fast float %4852, 5.000000e-01
  %4854 = fmul fast float %4853, %57
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4856, %4833
  %4858 = fadd fast float %4854, %4857
  %4859 = fsub fast float 5.000000e-01, %4852
  %4860 = fmul fast float %4859, %4776
  %4861 = fmul fast float %4859, %4777
  %4862 = fmul fast float %4859, %4778
  %4863 = fadd fast float %4858, %4860
  %4864 = fadd fast float %4858, %4861
  %4865 = fadd fast float %4858, %4862
  %4866 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = call float @dx.op.binary.f32(i32 36, float %4776, float %4868)  ; FMin(a,b)
  %4870 = fmul fast float %4869, %4814
  %4871 = fsub fast float 1.000000e+00, %4870
  %4872 = bitcast float %4871 to i32
  %4873 = sub nsw i32 2129859010, %4872
  %4874 = bitcast i32 %4873 to float
  %4875 = call float @dx.op.binary.f32(i32 36, float %4777, float %4868)  ; FMin(a,b)
  %4876 = fmul fast float %4875, %4814
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = call float @dx.op.binary.f32(i32 36, float %4778, float %4868)  ; FMin(a,b)
  %4882 = fmul fast float %4881, %4814
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = bitcast float %4883 to i32
  %4885 = sub nsw i32 2129859010, %4884
  %4886 = bitcast i32 %4885 to float
  %4887 = fmul fast float %4813, %58
  %4888 = fmul fast float %4887, %4847
  %4889 = fmul fast float %4888, %4874
  %4890 = fmul fast float %4813, %59
  %4891 = fmul fast float %4890, %4848
  %4892 = fmul fast float %4891, %4880
  %4893 = fmul fast float %4813, %60
  %4894 = fmul fast float %4893, %4849
  %4895 = fmul fast float %4894, %4886
  %4896 = call float @dx.op.binary.f32(i32 36, float %4782, float %4868)  ; FMin(a,b)
  %4897 = fmul fast float %4896, %4814
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = call float @dx.op.binary.f32(i32 36, float %4783, float %4868)  ; FMin(a,b)
  %4903 = fmul fast float %4902, %4814
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = call float @dx.op.binary.f32(i32 36, float %4802, float %4868)  ; FMin(a,b)
  %4909 = fmul fast float %4908, %4814
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = bitcast float %4910 to i32
  %4912 = sub nsw i32 2129859010, %4911
  %4913 = bitcast i32 %4912 to float
  %4914 = fmul fast float %4887, %4863
  %4915 = fmul fast float %4914, %4901
  %4916 = fmul fast float %4890, %4864
  %4917 = fmul fast float %4916, %4907
  %4918 = fmul fast float %4893, %4865
  %4919 = fmul fast float %4918, %4913
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4892, float %4895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = select i1 %185, float 0.000000e+00, float %4889
  %4922 = select i1 %185, float %4920, float %4892
  %4923 = select i1 %185, float 0.000000e+00, float %4895
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4917, float %4919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = select i1 %185, float 0.000000e+00, float %4915
  %4926 = select i1 %185, float %4924, float %4917
  %4927 = select i1 %185, float 0.000000e+00, float %4919
  %4928 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4929 = fmul fast float %4928, %4921
  %4930 = fmul fast float %4928, %4922
  %4931 = fmul fast float %4923, %4928
  %4932 = fmul fast float %4804, 9.843750e-01
  %4933 = fmul fast float %4785, 9.843750e-01
  %4934 = fadd fast float %4932, 7.812500e-03
  %4935 = fadd fast float %4933, 7.812500e-03
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4934, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 3
  %4939 = fmul fast float %4937, %4782
  %4940 = fmul fast float %4937, %4783
  %4941 = fmul fast float %4937, %4802
  %4942 = fadd fast float %4939, %4938
  %4943 = fadd fast float %4940, %4938
  %4944 = fadd fast float %4941, %4938
  %4945 = fcmp fast ogt float %4174, 0.000000e+00
  br i1 %4945, label %4946, label %4972

; <label>:4946                                    ; preds = %4769
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4174, float %4804, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fadd fast float %4949, -5.000000e-01
  %4953 = fadd fast float %4950, -5.000000e-01
  %4954 = fsub fast float 1.000000e+00, %4782
  %4955 = fsub fast float 1.000000e+00, %4783
  %4956 = fsub fast float 1.000000e+00, %4802
  %4957 = fmul fast float %4782, 4.000000e+00
  %4958 = fmul fast float %4957, %4954
  %4959 = fmul fast float %4958, %4951
  %4960 = fmul fast float %4783, 4.000000e+00
  %4961 = fmul fast float %4960, %4955
  %4962 = fmul fast float %4961, %4952
  %4963 = fmul fast float %4802, 4.000000e+00
  %4964 = fmul fast float %4963, %4956
  %4965 = fmul fast float %4964, %4953
  %4966 = fadd fast float %4959, %4942
  %4967 = fadd fast float %4962, %4943
  %4968 = fadd fast float %4965, %4944
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  br label %4972

; <label>:4972                                    ; preds = %4946, %4769
  %4973 = phi float [ %4969, %4946 ], [ %4942, %4769 ]
  %4974 = phi float [ %4970, %4946 ], [ %4943, %4769 ]
  %4975 = phi float [ %4971, %4946 ], [ %4944, %4769 ]
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float %4975)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4973, float %4976)  ; FMax(a,b)
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4977, %4785
  %4980 = fadd fast float %4979, %4785
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4986 = fmul fast float %4980, %4982
  %4987 = fadd fast float %4986, %4983
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4984, %4980
  %4990 = fadd fast float %4989, %4985
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fsub fast float 1.000000e+00, %4825
  %4993 = fadd fast float %4992, %4991
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fcmp fast olt float %4994, 1.000000e+00
  br i1 %4995, label %4996, label %5851

; <label>:4996                                    ; preds = %4972
  %4997 = fcmp fast olt float %4988, 1.000000e+00
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = fcmp fast ogt float %4999, 0.000000e+00
  %5001 = or i1 %4997, %5000
  %5002 = or i1 %4997, %5000
  %5003 = xor i1 %5002, true
  %5004 = zext i1 %5003 to i32
  br i1 %5001, label %5005, label %5248

; <label>:5005                                    ; preds = %4996
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5011, 2
  %5015 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5035 = extractvalue %dx.types.CBufRet.f32 %5031, 3
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %4810, float %4811, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5039 = fmul fast float %5038, 8.000000e+00
  %5040 = fadd fast float %5039, -6.000000e+00
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5036, 8.000000e+00
  %5043 = fmul fast float %5042, %4999
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = fcmp fast ogt float %5044, 0.000000e+00
  br i1 %5045, label %5046, label %5223, !dx.controlflow.hints !86

; <label>:5046                                    ; preds = %5005
  %5047 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5048 = extractvalue %dx.types.CBufRet.f32 %4998, 2
  %5049 = fsub fast float %5047, %5048
  %5050 = fmul fast float %5049, %4785
  %5051 = fadd fast float %5050, %5048
  %5052 = fmul fast float %198, 2.000000e+00
  %5053 = fmul fast float %199, 2.000000e+00
  %5054 = fadd fast float %5052, -1.000000e+00
  %5055 = fadd fast float %5053, -1.000000e+00
  %5056 = fmul fast float %5051, %5054
  %5057 = fmul fast float %5051, %5055
  %5058 = fadd fast float %5056, %80
  %5059 = fadd fast float %5057, %81
  %5060 = fmul fast float %5058, %4788
  %5061 = fmul fast float %5059, %4789
  %5062 = fadd fast float %4785, 0xBFE3333340000000
  %5063 = fmul fast float %5062, 0x4004000020000000
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = fmul fast float %5065, 3.000000e+00
  %5067 = fadd fast float %5066, %198
  %5068 = call float @dx.op.unary.f32(i32 27, float %5067)  ; Round_ni(value)
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5060, float %5061, float %5068, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = fcmp fast une float %5070, 0xFFF0000000000000
  %5072 = fcmp fast une float %5070, 0x7FF0000000000000
  %5073 = and i1 %5071, %5072
  %5074 = fcmp fast olt float %5070, 0.000000e+00
  %5075 = call float @dx.op.unary.f32(i32 6, float %5070)  ; FAbs(value)
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = select i1 %5073, float 1.000000e+00, float 0.000000e+00
  %5078 = fmul fast float %5077, %5044
  %5079 = fcmp fast ogt float %5078, 0.000000e+00
  br i1 %5079, label %5080, label %5223, !dx.controlflow.hints !87

; <label>:5080                                    ; preds = %5046
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5084 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5085 = select i1 %5074, float 0.000000e+00, float %5082
  %5086 = select i1 %5074, float 0.000000e+00, float %5083
  %5087 = select i1 %5074, float 0.000000e+00, float %5084
  %5088 = select i1 %5074, float %5007, float %5022
  %5089 = select i1 %5074, float %5012, float %5027
  %5090 = select i1 %5074, float %5017, float %5032
  %5091 = select i1 %5074, float %5008, float %5023
  %5092 = select i1 %5074, float %5013, float %5028
  %5093 = select i1 %5074, float %5018, float %5033
  %5094 = select i1 %5074, float %5009, float %5024
  %5095 = select i1 %5074, float %5014, float %5029
  %5096 = select i1 %5074, float %5019, float %5034
  %5097 = select i1 %5074, float %5010, float %5025
  %5098 = select i1 %5074, float %5015, float %5030
  %5099 = select i1 %5074, float %5020, float %5035
  %5100 = fadd fast float %5085, %143
  %5101 = fadd fast float %5086, %144
  %5102 = fadd fast float %5087, %145
  %5103 = fmul fast float %5100, %5088
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5091, float %5103)  ; FMad(a,b,c)
  %5105 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5094, float %5104)  ; FMad(a,b,c)
  %5106 = fadd fast float %5105, %5097
  %5107 = fmul fast float %5100, %5089
  %5108 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5092, float %5107)  ; FMad(a,b,c)
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5095, float %5108)  ; FMad(a,b,c)
  %5110 = fadd fast float %5109, %5098
  %5111 = fmul fast float %5100, %5090
  %5112 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5093, float %5111)  ; FMad(a,b,c)
  %5113 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5096, float %5112)  ; FMad(a,b,c)
  %5114 = fadd fast float %5113, %5099
  %5115 = fdiv fast float 1.000000e+00, %5114
  %5116 = fmul fast float %5115, %5106
  %5117 = fmul fast float %5115, %5110
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = fmul fast float %5116, %5119
  %5122 = fmul fast float %5117, %5120
  %5123 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5124 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5125 = fadd fast float %5121, %5123
  %5126 = fadd fast float %5122, %5124
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 3
  %5129 = fmul fast float %5128, %4810
  %5130 = fmul fast float %5128, %4811
  %5131 = fmul fast float %5128, %4812
  %5132 = fadd fast float %5129, %5100
  %5133 = fadd fast float %5130, %5101
  %5134 = fadd fast float %5131, %5102
  %5135 = fmul fast float %5132, %5088
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5091, float %5135)  ; FMad(a,b,c)
  %5137 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5094, float %5136)  ; FMad(a,b,c)
  %5138 = fadd fast float %5137, %5097
  %5139 = fmul fast float %5132, %5089
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5092, float %5139)  ; FMad(a,b,c)
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5095, float %5140)  ; FMad(a,b,c)
  %5142 = fadd fast float %5141, %5098
  %5143 = fmul fast float %5132, %5090
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5093, float %5143)  ; FMad(a,b,c)
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5096, float %5144)  ; FMad(a,b,c)
  %5146 = fadd fast float %5145, %5099
  %5147 = fdiv fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5147, %5138
  %5149 = fmul fast float %5147, %5142
  %5150 = fmul fast float %5125, 2.000000e+00
  %5151 = fadd fast float %5150, -1.000000e+00
  %5152 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5153 = fmul fast float %5152, 5.000000e+00
  %5154 = fadd fast float %5153, -4.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5041
  %5157 = fsub fast float %5116, %5148
  %5158 = fmul fast float %5119, %5157
  %5159 = fmul fast float %5156, %5158
  %5160 = fsub fast float %5148, %5116
  %5161 = fmul fast float %5119, %5160
  %5162 = fadd fast float %5161, %5159
  %5163 = fsub fast float %5149, %5117
  %5164 = fmul fast float %5120, %5163
  %5165 = fmul fast float %5162, %5076
  %5166 = fmul fast float %5164, %5076
  %5167 = fadd fast float %5165, %5125
  %5168 = fadd fast float %5166, %5126
  %5169 = fsub fast float %5147, %5115
  %5170 = fmul fast float %5169, %5076
  %5171 = fadd fast float %5170, %5115
  %5172 = fdiv fast float 1.000000e+00, %5171
  %5173 = fadd fast float %4785, -1.000000e+00
  %5174 = fsub fast float %5172, %5114
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5177 = fmul fast float %5176, %5172
  %5178 = fdiv fast float 1.600000e+02, %5177
  %5179 = fmul fast float %5173, %5173
  %5180 = fmul fast float %5179, 0xBFB5B17960000000
  %5181 = fmul fast float %5180, %5174
  %5182 = fmul fast float %5181, %5178
  %5183 = call float @dx.op.unary.f32(i32 21, float %5182)  ; Exp(value)
  %5184 = fmul fast float %5183, 0x3FF04B2960000000
  %5185 = fsub fast float 0x3FF04B2960000000, %5184
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5186, 4.000000e+00
  %5188 = fadd fast float %198, -5.000000e-01
  %5189 = fadd fast float %199, -5.000000e-01
  %5190 = fmul fast float %5186, 0x3FBEB851E0000000
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fmul fast float %5191, %5188
  %5193 = fmul fast float %5191, %5189
  %5194 = fadd fast float %5167, %5192
  %5195 = fadd fast float %5168, %5193
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5187)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = fmul fast float %5201, %5197
  %5203 = fmul fast float %5201, %5198
  %5204 = fmul fast float %5201, %5199
  %5205 = select i1 %185, float 0.000000e+00, float %5203
  %5206 = select i1 %185, float 0.000000e+00, float %5204
  %5207 = fmul fast float %5194, 2.000000e+00
  %5208 = fmul fast float %5195, 2.000000e+00
  %5209 = fadd fast float %5207, -1.000000e+00
  %5210 = fadd fast float %5208, -1.000000e+00
  %5211 = fmul fast float %5209, %5209
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5214, %5041
  %5216 = fadd fast float %5215, %5213
  %5217 = fmul fast float %5210, %5210
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5216, %5219
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fmul fast float %5221, %5078
  br label %5223

; <label>:5223                                    ; preds = %5080, %5046, %5005
  %5224 = phi float [ %5202, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5225 = phi float [ %5205, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5226 = phi float [ %5206, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5227 = phi float [ %5222, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5228 = fcmp fast olt float %5227, 1.000000e+00
  %5229 = or i1 %5228, %5003
  %5230 = zext i1 %5229 to i32
  %5231 = fmul fast float %5227, %4988
  %5232 = fsub fast float %5227, %5231
  %5233 = fsub fast float 1.000000e+00, %4994
  %5234 = fmul fast float %5232, %5233
  %5235 = fadd fast float %5234, %4994
  %5236 = fsub fast float %5235, %5232
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5237, %4925
  %5239 = fmul fast float %5237, %4926
  %5240 = fmul fast float %5237, %4927
  %5241 = fsub fast float -0.000000e+00, %5235
  %5242 = fmul fast float %5232, %5224
  %5243 = fmul fast float %5232, %5225
  %5244 = fmul fast float %5232, %5226
  %5245 = fadd fast float %5242, %5238
  %5246 = fadd fast float %5243, %5239
  %5247 = fadd fast float %5244, %5240
  br label %5248

; <label>:5248                                    ; preds = %5223, %4996
  %5249 = phi float [ %4994, %4996 ], [ %5241, %5223 ]
  %5250 = phi float [ %4925, %4996 ], [ %5245, %5223 ]
  %5251 = phi float [ %4926, %4996 ], [ %5246, %5223 ]
  %5252 = phi float [ %4927, %4996 ], [ %5247, %5223 ]
  %5253 = phi i32 [ %5004, %4996 ], [ %5230, %5223 ]
  %5254 = icmp eq i32 %5253, 0
  br i1 %5254, label %5851, label %5255

; <label>:5255                                    ; preds = %5248
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5259 = fmul fast float %5257, %80
  %5260 = fmul fast float %5258, %81
  %5261 = fptoui float %5259 to i32
  %5262 = fptoui float %5260 to i32
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5267 = fadd fast float %75, -4.000000e+00
  %5268 = call float @dx.op.binary.f32(i32 35, float %5267, float 0.000000e+00)  ; FMax(a,b)
  %5269 = fadd fast float %5268, %5264
  %5270 = fmul fast float %5269, %5265
  %5271 = call float @dx.op.unary.f32(i32 23, float %5270)  ; Log(value)
  %5272 = fmul fast float %5271, %5266
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5275 = fmul fast float %5272, %5274
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 1
  %5279 = add i32 %5278, -1
  %5280 = uitofp i32 %5278 to float
  %5281 = fmul fast float %5280, %5276
  %5282 = fptoui float %5281 to i32
  %5283 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5279)  ; UMin(a,b)
  %5284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.i32 %5284, 2
  %5286 = extractvalue %dx.types.CBufRet.i32 %5284, 3
  %5287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5262, i32 %5285, i32 %5261)  ; UMad(a,b,c)
  %5288 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5283, i32 %5286, i32 %5287)  ; UMad(a,b,c)
  %5289 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %5290 = fptoui float %5289 to i32
  %5291 = lshr i32 %5290, 5
  %5292 = call i32 @dx.op.binary.i32(i32 40, i32 %5291, i32 8191)  ; UMin(a,b)
  %5293 = fcmp fast ogt float %4584, 0.000000e+00
  %5294 = fcmp fast ogt float %4812, 0.000000e+00
  %5295 = and i1 %5294, %5293
  br i1 %5295, label %5296, label %5325

; <label>:5296                                    ; preds = %5255
  %5297 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float -1.000000e+00)  ; FMax(a,b)
  %5299 = call float @dx.op.binary.f32(i32 36, float %5298, float 1.000000e+00)  ; FMin(a,b)
  %5300 = fmul fast float %5299, %5299
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5301, 0x3FFC6E2300000000
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fcmp fast ogt float %5303, 0.000000e+00
  %5305 = call float @dx.op.unary.f32(i32 24, float %5303)  ; Sqrt(value)
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5308 = fmul fast float %5307, 5.000000e+00
  %5309 = call float @dx.op.unary.f32(i32 21, float %5308)  ; Exp(value)
  %5310 = fmul fast float %5309, 0x3FEF591A60000000
  %5311 = fadd fast float %5310, 0x3F94DCB540000000
  %5312 = select i1 %5304, float %5311, float 1.000000e+00
  %5313 = fcmp fast oge float %5312, 1.000000e+00
  %5314 = fmul fast float %5297, 2.000000e+00
  %5315 = fadd fast float %5314, %4812
  %5316 = select i1 %5313, float %5315, float %4812
  %5317 = fsub fast float %5316, %4812
  %5318 = fmul fast float %5317, %4584
  %5319 = fadd fast float %5318, %4812
  %5320 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %5319, float %4810, float %4811, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.unary.f32(i32 25, float %5320)  ; Rsqrt(value)
  %5322 = fmul fast float %5321, %4810
  %5323 = fmul fast float %5321, %4811
  %5324 = fmul fast float %5319, %5321
  br label %5325

; <label>:5325                                    ; preds = %5296, %5255
  %5326 = phi float [ %5322, %5296 ], [ %4810, %5255 ]
  %5327 = phi float [ %5323, %5296 ], [ %4811, %5255 ]
  %5328 = phi float [ %5324, %5296 ], [ %4812, %5255 ]
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 2
  %5331 = add nsw i32 %5330, -1
  %5332 = call i32 @dx.op.binary.i32(i32 37, i32 %5331, i32 0)  ; IMax(a,b)
  %5333 = shl i32 %5292, 2
  %5334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.i32 %5334, 0
  %5336 = lshr i32 %5335, 16
  %5337 = and i32 %5335, 65535
  %5338 = lshr i32 %5335, 21
  %5339 = lshr i32 %5337, 5
  %5340 = call i32 @dx.op.binary.i32(i32 40, i32 %5339, i32 %5332)  ; UMin(a,b)
  %5341 = icmp ugt i32 %5338, %5340
  br i1 %5341, label %5723, label %5342

; <label>:5342                                    ; preds = %5325
  br label %5343

; <label>:5343                                    ; preds = %5712, %5342
  %5344 = phi float [ %5713, %5712 ], [ 0.000000e+00, %5342 ]
  %5345 = phi float [ %5714, %5712 ], [ 0.000000e+00, %5342 ]
  %5346 = phi float [ %5715, %5712 ], [ 0.000000e+00, %5342 ]
  %5347 = phi float [ %5716, %5712 ], [ 1.000000e+00, %5342 ]
  %5348 = phi i32 [ %5720, %5712 ], [ %5338, %5342 ]
  %5349 = phi float [ %5717, %5712 ], [ 0.000000e+00, %5342 ]
  %5350 = phi float [ %5718, %5712 ], [ 0.000000e+00, %5342 ]
  %5351 = phi float [ %5719, %5712 ], [ 0.000000e+00, %5342 ]
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 2
  %5354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5288, i32 %5353, i32 %5348)  ; UMad(a,b,c)
  %5355 = shl i32 %5354, 2
  %5356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.i32 %5356, 0
  %5358 = shl i32 %5348, 5
  %5359 = sub nsw i32 %5336, %5358
  %5360 = call i32 @dx.op.binary.i32(i32 37, i32 %5359, i32 0)  ; IMax(a,b)
  %5361 = call i32 @dx.op.binary.i32(i32 38, i32 %5360, i32 31)  ; IMin(a,b)
  %5362 = sub nsw i32 1, %5336
  %5363 = add nsw i32 %5362, %5337
  %5364 = call i32 @dx.op.binary.i32(i32 37, i32 %5363, i32 0)  ; IMax(a,b)
  %5365 = call i32 @dx.op.binary.i32(i32 38, i32 %5364, i32 32)  ; IMin(a,b)
  %5366 = and i32 %5365, 31
  %5367 = shl i32 -1, %5366
  %5368 = xor i32 %5367, -1
  %5369 = and i32 %5361, 31
  %5370 = shl i32 %5368, %5369
  %5371 = icmp eq i32 %5365, 32
  %5372 = select i1 %5371, i32 -1, i32 %5370
  %5373 = and i32 %5372, %5357
  %5374 = icmp eq i32 %5373, 0
  br i1 %5374, label %5712, label %5375

; <label>:5375                                    ; preds = %5343
  br label %5376

; <label>:5376                                    ; preds = %5486, %5375
  %5377 = phi float [ %5487, %5486 ], [ %5344, %5375 ]
  %5378 = phi float [ %5488, %5486 ], [ %5345, %5375 ]
  %5379 = phi float [ %5489, %5486 ], [ %5346, %5375 ]
  %5380 = phi float [ %5490, %5486 ], [ %5347, %5375 ]
  %5381 = phi i32 [ %5389, %5486 ], [ %5373, %5375 ]
  %5382 = phi float [ %5491, %5486 ], [ %5349, %5375 ]
  %5383 = phi float [ %5492, %5486 ], [ %5350, %5375 ]
  %5384 = phi float [ %5493, %5486 ], [ %5351, %5375 ]
  %5385 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5381)  ; FirstbitLo(value)
  %5386 = add i32 %5385, %5358
  %5387 = and i32 %5385, 31
  %5388 = shl i32 1, %5387
  %5389 = xor i32 %5388, %5381
  %5390 = mul i32 %5386, 72
  %5391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = add i32 %5390, 12
  %5396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.i32 %5396, 0
  %5398 = add i32 %5390, 16
  %5399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 1
  %5402 = extractvalue %dx.types.ResRet.f32 %5399, 2
  %5403 = add i32 %5390, 28
  %5404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = add i32 %5390, 32
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = extractvalue %dx.types.ResRet.f32 %5407, 3
  %5412 = add i32 %5390, 48
  %5413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = add i32 %5390, 56
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = add i32 %5390, 64
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = mul i32 %5386, 60
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = add i32 %5424, 12
  %5430 = add i32 %5424, 48
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = and i32 %5397, 32767
  %5436 = bitcast float %5392 to i32
  %5437 = icmp eq i32 %5436, -1
  %5438 = bitcast float %5393 to i32
  %5439 = and i32 %5397, 32768
  %5440 = icmp ne i32 %5439, 0
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = fsub fast float %5426, %5442
  %5446 = fsub fast float %5427, %5443
  %5447 = fsub fast float %5428, %5444
  %5448 = fsub fast float %143, %5445
  %5449 = fsub fast float %144, %5446
  %5450 = fsub fast float %145, %5447
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = add i32 %5424, 24
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = add i32 %5424, 36
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5469 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5470 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5471 = fsub fast float %5432, %5468
  %5472 = fsub fast float %5433, %5469
  %5473 = fsub fast float %5434, %5470
  %5474 = fmul fast float %5471, %5400
  %5475 = fmul fast float %5472, %5401
  %5476 = fmul fast float %5473, %5402
  %5477 = call float @dx.op.binary.f32(i32 36, float %5475, float %5476)  ; FMin(a,b)
  %5478 = call float @dx.op.binary.f32(i32 36, float %5474, float %5477)  ; FMin(a,b)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5380, float %5479)  ; FMin(a,b)
  %5481 = uitofp i1 %5440 to float
  %5482 = fadd fast float %4584, 1.000000e+00
  %5483 = fsub fast float %5482, %5481
  %5484 = fmul fast float %5480, %5483
  %5485 = fcmp fast ogt float %5484, 0.000000e+00
  br i1 %5485, label %5495, label %5486

; <label>:5486                                    ; preds = %5637, %5376
  %5487 = phi float [ %5701, %5637 ], [ %5377, %5376 ]
  %5488 = phi float [ %5702, %5637 ], [ %5378, %5376 ]
  %5489 = phi float [ %5703, %5637 ], [ %5379, %5376 ]
  %5490 = phi float [ %5710, %5637 ], [ %5380, %5376 ]
  %5491 = phi float [ %5707, %5637 ], [ %5382, %5376 ]
  %5492 = phi float [ %5708, %5637 ], [ %5383, %5376 ]
  %5493 = phi float [ %5709, %5637 ], [ %5384, %5376 ]
  %5494 = icmp eq i32 %5381, %5388
  br i1 %5494, label %5711, label %5376

; <label>:5495                                    ; preds = %5376
  br i1 %5437, label %5553, label %5496

; <label>:5496                                    ; preds = %5495
  %5497 = fsub fast float -0.000000e+00, %5452
  %5498 = fsub fast float -0.000000e+00, %5453
  %5499 = fsub fast float -0.000000e+00, %5454
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fsub fast float -0.000000e+00, %5500
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fadd fast float %5502, %5415
  %5504 = fadd fast float %5414, %5502
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = fcmp ogt float %5500, -0.000000e+00
  %5507 = select i1 %5506, float %5505, float %5503
  %5508 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5509 = fdiv fast float 1.000000e+00, %5508
  %5510 = fmul fast float %5507, %5509
  %5511 = call float @dx.op.binary.f32(i32 35, float %5510, float 0.000000e+00)  ; FMax(a,b)
  %5512 = fsub fast float -0.000000e+00, %5458
  %5513 = fsub fast float -0.000000e+00, %5459
  %5514 = fsub fast float -0.000000e+00, %5460
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fsub fast float -0.000000e+00, %5515
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fadd fast float %5517, %5419
  %5519 = fadd fast float %5418, %5517
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = fcmp ogt float %5515, -0.000000e+00
  %5522 = select i1 %5521, float %5520, float %5518
  %5523 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5524 = fdiv fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5522, %5524
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5527 = fsub fast float -0.000000e+00, %5464
  %5528 = fsub fast float -0.000000e+00, %5465
  %5529 = fsub fast float -0.000000e+00, %5466
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fadd fast float %5532, %5423
  %5534 = fadd fast float %5422, %5532
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fcmp ogt float %5530, -0.000000e+00
  %5537 = select i1 %5536, float %5535, float %5533
  %5538 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5539 = fdiv fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5537, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 36, float %5526, float %5541)  ; FMin(a,b)
  %5543 = call float @dx.op.binary.f32(i32 36, float %5511, float %5542)  ; FMin(a,b)
  %5544 = fmul fast float %5543, %5326
  %5545 = fmul fast float %5543, %5327
  %5546 = fmul fast float %5543, %5328
  %5547 = fadd fast float %5544, %143
  %5548 = fadd fast float %5545, %144
  %5549 = fadd fast float %5546, %145
  %5550 = fsub fast float %5547, %5392
  %5551 = fsub fast float %5548, %5393
  %5552 = fsub fast float %5549, %5394
  br label %5560

; <label>:5553                                    ; preds = %5495
  %5554 = fmul fast float %5326, 8.096000e+03
  %5555 = fmul fast float %5327, 8.096000e+03
  %5556 = fmul fast float %5328, 8.096000e+03
  %5557 = fadd fast float %5554, %143
  %5558 = fadd fast float %5555, %144
  %5559 = fadd fast float %5556, %145
  br label %5560

; <label>:5560                                    ; preds = %5553, %5496
  %5561 = phi float [ %5326, %5553 ], [ %5550, %5496 ]
  %5562 = phi float [ %5327, %5553 ], [ %5551, %5496 ]
  %5563 = phi float [ %5328, %5553 ], [ %5552, %5496 ]
  %5564 = phi float [ %5557, %5553 ], [ %5547, %5496 ]
  %5565 = phi float [ %5558, %5553 ], [ %5548, %5496 ]
  %5566 = phi float [ %5559, %5553 ], [ %5549, %5496 ]
  %5567 = fcmp fast olt float %5411, 1.000000e+00
  br i1 %5567, label %5568, label %5599, !dx.controlflow.hints !88

; <label>:5568                                    ; preds = %5560
  %5569 = fmul fast float %5563, %5409
  %5570 = fmul fast float %5562, %5410
  %5571 = fsub fast float %5569, %5570
  %5572 = fmul fast float %5561, %5410
  %5573 = fmul fast float %5563, %5408
  %5574 = fsub fast float %5572, %5573
  %5575 = fmul fast float %5562, %5408
  %5576 = fmul fast float %5561, %5409
  %5577 = fsub fast float %5575, %5576
  %5578 = fmul fast float %5571, 2.000000e+00
  %5579 = fmul fast float %5574, 2.000000e+00
  %5580 = fmul fast float %5577, 2.000000e+00
  %5581 = fmul fast float %5578, %5411
  %5582 = fmul fast float %5579, %5411
  %5583 = fmul fast float %5580, %5411
  %5584 = fmul fast float %5580, %5409
  %5585 = fmul fast float %5579, %5410
  %5586 = fmul fast float %5578, %5410
  %5587 = fmul fast float %5580, %5408
  %5588 = fmul fast float %5579, %5408
  %5589 = fmul fast float %5578, %5409
  %5590 = fadd fast float %5584, %5561
  %5591 = fadd fast float %5590, %5581
  %5592 = fsub fast float %5591, %5585
  %5593 = fsub fast float %5562, %5587
  %5594 = fadd fast float %5593, %5582
  %5595 = fadd fast float %5594, %5586
  %5596 = fadd fast float %5583, %5563
  %5597 = fsub fast float %5596, %5589
  %5598 = fadd fast float %5597, %5588
  br label %5599

; <label>:5599                                    ; preds = %5568, %5560
  %5600 = phi float [ %5592, %5568 ], [ %5561, %5560 ]
  %5601 = phi float [ %5595, %5568 ], [ %5562, %5560 ]
  %5602 = phi float [ %5598, %5568 ], [ %5563, %5560 ]
  br i1 %5437, label %5634, label %5603

; <label>:5603                                    ; preds = %5599
  %5604 = fmul fast float %4785, 0x400187C840000000
  %5605 = fadd fast float %5604, 0xC00EFC2120000000
  %5606 = fmul fast float %5605, %4785
  %5607 = fadd fast float %5606, 0x3FE5D16340000000
  %5608 = fmul fast float %5607, %4785
  %5609 = fadd fast float %5608, 1.000000e+00
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fsub fast float %5564, %143
  %5612 = fsub fast float %5565, %144
  %5613 = fsub fast float %5566, %145
  %5614 = fsub fast float %5564, %5392
  %5615 = fsub fast float %5565, %5393
  %5616 = fsub fast float %5566, %5394
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fadd fast float %5618, 0x3EE4F8B580000000
  %5620 = fdiv fast float %5617, %5619
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %5610
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5626, 0x4009981AE0000000
  %5628 = fsub fast float 0x40111BBD80000000, %5627
  %5629 = fmul fast float %5628, %5626
  %5630 = fadd fast float %5629, 0xC0009F6020000000
  %5631 = fmul fast float %5630, %5626
  %5632 = fadd fast float %5631, 1.000000e+00
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  br label %5637

; <label>:5634                                    ; preds = %5599
  %5635 = icmp ne i32 %5438, -1
  %5636 = zext i1 %5635 to i32
  br label %5637

; <label>:5637                                    ; preds = %5634, %5603
  %5638 = phi float [ %4785, %5634 ], [ %5633, %5603 ]
  %5639 = phi i32 [ %5636, %5634 ], [ 0, %5603 ]
  %5640 = fmul float %5638, 5.000000e+00
  %5641 = fsub float 5.000000e+00, %5640
  %5642 = icmp ne i32 %5639, 0
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 3
  %5645 = fadd fast float %5644, %5641
  %5646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5645)  ; FMax(a,b)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5648 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5649 = fadd fast float %5648, %5647
  %5650 = call float @dx.op.unary.f32(i32 6, float %5602)  ; FAbs(value)
  %5651 = fadd fast float %5649, %5650
  %5652 = fcmp fast oeq float %5651, 0.000000e+00
  %5653 = fdiv fast float 1.000000e+00, %5651
  %5654 = select i1 %5652, float 1.000000e+00, float %5653
  %5655 = fmul fast float %5654, %5600
  %5656 = fmul fast float %5654, %5601
  %5657 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5658 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5659 = fsub fast float 1.000000e+00, %5657
  %5660 = fsub fast float 1.000000e+00, %5658
  %5661 = fcmp fast oge float %5655, 0.000000e+00
  %5662 = fcmp fast oge float %5656, 0.000000e+00
  %5663 = select i1 %5661, float 1.000000e+00, float -1.000000e+00
  %5664 = select i1 %5662, float 1.000000e+00, float -1.000000e+00
  %5665 = fcmp fast ole float %5602, 0.000000e+00
  %5666 = fmul fast float %5663, %5659
  %5667 = fmul fast float %5664, %5660
  %5668 = select i1 %5665, float %5666, float %5655
  %5669 = select i1 %5665, float %5667, float %5656
  %5670 = fmul fast float %5668, 5.000000e-01
  %5671 = fmul fast float %5669, 5.000000e-01
  %5672 = fadd fast float %5670, 5.000000e-01
  %5673 = fadd fast float %5671, 5.000000e-01
  %5674 = uitofp i32 %5435 to float
  %5675 = call float @dx.op.binary.f32(i32 36, float %5646, float 3.000000e+00)  ; FMin(a,b)
  %5676 = fadd fast float %5675, 2.000000e+00
  %5677 = call float @dx.op.unary.f32(i32 21, float %5676)  ; Exp(value)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5643, 1
  %5679 = fmul fast float %5678, %5677
  %5680 = fmul fast float %5679, 2.000000e+00
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5672, %5681
  %5683 = fmul fast float %5673, %5681
  %5684 = fadd fast float %5682, %5679
  %5685 = fadd fast float %5683, %5679
  %5686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5684, float %5685, float %5674, float undef, i32 0, i32 0, i32 undef, float %5646)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5692 = fmul fast float %5691, %5405
  %5693 = call float @dx.op.binary.f32(i32 36, float %4866, float %5692)  ; FMin(a,b)
  %5694 = select i1 %5642, float %5693, float %5692
  %5695 = fmul fast float %5687, %5484
  %5696 = fmul fast float %5695, %5694
  %5697 = fmul fast float %5688, %5484
  %5698 = fmul fast float %5697, %5694
  %5699 = fmul fast float %5689, %5484
  %5700 = fmul fast float %5699, %5694
  %5701 = fadd fast float %5696, %5377
  %5702 = fadd fast float %5698, %5378
  %5703 = fadd fast float %5700, %5379
  %5704 = fmul fast float %5564, %5484
  %5705 = fmul fast float %5565, %5484
  %5706 = fmul fast float %5566, %5484
  %5707 = fadd fast float %5704, %5382
  %5708 = fadd fast float %5705, %5383
  %5709 = fadd fast float %5706, %5384
  %5710 = fsub fast float %5380, %5484
  br label %5486

; <label>:5711                                    ; preds = %5486
  br label %5712

; <label>:5712                                    ; preds = %5711, %5343
  %5713 = phi float [ %5344, %5343 ], [ %5487, %5711 ]
  %5714 = phi float [ %5345, %5343 ], [ %5488, %5711 ]
  %5715 = phi float [ %5346, %5343 ], [ %5489, %5711 ]
  %5716 = phi float [ %5347, %5343 ], [ %5490, %5711 ]
  %5717 = phi float [ %5349, %5343 ], [ %5491, %5711 ]
  %5718 = phi float [ %5350, %5343 ], [ %5492, %5711 ]
  %5719 = phi float [ %5351, %5343 ], [ %5493, %5711 ]
  %5720 = add i32 %5348, 1
  %5721 = icmp ugt i32 %5720, %5340
  br i1 %5721, label %5722, label %5343, !llvm.loop !89

; <label>:5722                                    ; preds = %5712
  br label %5723

; <label>:5723                                    ; preds = %5722, %5325
  %5724 = phi float [ 0.000000e+00, %5325 ], [ %5713, %5722 ]
  %5725 = phi float [ 0.000000e+00, %5325 ], [ %5714, %5722 ]
  %5726 = phi float [ 0.000000e+00, %5325 ], [ %5715, %5722 ]
  %5727 = phi float [ 0.000000e+00, %5325 ], [ %5717, %5722 ]
  %5728 = phi float [ 0.000000e+00, %5325 ], [ %5718, %5722 ]
  %5729 = phi float [ 0.000000e+00, %5325 ], [ %5719, %5722 ]
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = select i1 %185, float 0.000000e+00, float %5724
  %5732 = select i1 %185, float %5730, float %5725
  %5733 = select i1 %185, float 0.000000e+00, float %5726
  %5734 = fcmp fast olt float %5249, 0.000000e+00
  %5735 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5736 = fmul fast float %5735, %5250
  %5737 = fmul fast float %5735, %5251
  %5738 = fmul fast float %5735, %5252
  %5739 = select i1 %5734, float %5250, float %5736
  %5740 = select i1 %5734, float %5251, float %5737
  %5741 = select i1 %5734, float %5252, float %5738
  %5742 = fsub fast float 1.000000e+00, %5735
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5744 = fmul fast float %5743, %5731
  %5745 = fmul fast float %5743, %5732
  %5746 = fmul fast float %5743, %5733
  %5747 = fadd fast float %5739, %5744
  %5748 = fadd fast float %5740, %5745
  %5749 = fadd fast float %5741, %5746
  %5750 = fcmp fast une float %4999, 0.000000e+00
  br i1 %5750, label %5851, label %5751

; <label>:5751                                    ; preds = %5723
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.CBufRet.f32 %5757, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5757, 3
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5766 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %4810, float %4811, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fadd fast float %4785, -1.000000e+00
  %5771 = fsub fast float %5768, %5769
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %5774 = fmul fast float %5773, %5768
  %5775 = fdiv fast float 1.600000e+02, %5774
  %5776 = fmul fast float %5770, %5770
  %5777 = fmul fast float %5776, 0xBFB5B17960000000
  %5778 = fmul fast float %5777, %5771
  %5779 = fmul fast float %5778, %5775
  %5780 = call float @dx.op.unary.f32(i32 21, float %5779)  ; Exp(value)
  %5781 = fmul fast float %5780, 0x3FF04B2960000000
  %5782 = fsub fast float 0x3FF04B2960000000, %5781
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fmul fast float %5783, 4.000000e+00
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = fadd fast float %5786, %5727
  %5790 = fadd fast float %5787, %5728
  %5791 = fadd fast float %5788, %5729
  %5792 = fmul fast float %5789, %5753
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5754, float %5792)  ; FMad(a,b,c)
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5755, float %5793)  ; FMad(a,b,c)
  %5795 = fadd fast float %5794, %5756
  %5796 = fmul fast float %5789, %5758
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5759, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5760, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5761
  %5800 = fmul fast float %5789, %5763
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5764, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5765, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5766
  %5804 = fdiv fast float %5795, %5803
  %5805 = fdiv fast float %5799, %5803
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = fmul fast float %5807, %5804
  %5810 = fmul fast float %5808, %5805
  %5811 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5812 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5813 = fadd fast float %5809, %5811
  %5814 = fadd fast float %5810, %5812
  %5815 = fmul fast float %5767, 8.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fmul fast float %5813, 2.000000e+00
  %5818 = fmul fast float %5814, 2.000000e+00
  %5819 = fadd fast float %5817, -1.000000e+00
  %5820 = fadd fast float %5818, -1.000000e+00
  %5821 = fmul fast float %5819, %5819
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = fmul fast float %5820, %5820
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fmul fast float %4999, %5823
  %5828 = fmul fast float %5827, %5826
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5829, %5816
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5813, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float %5784)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = select i1 %185, float 0.000000e+00, float %5833
  %5836 = select i1 %185, float 0.000000e+00, float %5834
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5839 = fmul fast float %5838, %5832
  %5840 = fmul fast float %5835, %5838
  %5841 = fmul fast float %5836, %5838
  %5842 = fsub fast float %5839, %5731
  %5843 = fsub fast float %5840, %5732
  %5844 = fsub fast float %5841, %5733
  %5845 = fmul fast float %5842, %5830
  %5846 = fmul fast float %5843, %5830
  %5847 = fmul fast float %5844, %5830
  %5848 = fadd fast float %5845, %5731
  %5849 = fadd fast float %5846, %5732
  %5850 = fadd fast float %5847, %5733
  br label %5851

; <label>:5851                                    ; preds = %5751, %5723, %5248, %4972
  %5852 = phi float [ %5250, %5248 ], [ %5848, %5751 ], [ %5747, %5723 ], [ %4925, %4972 ]
  %5853 = phi float [ %5251, %5248 ], [ %5849, %5751 ], [ %5748, %5723 ], [ %4926, %4972 ]
  %5854 = phi float [ %5252, %5248 ], [ %5850, %5751 ], [ %5749, %5723 ], [ %4927, %4972 ]
  %5855 = fmul fast float %143, %143
  %5856 = fmul fast float %144, %144
  %5857 = fadd fast float %5856, %5855
  %5858 = fmul fast float %145, %145
  %5859 = fadd fast float %5857, %5858
  %5860 = call float @dx.op.unary.f32(i32 24, float %5859)  ; Sqrt(value)
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5863 = fsub fast float %5860, %5862
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = fmul fast float %5863, %5864
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5869 = fmul fast float %5866, %46
  %5870 = fmul fast float %5869, %5867
  %5871 = fmul fast float %5869, %5868
  %5872 = fadd fast float %5871, 1.000000e+00
  %5873 = fmul fast float %4978, %4929
  %5874 = fmul fast float %5873, %5872
  %5875 = fmul fast float %4978, %4930
  %5876 = fmul fast float %5875, %5872
  %5877 = fmul fast float %4978, %4931
  %5878 = fmul fast float %5877, %5872
  %5879 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = fcmp fast ogt float %5879, 0x3E7FF19E20000000
  %5881 = fdiv fast float 1.000000e+00, %5879
  %5882 = select i1 %5880, float %5881, float 0.000000e+00
  %5883 = fmul fast float %5882, %4776
  %5884 = fmul fast float %5882, %4777
  %5885 = fmul fast float %5882, %4778
  %5886 = fadd fast float %5883, -1.000000e+00
  %5887 = fadd fast float %5884, -1.000000e+00
  %5888 = fadd fast float %5885, -1.000000e+00
  %5889 = fmul fast float %5886, 5.000000e-01
  %5890 = fmul fast float %5887, 5.000000e-01
  %5891 = fmul fast float %5888, 5.000000e-01
  %5892 = fadd fast float %5889, 1.000000e+00
  %5893 = fadd fast float %5890, 1.000000e+00
  %5894 = fadd fast float %5891, 1.000000e+00
  %5895 = fadd fast float %5870, %4175
  %5896 = fmul fast float %5852, %4973
  %5897 = fmul fast float %5853, %4974
  %5898 = fmul fast float %5854, %4975
  %5899 = fsub fast float 1.000000e+00, %4804
  %5900 = bitcast float %5899 to i32
  %5901 = sitofp i32 %5900 to float
  %5902 = fmul fast float %5901, 5.000000e+00
  %5903 = fadd fast float %5902, 0xC1EFBF8940000000
  %5904 = fptosi float %5903 to i32
  %5905 = bitcast i32 %5904 to float
  %5906 = fmul fast float %5895, %5905
  %5907 = fmul fast float %5873, %5906
  %5908 = fmul fast float %5907, %5892
  %5909 = fmul fast float %5875, %5906
  %5910 = fmul fast float %5909, %5893
  %5911 = fmul fast float %5877, %5906
  %5912 = fmul fast float %5911, %5894
  %5913 = fmul fast float %5874, %4171
  %5914 = fmul fast float %5876, %4171
  %5915 = fmul fast float %5878, %4171
  %5916 = fadd fast float %5896, %4167
  %5917 = fadd fast float %5916, %5908
  %5918 = fmul fast float %5917, %4171
  %5919 = fadd fast float %5897, %4168
  %5920 = fadd fast float %5919, %5910
  %5921 = fmul fast float %5920, %4171
  %5922 = fadd fast float %5898, %4169
  %5923 = fadd fast float %5922, %5912
  %5924 = fmul fast float %5923, %4171
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5927 = fcmp fast oeq float %5926, 0.000000e+00
  br i1 %5927, label %6146, label %5928

; <label>:5928                                    ; preds = %5851
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5934, float %5935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = select i1 %185, float %5937, float %5933
  %5941 = select i1 %185, float %5939, float %5934
  %5942 = select i1 %185, float %5938, float %5935
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5945 = fcmp fast une float %5944, 0.000000e+00
  br i1 %5945, label %5946, label %5963

; <label>:5946                                    ; preds = %5928
  %5947 = fptoui float %80 to i32
  %5948 = fptoui float %81 to i32
  %5949 = lshr i32 %5947, 4
  %5950 = lshr i32 %5948, 4
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = fptoui float %5952 to i32
  %5954 = add i32 %5953, 15
  %5955 = lshr i32 %5954, 4
  %5956 = mul i32 %5955, %5950
  %5957 = add i32 %5956, %5949
  %5958 = shl i32 %5957, 3
  %5959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.i32 %5959, 0
  %5961 = and i32 %5960, -268435456
  %5962 = icmp eq i32 %5961, -1342177280
  br i1 %5962, label %5968, label %5963

; <label>:5963                                    ; preds = %5946, %5928
  %5964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4790, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.ResRet.f32 %5964, 1
  %5967 = extractvalue %dx.types.ResRet.f32 %5964, 2
  br label %5968

; <label>:5968                                    ; preds = %5963, %5946
  %5969 = phi float [ %5965, %5963 ], [ 0.000000e+00, %5946 ]
  %5970 = phi float [ %5966, %5963 ], [ 0.000000e+00, %5946 ]
  %5971 = phi float [ %5967, %5963 ], [ 0.000000e+00, %5946 ]
  %5972 = call float @dx.op.binary.f32(i32 36, float %5970, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5969, float %5972)  ; FMin(a,b)
  %5974 = fcmp fast ogt float %5973, 0.000000e+00
  br i1 %5974, label %5975, label %6146, !dx.controlflow.hints !91

; <label>:5975                                    ; preds = %5968
  %5976 = fmul fast float %5969, %5940
  %5977 = fmul fast float %5970, %5941
  %5978 = fmul fast float %5971, %5942
  %5979 = fsub fast float %5929, %4775
  %5980 = fsub fast float %5930, %4774
  %5981 = fsub fast float %5931, %4773
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %5981, float %5979, float %5980, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.unary.f32(i32 25, float %5982)  ; Rsqrt(value)
  %5984 = fmul fast float %5983, %5979
  %5985 = fmul fast float %5983, %5980
  %5986 = fmul fast float %5983, %5981
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5930, float %5931, float %4779, float %4780, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4771, float %4770, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5990 = fmul fast float %5989, %5989
  %5991 = fmul fast float %5990, %4829
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = fmul fast float %5992, %5989
  %5994 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fmul fast float %5994, %5994
  %5996 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5997 = fsub fast float 1.000000e+00, %4822
  %5998 = fmul fast float %4804, %4804
  %5999 = fmul fast float %5998, %5997
  %6000 = fadd fast float %5999, %4822
  %6001 = bitcast float %6000 to i32
  %6002 = ashr i32 %6001, 1
  %6003 = add nsw i32 %6002, 532487669
  %6004 = bitcast i32 %6003 to float
  %6005 = fadd fast float %6004, %4804
  %6006 = fmul fast float %4822, %5995
  %6007 = fsub fast float 1.000000e+00, %5995
  %6008 = fadd fast float %6007, %6006
  %6009 = fmul fast float %5996, %5996
  %6010 = fmul fast float %6009, %5997
  %6011 = fadd fast float %6010, %4822
  %6012 = bitcast float %6011 to i32
  %6013 = ashr i32 %6012, 1
  %6014 = add nsw i32 %6013, 532487669
  %6015 = bitcast i32 %6014 to float
  %6016 = fadd fast float %6015, %5996
  %6017 = fmul fast float %6008, %6008
  %6018 = fmul fast float %6017, %6005
  %6019 = fmul fast float %6018, %6016
  %6020 = fdiv fast float 0x3FF0A00000000000, %6019
  %6021 = fmul fast float %6020, %4822
  %6022 = call float @dx.op.unary.f32(i32 6, float %5988)  ; FAbs(value)
  %6023 = fsub fast float 1.000000e+00, %6022
  %6024 = bitcast float %6023 to i32
  %6025 = sitofp i32 %6024 to float
  %6026 = fmul fast float %6025, 5.000000e+00
  %6027 = fadd fast float %6026, 0xC1EFBF8940000000
  %6028 = fptosi float %6027 to i32
  %6029 = bitcast i32 %6028 to float
  %6030 = fsub fast float 1.000000e+00, %4782
  %6031 = fsub fast float 1.000000e+00, %4783
  %6032 = fsub fast float 1.000000e+00, %4802
  %6033 = fmul fast float %6029, %6030
  %6034 = fmul fast float %6029, %6031
  %6035 = fmul fast float %6029, %6032
  %6036 = fadd fast float %6033, %4782
  %6037 = fadd fast float %6034, %4783
  %6038 = fadd fast float %6035, %4802
  br i1 %4945, label %6039, label %6062

; <label>:6039                                    ; preds = %5975
  %6040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4174, float %6022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  %6044 = fadd fast float %6041, -5.000000e-01
  %6045 = fadd fast float %6042, -5.000000e-01
  %6046 = fadd fast float %6043, -5.000000e-01
  %6047 = fmul fast float %4782, 4.000000e+00
  %6048 = fmul fast float %6047, %6030
  %6049 = fmul fast float %6048, %6044
  %6050 = fmul fast float %4783, 4.000000e+00
  %6051 = fmul fast float %6050, %6031
  %6052 = fmul fast float %6051, %6045
  %6053 = fmul fast float %4802, 4.000000e+00
  %6054 = fmul fast float %6053, %6032
  %6055 = fmul fast float %6054, %6046
  %6056 = fadd fast float %6049, %6036
  %6057 = fadd fast float %6052, %6037
  %6058 = fadd fast float %6055, %6038
  %6059 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  br label %6062

; <label>:6062                                    ; preds = %6039, %5975
  %6063 = phi float [ %6059, %6039 ], [ %6036, %5975 ]
  %6064 = phi float [ %6060, %6039 ], [ %6037, %5975 ]
  %6065 = phi float [ %6061, %6039 ], [ %6038, %5975 ]
  %6066 = fmul fast float %5987, 9.843750e-01
  %6067 = fadd fast float %6066, 7.812500e-03
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6067, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 3
  %6071 = fmul fast float %6069, %4782
  %6072 = fmul fast float %6069, %4783
  %6073 = fmul fast float %6069, %4802
  %6074 = fadd fast float %6071, %6070
  %6075 = fadd fast float %6072, %6070
  %6076 = fadd fast float %6073, %6070
  br i1 %4945, label %6077, label %6100

; <label>:6077                                    ; preds = %6062
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4174, float %5987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = fadd fast float %6079, -5.000000e-01
  %6083 = fadd fast float %6080, -5.000000e-01
  %6084 = fadd fast float %6081, -5.000000e-01
  %6085 = fmul fast float %4782, 4.000000e+00
  %6086 = fmul fast float %6085, %6030
  %6087 = fmul fast float %6086, %6082
  %6088 = fmul fast float %4783, 4.000000e+00
  %6089 = fmul fast float %6088, %6031
  %6090 = fmul fast float %6089, %6083
  %6091 = fmul fast float %4802, 4.000000e+00
  %6092 = fmul fast float %6091, %6032
  %6093 = fmul fast float %6092, %6084
  %6094 = fadd fast float %6087, %6074
  %6095 = fadd fast float %6090, %6075
  %6096 = fadd fast float %6093, %6076
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6099 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  br label %6100

; <label>:6100                                    ; preds = %6077, %6062
  %6101 = phi float [ %6097, %6077 ], [ %6074, %6062 ]
  %6102 = phi float [ %6098, %6077 ], [ %6075, %6062 ]
  %6103 = phi float [ %6099, %6077 ], [ %6076, %6062 ]
  %6104 = call float @dx.op.binary.f32(i32 35, float %6102, float %6103)  ; FMax(a,b)
  %6105 = call float @dx.op.binary.f32(i32 35, float %6101, float %6104)  ; FMax(a,b)
  %6106 = fsub fast float 1.000000e+00, %6105
  %6107 = fmul fast float %6063, %6021
  %6108 = fmul fast float %6064, %6021
  %6109 = fmul fast float %6065, %6021
  %6110 = fsub fast float 1.000000e+00, %5988
  %6111 = bitcast float %6110 to i32
  %6112 = sitofp i32 %6111 to float
  %6113 = fmul fast float %6112, 5.000000e+00
  %6114 = fadd fast float %6113, 0xC1EFBF8940000000
  %6115 = fptosi float %6114 to i32
  %6116 = bitcast i32 %6115 to float
  %6117 = fmul fast float %6116, %4175
  %6118 = fmul fast float %6106, %6117
  %6119 = fmul fast float %6118, %5892
  %6120 = fmul fast float %6118, %5893
  %6121 = fmul fast float %6118, %5894
  %6122 = fadd fast float %6119, %6107
  %6123 = fadd fast float %6120, %6108
  %6124 = fadd fast float %6121, %6109
  %6125 = fmul fast float %5993, %5976
  %6126 = fmul fast float %6125, %6106
  %6127 = fmul fast float %5993, %5977
  %6128 = fmul fast float %6127, %6106
  %6129 = fmul fast float %5993, %5978
  %6130 = fmul fast float %6129, %6106
  %6131 = fmul fast float %6125, %6122
  %6132 = fmul fast float %6127, %6123
  %6133 = fmul fast float %6129, %6124
  %6134 = fadd fast float %6126, %5874
  %6135 = fmul fast float %6134, %4171
  %6136 = fadd fast float %6128, %5876
  %6137 = fmul fast float %6136, %4171
  %6138 = fadd fast float %6130, %5878
  %6139 = fmul fast float %6138, %4171
  %6140 = fadd fast float %6131, %5917
  %6141 = fmul fast float %6140, %4171
  %6142 = fadd fast float %6132, %5920
  %6143 = fmul fast float %6142, %4171
  %6144 = fadd fast float %6133, %5923
  %6145 = fmul fast float %6144, %4171
  br label %6146

; <label>:6146                                    ; preds = %6100, %5968, %5851
  %6147 = phi float [ %5918, %5851 ], [ %5918, %5968 ], [ %6141, %6100 ]
  %6148 = phi float [ %5921, %5851 ], [ %5921, %5968 ], [ %6143, %6100 ]
  %6149 = phi float [ %5924, %5851 ], [ %5924, %5968 ], [ %6145, %6100 ]
  %6150 = phi float [ %5913, %5851 ], [ %5913, %5968 ], [ %6135, %6100 ]
  %6151 = phi float [ %5914, %5851 ], [ %5914, %5968 ], [ %6137, %6100 ]
  %6152 = phi float [ %5915, %5851 ], [ %5915, %5968 ], [ %6139, %6100 ]
  %6153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.i32 %6153, 0
  %6155 = icmp eq i32 %6154, 0
  br i1 %6155, label %6586, label %6156

; <label>:6156                                    ; preds = %6146
  %6157 = fptoui float %80 to i32
  %6158 = fptoui float %81 to i32
  %6159 = lshr i32 %6157, 4
  %6160 = lshr i32 %6158, 4
  %6161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.i32 %6161, 0
  %6163 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6160, i32 %6162, i32 %6159)  ; UMad(a,b,c)
  %6164 = add nsw i32 %6154, -1
  %6165 = call i32 @dx.op.binary.i32(i32 37, i32 %6164, i32 0)  ; IMax(a,b)
  %6166 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6167 = fptoui float %6166 to i32
  %6168 = lshr i32 %6167, 5
  %6169 = call i32 @dx.op.binary.i32(i32 40, i32 %6168, i32 8191)  ; UMin(a,b)
  %6170 = shl i32 %6169, 2
  %6171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6170, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.i32 %6171, 0
  %6173 = lshr i32 %6172, 16
  %6174 = and i32 %6172, 65535
  %6175 = lshr i32 %6172, 21
  %6176 = lshr i32 %6174, 5
  %6177 = call i32 @dx.op.binary.i32(i32 40, i32 %6176, i32 %6165)  ; UMin(a,b)
  %6178 = icmp ugt i32 %6175, %6177
  br i1 %6178, label %6586, label %6179

; <label>:6179                                    ; preds = %6156
  br label %6180

; <label>:6180                                    ; preds = %6576, %6179
  %6181 = phi i32 [ %6583, %6576 ], [ %6175, %6179 ]
  %6182 = phi float [ %6577, %6576 ], [ %6147, %6179 ]
  %6183 = phi float [ %6578, %6576 ], [ %6148, %6179 ]
  %6184 = phi float [ %6579, %6576 ], [ %6149, %6179 ]
  %6185 = phi float [ %6580, %6576 ], [ %6150, %6179 ]
  %6186 = phi float [ %6581, %6576 ], [ %6151, %6179 ]
  %6187 = phi float [ %6582, %6576 ], [ %6152, %6179 ]
  %6188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.i32 %6188, 0
  %6190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6163, i32 %6189, i32 %6181)  ; UMad(a,b,c)
  %6191 = shl i32 %6190, 2
  %6192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.i32 %6192, 0
  %6194 = shl i32 %6181, 5
  %6195 = sub nsw i32 %6173, %6194
  %6196 = call i32 @dx.op.binary.i32(i32 37, i32 %6195, i32 0)  ; IMax(a,b)
  %6197 = call i32 @dx.op.binary.i32(i32 38, i32 %6196, i32 31)  ; IMin(a,b)
  %6198 = sub nsw i32 1, %6173
  %6199 = add nsw i32 %6198, %6174
  %6200 = call i32 @dx.op.binary.i32(i32 37, i32 %6199, i32 0)  ; IMax(a,b)
  %6201 = call i32 @dx.op.binary.i32(i32 38, i32 %6200, i32 32)  ; IMin(a,b)
  %6202 = and i32 %6201, 31
  %6203 = shl i32 -1, %6202
  %6204 = xor i32 %6203, -1
  %6205 = and i32 %6197, 31
  %6206 = shl i32 %6204, %6205
  %6207 = icmp eq i32 %6201, 32
  %6208 = select i1 %6207, i32 -1, i32 %6206
  %6209 = and i32 %6208, %6193
  %6210 = icmp eq i32 %6209, 0
  br i1 %6210, label %6576, label %6211

; <label>:6211                                    ; preds = %6180
  br label %6212

; <label>:6212                                    ; preds = %6292, %6211
  %6213 = phi i32 [ %6224, %6292 ], [ %6209, %6211 ]
  %6214 = phi float [ %6293, %6292 ], [ %6182, %6211 ]
  %6215 = phi float [ %6294, %6292 ], [ %6183, %6211 ]
  %6216 = phi float [ %6295, %6292 ], [ %6184, %6211 ]
  %6217 = phi float [ %6296, %6292 ], [ %6185, %6211 ]
  %6218 = phi float [ %6297, %6292 ], [ %6186, %6211 ]
  %6219 = phi float [ %6298, %6292 ], [ %6187, %6211 ]
  %6220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6213)  ; FirstbitLo(value)
  %6221 = add i32 %6220, %6194
  %6222 = and i32 %6220, 31
  %6223 = shl i32 1, %6222
  %6224 = xor i32 %6223, %6213
  %6225 = mul i32 %6221, 112
  %6226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6225, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.ResRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.ResRet.f32 %6226, 2
  %6230 = or i32 %6225, 12
  %6231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6230, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = add i32 %6225, 44
  %6234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.f32 %6234, 0
  %6236 = add i32 %6225, 48
  %6237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.ResRet.f32 %6237, 2
  %6241 = add i32 %6225, 80
  %6242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6241, i32 undef)  ; BufferLoad(srv,index,wot)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6245 = call float @dx.op.dot3.f32(i32 55, float %6227, float %6228, float %6229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6246 = select i1 %185, float %6243, float %6227
  %6247 = select i1 %185, float %6245, float %6228
  %6248 = select i1 %185, float %6244, float %6229
  %6249 = fsub fast float %6238, %143
  %6250 = fsub fast float %6239, %144
  %6251 = fsub fast float %6240, %145
  %6252 = call float @dx.op.dot3.f32(i32 55, float %6249, float %6250, float %6251, float %6249, float %6250, float %6251)  ; Dot3(ax,ay,az,bx,by,bz)
  %6253 = call float @dx.op.unary.f32(i32 24, float %6252)  ; Sqrt(value)
  %6254 = fdiv fast float 1.000000e+00, %6253
  %6255 = fmul fast float %6254, %6249
  %6256 = fmul fast float %6254, %6250
  %6257 = fmul fast float %6254, %6251
  %6258 = fadd fast float %6253, %6232
  %6259 = fdiv fast float 1.000000e+00, %6258
  %6260 = fmul float %6235, %6259
  %6261 = fmul float %6260, %6260
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = and i32 %6223, %6209
  %6264 = icmp eq i32 %6263, 0
  br i1 %6264, label %6287, label %6265, !dx.controlflow.hints !92

; <label>:6265                                    ; preds = %6212
  %6266 = lshr i32 %6157, 5
  %6267 = lshr i32 %6158, 5
  %6268 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6266, i32 %6267, i32 %6221, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6269 = extractvalue %dx.types.ResRet.i32 %6268, 0
  %6270 = and i32 %6269, 3
  %6271 = icmp eq i32 %6270, 0
  %6272 = select i1 %6271, float 1.000000e+00, float 0.000000e+00
  %6273 = icmp eq i32 %6270, 3
  br i1 %6273, label %6274, label %6287

; <label>:6274                                    ; preds = %6265
  %6275 = lshr i32 %6269, 10
  %6276 = and i32 %6275, 8160
  %6277 = and i32 %6158, 31
  %6278 = or i32 %6276, %6277
  %6279 = lshr i32 %6269, 1
  %6280 = and i32 %6279, 16352
  %6281 = and i32 %6157, 31
  %6282 = or i32 %6280, %6281
  %6283 = lshr i32 %6269, 23
  %6284 = and i32 %6283, 255
  %6285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6282, i32 %6278, i32 %6284, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  br label %6287

; <label>:6287                                    ; preds = %6274, %6265, %6212
  %6288 = phi float [ %6286, %6274 ], [ %6272, %6265 ], [ 0.000000e+00, %6212 ]
  %6289 = call float @dx.op.binary.f32(i32 36, float %6288, float %6288)  ; FMin(a,b)
  %6290 = call float @dx.op.binary.f32(i32 36, float %6288, float %6289)  ; FMin(a,b)
  %6291 = fcmp fast ogt float %6290, 0.000000e+00
  br i1 %6291, label %6300, label %6292, !dx.controlflow.hints !93

; <label>:6292                                    ; preds = %6532, %6287
  %6293 = phi float [ %6214, %6287 ], [ %6572, %6532 ]
  %6294 = phi float [ %6215, %6287 ], [ %6573, %6532 ]
  %6295 = phi float [ %6216, %6287 ], [ %6574, %6532 ]
  %6296 = phi float [ %6217, %6287 ], [ %6566, %6532 ]
  %6297 = phi float [ %6218, %6287 ], [ %6567, %6532 ]
  %6298 = phi float [ %6219, %6287 ], [ %6568, %6532 ]
  %6299 = icmp eq i32 %6213, %6223
  br i1 %6299, label %6575, label %6212

; <label>:6300                                    ; preds = %6287
  %6301 = fmul fast float %6288, %6246
  %6302 = fmul fast float %6288, %6247
  %6303 = fmul fast float %6288, %6248
  %6304 = fsub fast float %6240, %4575
  %6305 = fcmp fast ogt float %6304, 0.000000e+00
  %6306 = fsub fast float %145, %4575
  %6307 = fcmp fast ogt float %6306, 0.000000e+00
  %6308 = xor i1 %6307, %6305
  %6309 = fsub fast float %4575, %6240
  %6310 = fmul fast float %6309, 2.000000e+00
  %6311 = fadd fast float %6310, %6240
  %6312 = select i1 %6308, float %6240, float %6311
  %6313 = fsub fast float %6312, %145
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6249, float %6250, float %6313, float %6249, float %6250, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = call float @dx.op.unary.f32(i32 25, float %6314)  ; Rsqrt(value)
  %6316 = fmul fast float %6315, %6249
  %6317 = fmul fast float %6315, %6250
  %6318 = fmul fast float %6315, %6313
  %6319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6316, float %6317, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6321 = fdiv fast float 1.000000e+00, %6320
  %6322 = fmul fast float %6321, %6319
  %6323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = fcmp fast ogt float %6323, 0.000000e+00
  %6325 = fcmp fast olt float %6323, 0.000000e+00
  %6326 = zext i1 %6324 to i32
  %6327 = zext i1 %6325 to i32
  %6328 = sub nsw i32 %6326, %6327
  %6329 = sitofp i32 %6328 to float
  %6330 = fsub fast float %6312, %4575
  %6331 = call float @dx.op.dot3.f32(i32 55, float %6249, float %6250, float %6330, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = fcmp fast ogt float %6331, 0.000000e+00
  %6333 = fcmp fast olt float %6331, 0.000000e+00
  %6334 = zext i1 %6332 to i32
  %6335 = zext i1 %6333 to i32
  %6336 = sub nsw i32 %6334, %6335
  %6337 = sitofp i32 %6336 to float
  %6338 = fcmp fast une float %6329, %6337
  br i1 %6338, label %6339, label %6349

; <label>:6339                                    ; preds = %6300
  %6340 = fmul fast float %6322, %6318
  %6341 = fmul fast float %6322, %6317
  %6342 = fmul fast float %6322, %6316
  %6343 = fmul fast float %6342, %6342
  %6344 = fmul fast float %6341, %6341
  %6345 = fadd fast float %6343, %6344
  %6346 = fmul fast float %6340, %6340
  %6347 = fadd fast float %6345, %6346
  %6348 = call float @dx.op.unary.f32(i32 24, float %6347)  ; Sqrt(value)
  br label %6361

; <label>:6349                                    ; preds = %6300
  %6350 = icmp slt i32 %6328, 0
  br i1 %6350, label %6351, label %6361

; <label>:6351                                    ; preds = %6349
  %6352 = fsub fast float %143, %6238
  %6353 = fsub fast float %144, %6239
  %6354 = fsub fast float %145, %6312
  %6355 = fmul fast float %6352, %6352
  %6356 = fmul fast float %6353, %6353
  %6357 = fadd fast float %6355, %6356
  %6358 = fmul fast float %6354, %6354
  %6359 = fadd fast float %6357, %6358
  %6360 = call float @dx.op.unary.f32(i32 24, float %6359)  ; Sqrt(value)
  br label %6361

; <label>:6361                                    ; preds = %6351, %6349, %6339
  %6362 = phi float [ %6348, %6339 ], [ %6360, %6351 ], [ 0.000000e+00, %6349 ]
  %6363 = and i1 %6307, %6305
  %6364 = fsub fast float -0.000000e+00, %6362
  %6365 = select i1 %6363, float -0.000000e+00, float %6364
  %6366 = fmul fast float %4576, 0x3FF7154760000000
  %6367 = fmul fast float %6366, %6365
  %6368 = fmul fast float %4577, 0x3FF7154760000000
  %6369 = fmul fast float %6368, %6365
  %6370 = fmul fast float %4578, 0x3FF7154760000000
  %6371 = fmul fast float %6370, %6365
  %6372 = call float @dx.op.unary.f32(i32 21, float %6367)  ; Exp(value)
  %6373 = call float @dx.op.unary.f32(i32 21, float %6369)  ; Exp(value)
  %6374 = call float @dx.op.unary.f32(i32 21, float %6371)  ; Exp(value)
  %6375 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6376 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6378 = fmul fast float %6301, %6375
  %6379 = fmul fast float %6302, %6376
  %6380 = fmul fast float %6303, %6377
  %6381 = fsub fast float %6255, %4775
  %6382 = fsub fast float %6256, %4774
  %6383 = fsub fast float %6257, %4773
  %6384 = call float @dx.op.dot3.f32(i32 55, float %6381, float %6382, float %6383, float %6381, float %6382, float %6383)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = call float @dx.op.unary.f32(i32 25, float %6384)  ; Rsqrt(value)
  %6386 = fmul fast float %6385, %6381
  %6387 = fmul fast float %6385, %6382
  %6388 = fmul fast float %6385, %6383
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %4779, float %4780, float %4781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4771, float %4770, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = call float @dx.op.unary.f32(i32 7, float %6389)  ; Saturate(value)
  %6392 = fmul fast float %6391, %6262
  %6393 = fmul fast float %6391, %6391
  %6394 = fmul fast float %6393, %4829
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fmul fast float %6392, %6395
  %6397 = bitcast float %6252 to i32
  %6398 = ashr i32 %6397, 1
  %6399 = sub nsw i32 1597463007, %6398
  %6400 = bitcast i32 %6399 to float
  %6401 = fmul fast float %6400, %6249
  %6402 = fmul fast float %6400, %6250
  %6403 = fmul fast float %6400, %6251
  %6404 = fsub fast float %6401, %4775
  %6405 = fsub fast float %6402, %4774
  %6406 = fsub fast float %6403, %4773
  %6407 = call float @dx.op.dot3.f32(i32 55, float %6404, float %6405, float %6406, float %6404, float %6405, float %6406)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = call float @dx.op.unary.f32(i32 25, float %6407)  ; Rsqrt(value)
  %6409 = fmul fast float %6404, %6408
  %6410 = fmul fast float %6405, %6408
  %6411 = fmul fast float %6406, %6408
  %6412 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %6409, float %6410, float %6411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = fmul fast float %6412, %6412
  %6414 = call float @dx.op.unary.f32(i32 6, float %6389)  ; FAbs(value)
  %6415 = fsub fast float 1.000000e+00, %4822
  %6416 = fmul fast float %4804, %4804
  %6417 = fmul fast float %6416, %6415
  %6418 = fadd fast float %6417, %4822
  %6419 = bitcast float %6418 to i32
  %6420 = ashr i32 %6419, 1
  %6421 = add nsw i32 %6420, 532487669
  %6422 = bitcast i32 %6421 to float
  %6423 = fadd fast float %6422, %4804
  %6424 = fmul fast float %4822, %6413
  %6425 = fsub fast float 1.000000e+00, %6413
  %6426 = fadd fast float %6425, %6424
  %6427 = fmul fast float %6414, %6414
  %6428 = fmul fast float %6427, %6415
  %6429 = fadd fast float %6428, %4822
  %6430 = bitcast float %6429 to i32
  %6431 = ashr i32 %6430, 1
  %6432 = add nsw i32 %6431, 532487669
  %6433 = bitcast i32 %6432 to float
  %6434 = fadd fast float %6433, %6414
  %6435 = fmul fast float %6426, %6426
  %6436 = fmul fast float %6435, %6423
  %6437 = fmul fast float %6436, %6434
  %6438 = fdiv fast float 1.000000e+00, %6437
  %6439 = bitcast float %4822 to i32
  %6440 = sitofp i32 %6439 to float
  %6441 = fmul fast float %6440, 0x3FE7F73180000000
  %6442 = fadd fast float %6441, 0x41AFE27C40000000
  %6443 = fptosi float %6442 to i32
  %6444 = bitcast i32 %6443 to float
  %6445 = fmul fast float %6235, 0x3FD80E9D60000000
  %6446 = fmul fast float %6445, %6400
  %6447 = fadd fast float %6444, %6446
  %6448 = bitcast float %6447 to i32
  %6449 = sub nsw i32 2129859010, %6448
  %6450 = bitcast i32 %6449 to float
  %6451 = fmul fast float %4822, %6438
  %6452 = fmul fast float %6451, %6444
  %6453 = fmul fast float %6452, %6450
  %6454 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6455 = fsub fast float 1.000000e+00, %6454
  %6456 = bitcast float %6455 to i32
  %6457 = sitofp i32 %6456 to float
  %6458 = fmul fast float %6457, 5.000000e+00
  %6459 = fadd fast float %6458, 0xC1EFBF8940000000
  %6460 = fptosi float %6459 to i32
  %6461 = bitcast i32 %6460 to float
  %6462 = fsub fast float 1.000000e+00, %4782
  %6463 = fsub fast float 1.000000e+00, %4783
  %6464 = fsub fast float 1.000000e+00, %4802
  %6465 = fmul fast float %6461, %6462
  %6466 = fmul fast float %6461, %6463
  %6467 = fmul fast float %6461, %6464
  %6468 = fadd fast float %6465, %4782
  %6469 = fadd fast float %6466, %4783
  %6470 = fadd fast float %6467, %4802
  br i1 %4945, label %6471, label %6494

; <label>:6471                                    ; preds = %6361
  %6472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4174, float %6454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.ResRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.ResRet.f32 %6472, 2
  %6476 = fadd fast float %6473, -5.000000e-01
  %6477 = fadd fast float %6474, -5.000000e-01
  %6478 = fadd fast float %6475, -5.000000e-01
  %6479 = fmul fast float %4782, 4.000000e+00
  %6480 = fmul fast float %6479, %6462
  %6481 = fmul fast float %6480, %6476
  %6482 = fmul fast float %4783, 4.000000e+00
  %6483 = fmul fast float %6482, %6463
  %6484 = fmul fast float %6483, %6477
  %6485 = fmul fast float %4802, 4.000000e+00
  %6486 = fmul fast float %6485, %6464
  %6487 = fmul fast float %6486, %6478
  %6488 = fadd fast float %6481, %6468
  %6489 = fadd fast float %6484, %6469
  %6490 = fadd fast float %6487, %6470
  %6491 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  %6492 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6493 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  br label %6494

; <label>:6494                                    ; preds = %6471, %6361
  %6495 = phi float [ %6491, %6471 ], [ %6468, %6361 ]
  %6496 = phi float [ %6492, %6471 ], [ %6469, %6361 ]
  %6497 = phi float [ %6493, %6471 ], [ %6470, %6361 ]
  %6498 = fmul fast float %6389, 9.843750e-01
  %6499 = fadd fast float %6498, 7.812500e-03
  %6500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6499, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 2
  %6502 = extractvalue %dx.types.ResRet.f32 %6500, 3
  %6503 = fmul fast float %6501, %4782
  %6504 = fmul fast float %6501, %4783
  %6505 = fmul fast float %6501, %4802
  %6506 = fadd fast float %6503, %6502
  %6507 = fadd fast float %6504, %6502
  %6508 = fadd fast float %6505, %6502
  br i1 %4945, label %6509, label %6532

; <label>:6509                                    ; preds = %6494
  %6510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4174, float %6389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6511 = extractvalue %dx.types.ResRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.ResRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.ResRet.f32 %6510, 2
  %6514 = fadd fast float %6511, -5.000000e-01
  %6515 = fadd fast float %6512, -5.000000e-01
  %6516 = fadd fast float %6513, -5.000000e-01
  %6517 = fmul fast float %4782, 4.000000e+00
  %6518 = fmul fast float %6517, %6462
  %6519 = fmul fast float %6518, %6514
  %6520 = fmul fast float %4783, 4.000000e+00
  %6521 = fmul fast float %6520, %6463
  %6522 = fmul fast float %6521, %6515
  %6523 = fmul fast float %4802, 4.000000e+00
  %6524 = fmul fast float %6523, %6464
  %6525 = fmul fast float %6524, %6516
  %6526 = fadd fast float %6519, %6506
  %6527 = fadd fast float %6522, %6507
  %6528 = fadd fast float %6525, %6508
  %6529 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6530 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6531 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  br label %6532

; <label>:6532                                    ; preds = %6509, %6494
  %6533 = phi float [ %6529, %6509 ], [ %6506, %6494 ]
  %6534 = phi float [ %6530, %6509 ], [ %6507, %6494 ]
  %6535 = phi float [ %6531, %6509 ], [ %6508, %6494 ]
  %6536 = call float @dx.op.binary.f32(i32 35, float %6534, float %6535)  ; FMax(a,b)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6533, float %6536)  ; FMax(a,b)
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = fmul fast float %6495, %6453
  %6540 = fmul fast float %6496, %6453
  %6541 = fmul fast float %6497, %6453
  %6542 = fsub fast float 1.000000e+00, %6390
  %6543 = bitcast float %6542 to i32
  %6544 = sitofp i32 %6543 to float
  %6545 = fmul fast float %6544, 5.000000e+00
  %6546 = fadd fast float %6545, 0xC1EFBF8940000000
  %6547 = fptosi float %6546 to i32
  %6548 = bitcast i32 %6547 to float
  %6549 = fmul fast float %6548, %4175
  %6550 = fmul fast float %6538, %6549
  %6551 = fmul fast float %6550, %5892
  %6552 = fmul fast float %6550, %5893
  %6553 = fmul fast float %6550, %5894
  %6554 = fadd fast float %6551, %6539
  %6555 = fadd fast float %6552, %6540
  %6556 = fadd fast float %6553, %6541
  %6557 = fmul fast float %6378, %4171
  %6558 = fmul fast float %6557, %6396
  %6559 = fmul fast float %6558, %6538
  %6560 = fmul fast float %6379, %4171
  %6561 = fmul fast float %6560, %6396
  %6562 = fmul fast float %6561, %6538
  %6563 = fmul fast float %6380, %4171
  %6564 = fmul fast float %6563, %6396
  %6565 = fmul fast float %6564, %6538
  %6566 = fadd fast float %6559, %6217
  %6567 = fadd fast float %6562, %6218
  %6568 = fadd fast float %6565, %6219
  %6569 = fmul fast float %6558, %6554
  %6570 = fmul fast float %6561, %6555
  %6571 = fmul fast float %6564, %6556
  %6572 = fadd fast float %6569, %6214
  %6573 = fadd fast float %6570, %6215
  %6574 = fadd fast float %6571, %6216
  br label %6292

; <label>:6575                                    ; preds = %6292
  br label %6576

; <label>:6576                                    ; preds = %6575, %6180
  %6577 = phi float [ %6182, %6180 ], [ %6293, %6575 ]
  %6578 = phi float [ %6183, %6180 ], [ %6294, %6575 ]
  %6579 = phi float [ %6184, %6180 ], [ %6295, %6575 ]
  %6580 = phi float [ %6185, %6180 ], [ %6296, %6575 ]
  %6581 = phi float [ %6186, %6180 ], [ %6297, %6575 ]
  %6582 = phi float [ %6187, %6180 ], [ %6298, %6575 ]
  %6583 = add i32 %6181, 1
  %6584 = icmp ugt i32 %6583, %6177
  br i1 %6584, label %6585, label %6180

; <label>:6585                                    ; preds = %6576
  br label %6586

; <label>:6586                                    ; preds = %6585, %6156, %6146
  %6587 = phi float [ %6147, %6146 ], [ %6147, %6156 ], [ %6577, %6585 ]
  %6588 = phi float [ %6148, %6146 ], [ %6148, %6156 ], [ %6578, %6585 ]
  %6589 = phi float [ %6149, %6146 ], [ %6149, %6156 ], [ %6579, %6585 ]
  %6590 = phi float [ %6150, %6146 ], [ %6150, %6156 ], [ %6580, %6585 ]
  %6591 = phi float [ %6151, %6146 ], [ %6151, %6156 ], [ %6581, %6585 ]
  %6592 = phi float [ %6152, %6146 ], [ %6152, %6156 ], [ %6582, %6585 ]
  %6593 = call float @dx.op.unary.f32(i32 24, float %4776)  ; Sqrt(value)
  %6594 = call float @dx.op.unary.f32(i32 24, float %4777)  ; Sqrt(value)
  %6595 = call float @dx.op.unary.f32(i32 24, float %4778)  ; Sqrt(value)
  %6596 = fmul fast float %6593, %6590
  %6597 = fmul fast float %6594, %6591
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  br i1 %185, label %6600, label %6623

; <label>:6600                                    ; preds = %6586
  %6601 = fadd fast float %6592, %4177
  %6602 = fmul fast float %6601, %4178
  %6603 = fsub fast float 1.000000e+00, %4178
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6607 = fmul fast float %6606, %6604
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 0
  %6610 = fmul fast float %6609, %5899
  %6611 = extractvalue %dx.types.CBufRet.f32 %6608, 2
  %6612 = fmul fast float %6611, %4800
  %6613 = fadd fast float %6597, %6596
  %6614 = fmul fast float %6599, %6613
  %6615 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6616 = fadd fast float %6607, %6602
  %6617 = fsub fast float %6616, %6610
  %6618 = fadd fast float %6617, %6612
  %6619 = fsub fast float %6618, %6615
  %6620 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6621 = fmul fast float %6619, %6620
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  br label %6639

; <label>:6623                                    ; preds = %6586
  %6624 = fmul fast float %6595, %6592
  %6625 = fmul fast float %6599, %6596
  %6626 = fmul fast float %6599, %6597
  %6627 = fmul fast float %6624, %6599
  %6628 = add i32 %43, 356
  %6629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6628, i32 undef)  ; BufferLoad(srv,index,wot)
  %6630 = extractvalue %dx.types.ResRet.i32 %6629, 0
  %6631 = and i32 %6630, 32
  %6632 = icmp eq i32 %6631, 0
  br i1 %6632, label %6639, label %6633

; <label>:6633                                    ; preds = %6623
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = fmul fast float %6635, 0x3FE99999A0000000
  %6637 = fadd fast float %6635, %6625
  %6638 = fadd fast float %6636, %6627
  br label %6639

; <label>:6639                                    ; preds = %6633, %6623, %6600
  %6640 = phi float [ %6614, %6600 ], [ %6637, %6633 ], [ %6625, %6623 ]
  %6641 = phi float [ %6622, %6600 ], [ %6626, %6633 ], [ %6626, %6623 ]
  %6642 = phi float [ 1.000000e+00, %6600 ], [ %6638, %6633 ], [ %6627, %6623 ]
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 0
  %6645 = fmul fast float %6644, %6588
  %6646 = fmul fast float %6644, %6589
  %6647 = fadd fast float %6588, %6587
  %6648 = select i1 %185, float %6647, float %6587
  %6649 = fmul float %6648, %6644
  %6650 = select i1 %185, float 0.000000e+00, float %6645
  %6651 = select i1 %185, float 0.000000e+00, float %6646
  %6652 = fmul fast float %6640, %6593
  %6653 = fmul fast float %6641, %6594
  %6654 = fmul fast float %6642, %6595
  %6655 = fadd fast float %6649, %6652
  %6656 = fadd fast float %6650, %6653
  %6657 = fadd fast float %6651, %6654
  %6658 = select i1 %185, float %6641, float %6656
  %6659 = select i1 %185, float %6642, float %6657
  %6660 = call float @dx.op.binary.f32(i32 36, float %6655, float 3.225500e+04)  ; FMin(a,b)
  %6661 = call float @dx.op.binary.f32(i32 36, float %6658, float 3.225500e+04)  ; FMin(a,b)
  %6662 = call float @dx.op.binary.f32(i32 36, float %6659, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6660)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6661)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6662)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
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
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
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
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !85}
!59 = !{!60, !83, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 14}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!71 = !{i32 3, i32 15}
!72 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !69}
!73 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!74 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !62, i8 2, i32 1, i8 1, i32 3, i8 3, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 7, i8 0, !67}
!77 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!78 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !79}
!79 = !{i32 3, i32 8}
!80 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !81}
!81 = !{i32 3, i32 13}
!82 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!85 = !{i32 0, i64 24}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}

