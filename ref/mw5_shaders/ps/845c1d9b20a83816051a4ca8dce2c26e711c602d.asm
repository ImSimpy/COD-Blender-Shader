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
; shader hash: c2b9477f7f0b9e2a8d10f4654d8406f1
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %84, %63
  %86 = fmul fast float %84, %64
  %87 = fmul fast float %84, %65
  %88 = fmul fast float %64, %61
  %89 = fmul fast float %65, %60
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %65, %59
  %92 = fmul fast float %63, %61
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %60
  %95 = fmul fast float %64, %59
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %62
  %98 = fmul fast float %93, %62
  %99 = fmul fast float %96, %62
  %100 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %52
  %106 = fmul fast float %104, %53
  %107 = fmul fast float %104, %54
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %78, 2.000000e+00
  %112 = fmul fast float %111, %109
  %113 = fmul fast float %79, 2.000000e+00
  %114 = fmul fast float %113, %110
  %115 = fsub fast float 1.000000e+00, %112
  %116 = fsub fast float 1.000000e+00, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %115, %118
  %122 = fmul fast float %115, %119
  %123 = fmul fast float %115, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %116, %125
  %129 = fmul fast float %116, %126
  %130 = fmul fast float %116, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fadd fast float %128, %132
  %136 = fadd fast float %135, %121
  %137 = fadd fast float %129, %133
  %138 = fadd fast float %137, %122
  %139 = fadd fast float %130, %134
  %140 = fadd fast float %139, %123
  %141 = fmul fast float %136, %73
  %142 = fmul fast float %138, %73
  %143 = fmul fast float %140, %73
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %78
  %148 = fmul fast float %146, %79
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = and i32 %150, 114688
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %152, float %147, float 0.000000e+00
  %154 = select i1 %152, float %148, float 0.000000e+00
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fmul fast float %156, 2.550000e+02
  %158 = fptoui float %157 to i32
  %159 = select i1 %152, i32 %158, i32 0
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 3
  %163 = and i32 %162, 3
  %164 = icmp ne i32 %163, 0
  %165 = and i32 %162, 4
  %166 = icmp ne i32 %165, 0
  %167 = and i1 %164, %166
  br i1 %167, label %168, label %179

; <label>:168                                     ; preds = %0
  %169 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %170 = fmul fast float %169, %79
  %171 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %172 = fmul fast float %171, %78
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %172, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = fsub fast float 1.000000e+00, %174
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = fcmp fast olt float %175, %177
  br label %182

; <label>:179                                     ; preds = %0
  %180 = icmp eq i32 %165, 0
  %181 = and i1 %164, %180
  br label %182

; <label>:182                                     ; preds = %179, %168
  %183 = phi i1 [ %178, %168 ], [ %181, %179 ]
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = fmul fast float %185, 0x3FE3C6EF40000000
  %187 = frem fast float %78, 2.560000e+02
  %188 = frem fast float %79, 2.560000e+02
  %189 = fptoui float %187 to i32
  %190 = fptoui float %188 to i32
  %191 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = fadd fast float %192, %186
  %195 = fadd fast float %193, %186
  %196 = call float @dx.op.unary.f32(i32 22, float %194)  ; Frc(value)
  %197 = call float @dx.op.unary.f32(i32 22, float %195)  ; Frc(value)
  %198 = add i32 %43, 156
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = shl i32 %200, 4
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %200, 7
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %200, 22
  %208 = shl nuw nsw i32 %207, 5
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = add i32 %43, 216
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %224 = add i32 %43, 36
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %226, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %43, 288
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = fmul fast float %235, 0x3F50624DE0000000
  %239 = fmul fast float %237, 0x3F50624DE0000000
  %240 = add i32 %43, 172
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %43, 232
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %43, 52
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %43, 304
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %43, 188
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %43, 248
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %308 = add i32 %43, 68
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %43, 320
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %43, 204
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = shl i32 %326, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %326, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %326, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %43, 264
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %338, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %338, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = add i32 %43, 84
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %43, 336
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %361, 0x3F50624DE0000000
  %365 = fmul fast float %363, 0x3F50624DE0000000
  %366 = add i32 %43, 348
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 32
  %370 = icmp eq i32 %369, 0
  %371 = and i32 %368, 64
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %368, 128
  %374 = icmp eq i32 %373, 0
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %392, label %379

; <label>:379                                     ; preds = %182
  %380 = add i32 %43, 488
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %384, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = fmul fast float %386, %68
  %390 = fmul fast float %387, %69
  %391 = fmul fast float %388, %70
  br label %392

; <label>:392                                     ; preds = %379, %182
  %393 = phi float [ %70, %182 ], [ %391, %379 ]
  %394 = phi float [ %69, %182 ], [ %390, %379 ]
  %395 = phi float [ %68, %182 ], [ %389, %379 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %419, label %400

; <label>:400                                     ; preds = %392
  %401 = add i32 %43, 44
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 1
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %395, float 1.000000e+00
  %407 = add i32 %43, 60
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 1
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %394, float 1.000000e+00
  %413 = add i32 %43, 76
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %393, float 1.000000e+00
  br label %419

; <label>:419                                     ; preds = %400, %392
  %420 = phi float [ %393, %392 ], [ %418, %400 ]
  %421 = phi float [ %394, %392 ], [ %412, %400 ]
  %422 = phi float [ %395, %392 ], [ %406, %400 ]
  %423 = lshr i32 %397, 20
  %424 = and i32 %423, 3
  %425 = add nuw nsw i32 %424, 1
  %426 = add i32 %43, 24
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %43, 28
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = or i32 %431, %428
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %921, label %434

; <label>:434                                     ; preds = %419
  %435 = and i32 %428, 262144
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %46, float 1.000000e+00
  %438 = select i1 %436, float %47, float 0.000000e+00
  %439 = select i1 %436, float %48, float 0.000000e+00
  %440 = select i1 %436, float %49, float 1.000000e+00
  %441 = select i1 %436, float %50, float %66
  %442 = select i1 %436, float %51, float %67
  %443 = add i32 %43, 284
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = lshr i32 %445, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = fmul fast float %447, 0x3F50624DE0000000
  %449 = add i32 %43, 88
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  %454 = lshr i32 %451, 24
  %455 = add i32 %43, 292
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = add i32 %43, 32
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = lshr i32 %464, 22
  %466 = shl nuw nsw i32 %465, 5
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = shl i32 %464, 4
  %469 = and i32 %468, 32752
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %464, 7
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fmul fast float %475, 1.000000e+03
  %477 = fmul fast float %238, %476
  %478 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %479 = fadd fast float %478, %228
  %480 = fmul fast float %239, %476
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, %230
  %483 = fmul fast float %448, %476
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fmul fast float %484, 0x401921FB60000000
  %486 = fadd fast float %485, %467
  %487 = call float @dx.op.unary.f32(i32 13, float %486)  ; Sin(value)
  %488 = call float @dx.op.unary.f32(i32 12, float %486)  ; Cos(value)
  %489 = fsub fast float -0.000000e+00, %487
  %490 = fadd fast float %441, -5.000000e-01
  %491 = fadd fast float %442, -5.000000e-01
  %492 = fmul fast float %459, %490
  %493 = fmul fast float %461, %491
  %494 = fadd fast float %492, 5.000000e-01
  %495 = fadd fast float %493, 5.000000e-01
  %496 = fmul fast float %470, %494
  %497 = fmul fast float %473, %495
  %498 = fmul fast float %488, %496
  %499 = call float @dx.op.tertiary.f32(i32 46, float %489, float %497, float %498)  ; FMad(a,b,c)
  %500 = fmul fast float %487, %496
  %501 = call float @dx.op.tertiary.f32(i32 46, float %488, float %497, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %479, %499
  %503 = fadd fast float %482, %501
  %504 = icmp ugt i32 %453, 1
  %505 = icmp ugt i32 %451, 33554431
  %506 = or i1 %505, %504
  br i1 %506, label %507, label %532

; <label>:507                                     ; preds = %434
  %508 = add i32 %43, 228
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = lshr i32 %510, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = fmul fast float %475, %512
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = mul nuw nsw i32 %453, %454
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %514, %516
  %518 = call float @dx.op.unary.f32(i32 27, float %517)  ; Round_ni(value)
  %519 = fptoui float %518 to i32
  %520 = urem i32 %519, %453
  %521 = udiv i32 %519, %454
  %522 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %523 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %524 = uitofp i32 %520 to float
  %525 = uitofp i32 %521 to float
  %526 = fadd fast float %522, %524
  %527 = fadd fast float %523, %525
  %528 = uitofp i32 %453 to float
  %529 = uitofp i32 %454 to float
  %530 = fdiv fast float %526, %528
  %531 = fdiv fast float %527, %529
  br label %532

; <label>:532                                     ; preds = %507, %434
  %533 = phi float [ %530, %507 ], [ %502, %434 ]
  %534 = phi float [ %531, %507 ], [ %503, %434 ]
  %535 = and i32 %428, 16
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %733, label %537

; <label>:537                                     ; preds = %532
  %538 = add i32 %43, 360
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = add i32 %540, 0
  %542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %542, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = and i32 %451, 255
  %549 = uitofp i32 %548 to float
  %550 = lshr i32 %451, 8
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %547, %549
  %554 = fadd fast float %553, %552
  %555 = fmul fast float %554, 0x3F70101000000000
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 512
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %568, label %560

; <label>:560                                     ; preds = %537
  %561 = add i32 %43, 440
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = add i32 %563, 0
  %565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %565, %dx.types.Handle %75, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  br label %568

; <label>:568                                     ; preds = %560, %537
  %569 = phi float [ %567, %560 ], [ 1.000000e+00, %537 ]
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 33554432
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %680, label %574

; <label>:574                                     ; preds = %568
  %575 = add i32 %43, 224
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = add i32 %43, 228
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 24
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = and i32 %588, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = lshr i32 %588, 8
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %588, 16
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = add i32 %43, 220
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 24
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = and i32 %605, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %605, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %605, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = bitcast float %544 to i32
  %621 = ashr i32 %620, 1
  %622 = sub nsw i32 1597463174, %621
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %544, 5.000000e-01
  %625 = fmul fast float %623, %623
  %626 = fmul fast float %625, %624
  %627 = fsub fast float 1.500000e+00, %626
  %628 = fmul fast float %623, %544
  %629 = fmul fast float %628, %627
  %630 = bitcast float %545 to i32
  %631 = ashr i32 %630, 1
  %632 = sub nsw i32 1597463174, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %545, 5.000000e-01
  %635 = fmul fast float %633, %633
  %636 = fmul fast float %635, %634
  %637 = fsub fast float 1.500000e+00, %636
  %638 = fmul fast float %633, %545
  %639 = fmul fast float %638, %637
  %640 = bitcast float %546 to i32
  %641 = ashr i32 %640, 1
  %642 = sub nsw i32 1597463174, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %546, 5.000000e-01
  %645 = fmul fast float %643, %643
  %646 = fmul fast float %645, %644
  %647 = fsub fast float 1.500000e+00, %646
  %648 = fmul fast float %643, %546
  %649 = fmul fast float %648, %647
  %650 = fsub fast float %629, %611
  %651 = fsub fast float %639, %615
  %652 = fsub fast float %649, %619
  %653 = fmul fast float %650, %579
  %654 = fmul fast float %651, %581
  %655 = fmul fast float %652, %586
  %656 = fadd fast float %653, %594
  %657 = fadd fast float %654, %598
  %658 = fadd fast float %655, %602
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = fmul fast float %659, %659
  %663 = fmul fast float %660, %660
  %664 = fmul fast float %661, %661
  %665 = fsub fast float %662, %544
  %666 = fsub fast float %663, %545
  %667 = fsub fast float %664, %546
  %668 = fmul fast float %665, %569
  %669 = fmul fast float %666, %569
  %670 = fmul fast float %667, %569
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %669, %545
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %591, %555
  %675 = fsub fast float %674, %608
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fsub fast float %676, %555
  %678 = fmul fast float %677, %569
  %679 = fadd fast float %678, %555
  br label %733

; <label>:680                                     ; preds = %568
  %681 = and i32 %571, 134217728
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %717, label %683

; <label>:683                                     ; preds = %680
  %684 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %685 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %686 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fadd fast float %685, -5.000000e-01
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fmul fast float %687, %569
  %691 = fmul fast float %688, %569
  %692 = fmul fast float %689, %569
  %693 = fadd fast float %690, 5.000000e-01
  %694 = fadd fast float %691, 5.000000e-01
  %695 = fadd fast float %692, 5.000000e-01
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = fmul fast float %693, 2.000000e+00
  %700 = fsub fast float 1.000000e+00, %699
  %701 = fmul fast float %700, %696
  %702 = fadd fast float %701, %699
  %703 = fmul fast float %702, %696
  %704 = fmul fast float %694, 2.000000e+00
  %705 = fsub fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %697
  %707 = fadd fast float %706, %704
  %708 = fmul fast float %707, %697
  %709 = fmul fast float %695, 2.000000e+00
  %710 = fsub fast float 1.000000e+00, %709
  %711 = fmul fast float %710, %698
  %712 = fadd fast float %711, %709
  %713 = fmul fast float %712, %698
  %714 = fmul fast float %703, %703
  %715 = fmul fast float %708, %708
  %716 = fmul fast float %713, %713
  br label %733

; <label>:717                                     ; preds = %680
  %718 = fmul fast float %215, %215
  %719 = fmul fast float %219, %219
  %720 = fmul fast float %223, %223
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fadd fast float %719, -1.000000e+00
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fmul fast float %569, %721
  %725 = fmul fast float %569, %722
  %726 = fmul fast float %569, %723
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fadd fast float %725, 1.000000e+00
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fmul fast float %727, %544
  %731 = fmul fast float %728, %545
  %732 = fmul fast float %729, %546
  br label %733

; <label>:733                                     ; preds = %717, %683, %574, %532
  %734 = phi float [ %679, %574 ], [ %555, %683 ], [ %555, %717 ], [ 0x3FA23C0BE0000000, %532 ]
  %735 = phi float [ %671, %574 ], [ %714, %683 ], [ %730, %717 ], [ 1.000000e+00, %532 ]
  %736 = phi float [ %672, %574 ], [ %715, %683 ], [ %731, %717 ], [ 1.000000e+00, %532 ]
  %737 = phi float [ %673, %574 ], [ %716, %683 ], [ %732, %717 ], [ 1.000000e+00, %532 ]
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 1
  %740 = and i32 %739, 1
  %741 = icmp ne i32 %740, 0
  %742 = add i32 %43, 356
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 32
  %746 = icmp ne i32 %745, 0
  %747 = and i1 %741, %746
  %748 = select i1 %747, float 1.000000e+00, float %735
  %749 = select i1 %747, float 0x3FD3333340000000, float %736
  %750 = select i1 %747, float 0x3FD3333340000000, float %737
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 32
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %827, label %755

; <label>:755                                     ; preds = %733
  %756 = add i32 %43, 92
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %43, 376
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %761, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = and i32 %758, 255
  %770 = uitofp i32 %769 to float
  %771 = lshr i32 %758, 8
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %758, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101000000000
  %778 = fmul fast float %765, %770
  %779 = fadd fast float %778, %773
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = fadd fast float %766, -5.000000e-01
  %782 = fadd fast float %768, -5.000000e-01
  %783 = fmul fast float %781, %777
  %784 = fmul fast float %782, %777
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fmul fast float %785, 2.000000e+00
  %788 = fadd fast float %787, -1.000000e+00
  %789 = fmul fast float %786, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fadd fast float %788, %790
  %792 = fmul fast float %791, 5.000000e-01
  %793 = fsub fast float %788, %790
  %794 = fmul fast float %793, 5.000000e-01
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = fsub fast float 1.000000e+00, %795
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float %796, %797
  %799 = call float @dx.op.dot3.f32(i32 55, float %792, float %794, float %798, float %792, float %794, float %798)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.unary.f32(i32 25, float %799)  ; Rsqrt(value)
  %801 = fmul fast float %792, %800
  %802 = fmul fast float %794, %800
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 67108864
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %823, label %807

; <label>:807                                     ; preds = %755
  %808 = add i32 %43, 280
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = lshr i32 %810, 16
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fsub fast float %780, %818
  %820 = fmul fast float %819, %812
  %821 = fadd fast float %820, %816
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  br label %823

; <label>:823                                     ; preds = %807, %755
  %824 = phi float [ %822, %807 ], [ %780, %755 ]
  %825 = call float @dx.op.dot2.f32(i32 54, float %801, float %802, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  %826 = call float @dx.op.dot2.f32(i32 54, float %801, float %802, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  br label %827

; <label>:827                                     ; preds = %823, %733
  %828 = phi float [ %824, %823 ], [ 0x3FD6666660000000, %733 ]
  %829 = phi float [ %825, %823 ], [ 0.000000e+00, %733 ]
  %830 = phi float [ %826, %823 ], [ 0.000000e+00, %733 ]
  %831 = phi float [ %767, %823 ], [ 1.000000e+00, %733 ]
  %832 = add i32 %43, 160
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 22
  %836 = shl nuw nsw i32 %835, 5
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 64
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %875, label %842

; <label>:842                                     ; preds = %827
  %843 = add i32 %43, 392
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = add i32 %845, 0
  %847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 131072
  %851 = icmp eq i32 %850, 0
  %852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %847, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = fmul fast float %853, %203
  %857 = fmul fast float %854, %206
  %858 = fmul fast float %855, %209
  br i1 %851, label %865, label %859

; <label>:859                                     ; preds = %842
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fmul fast float %861, %856
  %863 = fmul fast float %861, %857
  %864 = fmul fast float %861, %858
  br label %865

; <label>:865                                     ; preds = %859, %842
  %866 = phi float [ %862, %859 ], [ %856, %842 ]
  %867 = phi float [ %863, %859 ], [ %857, %842 ]
  %868 = phi float [ %864, %859 ], [ %858, %842 ]
  %869 = fmul fast float %866, %837
  %870 = select i1 %183, float %869, float %866
  %871 = call float @dx.op.dot3.f32(i32 55, float %870, float %867, float %868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = select i1 %183, float 0.000000e+00, float %866
  %873 = select i1 %183, float %871, float %867
  %874 = select i1 %183, float 0.000000e+00, float %868
  br label %875

; <label>:875                                     ; preds = %865, %827
  %876 = phi float [ %872, %865 ], [ 0.000000e+00, %827 ]
  %877 = phi float [ %873, %865 ], [ 0.000000e+00, %827 ]
  %878 = phi float [ %874, %865 ], [ 0.000000e+00, %827 ]
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 26624
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %906, label %883

; <label>:883                                     ; preds = %875
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 16384
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %906, label %888

; <label>:888                                     ; preds = %883
  %889 = and i32 %885, 1048576
  %890 = icmp ne i32 %889, 0
  %891 = add i32 %43, 472
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = add i32 %893, 0
  %895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %895, %dx.types.Handle %75, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = add i32 %43, 96
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 24
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %897, 0x3F70101020000000
  %904 = select i1 %890, float 0x3F70101020000000, float %903
  %905 = fmul fast float %904, %902
  br label %906

; <label>:906                                     ; preds = %888, %883, %875
  %907 = phi float [ %905, %888 ], [ 0.000000e+00, %883 ], [ 0.000000e+00, %875 ]
  %908 = add i32 %43, 96
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %910, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = fmul fast float %915, %916
  %918 = fadd fast float %917, %912
  %919 = fmul fast float %918, 0x3F70101020000000
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  br label %921

; <label>:921                                     ; preds = %906, %419
  %922 = phi float [ 0.000000e+00, %419 ], [ %829, %906 ]
  %923 = phi float [ 0.000000e+00, %419 ], [ %830, %906 ]
  %924 = phi float [ 0.000000e+00, %419 ], [ %876, %906 ]
  %925 = phi float [ 0.000000e+00, %419 ], [ %877, %906 ]
  %926 = phi float [ 0.000000e+00, %419 ], [ %878, %906 ]
  %927 = phi float [ 0.000000e+00, %419 ], [ %748, %906 ]
  %928 = phi float [ 0.000000e+00, %419 ], [ %749, %906 ]
  %929 = phi float [ 0.000000e+00, %419 ], [ %750, %906 ]
  %930 = phi float [ 0.000000e+00, %419 ], [ %734, %906 ]
  %931 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %906 ]
  %932 = phi float [ 0.000000e+00, %419 ], [ %828, %906 ]
  %933 = phi float [ 0.000000e+00, %419 ], [ %831, %906 ]
  %934 = phi float [ 0.000000e+00, %419 ], [ %907, %906 ]
  %935 = phi float [ 0.000000e+00, %419 ], [ %920, %906 ]
  br i1 %370, label %1915, label %936

; <label>:936                                     ; preds = %921
  %937 = icmp ult i32 %425, 2
  %938 = add i32 %43, 40
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %43, 44
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = or i32 %943, %940
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %1915, label %946

; <label>:946                                     ; preds = %936
  %947 = and i32 %940, 262144
  %948 = icmp ne i32 %947, 0
  %949 = select i1 %948, float %46, float 1.000000e+00
  %950 = select i1 %948, float %47, float 0.000000e+00
  %951 = select i1 %948, float %48, float 0.000000e+00
  %952 = select i1 %948, float %49, float 1.000000e+00
  %953 = select i1 %948, float %50, float %66
  %954 = select i1 %948, float %51, float %67
  %955 = add i32 %43, 300
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %959, 0x3F50624DE0000000
  %961 = add i32 %43, 104
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = lshr i32 %963, 24
  %967 = add i32 %43, 308
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %969, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = add i32 %43, 48
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 22
  %978 = shl nuw nsw i32 %977, 5
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = shl i32 %976, 4
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 7
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, 1.000000e+03
  %989 = fmul fast float %280, %988
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %270
  %992 = fmul fast float %281, %988
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %272
  %995 = fmul fast float %960, %988
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fmul fast float %996, 0x401921FB60000000
  %998 = fadd fast float %997, %979
  %999 = call float @dx.op.unary.f32(i32 13, float %998)  ; Sin(value)
  %1000 = call float @dx.op.unary.f32(i32 12, float %998)  ; Cos(value)
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fmul fast float %971, %1002
  %1005 = fmul fast float %973, %1003
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fmul fast float %982, %1006
  %1009 = fmul fast float %985, %1007
  %1010 = fmul fast float %1000, %1008
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1009, float %1010)  ; FMad(a,b,c)
  %1012 = fmul fast float %999, %1008
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1009, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %991, %1011
  %1015 = fadd fast float %994, %1013
  %1016 = icmp ugt i32 %965, 1
  %1017 = icmp ugt i32 %963, 33554431
  %1018 = or i1 %1017, %1016
  br i1 %1018, label %1019, label %1044

; <label>:1019                                    ; preds = %946
  %1020 = add i32 %43, 244
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %987, %1024
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = mul nuw nsw i32 %965, %966
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1026, %1028
  %1030 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1031 = fptoui float %1030 to i32
  %1032 = urem i32 %1031, %965
  %1033 = udiv i32 %1031, %966
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = uitofp i32 %1032 to float
  %1037 = uitofp i32 %1033 to float
  %1038 = fadd fast float %1034, %1036
  %1039 = fadd fast float %1035, %1037
  %1040 = uitofp i32 %965 to float
  %1041 = uitofp i32 %966 to float
  %1042 = fdiv fast float %1038, %1040
  %1043 = fdiv fast float %1039, %1041
  br label %1044

; <label>:1044                                    ; preds = %1019, %946
  %1045 = phi float [ %1042, %1019 ], [ %1014, %946 ]
  %1046 = phi float [ %1043, %1019 ], [ %1015, %946 ]
  %1047 = and i32 %940, 16777216
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1158, label %1049

; <label>:1049                                    ; preds = %1044
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fadd fast float %1051, %141
  %1055 = fadd fast float %1052, %142
  %1056 = fadd fast float %1053, %143
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = icmp eq i32 %44, 65535
  br i1 %1060, label %1155, label %1061

; <label>:1061                                    ; preds = %1049
  %1062 = lshr i32 %44, 1
  %1063 = shl i32 %1062, 2
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %44, 1
  %1067 = icmp ne i32 %1066, 0
  %1068 = lshr i32 %1065, 16
  %1069 = and i32 %1065, 65535
  %1070 = select i1 %1067, i32 %1068, i32 %1069
  %1071 = icmp eq i32 %1070, 65535
  br i1 %1071, label %1151, label %1072

; <label>:1072                                    ; preds = %1061
  %1073 = mul nuw nsw i32 %1070, 40
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = add nuw nsw i32 %1073, 12
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1073, 24
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1073, 36
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = fsub fast float %1054, %1075
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fmul fast float %1090, %1091
  %1095 = fmul fast float %1090, %1092
  %1096 = fmul fast float %1090, %1093
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fmul fast float %1100, %1080
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = shl i32 %44, 2
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %1108, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1110, %dx.types.Handle %40, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = fsub fast float %1094, %1097
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fadd fast float %1097, 1.250000e-01
  %1134 = fadd fast float %1133, %1130
  %1135 = fadd fast float %1134, %1124
  %1136 = fadd fast float %1098, 1.250000e-01
  %1137 = fadd fast float %1136, %1131
  %1138 = fadd fast float %1137, %1125
  %1139 = fadd fast float %1099, 1.250000e-01
  %1140 = fadd fast float %1139, %1132
  %1141 = fadd fast float %1140, %1126
  %1142 = fmul fast float %1135, %1085
  %1143 = fmul fast float %1138, %1086
  %1144 = fmul fast float %1141, %1087
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1148, %dx.types.Handle %38, float %1142, float %1143, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  br label %1151

; <label>:1151                                    ; preds = %1072, %1061
  %1152 = phi float [ %1150, %1072 ], [ -1.000000e+00, %1061 ]
  %1153 = fadd fast float %1152, %1059
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  br label %1155

; <label>:1155                                    ; preds = %1151, %1049
  %1156 = phi float [ %1154, %1151 ], [ %1059, %1049 ]
  %1157 = fmul fast float %1156, %422
  br label %1158

; <label>:1158                                    ; preds = %1155, %1044
  %1159 = phi float [ %1157, %1155 ], [ %422, %1044 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 256
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1210, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %43, 428
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = add i32 %43, 116
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = shl i32 %1174, 4
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1174, 7
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fsub fast float 1.000000e+00, %1159
  %1182 = call float @dx.op.binary.f32(i32 35, float %1181, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1183 = bitcast float %1159 to i32
  %1184 = sitofp i32 %1183 to float
  %1185 = fadd fast float %1184, 0xC1CFBF8940000000
  %1186 = fmul fast float %1180, %1185
  %1187 = fadd fast float %1186, 0x41CFBF8940000000
  %1188 = fptosi float %1187 to i32
  %1189 = bitcast i32 %1188 to float
  %1190 = bitcast float %1182 to i32
  %1191 = sitofp i32 %1190 to float
  %1192 = fadd fast float %1191, 0xC1CFBF8940000000
  %1193 = fmul fast float %1192, %1180
  %1194 = fadd fast float %1193, 0x41CFBF8940000000
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = fmul fast float %1189, %1177
  %1198 = fmul fast float %1196, %1177
  %1199 = fsub fast float %1182, %1197
  %1200 = fadd fast float %1198, %1182
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = fsub fast float %1171, %1201
  %1204 = fsub fast float %1202, %1201
  %1205 = bitcast float %1204 to i32
  %1206 = sub nsw i32 2129859010, %1205
  %1207 = bitcast i32 %1206 to float
  %1208 = fmul fast float %1207, %1203
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  br label %1210

; <label>:1210                                    ; preds = %1164, %1158
  %1211 = phi float [ %1209, %1164 ], [ %1159, %1158 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 128
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1232, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %43, 412
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 524288
  %1227 = icmp ne i32 %1226, 0
  %1228 = fcmp fast ogt float %1223, 0x3FE0101020000000
  %1229 = select i1 %1228, float 1.000000e+00, float 0.000000e+00
  %1230 = select i1 %1227, float %1229, float %1223
  %1231 = fmul fast float %1230, %1211
  br label %1232

; <label>:1232                                    ; preds = %1216, %1210
  %1233 = phi float [ %1231, %1216 ], [ %1211, %1210 ]
  %1234 = fcmp fast ult float %1233, 0x3F70101020000000
  br i1 %1234, label %1915, label %1235

; <label>:1235                                    ; preds = %1232
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 16
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1438, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %43, 364
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = and i32 %1242, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1242, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1252, %1254
  %1259 = fadd fast float %1258, %1257
  %1260 = fmul fast float %1259, 0x3F70101000000000
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 512
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1273, label %1265

; <label>:1265                                    ; preds = %1240
  %1266 = add i32 %43, 444
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  br label %1273

; <label>:1273                                    ; preds = %1265, %1240
  %1274 = phi float [ %1272, %1265 ], [ 1.000000e+00, %1240 ]
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 33554432
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1385, label %1279

; <label>:1279                                    ; preds = %1273
  %1280 = add i32 %43, 240
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %43, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 24
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = and i32 %1293, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = lshr i32 %1293, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1293, 16
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = add i32 %43, 236
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 24
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = and i32 %1310, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1310, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1310, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = bitcast float %1249 to i32
  %1326 = ashr i32 %1325, 1
  %1327 = sub nsw i32 1597463174, %1326
  %1328 = bitcast i32 %1327 to float
  %1329 = fmul fast float %1249, 5.000000e-01
  %1330 = fmul fast float %1328, %1328
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float 1.500000e+00, %1331
  %1333 = fmul fast float %1328, %1249
  %1334 = fmul fast float %1333, %1332
  %1335 = bitcast float %1250 to i32
  %1336 = ashr i32 %1335, 1
  %1337 = sub nsw i32 1597463174, %1336
  %1338 = bitcast i32 %1337 to float
  %1339 = fmul fast float %1250, 5.000000e-01
  %1340 = fmul fast float %1338, %1338
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float 1.500000e+00, %1341
  %1343 = fmul fast float %1338, %1250
  %1344 = fmul fast float %1343, %1342
  %1345 = bitcast float %1251 to i32
  %1346 = ashr i32 %1345, 1
  %1347 = sub nsw i32 1597463174, %1346
  %1348 = bitcast i32 %1347 to float
  %1349 = fmul fast float %1251, 5.000000e-01
  %1350 = fmul fast float %1348, %1348
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float 1.500000e+00, %1351
  %1353 = fmul fast float %1348, %1251
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float %1334, %1316
  %1356 = fsub fast float %1344, %1320
  %1357 = fsub fast float %1354, %1324
  %1358 = fmul fast float %1355, %1284
  %1359 = fmul fast float %1356, %1286
  %1360 = fmul fast float %1357, %1291
  %1361 = fadd fast float %1358, %1299
  %1362 = fadd fast float %1359, %1303
  %1363 = fadd fast float %1360, %1307
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fsub fast float %1367, %1249
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fmul fast float %1370, %1274
  %1374 = fmul fast float %1371, %1274
  %1375 = fmul fast float %1372, %1274
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1296, %1260
  %1380 = fsub fast float %1379, %1313
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fsub fast float %1381, %1260
  %1383 = fmul fast float %1382, %1274
  %1384 = fadd fast float %1383, %1260
  br label %1438

; <label>:1385                                    ; preds = %1273
  %1386 = and i32 %1276, 134217728
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1422, label %1388

; <label>:1388                                    ; preds = %1385
  %1389 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fmul fast float %1392, %1274
  %1396 = fmul fast float %1393, %1274
  %1397 = fmul fast float %1394, %1274
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1401
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1401
  %1409 = fmul fast float %1399, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1402
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1402
  %1414 = fmul fast float %1400, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1403
  %1419 = fmul fast float %1408, %1408
  %1420 = fmul fast float %1413, %1413
  %1421 = fmul fast float %1418, %1418
  br label %1438

; <label>:1422                                    ; preds = %1385
  %1423 = fmul fast float %257, %257
  %1424 = fmul fast float %261, %261
  %1425 = fmul fast float %265, %265
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fmul fast float %1274, %1426
  %1430 = fmul fast float %1274, %1427
  %1431 = fmul fast float %1274, %1428
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fmul fast float %1432, %1249
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  br label %1438

; <label>:1438                                    ; preds = %1422, %1388, %1279, %1235
  %1439 = phi float [ %1384, %1279 ], [ %1260, %1388 ], [ %1260, %1422 ], [ 0x3FA23C0BE0000000, %1235 ]
  %1440 = phi float [ %1376, %1279 ], [ %1419, %1388 ], [ %1435, %1422 ], [ 1.000000e+00, %1235 ]
  %1441 = phi float [ %1377, %1279 ], [ %1420, %1388 ], [ %1436, %1422 ], [ 1.000000e+00, %1235 ]
  %1442 = phi float [ %1378, %1279 ], [ %1421, %1388 ], [ %1437, %1422 ], [ 1.000000e+00, %1235 ]
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 1
  %1445 = and i32 %1444, 1
  %1446 = icmp ne i32 %1445, 0
  %1447 = add i32 %43, 356
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 32
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i1 %1446, %1451
  %1453 = select i1 %1452, float 1.000000e+00, float %1440
  %1454 = select i1 %1452, float 0x3FD3333340000000, float %1441
  %1455 = select i1 %1452, float 0x3FD3333340000000, float %1442
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1532, label %1460

; <label>:1460                                    ; preds = %1438
  %1461 = add i32 %43, 108
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %43, 380
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = and i32 %1463, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1463, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1463, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fmul fast float %1470, %1475
  %1484 = fadd fast float %1483, %1478
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fadd fast float %1471, -5.000000e-01
  %1487 = fadd fast float %1473, -5.000000e-01
  %1488 = fmul fast float %1486, %1482
  %1489 = fmul fast float %1487, %1482
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fmul fast float %1490, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fmul fast float %1491, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fadd fast float %1493, %1495
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = fsub fast float %1493, %1495
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float %1501, %1502
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1499, float %1503, float %1497, float %1499, float %1503)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.unary.f32(i32 25, float %1504)  ; Rsqrt(value)
  %1506 = fmul fast float %1497, %1505
  %1507 = fmul fast float %1499, %1505
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 67108864
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1528, label %1512

; <label>:1512                                    ; preds = %1460
  %1513 = add i32 %43, 296
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = lshr i32 %1515, 16
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = fsub fast float %1485, %1523
  %1525 = fmul fast float %1524, %1517
  %1526 = fadd fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1512, %1460
  %1529 = phi float [ %1527, %1512 ], [ %1485, %1460 ]
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  br label %1532

; <label>:1532                                    ; preds = %1528, %1438
  %1533 = phi float [ %1529, %1528 ], [ 0x3FD6666660000000, %1438 ]
  %1534 = phi float [ %1530, %1528 ], [ 0.000000e+00, %1438 ]
  %1535 = phi float [ %1531, %1528 ], [ 0.000000e+00, %1438 ]
  %1536 = phi float [ %1472, %1528 ], [ 1.000000e+00, %1438 ]
  %1537 = add i32 %43, 176
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 22
  %1541 = shl nuw nsw i32 %1540, 5
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 64
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1580, label %1547

; <label>:1547                                    ; preds = %1532
  %1548 = add i32 %43, 396
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 131072
  %1556 = icmp eq i32 %1555, 0
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = fmul fast float %1558, %245
  %1562 = fmul fast float %1559, %248
  %1563 = fmul fast float %1560, %251
  br i1 %1556, label %1570, label %1564

; <label>:1564                                    ; preds = %1547
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = fmul fast float %1566, %1561
  %1568 = fmul fast float %1566, %1562
  %1569 = fmul fast float %1566, %1563
  br label %1570

; <label>:1570                                    ; preds = %1564, %1547
  %1571 = phi float [ %1567, %1564 ], [ %1561, %1547 ]
  %1572 = phi float [ %1568, %1564 ], [ %1562, %1547 ]
  %1573 = phi float [ %1569, %1564 ], [ %1563, %1547 ]
  %1574 = fmul fast float %1571, %1542
  %1575 = select i1 %183, float %1574, float %1571
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = select i1 %183, float 0.000000e+00, float %1571
  %1578 = select i1 %183, float %1576, float %1572
  %1579 = select i1 %183, float 0.000000e+00, float %1573
  br label %1580

; <label>:1580                                    ; preds = %1570, %1532
  %1581 = phi float [ %1577, %1570 ], [ 0.000000e+00, %1532 ]
  %1582 = phi float [ %1578, %1570 ], [ 0.000000e+00, %1532 ]
  %1583 = phi float [ %1579, %1570 ], [ 0.000000e+00, %1532 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 1024
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1618, label %1588

; <label>:1588                                    ; preds = %1580
  %1589 = add i32 %43, 168
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = lshr i32 %1591, 8
  %1596 = and i32 %1595, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1591, 16
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = fmul fast float %1594, %1594
  %1604 = fmul fast float %1598, %1598
  %1605 = fmul fast float %1602, %1602
  %1606 = add i32 %43, 460
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = add i32 %1608, 0
  %1610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1610, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.ResRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.ResRet.f32 %1611, 2
  %1615 = fmul fast float %1603, %1612
  %1616 = fmul fast float %1604, %1613
  %1617 = fmul fast float %1605, %1614
  br label %1618

; <label>:1618                                    ; preds = %1588, %1580
  %1619 = phi float [ %1615, %1588 ], [ 0.000000e+00, %1580 ]
  %1620 = phi float [ %1616, %1588 ], [ 0.000000e+00, %1580 ]
  %1621 = phi float [ %1617, %1588 ], [ 0.000000e+00, %1580 ]
  %1622 = fcmp fast ogt float %1619, 0.000000e+00
  %1623 = fcmp fast ogt float %1620, 0.000000e+00
  %1624 = fcmp fast ogt float %1621, 0.000000e+00
  %1625 = call float @dx.op.unary.f32(i32 23, float %1619)  ; Log(value)
  %1626 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  %1627 = call float @dx.op.unary.f32(i32 23, float %1621)  ; Log(value)
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = lshr i32 %1629, 7
  %1631 = and i32 %1630, 32752
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = fmul fast float %1625, 0xBFE62E4300000000
  %1634 = fmul fast float %1633, %1632
  %1635 = fmul fast float %1626, 0xBFE62E4300000000
  %1636 = fmul fast float %1635, %1632
  %1637 = fmul fast float %1627, 0xBFE62E4300000000
  %1638 = fmul fast float %1637, %1632
  %1639 = select i1 %1622, float %1634, float 1.270000e+02
  %1640 = select i1 %1623, float %1636, float 1.270000e+02
  %1641 = select i1 %1624, float %1638, float 1.270000e+02
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 26624
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1682, label %1646

; <label>:1646                                    ; preds = %1618
  %1647 = add i32 %43, 476
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = add i32 %1649, 0
  %1651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1651, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 1048576
  %1657 = icmp ne i32 %1656, 0
  %1658 = and i32 %1655, 2048
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1669, label %1660

; <label>:1660                                    ; preds = %1646
  %1661 = extractvalue %dx.types.ResRet.f32 %1652, 3
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = shl i32 %1663, 4
  %1665 = and i32 %1664, 32752
  %1666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1665)  ; LegacyF16ToF32(value)
  %1667 = fmul fast float %1666, %1661
  %1668 = call float @dx.op.binary.f32(i32 35, float %1667, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1669

; <label>:1669                                    ; preds = %1660, %1646
  %1670 = phi float [ %1668, %1660 ], [ 0x3F70101020000000, %1646 ]
  %1671 = and i32 %1655, 16384
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1682, label %1673

; <label>:1673                                    ; preds = %1669
  %1674 = add i32 %43, 112
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1674, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = lshr i32 %1676, 24
  %1678 = uitofp i32 %1677 to float
  %1679 = fmul fast float %1653, 0x3F70101020000000
  %1680 = select i1 %1657, float 0x3F70101020000000, float %1679
  %1681 = fmul fast float %1680, %1678
  br label %1682

; <label>:1682                                    ; preds = %1673, %1669, %1618
  %1683 = phi float [ %1670, %1673 ], [ %1670, %1669 ], [ 0x3F70101020000000, %1618 ]
  %1684 = phi float [ %1681, %1673 ], [ 0.000000e+00, %1669 ], [ 0.000000e+00, %1618 ]
  %1685 = add i32 %43, 112
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = lshr i32 %1687, 8
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1694 = fmul fast float %1692, %1693
  %1695 = fadd fast float %1694, %1689
  %1696 = fmul fast float %1695, 0x3F70101020000000
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  br i1 %937, label %1698, label %1733

; <label>:1698                                    ; preds = %1682
  %1699 = fmul fast float %1683, 2.000000e+00
  %1700 = fcmp fast olt float %1639, 1.270000e+02
  %1701 = fcmp fast olt float %1640, 1.270000e+02
  %1702 = fcmp fast olt float %1641, 1.270000e+02
  %1703 = fmul fast float %1639, 0xBFF7154760000000
  %1704 = fmul fast float %1703, %1699
  %1705 = fmul fast float %1640, 0xBFF7154760000000
  %1706 = fmul fast float %1705, %1699
  %1707 = fmul fast float %1641, 0xBFF7154760000000
  %1708 = fmul fast float %1707, %1699
  %1709 = call float @dx.op.unary.f32(i32 21, float %1704)  ; Exp(value)
  %1710 = call float @dx.op.unary.f32(i32 21, float %1706)  ; Exp(value)
  %1711 = call float @dx.op.unary.f32(i32 21, float %1708)  ; Exp(value)
  %1712 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1713 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1714 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = select i1 %1700, float %1715, float -1.000000e+00
  %1717 = fadd fast float %1713, -1.000000e+00
  %1718 = select i1 %1701, float %1717, float -1.000000e+00
  %1719 = fadd fast float %1714, -1.000000e+00
  %1720 = select i1 %1702, float %1719, float -1.000000e+00
  %1721 = fmul fast float %1716, %1233
  %1722 = fmul fast float %1718, %1233
  %1723 = fmul fast float %1720, %1233
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fadd fast float %1723, 1.000000e+00
  %1727 = fmul fast float %1724, %927
  %1728 = fmul fast float %1725, %928
  %1729 = fmul fast float %1726, %929
  %1730 = fmul fast float %1724, %924
  %1731 = fmul fast float %1725, %925
  %1732 = fmul fast float %1726, %926
  br label %1733

; <label>:1733                                    ; preds = %1698, %1682
  %1734 = phi float [ %1730, %1698 ], [ %924, %1682 ]
  %1735 = phi float [ %1731, %1698 ], [ %925, %1682 ]
  %1736 = phi float [ %1732, %1698 ], [ %926, %1682 ]
  %1737 = phi float [ %1727, %1698 ], [ %927, %1682 ]
  %1738 = phi float [ %1728, %1698 ], [ %928, %1682 ]
  %1739 = phi float [ %1729, %1698 ], [ %929, %1682 ]
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 3
  %1743 = icmp eq i32 %1742, 3
  br i1 %1743, label %1822, label %1744

; <label>:1744                                    ; preds = %1733
  %1745 = and i32 %1741, 16
  %1746 = icmp ne i32 %1745, 0
  %1747 = select i1 %1746, float %1233, float 0.000000e+00
  %1748 = icmp eq i32 %1742, 0
  br i1 %1748, label %1749, label %1777

; <label>:1749                                    ; preds = %1744
  %1750 = and i32 %1741, 64
  %1751 = icmp ne i32 %1750, 0
  %1752 = select i1 %1751, float %1233, float 0.000000e+00
  %1753 = fsub fast float %1453, %1737
  %1754 = fsub fast float %1454, %1738
  %1755 = fsub fast float %1455, %1739
  %1756 = fmul fast float %1747, %1753
  %1757 = fmul fast float %1747, %1754
  %1758 = fmul fast float %1747, %1755
  %1759 = fadd fast float %1756, %1737
  %1760 = fadd fast float %1757, %1738
  %1761 = fadd fast float %1758, %1739
  %1762 = fsub fast float %1439, %930
  %1763 = fmul fast float %1747, %1762
  %1764 = fadd fast float %1763, %930
  %1765 = fsub fast float %1581, %1734
  %1766 = fsub fast float %1582, %1735
  %1767 = fsub fast float %1583, %1736
  %1768 = fmul fast float %1752, %1765
  %1769 = fmul fast float %1752, %1766
  %1770 = fmul fast float %1752, %1767
  %1771 = fadd fast float %1768, %1734
  %1772 = fadd fast float %1769, %1735
  %1773 = fadd fast float %1770, %1736
  %1774 = fsub fast float %1697, %935
  %1775 = fmul fast float %1747, %1774
  %1776 = fadd fast float %1775, %935
  br label %1822

; <label>:1777                                    ; preds = %1744
  %1778 = icmp eq i32 %1742, 1
  br i1 %1778, label %1779, label %1792

; <label>:1779                                    ; preds = %1777
  %1780 = fadd fast float %1453, -1.000000e+00
  %1781 = fadd fast float %1454, -1.000000e+00
  %1782 = fadd fast float %1455, -1.000000e+00
  %1783 = fmul fast float %1747, %1780
  %1784 = fmul fast float %1747, %1781
  %1785 = fmul fast float %1747, %1782
  %1786 = fadd fast float %1783, 1.000000e+00
  %1787 = fadd fast float %1784, 1.000000e+00
  %1788 = fadd fast float %1785, 1.000000e+00
  %1789 = fmul fast float %1786, %1737
  %1790 = fmul fast float %1787, %1738
  %1791 = fmul fast float %1788, %1739
  br label %1822

; <label>:1792                                    ; preds = %1777
  %1793 = icmp eq i32 %1742, 2
  br i1 %1793, label %1794, label %1822

; <label>:1794                                    ; preds = %1792
  %1795 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1796 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1797 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1798 = fadd fast float %1795, -5.000000e-01
  %1799 = fadd fast float %1796, -5.000000e-01
  %1800 = fadd fast float %1797, -5.000000e-01
  %1801 = fmul fast float %1798, %1747
  %1802 = fmul fast float %1799, %1747
  %1803 = fmul fast float %1800, %1747
  %1804 = fadd fast float %1801, 5.000000e-01
  %1805 = fadd fast float %1802, 5.000000e-01
  %1806 = fadd fast float %1803, 5.000000e-01
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fsub fast float 1.000000e+00, %1807
  %1809 = fmul fast float %1808, %1737
  %1810 = fadd fast float %1809, %1807
  %1811 = fmul fast float %1810, %1737
  %1812 = fmul fast float %1805, 2.000000e+00
  %1813 = fsub fast float 1.000000e+00, %1812
  %1814 = fmul fast float %1813, %1738
  %1815 = fadd fast float %1814, %1812
  %1816 = fmul fast float %1815, %1738
  %1817 = fmul fast float %1806, 2.000000e+00
  %1818 = fsub fast float 1.000000e+00, %1817
  %1819 = fmul fast float %1818, %1739
  %1820 = fadd fast float %1819, %1817
  %1821 = fmul fast float %1820, %1739
  br label %1822

; <label>:1822                                    ; preds = %1794, %1792, %1779, %1749, %1733
  %1823 = phi float [ %1734, %1733 ], [ %1734, %1794 ], [ %1734, %1792 ], [ %1734, %1779 ], [ %1771, %1749 ]
  %1824 = phi float [ %1735, %1733 ], [ %1735, %1794 ], [ %1735, %1792 ], [ %1735, %1779 ], [ %1772, %1749 ]
  %1825 = phi float [ %1736, %1733 ], [ %1736, %1794 ], [ %1736, %1792 ], [ %1736, %1779 ], [ %1773, %1749 ]
  %1826 = phi float [ %1737, %1733 ], [ %1811, %1794 ], [ %1737, %1792 ], [ %1789, %1779 ], [ %1759, %1749 ]
  %1827 = phi float [ %1738, %1733 ], [ %1816, %1794 ], [ %1738, %1792 ], [ %1790, %1779 ], [ %1760, %1749 ]
  %1828 = phi float [ %1739, %1733 ], [ %1821, %1794 ], [ %1739, %1792 ], [ %1791, %1779 ], [ %1761, %1749 ]
  %1829 = phi float [ %930, %1733 ], [ %930, %1794 ], [ %930, %1792 ], [ %930, %1779 ], [ %1764, %1749 ]
  %1830 = phi float [ %935, %1733 ], [ %935, %1794 ], [ %935, %1792 ], [ %935, %1779 ], [ %1776, %1749 ]
  %1831 = and i32 %1741, 12
  %1832 = icmp eq i32 %1831, 12
  br i1 %1832, label %1915, label %1833

; <label>:1833                                    ; preds = %1822
  %1834 = and i32 %1741, 2097184
  %1835 = icmp eq i32 %1834, 2097184
  %1836 = select i1 %1835, float %1233, float 0.000000e+00
  %1837 = and i32 %1741, 4194336
  %1838 = icmp eq i32 %1837, 4194336
  %1839 = select i1 %1838, float %1233, float 0.000000e+00
  %1840 = and i32 %1741, 8388640
  %1841 = icmp eq i32 %1840, 8388640
  %1842 = select i1 %1841, float %1233, float 0.000000e+00
  %1843 = and i32 %1741, 16384
  %1844 = icmp ne i32 %1843, 0
  %1845 = select i1 %1844, float %1233, float 0.000000e+00
  %1846 = icmp eq i32 %1831, 0
  br i1 %1846, label %1847, label %1863

; <label>:1847                                    ; preds = %1833
  %1848 = fsub fast float %1534, %922
  %1849 = fsub fast float %1535, %923
  %1850 = fmul fast float %1836, %1848
  %1851 = fmul fast float %1836, %1849
  %1852 = fadd fast float %1850, %922
  %1853 = fadd fast float %1851, %923
  %1854 = fsub fast float %1536, %933
  %1855 = fmul fast float %1839, %1854
  %1856 = fadd fast float %1855, %933
  %1857 = fsub fast float %1533, %932
  %1858 = fmul fast float %1842, %1857
  %1859 = fadd fast float %1858, %932
  %1860 = fsub fast float %1684, %934
  %1861 = fmul fast float %1845, %1860
  %1862 = fadd fast float %1861, %934
  br label %1915

; <label>:1863                                    ; preds = %1833
  %1864 = icmp eq i32 %1831, 4
  br i1 %1864, label %1865, label %1899

; <label>:1865                                    ; preds = %1863
  %1866 = fmul fast float %1836, %1534
  %1867 = fmul fast float %1836, %1535
  %1868 = fadd fast float %1866, %922
  %1869 = fadd fast float %1867, %923
  %1870 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1871 = fsub fast float %1870, %933
  %1872 = fmul fast float %1871, %1839
  %1873 = fadd fast float %1872, %933
  %1874 = fadd fast float %1533, %932
  %1875 = fmul fast float %1874, 0x3FF337FAE0000000
  %1876 = fmul fast float %932, %932
  %1877 = fmul fast float %1533, %1533
  %1878 = fadd fast float %1877, %1876
  %1879 = fmul fast float %1878, 0x3FE5152B00000000
  %1880 = fmul fast float %932, 0xBFCC1F85E0000000
  %1881 = fmul fast float %1880, %1533
  %1882 = fadd fast float %1881, 0xBFE1363700000000
  %1883 = fadd fast float %1882, %1875
  %1884 = fsub fast float %1883, %1879
  %1885 = fmul fast float %1874, 0x3FBA6F0D00000000
  %1886 = fmul fast float %1878, 0x3FD0432880000000
  %1887 = fmul fast float %932, 0xBFEF110800000000
  %1888 = fmul fast float %1887, %1533
  %1889 = fadd fast float %1888, 1.000000e+00
  %1890 = fsub fast float %1889, %1885
  %1891 = fadd fast float %1890, %1886
  %1892 = fdiv fast float %1884, %1891
  %1893 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1894 = fsub fast float %1893, %932
  %1895 = fmul fast float %1894, %1842
  %1896 = fadd fast float %1895, %932
  %1897 = fmul fast float %1845, %1684
  %1898 = fadd fast float %1897, %934
  br label %1915

; <label>:1899                                    ; preds = %1863
  %1900 = icmp eq i32 %1831, 8
  br i1 %1900, label %1901, label %1915

; <label>:1901                                    ; preds = %1899
  %1902 = fmul fast float %1836, %1534
  %1903 = fmul fast float %1836, %1535
  %1904 = fadd fast float %1902, %922
  %1905 = fadd fast float %1903, %923
  %1906 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1907 = fsub fast float %1906, %933
  %1908 = fmul fast float %1907, %1839
  %1909 = fadd fast float %1908, %933
  %1910 = fsub fast float %1533, %932
  %1911 = fmul fast float %1842, %1910
  %1912 = fadd fast float %1911, %932
  %1913 = fmul fast float %1845, %1684
  %1914 = fadd fast float %1913, %934
  br label %1915

; <label>:1915                                    ; preds = %1901, %1899, %1865, %1847, %1822, %1232, %936, %921
  %1916 = phi float [ %922, %1822 ], [ %922, %1232 ], [ %922, %921 ], [ %1904, %1901 ], [ %922, %1899 ], [ %1868, %1865 ], [ %1852, %1847 ], [ %922, %936 ]
  %1917 = phi float [ %923, %1822 ], [ %923, %1232 ], [ %923, %921 ], [ %1905, %1901 ], [ %923, %1899 ], [ %1869, %1865 ], [ %1853, %1847 ], [ %923, %936 ]
  %1918 = phi float [ %1823, %1822 ], [ %924, %1232 ], [ %924, %921 ], [ %1823, %1901 ], [ %1823, %1899 ], [ %1823, %1865 ], [ %1823, %1847 ], [ %924, %936 ]
  %1919 = phi float [ %1824, %1822 ], [ %925, %1232 ], [ %925, %921 ], [ %1824, %1901 ], [ %1824, %1899 ], [ %1824, %1865 ], [ %1824, %1847 ], [ %925, %936 ]
  %1920 = phi float [ %1825, %1822 ], [ %926, %1232 ], [ %926, %921 ], [ %1825, %1901 ], [ %1825, %1899 ], [ %1825, %1865 ], [ %1825, %1847 ], [ %926, %936 ]
  %1921 = phi float [ %1826, %1822 ], [ %927, %1232 ], [ %927, %921 ], [ %1826, %1901 ], [ %1826, %1899 ], [ %1826, %1865 ], [ %1826, %1847 ], [ %927, %936 ]
  %1922 = phi float [ %1827, %1822 ], [ %928, %1232 ], [ %928, %921 ], [ %1827, %1901 ], [ %1827, %1899 ], [ %1827, %1865 ], [ %1827, %1847 ], [ %928, %936 ]
  %1923 = phi float [ %1828, %1822 ], [ %929, %1232 ], [ %929, %921 ], [ %1828, %1901 ], [ %1828, %1899 ], [ %1828, %1865 ], [ %1828, %1847 ], [ %929, %936 ]
  %1924 = phi float [ %1829, %1822 ], [ %930, %1232 ], [ %930, %921 ], [ %1829, %1901 ], [ %1829, %1899 ], [ %1829, %1865 ], [ %1829, %1847 ], [ %930, %936 ]
  %1925 = phi float [ %932, %1822 ], [ %932, %1232 ], [ %932, %921 ], [ %1912, %1901 ], [ %932, %1899 ], [ %1896, %1865 ], [ %1859, %1847 ], [ %932, %936 ]
  %1926 = phi float [ %933, %1822 ], [ %933, %1232 ], [ %933, %921 ], [ %1909, %1901 ], [ %933, %1899 ], [ %1873, %1865 ], [ %1856, %1847 ], [ %933, %936 ]
  %1927 = phi float [ %934, %1822 ], [ %934, %1232 ], [ %934, %921 ], [ %1914, %1901 ], [ %934, %1899 ], [ %1898, %1865 ], [ %1862, %1847 ], [ %934, %936 ]
  %1928 = phi float [ %1830, %1822 ], [ %935, %1232 ], [ %935, %921 ], [ %1830, %1901 ], [ %1830, %1899 ], [ %1830, %1865 ], [ %1830, %1847 ], [ %935, %936 ]
  br i1 %372, label %2908, label %1929

; <label>:1929                                    ; preds = %1915
  %1930 = icmp ult i32 %425, 3
  %1931 = add i32 %43, 56
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = add i32 %43, 60
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = or i32 %1936, %1933
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %2908, label %1939

; <label>:1939                                    ; preds = %1929
  %1940 = and i32 %1933, 262144
  %1941 = icmp ne i32 %1940, 0
  %1942 = select i1 %1941, float %46, float 1.000000e+00
  %1943 = select i1 %1941, float %47, float 0.000000e+00
  %1944 = select i1 %1941, float %48, float 0.000000e+00
  %1945 = select i1 %1941, float %49, float 1.000000e+00
  %1946 = select i1 %1941, float %50, float %66
  %1947 = select i1 %1941, float %51, float %67
  %1948 = add i32 %43, 316
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = lshr i32 %1950, 16
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = fmul fast float %1952, 0x3F50624DE0000000
  %1954 = add i32 %43, 120
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = lshr i32 %1956, 16
  %1958 = and i32 %1957, 255
  %1959 = lshr i32 %1956, 24
  %1960 = add i32 %43, 324
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 65535
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = lshr i32 %1962, 16
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = add i32 %43, 64
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = lshr i32 %1969, 22
  %1971 = shl nuw nsw i32 %1970, 5
  %1972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1971)  ; LegacyF16ToF32(value)
  %1973 = shl i32 %1969, 4
  %1974 = and i32 %1973, 32752
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = lshr i32 %1969, 7
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1981 = fmul fast float %1980, 1.000000e+03
  %1982 = fmul fast float %322, %1981
  %1983 = call float @dx.op.unary.f32(i32 22, float %1982)  ; Frc(value)
  %1984 = fadd fast float %1983, %312
  %1985 = fmul fast float %323, %1981
  %1986 = call float @dx.op.unary.f32(i32 22, float %1985)  ; Frc(value)
  %1987 = fadd fast float %1986, %314
  %1988 = fmul fast float %1953, %1981
  %1989 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %1990 = fmul fast float %1989, 0x401921FB60000000
  %1991 = fadd fast float %1990, %1972
  %1992 = call float @dx.op.unary.f32(i32 13, float %1991)  ; Sin(value)
  %1993 = call float @dx.op.unary.f32(i32 12, float %1991)  ; Cos(value)
  %1994 = fsub fast float -0.000000e+00, %1992
  %1995 = fadd fast float %1946, -5.000000e-01
  %1996 = fadd fast float %1947, -5.000000e-01
  %1997 = fmul fast float %1964, %1995
  %1998 = fmul fast float %1966, %1996
  %1999 = fadd fast float %1997, 5.000000e-01
  %2000 = fadd fast float %1998, 5.000000e-01
  %2001 = fmul fast float %1975, %1999
  %2002 = fmul fast float %1978, %2000
  %2003 = fmul fast float %1993, %2001
  %2004 = call float @dx.op.tertiary.f32(i32 46, float %1994, float %2002, float %2003)  ; FMad(a,b,c)
  %2005 = fmul fast float %1992, %2001
  %2006 = call float @dx.op.tertiary.f32(i32 46, float %1993, float %2002, float %2005)  ; FMad(a,b,c)
  %2007 = fadd fast float %1984, %2004
  %2008 = fadd fast float %1987, %2006
  %2009 = icmp ugt i32 %1958, 1
  %2010 = icmp ugt i32 %1956, 33554431
  %2011 = or i1 %2010, %2009
  br i1 %2011, label %2012, label %2037

; <label>:2012                                    ; preds = %1939
  %2013 = add i32 %43, 260
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = fmul fast float %1980, %2017
  %2019 = call float @dx.op.unary.f32(i32 22, float %2018)  ; Frc(value)
  %2020 = mul nuw nsw i32 %1958, %1959
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2019, %2021
  %2023 = call float @dx.op.unary.f32(i32 27, float %2022)  ; Round_ni(value)
  %2024 = fptoui float %2023 to i32
  %2025 = urem i32 %2024, %1958
  %2026 = udiv i32 %2024, %1959
  %2027 = call float @dx.op.unary.f32(i32 22, float %2007)  ; Frc(value)
  %2028 = call float @dx.op.unary.f32(i32 22, float %2008)  ; Frc(value)
  %2029 = uitofp i32 %2025 to float
  %2030 = uitofp i32 %2026 to float
  %2031 = fadd fast float %2027, %2029
  %2032 = fadd fast float %2028, %2030
  %2033 = uitofp i32 %1958 to float
  %2034 = uitofp i32 %1959 to float
  %2035 = fdiv fast float %2031, %2033
  %2036 = fdiv fast float %2032, %2034
  br label %2037

; <label>:2037                                    ; preds = %2012, %1939
  %2038 = phi float [ %2035, %2012 ], [ %2007, %1939 ]
  %2039 = phi float [ %2036, %2012 ], [ %2008, %1939 ]
  %2040 = and i32 %1933, 16777216
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2151, label %2042

; <label>:2042                                    ; preds = %2037
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.CBufRet.f32 %2043, 2
  %2047 = fadd fast float %2044, %141
  %2048 = fadd fast float %2045, %142
  %2049 = fadd fast float %2046, %143
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = icmp eq i32 %44, 65535
  br i1 %2053, label %2148, label %2054

; <label>:2054                                    ; preds = %2042
  %2055 = lshr i32 %44, 1
  %2056 = shl i32 %2055, 2
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %44, 1
  %2060 = icmp ne i32 %2059, 0
  %2061 = lshr i32 %2058, 16
  %2062 = and i32 %2058, 65535
  %2063 = select i1 %2060, i32 %2061, i32 %2062
  %2064 = icmp eq i32 %2063, 65535
  br i1 %2064, label %2144, label %2065

; <label>:2065                                    ; preds = %2054
  %2066 = mul nuw nsw i32 %2063, 40
  %2067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = extractvalue %dx.types.ResRet.f32 %2067, 1
  %2070 = extractvalue %dx.types.ResRet.f32 %2067, 2
  %2071 = add nuw nsw i32 %2066, 12
  %2072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = add nuw nsw i32 %2066, 24
  %2077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.ResRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.ResRet.f32 %2077, 2
  %2081 = add nuw nsw i32 %2066, 36
  %2082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = fsub fast float %2047, %2068
  %2085 = fsub fast float %2048, %2069
  %2086 = fsub fast float %2049, %2070
  %2087 = fmul fast float %2083, %2084
  %2088 = fmul fast float %2083, %2085
  %2089 = fmul fast float %2083, %2086
  %2090 = call float @dx.op.unary.f32(i32 27, float %2087)  ; Round_ni(value)
  %2091 = call float @dx.op.unary.f32(i32 27, float %2088)  ; Round_ni(value)
  %2092 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fmul fast float %2093, %2073
  %2097 = fmul fast float %2094, %2074
  %2098 = fmul fast float %2095, %2075
  %2099 = shl i32 %44, 2
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %2101, 0
  %2103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2104 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2105 = call float @dx.op.unary.f32(i32 22, float %2097)  ; Frc(value)
  %2106 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2103, %dx.types.Handle %40, float %2104, float %2105, float %2106, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.ResRet.f32 %2107, 1
  %2110 = extractvalue %dx.types.ResRet.f32 %2107, 2
  %2111 = fmul fast float %2108, 1.023000e+03
  %2112 = fmul fast float %2109, 1.023000e+03
  %2113 = fmul fast float %2110, 1.023000e+03
  %2114 = fadd fast float %2111, 5.000000e-01
  %2115 = fadd fast float %2112, 5.000000e-01
  %2116 = fadd fast float %2113, 5.000000e-01
  %2117 = call float @dx.op.unary.f32(i32 27, float %2114)  ; Round_ni(value)
  %2118 = call float @dx.op.unary.f32(i32 27, float %2115)  ; Round_ni(value)
  %2119 = call float @dx.op.unary.f32(i32 27, float %2116)  ; Round_ni(value)
  %2120 = fsub fast float %2087, %2090
  %2121 = fsub fast float %2088, %2091
  %2122 = fsub fast float %2089, %2092
  %2123 = fmul fast float %2120, 7.500000e-01
  %2124 = fmul fast float %2121, 7.500000e-01
  %2125 = fmul fast float %2122, 7.500000e-01
  %2126 = fadd fast float %2090, 1.250000e-01
  %2127 = fadd fast float %2126, %2123
  %2128 = fadd fast float %2127, %2117
  %2129 = fadd fast float %2091, 1.250000e-01
  %2130 = fadd fast float %2129, %2124
  %2131 = fadd fast float %2130, %2118
  %2132 = fadd fast float %2092, 1.250000e-01
  %2133 = fadd fast float %2132, %2125
  %2134 = fadd fast float %2133, %2119
  %2135 = fmul fast float %2128, %2078
  %2136 = fmul fast float %2131, %2079
  %2137 = fmul fast float %2134, %2080
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %2139, 0
  %2141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2141, %dx.types.Handle %38, float %2135, float %2136, float %2137, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  br label %2144

; <label>:2144                                    ; preds = %2065, %2054
  %2145 = phi float [ %2143, %2065 ], [ -1.000000e+00, %2054 ]
  %2146 = fadd fast float %2145, %2052
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  br label %2148

; <label>:2148                                    ; preds = %2144, %2042
  %2149 = phi float [ %2147, %2144 ], [ %2052, %2042 ]
  %2150 = fmul fast float %2149, %421
  br label %2151

; <label>:2151                                    ; preds = %2148, %2037
  %2152 = phi float [ %2150, %2148 ], [ %421, %2037 ]
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 256
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2203, label %2157

; <label>:2157                                    ; preds = %2151
  %2158 = add i32 %43, 432
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2162, %dx.types.Handle %75, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = add i32 %43, 132
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = shl i32 %2167, 4
  %2169 = and i32 %2168, 32752
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = lshr i32 %2167, 7
  %2172 = and i32 %2171, 32752
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = fsub fast float 1.000000e+00, %2152
  %2175 = call float @dx.op.binary.f32(i32 35, float %2174, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2176 = bitcast float %2152 to i32
  %2177 = sitofp i32 %2176 to float
  %2178 = fadd fast float %2177, 0xC1CFBF8940000000
  %2179 = fmul fast float %2173, %2178
  %2180 = fadd fast float %2179, 0x41CFBF8940000000
  %2181 = fptosi float %2180 to i32
  %2182 = bitcast i32 %2181 to float
  %2183 = bitcast float %2175 to i32
  %2184 = sitofp i32 %2183 to float
  %2185 = fadd fast float %2184, 0xC1CFBF8940000000
  %2186 = fmul fast float %2185, %2173
  %2187 = fadd fast float %2186, 0x41CFBF8940000000
  %2188 = fptosi float %2187 to i32
  %2189 = bitcast i32 %2188 to float
  %2190 = fmul fast float %2182, %2170
  %2191 = fmul fast float %2189, %2170
  %2192 = fsub fast float %2175, %2190
  %2193 = fadd fast float %2191, %2175
  %2194 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2195 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2196 = fsub fast float %2164, %2194
  %2197 = fsub fast float %2195, %2194
  %2198 = bitcast float %2197 to i32
  %2199 = sub nsw i32 2129859010, %2198
  %2200 = bitcast i32 %2199 to float
  %2201 = fmul fast float %2200, %2196
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  br label %2203

; <label>:2203                                    ; preds = %2157, %2151
  %2204 = phi float [ %2202, %2157 ], [ %2152, %2151 ]
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 128
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2225, label %2209

; <label>:2209                                    ; preds = %2203
  %2210 = add i32 %43, 416
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %75, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 524288
  %2220 = icmp ne i32 %2219, 0
  %2221 = fcmp fast ogt float %2216, 0x3FE0101020000000
  %2222 = select i1 %2221, float 1.000000e+00, float 0.000000e+00
  %2223 = select i1 %2220, float %2222, float %2216
  %2224 = fmul fast float %2223, %2204
  br label %2225

; <label>:2225                                    ; preds = %2209, %2203
  %2226 = phi float [ %2224, %2209 ], [ %2204, %2203 ]
  %2227 = fcmp fast ult float %2226, 0x3F70101020000000
  br i1 %2227, label %2908, label %2228

; <label>:2228                                    ; preds = %2225
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 16
  %2232 = icmp eq i32 %2231, 0
  br i1 %2232, label %2431, label %2233

; <label>:2233                                    ; preds = %2228
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = add i32 %43, 368
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = add i32 %2238, 0
  %2240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2240, %dx.types.Handle %74, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.f32 %2241, 1
  %2244 = extractvalue %dx.types.ResRet.f32 %2241, 2
  %2245 = extractvalue %dx.types.ResRet.f32 %2241, 3
  %2246 = and i32 %2235, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = lshr i32 %2235, 8
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2245, %2247
  %2252 = fadd fast float %2251, %2250
  %2253 = fmul fast float %2252, 0x3F70101000000000
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 512
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2266, label %2258

; <label>:2258                                    ; preds = %2233
  %2259 = add i32 %43, 448
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %2261, 0
  %2263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2263, %dx.types.Handle %75, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  br label %2266

; <label>:2266                                    ; preds = %2258, %2233
  %2267 = phi float [ %2265, %2258 ], [ 1.000000e+00, %2233 ]
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 33554432
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2378, label %2272

; <label>:2272                                    ; preds = %2266
  %2273 = add i32 %43, 256
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 65535
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2275, 16
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = add i32 %43, 260
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 65535
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 24
  %2288 = uitofp i32 %2287 to float
  %2289 = fmul fast float %2288, 0x3F70101020000000
  %2290 = and i32 %2286, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2286, 8
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = lshr i32 %2286, 16
  %2298 = and i32 %2297, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = add i32 %43, 252
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = lshr i32 %2303, 24
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101020000000
  %2307 = and i32 %2303, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = lshr i32 %2303, 8
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2312, 0x3F70101020000000
  %2314 = lshr i32 %2303, 16
  %2315 = and i32 %2314, 255
  %2316 = uitofp i32 %2315 to float
  %2317 = fmul fast float %2316, 0x3F70101020000000
  %2318 = bitcast float %2242 to i32
  %2319 = ashr i32 %2318, 1
  %2320 = sub nsw i32 1597463174, %2319
  %2321 = bitcast i32 %2320 to float
  %2322 = fmul fast float %2242, 5.000000e-01
  %2323 = fmul fast float %2321, %2321
  %2324 = fmul fast float %2323, %2322
  %2325 = fsub fast float 1.500000e+00, %2324
  %2326 = fmul fast float %2321, %2242
  %2327 = fmul fast float %2326, %2325
  %2328 = bitcast float %2243 to i32
  %2329 = ashr i32 %2328, 1
  %2330 = sub nsw i32 1597463174, %2329
  %2331 = bitcast i32 %2330 to float
  %2332 = fmul fast float %2243, 5.000000e-01
  %2333 = fmul fast float %2331, %2331
  %2334 = fmul fast float %2333, %2332
  %2335 = fsub fast float 1.500000e+00, %2334
  %2336 = fmul fast float %2331, %2243
  %2337 = fmul fast float %2336, %2335
  %2338 = bitcast float %2244 to i32
  %2339 = ashr i32 %2338, 1
  %2340 = sub nsw i32 1597463174, %2339
  %2341 = bitcast i32 %2340 to float
  %2342 = fmul fast float %2244, 5.000000e-01
  %2343 = fmul fast float %2341, %2341
  %2344 = fmul fast float %2343, %2342
  %2345 = fsub fast float 1.500000e+00, %2344
  %2346 = fmul fast float %2341, %2244
  %2347 = fmul fast float %2346, %2345
  %2348 = fsub fast float %2327, %2309
  %2349 = fsub fast float %2337, %2313
  %2350 = fsub fast float %2347, %2317
  %2351 = fmul fast float %2348, %2277
  %2352 = fmul fast float %2349, %2279
  %2353 = fmul fast float %2350, %2284
  %2354 = fadd fast float %2351, %2292
  %2355 = fadd fast float %2352, %2296
  %2356 = fadd fast float %2353, %2300
  %2357 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2358 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2359 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2360 = fmul fast float %2357, %2357
  %2361 = fmul fast float %2358, %2358
  %2362 = fmul fast float %2359, %2359
  %2363 = fsub fast float %2360, %2242
  %2364 = fsub fast float %2361, %2243
  %2365 = fsub fast float %2362, %2244
  %2366 = fmul fast float %2363, %2267
  %2367 = fmul fast float %2364, %2267
  %2368 = fmul fast float %2365, %2267
  %2369 = fadd fast float %2366, %2242
  %2370 = fadd fast float %2367, %2243
  %2371 = fadd fast float %2368, %2244
  %2372 = fadd fast float %2289, %2253
  %2373 = fsub fast float %2372, %2306
  %2374 = call float @dx.op.unary.f32(i32 7, float %2373)  ; Saturate(value)
  %2375 = fsub fast float %2374, %2253
  %2376 = fmul fast float %2375, %2267
  %2377 = fadd fast float %2376, %2253
  br label %2431

; <label>:2378                                    ; preds = %2266
  %2379 = and i32 %2269, 134217728
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2415, label %2381

; <label>:2381                                    ; preds = %2378
  %2382 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2383 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2384 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2385 = fadd fast float %2382, -5.000000e-01
  %2386 = fadd fast float %2383, -5.000000e-01
  %2387 = fadd fast float %2384, -5.000000e-01
  %2388 = fmul fast float %2385, %2267
  %2389 = fmul fast float %2386, %2267
  %2390 = fmul fast float %2387, %2267
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = fadd fast float %2389, 5.000000e-01
  %2393 = fadd fast float %2390, 5.000000e-01
  %2394 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2395 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2396 = call float @dx.op.unary.f32(i32 24, float %2244)  ; Sqrt(value)
  %2397 = fmul fast float %2391, 2.000000e+00
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = fmul fast float %2398, %2394
  %2400 = fadd fast float %2399, %2397
  %2401 = fmul fast float %2400, %2394
  %2402 = fmul fast float %2392, 2.000000e+00
  %2403 = fsub fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2403, %2395
  %2405 = fadd fast float %2404, %2402
  %2406 = fmul fast float %2405, %2395
  %2407 = fmul fast float %2393, 2.000000e+00
  %2408 = fsub fast float 1.000000e+00, %2407
  %2409 = fmul fast float %2408, %2396
  %2410 = fadd fast float %2409, %2407
  %2411 = fmul fast float %2410, %2396
  %2412 = fmul fast float %2401, %2401
  %2413 = fmul fast float %2406, %2406
  %2414 = fmul fast float %2411, %2411
  br label %2431

; <label>:2415                                    ; preds = %2378
  %2416 = fmul fast float %299, %299
  %2417 = fmul fast float %303, %303
  %2418 = fmul fast float %307, %307
  %2419 = fadd fast float %2416, -1.000000e+00
  %2420 = fadd fast float %2417, -1.000000e+00
  %2421 = fadd fast float %2418, -1.000000e+00
  %2422 = fmul fast float %2267, %2419
  %2423 = fmul fast float %2267, %2420
  %2424 = fmul fast float %2267, %2421
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fadd fast float %2423, 1.000000e+00
  %2427 = fadd fast float %2424, 1.000000e+00
  %2428 = fmul fast float %2425, %2242
  %2429 = fmul fast float %2426, %2243
  %2430 = fmul fast float %2427, %2244
  br label %2431

; <label>:2431                                    ; preds = %2415, %2381, %2272, %2228
  %2432 = phi float [ %2377, %2272 ], [ %2253, %2381 ], [ %2253, %2415 ], [ 0x3FA23C0BE0000000, %2228 ]
  %2433 = phi float [ %2369, %2272 ], [ %2412, %2381 ], [ %2428, %2415 ], [ 1.000000e+00, %2228 ]
  %2434 = phi float [ %2370, %2272 ], [ %2413, %2381 ], [ %2429, %2415 ], [ 1.000000e+00, %2228 ]
  %2435 = phi float [ %2371, %2272 ], [ %2414, %2381 ], [ %2430, %2415 ], [ 1.000000e+00, %2228 ]
  %2436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.i32 %2436, 1
  %2438 = and i32 %2437, 1
  %2439 = icmp ne i32 %2438, 0
  %2440 = add i32 %43, 356
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 32
  %2444 = icmp ne i32 %2443, 0
  %2445 = and i1 %2439, %2444
  %2446 = select i1 %2445, float 1.000000e+00, float %2433
  %2447 = select i1 %2445, float 0x3FD3333340000000, float %2434
  %2448 = select i1 %2445, float 0x3FD3333340000000, float %2435
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 32
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2525, label %2453

; <label>:2453                                    ; preds = %2431
  %2454 = add i32 %43, 124
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = add i32 %43, 384
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = add i32 %2459, 0
  %2461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2461, %dx.types.Handle %74, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2463 = extractvalue %dx.types.ResRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.ResRet.f32 %2462, 1
  %2465 = extractvalue %dx.types.ResRet.f32 %2462, 2
  %2466 = extractvalue %dx.types.ResRet.f32 %2462, 3
  %2467 = and i32 %2456, 255
  %2468 = uitofp i32 %2467 to float
  %2469 = lshr i32 %2456, 8
  %2470 = and i32 %2469, 255
  %2471 = uitofp i32 %2470 to float
  %2472 = lshr i32 %2456, 16
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = fmul fast float %2474, 0x3F70101000000000
  %2476 = fmul fast float %2463, %2468
  %2477 = fadd fast float %2476, %2471
  %2478 = fmul fast float %2477, 0x3F70101000000000
  %2479 = fadd fast float %2464, -5.000000e-01
  %2480 = fadd fast float %2466, -5.000000e-01
  %2481 = fmul fast float %2479, %2475
  %2482 = fmul fast float %2480, %2475
  %2483 = fadd fast float %2481, 5.000000e-01
  %2484 = fadd fast float %2482, 5.000000e-01
  %2485 = fmul fast float %2483, 2.000000e+00
  %2486 = fadd fast float %2485, -1.000000e+00
  %2487 = fmul fast float %2484, 2.000000e+00
  %2488 = fadd fast float %2487, -1.000000e+00
  %2489 = fadd fast float %2486, %2488
  %2490 = fmul fast float %2489, 5.000000e-01
  %2491 = fsub fast float %2486, %2488
  %2492 = fmul fast float %2491, 5.000000e-01
  %2493 = call float @dx.op.unary.f32(i32 6, float %2490)  ; FAbs(value)
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = call float @dx.op.unary.f32(i32 6, float %2492)  ; FAbs(value)
  %2496 = fsub fast float %2494, %2495
  %2497 = call float @dx.op.dot3.f32(i32 55, float %2490, float %2492, float %2496, float %2490, float %2492, float %2496)  ; Dot3(ax,ay,az,bx,by,bz)
  %2498 = call float @dx.op.unary.f32(i32 25, float %2497)  ; Rsqrt(value)
  %2499 = fmul fast float %2490, %2498
  %2500 = fmul fast float %2492, %2498
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 67108864
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2521, label %2505

; <label>:2505                                    ; preds = %2453
  %2506 = add i32 %43, 312
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 65535
  %2510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2509)  ; LegacyF16ToF32(value)
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 65535
  %2514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2513)  ; LegacyF16ToF32(value)
  %2515 = lshr i32 %2508, 16
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = fsub fast float %2478, %2516
  %2518 = fmul fast float %2517, %2510
  %2519 = fadd fast float %2518, %2514
  %2520 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  br label %2521

; <label>:2521                                    ; preds = %2505, %2453
  %2522 = phi float [ %2520, %2505 ], [ %2478, %2453 ]
  %2523 = call float @dx.op.dot2.f32(i32 54, float %2499, float %2500, float %1942, float %1943)  ; Dot2(ax,ay,bx,by)
  %2524 = call float @dx.op.dot2.f32(i32 54, float %2499, float %2500, float %1944, float %1945)  ; Dot2(ax,ay,bx,by)
  br label %2525

; <label>:2525                                    ; preds = %2521, %2431
  %2526 = phi float [ %2522, %2521 ], [ 0x3FD6666660000000, %2431 ]
  %2527 = phi float [ %2523, %2521 ], [ 0.000000e+00, %2431 ]
  %2528 = phi float [ %2524, %2521 ], [ 0.000000e+00, %2431 ]
  %2529 = phi float [ %2465, %2521 ], [ 1.000000e+00, %2431 ]
  %2530 = add i32 %43, 192
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = lshr i32 %2532, 22
  %2534 = shl nuw nsw i32 %2533, 5
  %2535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2534)  ; LegacyF16ToF32(value)
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 64
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %2573, label %2540

; <label>:2540                                    ; preds = %2525
  %2541 = add i32 %43, 400
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 131072
  %2549 = icmp eq i32 %2548, 0
  %2550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %74, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2550, 2
  %2554 = fmul fast float %2551, %287
  %2555 = fmul fast float %2552, %290
  %2556 = fmul fast float %2553, %293
  br i1 %2549, label %2563, label %2557

; <label>:2557                                    ; preds = %2540
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2560 = fmul fast float %2559, %2554
  %2561 = fmul fast float %2559, %2555
  %2562 = fmul fast float %2559, %2556
  br label %2563

; <label>:2563                                    ; preds = %2557, %2540
  %2564 = phi float [ %2560, %2557 ], [ %2554, %2540 ]
  %2565 = phi float [ %2561, %2557 ], [ %2555, %2540 ]
  %2566 = phi float [ %2562, %2557 ], [ %2556, %2540 ]
  %2567 = fmul fast float %2564, %2535
  %2568 = select i1 %183, float %2567, float %2564
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2565, float %2566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = select i1 %183, float 0.000000e+00, float %2564
  %2571 = select i1 %183, float %2569, float %2565
  %2572 = select i1 %183, float 0.000000e+00, float %2566
  br label %2573

; <label>:2573                                    ; preds = %2563, %2525
  %2574 = phi float [ %2570, %2563 ], [ 0.000000e+00, %2525 ]
  %2575 = phi float [ %2571, %2563 ], [ 0.000000e+00, %2525 ]
  %2576 = phi float [ %2572, %2563 ], [ 0.000000e+00, %2525 ]
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 1024
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2611, label %2581

; <label>:2581                                    ; preds = %2573
  %2582 = add i32 %43, 184
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = fmul fast float %2586, 0x3F70101020000000
  %2588 = lshr i32 %2584, 8
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = lshr i32 %2584, 16
  %2593 = and i32 %2592, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = fmul fast float %2594, 0x3F70101020000000
  %2596 = fmul fast float %2587, %2587
  %2597 = fmul fast float %2591, %2591
  %2598 = fmul fast float %2595, %2595
  %2599 = add i32 %43, 464
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = add i32 %2601, 0
  %2603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2603, %dx.types.Handle %75, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.ResRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.ResRet.f32 %2604, 2
  %2608 = fmul fast float %2596, %2605
  %2609 = fmul fast float %2597, %2606
  %2610 = fmul fast float %2598, %2607
  br label %2611

; <label>:2611                                    ; preds = %2581, %2573
  %2612 = phi float [ %2608, %2581 ], [ 0.000000e+00, %2573 ]
  %2613 = phi float [ %2609, %2581 ], [ 0.000000e+00, %2573 ]
  %2614 = phi float [ %2610, %2581 ], [ 0.000000e+00, %2573 ]
  %2615 = fcmp fast ogt float %2612, 0.000000e+00
  %2616 = fcmp fast ogt float %2613, 0.000000e+00
  %2617 = fcmp fast ogt float %2614, 0.000000e+00
  %2618 = call float @dx.op.unary.f32(i32 23, float %2612)  ; Log(value)
  %2619 = call float @dx.op.unary.f32(i32 23, float %2613)  ; Log(value)
  %2620 = call float @dx.op.unary.f32(i32 23, float %2614)  ; Log(value)
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = lshr i32 %2622, 7
  %2624 = and i32 %2623, 32752
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fmul fast float %2618, 0xBFE62E4300000000
  %2627 = fmul fast float %2626, %2625
  %2628 = fmul fast float %2619, 0xBFE62E4300000000
  %2629 = fmul fast float %2628, %2625
  %2630 = fmul fast float %2620, 0xBFE62E4300000000
  %2631 = fmul fast float %2630, %2625
  %2632 = select i1 %2615, float %2627, float 1.270000e+02
  %2633 = select i1 %2616, float %2629, float 1.270000e+02
  %2634 = select i1 %2617, float %2631, float 1.270000e+02
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 26624
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2675, label %2639

; <label>:2639                                    ; preds = %2611
  %2640 = add i32 %43, 480
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = add i32 %2642, 0
  %2644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2644, %dx.types.Handle %75, float %2038, float %2039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 1048576
  %2650 = icmp ne i32 %2649, 0
  %2651 = and i32 %2648, 2048
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2662, label %2653

; <label>:2653                                    ; preds = %2639
  %2654 = extractvalue %dx.types.ResRet.f32 %2645, 3
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = shl i32 %2656, 4
  %2658 = and i32 %2657, 32752
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = fmul fast float %2659, %2654
  %2661 = call float @dx.op.binary.f32(i32 35, float %2660, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2662

; <label>:2662                                    ; preds = %2653, %2639
  %2663 = phi float [ %2661, %2653 ], [ 0x3F70101020000000, %2639 ]
  %2664 = and i32 %2648, 16384
  %2665 = icmp eq i32 %2664, 0
  br i1 %2665, label %2675, label %2666

; <label>:2666                                    ; preds = %2662
  %2667 = add i32 %43, 128
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = lshr i32 %2669, 24
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2646, 0x3F70101020000000
  %2673 = select i1 %2650, float 0x3F70101020000000, float %2672
  %2674 = fmul fast float %2673, %2671
  br label %2675

; <label>:2675                                    ; preds = %2666, %2662, %2611
  %2676 = phi float [ %2663, %2666 ], [ %2663, %2662 ], [ 0x3F70101020000000, %2611 ]
  %2677 = phi float [ %2674, %2666 ], [ 0.000000e+00, %2662 ], [ 0.000000e+00, %2611 ]
  %2678 = add i32 %43, 128
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = lshr i32 %2680, 8
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2447, float %2448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = fmul fast float %2685, %2686
  %2688 = fadd fast float %2687, %2682
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  br i1 %1930, label %2691, label %2726

; <label>:2691                                    ; preds = %2675
  %2692 = fmul fast float %2676, 2.000000e+00
  %2693 = fcmp fast olt float %2632, 1.270000e+02
  %2694 = fcmp fast olt float %2633, 1.270000e+02
  %2695 = fcmp fast olt float %2634, 1.270000e+02
  %2696 = fmul fast float %2632, 0xBFF7154760000000
  %2697 = fmul fast float %2696, %2692
  %2698 = fmul fast float %2633, 0xBFF7154760000000
  %2699 = fmul fast float %2698, %2692
  %2700 = fmul fast float %2634, 0xBFF7154760000000
  %2701 = fmul fast float %2700, %2692
  %2702 = call float @dx.op.unary.f32(i32 21, float %2697)  ; Exp(value)
  %2703 = call float @dx.op.unary.f32(i32 21, float %2699)  ; Exp(value)
  %2704 = call float @dx.op.unary.f32(i32 21, float %2701)  ; Exp(value)
  %2705 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2706 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2707 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2708 = fadd fast float %2705, -1.000000e+00
  %2709 = select i1 %2693, float %2708, float -1.000000e+00
  %2710 = fadd fast float %2706, -1.000000e+00
  %2711 = select i1 %2694, float %2710, float -1.000000e+00
  %2712 = fadd fast float %2707, -1.000000e+00
  %2713 = select i1 %2695, float %2712, float -1.000000e+00
  %2714 = fmul fast float %2709, %2226
  %2715 = fmul fast float %2711, %2226
  %2716 = fmul fast float %2713, %2226
  %2717 = fadd fast float %2714, 1.000000e+00
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fmul fast float %2717, %1921
  %2721 = fmul fast float %2718, %1922
  %2722 = fmul fast float %2719, %1923
  %2723 = fmul fast float %2717, %1918
  %2724 = fmul fast float %2718, %1919
  %2725 = fmul fast float %2719, %1920
  br label %2726

; <label>:2726                                    ; preds = %2691, %2675
  %2727 = phi float [ %2723, %2691 ], [ %1918, %2675 ]
  %2728 = phi float [ %2724, %2691 ], [ %1919, %2675 ]
  %2729 = phi float [ %2725, %2691 ], [ %1920, %2675 ]
  %2730 = phi float [ %2720, %2691 ], [ %1921, %2675 ]
  %2731 = phi float [ %2721, %2691 ], [ %1922, %2675 ]
  %2732 = phi float [ %2722, %2691 ], [ %1923, %2675 ]
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 3
  %2736 = icmp eq i32 %2735, 3
  br i1 %2736, label %2815, label %2737

; <label>:2737                                    ; preds = %2726
  %2738 = and i32 %2734, 16
  %2739 = icmp ne i32 %2738, 0
  %2740 = select i1 %2739, float %2226, float 0.000000e+00
  %2741 = icmp eq i32 %2735, 0
  br i1 %2741, label %2742, label %2770

; <label>:2742                                    ; preds = %2737
  %2743 = and i32 %2734, 64
  %2744 = icmp ne i32 %2743, 0
  %2745 = select i1 %2744, float %2226, float 0.000000e+00
  %2746 = fsub fast float %2446, %2730
  %2747 = fsub fast float %2447, %2731
  %2748 = fsub fast float %2448, %2732
  %2749 = fmul fast float %2740, %2746
  %2750 = fmul fast float %2740, %2747
  %2751 = fmul fast float %2740, %2748
  %2752 = fadd fast float %2749, %2730
  %2753 = fadd fast float %2750, %2731
  %2754 = fadd fast float %2751, %2732
  %2755 = fsub fast float %2432, %1924
  %2756 = fmul fast float %2740, %2755
  %2757 = fadd fast float %2756, %1924
  %2758 = fsub fast float %2574, %2727
  %2759 = fsub fast float %2575, %2728
  %2760 = fsub fast float %2576, %2729
  %2761 = fmul fast float %2745, %2758
  %2762 = fmul fast float %2745, %2759
  %2763 = fmul fast float %2745, %2760
  %2764 = fadd fast float %2761, %2727
  %2765 = fadd fast float %2762, %2728
  %2766 = fadd fast float %2763, %2729
  %2767 = fsub fast float %2690, %1928
  %2768 = fmul fast float %2740, %2767
  %2769 = fadd fast float %2768, %1928
  br label %2815

; <label>:2770                                    ; preds = %2737
  %2771 = icmp eq i32 %2735, 1
  br i1 %2771, label %2772, label %2785

; <label>:2772                                    ; preds = %2770
  %2773 = fadd fast float %2446, -1.000000e+00
  %2774 = fadd fast float %2447, -1.000000e+00
  %2775 = fadd fast float %2448, -1.000000e+00
  %2776 = fmul fast float %2740, %2773
  %2777 = fmul fast float %2740, %2774
  %2778 = fmul fast float %2740, %2775
  %2779 = fadd fast float %2776, 1.000000e+00
  %2780 = fadd fast float %2777, 1.000000e+00
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fmul fast float %2779, %2730
  %2783 = fmul fast float %2780, %2731
  %2784 = fmul fast float %2781, %2732
  br label %2815

; <label>:2785                                    ; preds = %2770
  %2786 = icmp eq i32 %2735, 2
  br i1 %2786, label %2787, label %2815

; <label>:2787                                    ; preds = %2785
  %2788 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2789 = call float @dx.op.unary.f32(i32 24, float %2447)  ; Sqrt(value)
  %2790 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2791 = fadd fast float %2788, -5.000000e-01
  %2792 = fadd fast float %2789, -5.000000e-01
  %2793 = fadd fast float %2790, -5.000000e-01
  %2794 = fmul fast float %2791, %2740
  %2795 = fmul fast float %2792, %2740
  %2796 = fmul fast float %2793, %2740
  %2797 = fadd fast float %2794, 5.000000e-01
  %2798 = fadd fast float %2795, 5.000000e-01
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = fmul fast float %2797, 2.000000e+00
  %2801 = fsub fast float 1.000000e+00, %2800
  %2802 = fmul fast float %2801, %2730
  %2803 = fadd fast float %2802, %2800
  %2804 = fmul fast float %2803, %2730
  %2805 = fmul fast float %2798, 2.000000e+00
  %2806 = fsub fast float 1.000000e+00, %2805
  %2807 = fmul fast float %2806, %2731
  %2808 = fadd fast float %2807, %2805
  %2809 = fmul fast float %2808, %2731
  %2810 = fmul fast float %2799, 2.000000e+00
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = fmul fast float %2811, %2732
  %2813 = fadd fast float %2812, %2810
  %2814 = fmul fast float %2813, %2732
  br label %2815

; <label>:2815                                    ; preds = %2787, %2785, %2772, %2742, %2726
  %2816 = phi float [ %2727, %2726 ], [ %2727, %2787 ], [ %2727, %2785 ], [ %2727, %2772 ], [ %2764, %2742 ]
  %2817 = phi float [ %2728, %2726 ], [ %2728, %2787 ], [ %2728, %2785 ], [ %2728, %2772 ], [ %2765, %2742 ]
  %2818 = phi float [ %2729, %2726 ], [ %2729, %2787 ], [ %2729, %2785 ], [ %2729, %2772 ], [ %2766, %2742 ]
  %2819 = phi float [ %2730, %2726 ], [ %2804, %2787 ], [ %2730, %2785 ], [ %2782, %2772 ], [ %2752, %2742 ]
  %2820 = phi float [ %2731, %2726 ], [ %2809, %2787 ], [ %2731, %2785 ], [ %2783, %2772 ], [ %2753, %2742 ]
  %2821 = phi float [ %2732, %2726 ], [ %2814, %2787 ], [ %2732, %2785 ], [ %2784, %2772 ], [ %2754, %2742 ]
  %2822 = phi float [ %1924, %2726 ], [ %1924, %2787 ], [ %1924, %2785 ], [ %1924, %2772 ], [ %2757, %2742 ]
  %2823 = phi float [ %1928, %2726 ], [ %1928, %2787 ], [ %1928, %2785 ], [ %1928, %2772 ], [ %2769, %2742 ]
  %2824 = and i32 %2734, 12
  %2825 = icmp eq i32 %2824, 12
  br i1 %2825, label %2908, label %2826

; <label>:2826                                    ; preds = %2815
  %2827 = and i32 %2734, 2097184
  %2828 = icmp eq i32 %2827, 2097184
  %2829 = select i1 %2828, float %2226, float 0.000000e+00
  %2830 = and i32 %2734, 4194336
  %2831 = icmp eq i32 %2830, 4194336
  %2832 = select i1 %2831, float %2226, float 0.000000e+00
  %2833 = and i32 %2734, 8388640
  %2834 = icmp eq i32 %2833, 8388640
  %2835 = select i1 %2834, float %2226, float 0.000000e+00
  %2836 = and i32 %2734, 16384
  %2837 = icmp ne i32 %2836, 0
  %2838 = select i1 %2837, float %2226, float 0.000000e+00
  %2839 = icmp eq i32 %2824, 0
  br i1 %2839, label %2840, label %2856

; <label>:2840                                    ; preds = %2826
  %2841 = fsub fast float %2527, %1916
  %2842 = fsub fast float %2528, %1917
  %2843 = fmul fast float %2829, %2841
  %2844 = fmul fast float %2829, %2842
  %2845 = fadd fast float %2843, %1916
  %2846 = fadd fast float %2844, %1917
  %2847 = fsub fast float %2529, %1926
  %2848 = fmul fast float %2832, %2847
  %2849 = fadd fast float %2848, %1926
  %2850 = fsub fast float %2526, %1925
  %2851 = fmul fast float %2835, %2850
  %2852 = fadd fast float %2851, %1925
  %2853 = fsub fast float %2677, %1927
  %2854 = fmul fast float %2838, %2853
  %2855 = fadd fast float %2854, %1927
  br label %2908

; <label>:2856                                    ; preds = %2826
  %2857 = icmp eq i32 %2824, 4
  br i1 %2857, label %2858, label %2892

; <label>:2858                                    ; preds = %2856
  %2859 = fmul fast float %2829, %2527
  %2860 = fmul fast float %2829, %2528
  %2861 = fadd fast float %2859, %1916
  %2862 = fadd fast float %2860, %1917
  %2863 = call float @dx.op.binary.f32(i32 36, float %1926, float %2529)  ; FMin(a,b)
  %2864 = fsub fast float %2863, %1926
  %2865 = fmul fast float %2864, %2832
  %2866 = fadd fast float %2865, %1926
  %2867 = fadd fast float %2526, %1925
  %2868 = fmul fast float %2867, 0x3FF337FAE0000000
  %2869 = fmul fast float %1925, %1925
  %2870 = fmul fast float %2526, %2526
  %2871 = fadd fast float %2870, %2869
  %2872 = fmul fast float %2871, 0x3FE5152B00000000
  %2873 = fmul fast float %1925, 0xBFCC1F85E0000000
  %2874 = fmul fast float %2873, %2526
  %2875 = fadd fast float %2874, 0xBFE1363700000000
  %2876 = fadd fast float %2875, %2868
  %2877 = fsub fast float %2876, %2872
  %2878 = fmul fast float %2867, 0x3FBA6F0D00000000
  %2879 = fmul fast float %2871, 0x3FD0432880000000
  %2880 = fmul fast float %1925, 0xBFEF110800000000
  %2881 = fmul fast float %2880, %2526
  %2882 = fadd fast float %2881, 1.000000e+00
  %2883 = fsub fast float %2882, %2878
  %2884 = fadd fast float %2883, %2879
  %2885 = fdiv fast float %2877, %2884
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2887 = fsub fast float %2886, %1925
  %2888 = fmul fast float %2887, %2835
  %2889 = fadd fast float %2888, %1925
  %2890 = fmul fast float %2838, %2677
  %2891 = fadd fast float %2890, %1927
  br label %2908

; <label>:2892                                    ; preds = %2856
  %2893 = icmp eq i32 %2824, 8
  br i1 %2893, label %2894, label %2908

; <label>:2894                                    ; preds = %2892
  %2895 = fmul fast float %2829, %2527
  %2896 = fmul fast float %2829, %2528
  %2897 = fadd fast float %2895, %1916
  %2898 = fadd fast float %2896, %1917
  %2899 = call float @dx.op.binary.f32(i32 36, float %1926, float %2529)  ; FMin(a,b)
  %2900 = fsub fast float %2899, %1926
  %2901 = fmul fast float %2900, %2832
  %2902 = fadd fast float %2901, %1926
  %2903 = fsub fast float %2526, %1925
  %2904 = fmul fast float %2835, %2903
  %2905 = fadd fast float %2904, %1925
  %2906 = fmul fast float %2838, %2677
  %2907 = fadd fast float %2906, %1927
  br label %2908

; <label>:2908                                    ; preds = %2894, %2892, %2858, %2840, %2815, %2225, %1929, %1915
  %2909 = phi float [ %1916, %2815 ], [ %1916, %2225 ], [ %1916, %1915 ], [ %2897, %2894 ], [ %1916, %2892 ], [ %2861, %2858 ], [ %2845, %2840 ], [ %1916, %1929 ]
  %2910 = phi float [ %1917, %2815 ], [ %1917, %2225 ], [ %1917, %1915 ], [ %2898, %2894 ], [ %1917, %2892 ], [ %2862, %2858 ], [ %2846, %2840 ], [ %1917, %1929 ]
  %2911 = phi float [ %2816, %2815 ], [ %1918, %2225 ], [ %1918, %1915 ], [ %2816, %2894 ], [ %2816, %2892 ], [ %2816, %2858 ], [ %2816, %2840 ], [ %1918, %1929 ]
  %2912 = phi float [ %2817, %2815 ], [ %1919, %2225 ], [ %1919, %1915 ], [ %2817, %2894 ], [ %2817, %2892 ], [ %2817, %2858 ], [ %2817, %2840 ], [ %1919, %1929 ]
  %2913 = phi float [ %2818, %2815 ], [ %1920, %2225 ], [ %1920, %1915 ], [ %2818, %2894 ], [ %2818, %2892 ], [ %2818, %2858 ], [ %2818, %2840 ], [ %1920, %1929 ]
  %2914 = phi float [ %2819, %2815 ], [ %1921, %2225 ], [ %1921, %1915 ], [ %2819, %2894 ], [ %2819, %2892 ], [ %2819, %2858 ], [ %2819, %2840 ], [ %1921, %1929 ]
  %2915 = phi float [ %2820, %2815 ], [ %1922, %2225 ], [ %1922, %1915 ], [ %2820, %2894 ], [ %2820, %2892 ], [ %2820, %2858 ], [ %2820, %2840 ], [ %1922, %1929 ]
  %2916 = phi float [ %2821, %2815 ], [ %1923, %2225 ], [ %1923, %1915 ], [ %2821, %2894 ], [ %2821, %2892 ], [ %2821, %2858 ], [ %2821, %2840 ], [ %1923, %1929 ]
  %2917 = phi float [ %2822, %2815 ], [ %1924, %2225 ], [ %1924, %1915 ], [ %2822, %2894 ], [ %2822, %2892 ], [ %2822, %2858 ], [ %2822, %2840 ], [ %1924, %1929 ]
  %2918 = phi float [ %1925, %2815 ], [ %1925, %2225 ], [ %1925, %1915 ], [ %2905, %2894 ], [ %1925, %2892 ], [ %2889, %2858 ], [ %2852, %2840 ], [ %1925, %1929 ]
  %2919 = phi float [ %1926, %2815 ], [ %1926, %2225 ], [ %1926, %1915 ], [ %2902, %2894 ], [ %1926, %2892 ], [ %2866, %2858 ], [ %2849, %2840 ], [ %1926, %1929 ]
  %2920 = phi float [ %1927, %2815 ], [ %1927, %2225 ], [ %1927, %1915 ], [ %2907, %2894 ], [ %1927, %2892 ], [ %2891, %2858 ], [ %2855, %2840 ], [ %1927, %1929 ]
  %2921 = phi float [ %2823, %2815 ], [ %1928, %2225 ], [ %1928, %1915 ], [ %2823, %2894 ], [ %2823, %2892 ], [ %2823, %2858 ], [ %2823, %2840 ], [ %1928, %1929 ]
  br i1 %374, label %3901, label %2922

; <label>:2922                                    ; preds = %2908
  %2923 = icmp ult i32 %425, 4
  %2924 = add i32 %43, 72
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %43, 76
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = or i32 %2929, %2926
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %3901, label %2932

; <label>:2932                                    ; preds = %2922
  %2933 = and i32 %2926, 262144
  %2934 = icmp ne i32 %2933, 0
  %2935 = select i1 %2934, float %46, float 1.000000e+00
  %2936 = select i1 %2934, float %47, float 0.000000e+00
  %2937 = select i1 %2934, float %48, float 0.000000e+00
  %2938 = select i1 %2934, float %49, float 1.000000e+00
  %2939 = select i1 %2934, float %50, float %66
  %2940 = select i1 %2934, float %51, float %67
  %2941 = add i32 %43, 332
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = lshr i32 %2943, 16
  %2945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2944)  ; LegacyF16ToF32(value)
  %2946 = fmul fast float %2945, 0x3F50624DE0000000
  %2947 = add i32 %43, 136
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 16
  %2951 = and i32 %2950, 255
  %2952 = lshr i32 %2949, 24
  %2953 = add i32 %43, 340
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 65535
  %2957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2956)  ; LegacyF16ToF32(value)
  %2958 = lshr i32 %2955, 16
  %2959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2958)  ; LegacyF16ToF32(value)
  %2960 = add i32 %43, 80
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = lshr i32 %2962, 22
  %2964 = shl nuw nsw i32 %2963, 5
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = shl i32 %2962, 4
  %2967 = and i32 %2966, 32752
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = lshr i32 %2962, 7
  %2970 = and i32 %2969, 32752
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 3
  %2974 = fmul fast float %2973, 1.000000e+03
  %2975 = fmul fast float %364, %2974
  %2976 = call float @dx.op.unary.f32(i32 22, float %2975)  ; Frc(value)
  %2977 = fadd fast float %2976, %354
  %2978 = fmul fast float %365, %2974
  %2979 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2980 = fadd fast float %2979, %356
  %2981 = fmul fast float %2946, %2974
  %2982 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2983 = fmul fast float %2982, 0x401921FB60000000
  %2984 = fadd fast float %2983, %2965
  %2985 = call float @dx.op.unary.f32(i32 13, float %2984)  ; Sin(value)
  %2986 = call float @dx.op.unary.f32(i32 12, float %2984)  ; Cos(value)
  %2987 = fsub fast float -0.000000e+00, %2985
  %2988 = fadd fast float %2939, -5.000000e-01
  %2989 = fadd fast float %2940, -5.000000e-01
  %2990 = fmul fast float %2957, %2988
  %2991 = fmul fast float %2959, %2989
  %2992 = fadd fast float %2990, 5.000000e-01
  %2993 = fadd fast float %2991, 5.000000e-01
  %2994 = fmul fast float %2968, %2992
  %2995 = fmul fast float %2971, %2993
  %2996 = fmul fast float %2986, %2994
  %2997 = call float @dx.op.tertiary.f32(i32 46, float %2987, float %2995, float %2996)  ; FMad(a,b,c)
  %2998 = fmul fast float %2985, %2994
  %2999 = call float @dx.op.tertiary.f32(i32 46, float %2986, float %2995, float %2998)  ; FMad(a,b,c)
  %3000 = fadd fast float %2977, %2997
  %3001 = fadd fast float %2980, %2999
  %3002 = icmp ugt i32 %2951, 1
  %3003 = icmp ugt i32 %2949, 33554431
  %3004 = or i1 %3003, %3002
  br i1 %3004, label %3005, label %3030

; <label>:3005                                    ; preds = %2932
  %3006 = add i32 %43, 276
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = lshr i32 %3008, 16
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = fmul fast float %2973, %3010
  %3012 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3013 = mul nuw nsw i32 %2951, %2952
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3012, %3014
  %3016 = call float @dx.op.unary.f32(i32 27, float %3015)  ; Round_ni(value)
  %3017 = fptoui float %3016 to i32
  %3018 = urem i32 %3017, %2951
  %3019 = udiv i32 %3017, %2952
  %3020 = call float @dx.op.unary.f32(i32 22, float %3000)  ; Frc(value)
  %3021 = call float @dx.op.unary.f32(i32 22, float %3001)  ; Frc(value)
  %3022 = uitofp i32 %3018 to float
  %3023 = uitofp i32 %3019 to float
  %3024 = fadd fast float %3020, %3022
  %3025 = fadd fast float %3021, %3023
  %3026 = uitofp i32 %2951 to float
  %3027 = uitofp i32 %2952 to float
  %3028 = fdiv fast float %3024, %3026
  %3029 = fdiv fast float %3025, %3027
  br label %3030

; <label>:3030                                    ; preds = %3005, %2932
  %3031 = phi float [ %3028, %3005 ], [ %3000, %2932 ]
  %3032 = phi float [ %3029, %3005 ], [ %3001, %2932 ]
  %3033 = and i32 %2926, 16777216
  %3034 = icmp eq i32 %3033, 0
  br i1 %3034, label %3144, label %3035

; <label>:3035                                    ; preds = %3030
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3040 = fadd fast float %3037, %141
  %3041 = fadd fast float %3038, %142
  %3042 = fadd fast float %3039, %143
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3046 = icmp eq i32 %44, 65535
  br i1 %3046, label %3141, label %3047

; <label>:3047                                    ; preds = %3035
  %3048 = lshr i32 %44, 1
  %3049 = shl i32 %3048, 2
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %44, 1
  %3053 = icmp ne i32 %3052, 0
  %3054 = lshr i32 %3051, 16
  %3055 = and i32 %3051, 65535
  %3056 = select i1 %3053, i32 %3054, i32 %3055
  %3057 = icmp eq i32 %3056, 65535
  br i1 %3057, label %3137, label %3058

; <label>:3058                                    ; preds = %3047
  %3059 = mul nuw nsw i32 %3056, 40
  %3060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3064 = add nuw nsw i32 %3059, 12
  %3065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.ResRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.ResRet.f32 %3065, 2
  %3069 = add nuw nsw i32 %3059, 24
  %3070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.ResRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.ResRet.f32 %3070, 2
  %3074 = add nuw nsw i32 %3059, 36
  %3075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = fsub fast float %3040, %3061
  %3078 = fsub fast float %3041, %3062
  %3079 = fsub fast float %3042, %3063
  %3080 = fmul fast float %3076, %3077
  %3081 = fmul fast float %3076, %3078
  %3082 = fmul fast float %3076, %3079
  %3083 = call float @dx.op.unary.f32(i32 27, float %3080)  ; Round_ni(value)
  %3084 = call float @dx.op.unary.f32(i32 27, float %3081)  ; Round_ni(value)
  %3085 = call float @dx.op.unary.f32(i32 27, float %3082)  ; Round_ni(value)
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = fmul fast float %3086, %3066
  %3090 = fmul fast float %3087, %3067
  %3091 = fmul fast float %3088, %3068
  %3092 = shl i32 %44, 2
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %3094, 0
  %3096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3097 = call float @dx.op.unary.f32(i32 22, float %3089)  ; Frc(value)
  %3098 = call float @dx.op.unary.f32(i32 22, float %3090)  ; Frc(value)
  %3099 = call float @dx.op.unary.f32(i32 22, float %3091)  ; Frc(value)
  %3100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3096, %dx.types.Handle %40, float %3097, float %3098, float %3099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.ResRet.f32 %3100, 2
  %3104 = fmul fast float %3101, 1.023000e+03
  %3105 = fmul fast float %3102, 1.023000e+03
  %3106 = fmul fast float %3103, 1.023000e+03
  %3107 = fadd fast float %3104, 5.000000e-01
  %3108 = fadd fast float %3105, 5.000000e-01
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = call float @dx.op.unary.f32(i32 27, float %3107)  ; Round_ni(value)
  %3111 = call float @dx.op.unary.f32(i32 27, float %3108)  ; Round_ni(value)
  %3112 = call float @dx.op.unary.f32(i32 27, float %3109)  ; Round_ni(value)
  %3113 = fsub fast float %3080, %3083
  %3114 = fsub fast float %3081, %3084
  %3115 = fsub fast float %3082, %3085
  %3116 = fmul fast float %3113, 7.500000e-01
  %3117 = fmul fast float %3114, 7.500000e-01
  %3118 = fmul fast float %3115, 7.500000e-01
  %3119 = fadd fast float %3083, 1.250000e-01
  %3120 = fadd fast float %3119, %3116
  %3121 = fadd fast float %3120, %3110
  %3122 = fadd fast float %3084, 1.250000e-01
  %3123 = fadd fast float %3122, %3117
  %3124 = fadd fast float %3123, %3111
  %3125 = fadd fast float %3085, 1.250000e-01
  %3126 = fadd fast float %3125, %3118
  %3127 = fadd fast float %3126, %3112
  %3128 = fmul fast float %3121, %3071
  %3129 = fmul fast float %3124, %3072
  %3130 = fmul fast float %3127, %3073
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3134, %dx.types.Handle %38, float %3128, float %3129, float %3130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  br label %3137

; <label>:3137                                    ; preds = %3058, %3047
  %3138 = phi float [ %3136, %3058 ], [ -1.000000e+00, %3047 ]
  %3139 = fadd fast float %3138, %3045
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  br label %3141

; <label>:3141                                    ; preds = %3137, %3035
  %3142 = phi float [ %3140, %3137 ], [ %3045, %3035 ]
  %3143 = fmul fast float %3142, %420
  br label %3144

; <label>:3144                                    ; preds = %3141, %3030
  %3145 = phi float [ %3143, %3141 ], [ %420, %3030 ]
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = and i32 %3147, 256
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3196, label %3150

; <label>:3150                                    ; preds = %3144
  %3151 = add i32 %43, 436
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %3153, 0
  %3155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3155, %dx.types.Handle %75, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = add i32 %43, 148
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = shl i32 %3160, 4
  %3162 = and i32 %3161, 32752
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3160, 7
  %3165 = and i32 %3164, 32752
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = fsub fast float 1.000000e+00, %3145
  %3168 = call float @dx.op.binary.f32(i32 35, float %3167, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3169 = bitcast float %3145 to i32
  %3170 = sitofp i32 %3169 to float
  %3171 = fadd fast float %3170, 0xC1CFBF8940000000
  %3172 = fmul fast float %3166, %3171
  %3173 = fadd fast float %3172, 0x41CFBF8940000000
  %3174 = fptosi float %3173 to i32
  %3175 = bitcast i32 %3174 to float
  %3176 = bitcast float %3168 to i32
  %3177 = sitofp i32 %3176 to float
  %3178 = fadd fast float %3177, 0xC1CFBF8940000000
  %3179 = fmul fast float %3178, %3166
  %3180 = fadd fast float %3179, 0x41CFBF8940000000
  %3181 = fptosi float %3180 to i32
  %3182 = bitcast i32 %3181 to float
  %3183 = fmul fast float %3175, %3163
  %3184 = fmul fast float %3182, %3163
  %3185 = fsub fast float %3168, %3183
  %3186 = fadd fast float %3184, %3168
  %3187 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3189 = fsub fast float %3157, %3187
  %3190 = fsub fast float %3188, %3187
  %3191 = bitcast float %3190 to i32
  %3192 = sub nsw i32 2129859010, %3191
  %3193 = bitcast i32 %3192 to float
  %3194 = fmul fast float %3193, %3189
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  br label %3196

; <label>:3196                                    ; preds = %3150, %3144
  %3197 = phi float [ %3195, %3150 ], [ %3145, %3144 ]
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 128
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3218, label %3202

; <label>:3202                                    ; preds = %3196
  %3203 = add i32 %43, 420
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = add i32 %3205, 0
  %3207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3207, %dx.types.Handle %75, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 524288
  %3213 = icmp ne i32 %3212, 0
  %3214 = fcmp fast ogt float %3209, 0x3FE0101020000000
  %3215 = select i1 %3214, float 1.000000e+00, float 0.000000e+00
  %3216 = select i1 %3213, float %3215, float %3209
  %3217 = fmul fast float %3216, %3197
  br label %3218

; <label>:3218                                    ; preds = %3202, %3196
  %3219 = phi float [ %3217, %3202 ], [ %3197, %3196 ]
  %3220 = fcmp fast ult float %3219, 0x3F70101020000000
  br i1 %3220, label %3901, label %3221

; <label>:3221                                    ; preds = %3218
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 16
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3424, label %3226

; <label>:3226                                    ; preds = %3221
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %43, 372
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %3231, 0
  %3233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3233, %dx.types.Handle %74, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.ResRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.ResRet.f32 %3234, 2
  %3238 = extractvalue %dx.types.ResRet.f32 %3234, 3
  %3239 = and i32 %3228, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = lshr i32 %3228, 8
  %3242 = and i32 %3241, 255
  %3243 = uitofp i32 %3242 to float
  %3244 = fmul fast float %3238, %3240
  %3245 = fadd fast float %3244, %3243
  %3246 = fmul fast float %3245, 0x3F70101000000000
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = and i32 %3248, 512
  %3250 = icmp eq i32 %3249, 0
  br i1 %3250, label %3259, label %3251

; <label>:3251                                    ; preds = %3226
  %3252 = add i32 %43, 452
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = add i32 %3254, 0
  %3256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3256, %dx.types.Handle %75, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  br label %3259

; <label>:3259                                    ; preds = %3251, %3226
  %3260 = phi float [ %3258, %3251 ], [ 1.000000e+00, %3226 ]
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = and i32 %3262, 33554432
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3371, label %3265

; <label>:3265                                    ; preds = %3259
  %3266 = add i32 %43, 272
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 65535
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = lshr i32 %3268, 16
  %3272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3271)  ; LegacyF16ToF32(value)
  %3273 = add i32 %43, 276
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 65535
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = lshr i32 %3279, 24
  %3281 = uitofp i32 %3280 to float
  %3282 = fmul fast float %3281, 0x3F70101020000000
  %3283 = and i32 %3279, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3284, 0x3F70101020000000
  %3286 = lshr i32 %3279, 8
  %3287 = and i32 %3286, 255
  %3288 = uitofp i32 %3287 to float
  %3289 = fmul fast float %3288, 0x3F70101020000000
  %3290 = lshr i32 %3279, 16
  %3291 = and i32 %3290, 255
  %3292 = uitofp i32 %3291 to float
  %3293 = fmul fast float %3292, 0x3F70101020000000
  %3294 = add i32 %43, 268
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = lshr i32 %3296, 24
  %3298 = uitofp i32 %3297 to float
  %3299 = fmul fast float %3298, 0x3F70101020000000
  %3300 = and i32 %3296, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = fmul fast float %3301, 0x3F70101020000000
  %3303 = lshr i32 %3296, 8
  %3304 = and i32 %3303, 255
  %3305 = uitofp i32 %3304 to float
  %3306 = fmul fast float %3305, 0x3F70101020000000
  %3307 = lshr i32 %3296, 16
  %3308 = and i32 %3307, 255
  %3309 = uitofp i32 %3308 to float
  %3310 = fmul fast float %3309, 0x3F70101020000000
  %3311 = bitcast float %3235 to i32
  %3312 = ashr i32 %3311, 1
  %3313 = sub nsw i32 1597463174, %3312
  %3314 = bitcast i32 %3313 to float
  %3315 = fmul fast float %3235, 5.000000e-01
  %3316 = fmul fast float %3314, %3314
  %3317 = fmul fast float %3316, %3315
  %3318 = fsub fast float 1.500000e+00, %3317
  %3319 = fmul fast float %3314, %3235
  %3320 = fmul fast float %3319, %3318
  %3321 = bitcast float %3236 to i32
  %3322 = ashr i32 %3321, 1
  %3323 = sub nsw i32 1597463174, %3322
  %3324 = bitcast i32 %3323 to float
  %3325 = fmul fast float %3236, 5.000000e-01
  %3326 = fmul fast float %3324, %3324
  %3327 = fmul fast float %3326, %3325
  %3328 = fsub fast float 1.500000e+00, %3327
  %3329 = fmul fast float %3324, %3236
  %3330 = fmul fast float %3329, %3328
  %3331 = bitcast float %3237 to i32
  %3332 = ashr i32 %3331, 1
  %3333 = sub nsw i32 1597463174, %3332
  %3334 = bitcast i32 %3333 to float
  %3335 = fmul fast float %3237, 5.000000e-01
  %3336 = fmul fast float %3334, %3334
  %3337 = fmul fast float %3336, %3335
  %3338 = fsub fast float 1.500000e+00, %3337
  %3339 = fmul fast float %3334, %3237
  %3340 = fmul fast float %3339, %3338
  %3341 = fsub fast float %3320, %3302
  %3342 = fsub fast float %3330, %3306
  %3343 = fsub fast float %3340, %3310
  %3344 = fmul fast float %3341, %3270
  %3345 = fmul fast float %3342, %3272
  %3346 = fmul fast float %3343, %3277
  %3347 = fadd fast float %3344, %3285
  %3348 = fadd fast float %3345, %3289
  %3349 = fadd fast float %3346, %3293
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3353 = fmul fast float %3350, %3350
  %3354 = fmul fast float %3351, %3351
  %3355 = fmul fast float %3352, %3352
  %3356 = fsub fast float %3353, %3235
  %3357 = fsub fast float %3354, %3236
  %3358 = fsub fast float %3355, %3237
  %3359 = fmul fast float %3356, %3260
  %3360 = fmul fast float %3357, %3260
  %3361 = fmul fast float %3358, %3260
  %3362 = fadd fast float %3359, %3235
  %3363 = fadd fast float %3360, %3236
  %3364 = fadd fast float %3361, %3237
  %3365 = fadd fast float %3282, %3246
  %3366 = fsub fast float %3365, %3299
  %3367 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3368 = fsub fast float %3367, %3246
  %3369 = fmul fast float %3368, %3260
  %3370 = fadd fast float %3369, %3246
  br label %3424

; <label>:3371                                    ; preds = %3259
  %3372 = and i32 %3262, 134217728
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3408, label %3374

; <label>:3374                                    ; preds = %3371
  %3375 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3376 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3377 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3378 = fadd fast float %3375, -5.000000e-01
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fmul fast float %3378, %3260
  %3382 = fmul fast float %3379, %3260
  %3383 = fmul fast float %3380, %3260
  %3384 = fadd fast float %3381, 5.000000e-01
  %3385 = fadd fast float %3382, 5.000000e-01
  %3386 = fadd fast float %3383, 5.000000e-01
  %3387 = call float @dx.op.unary.f32(i32 24, float %3235)  ; Sqrt(value)
  %3388 = call float @dx.op.unary.f32(i32 24, float %3236)  ; Sqrt(value)
  %3389 = call float @dx.op.unary.f32(i32 24, float %3237)  ; Sqrt(value)
  %3390 = fmul fast float %3384, 2.000000e+00
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = fmul fast float %3391, %3387
  %3393 = fadd fast float %3392, %3390
  %3394 = fmul fast float %3393, %3387
  %3395 = fmul fast float %3385, 2.000000e+00
  %3396 = fsub fast float 1.000000e+00, %3395
  %3397 = fmul fast float %3396, %3388
  %3398 = fadd fast float %3397, %3395
  %3399 = fmul fast float %3398, %3388
  %3400 = fmul fast float %3386, 2.000000e+00
  %3401 = fsub fast float 1.000000e+00, %3400
  %3402 = fmul fast float %3401, %3389
  %3403 = fadd fast float %3402, %3400
  %3404 = fmul fast float %3403, %3389
  %3405 = fmul fast float %3394, %3394
  %3406 = fmul fast float %3399, %3399
  %3407 = fmul fast float %3404, %3404
  br label %3424

; <label>:3408                                    ; preds = %3371
  %3409 = fmul fast float %341, %341
  %3410 = fmul fast float %345, %345
  %3411 = fmul fast float %349, %349
  %3412 = fadd fast float %3409, -1.000000e+00
  %3413 = fadd fast float %3410, -1.000000e+00
  %3414 = fadd fast float %3411, -1.000000e+00
  %3415 = fmul fast float %3260, %3412
  %3416 = fmul fast float %3260, %3413
  %3417 = fmul fast float %3260, %3414
  %3418 = fadd fast float %3415, 1.000000e+00
  %3419 = fadd fast float %3416, 1.000000e+00
  %3420 = fadd fast float %3417, 1.000000e+00
  %3421 = fmul fast float %3418, %3235
  %3422 = fmul fast float %3419, %3236
  %3423 = fmul fast float %3420, %3237
  br label %3424

; <label>:3424                                    ; preds = %3408, %3374, %3265, %3221
  %3425 = phi float [ %3370, %3265 ], [ %3246, %3374 ], [ %3246, %3408 ], [ 0x3FA23C0BE0000000, %3221 ]
  %3426 = phi float [ %3362, %3265 ], [ %3405, %3374 ], [ %3421, %3408 ], [ 1.000000e+00, %3221 ]
  %3427 = phi float [ %3363, %3265 ], [ %3406, %3374 ], [ %3422, %3408 ], [ 1.000000e+00, %3221 ]
  %3428 = phi float [ %3364, %3265 ], [ %3407, %3374 ], [ %3423, %3408 ], [ 1.000000e+00, %3221 ]
  %3429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.i32 %3429, 1
  %3431 = and i32 %3430, 1
  %3432 = icmp ne i32 %3431, 0
  %3433 = add i32 %43, 356
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 32
  %3437 = icmp ne i32 %3436, 0
  %3438 = and i1 %3432, %3437
  %3439 = select i1 %3438, float 1.000000e+00, float %3426
  %3440 = select i1 %3438, float 0x3FD3333340000000, float %3427
  %3441 = select i1 %3438, float 0x3FD3333340000000, float %3428
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 32
  %3445 = icmp eq i32 %3444, 0
  br i1 %3445, label %3518, label %3446

; <label>:3446                                    ; preds = %3424
  %3447 = add i32 %43, 140
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = add i32 %43, 388
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %3452, 0
  %3454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3454, %dx.types.Handle %74, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3460 = and i32 %3449, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = lshr i32 %3449, 8
  %3463 = and i32 %3462, 255
  %3464 = uitofp i32 %3463 to float
  %3465 = lshr i32 %3449, 16
  %3466 = and i32 %3465, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = fmul fast float %3467, 0x3F70101000000000
  %3469 = fmul fast float %3456, %3461
  %3470 = fadd fast float %3469, %3464
  %3471 = fmul fast float %3470, 0x3F70101000000000
  %3472 = fadd fast float %3457, -5.000000e-01
  %3473 = fadd fast float %3459, -5.000000e-01
  %3474 = fmul fast float %3472, %3468
  %3475 = fmul fast float %3473, %3468
  %3476 = fadd fast float %3474, 5.000000e-01
  %3477 = fadd fast float %3475, 5.000000e-01
  %3478 = fmul fast float %3476, 2.000000e+00
  %3479 = fadd fast float %3478, -1.000000e+00
  %3480 = fmul fast float %3477, 2.000000e+00
  %3481 = fadd fast float %3480, -1.000000e+00
  %3482 = fadd fast float %3479, %3481
  %3483 = fmul fast float %3482, 5.000000e-01
  %3484 = fsub fast float %3479, %3481
  %3485 = fmul fast float %3484, 5.000000e-01
  %3486 = call float @dx.op.unary.f32(i32 6, float %3483)  ; FAbs(value)
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = call float @dx.op.unary.f32(i32 6, float %3485)  ; FAbs(value)
  %3489 = fsub fast float %3487, %3488
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3485, float %3489, float %3483, float %3485, float %3489)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.unary.f32(i32 25, float %3490)  ; Rsqrt(value)
  %3492 = fmul fast float %3483, %3491
  %3493 = fmul fast float %3485, %3491
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 67108864
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3514, label %3498

; <label>:3498                                    ; preds = %3446
  %3499 = add i32 %43, 328
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 65535
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 65535
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = lshr i32 %3501, 16
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = fsub fast float %3471, %3509
  %3511 = fmul fast float %3510, %3503
  %3512 = fadd fast float %3511, %3507
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  br label %3514

; <label>:3514                                    ; preds = %3498, %3446
  %3515 = phi float [ %3513, %3498 ], [ %3471, %3446 ]
  %3516 = call float @dx.op.dot2.f32(i32 54, float %3492, float %3493, float %2935, float %2936)  ; Dot2(ax,ay,bx,by)
  %3517 = call float @dx.op.dot2.f32(i32 54, float %3492, float %3493, float %2937, float %2938)  ; Dot2(ax,ay,bx,by)
  br label %3518

; <label>:3518                                    ; preds = %3514, %3424
  %3519 = phi float [ %3515, %3514 ], [ 0x3FD6666660000000, %3424 ]
  %3520 = phi float [ %3516, %3514 ], [ 0.000000e+00, %3424 ]
  %3521 = phi float [ %3517, %3514 ], [ 0.000000e+00, %3424 ]
  %3522 = phi float [ %3458, %3514 ], [ 1.000000e+00, %3424 ]
  %3523 = add i32 %43, 208
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = lshr i32 %3525, 22
  %3527 = shl nuw nsw i32 %3526, 5
  %3528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3527)  ; LegacyF16ToF32(value)
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 64
  %3532 = icmp eq i32 %3531, 0
  br i1 %3532, label %3566, label %3533

; <label>:3533                                    ; preds = %3518
  %3534 = add i32 %43, 404
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = add i32 %3536, 0
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = and i32 %3540, 131072
  %3542 = icmp eq i32 %3541, 0
  %3543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3538, %dx.types.Handle %74, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = fmul fast float %3544, %329
  %3548 = fmul fast float %3545, %332
  %3549 = fmul fast float %3546, %335
  br i1 %3542, label %3556, label %3550

; <label>:3550                                    ; preds = %3533
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 0
  %3553 = fmul fast float %3552, %3547
  %3554 = fmul fast float %3552, %3548
  %3555 = fmul fast float %3552, %3549
  br label %3556

; <label>:3556                                    ; preds = %3550, %3533
  %3557 = phi float [ %3553, %3550 ], [ %3547, %3533 ]
  %3558 = phi float [ %3554, %3550 ], [ %3548, %3533 ]
  %3559 = phi float [ %3555, %3550 ], [ %3549, %3533 ]
  %3560 = fmul fast float %3557, %3528
  %3561 = select i1 %183, float %3560, float %3557
  %3562 = call float @dx.op.dot3.f32(i32 55, float %3561, float %3558, float %3559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3563 = select i1 %183, float 0.000000e+00, float %3557
  %3564 = select i1 %183, float %3562, float %3558
  %3565 = select i1 %183, float 0.000000e+00, float %3559
  br label %3566

; <label>:3566                                    ; preds = %3556, %3518
  %3567 = phi float [ %3563, %3556 ], [ 0.000000e+00, %3518 ]
  %3568 = phi float [ %3564, %3556 ], [ 0.000000e+00, %3518 ]
  %3569 = phi float [ %3565, %3556 ], [ 0.000000e+00, %3518 ]
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 1024
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3604, label %3574

; <label>:3574                                    ; preds = %3566
  %3575 = add i32 %43, 200
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = and i32 %3577, 255
  %3579 = uitofp i32 %3578 to float
  %3580 = fmul fast float %3579, 0x3F70101020000000
  %3581 = lshr i32 %3577, 8
  %3582 = and i32 %3581, 255
  %3583 = uitofp i32 %3582 to float
  %3584 = fmul fast float %3583, 0x3F70101020000000
  %3585 = lshr i32 %3577, 16
  %3586 = and i32 %3585, 255
  %3587 = uitofp i32 %3586 to float
  %3588 = fmul fast float %3587, 0x3F70101020000000
  %3589 = fmul fast float %3580, %3580
  %3590 = fmul fast float %3584, %3584
  %3591 = fmul fast float %3588, %3588
  %3592 = add i32 %43, 468
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %75, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = fmul fast float %3589, %3598
  %3602 = fmul fast float %3590, %3599
  %3603 = fmul fast float %3591, %3600
  br label %3604

; <label>:3604                                    ; preds = %3574, %3566
  %3605 = phi float [ %3601, %3574 ], [ 0.000000e+00, %3566 ]
  %3606 = phi float [ %3602, %3574 ], [ 0.000000e+00, %3566 ]
  %3607 = phi float [ %3603, %3574 ], [ 0.000000e+00, %3566 ]
  %3608 = fcmp fast ogt float %3605, 0.000000e+00
  %3609 = fcmp fast ogt float %3606, 0.000000e+00
  %3610 = fcmp fast ogt float %3607, 0.000000e+00
  %3611 = call float @dx.op.unary.f32(i32 23, float %3605)  ; Log(value)
  %3612 = call float @dx.op.unary.f32(i32 23, float %3606)  ; Log(value)
  %3613 = call float @dx.op.unary.f32(i32 23, float %3607)  ; Log(value)
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = lshr i32 %3615, 7
  %3617 = and i32 %3616, 32752
  %3618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3617)  ; LegacyF16ToF32(value)
  %3619 = fmul fast float %3611, 0xBFE62E4300000000
  %3620 = fmul fast float %3619, %3618
  %3621 = fmul fast float %3612, 0xBFE62E4300000000
  %3622 = fmul fast float %3621, %3618
  %3623 = fmul fast float %3613, 0xBFE62E4300000000
  %3624 = fmul fast float %3623, %3618
  %3625 = select i1 %3608, float %3620, float 1.270000e+02
  %3626 = select i1 %3609, float %3622, float 1.270000e+02
  %3627 = select i1 %3610, float %3624, float 1.270000e+02
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 26624
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3668, label %3632

; <label>:3632                                    ; preds = %3604
  %3633 = add i32 %43, 484
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = add i32 %3635, 0
  %3637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3637, %dx.types.Handle %75, float %3031, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 1048576
  %3643 = icmp ne i32 %3642, 0
  %3644 = and i32 %3641, 2048
  %3645 = icmp eq i32 %3644, 0
  br i1 %3645, label %3655, label %3646

; <label>:3646                                    ; preds = %3632
  %3647 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = shl i32 %3649, 4
  %3651 = and i32 %3650, 32752
  %3652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3651)  ; LegacyF16ToF32(value)
  %3653 = fmul fast float %3652, %3647
  %3654 = call float @dx.op.binary.f32(i32 35, float %3653, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3655

; <label>:3655                                    ; preds = %3646, %3632
  %3656 = phi float [ %3654, %3646 ], [ 0x3F70101020000000, %3632 ]
  %3657 = and i32 %3641, 16384
  %3658 = icmp eq i32 %3657, 0
  br i1 %3658, label %3668, label %3659

; <label>:3659                                    ; preds = %3655
  %3660 = add i32 %43, 144
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = lshr i32 %3662, 24
  %3664 = uitofp i32 %3663 to float
  %3665 = fmul fast float %3639, 0x3F70101020000000
  %3666 = select i1 %3643, float 0x3F70101020000000, float %3665
  %3667 = fmul fast float %3666, %3664
  br label %3668

; <label>:3668                                    ; preds = %3659, %3655, %3604
  %3669 = phi float [ %3656, %3659 ], [ %3656, %3655 ], [ 0x3F70101020000000, %3604 ]
  %3670 = phi float [ %3667, %3659 ], [ 0.000000e+00, %3655 ], [ 0.000000e+00, %3604 ]
  %3671 = add i32 %43, 144
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 255
  %3675 = uitofp i32 %3674 to float
  %3676 = lshr i32 %3673, 8
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3439, float %3440, float %3441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = fmul fast float %3678, %3679
  %3681 = fadd fast float %3680, %3675
  %3682 = fmul fast float %3681, 0x3F70101020000000
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  br i1 %2923, label %3684, label %3719

; <label>:3684                                    ; preds = %3668
  %3685 = fmul fast float %3669, 2.000000e+00
  %3686 = fcmp fast olt float %3625, 1.270000e+02
  %3687 = fcmp fast olt float %3626, 1.270000e+02
  %3688 = fcmp fast olt float %3627, 1.270000e+02
  %3689 = fmul fast float %3625, 0xBFF7154760000000
  %3690 = fmul fast float %3689, %3685
  %3691 = fmul fast float %3626, 0xBFF7154760000000
  %3692 = fmul fast float %3691, %3685
  %3693 = fmul fast float %3627, 0xBFF7154760000000
  %3694 = fmul fast float %3693, %3685
  %3695 = call float @dx.op.unary.f32(i32 21, float %3690)  ; Exp(value)
  %3696 = call float @dx.op.unary.f32(i32 21, float %3692)  ; Exp(value)
  %3697 = call float @dx.op.unary.f32(i32 21, float %3694)  ; Exp(value)
  %3698 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3701 = fadd fast float %3698, -1.000000e+00
  %3702 = select i1 %3686, float %3701, float -1.000000e+00
  %3703 = fadd fast float %3699, -1.000000e+00
  %3704 = select i1 %3687, float %3703, float -1.000000e+00
  %3705 = fadd fast float %3700, -1.000000e+00
  %3706 = select i1 %3688, float %3705, float -1.000000e+00
  %3707 = fmul fast float %3702, %3219
  %3708 = fmul fast float %3704, %3219
  %3709 = fmul fast float %3706, %3219
  %3710 = fadd fast float %3707, 1.000000e+00
  %3711 = fadd fast float %3708, 1.000000e+00
  %3712 = fadd fast float %3709, 1.000000e+00
  %3713 = fmul fast float %3710, %2914
  %3714 = fmul fast float %3711, %2915
  %3715 = fmul fast float %3712, %2916
  %3716 = fmul fast float %3710, %2911
  %3717 = fmul fast float %3711, %2912
  %3718 = fmul fast float %3712, %2913
  br label %3719

; <label>:3719                                    ; preds = %3684, %3668
  %3720 = phi float [ %3716, %3684 ], [ %2911, %3668 ]
  %3721 = phi float [ %3717, %3684 ], [ %2912, %3668 ]
  %3722 = phi float [ %3718, %3684 ], [ %2913, %3668 ]
  %3723 = phi float [ %3713, %3684 ], [ %2914, %3668 ]
  %3724 = phi float [ %3714, %3684 ], [ %2915, %3668 ]
  %3725 = phi float [ %3715, %3684 ], [ %2916, %3668 ]
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = and i32 %3727, 3
  %3729 = icmp eq i32 %3728, 3
  br i1 %3729, label %3808, label %3730

; <label>:3730                                    ; preds = %3719
  %3731 = and i32 %3727, 16
  %3732 = icmp ne i32 %3731, 0
  %3733 = select i1 %3732, float %3219, float 0.000000e+00
  %3734 = icmp eq i32 %3728, 0
  br i1 %3734, label %3735, label %3763

; <label>:3735                                    ; preds = %3730
  %3736 = and i32 %3727, 64
  %3737 = icmp ne i32 %3736, 0
  %3738 = select i1 %3737, float %3219, float 0.000000e+00
  %3739 = fsub fast float %3439, %3723
  %3740 = fsub fast float %3440, %3724
  %3741 = fsub fast float %3441, %3725
  %3742 = fmul fast float %3733, %3739
  %3743 = fmul fast float %3733, %3740
  %3744 = fmul fast float %3733, %3741
  %3745 = fadd fast float %3742, %3723
  %3746 = fadd fast float %3743, %3724
  %3747 = fadd fast float %3744, %3725
  %3748 = fsub fast float %3425, %2917
  %3749 = fmul fast float %3733, %3748
  %3750 = fadd fast float %3749, %2917
  %3751 = fsub fast float %3567, %3720
  %3752 = fsub fast float %3568, %3721
  %3753 = fsub fast float %3569, %3722
  %3754 = fmul fast float %3738, %3751
  %3755 = fmul fast float %3738, %3752
  %3756 = fmul fast float %3738, %3753
  %3757 = fadd fast float %3754, %3720
  %3758 = fadd fast float %3755, %3721
  %3759 = fadd fast float %3756, %3722
  %3760 = fsub fast float %3683, %2921
  %3761 = fmul fast float %3733, %3760
  %3762 = fadd fast float %3761, %2921
  br label %3808

; <label>:3763                                    ; preds = %3730
  %3764 = icmp eq i32 %3728, 1
  br i1 %3764, label %3765, label %3778

; <label>:3765                                    ; preds = %3763
  %3766 = fadd fast float %3439, -1.000000e+00
  %3767 = fadd fast float %3440, -1.000000e+00
  %3768 = fadd fast float %3441, -1.000000e+00
  %3769 = fmul fast float %3733, %3766
  %3770 = fmul fast float %3733, %3767
  %3771 = fmul fast float %3733, %3768
  %3772 = fadd fast float %3769, 1.000000e+00
  %3773 = fadd fast float %3770, 1.000000e+00
  %3774 = fadd fast float %3771, 1.000000e+00
  %3775 = fmul fast float %3772, %3723
  %3776 = fmul fast float %3773, %3724
  %3777 = fmul fast float %3774, %3725
  br label %3808

; <label>:3778                                    ; preds = %3763
  %3779 = icmp eq i32 %3728, 2
  br i1 %3779, label %3780, label %3808

; <label>:3780                                    ; preds = %3778
  %3781 = call float @dx.op.unary.f32(i32 24, float %3439)  ; Sqrt(value)
  %3782 = call float @dx.op.unary.f32(i32 24, float %3440)  ; Sqrt(value)
  %3783 = call float @dx.op.unary.f32(i32 24, float %3441)  ; Sqrt(value)
  %3784 = fadd fast float %3781, -5.000000e-01
  %3785 = fadd fast float %3782, -5.000000e-01
  %3786 = fadd fast float %3783, -5.000000e-01
  %3787 = fmul fast float %3784, %3733
  %3788 = fmul fast float %3785, %3733
  %3789 = fmul fast float %3786, %3733
  %3790 = fadd fast float %3787, 5.000000e-01
  %3791 = fadd fast float %3788, 5.000000e-01
  %3792 = fadd fast float %3789, 5.000000e-01
  %3793 = fmul fast float %3790, 2.000000e+00
  %3794 = fsub fast float 1.000000e+00, %3793
  %3795 = fmul fast float %3794, %3723
  %3796 = fadd fast float %3795, %3793
  %3797 = fmul fast float %3796, %3723
  %3798 = fmul fast float %3791, 2.000000e+00
  %3799 = fsub fast float 1.000000e+00, %3798
  %3800 = fmul fast float %3799, %3724
  %3801 = fadd fast float %3800, %3798
  %3802 = fmul fast float %3801, %3724
  %3803 = fmul fast float %3792, 2.000000e+00
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = fmul fast float %3804, %3725
  %3806 = fadd fast float %3805, %3803
  %3807 = fmul fast float %3806, %3725
  br label %3808

; <label>:3808                                    ; preds = %3780, %3778, %3765, %3735, %3719
  %3809 = phi float [ %3720, %3719 ], [ %3720, %3780 ], [ %3720, %3778 ], [ %3720, %3765 ], [ %3757, %3735 ]
  %3810 = phi float [ %3721, %3719 ], [ %3721, %3780 ], [ %3721, %3778 ], [ %3721, %3765 ], [ %3758, %3735 ]
  %3811 = phi float [ %3722, %3719 ], [ %3722, %3780 ], [ %3722, %3778 ], [ %3722, %3765 ], [ %3759, %3735 ]
  %3812 = phi float [ %3723, %3719 ], [ %3797, %3780 ], [ %3723, %3778 ], [ %3775, %3765 ], [ %3745, %3735 ]
  %3813 = phi float [ %3724, %3719 ], [ %3802, %3780 ], [ %3724, %3778 ], [ %3776, %3765 ], [ %3746, %3735 ]
  %3814 = phi float [ %3725, %3719 ], [ %3807, %3780 ], [ %3725, %3778 ], [ %3777, %3765 ], [ %3747, %3735 ]
  %3815 = phi float [ %2917, %3719 ], [ %2917, %3780 ], [ %2917, %3778 ], [ %2917, %3765 ], [ %3750, %3735 ]
  %3816 = phi float [ %2921, %3719 ], [ %2921, %3780 ], [ %2921, %3778 ], [ %2921, %3765 ], [ %3762, %3735 ]
  %3817 = and i32 %3727, 12
  %3818 = icmp eq i32 %3817, 12
  br i1 %3818, label %3901, label %3819

; <label>:3819                                    ; preds = %3808
  %3820 = and i32 %3727, 2097184
  %3821 = icmp eq i32 %3820, 2097184
  %3822 = select i1 %3821, float %3219, float 0.000000e+00
  %3823 = and i32 %3727, 4194336
  %3824 = icmp eq i32 %3823, 4194336
  %3825 = select i1 %3824, float %3219, float 0.000000e+00
  %3826 = and i32 %3727, 8388640
  %3827 = icmp eq i32 %3826, 8388640
  %3828 = select i1 %3827, float %3219, float 0.000000e+00
  %3829 = and i32 %3727, 16384
  %3830 = icmp ne i32 %3829, 0
  %3831 = select i1 %3830, float %3219, float 0.000000e+00
  %3832 = icmp eq i32 %3817, 0
  br i1 %3832, label %3833, label %3849

; <label>:3833                                    ; preds = %3819
  %3834 = fsub fast float %3520, %2909
  %3835 = fsub fast float %3521, %2910
  %3836 = fmul fast float %3822, %3834
  %3837 = fmul fast float %3822, %3835
  %3838 = fadd fast float %3836, %2909
  %3839 = fadd fast float %3837, %2910
  %3840 = fsub fast float %3522, %2919
  %3841 = fmul fast float %3825, %3840
  %3842 = fadd fast float %3841, %2919
  %3843 = fsub fast float %3519, %2918
  %3844 = fmul fast float %3828, %3843
  %3845 = fadd fast float %3844, %2918
  %3846 = fsub fast float %3670, %2920
  %3847 = fmul fast float %3831, %3846
  %3848 = fadd fast float %3847, %2920
  br label %3901

; <label>:3849                                    ; preds = %3819
  %3850 = icmp eq i32 %3817, 4
  br i1 %3850, label %3851, label %3885

; <label>:3851                                    ; preds = %3849
  %3852 = fmul fast float %3822, %3520
  %3853 = fmul fast float %3822, %3521
  %3854 = fadd fast float %3852, %2909
  %3855 = fadd fast float %3853, %2910
  %3856 = call float @dx.op.binary.f32(i32 36, float %2919, float %3522)  ; FMin(a,b)
  %3857 = fsub fast float %3856, %2919
  %3858 = fmul fast float %3857, %3825
  %3859 = fadd fast float %3858, %2919
  %3860 = fadd fast float %3519, %2918
  %3861 = fmul fast float %3860, 0x3FF337FAE0000000
  %3862 = fmul fast float %2918, %2918
  %3863 = fmul fast float %3519, %3519
  %3864 = fadd fast float %3863, %3862
  %3865 = fmul fast float %3864, 0x3FE5152B00000000
  %3866 = fmul fast float %2918, 0xBFCC1F85E0000000
  %3867 = fmul fast float %3866, %3519
  %3868 = fadd fast float %3867, 0xBFE1363700000000
  %3869 = fadd fast float %3868, %3861
  %3870 = fsub fast float %3869, %3865
  %3871 = fmul fast float %3860, 0x3FBA6F0D00000000
  %3872 = fmul fast float %3864, 0x3FD0432880000000
  %3873 = fmul fast float %2918, 0xBFEF110800000000
  %3874 = fmul fast float %3873, %3519
  %3875 = fadd fast float %3874, 1.000000e+00
  %3876 = fsub fast float %3875, %3871
  %3877 = fadd fast float %3876, %3872
  %3878 = fdiv fast float %3870, %3877
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fsub fast float %3879, %2918
  %3881 = fmul fast float %3880, %3828
  %3882 = fadd fast float %3881, %2918
  %3883 = fmul fast float %3831, %3670
  %3884 = fadd fast float %3883, %2920
  br label %3901

; <label>:3885                                    ; preds = %3849
  %3886 = icmp eq i32 %3817, 8
  br i1 %3886, label %3887, label %3901

; <label>:3887                                    ; preds = %3885
  %3888 = fmul fast float %3822, %3520
  %3889 = fmul fast float %3822, %3521
  %3890 = fadd fast float %3888, %2909
  %3891 = fadd fast float %3889, %2910
  %3892 = call float @dx.op.binary.f32(i32 36, float %2919, float %3522)  ; FMin(a,b)
  %3893 = fsub fast float %3892, %2919
  %3894 = fmul fast float %3893, %3825
  %3895 = fadd fast float %3894, %2919
  %3896 = fsub fast float %3519, %2918
  %3897 = fmul fast float %3828, %3896
  %3898 = fadd fast float %3897, %2918
  %3899 = fmul fast float %3831, %3670
  %3900 = fadd fast float %3899, %2920
  br label %3901

; <label>:3901                                    ; preds = %3887, %3885, %3851, %3833, %3808, %3218, %2922, %2908
  %3902 = phi float [ %2909, %3808 ], [ %2909, %3218 ], [ %2909, %2908 ], [ %2909, %2922 ], [ %3838, %3833 ], [ %3854, %3851 ], [ %2909, %3885 ], [ %3890, %3887 ]
  %3903 = phi float [ %2910, %3808 ], [ %2910, %3218 ], [ %2910, %2908 ], [ %2910, %2922 ], [ %3839, %3833 ], [ %3855, %3851 ], [ %2910, %3885 ], [ %3891, %3887 ]
  %3904 = phi float [ %3809, %3808 ], [ %2911, %3218 ], [ %2911, %2908 ], [ %2911, %2922 ], [ %3809, %3833 ], [ %3809, %3851 ], [ %3809, %3885 ], [ %3809, %3887 ]
  %3905 = phi float [ %3810, %3808 ], [ %2912, %3218 ], [ %2912, %2908 ], [ %2912, %2922 ], [ %3810, %3833 ], [ %3810, %3851 ], [ %3810, %3885 ], [ %3810, %3887 ]
  %3906 = phi float [ %3811, %3808 ], [ %2913, %3218 ], [ %2913, %2908 ], [ %2913, %2922 ], [ %3811, %3833 ], [ %3811, %3851 ], [ %3811, %3885 ], [ %3811, %3887 ]
  %3907 = phi float [ %3812, %3808 ], [ %2914, %3218 ], [ %2914, %2908 ], [ %2914, %2922 ], [ %3812, %3833 ], [ %3812, %3851 ], [ %3812, %3885 ], [ %3812, %3887 ]
  %3908 = phi float [ %3813, %3808 ], [ %2915, %3218 ], [ %2915, %2908 ], [ %2915, %2922 ], [ %3813, %3833 ], [ %3813, %3851 ], [ %3813, %3885 ], [ %3813, %3887 ]
  %3909 = phi float [ %3814, %3808 ], [ %2916, %3218 ], [ %2916, %2908 ], [ %2916, %2922 ], [ %3814, %3833 ], [ %3814, %3851 ], [ %3814, %3885 ], [ %3814, %3887 ]
  %3910 = phi float [ %3815, %3808 ], [ %2917, %3218 ], [ %2917, %2908 ], [ %2917, %2922 ], [ %3815, %3833 ], [ %3815, %3851 ], [ %3815, %3885 ], [ %3815, %3887 ]
  %3911 = phi float [ %2918, %3808 ], [ %2918, %3218 ], [ %2918, %2908 ], [ %2918, %2922 ], [ %3845, %3833 ], [ %3882, %3851 ], [ %2918, %3885 ], [ %3898, %3887 ]
  %3912 = phi float [ %2919, %3808 ], [ %2919, %3218 ], [ %2919, %2908 ], [ %2919, %2922 ], [ %3842, %3833 ], [ %3859, %3851 ], [ %2919, %3885 ], [ %3895, %3887 ]
  %3913 = phi float [ %2920, %3808 ], [ %2920, %3218 ], [ %2920, %2908 ], [ %2920, %2922 ], [ %3848, %3833 ], [ %3884, %3851 ], [ %2920, %3885 ], [ %3900, %3887 ]
  %3914 = phi float [ %3816, %3808 ], [ %2921, %3218 ], [ %2921, %2908 ], [ %2921, %2922 ], [ %3816, %3833 ], [ %3816, %3851 ], [ %3816, %3885 ], [ %3816, %3887 ]
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = call float @dx.op.dot2.f32(i32 54, float %3902, float %3903, float %3902, float %3903)  ; Dot2(ax,ay,bx,by)
  %3918 = fmul fast float %3917, 0x3FE3333340000000
  %3919 = fsub fast float 1.000000e+00, %3918
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3902, float %3903, float %3919, float %3902, float %3903, float %3919)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call float @dx.op.unary.f32(i32 25, float %3920)  ; Rsqrt(value)
  %3922 = fmul fast float %3921, %3902
  %3923 = fmul fast float %3921, %3903
  %3924 = fmul fast float %3919, %3921
  %3925 = fmul fast float %3924, %85
  %3926 = fmul fast float %3924, %86
  %3927 = fmul fast float %3924, %87
  %3928 = fmul fast float %3922, %59
  %3929 = fmul fast float %3922, %60
  %3930 = fmul fast float %3922, %61
  %3931 = fadd fast float %3925, %3928
  %3932 = fadd fast float %3926, %3929
  %3933 = fadd fast float %3927, %3930
  %3934 = fmul fast float %97, %3923
  %3935 = fmul fast float %98, %3923
  %3936 = fmul fast float %99, %3923
  %3937 = fadd fast float %3931, %3934
  %3938 = fadd fast float %3932, %3935
  %3939 = fadd fast float %3933, %3936
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3939, float %3937, float %3938, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call float @dx.op.unary.f32(i32 25, float %3940)  ; Rsqrt(value)
  %3942 = fmul fast float %3937, %3941
  %3943 = fmul fast float %3938, %3941
  %3944 = fmul fast float %3939, %3941
  %3945 = and i32 %45, 1
  %3946 = icmp eq i32 %3945, 0
  br i1 %3946, label %3947, label %4455

; <label>:3947                                    ; preds = %3901
  %3948 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3949 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3950 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3951 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3952 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3953 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3954 = fadd fast float %3948, %141
  %3955 = fadd fast float %3949, %142
  %3956 = fadd fast float %3950, %143
  %3957 = fadd fast float %3951, %141
  %3958 = fadd fast float %3952, %142
  %3959 = fadd fast float %3953, %143
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3966 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3967 = fmul fast float %3961, %78
  %3968 = fmul fast float %3967, %3965
  %3969 = fmul fast float %3962, %79
  %3970 = fmul fast float %3969, %3966
  %3971 = fptoui float %3968 to i32
  %3972 = fptoui float %3970 to i32
  %3973 = fadd fast float %3961, -1.000000e+00
  %3974 = fadd fast float %3962, -1.000000e+00
  %3975 = fptoui float %3973 to i32
  %3976 = fptoui float %3974 to i32
  %3977 = call i32 @dx.op.binary.i32(i32 40, i32 %3971, i32 %3975)  ; UMin(a,b)
  %3978 = call i32 @dx.op.binary.i32(i32 40, i32 %3972, i32 %3976)  ; UMin(a,b)
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3982 = fmul fast float %3980, %73
  %3983 = fsub fast float %3982, %3981
  %3984 = fadd fast float %3963, -1.000000e+00
  %3985 = call float @dx.op.binary.f32(i32 36, float %3983, float %3984)  ; FMin(a,b)
  %3986 = fptoui float %3985 to i32
  %3987 = fptoui float %3961 to i32
  %3988 = fptoui float %3962 to i32
  %3989 = mul i32 %3986, %3988
  %3990 = add i32 %3989, %3978
  %3991 = mul i32 %3990, %3987
  %3992 = add i32 %3991, %3977
  %3993 = shl i32 %3992, 2
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = and i32 %3995, 1023
  %3997 = lshr i32 %3995, 10
  %3998 = icmp eq i32 %3996, 0
  br i1 %3998, label %4424, label %3999

; <label>:3999                                    ; preds = %3947
  %4000 = and i32 %3995, 1023
  br label %4001

; <label>:4001                                    ; preds = %4127, %3999
  %4002 = phi i32 [ %4077, %4127 ], [ 0, %3999 ]
  %4003 = phi float [ %4128, %4127 ], [ 0.000000e+00, %3999 ]
  %4004 = phi float [ %4129, %4127 ], [ %3916, %3999 ]
  %4005 = phi float [ %4130, %4127 ], [ %3914, %3999 ]
  %4006 = phi float [ %4131, %4127 ], [ %3913, %3999 ]
  %4007 = phi float [ %4132, %4127 ], [ 0.000000e+00, %3999 ]
  %4008 = phi float [ %4133, %4127 ], [ %3904, %3999 ]
  %4009 = phi float [ %4134, %4127 ], [ %3905, %3999 ]
  %4010 = phi float [ %4135, %4127 ], [ %3906, %3999 ]
  %4011 = phi float [ %4136, %4127 ], [ %3942, %3999 ]
  %4012 = phi float [ %4137, %4127 ], [ %3943, %3999 ]
  %4013 = phi float [ %4138, %4127 ], [ %3944, %3999 ]
  %4014 = phi float [ %4139, %4127 ], [ %3912, %3999 ]
  %4015 = phi float [ %4140, %4127 ], [ %3911, %3999 ]
  %4016 = phi float [ %4141, %4127 ], [ 0.000000e+00, %3999 ]
  %4017 = phi float [ %4142, %4127 ], [ %3910, %3999 ]
  %4018 = phi float [ %4143, %4127 ], [ %3907, %3999 ]
  %4019 = phi float [ %4144, %4127 ], [ %3908, %3999 ]
  %4020 = phi float [ %4145, %4127 ], [ %3909, %3999 ]
  %4021 = add nuw nsw i32 %4002, %3997
  %4022 = shl i32 %4021, 2
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = shl i32 %4024, 8
  %4026 = or i32 %4025, 48
  %4027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.ResRet.f32 %4027, 2
  %4031 = extractvalue %dx.types.ResRet.f32 %4027, 3
  %4032 = or i32 %4025, 64
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.i32 %4033, 1
  %4036 = or i32 %4025, 80
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4040 = or i32 %4025, 96
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = or i32 %4025, 112
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4049 = or i32 %4025, 128
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4055 = or i32 %4025, 144
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.ResRet.f32 %4056, 3
  %4061 = or i32 %4025, 160
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = extractvalue %dx.types.ResRet.f32 %4062, 3
  %4067 = or i32 %4025, 192
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = or i32 %4025, 208
  %4071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = or i32 %4025, 248
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = add nuw nsw i32 %4002, 1
  %4078 = bitcast float %4031 to i32
  %4079 = and i32 %4078, 512
  %4080 = icmp eq i32 %4079, 0
  %4081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.ResRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4081, 2
  %4085 = extractvalue %dx.types.ResRet.f32 %4081, 3
  %4086 = call float @dx.op.dot4.f32(i32 56, float %4082, float %4083, float %4084, float %4085, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4087 = or i32 %4025, 16
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4092 = extractvalue %dx.types.ResRet.f32 %4088, 3
  %4093 = call float @dx.op.dot4.f32(i32 56, float %4089, float %4090, float %4091, float %4092, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4094 = or i32 %4025, 32
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = extractvalue %dx.types.ResRet.f32 %4095, 3
  %4100 = call float @dx.op.dot4.f32(i32 56, float %4096, float %4097, float %4098, float %4099, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4101 = call float @dx.op.unary.f32(i32 27, float %4086)  ; Round_ni(value)
  %4102 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4103 = call float @dx.op.unary.f32(i32 27, float %4093)  ; Round_ni(value)
  %4104 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4105 = call float @dx.op.unary.f32(i32 6, float %4100)  ; FAbs(value)
  %4106 = call float @dx.op.unary.f32(i32 27, float %4105)  ; Round_ni(value)
  %4107 = fadd fast float %4104, %4102
  %4108 = fadd fast float %4107, %4106
  %4109 = fcmp fast oeq float %4108, 0.000000e+00
  %4110 = call float @dx.op.dot4.f32(i32 56, float %4082, float %4083, float %4084, float %4085, float %3954, float %3955, float %3956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4111 = call float @dx.op.dot4.f32(i32 56, float %4089, float %4090, float %4091, float %4092, float %3954, float %3955, float %3956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4112 = call float @dx.op.dot4.f32(i32 56, float %4082, float %4083, float %4084, float %4085, float %3957, float %3958, float %3959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4113 = call float @dx.op.dot4.f32(i32 56, float %4089, float %4090, float %4091, float %4092, float %3957, float %3958, float %3959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4114 = fsub fast float %4110, %4086
  %4115 = fsub fast float %4112, %4086
  %4116 = fsub fast float %4111, %4093
  %4117 = fsub fast float %4113, %4093
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4028, float %4029, float %4030, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4121 = fadd fast float %4120, %4118
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4124 = fcmp fast ogt float %4122, %4123
  %4125 = and i1 %4109, %4124
  %4126 = and i1 %4080, %4125
  br i1 %4126, label %4147, label %4127

; <label>:4127                                    ; preds = %4410, %4228, %4147, %4001
  %4128 = phi float [ %4003, %4147 ], [ %4231, %4228 ], [ %4231, %4410 ], [ %4003, %4001 ]
  %4129 = phi float [ %4004, %4147 ], [ %4004, %4228 ], [ %4385, %4410 ], [ %4004, %4001 ]
  %4130 = phi float [ %4005, %4147 ], [ %4005, %4228 ], [ %4383, %4410 ], [ %4005, %4001 ]
  %4131 = phi float [ %4006, %4147 ], [ %4006, %4228 ], [ %4355, %4410 ], [ %4006, %4001 ]
  %4132 = phi float [ %4007, %4147 ], [ %4007, %4228 ], [ %4353, %4410 ], [ %4007, %4001 ]
  %4133 = phi float [ %4008, %4147 ], [ %4008, %4228 ], [ %4420, %4410 ], [ %4008, %4001 ]
  %4134 = phi float [ %4009, %4147 ], [ %4009, %4228 ], [ %4421, %4410 ], [ %4009, %4001 ]
  %4135 = phi float [ %4010, %4147 ], [ %4010, %4228 ], [ %4422, %4410 ], [ %4010, %4001 ]
  %4136 = phi float [ %4011, %4147 ], [ %4011, %4228 ], [ %4334, %4410 ], [ %4011, %4001 ]
  %4137 = phi float [ %4012, %4147 ], [ %4012, %4228 ], [ %4335, %4410 ], [ %4012, %4001 ]
  %4138 = phi float [ %4013, %4147 ], [ %4013, %4228 ], [ %4336, %4410 ], [ %4013, %4001 ]
  %4139 = phi float [ %4014, %4147 ], [ %4014, %4228 ], [ %4363, %4410 ], [ %4014, %4001 ]
  %4140 = phi float [ %4015, %4147 ], [ %4015, %4228 ], [ %4360, %4410 ], [ %4015, %4001 ]
  %4141 = phi float [ %4016, %4147 ], [ %4016, %4228 ], [ %4357, %4410 ], [ %4016, %4001 ]
  %4142 = phi float [ %4017, %4147 ], [ %4017, %4228 ], [ %4351, %4410 ], [ %4017, %4001 ]
  %4143 = phi float [ %4018, %4147 ], [ %4018, %4228 ], [ %4346, %4410 ], [ %4018, %4001 ]
  %4144 = phi float [ %4019, %4147 ], [ %4019, %4228 ], [ %4347, %4410 ], [ %4019, %4001 ]
  %4145 = phi float [ %4020, %4147 ], [ %4020, %4228 ], [ %4348, %4410 ], [ %4020, %4001 ]
  %4146 = icmp eq i32 %4077, %4000
  br i1 %4146, label %4423, label %4001

; <label>:4147                                    ; preds = %4001
  %4148 = extractvalue %dx.types.ResRet.f32 %4047, 3
  %4149 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4153 = extractvalue %dx.types.ResRet.i32 %4033, 3
  %4154 = extractvalue %dx.types.ResRet.i32 %4033, 2
  %4155 = add i32 %4153, 0
  %4156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4156, %dx.types.Handle %4157, float %4086, float %4093, float undef, float undef, i32 0, i32 0, i32 undef, float %4114, float %4116, float undef, float %4115, float %4117, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = fmul fast float %4159, %4152
  %4161 = fadd fast float %4160, %4151
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = fmul fast float %4086, %4042
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4093, float %4163)  ; FMad(a,b,c)
  %4165 = fadd fast float %4164, %4150
  %4166 = fmul fast float %4086, %4044
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4093, float %4166)  ; FMad(a,b,c)
  %4168 = fadd fast float %4167, %4149
  %4169 = fmul fast float %4114, %4042
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4116, float %4169)  ; FMad(a,b,c)
  %4171 = fmul fast float %4114, %4044
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4116, float %4171)  ; FMad(a,b,c)
  %4173 = fmul fast float %4115, %4042
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4117, float %4173)  ; FMad(a,b,c)
  %4175 = fmul fast float %4115, %4044
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4117, float %4175)  ; FMad(a,b,c)
  %4177 = add i32 %4154, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %4157, float %4165, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4170, float %4172, float undef, float %4174, float %4176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = and i32 %4078, 1024
  %4182 = icmp ne i32 %4181, 0
  %4183 = fcmp fast ogt float %4180, 0x3FE0101020000000
  %4184 = uitofp i1 %4183 to float
  %4185 = select i1 %4182, float %4184, float %4180
  %4186 = and i32 %4078, 8192
  %4187 = icmp ne i32 %4186, 0
  %4188 = select i1 %4187, float %4148, float 1.000000e+00
  %4189 = fmul fast float %4086, 2.000000e+00
  %4190 = fadd fast float %4189, -1.000000e+00
  %4191 = call float @dx.op.unary.f32(i32 6, float %4190)  ; FAbs(value)
  %4192 = fmul fast float %4191, %4075
  %4193 = fsub fast float %4192, %4075
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = fmul fast float %4093, 2.000000e+00
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = call float @dx.op.unary.f32(i32 6, float %4196)  ; FAbs(value)
  %4198 = fmul fast float %4197, %4076
  %4199 = fsub fast float %4198, %4076
  %4200 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4201 = fmul fast float %4105, %4038
  %4202 = fsub fast float %4201, %4038
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = fmul fast float %4162, %4188
  %4205 = fmul fast float %4204, %4159
  %4206 = fmul fast float %4205, %4194
  %4207 = fmul fast float %4206, %4185
  %4208 = fmul fast float %4207, %4200
  %4209 = fmul fast float %4208, %4203
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4213 = fsub fast float %4122, %4212
  %4214 = fmul fast float %4213, %4211
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fmul fast float %4209, %4039
  %4217 = fadd fast float %4209, %4039
  %4218 = fmul fast float %4217, %4048
  %4219 = fsub fast float %4218, %4048
  %4220 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4221 = and i32 %4078, 128
  %4222 = icmp ne i32 %4221, 0
  %4223 = select i1 %4222, float %4220, float %4216
  %4224 = fmul fast float %4223, %4215
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = fcmp fast ugt float %4224, %4226
  br i1 %4227, label %4228, label %4127

; <label>:4228                                    ; preds = %4147
  %4229 = select i1 %4187, float %4224, float 0.000000e+00
  %4230 = fadd fast float %4229, %4003
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  br i1 %4187, label %4127, label %4232

; <label>:4232                                    ; preds = %4228
  %4233 = and i32 %4078, 4
  %4234 = and i32 %4078, 8
  %4235 = add i32 %4034, 0
  %4236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4235, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4238 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4236, %dx.types.Handle %4237, float %4165, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4170, float %4172, float undef, float %4174, float %4176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.ResRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.ResRet.f32 %4238, 3
  %4243 = bitcast float %4060 to i32
  %4244 = and i32 %4243, 255
  %4245 = uitofp i32 %4244 to float
  %4246 = lshr i32 %4243, 8
  %4247 = and i32 %4246, 255
  %4248 = uitofp i32 %4247 to float
  %4249 = fmul fast float %4242, %4245
  %4250 = fadd fast float %4249, %4248
  %4251 = fmul fast float %4250, 0x3F70101000000000
  %4252 = add i32 %4035, 0
  %4253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4254 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4253, %dx.types.Handle %4237, float %4165, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4170, float %4172, float undef, float %4174, float %4176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = extractvalue %dx.types.ResRet.f32 %4254, 3
  %4259 = bitcast float %4054 to i32
  %4260 = and i32 %4259, 255
  %4261 = uitofp i32 %4260 to float
  %4262 = lshr i32 %4259, 8
  %4263 = and i32 %4262, 255
  %4264 = uitofp i32 %4263 to float
  %4265 = lshr i32 %4259, 16
  %4266 = and i32 %4265, 255
  %4267 = uitofp i32 %4266 to float
  %4268 = fmul fast float %4267, 0x3F70101000000000
  %4269 = fmul fast float %4255, %4261
  %4270 = fadd fast float %4269, %4264
  %4271 = fmul fast float %4270, 0x3F70101000000000
  %4272 = fadd fast float %4256, -5.000000e-01
  %4273 = fadd fast float %4258, -5.000000e-01
  %4274 = fmul fast float %4272, %4268
  %4275 = fmul fast float %4273, %4268
  %4276 = fadd fast float %4274, 5.000000e-01
  %4277 = fadd fast float %4275, 5.000000e-01
  %4278 = fmul fast float %4239, %4063
  %4279 = fmul fast float %4240, %4064
  %4280 = fmul fast float %4241, %4065
  %4281 = fmul fast float %4276, 2.000000e+00
  %4282 = fadd fast float %4281, -1.000000e+00
  %4283 = fmul fast float %4277, 2.000000e+00
  %4284 = fadd fast float %4283, -1.000000e+00
  %4285 = fadd fast float %4282, %4284
  %4286 = fmul fast float %4285, 5.000000e-01
  %4287 = fsub fast float %4282, %4284
  %4288 = fmul fast float %4287, 5.000000e-01
  %4289 = call float @dx.op.unary.f32(i32 6, float %4286)  ; FAbs(value)
  %4290 = fsub fast float 1.000000e+00, %4289
  %4291 = call float @dx.op.unary.f32(i32 6, float %4288)  ; FAbs(value)
  %4292 = fsub fast float %4290, %4291
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4286, float %4288, float %4292, float %4286, float %4288, float %4292)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = call float @dx.op.unary.f32(i32 25, float %4293)  ; Rsqrt(value)
  %4295 = fmul fast float %4286, %4294
  %4296 = fmul fast float %4288, %4294
  %4297 = fmul fast float %4294, %4292
  %4298 = fmul fast float %4297, %4028
  %4299 = fmul fast float %4297, %4029
  %4300 = fmul fast float %4297, %4030
  %4301 = fmul fast float %4295, %4051
  %4302 = fmul fast float %4295, %4052
  %4303 = fmul fast float %4295, %4053
  %4304 = fadd fast float %4301, %4298
  %4305 = fadd fast float %4302, %4299
  %4306 = fadd fast float %4303, %4300
  %4307 = fmul fast float %4296, %4057
  %4308 = fmul fast float %4296, %4058
  %4309 = fmul fast float %4296, %4059
  %4310 = fadd fast float %4304, %4307
  %4311 = fadd fast float %4305, %4308
  %4312 = fadd fast float %4306, %4309
  %4313 = call float @dx.op.dot3.f32(i32 55, float %4310, float %4311, float %4312, float %4310, float %4311, float %4312)  ; Dot3(ax,ay,az,bx,by,bz)
  %4314 = call float @dx.op.unary.f32(i32 25, float %4313)  ; Rsqrt(value)
  %4315 = fmul fast float %4310, %4314
  %4316 = fmul fast float %4311, %4314
  %4317 = fmul fast float %4312, %4314
  %4318 = icmp ne i32 %4234, 0
  %4319 = select i1 %4318, float 1.000000e+00, float 0.000000e+00
  %4320 = fmul fast float %4224, %4319
  %4321 = and i32 %4078, 1
  %4322 = icmp eq i32 %4321, 0
  br i1 %4322, label %4323, label %4327

; <label>:4323                                    ; preds = %4232
  %4324 = fsub fast float %4315, %4011
  %4325 = fsub fast float %4316, %4012
  %4326 = fsub fast float %4317, %4013
  br label %4327

; <label>:4327                                    ; preds = %4323, %4232
  %4328 = phi float [ %4324, %4323 ], [ %4315, %4232 ]
  %4329 = phi float [ %4325, %4323 ], [ %4316, %4232 ]
  %4330 = phi float [ %4326, %4323 ], [ %4317, %4232 ]
  %4331 = fmul float %4330, %4320
  %4332 = fmul float %4329, %4320
  %4333 = fmul float %4328, %4320
  %4334 = fadd fast float %4333, %4011
  %4335 = fadd fast float %4332, %4012
  %4336 = fadd fast float %4331, %4013
  %4337 = icmp ne i32 %4233, 0
  %4338 = select i1 %4337, float 1.000000e+00, float 0.000000e+00
  %4339 = fmul fast float %4224, %4338
  %4340 = fsub fast float %4278, %4018
  %4341 = fsub fast float %4279, %4019
  %4342 = fsub fast float %4280, %4020
  %4343 = fmul fast float %4340, %4339
  %4344 = fmul fast float %4341, %4339
  %4345 = fmul fast float %4342, %4339
  %4346 = fadd fast float %4343, %4018
  %4347 = fadd fast float %4344, %4019
  %4348 = fadd fast float %4345, %4020
  %4349 = fsub fast float %4251, %4017
  %4350 = fmul fast float %4349, %4339
  %4351 = fadd fast float %4350, %4017
  %4352 = fmul fast float %4339, %4007
  %4353 = fsub fast float %4007, %4352
  %4354 = fmul fast float %4339, %4006
  %4355 = fsub fast float %4006, %4354
  %4356 = fadd fast float %4224, %4016
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fsub fast float %4271, %4015
  %4359 = fmul fast float %4358, %4320
  %4360 = fadd fast float %4359, %4015
  %4361 = fsub fast float %4257, %4014
  %4362 = fmul fast float %4361, %4320
  %4363 = fadd fast float %4362, %4014
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4278, float %4279, float %4280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4368 = fmul fast float %4367, %4364
  %4369 = fadd fast float %4368, %4366
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = bitcast float %4066 to i32
  %4372 = and i32 %4371, 65535
  %4373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4372)  ; LegacyF16ToF32(value)
  %4374 = lshr i32 %4371, 16
  %4375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4374)  ; LegacyF16ToF32(value)
  %4376 = fcmp fast oge float %4373, 0.000000e+00
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = select i1 %4376, float %4373, float %4378
  %4380 = fadd fast float %4379, %4375
  %4381 = fsub fast float %4370, %4005
  %4382 = fmul fast float %4381, %4224
  %4383 = fadd fast float %4382, %4005
  %4384 = fmul fast float %4380, %4224
  %4385 = call float @dx.op.binary.f32(i32 35, float %4004, float %4384)  ; FMax(a,b)
  %4386 = and i32 %4078, 16
  %4387 = icmp eq i32 %4386, 0
  br i1 %4387, label %4410, label %4388

; <label>:4388                                    ; preds = %4327
  %4389 = bitcast float %4072 to i32
  %4390 = add i32 %4069, 0
  %4391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4390, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4392 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4391, %dx.types.Handle %4237, float %4165, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4170, float %4172, float undef, float %4174, float %4176, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = and i32 %4389, 65535
  %4397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4396)  ; LegacyF16ToF32(value)
  %4398 = fmul fast float %4393, %4063
  %4399 = fmul fast float %4394, %4064
  %4400 = fmul fast float %4395, %4065
  %4401 = and i32 %4078, 16384
  %4402 = icmp ne i32 %4401, 0
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = select i1 %4402, float %4404, float 1.000000e+00
  %4406 = fmul fast float %4405, %4397
  %4407 = fmul fast float %4398, %4406
  %4408 = fmul fast float %4399, %4406
  %4409 = fmul fast float %4400, %4406
  br label %4410

; <label>:4410                                    ; preds = %4388, %4327
  %4411 = phi float [ %4407, %4388 ], [ 0.000000e+00, %4327 ]
  %4412 = phi float [ %4408, %4388 ], [ 0.000000e+00, %4327 ]
  %4413 = phi float [ %4409, %4388 ], [ 0.000000e+00, %4327 ]
  %4414 = fsub fast float %4411, %4008
  %4415 = fsub fast float %4412, %4009
  %4416 = fsub fast float %4413, %4010
  %4417 = fmul fast float %4414, %4224
  %4418 = fmul fast float %4415, %4224
  %4419 = fmul fast float %4416, %4224
  %4420 = fadd fast float %4417, %4008
  %4421 = fadd fast float %4418, %4009
  %4422 = fadd fast float %4419, %4010
  br label %4127

; <label>:4423                                    ; preds = %4127
  br label %4424

; <label>:4424                                    ; preds = %4423, %3947
  %4425 = phi float [ 0.000000e+00, %3947 ], [ %4128, %4423 ]
  %4426 = phi float [ %3916, %3947 ], [ %4129, %4423 ]
  %4427 = phi float [ %3914, %3947 ], [ %4130, %4423 ]
  %4428 = phi float [ %3913, %3947 ], [ %4131, %4423 ]
  %4429 = phi float [ 0.000000e+00, %3947 ], [ %4132, %4423 ]
  %4430 = phi float [ %3904, %3947 ], [ %4133, %4423 ]
  %4431 = phi float [ %3905, %3947 ], [ %4134, %4423 ]
  %4432 = phi float [ %3906, %3947 ], [ %4135, %4423 ]
  %4433 = phi float [ %3942, %3947 ], [ %4136, %4423 ]
  %4434 = phi float [ %3943, %3947 ], [ %4137, %4423 ]
  %4435 = phi float [ %3944, %3947 ], [ %4138, %4423 ]
  %4436 = phi float [ %3912, %3947 ], [ %4139, %4423 ]
  %4437 = phi float [ %3911, %3947 ], [ %4140, %4423 ]
  %4438 = phi float [ 0.000000e+00, %3947 ], [ %4141, %4423 ]
  %4439 = phi float [ %3910, %3947 ], [ %4142, %4423 ]
  %4440 = phi float [ %3907, %3947 ], [ %4143, %4423 ]
  %4441 = phi float [ %3908, %3947 ], [ %4144, %4423 ]
  %4442 = phi float [ %3909, %3947 ], [ %4145, %4423 ]
  %4443 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4435, float %4433, float %4434, float %4435)  ; Dot3(ax,ay,az,bx,by,bz)
  %4444 = call float @dx.op.unary.f32(i32 25, float %4443)  ; Rsqrt(value)
  %4445 = fmul fast float %4444, %4433
  %4446 = fmul fast float %4444, %4434
  %4447 = fmul fast float %4444, %4435
  %4448 = fadd fast float %4438, %931
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4446, float %4447, float %4445, float %4446, float %4447)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = call float @dx.op.unary.f32(i32 25, float %4450)  ; Rsqrt(value)
  %4452 = fmul fast float %4451, %4445
  %4453 = fmul fast float %4451, %4446
  %4454 = fmul fast float %4451, %4447
  br label %4455

; <label>:4455                                    ; preds = %4424, %3901
  %4456 = phi float [ %4452, %4424 ], [ %3942, %3901 ]
  %4457 = phi float [ %4453, %4424 ], [ %3943, %3901 ]
  %4458 = phi float [ %4454, %4424 ], [ %3944, %3901 ]
  %4459 = phi float [ %4440, %4424 ], [ %3907, %3901 ]
  %4460 = phi float [ %4441, %4424 ], [ %3908, %3901 ]
  %4461 = phi float [ %4442, %4424 ], [ %3909, %3901 ]
  %4462 = phi float [ %4430, %4424 ], [ %3904, %3901 ]
  %4463 = phi float [ %4431, %4424 ], [ %3905, %3901 ]
  %4464 = phi float [ %4432, %4424 ], [ %3906, %3901 ]
  %4465 = phi float [ %4439, %4424 ], [ %3910, %3901 ]
  %4466 = phi float [ %4449, %4424 ], [ %931, %3901 ]
  %4467 = phi float [ %4437, %4424 ], [ %3911, %3901 ]
  %4468 = phi float [ %4436, %4424 ], [ %3912, %3901 ]
  %4469 = phi float [ %4429, %4424 ], [ 0.000000e+00, %3901 ]
  %4470 = phi float [ %4428, %4424 ], [ %3913, %3901 ]
  %4471 = phi float [ %4425, %4424 ], [ 0.000000e+00, %3901 ]
  %4472 = phi float [ %4426, %4424 ], [ %3916, %3901 ]
  %4473 = phi float [ %4427, %4424 ], [ %3914, %3901 ]
  %4474 = fadd fast float %4465, 0xBFB99999A0000000
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, 0x3FF1C71C80000000
  %4477 = call float @dx.op.binary.f32(i32 36, float %4465, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4478 = fsub fast float 1.000000e+00, %4476
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %4479, %4459
  %4481 = fmul fast float %4479, %4460
  %4482 = fmul fast float %4479, %4461
  %4483 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = fmul fast float %4476, %4459
  %4487 = fmul fast float %4476, %4460
  %4488 = fmul fast float %4476, %4461
  %4489 = fadd fast float %4486, %4477
  %4490 = fadd fast float %4487, %4477
  %4491 = fadd fast float %4488, %4477
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.i32 %4496, 3
  %4498 = and i32 %4497, 8
  %4499 = icmp ne i32 %4498, 0
  %4500 = call float @dx.op.binary.f32(i32 35, float %4483, float %4459)  ; FMax(a,b)
  %4501 = call float @dx.op.binary.f32(i32 35, float %4484, float %4459)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 35, float %4485, float %4459)  ; FMax(a,b)
  %4503 = call float @dx.op.dot3.f32(i32 55, float %4483, float %4484, float %4485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = select i1 %183, float %4459, float %4483
  %4505 = select i1 %183, float %4503, float %4484
  %4506 = select i1 %183, float 1.000000e+00, float %4485
  %4507 = select i1 %4499, float %4500, float %4504
  %4508 = select i1 %4499, float %4501, float %4505
  %4509 = select i1 %4499, float %4502, float %4506
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4513 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4514 = fadd fast float %4511, %141
  %4515 = fadd fast float %4512, %142
  %4516 = fadd fast float %4513, %143
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4520 = fsub fast float %4514, %4518
  %4521 = fsub fast float %4515, %4519
  %4522 = fmul fast float %4520, %4520
  %4523 = fmul fast float %4521, %4521
  %4524 = fadd fast float %4522, %4523
  %4525 = call float @dx.op.unary.f32(i32 24, float %4524)  ; Sqrt(value)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4517, 2
  %4527 = fcmp fast olt float %4525, %4526
  br i1 %4527, label %4528, label %4595

; <label>:4528                                    ; preds = %4455
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4537 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4539 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4540 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4541 = fadd fast float %4538, %4514
  %4542 = fadd fast float %4539, %4515
  %4543 = fadd fast float %4540, %4516
  %4544 = fmul fast float %4541, %4530
  %4545 = call float @dx.op.tertiary.f32(i32 46, float %4542, float %4532, float %4544)  ; FMad(a,b,c)
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4543, float %4534, float %4545)  ; FMad(a,b,c)
  %4547 = fmul fast float %4541, %4535
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4542, float %4536, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4543, float %4537, float %4548)  ; FMad(a,b,c)
  %4550 = fsub fast float %4546, %4538
  %4551 = fsub fast float %4549, %4539
  %4552 = fsub fast float %4550, %4518
  %4553 = fadd fast float %4552, %4526
  %4554 = fsub fast float %4551, %4519
  %4555 = fadd fast float %4554, %4526
  %4556 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4557 = fmul fast float %4553, %4556
  %4558 = fmul fast float %4555, %4556
  %4559 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4561 = fsub fast float 1.000000e+00, %4559
  %4562 = fsub fast float 1.000000e+00, %4560
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = fcmp fast ugt float %4564, 0.000000e+00
  br i1 %4565, label %4566, label %4869

; <label>:4566                                    ; preds = %4528
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 2
  %4569 = fmul fast float %4568, %4564
  %4570 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4571 = fadd fast float %4570, %4569
  %4572 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4573 = fadd fast float %4571, %4540
  %4574 = fmul fast float %4546, %4534
  %4575 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4537, float %4574)  ; FMad(a,b,c)
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4572, float %4575)  ; FMad(a,b,c)
  %4577 = fsub fast float %4576, %4540
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 2
  %4580 = fsub fast float %4577, %4579
  %4581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = fadd fast float %4586, %4582
  %4590 = fmul fast float %4589, 0x3F847AE140000000
  %4591 = fadd fast float %4587, %4583
  %4592 = fmul fast float %4591, 0x3F847AE140000000
  %4593 = fadd fast float %4588, %4584
  %4594 = fmul fast float %4593, 0x3F847AE140000000
  br label %4869

; <label>:4595                                    ; preds = %4455
  %4596 = and i32 %159, 1
  %4597 = icmp eq i32 %4596, 0
  br i1 %4597, label %4869, label %4598

; <label>:4598                                    ; preds = %4595
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4607 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4608 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4609 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4610 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4611 = fadd fast float %4608, %4514
  %4612 = fadd fast float %4609, %4515
  %4613 = fadd fast float %4610, %4516
  %4614 = fmul fast float %4611, %4600
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4602, float %4614)  ; FMad(a,b,c)
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4604, float %4615)  ; FMad(a,b,c)
  %4617 = fmul fast float %4611, %4605
  %4618 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4606, float %4617)  ; FMad(a,b,c)
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4607, float %4618)  ; FMad(a,b,c)
  %4620 = fsub fast float %4616, %4608
  %4621 = fsub fast float %4619, %4609
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4626 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 3
  %4629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.i32 %4629, 0
  %4631 = extractvalue %dx.types.CBufRet.i32 %4629, 1
  %4632 = udiv i32 %4631, %4630
  %4633 = fsub fast float %4620, %4623
  %4634 = fsub fast float %4621, %4624
  %4635 = call float @dx.op.binary.f32(i32 35, float %4633, float 0.000000e+00)  ; FMax(a,b)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4634, float 0.000000e+00)  ; FMax(a,b)
  %4637 = call float @dx.op.binary.f32(i32 36, float %4635, float %4625)  ; FMin(a,b)
  %4638 = call float @dx.op.binary.f32(i32 36, float %4636, float %4626)  ; FMin(a,b)
  %4639 = add i32 %4630, -1
  %4640 = add i32 %4632, -1
  %4641 = fmul fast float %4637, %4628
  %4642 = fmul fast float %4638, %4628
  %4643 = fptoui float %4641 to i32
  %4644 = fptoui float %4642 to i32
  %4645 = call i32 @dx.op.binary.i32(i32 40, i32 %4643, i32 %4639)  ; UMin(a,b)
  %4646 = call i32 @dx.op.binary.i32(i32 40, i32 %4644, i32 %4640)  ; UMin(a,b)
  %4647 = mul i32 %4646, %4630
  %4648 = add i32 %4647, %4645
  %4649 = shl i32 %4648, 2
  %4650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4649, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.i32 %4650, 0
  %4652 = icmp eq i32 %4651, -1
  br i1 %4652, label %4869, label %4653

; <label>:4653                                    ; preds = %4598
  %4654 = mul i32 %4651, 148
  %4655 = add i32 %4654, 4
  %4656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4655, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = add i32 %4654, 8
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4654, 36
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = add i32 %4654, 60
  %4665 = add i32 %4654, 92
  %4666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4665, i32 undef)  ; BufferLoad(srv,index,wot)
  %4667 = extractvalue %dx.types.ResRet.i32 %4666, 0
  %4668 = add i32 %4654, 116
  %4669 = fsub fast float %4620, %4657
  %4670 = fsub fast float %4621, %4660
  %4671 = fmul fast float %4628, %4669
  %4672 = fmul fast float %4628, %4670
  %4673 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4675 = fsub fast float 1.000000e+00, %4674
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4678 = call float @dx.op.unary.f32(i32 83, float %4673)  ; DerivCoarseX(value)
  %4679 = call float @dx.op.unary.f32(i32 83, float %4675)  ; DerivCoarseX(value)
  %4680 = call float @dx.op.unary.f32(i32 84, float %4673)  ; DerivCoarseY(value)
  %4681 = call float @dx.op.unary.f32(i32 84, float %4675)  ; DerivCoarseY(value)
  %4682 = fmul fast float %4678, %4677
  %4683 = fmul fast float %4679, %4677
  %4684 = fmul fast float %4680, %4677
  %4685 = fmul fast float %4681, %4677
  %4686 = call float @dx.op.dot2.f32(i32 54, float %4684, float %4685, float %4684, float %4685)  ; Dot2(ax,ay,bx,by)
  %4687 = call float @dx.op.dot2.f32(i32 54, float %4682, float %4683, float %4682, float %4683)  ; Dot2(ax,ay,bx,by)
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float %4686)  ; FMax(a,b)
  %4689 = call float @dx.op.unary.f32(i32 23, float %4688)  ; Log(value)
  %4690 = fmul fast float %4689, 5.000000e-01
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 1
  %4693 = fadd fast float %4692, %4690
  %4694 = call float @dx.op.binary.f32(i32 35, float %4693, float 0.000000e+00)  ; FMax(a,b)
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 3
  %4697 = fadd fast float %4696, %4694
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4700 = fadd fast float %4697, %4699
  %4701 = add i32 %4667, 0
  %4702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4701, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4703 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4702, i32 0)  ; GetDimensions(handle,mipLevel)
  %4704 = extractvalue %dx.types.Dimensions %4703, 0
  %4705 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4704)  ; FirstbitLo(value)
  %4706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.i32 %4706, 1
  %4708 = sub nsw i32 %4707, %4705
  %4709 = sitofp i32 %4708 to float
  %4710 = fsub fast float %4700, %4709
  %4711 = call float @dx.op.binary.f32(i32 35, float %4710, float 0.000000e+00)  ; FMax(a,b)
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4702, %dx.types.Handle %37, float %4673, float %4675, float %4663, float undef, i32 0, i32 0, i32 undef, float %4711)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = fcmp ule float %4713, 0x3FE0101020000000
  %4715 = extractvalue %dx.types.CBufRet.i32 %4706, 0
  %4716 = and i32 %4715, 128
  %4717 = icmp ne i32 %4716, 0
  %4718 = and i1 %4714, %4717
  br i1 %4718, label %4869, label %4719

; <label>:4719                                    ; preds = %4653
  %4720 = add i32 %4654, 20
  %4721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4720, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = add i32 %4654, 24
  %4724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4723, i32 undef)  ; BufferLoad(srv,index,wot)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = add i32 %4654, 40
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4654, 96
  %4730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.i32 %4730, 0
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4734 = fmul fast float %4733, %4673
  %4735 = fmul fast float %4733, %4675
  %4736 = extractvalue %dx.types.CBufRet.f32 %4732, 3
  %4737 = fadd fast float %4734, %4736
  %4738 = fadd fast float %4735, %4736
  %4739 = add i32 %4731, 0
  %4740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4741 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4740, i32 0)  ; GetDimensions(handle,mipLevel)
  %4742 = extractvalue %dx.types.Dimensions %4741, 0
  %4743 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4742)  ; FirstbitLo(value)
  %4744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.i32 %4744, 1
  %4746 = sub nsw i32 %4745, %4743
  %4747 = sitofp i32 %4746 to float
  %4748 = fsub fast float %4697, %4747
  %4749 = call float @dx.op.binary.f32(i32 35, float %4748, float 0.000000e+00)  ; FMax(a,b)
  %4750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4740, %dx.types.Handle %37, float %4737, float %4738, float %4728, float undef, i32 0, i32 0, i32 undef, float %4749)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4751 = extractvalue %dx.types.ResRet.f32 %4750, 0
  %4752 = fmul fast float %4751, %4722
  %4753 = fadd fast float %4752, %4725
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.CBufRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.CBufRet.f32 %4754, 2
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 3
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4762 = extractvalue %dx.types.CBufRet.f32 %4754, 3
  %4763 = fadd fast float %4759, %4620
  %4764 = fadd fast float %4761, %4621
  %4765 = fadd fast float %4753, %4762
  %4766 = fmul fast float %4763, %4755
  %4767 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4756, float %4766)  ; FMad(a,b,c)
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4757, float %4767)  ; FMad(a,b,c)
  %4769 = fsub fast float %4768, %4762
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4772 = fsub fast float %4769, %4771
  %4773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.i32 %4773, 0
  %4775 = call i32 @dx.op.binary.i32(i32 40, i32 %4651, i32 %4774)  ; UMin(a,b)
  %4776 = mul i32 %4775, 36
  %4777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4776, i32 undef)  ; BufferLoad(srv,index,wot)
  %4778 = extractvalue %dx.types.ResRet.i32 %4777, 0
  %4779 = add i32 %4776, 4
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = fmul fast float %4781, %4673
  %4783 = fmul fast float %4781, %4675
  %4784 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4785 = fadd fast float %4782, %4784
  %4786 = fadd fast float %4783, %4784
  %4787 = icmp eq i32 %4778, 0
  br i1 %4787, label %4856, label %4788

; <label>:4788                                    ; preds = %4719
  br label %4789

; <label>:4789                                    ; preds = %4846, %4788
  %4790 = phi float [ %4847, %4846 ], [ 0.000000e+00, %4788 ]
  %4791 = phi float [ %4848, %4846 ], [ 0.000000e+00, %4788 ]
  %4792 = phi float [ %4849, %4846 ], [ 0.000000e+00, %4788 ]
  %4793 = phi float [ %4850, %4846 ], [ 0.000000e+00, %4788 ]
  %4794 = phi float [ %4851, %4846 ], [ 0.000000e+00, %4788 ]
  %4795 = phi float [ %4852, %4846 ], [ 0.000000e+00, %4788 ]
  %4796 = phi i32 [ %4853, %4846 ], [ 0, %4788 ]
  %4797 = shl i32 %4796, 2
  %4798 = add i32 %4664, %4797
  %4799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4798, i32 undef)  ; BufferLoad(srv,index,wot)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = add i32 %4668, %4797
  %4802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.i32 %4802, 0
  %4804 = add i32 %4803, 0
  %4805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4804, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4806 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4805, i32 0)  ; GetDimensions(handle,mipLevel)
  %4807 = extractvalue %dx.types.Dimensions %4806, 0
  %4808 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4807)  ; FirstbitLo(value)
  %4809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.i32 %4809, 1
  %4811 = sub nsw i32 %4810, %4808
  %4812 = sitofp i32 %4811 to float
  %4813 = fsub fast float %4697, %4812
  %4814 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4805, %dx.types.Handle %37, float %4785, float %4786, float %4800, float undef, i32 0, i32 0, i32 undef, float %4814)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = fcmp fast ogt float %4816, 0.000000e+00
  br i1 %4817, label %4818, label %4846

; <label>:4818                                    ; preds = %4789
  %4819 = add i32 %4779, %4797
  %4820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4819, i32 undef)  ; BufferLoad(srv,index,wot)
  %4821 = extractvalue %dx.types.ResRet.i32 %4820, 0
  %4822 = and i32 %4821, 32767
  %4823 = mul nuw nsw i32 %4822, 928
  %4824 = add nuw nsw i32 %4823, 48
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  %4829 = add nuw nsw i32 %4823, 60
  %4830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4829, i32 undef)  ; BufferLoad(srv,index,wot)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = fmul fast float %4826, %4816
  %4835 = fmul fast float %4827, %4816
  %4836 = fmul fast float %4828, %4816
  %4837 = fadd fast float %4834, %4790
  %4838 = fadd fast float %4835, %4791
  %4839 = fadd fast float %4836, %4792
  %4840 = fmul fast float %4831, %4816
  %4841 = fmul fast float %4832, %4816
  %4842 = fmul fast float %4833, %4816
  %4843 = fadd fast float %4840, %4793
  %4844 = fadd fast float %4841, %4794
  %4845 = fadd fast float %4842, %4795
  br label %4846

; <label>:4846                                    ; preds = %4818, %4789
  %4847 = phi float [ %4837, %4818 ], [ %4790, %4789 ]
  %4848 = phi float [ %4838, %4818 ], [ %4791, %4789 ]
  %4849 = phi float [ %4839, %4818 ], [ %4792, %4789 ]
  %4850 = phi float [ %4843, %4818 ], [ %4793, %4789 ]
  %4851 = phi float [ %4844, %4818 ], [ %4794, %4789 ]
  %4852 = phi float [ %4845, %4818 ], [ %4795, %4789 ]
  %4853 = add nuw i32 %4796, 1
  %4854 = icmp eq i32 %4853, %4778
  br i1 %4854, label %4855, label %4789

; <label>:4855                                    ; preds = %4846
  br label %4856

; <label>:4856                                    ; preds = %4855, %4719
  %4857 = phi float [ 0.000000e+00, %4719 ], [ %4847, %4855 ]
  %4858 = phi float [ 0.000000e+00, %4719 ], [ %4848, %4855 ]
  %4859 = phi float [ 0.000000e+00, %4719 ], [ %4849, %4855 ]
  %4860 = phi float [ 0.000000e+00, %4719 ], [ %4850, %4855 ]
  %4861 = phi float [ 0.000000e+00, %4719 ], [ %4851, %4855 ]
  %4862 = phi float [ 0.000000e+00, %4719 ], [ %4852, %4855 ]
  %4863 = fadd fast float %4860, %4857
  %4864 = fmul fast float %4863, 0x3F847AE140000000
  %4865 = fadd fast float %4861, %4858
  %4866 = fmul fast float %4865, 0x3F847AE140000000
  %4867 = fadd fast float %4862, %4859
  %4868 = fmul fast float %4867, 0x3F847AE140000000
  br label %4869

; <label>:4869                                    ; preds = %4856, %4653, %4598, %4595, %4566, %4528
  %4870 = phi float [ %4580, %4566 ], [ -1.310720e+05, %4528 ], [ %4772, %4856 ], [ -1.310720e+05, %4598 ], [ -1.310720e+05, %4653 ], [ -1.310720e+05, %4595 ]
  %4871 = phi float [ %4590, %4566 ], [ 0.000000e+00, %4528 ], [ %4864, %4856 ], [ 0.000000e+00, %4598 ], [ 0.000000e+00, %4653 ], [ 0.000000e+00, %4595 ]
  %4872 = phi float [ %4592, %4566 ], [ 0.000000e+00, %4528 ], [ %4866, %4856 ], [ 0.000000e+00, %4598 ], [ 0.000000e+00, %4653 ], [ 0.000000e+00, %4595 ]
  %4873 = phi float [ %4594, %4566 ], [ 0.000000e+00, %4528 ], [ %4868, %4856 ], [ 0.000000e+00, %4598 ], [ 0.000000e+00, %4653 ], [ 0.000000e+00, %4595 ]
  %4874 = phi i1 [ true, %4566 ], [ false, %4528 ], [ true, %4856 ], [ false, %4598 ], [ false, %4653 ], [ false, %4595 ]
  %4875 = and i32 %159, 3
  %4876 = icmp eq i32 %4875, 1
  %4877 = select i1 %4876, float 1.000000e+00, float 0.000000e+00
  %4878 = fsub fast float %4870, %143
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = select i1 %4874, float %4879, float 1.000000e+00
  %4881 = fmul fast float %4880, %4877
  %4882 = icmp eq i32 %4875, 3
  %4883 = select i1 %4882, float 1.000000e+00, float %4881
  %4884 = call float @dx.op.binary.f32(i32 35, float %4471, float %4883)  ; FMax(a,b)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fcmp fast une float %4885, 0.000000e+00
  %4887 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = call float @dx.op.unary.f32(i32 25, float %4887)  ; Rsqrt(value)
  br i1 %4886, label %4896, label %4889

; <label>:4889                                    ; preds = %4869
  %4890 = fmul fast float %4888, %141
  %4891 = fmul fast float %4888, %142
  %4892 = fmul fast float %4888, %143
  %4893 = fsub fast float -0.000000e+00, %4890
  %4894 = fsub fast float -0.000000e+00, %4891
  %4895 = fsub fast float -0.000000e+00, %4892
  br label %5064

; <label>:4896                                    ; preds = %4869
  %4897 = fmul fast float %141, %4888
  %4898 = fsub fast float -0.000000e+00, %4897
  %4899 = fmul fast float %142, %4888
  %4900 = fsub fast float -0.000000e+00, %4899
  %4901 = fmul fast float %143, %4888
  %4902 = fsub fast float -0.000000e+00, %4901
  %4903 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4900, float %4902, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = fmul fast float %4885, 2.500000e+00
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = fmul fast float %4885, 0x4013FFFFE0000000
  %4907 = fadd fast float %4906, 0xBFFFFFFFE0000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4885, 0x4004000020000000
  %4910 = fadd fast float %4909, 0xBFF8000040000000
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4913 = fmul fast float %4474, 1.000000e+01
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4914, 2.000000e+00
  %4916 = fsub fast float 3.000000e+00, %4915
  %4917 = fmul fast float %4914, %4914
  %4918 = fmul fast float %4917, %4916
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fsub fast float 0x3FE3333340000000, %4495
  %4921 = fmul fast float %4920, 0x400AAAAAA0000000
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4919, %4922
  %4924 = fmul fast float %4507, 0x3FEA2B8620000000
  %4925 = fmul fast float %4508, 0x3FEA2B8620000000
  %4926 = fmul fast float %4509, 0x3FEA2B8620000000
  %4927 = fadd fast float %4924, 0x3FC81DFBA0000000
  %4928 = fmul fast float %4927, %4507
  %4929 = fadd fast float %4928, 0x3F910E6020000000
  %4930 = fadd fast float %4925, 0x3FC81DFBA0000000
  %4931 = fmul fast float %4930, %4508
  %4932 = fadd fast float %4931, 0x3F910E6020000000
  %4933 = fadd fast float %4926, 0x3FC81DFBA0000000
  %4934 = fmul fast float %4933, %4509
  %4935 = fadd fast float %4934, 0x3F910E6020000000
  %4936 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = fsub fast float %4936, %4507
  %4940 = fsub fast float %4937, %4508
  %4941 = fsub fast float %4938, %4509
  %4942 = fmul fast float %4939, %4912
  %4943 = fmul fast float %4942, %4923
  %4944 = fmul fast float %4940, %4912
  %4945 = fmul fast float %4944, %4923
  %4946 = fmul fast float %4941, %4912
  %4947 = fmul fast float %4946, %4923
  %4948 = fadd fast float %4943, %4507
  %4949 = fadd fast float %4945, %4508
  %4950 = fadd fast float %4947, %4509
  %4951 = fmul fast float %4468, %4468
  %4952 = fmul fast float %4951, %4951
  %4953 = fadd fast float %4908, 1.000000e+00
  %4954 = fsub fast float %4953, %4923
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = fsub fast float 1.000000e+00, %4952
  %4959 = call float @dx.op.binary.f32(i32 36, float %4955, float %4958)  ; FMin(a,b)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4959, float %4960)  ; FMax(a,b)
  %4962 = fadd fast float %4957, 0xBFE4CCCCC0000000
  %4963 = fmul fast float %4962, 0x4006DB6DA0000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 2.000000e+00
  %4966 = fsub fast float 3.000000e+00, %4965
  %4967 = bitcast float %4492 to i32
  %4968 = ashr i32 %4967, 1
  %4969 = add nsw i32 %4968, 532487669
  %4970 = bitcast i32 %4969 to float
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = bitcast float %4493 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, 2.000000e+00
  %4985 = bitcast float %4494 to i32
  %4986 = ashr i32 %4985, 1
  %4987 = add nsw i32 %4986, 532487669
  %4988 = bitcast i32 %4987 to float
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = fsub fast float 0x4002A9FBE0000000, %4975
  %4995 = fadd fast float %4975, 0x3FD54FDF00000000
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4998, %4994
  %5000 = fmul fast float %4999, %4999
  %5001 = fsub fast float 0x4002A9FBE0000000, %4984
  %5002 = fadd fast float %4984, 0x3FD54FDF00000000
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, %5001
  %5007 = fmul fast float %5006, %5006
  %5008 = fsub fast float 0x4002A9FBE0000000, %4993
  %5009 = fadd fast float %4993, 0x3FD54FDF00000000
  %5010 = bitcast float %5009 to i32
  %5011 = sub nsw i32 2129859010, %5010
  %5012 = bitcast i32 %5011 to float
  %5013 = fmul fast float %5012, %5008
  %5014 = fmul fast float %5013, %5013
  %5015 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5000)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5007)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5014)  ; FMax(a,b)
  %5018 = fsub fast float 1.000000e+00, %4903
  %5019 = fadd fast float %5018, %4919
  %5020 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5021 = fsub fast float 1.000000e+00, %4883
  %5022 = fmul fast float %4961, %5021
  %5023 = fmul fast float %4964, %4964
  %5024 = fmul fast float %5023, %5022
  %5025 = fmul fast float %5024, %4966
  %5026 = fmul fast float %5021, 0xBFE99999A0000000
  %5027 = fmul fast float %5026, %4912
  %5028 = fmul fast float %5027, %4923
  %5029 = fadd fast float %5028, 1.000000e+00
  %5030 = fadd fast float %4495, -1.000000e+00
  %5031 = fmul fast float %5029, %5030
  %5032 = fadd fast float %5031, 1.000000e+00
  %5033 = fsub fast float %5015, %4492
  %5034 = fsub fast float %5016, %4493
  %5035 = fsub fast float %5017, %4494
  %5036 = fmul fast float %5025, %5033
  %5037 = fmul fast float %5025, %5034
  %5038 = fmul fast float %5025, %5035
  %5039 = fadd fast float %5036, %4492
  %5040 = fadd fast float %5037, %4493
  %5041 = fadd fast float %5038, %4494
  %5042 = fsub fast float %85, %4456
  %5043 = fsub fast float %86, %4457
  %5044 = fsub fast float %87, %4458
  %5045 = fmul fast float %5025, %5042
  %5046 = fmul fast float %5025, %5043
  %5047 = fmul fast float %5025, %5044
  %5048 = fadd fast float %5045, %4456
  %5049 = fadd fast float %5046, %4457
  %5050 = fadd fast float %5047, %4458
  %5051 = fmul fast float %5025, %5020
  %5052 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = fmul fast float %5051, %5053
  %5055 = fadd fast float %5054, %5052
  %5056 = fsub fast float 1.000000e+00, %4468
  %5057 = fmul fast float %5025, %5056
  %5058 = fadd fast float %5057, %4468
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 25, float %5059)  ; Rsqrt(value)
  %5061 = fmul fast float %5048, %5060
  %5062 = fmul fast float %5049, %5060
  %5063 = fmul fast float %5050, %5060
  br label %5064

; <label>:5064                                    ; preds = %4896, %4889
  %5065 = phi float [ %4895, %4889 ], [ %4902, %4896 ]
  %5066 = phi float [ %4894, %4889 ], [ %4900, %4896 ]
  %5067 = phi float [ %4893, %4889 ], [ %4898, %4896 ]
  %5068 = phi float [ %4892, %4889 ], [ %4901, %4896 ]
  %5069 = phi float [ %4891, %4889 ], [ %4899, %4896 ]
  %5070 = phi float [ %4890, %4889 ], [ %4897, %4896 ]
  %5071 = phi float [ %4507, %4889 ], [ %4948, %4896 ]
  %5072 = phi float [ %4508, %4889 ], [ %4949, %4896 ]
  %5073 = phi float [ %4509, %4889 ], [ %4950, %4896 ]
  %5074 = phi float [ %4492, %4889 ], [ %5039, %4896 ]
  %5075 = phi float [ %4493, %4889 ], [ %5040, %4896 ]
  %5076 = phi float [ %4494, %4889 ], [ %5041, %4896 ]
  %5077 = phi float [ %4456, %4889 ], [ %5061, %4896 ]
  %5078 = phi float [ %4457, %4889 ], [ %5062, %4896 ]
  %5079 = phi float [ %4458, %4889 ], [ %5063, %4896 ]
  %5080 = phi float [ %4495, %4889 ], [ %5055, %4896 ]
  %5081 = phi float [ %4468, %4889 ], [ %5058, %4896 ]
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 2
  %5084 = extractvalue %dx.types.CBufRet.f32 %5082, 3
  %5085 = fmul fast float %5083, %78
  %5086 = fmul fast float %5084, %79
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %5085, float %5086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = fmul fast float %5091, %5089
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fadd fast float %5093, -1.000000e+00
  %5095 = fmul fast float %5094, %5088
  %5096 = fadd fast float %5095, 1.000000e+00
  %5097 = select i1 %183, float 0.000000e+00, float %5076
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %5067, float %5066, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5069, float %5068, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fmul fast float %5100, 2.000000e+00
  %5102 = fmul fast float %5101, %5077
  %5103 = fmul fast float %5101, %5078
  %5104 = fmul fast float %5101, %5079
  %5105 = fsub fast float %5070, %5102
  %5106 = fsub fast float %5069, %5103
  %5107 = fsub fast float %5068, %5104
  %5108 = call float @dx.op.binary.f32(i32 36, float %5081, float %5096)  ; FMin(a,b)
  %5109 = fsub fast float 1.000000e+00, %5108
  %5110 = bitcast float %5109 to i32
  %5111 = ashr i32 %5110, 1
  %5112 = add nsw i32 %5111, 532487669
  %5113 = bitcast i32 %5112 to float
  %5114 = fsub fast float 1.000000e+00, %5080
  %5115 = call float @dx.op.binary.f32(i32 35, float %5114, float 0x3F847AE140000000)  ; FMax(a,b)
  %5116 = fmul fast float %5115, %5115
  %5117 = fmul fast float %5116, %5116
  %5118 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5113, float %5117, float %5118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = fsub fast float 1.000000e+00, %5081
  %5122 = bitcast float %5121 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = fsub fast float 1.000000e+00, %55
  %5126 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5128 = fdiv fast float %5125, %5127
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, 5.000000e-01
  %5132 = fadd fast float %5131, 5.000000e-01
  %5133 = fmul fast float %5132, %55
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5135, %5128
  %5137 = fadd fast float %5133, %5136
  %5138 = fsub fast float 5.000000e-01, %5131
  %5139 = fmul fast float %5138, %5071
  %5140 = fmul fast float %5138, %5072
  %5141 = fmul fast float %5138, %5073
  %5142 = fadd fast float %5137, %5139
  %5143 = fadd fast float %5137, %5140
  %5144 = fadd fast float %5137, %5141
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5146, 5.000000e-01
  %5148 = fadd fast float %5147, 5.000000e-01
  %5149 = fmul fast float %5148, %55
  %5150 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5151, %5128
  %5153 = fadd fast float %5149, %5152
  %5154 = fsub fast float 5.000000e-01, %5147
  %5155 = fmul fast float %5154, %5071
  %5156 = fmul fast float %5154, %5072
  %5157 = fmul fast float %5154, %5073
  %5158 = fadd fast float %5153, %5155
  %5159 = fadd fast float %5153, %5156
  %5160 = fadd fast float %5153, %5157
  %5161 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = call float @dx.op.binary.f32(i32 36, float %5071, float %5163)  ; FMin(a,b)
  %5165 = fmul fast float %5164, %5109
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = call float @dx.op.binary.f32(i32 36, float %5072, float %5163)  ; FMin(a,b)
  %5171 = fmul fast float %5170, %5109
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = bitcast float %5172 to i32
  %5174 = sub nsw i32 2129859010, %5173
  %5175 = bitcast i32 %5174 to float
  %5176 = call float @dx.op.binary.f32(i32 36, float %5073, float %5163)  ; FMin(a,b)
  %5177 = fmul fast float %5176, %5109
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = bitcast float %5178 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = fmul fast float %5108, %56
  %5183 = fmul fast float %5182, %5142
  %5184 = fmul fast float %5183, %5169
  %5185 = fmul fast float %5108, %57
  %5186 = fmul fast float %5185, %5143
  %5187 = fmul fast float %5186, %5175
  %5188 = fmul fast float %5108, %58
  %5189 = fmul fast float %5188, %5144
  %5190 = fmul fast float %5189, %5181
  %5191 = call float @dx.op.binary.f32(i32 36, float %5074, float %5163)  ; FMin(a,b)
  %5192 = fmul fast float %5191, %5109
  %5193 = fsub fast float 1.000000e+00, %5192
  %5194 = bitcast float %5193 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = call float @dx.op.binary.f32(i32 36, float %5075, float %5163)  ; FMin(a,b)
  %5198 = fmul fast float %5197, %5109
  %5199 = fsub fast float 1.000000e+00, %5198
  %5200 = bitcast float %5199 to i32
  %5201 = sub nsw i32 2129859010, %5200
  %5202 = bitcast i32 %5201 to float
  %5203 = call float @dx.op.binary.f32(i32 36, float %5097, float %5163)  ; FMin(a,b)
  %5204 = fmul fast float %5203, %5109
  %5205 = fsub fast float 1.000000e+00, %5204
  %5206 = bitcast float %5205 to i32
  %5207 = sub nsw i32 2129859010, %5206
  %5208 = bitcast i32 %5207 to float
  %5209 = fmul fast float %5182, %5158
  %5210 = fmul fast float %5209, %5196
  %5211 = fmul fast float %5185, %5159
  %5212 = fmul fast float %5211, %5202
  %5213 = fmul fast float %5188, %5160
  %5214 = fmul fast float %5213, %5208
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5187, float %5190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = select i1 %183, float 0.000000e+00, float %5184
  %5217 = select i1 %183, float %5215, float %5187
  %5218 = select i1 %183, float 0.000000e+00, float %5190
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5212, float %5214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = select i1 %183, float 0.000000e+00, float %5210
  %5221 = select i1 %183, float %5219, float %5212
  %5222 = select i1 %183, float 0.000000e+00, float %5214
  %5223 = fmul fast float %5099, 9.843750e-01
  %5224 = fmul fast float %5080, 9.843750e-01
  %5225 = fadd fast float %5223, 7.812500e-03
  %5226 = fadd fast float %5224, 7.812500e-03
  %5227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5225, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 2
  %5229 = extractvalue %dx.types.ResRet.f32 %5227, 3
  %5230 = fmul fast float %5228, %5074
  %5231 = fmul fast float %5228, %5075
  %5232 = fmul fast float %5228, %5097
  %5233 = fadd fast float %5230, %5229
  %5234 = fadd fast float %5231, %5229
  %5235 = fadd fast float %5232, %5229
  %5236 = fcmp fast ogt float %4469, 0.000000e+00
  br i1 %5236, label %5237, label %5263

; <label>:5237                                    ; preds = %5064
  %5238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4469, float %5099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.ResRet.f32 %5238, 2
  %5242 = fadd fast float %5239, -5.000000e-01
  %5243 = fadd fast float %5240, -5.000000e-01
  %5244 = fadd fast float %5241, -5.000000e-01
  %5245 = fsub fast float 1.000000e+00, %5074
  %5246 = fsub fast float 1.000000e+00, %5075
  %5247 = fsub fast float 1.000000e+00, %5097
  %5248 = fmul fast float %5074, 4.000000e+00
  %5249 = fmul fast float %5248, %5245
  %5250 = fmul fast float %5249, %5242
  %5251 = fmul fast float %5075, 4.000000e+00
  %5252 = fmul fast float %5251, %5246
  %5253 = fmul fast float %5252, %5243
  %5254 = fmul fast float %5097, 4.000000e+00
  %5255 = fmul fast float %5254, %5247
  %5256 = fmul fast float %5255, %5244
  %5257 = fadd fast float %5250, %5233
  %5258 = fadd fast float %5253, %5234
  %5259 = fadd fast float %5256, %5235
  %5260 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5261 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  br label %5263

; <label>:5263                                    ; preds = %5237, %5064
  %5264 = phi float [ %5260, %5237 ], [ %5233, %5064 ]
  %5265 = phi float [ %5261, %5237 ], [ %5234, %5064 ]
  %5266 = phi float [ %5262, %5237 ], [ %5235, %5064 ]
  %5267 = call float @dx.op.binary.f32(i32 35, float %5265, float %5266)  ; FMax(a,b)
  %5268 = call float @dx.op.binary.f32(i32 35, float %5264, float %5267)  ; FMax(a,b)
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = fmul fast float %5268, %5080
  %5271 = fadd fast float %5270, %5080
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5276 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5277 = fmul fast float %5271, %5273
  %5278 = fadd fast float %5277, %5274
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %5275, %5271
  %5281 = fadd fast float %5280, %5276
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5120
  %5284 = fadd fast float %5283, %5282
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fcmp fast olt float %5285, 1.000000e+00
  br i1 %5286, label %5287, label %6142

; <label>:5287                                    ; preds = %5263
  %5288 = fcmp fast olt float %5279, 1.000000e+00
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = fcmp fast ogt float %5290, 0.000000e+00
  %5292 = or i1 %5288, %5291
  %5293 = or i1 %5288, %5291
  %5294 = xor i1 %5293, true
  %5295 = zext i1 %5294 to i32
  br i1 %5292, label %5296, label %5539

; <label>:5296                                    ; preds = %5287
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5300 = extractvalue %dx.types.CBufRet.f32 %5297, 2
  %5301 = extractvalue %dx.types.CBufRet.f32 %5297, 3
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5306 = extractvalue %dx.types.CBufRet.f32 %5302, 3
  %5307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5307, 2
  %5311 = extractvalue %dx.types.CBufRet.f32 %5307, 3
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5316 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5326 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5323, float %5324, float %5325, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5330 = fmul fast float %5329, 8.000000e+00
  %5331 = fadd fast float %5330, -6.000000e+00
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = fmul fast float %5327, 8.000000e+00
  %5334 = fmul fast float %5333, %5290
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5337, label %5514, !dx.controlflow.hints !82

; <label>:5337                                    ; preds = %5296
  %5338 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5339 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5340 = fsub fast float %5338, %5339
  %5341 = fmul fast float %5340, %5080
  %5342 = fadd fast float %5341, %5339
  %5343 = fmul fast float %196, 2.000000e+00
  %5344 = fmul fast float %197, 2.000000e+00
  %5345 = fadd fast float %5343, -1.000000e+00
  %5346 = fadd fast float %5344, -1.000000e+00
  %5347 = fmul fast float %5342, %5345
  %5348 = fmul fast float %5342, %5346
  %5349 = fadd fast float %5347, %78
  %5350 = fadd fast float %5348, %79
  %5351 = fmul fast float %5349, %5083
  %5352 = fmul fast float %5350, %5084
  %5353 = fadd fast float %5080, 0xBFE3333340000000
  %5354 = fmul fast float %5353, 0x4004000020000000
  %5355 = fsub fast float 1.000000e+00, %5354
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = fmul fast float %5356, 3.000000e+00
  %5358 = fadd fast float %5357, %196
  %5359 = call float @dx.op.unary.f32(i32 27, float %5358)  ; Round_ni(value)
  %5360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5351, float %5352, float %5359, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = fcmp fast une float %5361, 0xFFF0000000000000
  %5363 = fcmp fast une float %5361, 0x7FF0000000000000
  %5364 = and i1 %5362, %5363
  %5365 = fcmp fast olt float %5361, 0.000000e+00
  %5366 = call float @dx.op.unary.f32(i32 6, float %5361)  ; FAbs(value)
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = select i1 %5364, float 1.000000e+00, float 0.000000e+00
  %5369 = fmul fast float %5368, %5335
  %5370 = fcmp fast ogt float %5369, 0.000000e+00
  br i1 %5370, label %5371, label %5514, !dx.controlflow.hints !83

; <label>:5371                                    ; preds = %5337
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5376 = select i1 %5365, float 0.000000e+00, float %5373
  %5377 = select i1 %5365, float 0.000000e+00, float %5374
  %5378 = select i1 %5365, float 0.000000e+00, float %5375
  %5379 = select i1 %5365, float %5298, float %5313
  %5380 = select i1 %5365, float %5303, float %5318
  %5381 = select i1 %5365, float %5308, float %5323
  %5382 = select i1 %5365, float %5299, float %5314
  %5383 = select i1 %5365, float %5304, float %5319
  %5384 = select i1 %5365, float %5309, float %5324
  %5385 = select i1 %5365, float %5300, float %5315
  %5386 = select i1 %5365, float %5305, float %5320
  %5387 = select i1 %5365, float %5310, float %5325
  %5388 = select i1 %5365, float %5301, float %5316
  %5389 = select i1 %5365, float %5306, float %5321
  %5390 = select i1 %5365, float %5311, float %5326
  %5391 = fadd fast float %5376, %141
  %5392 = fadd fast float %5377, %142
  %5393 = fadd fast float %5378, %143
  %5394 = fmul fast float %5391, %5379
  %5395 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5382, float %5394)  ; FMad(a,b,c)
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5385, float %5395)  ; FMad(a,b,c)
  %5397 = fadd fast float %5396, %5388
  %5398 = fmul fast float %5391, %5380
  %5399 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5383, float %5398)  ; FMad(a,b,c)
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5386, float %5399)  ; FMad(a,b,c)
  %5401 = fadd fast float %5400, %5389
  %5402 = fmul fast float %5391, %5381
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5384, float %5402)  ; FMad(a,b,c)
  %5404 = call float @dx.op.tertiary.f32(i32 46, float %5393, float %5387, float %5403)  ; FMad(a,b,c)
  %5405 = fadd fast float %5404, %5390
  %5406 = fdiv fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5406, %5397
  %5408 = fmul fast float %5406, %5401
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5412 = fmul fast float %5407, %5410
  %5413 = fmul fast float %5408, %5411
  %5414 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5415 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5416 = fadd fast float %5412, %5414
  %5417 = fadd fast float %5413, %5415
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5420 = fmul fast float %5419, %5105
  %5421 = fmul fast float %5419, %5106
  %5422 = fmul fast float %5419, %5107
  %5423 = fadd fast float %5420, %5391
  %5424 = fadd fast float %5421, %5392
  %5425 = fadd fast float %5422, %5393
  %5426 = fmul fast float %5423, %5379
  %5427 = call float @dx.op.tertiary.f32(i32 46, float %5424, float %5382, float %5426)  ; FMad(a,b,c)
  %5428 = call float @dx.op.tertiary.f32(i32 46, float %5425, float %5385, float %5427)  ; FMad(a,b,c)
  %5429 = fadd fast float %5428, %5388
  %5430 = fmul fast float %5423, %5380
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %5424, float %5383, float %5430)  ; FMad(a,b,c)
  %5432 = call float @dx.op.tertiary.f32(i32 46, float %5425, float %5386, float %5431)  ; FMad(a,b,c)
  %5433 = fadd fast float %5432, %5389
  %5434 = fmul fast float %5423, %5381
  %5435 = call float @dx.op.tertiary.f32(i32 46, float %5424, float %5384, float %5434)  ; FMad(a,b,c)
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %5425, float %5387, float %5435)  ; FMad(a,b,c)
  %5437 = fadd fast float %5436, %5390
  %5438 = fdiv fast float 1.000000e+00, %5437
  %5439 = fmul fast float %5438, %5429
  %5440 = fmul fast float %5438, %5433
  %5441 = fmul fast float %5416, 2.000000e+00
  %5442 = fadd fast float %5441, -1.000000e+00
  %5443 = call float @dx.op.unary.f32(i32 6, float %5442)  ; FAbs(value)
  %5444 = fmul fast float %5443, 5.000000e+00
  %5445 = fadd fast float %5444, -4.000000e+00
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, %5332
  %5448 = fsub fast float %5407, %5439
  %5449 = fmul fast float %5410, %5448
  %5450 = fmul fast float %5447, %5449
  %5451 = fsub fast float %5439, %5407
  %5452 = fmul fast float %5410, %5451
  %5453 = fadd fast float %5452, %5450
  %5454 = fsub fast float %5440, %5408
  %5455 = fmul fast float %5411, %5454
  %5456 = fmul fast float %5453, %5367
  %5457 = fmul fast float %5455, %5367
  %5458 = fadd fast float %5456, %5416
  %5459 = fadd fast float %5457, %5417
  %5460 = fsub fast float %5438, %5406
  %5461 = fmul fast float %5460, %5367
  %5462 = fadd fast float %5461, %5406
  %5463 = fdiv fast float 1.000000e+00, %5462
  %5464 = fadd fast float %5080, -1.000000e+00
  %5465 = fsub fast float %5463, %5405
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5468 = fmul fast float %5467, %5463
  %5469 = fdiv fast float 1.600000e+02, %5468
  %5470 = fmul fast float %5464, %5464
  %5471 = fmul fast float %5470, 0xBFB5B17960000000
  %5472 = fmul fast float %5471, %5465
  %5473 = fmul fast float %5472, %5469
  %5474 = call float @dx.op.unary.f32(i32 21, float %5473)  ; Exp(value)
  %5475 = fmul fast float %5474, 0x3FF04B2960000000
  %5476 = fsub fast float 0x3FF04B2960000000, %5475
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fmul fast float %5477, 4.000000e+00
  %5479 = fadd fast float %196, -5.000000e-01
  %5480 = fadd fast float %197, -5.000000e-01
  %5481 = fmul fast float %5477, 0x3FBEB851E0000000
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, %5479
  %5484 = fmul fast float %5482, %5480
  %5485 = fadd fast float %5458, %5483
  %5486 = fadd fast float %5459, %5484
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5485, float %5486, float undef, float undef, i32 0, i32 0, i32 undef, float %5478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5493 = fmul fast float %5492, %5488
  %5494 = fmul fast float %5492, %5489
  %5495 = fmul fast float %5492, %5490
  %5496 = select i1 %183, float 0.000000e+00, float %5494
  %5497 = select i1 %183, float 0.000000e+00, float %5495
  %5498 = fmul fast float %5485, 2.000000e+00
  %5499 = fmul fast float %5486, 2.000000e+00
  %5500 = fadd fast float %5498, -1.000000e+00
  %5501 = fadd fast float %5499, -1.000000e+00
  %5502 = fmul fast float %5500, %5500
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fsub fast float 1.000000e+00, %5504
  %5506 = fmul fast float %5505, %5332
  %5507 = fadd fast float %5506, %5504
  %5508 = fmul fast float %5501, %5501
  %5509 = fsub fast float 1.000000e+00, %5508
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5507, %5510
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5512, %5369
  br label %5514

; <label>:5514                                    ; preds = %5371, %5337, %5296
  %5515 = phi float [ %5493, %5371 ], [ 0.000000e+00, %5337 ], [ 0.000000e+00, %5296 ]
  %5516 = phi float [ %5496, %5371 ], [ 0.000000e+00, %5337 ], [ 0.000000e+00, %5296 ]
  %5517 = phi float [ %5497, %5371 ], [ 0.000000e+00, %5337 ], [ 0.000000e+00, %5296 ]
  %5518 = phi float [ %5513, %5371 ], [ 0.000000e+00, %5337 ], [ 0.000000e+00, %5296 ]
  %5519 = fcmp fast olt float %5518, 1.000000e+00
  %5520 = or i1 %5519, %5294
  %5521 = zext i1 %5520 to i32
  %5522 = fmul fast float %5518, %5279
  %5523 = fsub fast float %5518, %5522
  %5524 = fsub fast float 1.000000e+00, %5285
  %5525 = fmul fast float %5523, %5524
  %5526 = fadd fast float %5525, %5285
  %5527 = fsub fast float %5526, %5523
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = fmul fast float %5528, %5220
  %5530 = fmul fast float %5528, %5221
  %5531 = fmul fast float %5528, %5222
  %5532 = fsub fast float -0.000000e+00, %5526
  %5533 = fmul fast float %5523, %5515
  %5534 = fmul fast float %5523, %5516
  %5535 = fmul fast float %5523, %5517
  %5536 = fadd fast float %5533, %5529
  %5537 = fadd fast float %5534, %5530
  %5538 = fadd fast float %5535, %5531
  br label %5539

; <label>:5539                                    ; preds = %5514, %5287
  %5540 = phi float [ %5285, %5287 ], [ %5532, %5514 ]
  %5541 = phi float [ %5220, %5287 ], [ %5536, %5514 ]
  %5542 = phi float [ %5221, %5287 ], [ %5537, %5514 ]
  %5543 = phi float [ %5222, %5287 ], [ %5538, %5514 ]
  %5544 = phi i32 [ %5295, %5287 ], [ %5521, %5514 ]
  %5545 = icmp eq i32 %5544, 0
  br i1 %5545, label %6142, label %5546

; <label>:5546                                    ; preds = %5539
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 3
  %5550 = fmul fast float %5548, %78
  %5551 = fmul fast float %5549, %79
  %5552 = fptoui float %5550 to i32
  %5553 = fptoui float %5551 to i32
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.CBufRet.f32 %5554, 2
  %5557 = extractvalue %dx.types.CBufRet.f32 %5554, 3
  %5558 = fadd fast float %73, -4.000000e+00
  %5559 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5560 = fadd fast float %5559, %5555
  %5561 = fmul fast float %5560, %5556
  %5562 = call float @dx.op.unary.f32(i32 23, float %5561)  ; Log(value)
  %5563 = fmul fast float %5562, %5557
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5566 = fmul fast float %5563, %5565
  %5567 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.i32 %5568, 1
  %5570 = add i32 %5569, -1
  %5571 = uitofp i32 %5569 to float
  %5572 = fmul fast float %5571, %5567
  %5573 = fptoui float %5572 to i32
  %5574 = call i32 @dx.op.binary.i32(i32 40, i32 %5573, i32 %5570)  ; UMin(a,b)
  %5575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.i32 %5575, 2
  %5577 = extractvalue %dx.types.CBufRet.i32 %5575, 3
  %5578 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5553, i32 %5576, i32 %5552)  ; UMad(a,b,c)
  %5579 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5574, i32 %5577, i32 %5578)  ; UMad(a,b,c)
  %5580 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5581 = fptoui float %5580 to i32
  %5582 = lshr i32 %5581, 5
  %5583 = call i32 @dx.op.binary.i32(i32 40, i32 %5582, i32 8191)  ; UMin(a,b)
  %5584 = fcmp fast ogt float %4879, 0.000000e+00
  %5585 = fcmp fast ogt float %5107, 0.000000e+00
  %5586 = and i1 %5585, %5584
  br i1 %5586, label %5587, label %5616

; <label>:5587                                    ; preds = %5546
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5107, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.binary.f32(i32 35, float %5588, float -1.000000e+00)  ; FMax(a,b)
  %5590 = call float @dx.op.binary.f32(i32 36, float %5589, float 1.000000e+00)  ; FMin(a,b)
  %5591 = fmul fast float %5590, %5590
  %5592 = fsub fast float 1.000000e+00, %5591
  %5593 = fmul fast float %5592, 0x3FFC6E2300000000
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = fcmp fast ogt float %5594, 0.000000e+00
  %5596 = call float @dx.op.unary.f32(i32 24, float %5594)  ; Sqrt(value)
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = call float @dx.op.unary.f32(i32 23, float %5597)  ; Log(value)
  %5599 = fmul fast float %5598, 5.000000e+00
  %5600 = call float @dx.op.unary.f32(i32 21, float %5599)  ; Exp(value)
  %5601 = fmul fast float %5600, 0x3FEF591A60000000
  %5602 = fadd fast float %5601, 0x3F94DCB540000000
  %5603 = select i1 %5595, float %5602, float 1.000000e+00
  %5604 = fcmp fast oge float %5603, 1.000000e+00
  %5605 = fmul fast float %5588, 2.000000e+00
  %5606 = fadd fast float %5605, %5107
  %5607 = select i1 %5604, float %5606, float %5107
  %5608 = fsub fast float %5607, %5107
  %5609 = fmul fast float %5608, %4879
  %5610 = fadd fast float %5609, %5107
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5106, float %5610, float %5105, float %5106, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 25, float %5611)  ; Rsqrt(value)
  %5613 = fmul fast float %5612, %5105
  %5614 = fmul fast float %5612, %5106
  %5615 = fmul fast float %5610, %5612
  br label %5616

; <label>:5616                                    ; preds = %5587, %5546
  %5617 = phi float [ %5613, %5587 ], [ %5105, %5546 ]
  %5618 = phi float [ %5614, %5587 ], [ %5106, %5546 ]
  %5619 = phi float [ %5615, %5587 ], [ %5107, %5546 ]
  %5620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.i32 %5620, 2
  %5622 = add nsw i32 %5621, -1
  %5623 = call i32 @dx.op.binary.i32(i32 37, i32 %5622, i32 0)  ; IMax(a,b)
  %5624 = shl i32 %5583, 2
  %5625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5624, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.i32 %5625, 0
  %5627 = lshr i32 %5626, 16
  %5628 = and i32 %5626, 65535
  %5629 = lshr i32 %5626, 21
  %5630 = lshr i32 %5628, 5
  %5631 = call i32 @dx.op.binary.i32(i32 40, i32 %5630, i32 %5623)  ; UMin(a,b)
  %5632 = icmp ugt i32 %5629, %5631
  br i1 %5632, label %6014, label %5633

; <label>:5633                                    ; preds = %5616
  br label %5634

; <label>:5634                                    ; preds = %6003, %5633
  %5635 = phi float [ %6004, %6003 ], [ 0.000000e+00, %5633 ]
  %5636 = phi float [ %6005, %6003 ], [ 0.000000e+00, %5633 ]
  %5637 = phi float [ %6006, %6003 ], [ 0.000000e+00, %5633 ]
  %5638 = phi float [ %6007, %6003 ], [ 1.000000e+00, %5633 ]
  %5639 = phi i32 [ %6011, %6003 ], [ %5629, %5633 ]
  %5640 = phi float [ %6008, %6003 ], [ 0.000000e+00, %5633 ]
  %5641 = phi float [ %6009, %6003 ], [ 0.000000e+00, %5633 ]
  %5642 = phi float [ %6010, %6003 ], [ 0.000000e+00, %5633 ]
  %5643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.i32 %5643, 2
  %5645 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5579, i32 %5644, i32 %5639)  ; UMad(a,b,c)
  %5646 = shl i32 %5645, 2
  %5647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5646, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.i32 %5647, 0
  %5649 = shl i32 %5639, 5
  %5650 = sub nsw i32 %5627, %5649
  %5651 = call i32 @dx.op.binary.i32(i32 37, i32 %5650, i32 0)  ; IMax(a,b)
  %5652 = call i32 @dx.op.binary.i32(i32 38, i32 %5651, i32 31)  ; IMin(a,b)
  %5653 = sub nsw i32 1, %5627
  %5654 = add nsw i32 %5653, %5628
  %5655 = call i32 @dx.op.binary.i32(i32 37, i32 %5654, i32 0)  ; IMax(a,b)
  %5656 = call i32 @dx.op.binary.i32(i32 38, i32 %5655, i32 32)  ; IMin(a,b)
  %5657 = and i32 %5656, 31
  %5658 = shl i32 -1, %5657
  %5659 = xor i32 %5658, -1
  %5660 = and i32 %5652, 31
  %5661 = shl i32 %5659, %5660
  %5662 = icmp eq i32 %5656, 32
  %5663 = select i1 %5662, i32 -1, i32 %5661
  %5664 = and i32 %5663, %5648
  %5665 = icmp eq i32 %5664, 0
  br i1 %5665, label %6003, label %5666

; <label>:5666                                    ; preds = %5634
  br label %5667

; <label>:5667                                    ; preds = %5777, %5666
  %5668 = phi float [ %5778, %5777 ], [ %5635, %5666 ]
  %5669 = phi float [ %5779, %5777 ], [ %5636, %5666 ]
  %5670 = phi float [ %5780, %5777 ], [ %5637, %5666 ]
  %5671 = phi float [ %5781, %5777 ], [ %5638, %5666 ]
  %5672 = phi i32 [ %5680, %5777 ], [ %5664, %5666 ]
  %5673 = phi float [ %5782, %5777 ], [ %5640, %5666 ]
  %5674 = phi float [ %5783, %5777 ], [ %5641, %5666 ]
  %5675 = phi float [ %5784, %5777 ], [ %5642, %5666 ]
  %5676 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5672)  ; FirstbitLo(value)
  %5677 = add i32 %5676, %5649
  %5678 = and i32 %5676, 31
  %5679 = shl i32 1, %5678
  %5680 = xor i32 %5679, %5672
  %5681 = mul i32 %5677, 72
  %5682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = add i32 %5681, 12
  %5687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = add i32 %5681, 16
  %5690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5689, i32 undef)  ; BufferLoad(srv,index,wot)
  %5691 = extractvalue %dx.types.ResRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.ResRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.ResRet.f32 %5690, 2
  %5694 = add i32 %5681, 28
  %5695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5694, i32 undef)  ; BufferLoad(srv,index,wot)
  %5696 = extractvalue %dx.types.ResRet.f32 %5695, 0
  %5697 = add i32 %5681, 32
  %5698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5697, i32 undef)  ; BufferLoad(srv,index,wot)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.ResRet.f32 %5698, 3
  %5703 = add i32 %5681, 48
  %5704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5703, i32 undef)  ; BufferLoad(srv,index,wot)
  %5705 = extractvalue %dx.types.ResRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.ResRet.f32 %5704, 1
  %5707 = add i32 %5681, 56
  %5708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5707, i32 undef)  ; BufferLoad(srv,index,wot)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = add i32 %5681, 64
  %5712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5711, i32 undef)  ; BufferLoad(srv,index,wot)
  %5713 = extractvalue %dx.types.ResRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.ResRet.f32 %5712, 1
  %5715 = mul i32 %5677, 60
  %5716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5715, i32 undef)  ; BufferLoad(srv,index,wot)
  %5717 = extractvalue %dx.types.ResRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.ResRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.ResRet.f32 %5716, 2
  %5720 = add i32 %5715, 12
  %5721 = add i32 %5715, 48
  %5722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5721, i32 undef)  ; BufferLoad(srv,index,wot)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = and i32 %5688, 32767
  %5727 = bitcast float %5683 to i32
  %5728 = icmp eq i32 %5727, -1
  %5729 = bitcast float %5684 to i32
  %5730 = and i32 %5688, 32768
  %5731 = icmp ne i32 %5730, 0
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = fsub fast float %5717, %5733
  %5737 = fsub fast float %5718, %5734
  %5738 = fsub fast float %5719, %5735
  %5739 = fsub fast float %141, %5736
  %5740 = fsub fast float %142, %5737
  %5741 = fsub fast float %143, %5738
  %5742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.ResRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.ResRet.f32 %5742, 2
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = add i32 %5715, 24
  %5748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5747, i32 undef)  ; BufferLoad(srv,index,wot)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  %5752 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5749, float %5750, float %5751)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = add i32 %5715, 36
  %5754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5753, i32 undef)  ; BufferLoad(srv,index,wot)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5755, float %5756, float %5757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = call float @dx.op.unary.f32(i32 6, float %5746)  ; FAbs(value)
  %5760 = call float @dx.op.unary.f32(i32 6, float %5752)  ; FAbs(value)
  %5761 = call float @dx.op.unary.f32(i32 6, float %5758)  ; FAbs(value)
  %5762 = fsub fast float %5723, %5759
  %5763 = fsub fast float %5724, %5760
  %5764 = fsub fast float %5725, %5761
  %5765 = fmul fast float %5762, %5691
  %5766 = fmul fast float %5763, %5692
  %5767 = fmul fast float %5764, %5693
  %5768 = call float @dx.op.binary.f32(i32 36, float %5766, float %5767)  ; FMin(a,b)
  %5769 = call float @dx.op.binary.f32(i32 36, float %5765, float %5768)  ; FMin(a,b)
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5771 = call float @dx.op.binary.f32(i32 36, float %5671, float %5770)  ; FMin(a,b)
  %5772 = uitofp i1 %5731 to float
  %5773 = fadd fast float %4879, 1.000000e+00
  %5774 = fsub fast float %5773, %5772
  %5775 = fmul fast float %5771, %5774
  %5776 = fcmp fast ogt float %5775, 0.000000e+00
  br i1 %5776, label %5786, label %5777

; <label>:5777                                    ; preds = %5928, %5667
  %5778 = phi float [ %5992, %5928 ], [ %5668, %5667 ]
  %5779 = phi float [ %5993, %5928 ], [ %5669, %5667 ]
  %5780 = phi float [ %5994, %5928 ], [ %5670, %5667 ]
  %5781 = phi float [ %6001, %5928 ], [ %5671, %5667 ]
  %5782 = phi float [ %5998, %5928 ], [ %5673, %5667 ]
  %5783 = phi float [ %5999, %5928 ], [ %5674, %5667 ]
  %5784 = phi float [ %6000, %5928 ], [ %5675, %5667 ]
  %5785 = icmp eq i32 %5672, %5679
  br i1 %5785, label %6002, label %5667

; <label>:5786                                    ; preds = %5667
  br i1 %5728, label %5844, label %5787

; <label>:5787                                    ; preds = %5786
  %5788 = fsub fast float -0.000000e+00, %5743
  %5789 = fsub fast float -0.000000e+00, %5744
  %5790 = fsub fast float -0.000000e+00, %5745
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5788, float %5789, float %5790)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fsub fast float -0.000000e+00, %5791
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5788, float %5789, float %5790)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = fadd fast float %5793, %5706
  %5795 = fadd fast float %5705, %5793
  %5796 = fsub fast float -0.000000e+00, %5795
  %5797 = fcmp ogt float %5791, -0.000000e+00
  %5798 = select i1 %5797, float %5796, float %5794
  %5799 = call float @dx.op.unary.f32(i32 6, float %5792)  ; FAbs(value)
  %5800 = fdiv fast float 1.000000e+00, %5799
  %5801 = fmul fast float %5798, %5800
  %5802 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5803 = fsub fast float -0.000000e+00, %5749
  %5804 = fsub fast float -0.000000e+00, %5750
  %5805 = fsub fast float -0.000000e+00, %5751
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = fsub fast float -0.000000e+00, %5806
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = fadd fast float %5808, %5710
  %5810 = fadd fast float %5709, %5808
  %5811 = fsub fast float -0.000000e+00, %5810
  %5812 = fcmp ogt float %5806, -0.000000e+00
  %5813 = select i1 %5812, float %5811, float %5809
  %5814 = call float @dx.op.unary.f32(i32 6, float %5807)  ; FAbs(value)
  %5815 = fdiv fast float 1.000000e+00, %5814
  %5816 = fmul fast float %5813, %5815
  %5817 = call float @dx.op.binary.f32(i32 35, float %5816, float 0.000000e+00)  ; FMax(a,b)
  %5818 = fsub fast float -0.000000e+00, %5755
  %5819 = fsub fast float -0.000000e+00, %5756
  %5820 = fsub fast float -0.000000e+00, %5757
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5818, float %5819, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = fsub fast float -0.000000e+00, %5821
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float %5818, float %5819, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fadd fast float %5823, %5714
  %5825 = fadd fast float %5713, %5823
  %5826 = fsub fast float -0.000000e+00, %5825
  %5827 = fcmp ogt float %5821, -0.000000e+00
  %5828 = select i1 %5827, float %5826, float %5824
  %5829 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5830 = fdiv fast float 1.000000e+00, %5829
  %5831 = fmul fast float %5828, %5830
  %5832 = call float @dx.op.binary.f32(i32 35, float %5831, float 0.000000e+00)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 36, float %5817, float %5832)  ; FMin(a,b)
  %5834 = call float @dx.op.binary.f32(i32 36, float %5802, float %5833)  ; FMin(a,b)
  %5835 = fmul fast float %5834, %5617
  %5836 = fmul fast float %5834, %5618
  %5837 = fmul fast float %5834, %5619
  %5838 = fadd fast float %5835, %141
  %5839 = fadd fast float %5836, %142
  %5840 = fadd fast float %5837, %143
  %5841 = fsub fast float %5838, %5683
  %5842 = fsub fast float %5839, %5684
  %5843 = fsub fast float %5840, %5685
  br label %5851

; <label>:5844                                    ; preds = %5786
  %5845 = fmul fast float %5617, 8.096000e+03
  %5846 = fmul fast float %5618, 8.096000e+03
  %5847 = fmul fast float %5619, 8.096000e+03
  %5848 = fadd fast float %5845, %141
  %5849 = fadd fast float %5846, %142
  %5850 = fadd fast float %5847, %143
  br label %5851

; <label>:5851                                    ; preds = %5844, %5787
  %5852 = phi float [ %5617, %5844 ], [ %5841, %5787 ]
  %5853 = phi float [ %5618, %5844 ], [ %5842, %5787 ]
  %5854 = phi float [ %5619, %5844 ], [ %5843, %5787 ]
  %5855 = phi float [ %5848, %5844 ], [ %5838, %5787 ]
  %5856 = phi float [ %5849, %5844 ], [ %5839, %5787 ]
  %5857 = phi float [ %5850, %5844 ], [ %5840, %5787 ]
  %5858 = fcmp fast olt float %5702, 1.000000e+00
  br i1 %5858, label %5859, label %5890, !dx.controlflow.hints !84

; <label>:5859                                    ; preds = %5851
  %5860 = fmul fast float %5854, %5700
  %5861 = fmul fast float %5853, %5701
  %5862 = fsub fast float %5860, %5861
  %5863 = fmul fast float %5852, %5701
  %5864 = fmul fast float %5854, %5699
  %5865 = fsub fast float %5863, %5864
  %5866 = fmul fast float %5853, %5699
  %5867 = fmul fast float %5852, %5700
  %5868 = fsub fast float %5866, %5867
  %5869 = fmul fast float %5862, 2.000000e+00
  %5870 = fmul fast float %5865, 2.000000e+00
  %5871 = fmul fast float %5868, 2.000000e+00
  %5872 = fmul fast float %5869, %5702
  %5873 = fmul fast float %5870, %5702
  %5874 = fmul fast float %5871, %5702
  %5875 = fmul fast float %5871, %5700
  %5876 = fmul fast float %5870, %5701
  %5877 = fmul fast float %5869, %5701
  %5878 = fmul fast float %5871, %5699
  %5879 = fmul fast float %5870, %5699
  %5880 = fmul fast float %5869, %5700
  %5881 = fadd fast float %5875, %5852
  %5882 = fadd fast float %5881, %5872
  %5883 = fsub fast float %5882, %5876
  %5884 = fsub fast float %5853, %5878
  %5885 = fadd fast float %5884, %5873
  %5886 = fadd fast float %5885, %5877
  %5887 = fadd fast float %5874, %5854
  %5888 = fsub fast float %5887, %5880
  %5889 = fadd fast float %5888, %5879
  br label %5890

; <label>:5890                                    ; preds = %5859, %5851
  %5891 = phi float [ %5883, %5859 ], [ %5852, %5851 ]
  %5892 = phi float [ %5886, %5859 ], [ %5853, %5851 ]
  %5893 = phi float [ %5889, %5859 ], [ %5854, %5851 ]
  br i1 %5728, label %5925, label %5894

; <label>:5894                                    ; preds = %5890
  %5895 = fmul fast float %5080, 0x400187C840000000
  %5896 = fadd fast float %5895, 0xC00EFC2120000000
  %5897 = fmul fast float %5896, %5080
  %5898 = fadd fast float %5897, 0x3FE5D16340000000
  %5899 = fmul fast float %5898, %5080
  %5900 = fadd fast float %5899, 1.000000e+00
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = fsub fast float %5855, %141
  %5903 = fsub fast float %5856, %142
  %5904 = fsub fast float %5857, %143
  %5905 = fsub fast float %5855, %5683
  %5906 = fsub fast float %5856, %5684
  %5907 = fsub fast float %5857, %5685
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %5904, float %5902, float %5903, float %5904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5906, float %5907, float %5905, float %5906, float %5907)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fadd fast float %5909, 0x3EE4F8B580000000
  %5911 = fdiv fast float %5908, %5910
  %5912 = bitcast float %5911 to i32
  %5913 = ashr i32 %5912, 1
  %5914 = add nsw i32 %5913, 532487669
  %5915 = bitcast i32 %5914 to float
  %5916 = fmul fast float %5915, %5901
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = fmul fast float %5917, 0x4009981AE0000000
  %5919 = fsub fast float 0x40111BBD80000000, %5918
  %5920 = fmul fast float %5919, %5917
  %5921 = fadd fast float %5920, 0xC0009F6020000000
  %5922 = fmul fast float %5921, %5917
  %5923 = fadd fast float %5922, 1.000000e+00
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  br label %5928

; <label>:5925                                    ; preds = %5890
  %5926 = icmp ne i32 %5729, -1
  %5927 = zext i1 %5926 to i32
  br label %5928

; <label>:5928                                    ; preds = %5925, %5894
  %5929 = phi float [ %5080, %5925 ], [ %5924, %5894 ]
  %5930 = phi i32 [ %5927, %5925 ], [ 0, %5894 ]
  %5931 = fmul float %5929, 5.000000e+00
  %5932 = fsub float 5.000000e+00, %5931
  %5933 = icmp ne i32 %5930, 0
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5936 = fadd fast float %5935, %5932
  %5937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5936)  ; FMax(a,b)
  %5938 = call float @dx.op.unary.f32(i32 6, float %5891)  ; FAbs(value)
  %5939 = call float @dx.op.unary.f32(i32 6, float %5892)  ; FAbs(value)
  %5940 = fadd fast float %5939, %5938
  %5941 = call float @dx.op.unary.f32(i32 6, float %5893)  ; FAbs(value)
  %5942 = fadd fast float %5940, %5941
  %5943 = fcmp fast oeq float %5942, 0.000000e+00
  %5944 = fdiv fast float 1.000000e+00, %5942
  %5945 = select i1 %5943, float 1.000000e+00, float %5944
  %5946 = fmul fast float %5945, %5891
  %5947 = fmul fast float %5945, %5892
  %5948 = call float @dx.op.unary.f32(i32 6, float %5947)  ; FAbs(value)
  %5949 = call float @dx.op.unary.f32(i32 6, float %5946)  ; FAbs(value)
  %5950 = fsub fast float 1.000000e+00, %5948
  %5951 = fsub fast float 1.000000e+00, %5949
  %5952 = fcmp fast oge float %5946, 0.000000e+00
  %5953 = fcmp fast oge float %5947, 0.000000e+00
  %5954 = select i1 %5952, float 1.000000e+00, float -1.000000e+00
  %5955 = select i1 %5953, float 1.000000e+00, float -1.000000e+00
  %5956 = fcmp fast ole float %5893, 0.000000e+00
  %5957 = fmul fast float %5954, %5950
  %5958 = fmul fast float %5955, %5951
  %5959 = select i1 %5956, float %5957, float %5946
  %5960 = select i1 %5956, float %5958, float %5947
  %5961 = fmul fast float %5959, 5.000000e-01
  %5962 = fmul fast float %5960, 5.000000e-01
  %5963 = fadd fast float %5961, 5.000000e-01
  %5964 = fadd fast float %5962, 5.000000e-01
  %5965 = uitofp i32 %5726 to float
  %5966 = call float @dx.op.binary.f32(i32 36, float %5937, float 3.000000e+00)  ; FMin(a,b)
  %5967 = fadd fast float %5966, 2.000000e+00
  %5968 = call float @dx.op.unary.f32(i32 21, float %5967)  ; Exp(value)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5970 = fmul fast float %5969, %5968
  %5971 = fmul fast float %5970, 2.000000e+00
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = fmul fast float %5963, %5972
  %5974 = fmul fast float %5964, %5972
  %5975 = fadd fast float %5973, %5970
  %5976 = fadd fast float %5974, %5970
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5975, float %5976, float %5965, float undef, i32 0, i32 0, i32 undef, float %5937)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 3
  %5983 = fmul fast float %5982, %5696
  %5984 = call float @dx.op.binary.f32(i32 36, float %5161, float %5983)  ; FMin(a,b)
  %5985 = select i1 %5933, float %5984, float %5983
  %5986 = fmul fast float %5978, %5775
  %5987 = fmul fast float %5986, %5985
  %5988 = fmul fast float %5979, %5775
  %5989 = fmul fast float %5988, %5985
  %5990 = fmul fast float %5980, %5775
  %5991 = fmul fast float %5990, %5985
  %5992 = fadd fast float %5987, %5668
  %5993 = fadd fast float %5989, %5669
  %5994 = fadd fast float %5991, %5670
  %5995 = fmul fast float %5855, %5775
  %5996 = fmul fast float %5856, %5775
  %5997 = fmul fast float %5857, %5775
  %5998 = fadd fast float %5995, %5673
  %5999 = fadd fast float %5996, %5674
  %6000 = fadd fast float %5997, %5675
  %6001 = fsub fast float %5671, %5775
  br label %5777

; <label>:6002                                    ; preds = %5777
  br label %6003

; <label>:6003                                    ; preds = %6002, %5634
  %6004 = phi float [ %5635, %5634 ], [ %5778, %6002 ]
  %6005 = phi float [ %5636, %5634 ], [ %5779, %6002 ]
  %6006 = phi float [ %5637, %5634 ], [ %5780, %6002 ]
  %6007 = phi float [ %5638, %5634 ], [ %5781, %6002 ]
  %6008 = phi float [ %5640, %5634 ], [ %5782, %6002 ]
  %6009 = phi float [ %5641, %5634 ], [ %5783, %6002 ]
  %6010 = phi float [ %5642, %5634 ], [ %5784, %6002 ]
  %6011 = add i32 %5639, 1
  %6012 = icmp ugt i32 %6011, %5631
  br i1 %6012, label %6013, label %5634, !llvm.loop !85

; <label>:6013                                    ; preds = %6003
  br label %6014

; <label>:6014                                    ; preds = %6013, %5616
  %6015 = phi float [ 0.000000e+00, %5616 ], [ %6004, %6013 ]
  %6016 = phi float [ 0.000000e+00, %5616 ], [ %6005, %6013 ]
  %6017 = phi float [ 0.000000e+00, %5616 ], [ %6006, %6013 ]
  %6018 = phi float [ 0.000000e+00, %5616 ], [ %6008, %6013 ]
  %6019 = phi float [ 0.000000e+00, %5616 ], [ %6009, %6013 ]
  %6020 = phi float [ 0.000000e+00, %5616 ], [ %6010, %6013 ]
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6015, float %6016, float %6017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = select i1 %183, float 0.000000e+00, float %6015
  %6023 = select i1 %183, float %6021, float %6016
  %6024 = select i1 %183, float 0.000000e+00, float %6017
  %6025 = fcmp fast olt float %5540, 0.000000e+00
  %6026 = call float @dx.op.unary.f32(i32 6, float %5540)  ; FAbs(value)
  %6027 = fmul fast float %6026, %5541
  %6028 = fmul fast float %6026, %5542
  %6029 = fmul fast float %6026, %5543
  %6030 = select i1 %6025, float %5541, float %6027
  %6031 = select i1 %6025, float %5542, float %6028
  %6032 = select i1 %6025, float %5543, float %6029
  %6033 = fsub fast float 1.000000e+00, %6026
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = fmul fast float %6034, %6022
  %6036 = fmul fast float %6034, %6023
  %6037 = fmul fast float %6034, %6024
  %6038 = fadd fast float %6030, %6035
  %6039 = fadd fast float %6031, %6036
  %6040 = fadd fast float %6032, %6037
  %6041 = fcmp fast une float %5290, 0.000000e+00
  br i1 %6041, label %6142, label %6042

; <label>:6042                                    ; preds = %6014
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.CBufRet.f32 %6043, 2
  %6047 = extractvalue %dx.types.CBufRet.f32 %6043, 3
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6058 = call float @dx.op.dot3.f32(i32 55, float %6054, float %6055, float %6056, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6054, float %6055, float %6056)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %6054, float %6055, float %6056)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = fadd fast float %5080, -1.000000e+00
  %6062 = fsub fast float %6059, %6060
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6065 = fmul fast float %6064, %6059
  %6066 = fdiv fast float 1.600000e+02, %6065
  %6067 = fmul fast float %6061, %6061
  %6068 = fmul fast float %6067, 0xBFB5B17960000000
  %6069 = fmul fast float %6068, %6062
  %6070 = fmul fast float %6069, %6066
  %6071 = call float @dx.op.unary.f32(i32 21, float %6070)  ; Exp(value)
  %6072 = fmul fast float %6071, 0x3FF04B2960000000
  %6073 = fsub fast float 0x3FF04B2960000000, %6072
  %6074 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  %6075 = fmul fast float %6074, 4.000000e+00
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = fadd fast float %6077, %6018
  %6081 = fadd fast float %6078, %6019
  %6082 = fadd fast float %6079, %6020
  %6083 = fmul fast float %6080, %6044
  %6084 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6045, float %6083)  ; FMad(a,b,c)
  %6085 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6046, float %6084)  ; FMad(a,b,c)
  %6086 = fadd fast float %6085, %6047
  %6087 = fmul fast float %6080, %6049
  %6088 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6050, float %6087)  ; FMad(a,b,c)
  %6089 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6051, float %6088)  ; FMad(a,b,c)
  %6090 = fadd fast float %6089, %6052
  %6091 = fmul fast float %6080, %6054
  %6092 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6055, float %6091)  ; FMad(a,b,c)
  %6093 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6056, float %6092)  ; FMad(a,b,c)
  %6094 = fadd fast float %6093, %6057
  %6095 = fdiv fast float %6086, %6094
  %6096 = fdiv fast float %6090, %6094
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = fmul fast float %6098, %6095
  %6101 = fmul fast float %6099, %6096
  %6102 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6104 = fadd fast float %6100, %6102
  %6105 = fadd fast float %6101, %6103
  %6106 = fmul fast float %6058, 8.000000e+00
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = fmul fast float %6104, 2.000000e+00
  %6109 = fmul fast float %6105, 2.000000e+00
  %6110 = fadd fast float %6108, -1.000000e+00
  %6111 = fadd fast float %6109, -1.000000e+00
  %6112 = fmul fast float %6110, %6110
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = fmul fast float %6111, %6111
  %6116 = fsub fast float 1.000000e+00, %6115
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6118 = fmul fast float %5290, %6114
  %6119 = fmul fast float %6118, %6117
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = fmul fast float %6120, %6107
  %6122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %6104, float %6105, float undef, float undef, i32 0, i32 0, i32 undef, float %6075)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.ResRet.f32 %6122, 1
  %6125 = extractvalue %dx.types.ResRet.f32 %6122, 2
  %6126 = select i1 %183, float 0.000000e+00, float %6124
  %6127 = select i1 %183, float 0.000000e+00, float %6125
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6130 = fmul fast float %6129, %6123
  %6131 = fmul fast float %6126, %6129
  %6132 = fmul fast float %6127, %6129
  %6133 = fsub fast float %6130, %6022
  %6134 = fsub fast float %6131, %6023
  %6135 = fsub fast float %6132, %6024
  %6136 = fmul fast float %6133, %6121
  %6137 = fmul fast float %6134, %6121
  %6138 = fmul fast float %6135, %6121
  %6139 = fadd fast float %6136, %6022
  %6140 = fadd fast float %6137, %6023
  %6141 = fadd fast float %6138, %6024
  br label %6142

; <label>:6142                                    ; preds = %6042, %6014, %5539, %5263
  %6143 = phi float [ %5541, %5539 ], [ %6038, %6014 ], [ %5220, %5263 ], [ %6139, %6042 ]
  %6144 = phi float [ %5542, %5539 ], [ %6039, %6014 ], [ %5221, %5263 ], [ %6140, %6042 ]
  %6145 = phi float [ %5543, %5539 ], [ %6040, %6014 ], [ %5222, %5263 ], [ %6141, %6042 ]
  %6146 = fmul fast float %5269, %5216
  %6147 = fmul fast float %5269, %5217
  %6148 = fmul fast float %5269, %5218
  %6149 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = fcmp fast ogt float %6149, 0x3E7FF19E20000000
  %6151 = fdiv fast float 1.000000e+00, %6149
  %6152 = select i1 %6150, float %6151, float 0.000000e+00
  %6153 = fmul fast float %6152, %5071
  %6154 = fmul fast float %6152, %5072
  %6155 = fmul fast float %6152, %5073
  %6156 = fadd fast float %6153, -1.000000e+00
  %6157 = fadd fast float %6154, -1.000000e+00
  %6158 = fadd fast float %6155, -1.000000e+00
  %6159 = fmul fast float %6156, 5.000000e-01
  %6160 = fmul fast float %6157, 5.000000e-01
  %6161 = fmul fast float %6158, 5.000000e-01
  %6162 = fadd fast float %6159, 1.000000e+00
  %6163 = fadd fast float %6160, 1.000000e+00
  %6164 = fadd fast float %6161, 1.000000e+00
  %6165 = fmul fast float %6143, %5264
  %6166 = fmul fast float %6144, %5265
  %6167 = fmul fast float %6145, %5266
  %6168 = fsub fast float 1.000000e+00, %5099
  %6169 = bitcast float %6168 to i32
  %6170 = sitofp i32 %6169 to float
  %6171 = fmul fast float %6170, 5.000000e+00
  %6172 = fadd fast float %6171, 0xC1EFBF8940000000
  %6173 = fptosi float %6172 to i32
  %6174 = bitcast i32 %6173 to float
  %6175 = fmul fast float %6174, %4470
  %6176 = fmul fast float %5216, %6175
  %6177 = fmul fast float %6176, %5269
  %6178 = fmul fast float %6177, %6162
  %6179 = fmul fast float %5217, %6175
  %6180 = fmul fast float %6179, %5269
  %6181 = fmul fast float %6180, %6163
  %6182 = fmul fast float %5218, %6175
  %6183 = fmul fast float %6182, %5269
  %6184 = fmul fast float %6183, %6164
  %6185 = fmul fast float %6146, %4466
  %6186 = fmul fast float %6147, %4466
  %6187 = fmul fast float %6148, %4466
  %6188 = fadd fast float %6165, %4462
  %6189 = fadd fast float %6188, %6178
  %6190 = fmul fast float %6189, %4466
  %6191 = fadd fast float %6166, %4463
  %6192 = fadd fast float %6191, %6181
  %6193 = fmul fast float %6192, %4466
  %6194 = fadd fast float %6167, %4464
  %6195 = fadd fast float %6194, %6184
  %6196 = fmul fast float %6195, %4466
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6199 = fcmp fast oeq float %6198, 0.000000e+00
  br i1 %6199, label %6418, label %6200

; <label>:6200                                    ; preds = %6142
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6202 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = call float @dx.op.dot3.f32(i32 55, float %6205, float %6206, float %6207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = select i1 %183, float %6209, float %6205
  %6213 = select i1 %183, float %6211, float %6206
  %6214 = select i1 %183, float %6210, float %6207
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6217 = fcmp fast une float %6216, 0.000000e+00
  br i1 %6217, label %6218, label %6235

; <label>:6218                                    ; preds = %6200
  %6219 = fptoui float %78 to i32
  %6220 = fptoui float %79 to i32
  %6221 = lshr i32 %6219, 4
  %6222 = lshr i32 %6220, 4
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = fptoui float %6224 to i32
  %6226 = add i32 %6225, 15
  %6227 = lshr i32 %6226, 4
  %6228 = mul i32 %6227, %6222
  %6229 = add i32 %6228, %6221
  %6230 = shl i32 %6229, 3
  %6231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6230, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.i32 %6231, 0
  %6233 = and i32 %6232, -268435456
  %6234 = icmp eq i32 %6233, -1342177280
  br i1 %6234, label %6240, label %6235

; <label>:6235                                    ; preds = %6218, %6200
  %6236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %5085, float %5086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6237 = extractvalue %dx.types.ResRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.ResRet.f32 %6236, 2
  br label %6240

; <label>:6240                                    ; preds = %6235, %6218
  %6241 = phi float [ %6237, %6235 ], [ 0.000000e+00, %6218 ]
  %6242 = phi float [ %6238, %6235 ], [ 0.000000e+00, %6218 ]
  %6243 = phi float [ %6239, %6235 ], [ 0.000000e+00, %6218 ]
  %6244 = call float @dx.op.binary.f32(i32 36, float %6242, float %6243)  ; FMin(a,b)
  %6245 = call float @dx.op.binary.f32(i32 36, float %6241, float %6244)  ; FMin(a,b)
  %6246 = fcmp fast ogt float %6245, 0.000000e+00
  br i1 %6246, label %6247, label %6418, !dx.controlflow.hints !87

; <label>:6247                                    ; preds = %6240
  %6248 = fmul fast float %6241, %6212
  %6249 = fmul fast float %6242, %6213
  %6250 = fmul fast float %6243, %6214
  %6251 = fsub fast float %6201, %5070
  %6252 = fsub fast float %6202, %5069
  %6253 = fsub fast float %6203, %5068
  %6254 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = call float @dx.op.unary.f32(i32 25, float %6254)  ; Rsqrt(value)
  %6256 = fmul fast float %6255, %6251
  %6257 = fmul fast float %6255, %6252
  %6258 = fmul fast float %6255, %6253
  %6259 = call float @dx.op.dot3.f32(i32 55, float %6201, float %6202, float %6203, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %6260 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5066, float %5065, float %6256, float %6257, float %6258)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6262 = fmul fast float %6261, %6261
  %6263 = fmul fast float %6262, %5124
  %6264 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6265 = fmul fast float %6264, %6261
  %6266 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %6256, float %6257, float %6258)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = fmul fast float %6266, %6266
  %6268 = call float @dx.op.unary.f32(i32 6, float %6259)  ; FAbs(value)
  %6269 = fsub fast float 1.000000e+00, %5117
  %6270 = fmul fast float %5099, %5099
  %6271 = fmul fast float %6270, %6269
  %6272 = fadd fast float %6271, %5117
  %6273 = bitcast float %6272 to i32
  %6274 = ashr i32 %6273, 1
  %6275 = add nsw i32 %6274, 532487669
  %6276 = bitcast i32 %6275 to float
  %6277 = fadd fast float %6276, %5099
  %6278 = fmul fast float %5117, %6267
  %6279 = fsub fast float 1.000000e+00, %6267
  %6280 = fadd fast float %6279, %6278
  %6281 = fmul fast float %6268, %6268
  %6282 = fmul fast float %6281, %6269
  %6283 = fadd fast float %6282, %5117
  %6284 = bitcast float %6283 to i32
  %6285 = ashr i32 %6284, 1
  %6286 = add nsw i32 %6285, 532487669
  %6287 = bitcast i32 %6286 to float
  %6288 = fadd fast float %6287, %6268
  %6289 = fmul fast float %6280, %6280
  %6290 = fmul fast float %6289, %6277
  %6291 = fmul fast float %6290, %6288
  %6292 = fdiv fast float 0x3FF0A00000000000, %6291
  %6293 = fmul fast float %6292, %5117
  %6294 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = bitcast float %6295 to i32
  %6297 = sitofp i32 %6296 to float
  %6298 = fmul fast float %6297, 5.000000e+00
  %6299 = fadd fast float %6298, 0xC1EFBF8940000000
  %6300 = fptosi float %6299 to i32
  %6301 = bitcast i32 %6300 to float
  %6302 = fsub fast float 1.000000e+00, %5074
  %6303 = fsub fast float 1.000000e+00, %5075
  %6304 = fsub fast float 1.000000e+00, %5097
  %6305 = fmul fast float %6301, %6302
  %6306 = fmul fast float %6301, %6303
  %6307 = fmul fast float %6301, %6304
  %6308 = fadd fast float %6305, %5074
  %6309 = fadd fast float %6306, %5075
  %6310 = fadd fast float %6307, %5097
  br i1 %5236, label %6311, label %6334

; <label>:6311                                    ; preds = %6247
  %6312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4469, float %6294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6313 = extractvalue %dx.types.ResRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.ResRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.ResRet.f32 %6312, 2
  %6316 = fadd fast float %6313, -5.000000e-01
  %6317 = fadd fast float %6314, -5.000000e-01
  %6318 = fadd fast float %6315, -5.000000e-01
  %6319 = fmul fast float %5074, 4.000000e+00
  %6320 = fmul fast float %6319, %6302
  %6321 = fmul fast float %6320, %6316
  %6322 = fmul fast float %5075, 4.000000e+00
  %6323 = fmul fast float %6322, %6303
  %6324 = fmul fast float %6323, %6317
  %6325 = fmul fast float %5097, 4.000000e+00
  %6326 = fmul fast float %6325, %6304
  %6327 = fmul fast float %6326, %6318
  %6328 = fadd fast float %6321, %6308
  %6329 = fadd fast float %6324, %6309
  %6330 = fadd fast float %6327, %6310
  %6331 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6333 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  br label %6334

; <label>:6334                                    ; preds = %6311, %6247
  %6335 = phi float [ %6331, %6311 ], [ %6308, %6247 ]
  %6336 = phi float [ %6332, %6311 ], [ %6309, %6247 ]
  %6337 = phi float [ %6333, %6311 ], [ %6310, %6247 ]
  %6338 = fmul fast float %6259, 9.843750e-01
  %6339 = fadd fast float %6338, 7.812500e-03
  %6340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6339, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 2
  %6342 = extractvalue %dx.types.ResRet.f32 %6340, 3
  %6343 = fmul fast float %6341, %5074
  %6344 = fmul fast float %6341, %5075
  %6345 = fmul fast float %6341, %5097
  %6346 = fadd fast float %6343, %6342
  %6347 = fadd fast float %6344, %6342
  %6348 = fadd fast float %6345, %6342
  br i1 %5236, label %6349, label %6372

; <label>:6349                                    ; preds = %6334
  %6350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4469, float %6259, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.ResRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.ResRet.f32 %6350, 2
  %6354 = fadd fast float %6351, -5.000000e-01
  %6355 = fadd fast float %6352, -5.000000e-01
  %6356 = fadd fast float %6353, -5.000000e-01
  %6357 = fmul fast float %5074, 4.000000e+00
  %6358 = fmul fast float %6357, %6302
  %6359 = fmul fast float %6358, %6354
  %6360 = fmul fast float %5075, 4.000000e+00
  %6361 = fmul fast float %6360, %6303
  %6362 = fmul fast float %6361, %6355
  %6363 = fmul fast float %5097, 4.000000e+00
  %6364 = fmul fast float %6363, %6304
  %6365 = fmul fast float %6364, %6356
  %6366 = fadd fast float %6359, %6346
  %6367 = fadd fast float %6362, %6347
  %6368 = fadd fast float %6365, %6348
  %6369 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6370 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6371 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  br label %6372

; <label>:6372                                    ; preds = %6349, %6334
  %6373 = phi float [ %6369, %6349 ], [ %6346, %6334 ]
  %6374 = phi float [ %6370, %6349 ], [ %6347, %6334 ]
  %6375 = phi float [ %6371, %6349 ], [ %6348, %6334 ]
  %6376 = call float @dx.op.binary.f32(i32 35, float %6374, float %6375)  ; FMax(a,b)
  %6377 = call float @dx.op.binary.f32(i32 35, float %6373, float %6376)  ; FMax(a,b)
  %6378 = fsub fast float 1.000000e+00, %6377
  %6379 = fmul fast float %6335, %6293
  %6380 = fmul fast float %6336, %6293
  %6381 = fmul fast float %6337, %6293
  %6382 = fsub fast float 1.000000e+00, %6260
  %6383 = bitcast float %6382 to i32
  %6384 = sitofp i32 %6383 to float
  %6385 = fmul fast float %6384, 5.000000e+00
  %6386 = fadd fast float %6385, 0xC1EFBF8940000000
  %6387 = fptosi float %6386 to i32
  %6388 = bitcast i32 %6387 to float
  %6389 = fmul fast float %6388, %4470
  %6390 = fmul fast float %6378, %6389
  %6391 = fmul fast float %6390, %6162
  %6392 = fmul fast float %6390, %6163
  %6393 = fmul fast float %6390, %6164
  %6394 = fadd fast float %6391, %6379
  %6395 = fadd fast float %6392, %6380
  %6396 = fadd fast float %6393, %6381
  %6397 = fmul fast float %6265, %6248
  %6398 = fmul fast float %6397, %6378
  %6399 = fmul fast float %6265, %6249
  %6400 = fmul fast float %6399, %6378
  %6401 = fmul fast float %6265, %6250
  %6402 = fmul fast float %6401, %6378
  %6403 = fmul fast float %6397, %6394
  %6404 = fmul fast float %6399, %6395
  %6405 = fmul fast float %6401, %6396
  %6406 = fadd fast float %6398, %6146
  %6407 = fmul fast float %6406, %4466
  %6408 = fadd fast float %6400, %6147
  %6409 = fmul fast float %6408, %4466
  %6410 = fadd fast float %6402, %6148
  %6411 = fmul fast float %6410, %4466
  %6412 = fadd fast float %6403, %6189
  %6413 = fmul fast float %6412, %4466
  %6414 = fadd fast float %6404, %6192
  %6415 = fmul fast float %6414, %4466
  %6416 = fadd fast float %6405, %6195
  %6417 = fmul fast float %6416, %4466
  br label %6418

; <label>:6418                                    ; preds = %6372, %6240, %6142
  %6419 = phi float [ %6190, %6142 ], [ %6190, %6240 ], [ %6413, %6372 ]
  %6420 = phi float [ %6193, %6142 ], [ %6193, %6240 ], [ %6415, %6372 ]
  %6421 = phi float [ %6196, %6142 ], [ %6196, %6240 ], [ %6417, %6372 ]
  %6422 = phi float [ %6185, %6142 ], [ %6185, %6240 ], [ %6407, %6372 ]
  %6423 = phi float [ %6186, %6142 ], [ %6186, %6240 ], [ %6409, %6372 ]
  %6424 = phi float [ %6187, %6142 ], [ %6187, %6240 ], [ %6411, %6372 ]
  %6425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.i32 %6425, 0
  %6427 = icmp eq i32 %6426, 0
  br i1 %6427, label %6858, label %6428

; <label>:6428                                    ; preds = %6418
  %6429 = fptoui float %78 to i32
  %6430 = fptoui float %79 to i32
  %6431 = lshr i32 %6429, 4
  %6432 = lshr i32 %6430, 4
  %6433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.i32 %6433, 0
  %6435 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6432, i32 %6434, i32 %6431)  ; UMad(a,b,c)
  %6436 = add nsw i32 %6426, -1
  %6437 = call i32 @dx.op.binary.i32(i32 37, i32 %6436, i32 0)  ; IMax(a,b)
  %6438 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6439 = fptoui float %6438 to i32
  %6440 = lshr i32 %6439, 5
  %6441 = call i32 @dx.op.binary.i32(i32 40, i32 %6440, i32 8191)  ; UMin(a,b)
  %6442 = shl i32 %6441, 2
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6442, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = lshr i32 %6444, 16
  %6446 = and i32 %6444, 65535
  %6447 = lshr i32 %6444, 21
  %6448 = lshr i32 %6446, 5
  %6449 = call i32 @dx.op.binary.i32(i32 40, i32 %6448, i32 %6437)  ; UMin(a,b)
  %6450 = icmp ugt i32 %6447, %6449
  br i1 %6450, label %6858, label %6451

; <label>:6451                                    ; preds = %6428
  br label %6452

; <label>:6452                                    ; preds = %6848, %6451
  %6453 = phi i32 [ %6855, %6848 ], [ %6447, %6451 ]
  %6454 = phi float [ %6849, %6848 ], [ %6419, %6451 ]
  %6455 = phi float [ %6850, %6848 ], [ %6420, %6451 ]
  %6456 = phi float [ %6851, %6848 ], [ %6421, %6451 ]
  %6457 = phi float [ %6852, %6848 ], [ %6422, %6451 ]
  %6458 = phi float [ %6853, %6848 ], [ %6423, %6451 ]
  %6459 = phi float [ %6854, %6848 ], [ %6424, %6451 ]
  %6460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.i32 %6460, 0
  %6462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6435, i32 %6461, i32 %6453)  ; UMad(a,b,c)
  %6463 = shl i32 %6462, 2
  %6464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6463, i32 undef)  ; BufferLoad(srv,index,wot)
  %6465 = extractvalue %dx.types.ResRet.i32 %6464, 0
  %6466 = shl i32 %6453, 5
  %6467 = sub nsw i32 %6445, %6466
  %6468 = call i32 @dx.op.binary.i32(i32 37, i32 %6467, i32 0)  ; IMax(a,b)
  %6469 = call i32 @dx.op.binary.i32(i32 38, i32 %6468, i32 31)  ; IMin(a,b)
  %6470 = sub nsw i32 1, %6445
  %6471 = add nsw i32 %6470, %6446
  %6472 = call i32 @dx.op.binary.i32(i32 37, i32 %6471, i32 0)  ; IMax(a,b)
  %6473 = call i32 @dx.op.binary.i32(i32 38, i32 %6472, i32 32)  ; IMin(a,b)
  %6474 = and i32 %6473, 31
  %6475 = shl i32 -1, %6474
  %6476 = xor i32 %6475, -1
  %6477 = and i32 %6469, 31
  %6478 = shl i32 %6476, %6477
  %6479 = icmp eq i32 %6473, 32
  %6480 = select i1 %6479, i32 -1, i32 %6478
  %6481 = and i32 %6480, %6465
  %6482 = icmp eq i32 %6481, 0
  br i1 %6482, label %6848, label %6483

; <label>:6483                                    ; preds = %6452
  br label %6484

; <label>:6484                                    ; preds = %6564, %6483
  %6485 = phi i32 [ %6496, %6564 ], [ %6481, %6483 ]
  %6486 = phi float [ %6565, %6564 ], [ %6454, %6483 ]
  %6487 = phi float [ %6566, %6564 ], [ %6455, %6483 ]
  %6488 = phi float [ %6567, %6564 ], [ %6456, %6483 ]
  %6489 = phi float [ %6568, %6564 ], [ %6457, %6483 ]
  %6490 = phi float [ %6569, %6564 ], [ %6458, %6483 ]
  %6491 = phi float [ %6570, %6564 ], [ %6459, %6483 ]
  %6492 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6485)  ; FirstbitLo(value)
  %6493 = add i32 %6492, %6466
  %6494 = and i32 %6492, 31
  %6495 = shl i32 1, %6494
  %6496 = xor i32 %6495, %6485
  %6497 = mul i32 %6493, 112
  %6498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6497, i32 undef)  ; BufferLoad(srv,index,wot)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.ResRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.ResRet.f32 %6498, 2
  %6502 = or i32 %6497, 12
  %6503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6502, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.f32 %6503, 0
  %6505 = add i32 %6497, 44
  %6506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6505, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = add i32 %6497, 48
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = add i32 %6497, 80
  %6514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 2
  %6517 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6518 = select i1 %183, float %6515, float %6499
  %6519 = select i1 %183, float %6517, float %6500
  %6520 = select i1 %183, float %6516, float %6501
  %6521 = fsub fast float %6510, %141
  %6522 = fsub fast float %6511, %142
  %6523 = fsub fast float %6512, %143
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6521, float %6522, float %6523, float %6521, float %6522, float %6523)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = call float @dx.op.unary.f32(i32 24, float %6524)  ; Sqrt(value)
  %6526 = fdiv fast float 1.000000e+00, %6525
  %6527 = fmul fast float %6526, %6521
  %6528 = fmul fast float %6526, %6522
  %6529 = fmul fast float %6526, %6523
  %6530 = fadd fast float %6525, %6504
  %6531 = fdiv fast float 1.000000e+00, %6530
  %6532 = fmul float %6507, %6531
  %6533 = fmul float %6532, %6532
  %6534 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6535 = and i32 %6495, %6481
  %6536 = icmp eq i32 %6535, 0
  br i1 %6536, label %6559, label %6537, !dx.controlflow.hints !88

; <label>:6537                                    ; preds = %6484
  %6538 = lshr i32 %6429, 5
  %6539 = lshr i32 %6430, 5
  %6540 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6538, i32 %6539, i32 %6493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6541 = extractvalue %dx.types.ResRet.i32 %6540, 0
  %6542 = and i32 %6541, 3
  %6543 = icmp eq i32 %6542, 0
  %6544 = select i1 %6543, float 1.000000e+00, float 0.000000e+00
  %6545 = icmp eq i32 %6542, 3
  br i1 %6545, label %6546, label %6559

; <label>:6546                                    ; preds = %6537
  %6547 = lshr i32 %6541, 10
  %6548 = and i32 %6547, 8160
  %6549 = and i32 %6430, 31
  %6550 = or i32 %6548, %6549
  %6551 = lshr i32 %6541, 1
  %6552 = and i32 %6551, 16352
  %6553 = and i32 %6429, 31
  %6554 = or i32 %6552, %6553
  %6555 = lshr i32 %6541, 23
  %6556 = and i32 %6555, 255
  %6557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6554, i32 %6550, i32 %6556, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6558 = extractvalue %dx.types.ResRet.f32 %6557, 0
  br label %6559

; <label>:6559                                    ; preds = %6546, %6537, %6484
  %6560 = phi float [ %6558, %6546 ], [ %6544, %6537 ], [ 0.000000e+00, %6484 ]
  %6561 = call float @dx.op.binary.f32(i32 36, float %6560, float %6560)  ; FMin(a,b)
  %6562 = call float @dx.op.binary.f32(i32 36, float %6560, float %6561)  ; FMin(a,b)
  %6563 = fcmp fast ogt float %6562, 0.000000e+00
  br i1 %6563, label %6572, label %6564, !dx.controlflow.hints !89

; <label>:6564                                    ; preds = %6804, %6559
  %6565 = phi float [ %6486, %6559 ], [ %6844, %6804 ]
  %6566 = phi float [ %6487, %6559 ], [ %6845, %6804 ]
  %6567 = phi float [ %6488, %6559 ], [ %6846, %6804 ]
  %6568 = phi float [ %6489, %6559 ], [ %6838, %6804 ]
  %6569 = phi float [ %6490, %6559 ], [ %6839, %6804 ]
  %6570 = phi float [ %6491, %6559 ], [ %6840, %6804 ]
  %6571 = icmp eq i32 %6485, %6495
  br i1 %6571, label %6847, label %6484

; <label>:6572                                    ; preds = %6559
  %6573 = fmul fast float %6560, %6518
  %6574 = fmul fast float %6560, %6519
  %6575 = fmul fast float %6560, %6520
  %6576 = fsub fast float %6512, %4870
  %6577 = fcmp fast ogt float %6576, 0.000000e+00
  %6578 = fsub fast float %143, %4870
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  %6580 = xor i1 %6579, %6577
  %6581 = fsub fast float %4870, %6512
  %6582 = fmul fast float %6581, 2.000000e+00
  %6583 = fadd fast float %6582, %6512
  %6584 = select i1 %6580, float %6512, float %6583
  %6585 = fsub fast float %6584, %143
  %6586 = call float @dx.op.dot3.f32(i32 55, float %6521, float %6522, float %6585, float %6521, float %6522, float %6585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6587 = call float @dx.op.unary.f32(i32 25, float %6586)  ; Rsqrt(value)
  %6588 = fmul fast float %6587, %6521
  %6589 = fmul fast float %6587, %6522
  %6590 = fmul fast float %6587, %6585
  %6591 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %6592 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6588, float %6589, float %6590)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = fdiv fast float 1.000000e+00, %6592
  %6594 = fmul fast float %6593, %6591
  %6595 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6578, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = fcmp fast ogt float %6595, 0.000000e+00
  %6597 = fcmp fast olt float %6595, 0.000000e+00
  %6598 = zext i1 %6596 to i32
  %6599 = zext i1 %6597 to i32
  %6600 = sub nsw i32 %6598, %6599
  %6601 = sitofp i32 %6600 to float
  %6602 = fsub fast float %6584, %4870
  %6603 = call float @dx.op.dot3.f32(i32 55, float %6521, float %6522, float %6602, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6604 = fcmp fast ogt float %6603, 0.000000e+00
  %6605 = fcmp fast olt float %6603, 0.000000e+00
  %6606 = zext i1 %6604 to i32
  %6607 = zext i1 %6605 to i32
  %6608 = sub nsw i32 %6606, %6607
  %6609 = sitofp i32 %6608 to float
  %6610 = fcmp fast une float %6601, %6609
  br i1 %6610, label %6611, label %6621

; <label>:6611                                    ; preds = %6572
  %6612 = fmul fast float %6594, %6590
  %6613 = fmul fast float %6594, %6589
  %6614 = fmul fast float %6594, %6588
  %6615 = fmul fast float %6614, %6614
  %6616 = fmul fast float %6613, %6613
  %6617 = fadd fast float %6615, %6616
  %6618 = fmul fast float %6612, %6612
  %6619 = fadd fast float %6617, %6618
  %6620 = call float @dx.op.unary.f32(i32 24, float %6619)  ; Sqrt(value)
  br label %6633

; <label>:6621                                    ; preds = %6572
  %6622 = icmp slt i32 %6600, 0
  br i1 %6622, label %6623, label %6633

; <label>:6623                                    ; preds = %6621
  %6624 = fsub fast float %141, %6510
  %6625 = fsub fast float %142, %6511
  %6626 = fsub fast float %143, %6584
  %6627 = fmul fast float %6624, %6624
  %6628 = fmul fast float %6625, %6625
  %6629 = fadd fast float %6627, %6628
  %6630 = fmul fast float %6626, %6626
  %6631 = fadd fast float %6629, %6630
  %6632 = call float @dx.op.unary.f32(i32 24, float %6631)  ; Sqrt(value)
  br label %6633

; <label>:6633                                    ; preds = %6623, %6621, %6611
  %6634 = phi float [ %6620, %6611 ], [ %6632, %6623 ], [ 0.000000e+00, %6621 ]
  %6635 = and i1 %6579, %6577
  %6636 = fsub fast float -0.000000e+00, %6634
  %6637 = select i1 %6635, float -0.000000e+00, float %6636
  %6638 = fmul fast float %4871, 0x3FF7154760000000
  %6639 = fmul fast float %6638, %6637
  %6640 = fmul fast float %4872, 0x3FF7154760000000
  %6641 = fmul fast float %6640, %6637
  %6642 = fmul fast float %4873, 0x3FF7154760000000
  %6643 = fmul fast float %6642, %6637
  %6644 = call float @dx.op.unary.f32(i32 21, float %6639)  ; Exp(value)
  %6645 = call float @dx.op.unary.f32(i32 21, float %6641)  ; Exp(value)
  %6646 = call float @dx.op.unary.f32(i32 21, float %6643)  ; Exp(value)
  %6647 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6648 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6649 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6650 = fmul fast float %6573, %6647
  %6651 = fmul fast float %6574, %6648
  %6652 = fmul fast float %6575, %6649
  %6653 = fsub fast float %6527, %5070
  %6654 = fsub fast float %6528, %5069
  %6655 = fsub fast float %6529, %5068
  %6656 = call float @dx.op.dot3.f32(i32 55, float %6653, float %6654, float %6655, float %6653, float %6654, float %6655)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = call float @dx.op.unary.f32(i32 25, float %6656)  ; Rsqrt(value)
  %6658 = fmul fast float %6657, %6653
  %6659 = fmul fast float %6657, %6654
  %6660 = fmul fast float %6657, %6655
  %6661 = call float @dx.op.dot3.f32(i32 55, float %6527, float %6528, float %6529, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %6662 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5066, float %5065, float %6658, float %6659, float %6660)  ; Dot3(ax,ay,az,bx,by,bz)
  %6663 = call float @dx.op.unary.f32(i32 7, float %6661)  ; Saturate(value)
  %6664 = fmul fast float %6663, %6534
  %6665 = fmul fast float %6663, %6663
  %6666 = fmul fast float %6665, %5124
  %6667 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6668 = fmul fast float %6664, %6667
  %6669 = bitcast float %6524 to i32
  %6670 = ashr i32 %6669, 1
  %6671 = sub nsw i32 1597463007, %6670
  %6672 = bitcast i32 %6671 to float
  %6673 = fmul fast float %6672, %6521
  %6674 = fmul fast float %6672, %6522
  %6675 = fmul fast float %6672, %6523
  %6676 = fsub fast float %6673, %5070
  %6677 = fsub fast float %6674, %5069
  %6678 = fsub fast float %6675, %5068
  %6679 = call float @dx.op.dot3.f32(i32 55, float %6676, float %6677, float %6678, float %6676, float %6677, float %6678)  ; Dot3(ax,ay,az,bx,by,bz)
  %6680 = call float @dx.op.unary.f32(i32 25, float %6679)  ; Rsqrt(value)
  %6681 = fmul fast float %6676, %6680
  %6682 = fmul fast float %6677, %6680
  %6683 = fmul fast float %6678, %6680
  %6684 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %6681, float %6682, float %6683)  ; Dot3(ax,ay,az,bx,by,bz)
  %6685 = fmul fast float %6684, %6684
  %6686 = call float @dx.op.unary.f32(i32 6, float %6661)  ; FAbs(value)
  %6687 = fsub fast float 1.000000e+00, %5117
  %6688 = fmul fast float %5099, %5099
  %6689 = fmul fast float %6688, %6687
  %6690 = fadd fast float %6689, %5117
  %6691 = bitcast float %6690 to i32
  %6692 = ashr i32 %6691, 1
  %6693 = add nsw i32 %6692, 532487669
  %6694 = bitcast i32 %6693 to float
  %6695 = fadd fast float %6694, %5099
  %6696 = fmul fast float %5117, %6685
  %6697 = fsub fast float 1.000000e+00, %6685
  %6698 = fadd fast float %6697, %6696
  %6699 = fmul fast float %6686, %6686
  %6700 = fmul fast float %6699, %6687
  %6701 = fadd fast float %6700, %5117
  %6702 = bitcast float %6701 to i32
  %6703 = ashr i32 %6702, 1
  %6704 = add nsw i32 %6703, 532487669
  %6705 = bitcast i32 %6704 to float
  %6706 = fadd fast float %6705, %6686
  %6707 = fmul fast float %6698, %6698
  %6708 = fmul fast float %6707, %6695
  %6709 = fmul fast float %6708, %6706
  %6710 = fdiv fast float 1.000000e+00, %6709
  %6711 = bitcast float %5117 to i32
  %6712 = sitofp i32 %6711 to float
  %6713 = fmul fast float %6712, 0x3FE7F73180000000
  %6714 = fadd fast float %6713, 0x41AFE27C40000000
  %6715 = fptosi float %6714 to i32
  %6716 = bitcast i32 %6715 to float
  %6717 = fmul fast float %6507, 0x3FD80E9D60000000
  %6718 = fmul fast float %6717, %6672
  %6719 = fadd fast float %6716, %6718
  %6720 = bitcast float %6719 to i32
  %6721 = sub nsw i32 2129859010, %6720
  %6722 = bitcast i32 %6721 to float
  %6723 = fmul fast float %5117, %6710
  %6724 = fmul fast float %6723, %6716
  %6725 = fmul fast float %6724, %6722
  %6726 = call float @dx.op.unary.f32(i32 6, float %6662)  ; FAbs(value)
  %6727 = fsub fast float 1.000000e+00, %6726
  %6728 = bitcast float %6727 to i32
  %6729 = sitofp i32 %6728 to float
  %6730 = fmul fast float %6729, 5.000000e+00
  %6731 = fadd fast float %6730, 0xC1EFBF8940000000
  %6732 = fptosi float %6731 to i32
  %6733 = bitcast i32 %6732 to float
  %6734 = fsub fast float 1.000000e+00, %5074
  %6735 = fsub fast float 1.000000e+00, %5075
  %6736 = fsub fast float 1.000000e+00, %5097
  %6737 = fmul fast float %6733, %6734
  %6738 = fmul fast float %6733, %6735
  %6739 = fmul fast float %6733, %6736
  %6740 = fadd fast float %6737, %5074
  %6741 = fadd fast float %6738, %5075
  %6742 = fadd fast float %6739, %5097
  br i1 %5236, label %6743, label %6766

; <label>:6743                                    ; preds = %6633
  %6744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4469, float %6726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.ResRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.ResRet.f32 %6744, 2
  %6748 = fadd fast float %6745, -5.000000e-01
  %6749 = fadd fast float %6746, -5.000000e-01
  %6750 = fadd fast float %6747, -5.000000e-01
  %6751 = fmul fast float %5074, 4.000000e+00
  %6752 = fmul fast float %6751, %6734
  %6753 = fmul fast float %6752, %6748
  %6754 = fmul fast float %5075, 4.000000e+00
  %6755 = fmul fast float %6754, %6735
  %6756 = fmul fast float %6755, %6749
  %6757 = fmul fast float %5097, 4.000000e+00
  %6758 = fmul fast float %6757, %6736
  %6759 = fmul fast float %6758, %6750
  %6760 = fadd fast float %6753, %6740
  %6761 = fadd fast float %6756, %6741
  %6762 = fadd fast float %6759, %6742
  %6763 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6764 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6765 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  br label %6766

; <label>:6766                                    ; preds = %6743, %6633
  %6767 = phi float [ %6763, %6743 ], [ %6740, %6633 ]
  %6768 = phi float [ %6764, %6743 ], [ %6741, %6633 ]
  %6769 = phi float [ %6765, %6743 ], [ %6742, %6633 ]
  %6770 = fmul fast float %6661, 9.843750e-01
  %6771 = fadd fast float %6770, 7.812500e-03
  %6772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6771, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6773 = extractvalue %dx.types.ResRet.f32 %6772, 2
  %6774 = extractvalue %dx.types.ResRet.f32 %6772, 3
  %6775 = fmul fast float %6773, %5074
  %6776 = fmul fast float %6773, %5075
  %6777 = fmul fast float %6773, %5097
  %6778 = fadd fast float %6775, %6774
  %6779 = fadd fast float %6776, %6774
  %6780 = fadd fast float %6777, %6774
  br i1 %5236, label %6781, label %6804

; <label>:6781                                    ; preds = %6766
  %6782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4469, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6783 = extractvalue %dx.types.ResRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.ResRet.f32 %6782, 1
  %6785 = extractvalue %dx.types.ResRet.f32 %6782, 2
  %6786 = fadd fast float %6783, -5.000000e-01
  %6787 = fadd fast float %6784, -5.000000e-01
  %6788 = fadd fast float %6785, -5.000000e-01
  %6789 = fmul fast float %5074, 4.000000e+00
  %6790 = fmul fast float %6789, %6734
  %6791 = fmul fast float %6790, %6786
  %6792 = fmul fast float %5075, 4.000000e+00
  %6793 = fmul fast float %6792, %6735
  %6794 = fmul fast float %6793, %6787
  %6795 = fmul fast float %5097, 4.000000e+00
  %6796 = fmul fast float %6795, %6736
  %6797 = fmul fast float %6796, %6788
  %6798 = fadd fast float %6791, %6778
  %6799 = fadd fast float %6794, %6779
  %6800 = fadd fast float %6797, %6780
  %6801 = call float @dx.op.unary.f32(i32 7, float %6798)  ; Saturate(value)
  %6802 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6803 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  br label %6804

; <label>:6804                                    ; preds = %6781, %6766
  %6805 = phi float [ %6801, %6781 ], [ %6778, %6766 ]
  %6806 = phi float [ %6802, %6781 ], [ %6779, %6766 ]
  %6807 = phi float [ %6803, %6781 ], [ %6780, %6766 ]
  %6808 = call float @dx.op.binary.f32(i32 35, float %6806, float %6807)  ; FMax(a,b)
  %6809 = call float @dx.op.binary.f32(i32 35, float %6805, float %6808)  ; FMax(a,b)
  %6810 = fsub fast float 1.000000e+00, %6809
  %6811 = fmul fast float %6767, %6725
  %6812 = fmul fast float %6768, %6725
  %6813 = fmul fast float %6769, %6725
  %6814 = fsub fast float 1.000000e+00, %6662
  %6815 = bitcast float %6814 to i32
  %6816 = sitofp i32 %6815 to float
  %6817 = fmul fast float %6816, 5.000000e+00
  %6818 = fadd fast float %6817, 0xC1EFBF8940000000
  %6819 = fptosi float %6818 to i32
  %6820 = bitcast i32 %6819 to float
  %6821 = fmul fast float %6820, %4470
  %6822 = fmul fast float %6810, %6821
  %6823 = fmul fast float %6822, %6162
  %6824 = fmul fast float %6822, %6163
  %6825 = fmul fast float %6822, %6164
  %6826 = fadd fast float %6823, %6811
  %6827 = fadd fast float %6824, %6812
  %6828 = fadd fast float %6825, %6813
  %6829 = fmul fast float %6650, %4466
  %6830 = fmul fast float %6829, %6668
  %6831 = fmul fast float %6830, %6810
  %6832 = fmul fast float %6651, %4466
  %6833 = fmul fast float %6832, %6668
  %6834 = fmul fast float %6833, %6810
  %6835 = fmul fast float %6652, %4466
  %6836 = fmul fast float %6835, %6668
  %6837 = fmul fast float %6836, %6810
  %6838 = fadd fast float %6831, %6489
  %6839 = fadd fast float %6834, %6490
  %6840 = fadd fast float %6837, %6491
  %6841 = fmul fast float %6830, %6826
  %6842 = fmul fast float %6833, %6827
  %6843 = fmul fast float %6836, %6828
  %6844 = fadd fast float %6841, %6486
  %6845 = fadd fast float %6842, %6487
  %6846 = fadd fast float %6843, %6488
  br label %6564

; <label>:6847                                    ; preds = %6564
  br label %6848

; <label>:6848                                    ; preds = %6847, %6452
  %6849 = phi float [ %6454, %6452 ], [ %6565, %6847 ]
  %6850 = phi float [ %6455, %6452 ], [ %6566, %6847 ]
  %6851 = phi float [ %6456, %6452 ], [ %6567, %6847 ]
  %6852 = phi float [ %6457, %6452 ], [ %6568, %6847 ]
  %6853 = phi float [ %6458, %6452 ], [ %6569, %6847 ]
  %6854 = phi float [ %6459, %6452 ], [ %6570, %6847 ]
  %6855 = add i32 %6453, 1
  %6856 = icmp ugt i32 %6855, %6449
  br i1 %6856, label %6857, label %6452

; <label>:6857                                    ; preds = %6848
  br label %6858

; <label>:6858                                    ; preds = %6857, %6428, %6418
  %6859 = phi float [ %6419, %6418 ], [ %6419, %6428 ], [ %6849, %6857 ]
  %6860 = phi float [ %6420, %6418 ], [ %6420, %6428 ], [ %6850, %6857 ]
  %6861 = phi float [ %6421, %6418 ], [ %6421, %6428 ], [ %6851, %6857 ]
  %6862 = phi float [ %6422, %6418 ], [ %6422, %6428 ], [ %6852, %6857 ]
  %6863 = phi float [ %6423, %6418 ], [ %6423, %6428 ], [ %6853, %6857 ]
  %6864 = phi float [ %6424, %6418 ], [ %6424, %6428 ], [ %6854, %6857 ]
  %6865 = call float @dx.op.unary.f32(i32 24, float %5071)  ; Sqrt(value)
  %6866 = call float @dx.op.unary.f32(i32 24, float %5072)  ; Sqrt(value)
  %6867 = call float @dx.op.unary.f32(i32 24, float %5073)  ; Sqrt(value)
  %6868 = fmul fast float %6865, %6862
  %6869 = fmul fast float %6866, %6863
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  br i1 %183, label %6872, label %6895

; <label>:6872                                    ; preds = %6858
  %6873 = fadd fast float %6864, %4472
  %6874 = fmul fast float %6873, %4473
  %6875 = fsub fast float 1.000000e+00, %4473
  %6876 = call float @dx.op.unary.f32(i32 7, float %6875)  ; Saturate(value)
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6879 = fmul fast float %6878, %6876
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = fmul fast float %6881, %6168
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = fmul fast float %6883, %5095
  %6885 = fadd fast float %6869, %6868
  %6886 = fmul fast float %6871, %6885
  %6887 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6888 = fadd fast float %6879, %6874
  %6889 = fsub fast float %6888, %6882
  %6890 = fadd fast float %6889, %6884
  %6891 = fsub fast float %6890, %6887
  %6892 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6893 = fmul fast float %6891, %6892
  %6894 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  br label %6911

; <label>:6895                                    ; preds = %6858
  %6896 = fmul fast float %6867, %6864
  %6897 = fmul fast float %6871, %6868
  %6898 = fmul fast float %6871, %6869
  %6899 = fmul fast float %6896, %6871
  %6900 = add i32 %43, 356
  %6901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6900, i32 undef)  ; BufferLoad(srv,index,wot)
  %6902 = extractvalue %dx.types.ResRet.i32 %6901, 0
  %6903 = and i32 %6902, 32
  %6904 = icmp eq i32 %6903, 0
  br i1 %6904, label %6911, label %6905

; <label>:6905                                    ; preds = %6895
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = fmul fast float %6907, 0x3FE99999A0000000
  %6909 = fadd fast float %6907, %6897
  %6910 = fadd fast float %6908, %6899
  br label %6911

; <label>:6911                                    ; preds = %6905, %6895, %6872
  %6912 = phi float [ %6886, %6872 ], [ %6909, %6905 ], [ %6897, %6895 ]
  %6913 = phi float [ %6894, %6872 ], [ %6898, %6905 ], [ %6898, %6895 ]
  %6914 = phi float [ 1.000000e+00, %6872 ], [ %6910, %6905 ], [ %6899, %6895 ]
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6917 = fmul fast float %6916, %6860
  %6918 = fmul fast float %6916, %6861
  %6919 = fadd fast float %6860, %6859
  %6920 = select i1 %183, float %6919, float %6859
  %6921 = fmul float %6920, %6916
  %6922 = select i1 %183, float 0.000000e+00, float %6917
  %6923 = select i1 %183, float 0.000000e+00, float %6918
  %6924 = fmul fast float %6912, %6865
  %6925 = fmul fast float %6913, %6866
  %6926 = fmul fast float %6914, %6867
  %6927 = fadd fast float %6921, %6924
  %6928 = fadd fast float %6922, %6925
  %6929 = fadd fast float %6923, %6926
  %6930 = select i1 %183, float %6913, float %6928
  %6931 = select i1 %183, float %6914, float %6929
  %6932 = call float @dx.op.binary.f32(i32 36, float %6927, float 3.225500e+04)  ; FMin(a,b)
  %6933 = call float @dx.op.binary.f32(i32 36, float %6930, float 3.225500e+04)  ; FMin(a,b)
  %6934 = call float @dx.op.binary.f32(i32 36, float %6931, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6933)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !81}
!59 = !{!60, !79, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !78}
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
!74 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 7, i8 0, !67}
!75 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!76 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 9, i8 0, !77}
!77 = !{i32 3, i32 13}
!78 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!81 = !{i32 0, i64 24}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}

